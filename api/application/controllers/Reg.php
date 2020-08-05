<?php
defined('BASEPATH') OR exit('No direct script access allowed');

require(APPPATH.'libraries/REST_Controller.php');
require(APPPATH.'libraries/Format.php');

/**
 * Description of Reg
 *
 * @author sea_s
 */
class Reg extends Restserver\Libraries\REST_Controller {
    
    /**
     * 注册用户
     * 
     */
    public function adduser_post(){
        
        header("Access-Control-Allow-Origin: *");
        header("Access-Control-Allow-Methods:GET,POST");
        
        
        
        $username= $this->post("username");
        
        $this->db->where('userid',$username);
        $_q=$this->db->get('user');
        $_r= $_q->row();
        if(isset($_r)){
            $data=array(
                'status'=>FALSE,
                'error'=>'账号已存在，请重新输入',
                'data'=>''
            );
            $this->response($data);
        }
        
        $password= $this->post("password");
        $repassword= $this->post("repassword");
        $tuijianren= $this->post("tuijianren");
        $ctime=time();
        $this->db->where('id',3);
        $cfg_query= $this->db->get("config");
        $cfg=$cfg_query->row();
        $regtime=date('Y-m-d H:i:s',$cfg->regtime*24*60*60+$ctime);
        if($username && $password && $repassword){
            if($password==$repassword){
                $token=md5($username.md5($password).$this->config->item('app_key').$_SERVER['REMOTE_ADDR']);
                $insert_data=array(
                    'userid'=>$username,
                    'userpwd'=>md5($password),
                    'shuyu'=>$tuijianren,
                    'ctime'=>date('Y-m-d H:i:s',$ctime),
                    'username'=>'自助注册',
                    'beizhu2'=>'自助注册',
                    'beizhu1'=>$regtime,
                    'anums'=>$cfg->regnum,
                    'adnums'=>$cfg->regadnum,
                    'openid'=>'',
                    'duankouzong'=>$cfg->reglognum,
                    'duankouyong'=>0,
                    'token'=>$token,
                    'updatetime'=>$ctime,
                    'ip'=>$_SERVER['SERVER_ADDR']
                );
                $this->db->insert("user",$insert_data);
                
                $data=array(
                    'status'=>200,
                    'error'=>'注册成功',
                    'data'=>array(
                         'token'=> $token,
                         'username'=>$username
                     )
                );
                $this->response($data);
                
            }else{
                $data=array(
                    'status'=>FALSE,
                    'error'=>'密码不一致，请重新输入',
                    'data'=>''
                );
                $this->response($data);
            }
        }else{
            $data=array(
                'status'=>FALSE,
                'error'=>'参数错误',
                'data'=>''
            );
            $this->response($data);
        }
        
        
    }
    
}
