<?php


require(APPPATH.'libraries/REST_Controller.php');
require(APPPATH.'libraries/Format.php');
/**
 * Description of Example_api
 *
 * @author sea_s
 */
class Example_api extends Restserver\Libraries\REST_Controller {
    public function __construct($config = 'rest_auth') {
        if(@$_REQUEST['token']){
            parent::__construct('rest');   
        }else{
            parent::__construct($config);
        }
        
    }
    //put your code here
     function user_get()
    {
        //$_SESSION['item']='dddd';
        //$_SESSION['rest_session']='123456';
        //var_dump($_SESSION);
        $token=$_REQUEST['token'];
        $this->db->where("token",$token);
        $query=$this->db->get("user");
        $r=$query->row();
        if(isset($r)){
            $data=array(
                'status'=>200,
                'error'=>'',
                'data'=>array(
                    'username'=>$r->userid,
                    'anums'=>$r->anums,
                    'adnums'=>$r->adnums,
                    'regtime'=>$r->ctime
                ),
            );
        }else{
            $data=array(
                'status'=>FALSE,
                'error'=>'获取数据失败',
                'data'=>'',
            );
        }
        $this->response($data);
    }

    function users_get()
    {
        //获得多个用户的信息
    }
}
