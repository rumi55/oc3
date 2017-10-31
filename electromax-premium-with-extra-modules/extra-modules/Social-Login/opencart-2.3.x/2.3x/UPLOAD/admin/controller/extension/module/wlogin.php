<?php
class ControllerExtensionModuleWlogin extends Controller {
	private $error = array();

	public function index(){
		$this->load->language('extension/module/wlogin');

		$this->document->setTitle($this->language->get('heading_title1'));

		$this->load->model('setting/setting');
		
		$this->load->model('tool/image');

		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
			$this->model_setting_setting->editSetting('wlogin', $this->request->post);

			$this->session->data['success'] = $this->language->get('text_success');

			$this->response->redirect($this->url->link('extension/extension', 'token=' . $this->session->data['token'] . '&type=module', true));
		}

		$data['heading_title'] = $this->language->get('heading_title1');

		$data['text_edit'] = $this->language->get('text_edit');
		$data['text_enabled'] = $this->language->get('text_enabled');
		$data['text_disabled'] = $this->language->get('text_disabled');

		$data['entry_limage'] = $this->language->get('entry_limage');
		$data['entry_gimage'] = $this->language->get('entry_gimage');
		$data['entry_fimage'] = $this->language->get('entry_fimage');
		$data['entry_status'] = $this->language->get('entry_status');
		$data['entry_customergroup'] = $this->language->get('entry_customergroup');
		
		
		$data['entry_title'] = $this->language->get('entry_title');
		$data['entry_fappid'] = $this->language->get('entry_fappid');
		$data['entry_fappappsecret'] = $this->language->get('entry_fappappsecret');
		$data['entry_fcallbackurl'] = $this->language->get('entry_fcallbackurl');
		
		$data['entry_gappid'] = $this->language->get('entry_gappid');
		$data['entry_gappappsecret'] = $this->language->get('entry_gappappsecret');
		$data['entry_gcallbackurl'] = $this->language->get('entry_gcallbackurl');
		
		$data['entry_lappid'] = $this->language->get('entry_lappid');
		$data['entry_lappappsecret'] = $this->language->get('entry_lappappsecret');
		$data['entry_lcallbackurl'] = $this->language->get('entry_lcallbackurl');
		
		
		$data['entry_tappid'] = $this->language->get('entry_tappid');
		$data['entry_tappappsecret'] = $this->language->get('entry_tappappsecret');
		$data['entry_tcallbackurl'] = $this->language->get('entry_tcallbackurl');
		$data['entry_timage'] = $this->language->get('entry_timage');

		$data['button_save'] = $this->language->get('button_save');
		$data['button_cancel'] = $this->language->get('button_cancel');
		
		//tab
		$data['tab_facebook'] = $this->language->get('tab_facebook');
		$data['tab_google'] = $this->language->get('tab_google');
		$data['tab_linkedin'] = $this->language->get('tab_linkedin');
		$data['tab_twitter'] = $this->language->get('tab_twitter');
		
		if (isset($this->error['warning'])) {
			$data['error_warning'] = $this->error['warning'];
		} else {
			$data['error_warning'] = '';
		}
		
		
		$this->load->model('module/wlogins');
		$data['customergroups'] = $this->model_module_wlogins->getCustomerGroups(array());
		
		$data['breadcrumbs'] = array();


		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/dashboard', 'token=' . $this->session->data['token'], true)
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_extension'),
			'href' => $this->url->link('extension/extension', 'token=' . $this->session->data['token'] . '&type=module', true)
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('heading_title1'),
			'href' => $this->url->link('extension/module/wlogin', 'token=' . $this->session->data['token'], true)
		);

		$data['action'] = $this->url->link('extension/module/wlogin', 'token=' . $this->session->data['token'], true);
		$data['cancel'] = $this->url->link('extension/extension', 'token=' . $this->session->data['token'] . '&type=module', true);
		
		$data['placeholder'] = $this->model_tool_image->resize('no_image.png', 100, 100);

		if (isset($this->request->post['wlogin_status'])) {
			$data['wlogin_status'] = $this->request->post['wlogin_status'];
		} else {
			$data['wlogin_status'] = $this->config->get('wlogin_status');
		}
		
		if ($this->request->server['HTTPS']) {
			$server = HTTPS_CATALOG;
		} else {
			$server = HTTP_CATALOG;
		}
		
		//facebook Code
		if (isset($this->request->post['wlogin_fstatus'])) {
			$data['wlogin_fstatus'] = $this->request->post['wlogin_fstatus'];
		} else {
			$data['wlogin_fstatus'] = $this->config->get('wlogin_fstatus');
		}
		
		if (isset($this->request->post['wlogin_fimage'])) {
			$data['wlogin_fimage'] = $this->request->post['wlogin_fimage'];
		} else {
			$data['wlogin_fimage'] = $this->config->get('wlogin_fimage');
		}

		if (isset($this->request->post['wlogin_fimage']) && is_file(DIR_IMAGE . $this->request->post['wlogin_fimage'])) {
			$data['fimage'] = $this->model_tool_image->resize($this->request->post['wlogin_fimage'], 100, 100);
		} elseif ($this->config->get('wlogin_fimage') && is_file(DIR_IMAGE . $this->config->get('wlogin_fimage'))) {
			$data['fimage'] = $this->model_tool_image->resize($this->config->get('wlogin_fimage'), 100, 100);
		} else {
			$data['fimage'] = $this->model_tool_image->resize('no_image.png', 100, 100);
		}
		
		if (isset($this->request->post['wlogin_fcustomergroup'])) {
			$data['wlogin_fcustomergroup'] = $this->request->post['wlogin_fcustomergroup'];
		} else {
			$data['wlogin_fcustomergroup'] = $this->config->get('wlogin_fcustomergroup');
		}
		
		if (isset($this->request->post['wlogin_fappid'])) {
			$data['wlogin_fappid'] = $this->request->post['wlogin_fappid'];
		} else {
			$data['wlogin_fappid'] = $this->config->get('wlogin_fappid');
		}
		
		if (isset($this->request->post['wlogin_fsecretkey'])) {
			$data['wlogin_fsecretkey'] = $this->request->post['wlogin_fsecretkey'];
		} else {
			$data['wlogin_fsecretkey'] = $this->config->get('wlogin_fsecretkey');
		}
		
		$data['wlogin_fcallback'] = $server.'index.php?route=extension/module/wlogin/fcallback';
		// End 
		
		//Google Code
		
		if (isset($this->request->post['wlogin_gstatus'])) {
			$data['wlogin_gstatus'] = $this->request->post['wlogin_gstatus'];
		} else {
			$data['wlogin_gstatus'] = $this->config->get('wlogin_gstatus');
		}
		
		if (isset($this->request->post['wlogin_gimage'])) {
			$data['wlogin_gimage'] = $this->request->post['wlogin_gimage'];
		} else {
			$data['wlogin_gimage'] = $this->config->get('wlogin_gimage');
		}

		if (isset($this->request->post['wlogin_gimage']) && is_file(DIR_IMAGE . $this->request->post['wlogin_gimage'])) {
			$data['gimage'] = $this->model_tool_image->resize($this->request->post['wlogin_gimage'], 100, 100);
		} elseif ($this->config->get('wlogin_gimage') && is_file(DIR_IMAGE . $this->config->get('wlogin_gimage'))) {
			$data['gimage'] = $this->model_tool_image->resize($this->config->get('wlogin_gimage'), 100, 100);
		} else {
			$data['gimage'] = $this->model_tool_image->resize('no_image.png', 100, 100);
		}
		
		if (isset($this->request->post['wlogin_gcustomergroup'])) {
			$data['wlogin_gcustomergroup'] = $this->request->post['wlogin_gcustomergroup'];
		} else {
			$data['wlogin_gcustomergroup'] = $this->config->get('wlogin_gcustomergroup');
		}
		
		if (isset($this->request->post['wlogin_gappid'])) {
			$data['wlogin_gappid'] = $this->request->post['wlogin_gappid'];
		} else {
			$data['wlogin_gappid'] = $this->config->get('wlogin_gappid');
		}
		
		if (isset($this->request->post['wlogin_gsecretkey'])) {
			$data['wlogin_gsecretkey'] = $this->request->post['wlogin_gsecretkey'];
		} else {
			$data['wlogin_gsecretkey'] = $this->config->get('wlogin_gsecretkey');
		}
		
		$data['wlogin_gcallback'] = $server.'index.php?route=extension/module/wlogin/gcallback';
		
		//Linkedin Code
		
		if (isset($this->request->post['wlogin_lstatus'])) {
			$data['wlogin_lstatus'] = $this->request->post['wlogin_lstatus'];
		} else {
			$data['wlogin_lstatus'] = $this->config->get('wlogin_lstatus');
		}
		
		if (isset($this->request->post['wlogin_limage'])) {
			$data['wlogin_limage'] = $this->request->post['wlogin_limage'];
		} else {
			$data['wlogin_limage'] = $this->config->get('wlogin_limage');
		}

		if (isset($this->request->post['wlogin_limage']) && is_file(DIR_IMAGE . $this->request->post['wlogin_limage'])) {
			$data['limage'] = $this->model_tool_image->resize($this->request->post['wlogin_limage'], 100, 100);
		} elseif ($this->config->get('wlogin_limage') && is_file(DIR_IMAGE . $this->config->get('wlogin_limage'))) {
			$data['limage'] = $this->model_tool_image->resize($this->config->get('wlogin_limage'), 100, 100);
		} else {
			$data['limage'] = $this->model_tool_image->resize('no_image.png', 100, 100);
		}
		
		if (isset($this->request->post['wlogin_lcustomergroup'])) {
			$data['wlogin_lcustomergroup'] = $this->request->post['wlogin_lcustomergroup'];
		} else {
			$data['wlogin_lcustomergroup'] = $this->config->get('wlogin_lcustomergroup');
		}
		
		if (isset($this->request->post['wlogin_lappid'])) {
			$data['wlogin_lappid'] = $this->request->post['wlogin_lappid'];
		} else {
			$data['wlogin_lappid'] = $this->config->get('wlogin_lappid');
		}
		
		if (isset($this->request->post['wlogin_lsecretkey'])) {
			$data['wlogin_lsecretkey'] = $this->request->post['wlogin_lsecretkey'];
		} else {
			$data['wlogin_lsecretkey'] = $this->config->get('wlogin_lsecretkey');
		}
		
		$data['wlogin_lcallback'] = $server.'index.php?route=extension/module/wlogin/lcallback';
		
		
		//Twitter Code
		
		if (isset($this->request->post['wlogin_tstatus'])) {
			$data['wlogin_tstatus'] = $this->request->post['wlogin_tstatus'];
		} else {
			$data['wlogin_tstatus'] = $this->config->get('wlogin_tstatus');
		}
		
		if (isset($this->request->post['wlogin_timage'])) {
			$data['wlogin_timage'] = $this->request->post['wlogin_timage'];
		} else {
			$data['wlogin_timage'] = $this->config->get('wlogin_timage');
		}

		if (isset($this->request->post['wlogin_timage']) && is_file(DIR_IMAGE . $this->request->post['wlogin_timage'])) {
			$data['timage'] = $this->model_tool_image->resize($this->request->post['wlogin_timage'], 100, 100);
		} elseif ($this->config->get('wlogin_timage') && is_file(DIR_IMAGE . $this->config->get('wlogin_timage'))) {
			$data['timage'] = $this->model_tool_image->resize($this->config->get('wlogin_timage'), 100, 100);
		} else {
			$data['timage'] = $this->model_tool_image->resize('no_image.png', 100, 100);
		}
		
		if (isset($this->request->post['wlogin_tcustomergroup'])) {
			$data['wlogin_tcustomergroup'] = $this->request->post['wlogin_tcustomergroup'];
		} else {
			$data['wlogin_tcustomergroup'] = $this->config->get('wlogin_tcustomergroup');
		}
		
		if (isset($this->request->post['wlogin_tappid'])) {
			$data['wlogin_tappid'] = $this->request->post['wlogin_tappid'];
		} else {
			$data['wlogin_tappid'] = $this->config->get('wlogin_tappid');
		}
		
		if (isset($this->request->post['wlogin_tsecretkey'])) {
			$data['wlogin_tsecretkey'] = $this->request->post['wlogin_tsecretkey'];
		} else {
			$data['wlogin_tsecretkey'] = $this->config->get('wlogin_tsecretkey');
		}
		
		$data['wlogin_tcallback'] = $server.'index.php?route=extension/module/wlogin/twitter';
		
		$this->load->model('localisation/language');

		$languages = $this->model_localisation_language->getLanguages();
		
		foreach($languages as $language){
			if (isset($this->request->post['wlogin_title' . $language['language_id']])) {
				$data['wlogin_title' . $language['language_id']] = $this->request->post['wlogin_title' . $language['language_id']];
			} else {
				$data['wlogin_title' . $language['language_id']] = $this->config->get('wlogin_title' . $language['language_id']);
			}
		}
		
		$data['languages'] = $languages;
		
		$data['header'] = $this->load->controller('common/header');
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['footer'] = $this->load->controller('common/footer');
		
		$this->response->setOutput($this->load->view('extension/module/wlogin', $data));
		
	}

	protected function validate() {
		if (!$this->user->hasPermission('modify', 'extension/module/wlogin')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}

		return !$this->error;
	}
}