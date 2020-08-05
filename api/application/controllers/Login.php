<?php
defined('BASEPATH') OR exit('No direct script access allowed');

require(APPPATH.'libraries/REST_Controller.php');
require(APPPATH.'libraries/Format.php');

class Login extends Restserver\Libraries\REST_Controller {

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
	public function userlogin_get()
	{
            header("Access-Control-Allow-Origin: *");
            header("Access-Control-Allow-Methods:GET,POST");
            $username=$this->get("username");
            $password=$this->get('password');
//            $username=$this->post("username");
//            $password= $this->post("password");
//            if($username=='admin' && $password=='admin'){
//                $this->session->set_userdata("rest_session",array("id"=>1));
//                $this->session->set_userdata("id","1");
//            }
            $this->db->where("userid","{$username}");
            $query=$this->db->get("user");
        
            $r=$query->row();
            $data=array();
            if(isset($r)){
                $input_pwd= md5($password);
                if($r->userpwd==$input_pwd){
                    $token=md5($username.$input_pwd.$this->config->item('app_key').$_SERVER['REMOTE_ADDR']);
                    //$token="3b65e8b970d4d007e1169281d5523c79";
                    $data=array(
                        'status'=>200,
                        'error'=>'登录成功',
                        'data'=>array(
                            'token'=> $token,
                            'username'=>$username
                        )
                    );
                    $this->db->where('id', $r->id);
                    $udpate_data=array(
                        'token'=>$token,
                        'updatetime'=>time(),
                        'ip'=>$_SERVER['REMOTE_ADDR']
                    );
                    $this->db->update("user",$udpate_data);
                }else{
                    $data=array(
                        'status'=>FALSE,
                        'error'=>'密码不正确',
                        'data'=>''
                    );
                }
            }else{
                $data=array(
                    'status'=>FALSE,
                    'error'=>'用户不存在',
                    'data'=>''
                );
            }
            
            $this->response($data);
	}
        
        public function loginstatus_get(){
            header("Access-Control-Allow-Methods:GET,POST");
            $token= $this->get('token');
            $data=array('status'=>FALSE,
                            'error'=>'',
                            'data'=>array());
            if(@$token){
                $this->db->where('token',$token);
                $query= $this->db->get("user");
                $r=$query->row();
                if(isset($r)){
                    $expire_time=$r->updatetime+24*60*60*2;
                    if($expire_time>time()){
                        $data=array(
                            'status'=>200,
                            'error'=>'登录状态正常',
                            'data'=>array(
                                'token'=> $token
                            )
                        );
                    }else{
                        $data=array(
                            'status'=>FALSE,
                            'error'=>'TOKEN已过期,已退出登录',
                            'data'=>''
                        );
                        $this->db->where('id',$r->id);
                        $d=array('token'=>"");
                        $this->db->update('user',$d);
                    }
                }else{
                    $data=array(
                        'status'=>FALSE,
                        'error'=>'TOKEN已过期或不存在',
                        'data'=>''
                    );
                }
            }else{
                $data=array(
                    'status'=>FALSE,
                    'error'=>'TOKEN不存在',
                    'data'=>''
                );
            }
            
            $this->response($data);
        }
        
}
