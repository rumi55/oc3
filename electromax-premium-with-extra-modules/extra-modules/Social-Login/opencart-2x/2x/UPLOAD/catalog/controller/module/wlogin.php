<?php
class ControllerModulewlogin extends Controller {
	public function index(){
		require_once(DIR_SYSTEM. "library/wlogins/google/autoload.php");
		require_once(DIR_SYSTEM. "library/wlogins/linkedin/http.php");
		require_once(DIR_SYSTEM. "library/wlogins/linkedin/oauth_client.php");
		$this->load->language('module/wlogin');
		$data['heading_title'] = $this->language->get('heading_title');
		
		if(!isset($this->session->data['backurl'])){
			if(isset($this->request->get['route']) && $this->request->get['route'] == 'checkout/checkout'){
				$this->session->data['backurl'] = $this->url->link('checkout/checkout', '', 'SSL');
			}else if(isset($this->request->get['route']) && $this->request->get['route'] === 'checkout/cart'){
			$this->session->data['backurl'] = $this->url->link('checkout/cart', '', 'SSL');
			}else{
				$this->session->data['backurl'] =	$this->url->link('account/account', '', 'SSL');
			}
		}
		
		$this->load->model('account/customer');
		// Login override for admin users
		if (!empty($this->request->get['token'])) {
		
			$this->customer->logout();
			//$this->cart->clear();

			unset($this->session->data['order_id']);
			unset($this->session->data['payment_address']);
			unset($this->session->data['payment_method']);
			unset($this->session->data['payment_methods']);
			unset($this->session->data['shipping_address']);
			unset($this->session->data['shipping_method']);
			unset($this->session->data['shipping_methods']);
			unset($this->session->data['comment']);
			unset($this->session->data['coupon']);
			unset($this->session->data['reward']);
			unset($this->session->data['voucher']);
			unset($this->session->data['vouchers']);

			$customer_info = $this->model_account_customer->getCustomerByToken($this->request->get['token']);

			if ($customer_info && $this->customer->login($customer_info['email'], '', 'SSL')) {
				// Default Addresses
				$this->load->model('account/address');

				if ($this->config->get('config_tax_customer') == 'payment') {
					$this->session->data['payment_address'] = $this->model_account_address->getAddress($this->customer->getAddressId());
				}

				if ($this->config->get('config_tax_customer') == 'shipping') {
					$this->session->data['shipping_address'] = $this->model_account_address->getAddress($this->customer->getAddressId());
				}
				$backurl = $this->session->data['backurl'];
				unset($this->session->data['backurl']);
				$this->response->redirect($backurl);
			}
		}
		
		//FACEBOOK Start
			$data['flogin'] = $this->url->link('module/wlogin/facebook','','SSL');
		//FACEBOOK END
		
		
		//GOOGLE START
		$client_id 		= $this->config->get('wlogin_gappid');
		$client_secret  = $this->config->get('wlogin_gsecretkey');
		$redirect_uri 	= $this->config->get('wlogin_gcallback');
		
		$client = new Google_Client();
		$client->setClientId($client_id);
		$client->setClientSecret($client_secret);
		$client->setRedirectUri($redirect_uri);
		$client->addScope("email");
		$client->addScope("profile");
		$service = new Google_Service_Oauth2($client);
		$data['authUrl'] = $client->createAuthUrl();
		//GOOGLE END
		
		//Linkedin Start
		$data['lcallback'] = $this->config->get('wlogin_lcallback');
		
		//Linkedin END
		
		//Twitter Start
		$data['tcallback'] = $this->config->get('wlogin_tcallback');
		//Twitter END
		
		if ($this->request->server['HTTPS']) {
			$server = $this->config->get('config_ssl');
		} else {
			$server = $this->config->get('config_url');
		}
		
		if (is_file(DIR_IMAGE . $this->config->get('wlogin_fimage'))) {
			$data['wlogin_fimage'] = $server . 'image/' . $this->config->get('wlogin_fimage');
		} else {
			$data['wlogin_fimage'] = '';
		}
		
		if (is_file(DIR_IMAGE . $this->config->get('wlogin_gimage'))) {
			$data['wlogin_gimage'] = $server . 'image/' . $this->config->get('wlogin_gimage');
		} else {
			$data['wlogin_gimage'] = '';
		}
		
		if (is_file(DIR_IMAGE . $this->config->get('wlogin_limage'))) {
			$data['wlogin_limage'] = $server . 'image/' . $this->config->get('wlogin_limage');
		} else {
			$data['wlogin_limage'] = '';
		}
		
		if (is_file(DIR_IMAGE . $this->config->get('wlogin_timage'))) {
			$data['wlogin_timage'] = $server . 'image/' . $this->config->get('wlogin_timage');
		} else {
			$data['wlogin_timage'] = '';
		}
		
		
		if($this->config->get('wlogin_title' . $this->config->get('config_language_id'))) {
			$data['top_tagline'] = $this->config->get('wlogin_title' . $this->config->get('config_language_id'));
		}else{
			$data['top_tagline']   = $this->language->get('top_tagline');
		}
		$data['button_submit']   = $this->language->get('button_submit');
		///Twitter Login
		
		
		$data['twitter'] = $this->config->get('wlogin_tcallback');
		
		
		if(!$this->customer->isLogged()) {
			if(VERSION >= '2.2.0.0'){
				return $this->load->view('module/wlogin', $data);
			}else{
				if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/wlogin.tpl')) {
					return $this->load->view($this->config->get('config_template') . '/template/module/wlogin.tpl', $data);
				} else {
					return $this->load->view('default/template/module/wlogin.tpl', $data);
				}
			}
		}
	}
	
	public function facebook(){
		require_once(DIR_SYSTEM."library/wlogins/Facebook/autoload.php");
		$fb = new Facebook\Facebook([
			'app_id' => $this->config->get('wlogin_fappid'),
			'app_secret' => $this->config->get('wlogin_fsecretkey'),
			'default_graph_version' => 'v2.6',
		]);
		
		$helper = $fb->getRedirectLoginHelper();
	
		$permissions = ['email']; 
			
		$loginUrl = $helper->getLoginUrl($this->config->get('wlogin_fcallback'), $permissions);
		
		header("Location: ".$loginUrl);
	}
	
	public function twitter() {
		$this->load->language('module/wlogin');
		$this->load->model('module/wlogin');
		$this->load->model('account/customer');
		require_once(DIR_SYSTEM. "library/wlogins/twitter/twitteroauth.php");
		if (!empty($_GET['oauth_verifier']) && !empty($_SESSION['oauth_token']) && !empty($_SESSION['oauth_token_secret'])) {
			
			$twitteroauth = new TwitterOAuth($this->config->get('wlogin_tappid'), $this->config->get('wlogin_tsecretkey'), $_SESSION['oauth_token'], $_SESSION['oauth_token_secret']);
			
			$access_token = $twitteroauth->getAccessToken($_GET['oauth_verifier']);
			
			$_SESSION['access_token'] = $access_token;
			
			$user_info = $twitteroauth->get('account/verify_credentials');
			
			
			if (isset($user_info->error)) {
					$this->response->redirect($this->url->link('account/account','','SSL'));
			} else {
				$name = explode(" ",$user_info->name);
				$fname = isset($name[0])?$name[0]:'';
				$lname = isset($name[1])?$name[1]:'';
				$email = isset($user_info->email)?$user_info->email :'';
				if(isset($email)){
					$twitterdata = array(
					 'firstname'	=> $fname,
					 'lastname'		=> $lname,
					 'email'			=> $email,
					);
				$customer_infos = $this->model_module_wlogin->checkUserBySocialMedia('twitter',$twitterdata);
					if(!empty($customer_infos['customer']) && $customer_infos['customer'] == 'register'){
						$customer_info = $this->model_module_wlogin->getCustomer($customer_infos['customer_id']);
						if(!empty($customer_info['approved'])){
							// Create token to login with
							$token = $this->token(64);
							$this->model_module_wlogin->editToken($customer_info['customer_id'], $token);
							$this->response->redirect($this->url->link('module/wlogin', '&token=' . $token));
						}else{
							$this->response->redirect($this->url->link('account/success'));
						}
					}else if(!empty($customer_infos['customer']) && $customer_infos['customer'] == 'exist') {
						$customer_info = $this->model_module_wlogin->getCustomer($customer_infos['customer_id']);
						if(!empty($customer_info['approved'])) {
							// Create token to login with
							$token = $this->token(64);
							$this->model_module_wlogin->editToken($customer_info['customer_id'], $token);
							$this->response->redirect($this->url->link('module/wlogin', '&token=' . $token));
						}else{
							$this->session->data['error'] = $this->language->get('error_approved'); 
							$this->response->redirect($this->url->link('account/login'));
						}
					}else{
						$this->response->redirect($this->url->link('account/login'));
					}
				}else{
					$this->session->data['error'] = 'Need Special Permission for Email';
					$this->response->redirect($this->url->link('account/login'));
				}
			}
		}else{
				$twitteroauth = new TwitterOAuth($this->config->get('wlogin_tappid'), $this->config->get('wlogin_tsecretkey'));
		
				$request_token = $twitteroauth->getRequestToken($this->url->link('module/wlogin/twitter'));
				
				$_SESSION['oauth_token'] = $request_token['oauth_token'];
				$_SESSION['oauth_token_secret'] = $request_token['oauth_token_secret'];
				
				// If everything goes well..
				if ($twitteroauth->http_code == 200) {
					// Let's generate the URL and redirect
					
					$url = $twitteroauth->getAuthorizeURL($request_token['oauth_token']);
					
					header('Location: ' . $url);
				}
		}
	}
	
	public function lcallback(){
		require_once(DIR_SYSTEM. "library/wlogins/linkedin/http.php");
		require_once(DIR_SYSTEM. "library/wlogins/linkedin/oauth_client.php");
		$this->load->language('module/wlogin');
		$this->load->model('module/wlogin');
		$this->load->model('account/customer');
		
		######### linkedin API Configuration ##########
		
		$appId = $this->config->get('wlogin_lappid');
		
		$appSecret = $this->config->get('wlogin_lsecretkey');
		
		$homeurl = $this->config->get('wlogin_lcallback');
		
		$linkedinScope = 'r_basicprofile r_emailaddress';

		$client = new oauth_client_class;
		
		$client->debug = false;
		$client->debug_http = true;
		$client->redirect_uri = $homeurl;

		$client->client_id = $appId;
		$application_line = __LINE__;
		$client->client_secret = $appSecret;
		
		
		
	 if (strlen($client->client_id) == 0 || strlen($client->client_secret) == 0)
			die('Please go to LinkedIn Apps page https://www.linkedin.com/secure/developer?newapp= , '.
			'create an application, and in the line '.$application_line.
			' set the client_id to Consumer key and client_secret with Consumer secret. '.
			'The Callback URL must be '.$client->redirect_uri).' Make sure you enable the '.
			'necessary permissions to execute the API calls your application needs.';
			
			$client->scope = $linkedinScope;
			
		if (($success = $client->Initialize())) {
		  if (($success = $client->Process())) {
			if (strlen($client->authorization_error)) {
			  $client->error = $client->authorization_error;
			  $success = false;
			} elseif (strlen($client->access_token)) {
			  $success = $client->CallAPI(
							'http://api.linkedin.com/v1/people/~:(id,email-address,first-name,last-name,location,picture-url,public-profile-url,formatted-name)', 
							'GET', array(
								'format'=>'json'
							), array('FailOnAccessError'=>true), $user);
			}
		  }
		  $success = $client->Finalize($success);
		}
			
		if ($client->exit) exit;
		if($success){
			$linkedindata = array(
			 'firstname'	=> $user->firstName,
			 'lastname'		=> $user->lastName,
			 'email'		=> $user->emailAddress,
			);
			$customer_infos = $this->model_module_wlogin->checkUserBySocialMedia('linkedin',$linkedindata);
			if(!empty($customer_infos['customer']) && $customer_infos['customer'] == 'register') {
				$customer_info = $this->model_module_wlogin->getCustomer($customer_infos['customer_id']);
				if(!empty($customer_info['approved'])){
					// Create token to login with
					$token = $this->token(64);
					$this->model_module_wlogin->editToken($customer_info['customer_id'], $token);
					$this->response->redirect($this->url->link('module/wlogin', '&token=' . $token));
				}else{
					$this->response->redirect($this->url->link('account/success'));
				}
			}else if(!empty($customer_infos['customer']) && $customer_infos['customer'] == 'exist') {
				$customer_info = $this->model_module_wlogin->getCustomer($customer_infos['customer_id']);
				if(!empty($customer_info['approved'])) {
					// Create token to login with
					$token = $this->token(64);
					$this->model_module_wlogin->editToken($customer_info['customer_id'], $token);
					$this->response->redirect($this->url->link('module/wlogin', '&token=' . $token));
				}else{
				
					$this->session->data['error'] = $this->language->get('error_approved'); 
					$this->response->redirect($this->url->link('account/login'));
				}
			}else{
				$this->response->redirect($this->url->link('common/login'));
			}
		}else{
			$this->response->redirect($this->url->link('common/login'));
		}
	}
	
	public function fcallback(){
		require_once(DIR_SYSTEM."library/wlogins/Facebook/autoload.php");
		$this->load->language('module/wlogin');
		$this->load->model('module/wlogin');
		$this->load->model('account/customer');
		
		$fb = new Facebook\Facebook([
			'app_id' => $this->config->get('wlogin_fappid'),
			'app_secret' => $this->config->get('wlogin_fsecretkey'),
			'default_graph_version' => 'v2.6',
		]);
		
		$helper = $fb->getRedirectLoginHelper();
		
		try {
		  $Tokenaccess = $helper->getAccessToken();
		} catch(Facebook\Exceptions\FacebookResponseException $e) {
		  echo 'Graph returned an error: ' . $e->getMessage();
		  exit;
		} catch(Facebook\Exceptions\FacebookSDKException $e) {
		  echo 'Facebook SDK returned an error: ' . $e->getMessage();
		  exit;
		}
		
		if (! isset($Tokenaccess)) {
		  if ($helper->getError()) {
			header('HTTP/1.0 401 Unauthorized');
			echo "Error: " . $helper->getError() . "\n";
			echo "Error Code: " . $helper->getErrorCode() . "\n";
			echo "Error Reason: " . $helper->getErrorReason() . "\n";
			echo "Error Description: " . $helper->getErrorDescription() . "\n";
		  } else {
			header('HTTP/1.0 400 Bad Request');
			echo 'Bad request';
		  }
		  exit;
		}
		$oAuth2Client = $fb->getOAuth2Client();
		$tokenMetadata = $oAuth2Client->debugToken($Tokenaccess);
		$tokenMetadata->validateAppId($this->config->get('wlogin_fappid'));
		$tokenMetadata->validateExpiration();
		
		if (! $Tokenaccess->isLongLived()) {
		  try {
			$Tokenaccess = $oAuth2Client->getLongLivedAccessToken($Tokenaccess);
		  } catch (Facebook\Exceptions\FacebookSDKException $e) {
			echo "<p>Error getting long-lived access token: " . $helper->getMessage() . "</p>\n\n";
			exit;
		  }
			echo '<h3>Long live</h3>';
		}
		
		try {
			$response = $fb->get('/me?fields=id,name,email', $Tokenaccess);

		} catch(Facebook\Exceptions\FacebookResponseException $e) {
			echo 'Graph returned an error: ' . $e->getMessage();
			exit;
		} catch(Facebook\Exceptions\FacebookSDKException $e) {
			echo 'Facebook SDK returned an error: ' . $e->getMessage();
			exit;
		}
		
		$_SERVER_CLEANED = $_SERVER;
		
		$_SERVER = $this->clean_decode($_SERVER);
		
		$fbuser = $response->getGraphUser();
		 $_SESSION['FBRLH_state']=$_GET['state'];

		$_SERVER = $_SERVER_CLEANED;
		
		if(isset($fbuser['email'])){
				$name = explode(' ',$fbuser['name']);
				if (isset($name[0])) {
					$first_name = $name[0];
				}else{
					$first_name = '';
				}
		
				if (isset($name[1])) {
					$last_name = $name[1];
				} else {
					$last_name = '';
				}
				
				$fbdata = array(
					'firstname'	=> $first_name,
					'lastname'	=> $last_name,
					'email'		=> $fbuser['email'],
				);
				
				$customer_infos = $this->model_module_wlogin->checkUserBySocialMedia('facebook',$fbdata);
				if(!empty($customer_infos['customer']) && $customer_infos['customer'] == 'register'){
					$customer_info = $this->model_module_wlogin->getCustomer($customer_infos['customer_id']);
						// Create token to login with
						$token = $this->token(64);
						$this->model_module_wlogin->editToken($customer_info['customer_id'], $token);
						$this->response->redirect($this->url->link('module/wlogin', '&token=' . $token));
				}else if(!empty($customer_infos['customer']) && $customer_infos['customer'] == 'exist') {
						// Create token to login with
						$token = $this->token(64);
						$this->model_module_wlogin->editToken($customer_infos['customer_id'], $token);
						$this->response->redirect($this->url->link('module/wlogin', '&token=' . $token));
				}else{
					$this->session->data['error'] = 'Warning your Facebook account not given email So that Please try other facebook account!'; 
					$this->response->redirect($this->url->link('account/login'));
				}
		}
		$this->response->redirect($this->url->link('account/login'));
	}
	
	public function gcallback(){
		require_once(DIR_SYSTEM. "library/wlogins/google/autoload.php");
		$this->load->language('module/wlogin');
		$this->load->model('module/wlogin');
		$this->load->model('account/customer');
		
		$client_id 		= $this->config->get('wlogin_gappid');
		$client_secret  = $this->config->get('wlogin_gsecretkey');
		$redirect_uri 	= $this->config->get('wlogin_gcallback');
		
		$client = new Google_Client();
		$client->setClientId($client_id);
		$client->setClientSecret($client_secret);
		$client->setRedirectUri($redirect_uri);
		$client->addScope("email");
		$client->addScope("profile");
		$service = new Google_Service_Oauth2($client);
		
		if(isset($_GET['code'])){
			$client->authenticate($_GET['code']);
			$_SESSION['access_token'] = $client->getAccessToken();
			header('Location: ' . filter_var($redirect_uri, FILTER_SANITIZE_URL));
			exit;
		}
		
		if (isset($_SESSION['access_token']) && $_SESSION['access_token']) {
		   $client->setAccessToken($_SESSION['access_token']);
		} else {
		   $authUrl = $client->createAuthUrl();
		}
		
		if(!isset($authUrl)){
			$user_profile = $service->userinfo->get();
			if($user_profile['name']) {
				$names = explode(' ', $user_profile['name']);
			}else{
				$names= array();
			}
			$fbdata = array(
			 'firstname'	=> (!empty($names[0])) ? $names[0] : '',
			 'lastname'		=> (!empty($names[1])) ? $names[1] : '',
			 'email'		=> $user_profile['email'],
			);
			
			$customer_infos = $this->model_module_wlogin->checkUserBySocialMedia('google',$fbdata);
			if(!empty($_SESSION['access_token'])) {
				unset($_SESSION['access_token']);
			}
			
			if(!empty($customer_infos['customer']) && $customer_infos['customer'] == 'register') {
				$customer_info = $this->model_module_wlogin->getCustomer($customer_infos['customer_id']);
				if(!empty($customer_info['approved'])) {
					// Create token to login with
					$token = $this->token(64);
					$this->model_module_wlogin->editToken($customer_info['customer_id'], $token);
					$this->response->redirect($this->url->link('module/wlogin', '&token=' . $token));
				}else{
					$this->response->redirect($this->url->link('account/success'));
				}
			}else if(!empty($customer_infos['customer']) && $customer_infos['customer'] == 'exist'){
				$customer_info = $this->model_module_wlogin->getCustomer($customer_infos['customer_id']);
				if(!empty($customer_info['approved'])){
					// Create token to login with
					$token = $this->token(64);
					$this->model_module_wlogin->editToken($customer_info['customer_id'], $token);
					$this->response->redirect($this->url->link('module/wlogin', '&token=' . $token));
				}else{
					$this->session->data['error'] = $this->language->get('error_approved'); 
					$this->response->redirect($this->url->link('account/login'));
				}
			}else{
				$this->response->redirect($this->url->link('common/login'));
			}
		}
	}
	
	private function token($code){
		return base64_encode($code);
	}
	
	private function clean_decode($data) {
		if (is_array($data)) {
			foreach ($data as $key => $value) {
				unset($data[$key]);
				$data[$this->clean_decode($key)] = $this->clean_decode($value);
			}
		} else {
			$data = htmlspecialchars_decode($data, ENT_COMPAT);
		}
	
		return $data;
	}
}