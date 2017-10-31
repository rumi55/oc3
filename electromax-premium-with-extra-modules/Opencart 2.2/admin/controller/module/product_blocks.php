<?php
/* 
Version: 1.0
Author: Grace
Website: #
*/

class ControllerModuleProductBlocks extends Controller {
	private $error = array(); 
	 
	public function index() {   
		$this->language->load('module/product_blocks');

		$this->document->setTitle('Product Blocks');
		
		$this->load->model('setting/setting');
		$this->load->model('catalog/product');
		$this->load->model('catalog/category');
		
		// Dodawanie plikÃ³w css i js do <head>
		$this->document->addStyle('view/stylesheet/product_blocks.css');
		
		// Multistore
		$data['stores'] = array();
		$this->load->model('setting/store');
		$results = $this->model_setting_store->getStores();
		
		$data['stores'][] = array(
			'name' => 'Default',
			'href' => '',
			'store_id' => 0
		);
			
		foreach ($results as $result) {
			$data['stores'][] = array(
				'name' => $result['name'],
				'href' => $result['url'],
				'store_id' => $result['store_id']
			);
		}	
		
		// Zapisywanie moduÅu		
		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
			$this->model_setting_setting->editSetting('product_blocks', $this->request->post);		
			
			$this->session->data['success'] = $this->language->get('text_success');
						
			$this->response->redirect($this->url->link('module/product_blocks', 'token=' . $this->session->data['token'], true));
		}
		
		// WyÅwietlanie powiadomieÅ
 		if (isset($this->error['warning'])) {
			$data['error_warning'] = $this->error['warning'];
		} else {
			$data['error_warning'] = '';
		}
		
		if (isset($this->session->data['success'])) {
			$data['success'] = $this->session->data['success'];
		    unset($this->session->data['success']);
		} else {
			$data['success'] = '';
		}
		
		$data['action'] = $this->url->link('module/product_blocks', 'token=' . $this->session->data['token'], true);
				
		$data['token'] = $this->session->data['token'];
	
		// Åadowanie listy moduÅÃ³w
		$data['modules'] = array();
		
		if (isset($this->request->post['product_blocks_module'])) {
			$data['modules'] = $this->request->post['product_blocks_module'];
		} elseif ($this->config->get('product_blocks_module')) { 
			$data['modules'] = $this->config->get('product_blocks_module');
		}	
		
		// Layouts		
		$this->load->model('design/layout');
		$data['layouts'] = $this->model_design_layout->getLayouts();
		
		// Languages
		$this->load->model('localisation/language');
		$data['languages'] = $this->model_localisation_language->getLanguages();
		
		$data['breadcrumbs'] = array();
		
		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/dashboard', 'token=' . $this->session->data['token'], true)
		);
		
		$data['breadcrumbs'][] = array(
			'text' => 'Modules',
			'href' => $this->url->link('extension/module', 'token=' . $this->session->data['token'], true)
		);
				
		$data['breadcrumbs'][] = array(
			'text' => 'Product Blocks',
			'href' => $this->url->link('module/product_blocks', 'token=' . $this->session->data['token'], true)
		);
				
		$data['header'] = $this->load->controller('common/header');
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['footer'] = $this->load->controller('common/footer');
		
		// Popup Modules
		$data['popup_modules'] = array();
		$popup_modules = $this->config->get('popup_module');
		if(is_array($popup_modules)) {
     		foreach($popup_modules as $popup_module) {
     		     $name = 'Newsletter';
     		     if($popup_module['type'] == 2) $name = 'Custom';
     		     if($popup_module['type'] == 3) $name = 'Contact Form';
     		     $data['popup_modules'][] = array(
     		          'id' => $popup_module['module_id'],
     		          'name' => $name . ' - ID: ' . $popup_module['module_id'],
     		     );
     		}
		}
		
		// No image
		$this->load->model('tool/image');
		$data['placeholder'] = $this->model_tool_image->resize('no_image.png', 100, 100);
				
		$this->response->setOutput($this->load->view('module/product_blocks', $data));
	}
	
	protected function validate() {
		if (!$this->user->hasPermission('modify', 'module/product_blocks')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}
		
		if (!$this->error) {
			return true;
		} else {
			return false;
		}	
	}
}
?>