<?php
/* 
Version: 1.0
Author: Grace
Website: #
*/

class ControllerModuleCameraSlider extends Controller {
	public function index($setting) {
		
		// Ładowanie modelu Camera slider
		$this->load->model('slider/camera_slider');

		// Pobranie slideru z modelu
		$data['slider'] = $this->model_slider_camera_slider->getSlider($setting['slider_id']);
		
		$data['language_id'] = $this->config->get('config_language_id');
		
		return $this->load->view('module/camera_slider', $data);

	}
}
?>