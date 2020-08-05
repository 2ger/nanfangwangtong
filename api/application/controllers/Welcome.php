<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */
	public function index()
	{
            $curl_handle = curl_init();
            curl_setopt($curl_handle, CURLOPT_URL, 'http://api.ad.com/index.php/Example_api/user/id/1/format/json');
            curl_setopt($curl_handle, CURLOPT_RETURNTRANSFER, 1);
            curl_setopt($curl_handle, CURLOPT_POST, 1);
//            curl_setopt($curl_handle, CURLOPT_POSTFIELDS, array(
//                'name' => $new_name,
//                'email' => $new_email
//            ));
            $buffer = curl_exec($curl_handle);
            curl_close($curl_handle);

            $result = json_decode($buffer);
            
            var_dump($result);
            
            var_dump($this->config->item('app_key'));
            
            $this->load->view('welcome_message');
	}
}
