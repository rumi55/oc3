<?php
/* 
Version: 1.0
Author: Grace
Website: #
*/

class ControllerModuleNewsletter extends Controller {
	private $error = array(); 
	
	public function subscribed() {   
		$this->language->load('module/newsletter');

		$this->document->setTitle('Newsletter');
		
		$this->load->model('setting/setting');
		
		// Dodawanie plików css i js do <head>
		$this->document->addStyle('view/stylesheet/newsletter.css');
		
		// Ładowanie modelu Newsletter
		$this->load->model('newsletter/newsletter');
		
		// Instalacja Newslettera w bazie danych
		$this->model_newsletter_newsletter->install();
		
		// Multilanguage
		$this->load->model('localisation/language');
		$data['languages'] = $this->model_localisation_language->getLanguages();
		
		// Usuwanie subskrypcji
		if(isset($_GET['delete']) && isset($_GET['email'])) {
			$this->model_newsletter_newsletter->deleteSubscriber($_GET['email']);
			$this->session->data['success'] = $this->language->get('text_success');
			$this->response->redirect($this->url->link('module/newsletter/subscribed', 'token=' . $this->session->data['token'], 'SSL'));
		}
		
		// Zapisywanie modułu		
		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
			$this->session->data['success'] = $this->language->get('text_success');
			$this->response->redirect($this->url->link('module/newsletter/subscribed', 'token=' . $this->session->data['token'], 'SSL'));
		}
		
		// Wyświetlanie powiadomień
 		if (isset($this->error['warning'])) {
			$data['error_warning'] = $this->error['warning'];
		} else {
			$data['error_warning'] = '';
		}
		
		if (isset($this->session->data['error_warning'])) {
			$data['error_warning'] = $this->session->data['error_warning'];
		    unset($this->session->data['error_warning']);
		}
		
		if (isset($this->session->data['success'])) {
			$data['success'] = $this->session->data['success'];
		    unset($this->session->data['success']);
		} else {
			$data['success'] = '';
		}
		
		$data['action'] = $this->url->link('module/newsletter/translation', 'token=' . $this->session->data['token'], 'SSL');
		$data['placement'] = $this->url->link('module/newsletter', 'token=' . $this->session->data['token'], 'SSL');		
		$data['settings'] = $this->url->link('module/newsletter/translation', 'token=' . $this->session->data['token'], 'SSL');
		$data['list_subscribed'] = $this->url->link('module/newsletter/subscribed', 'token=' . $this->session->data['token'], 'SSL');	
		$data['send_mail'] = $this->url->link('marketing/contact', 'token=' . $this->session->data['token'], 'SSL');		
		$data['token'] = $this->session->data['token'];
	
		// Load model layout		
		$this->load->model('design/layout');
		$data['layouts'] = $this->model_design_layout->getLayouts();
		
		// Pagination
		if (isset($this->request->get['page'])) {
			$page = $this->request->get['page'];
		} else {
			$page = 1;
		}
		
		$pagination = new Pagination();
		$pagination->total = $this->model_newsletter_newsletter->getTotalSubscribers();
		$pagination->page = $page;
		$pagination->limit = 12;
		$pagination->url = $this->url->link('module/newsletter/subscribed', 'token=' . $this->session->data['token'] . '&page={page}', 'SSL');

		$data['pagination'] = $pagination->render();
		
		$data['results'] = sprintf($this->language->get('text_pagination'), ($this->model_newsletter_newsletter->getTotalSubscribers()) ? (($page - 1) * 12) + 1 : 0, ((($page - 1) * 12) > ($this->model_newsletter_newsletter->getTotalSubscribers() - 12)) ? $this->model_newsletter_newsletter->getTotalSubscribers() : ((($page - 1) * 12) + 12), $this->model_newsletter_newsletter->getTotalSubscribers(), ceil($this->model_newsletter_newsletter->getTotalSubscribers() / 12));
		
		// Generate List Subscribed
		$subscribed_data = array(
			'start' => ($page-1)*12,
			'limit' => '12'
		);
		$data['subscribed'] = $this->model_newsletter_newsletter->getSubscribers($subscribed_data);
		
		// Breadcrumbs
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
			'text' => 'Newsletter',
			'href' => $this->url->link('module/newsletter', 'token=' . $this->session->data['token'], 'SSL')
		);
		
		$data['header'] = $this->load->controller('common/header');
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['footer'] = $this->load->controller('common/footer');

		$this->response->setOutput($this->load->view('module/newsletter/subscribed.tpl', $data));
	}
	
	public function translation() {   
		$this->language->load('module/newsletter');

		$this->document->setTitle('Newsletter');
		
		$this->load->model('setting/setting');
		
		// Dodawanie plików css i js do <head>
		$this->document->addStyle('view/stylesheet/newsletter.css');
		
		// Ładowanie modelu Newsletter
		$this->load->model('newsletter/newsletter');
		
		// Instalacja Newslettera w bazie danych
		$this->model_newsletter_newsletter->install();
		
		// Multilanguage
		$this->load->model('localisation/language');
		$data['languages'] = $this->model_localisation_language->getLanguages();
		
		// Zapisywanie modułu		
		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
			$this->model_setting_setting->editSetting('newsletter_settings', $this->request->post);		
			$this->session->data['success'] = $this->language->get('text_success');
			$this->response->redirect($this->url->link('module/newsletter/translation', 'token=' . $this->session->data['token'], 'SSL'));
		}
		
		// Ładowanie ustawień
		$data['newsletter_settings'] = $this->config->get('newsletter_settings');
		
		// Wyświetlanie powiadomień
 		if (isset($this->error['warning'])) {
			$data['error_warning'] = $this->error['warning'];
		} else {
			$data['error_warning'] = '';
		}
		
		if (isset($this->session->data['error_warning'])) {
			$data['error_warning'] = $this->session->data['error_warning'];
		    unset($this->session->data['error_warning']);
		}
		
		if (isset($this->session->data['success'])) {
			$data['success'] = $this->session->data['success'];
		    unset($this->session->data['success']);
		} else {
			$data['success'] = '';
		}
		
		$data['action'] = $this->url->link('module/newsletter/translation', 'token=' . $this->session->data['token'], 'SSL');
		$data['placement'] = $this->url->link('module/newsletter', 'token=' . $this->session->data['token'], 'SSL');		
		$data['settings'] = $this->url->link('module/newsletter/translation', 'token=' . $this->session->data['token'], 'SSL');
		$data['list_subscribed'] = $this->url->link('module/newsletter/subscribed', 'token=' . $this->session->data['token'], 'SSL');	
		$data['send_mail'] = $this->url->link('marketing/contact', 'token=' . $this->session->data['token'], 'SSL');		
		$data['token'] = $this->session->data['token'];
	
		// Load model layout		
		$this->load->model('design/layout');
		$data['layouts'] = $this->model_design_layout->getLayouts();
		
		// Breadcrumbs
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
			'text' => 'Newsletter',
			'href' => $this->url->link('module/newsletter', 'token=' . $this->session->data['token'], 'SSL')
		);
		
		$data['header'] = $this->load->controller('common/header');
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['footer'] = $this->load->controller('common/footer');
		
		$this->response->setOutput($this->load->view('module/newsletter/translation.tpl', $data));
	}

	public function index() {   
		$this->language->load('module/newsletter');

		$this->document->setTitle('Newsletter');
		
		$this->load->model('setting/setting');
		
		// Dodawanie plików css i js do <head>
		$this->document->addStyle('view/stylesheet/newsletter.css');
		
		// Ładowanie modelu Newsletter
		$this->load->model('newsletter/newsletter');
		
		// Instalacja Newslettera w bazie danych
		$this->model_newsletter_newsletter->install();
		
		// Multilanguage
		$this->load->model('localisation/language');
		$data['languages'] = $this->model_localisation_language->getLanguages();
		
		// Zapisywanie modułu		
		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
			$this->model_setting_setting->editSetting('newsletter', $this->request->post);		
			$this->session->data['success'] = $this->language->get('text_success');
			$this->response->redirect($this->url->link('module/newsletter', 'token=' . $this->session->data['token'], 'SSL'));
		}
		
		// Wyświetlanie powiadomień
 		if (isset($this->error['warning'])) {
			$data['error_warning'] = $this->error['warning'];
		} else {
			$data['error_warning'] = '';
		}
		
		if (isset($this->session->data['error_warning'])) {
			$data['error_warning'] = $this->session->data['error_warning'];
		    unset($this->session->data['error_warning']);
		}
		
		if (isset($this->session->data['success'])) {
			$data['success'] = $this->session->data['success'];
		    unset($this->session->data['success']);
		} else {
			$data['success'] = '';
		}
		
		$data['action'] = $this->url->link('module/newsletter', 'token=' . $this->session->data['token'], 'SSL');
		$data['placement'] = $this->url->link('module/newsletter', 'token=' . $this->session->data['token'], 'SSL');		
		$data['settings'] = $this->url->link('module/newsletter/translation', 'token=' . $this->session->data['token'], 'SSL');	
		$data['list_subscribed'] = $this->url->link('module/newsletter/subscribed', 'token=' . $this->session->data['token'], 'SSL');	
		$data['send_mail'] = $this->url->link('marketing/contact', 'token=' . $this->session->data['token'], 'SSL');		
		$data['token'] = $this->session->data['token'];
	
		// Ładowanie listy modułów
		$data['modules'] = array();
		
		if (isset($this->request->post['newsletter_module'])) {
			$data['modules'] = $this->request->post['newsletter_module'];
		} elseif ($this->config->get('newsletter_module')) { 
			$data['modules'] = $this->config->get('newsletter_module');
		}	
		
		// Load model layout		
		$this->load->model('design/layout');
		$data['layouts'] = $this->model_design_layout->getLayouts();
		
		// Breadcrumbs
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
			'text' => 'Newsletter',
			'href' => $this->url->link('module/newsletter', 'token=' . $this->session->data['token'], 'SSL')
		);
		
		$data['header'] = $this->load->controller('common/header');
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['footer'] = $this->load->controller('common/footer');

		$this->response->setOutput($this->load->view('module/newsletter/placement.tpl', $data));
	}
	
	protected function validate() {
		if (!$this->user->hasPermission('modify', 'module/newsletter')) {
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