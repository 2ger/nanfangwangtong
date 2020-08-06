<?php

/**
 * Description of Register
 *
 * @author sea_s
 */
class Register extends CI_Controller {
    public function index(){
        $id= $this->input->get("t");
        $this->db->where("id",$id);
        $query= $this->db->get('user');
        $r=$query->row();
        $tuijianren=$r->userid;
        $data=array();
        $data['tuijianren']=$tuijianren;
        $this->load->view("register.html",$data);
        
    }
    
    public function reg(){
        $username=$this->input->post("username");
        $password= $this->input->post("password");
        $repassword= $this->input->post("repassword");
        $tuijianren= $this->input->post("tuijianren");
        $yanzhengma= $this->input->post('yanzhengma');
        if(@$username && @$password){
            //获取手机验证码信息
            $this->db->where("phone",$username);
            $this->db->where('code',$yanzhengma);
            $query= $this->db->get("sms");
            // $row=$query->row();
         
            // if(isset($row)){
                // $add_time=$row->add_time;
                // $end_time=$add_time+10*60;
                // if($end_time>time()){
                    
                    
                    $subject = $username;
                    $pattern="/^1[345789]\d{9}$/";
                    if(preg_match($pattern, $subject)){

                        $this->db->where("userid",$username);
                        $this->db->or_where("mobile",$username);
                        $_q= $this->db->get("user");
                        $_r=$_q->row();
                        if(isset($_r)){
                            echo "注册账号已经存在，请重新输入";exit();
                        }

                        if(@$tuijianren){

                            $this->db->where("userid",$tuijianren);
                            $q=$this->db->get("user");
                            $r= $q->row();
                            if(isset($r)){

                                if($password==$repassword){

                                    $md5_pwd= md5($password);
                                    $array=array(
                                        'userid'=>$username,
                                        'userpwd'=>$md5_pwd,
                                        'shuyu'=>$tuijianren,
                                        'mobile'=>$username,
                                        'username'=>'自助注册',
                                        'ctime'=>date("Y-m-d H:i:s",time()),
                                        'beizhu2'=>'自助注册',
                                    );

                                    $this->db->insert('user',$array);
                                    echo "200";exit();

                                }else{
                                    echo "密码与确认密码不一致，请重新输入！";exit();
                                }

                            }else{
                                echo "推荐人不存在！";exit();
                            }

                        }else{
                            echo "推荐人不能为空！";exit();
                        }

                    }else{
                        echo "请输入正确手机号！";exit();
                    }
                    
                    
                    
                // }else{
                //     echo "手机验证码已过期";exit();
                // }
            // }else{
            //     echo "手机验证码错误！";exit();
            // }
            
        }else{
            echo "用户名或密码不能为空！";exit();
        }
    }
    
    public function sms(){//20181013
        $phone= $this->input->get("phone");
        $code= $this->input->get("code");
        if(strlen($phone) == "11"){
            $n = preg_match("/^1[345789]\d{9}$/",$phone,$array);
            if(!$n){
                echo "请输入正确手机号";exit();
            }else{
                $this->db->where("userid",$phone);
                $this->db->or_where("mobile",$phone);
                $_q= $this->db->get("user");
                $_r=$_q->row();
                if(isset($_r)){
                    echo "注册账号已经存在，请重新输入";exit();
                } else {
                    if($_SESSION['code']==$code){//$result&&
                        
                        
                        
                        $hash= mt_rand(100000,999999);
                        $content="【南方网通】您的验证码是{$hash},10分钟内有效！";//要发送的短信内容
                        $arr=array(
                            'phone'=>$phone,
                            'code'=>$hash,
                            'content'=>$content,
                            'add_time'=>time()
                        );
                        $this->db->insert("sms",$arr);
                        $statusStr = array(
                        "0" => "短信发送成功",
                        "-1" => "参数不全",
                        "-2" => "服务器空间不支持,请确认支持curl或者fsocket，联系您的空间商解决或者更换空间！",
                        "30" => "密码错误",
                        "40" => "账号不存在",
                        "41" => "余额不足",
                        "42" => "帐户已过期",
                        "43" => "IP地址限制",
                        "50" => "内容含有敏感词"
                        );
                        $smsapi = "http://api.smsbao.com/";
                        $user = "a18682555494"; //短信平台帐号
                        $pass = md5("a123456789"); //短信平台密码

                        $phone = "{$phone}";//要发送短信的手机号码
                        $sendurl = $smsapi."sms?u=".$user."&p=".$pass."&m=".$phone."&c=".urlencode($content);
                        $result =file_get_contents($sendurl) ;
                        // $result="0";
                        echo $statusStr[$result];
                        
                        
                    }else{
                        echo "验证码错误或已过期";exit();
                    }
                }
            }
        }else{
            echo "请输入11位手机号";exit();
        }
        
        
    }
    
    public function code(){
        $this->load->library('validatecode');
        $this->validatecode->doimg();
        $_SESSION['code']= $this->validatecode->getCode();
    }
    
    public function yanzheng(){
        
    }


    public function download(){
        $this->load->view("download.html");
    }
}
