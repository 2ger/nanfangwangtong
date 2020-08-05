<?php

/**
 * Description of Notify
 *
 * @author sea_s
 */
class Notify extends CI_Controller {
    public function index(){
        
        $paytype= $this->input->get("paytype");
        $order_id= $this->input->get('order_id');
        
        $this->db->where('id',$order_id);
        $q= $this->db->get('pay_log');
        $r=$q->row();
        //var_dump($r);
        if(!$r->status){
        
            $this->db->where('id',$order_id);
            $array=array(
                'status'=>1,
                'paytype'=>$paytype,
                'paytime'=>time(),

            );
            $this->db->update("pay_log",$array);

            $this->db->where('id',$order_id);
            $q= $this->db->get('pay_log');
            $r=$q->row();

            $array=array(
                'user_id'=>$r->user_id,
                'username'=>$r->username,
                'zhichu'=>$r->money,
                'addtime'=>time(),
                'leixing'=>'升级VIP会员'
            );
            $this->db->insert('acount_log',$array);
            
            //升级VIP
            $this->db->where("id",$r->user_id);
            $data=array("groupid"=>1);
            $this->db->update("user",$data);
            
        }
        echo "success";
        exit();
        
    }
    
    
}
