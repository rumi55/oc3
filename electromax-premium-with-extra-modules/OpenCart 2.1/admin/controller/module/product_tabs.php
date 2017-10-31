<?php
/* 
Version: 1.0
Author: Grace
Website: #
*/

class ControllerModuleProductTabs extends Controller {
	private $error = array(); 
	 
	public function index() {   
		$this->language->load('module/product_tabs');

		$this->document->setTitle('Product Tabs');
		
		$this->load->model('setting/setting');
		
		// Dodawanie plikÃ³w css i js do <head>
		$this->document->addStyle('view/stylesheet/product_tabs.css');
		
		// Zapisywanie moduÅu		
		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
			if(isset($this->request->post['product_tabs'])) {
				if(is_writable(DIR_APPLICATION . 'controller/module/')) {
					file_put_contents(DIR_APPLICATION . 'controller/module/product_tabs.json', serialize($this->request->post['product_tabs']));   
				} else {
					$this->session->data['error_warning'] = 'You need to set CHMOD 777 for all folder and subfolder in admin/controller/module/!';
				}
			} else {
			     file_put_contents(DIR_APPLICATION . 'controller/module/product_tabs.json', false);
			}
			
			$this->session->data['success'] = $this->language->get('text_success');
						
			$this->response->redirect($this->url->link('module/product_tabs', 'token=' . $this->session->data['token'], 'SSL'));			
		}
		
		// WyÅwietlanie powiadomieÅ
 		if (isset($this->session->data['error_warning'])) {
			$data['error_warning'] = $this->session->data['error_warning'];
			unset($this->session->data['error_warning']);
		} else {
			$data['error_warning'] = '';
		}
		
		if (isset($this->session->data['success'])) {
			$data['success'] = $this->session->data['success'];
		    unset($this->session->data['success']);
		} else {
			$data['success'] = '';
		}
		
		$data['action'] = $this->url->link('module/product_tabs', 'token=' . $this->session->data['token'], 'SSL');
				
		$data['token'] = $this->session->data['token'];
	
		// Åadowanie listy modułów
		$data['modules'] = array();
		
		$product_tabs = unserialize(file_get_contents(DIR_APPLICATION . 'controller/module/product_tabs.json'));
		if (is_array($product_tabs)) { 
			$data['modules'] = $product_tabs;
		}	
				
		$this->load->model('design/layout');
		
		$data['layouts'] = $this->model_design_layout->getLayouts();
		
		$this->load->model('localisation/language');
		
		$data['languages'] = $this->model_localisation_language->getLanguages();
		
		$data['breadcrumbs'] = array();
		
		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/dashboard', 'token=' . $this->session->data['token'], 'SSL')
		);
		
		$data['breadcrumbs'][] = array(
			'text' => 'Modules',
			'href' => $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL')
		);
				
		$data['breadcrumbs'][] = array(
			'text' => 'Product tabs',
			'href' => $this->url->link('module/product_tabs', 'token=' . $this->session->data['token'], 'SSL')
		);
				
		$data['header'] = $this->load->controller('common/header');
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['footer'] = $this->load->controller('common/footer');
				
		$this->response->setOutput($this->load->view('module/product_tabs.tpl', $data));
	}
	
	protected function validate() {
		if (!$this->user->hasPermission('modify', 'module/product_tabs')) {
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