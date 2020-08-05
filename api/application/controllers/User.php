<?php
require(APPPATH.'libraries/REST_Controller.php');
require(APPPATH.'libraries/Format.php');
/**
 * Description of User
 *
 * @author sea_s
 */
class User extends Restserver\Libraries\REST_Controller {
    private $userinfo;
    public function __construct($config = 'rest_auth') {
        if(@$_REQUEST['token']){
            parent::__construct('rest');
            $this->db->where("token",$_REQUEST['token']);
            $q=$this->db->get("user");
            $r=$q->row();
            if(isset($r)){
                $updatetime=$r->updatetime;
                $end_time=$updatetime+ $this->config->item('app_expire_time');
                if($end_time>time()){
                    $this->userinfo=$r;
                }else{
                    $this->response(array("status"=>false,'error'=>'Unauthorized'));
                }
            }else{
                $this->response(array("status"=>false,'error'=>'Unauthorized'));
            }
            
            
        }else{
            parent::__construct($config);
        }
        
    }

    /**
     * 获取当前用户基本信息
     */
    public function info_get(){
        $data=array(
            'status'=>200,
            'error'=>'',
            'data'=> objectToArray($this->userinfo)
        );
        $this->response($data);
    }
    /**
     * 第一团队信息
     */
    public function level1_get(){
        $p=1;
        if(@$_REQUEST['p']){
            $p= intval($_REQUEST['p'])?intval($_REQUEST['p']):1;
        }
        $this->db->where("shuyu",$this->userinfo->userid);
        $count=$this->db->count_all_results('user', FALSE);
        $pagecount=10;
        
        $this->db->limit($pagecount,($p-1)*$pagecount);
        $q= $this->db->get();
        $rows=array();
        $html="";
        foreach($q->result() as $r){
            $rows[]=$r;
            $html.='<li class="mui-table-view-cell">
		            <span style="font-size:1.2rem;">'.$r->userid.'</span>
		            <span class="mui-badge">'.date('Y-m-d',strtotime($r->ctime)).'</span>
		        </li>';
        }
        
        $pagetotal=$count>$pagecount?(($count%$pagecount)>0?intval($count/$pagecount)+1:intval($count/$pagecount)):1;
        
        $data=array(
            'status'=>200,
            'error'=>'',
            'data'=> array(
                'count'=>$count,
                'data'=>$rows,
                'html'=>$html,
                'pagecurrent'=>$p,
                'pagetotal'=>$pagetotal,
                'pagecount'=>$pagecount
            )
        );
        $this->response($data);
    }
    /**
     * 第二团队信息
     */
    public function level2_get(){
        $p=1;
        if(@$_REQUEST['p']){
            $p= intval($_REQUEST['p'])?intval($_REQUEST['p']):1;
        }
        $this->db->where("shuyu",$this->userinfo->userid);
        $this->db->select("userid");
        $query=$this->db->get("user");
        $where_in=array();
        foreach ($query->result() as $row){
            $where_in[]=$row->userid;
        }
        
        $this->db->where_in("shuyu",count($where_in)>0?$where_in:"-1");
        $count=$this->db->count_all_results('user', FALSE);
        $pagecount=10;
        
        $this->db->limit($pagecount,($p-1)*$pagecount);
        $q= $this->db->get();
        $rows=array();
        $html="";
        foreach($q->result() as $r){
            $rows[]=$r;
            $html.='<li class="mui-table-view-cell">
		            <span style="font-size:1.2rem;">'.$r->userid.'</span>
		            <span class="mui-badge">'.date('Y-m-d',strtotime($r->ctime)).'</span>
		        </li>';
        }
        
        $pagetotal=$count>$pagecount?(($count%$pagecount)>0?intval($count/$pagecount)+1:intval($count/$pagecount)):1;
        
        $data=array(
            'status'=>200,
            'error'=>'',
            'data'=> array(
                'count'=>$count,
                'data'=>$rows,
                'html'=>$html,
                'pagecurrent'=>$p,
                'pagetotal'=>$pagetotal,
                'pagecount'=>$pagecount
            )
        );
        $this->response($data);
    }
     /**
     * 第三团队信息
     */
    public function level3_get(){//20181013 
        $p=1;
        if(@$_REQUEST['p']){
            $p= intval($_REQUEST['p'])?intval($_REQUEST['p']):1;
        }
        $this->db->where("shuyu",$this->userinfo->userid);
        $this->db->select("userid");
        $query=$this->db->get("user");
        $where_in=array();
        foreach ($query->result() as $row){
            $where_in[]=$row->userid;
        }
        
        $this->db->where_in("shuyu",count($where_in)>0?$where_in:"-1");
        $query=$this->db->get("user");
        $where_in2=array();
        foreach ($query->result() as $row){
            $where_in2[]=$row->userid;
        }

        $this->db->where_in("shuyu",count($where_in2)>0?$where_in2:"-1");
        $count=$this->db->count_all_results('user', FALSE);
        $pagecount=10;
        
        $this->db->limit($pagecount,($p-1)*$pagecount);
        $q= $this->db->get();
        $rows=array();
        $html="";
        foreach($q->result() as $r){
            $rows[]=$r;
            $html.='<li class="mui-table-view-cell">
		            <span style="font-size:1.2rem;">'.$r->userid.'</span>
		            <span class="mui-badge">'.date('Y-m-d',strtotime($r->ctime)).'</span>
		        </li>';
        }
        
        $pagetotal=$count>$pagecount?(($count%$pagecount)>0?intval($count/$pagecount)+1:intval($count/$pagecount)):1;
        
        $data=array(
            'status'=>200,
            'error'=>'',
            'data'=> array(
                'count'=>$count,
                'data'=>$rows,
                'html'=>$html,
                'pagecurrent'=>$p,
                'pagetotal'=>$pagetotal,
                'pagecount'=>$pagecount
            )
        );
        $this->response($data);
    }
    /**
     * 第一团队人数信息
     */
    public function level1count_get(){
        $this->db->where("shuyu",$this->userinfo->userid);
        $count=$this->db->count_all_results('user');
        $data=array(
            'status'=>200,
            'error'=>'',
            'data'=> array(
                'count'=>$count,
            )
        );
        $this->response($data);
    }
    /**
     * 第二团队人数信息 
     */
    public function level2count_get(){
        $this->db->where("shuyu",$this->userinfo->userid);
        $this->db->select("userid");
        $query=$this->db->get("user");
        $where_in=array();
        foreach ($query->result() as $row){
            $where_in[]=$row->userid;
        }
        
        $this->db->where_in("shuyu",count($where_in)>0?$where_in:"-1");
        $count=$this->db->count_all_results('user');
        $data=array(
            'status'=>200,
            'error'=>'',
            'data'=> array(
                'count'=>$count,
            )
        );
        $this->response($data);
    }
    /**
     * 第三团队人数信息 
     */
    public function level3count_get(){//20181013 
        $this->db->where("shuyu",$this->userinfo->userid);
        $this->db->select("userid");
        $query=$this->db->get("user");
        $where_in=array();
        foreach ($query->result() as $row){
            $where_in[]=$row->userid;
        }
        
        $this->db->where_in("shuyu",count($where_in)>0?$where_in:"-1");
        $query=$this->db->get("user");
        $where_in2=array();
        foreach ($query->result() as $row){
            $where_in2[]=$row->userid;
        }

        $this->db->where_in("shuyu",count($where_in2)>0?$where_in2:"-1");
        $count=$this->db->count_all_results('user');
        $data=array(
            'status'=>200,
            'error'=>'',
            'data'=> array(
                'count'=>$count,
            )
        );
        $this->response($data);
    }
    
    /**
     * 获取银行卡信息
     * **/
    public function bank_get(){
        $this->db->where("user_id", $this->userinfo->id);
        $this->db->where("username", $this->userinfo->userid);
        $query=$this->db->get("bank");
//        $sql = $this->db->get_compiled_select('mytable');
//echo $sql;exit();
        $data_arr=array();
        foreach($query->result() as $r){
            $data_arr[]=$r;
        }
        $data=array();
        if(empty($data_arr)){
            $data=array(
                'status'=>200,
                'error'=>'暂无数据',
                'data'=> array()
            );
        }else{
            $data=array(
                'status'=>200,
                'error'=>'暂无数据',
                'data'=> array(
                    'data'=>$data_arr
                )
            );
        }
        $this->response($data);
    }
    
    /***
     * 设置默认银行卡
     */
    public function setdefaultbank_get(){
        $id= $this->get('id');
        $this->db->where('id',$id);
        $this->db->where('user_id', $this->userinfo->id);
        $this->db->where('username', $this->userinfo->userid);
        $data_arr=array(
            'isdefault'=>1
        );
        $this->db->update('bank',$data_arr);
        
        $this->db->where('id !=',$id);
        $this->db->where('user_id', $this->userinfo->id);
        $this->db->where('username', $this->userinfo->userid);
        $data_arr=array(
            'isdefault'=>0
        );
        $this->db->update('bank',$data_arr);
        
        $data=array(
            'status'=>200,
            'error'=>'更新完成',
            'data'=> array()
        );
        $this->response($data);
    }
    /**
        添加银行卡信息
     *      */
    public function bankinfo_post(){
        if($this->post("id")){
            $user_id= $this->userinfo->id;
            $this->db->where('user_id',$user_id);
            $this->db->where("id",$this->post("id"));
            
            $bank_username= $this->post('bank_username');
            $bankcard= $this->post('bankcard');
            $bankname= $this->post('bankname');
            $zhihang= $this->post('zhihang');
            
            $data_arr=array(
                'bank_username'=>$bank_username,
                'bankcard'=>$bankcard,
                'bankname'=>$bankname,
                'zhihang'=>$zhihang
            );
            
            $this->db->update("bank",$data_arr);
            
            $data=array(
                'status'=>200,
                'error'=>'更新完成',
                'data'=> array()
            );
            $this->response($data);
        }else{
            $user_id= $this->userinfo->id;
            $username= $this->userinfo->userid;
            $bank_username= $this->post('bank_username');
            $bankcard= $this->post('bankcard');
            $bankname= $this->post('bankname');
            $zhihang= $this->post('zhihang');
            $isdefault=1;
            $data_arr=array(
                'user_id'=>$user_id,
                'username'=>$username,
                'bank_username'=>$bank_username,
                'bankcard'=>$bankcard,
                'bankname'=>$bankname,
                'zhihang'=>$zhihang,
                'isdefault'=>$isdefault
            );
            $this->db->insert('bank',$data_arr);
            $new_id= $this->db->insert_id();

            $this->db->where('id !=',$new_id);
            $this->db->where('user_id', $this->userinfo->id);
            $this->db->where('username', $this->userinfo->userid);
            $data_arr=array(
                'isdefault'=>0
            );
            $this->db->update('bank',$data_arr);

            $data=array(
                'status'=>200,
                'error'=>'添加完成',
                'data'=> array()
            );

            $this->response($data);
        }
    }
    
    /***
     * 获取默认银行卡信息
     */
    public function defaultbank_get(){
        $this->db->where("user_id", $this->userinfo->id);
        $this->db->where("username", $this->userinfo->userid);
        $this->db->where('isdefault',1);
        $query=$this->db->get("bank");
        
        $r=$query->row();
        
        if(isset($r)){
            $data=array(
                'status'=>200,
                'error'=>'',
                'data'=> array(
                    objectToArray($r)
                )
            );
        }else{
            $this->db->where("user_id", $this->userinfo->id);
            $this->db->where("username", $this->userinfo->userid);
            $this->db->order_by('id','desc');
            $query=$this->db->get("bank");
            $r=$query->row();
            if(isset($r)){
                $data=array(
                    'status'=>200,
                    'error'=>'',
                    'data'=> array(
                        objectToArray($r)
                    )
                );
            }else{
                $data=array(
                    'status'=>FALSE,
                    'error'=>'暂无数据',
                    'data'=> array()
                );
            }
        }
        $this->response($data);
    }
    
    /***
     * 获取默认银行卡信息,
     */
    private function defaultbank(){
        $this->db->where("user_id", $this->userinfo->id);
        $this->db->where("username", $this->userinfo->userid);
        $this->db->where('isdefault',1);
        $query=$this->db->get("bank");
        
        $r=$query->row();
        
        if(isset($r)){
            $data=array(
                'status'=>200,
                'error'=>'',
                'data'=> array(
                    objectToArray($r)
                )
            );
        }else{
            $this->db->where("user_id", $this->userinfo->id);
            $this->db->where("username", $this->userinfo->userid);
            $this->db->order_by('id','desc');
            $query=$this->db->get("bank");
            $r=$query->row();
            if(isset($r)){
                $data=array(
                    'status'=>200,
                    'error'=>'',
                    'data'=> array(
                        objectToArray($r)
                    )
                );
            }else{
                $data=array(
                    'status'=>FALSE,
                    'error'=>'暂无数据',
                    'data'=> array()
                );
            }
        }
        return $data;
    }
    
    //获取钱包信息
    public function account_get(){
        $p=1;
        if(@$_REQUEST['p']){
            $p= intval($_REQUEST['p'])?intval($_REQUEST['p']):1;
        }
        
        $userid= $this->userinfo->id;
        $username= $this->userinfo->userid;
        
        $this->db->where("user_id","$userid");
        $this->db->where('username',$username);
        
        $count=$this->db->count_all_results('acount_log', FALSE);
        $pagecount=10;
        
        $this->db->order_by('addtime','desc');
        $this->db->limit($pagecount,($p-1)*$pagecount);
        $q= $this->db->get();
        $rows=array();
        $html='';
        foreach($q->result() as $r){
            $rows[]=$r;
            $money=0.00;
            if($r->zhichu>0){
                $money='<span style="font-size:1.5rem; color:green;">-'.$r->zhichu.'</span>';
            }else{
                $money='<span style="font-size:1.5rem; color:red;">'.$r->shouru.'</span>';
            }
            $html.='<li class="mui-table-view-cell">
		            '.$money.'<br/><span style="font-size:0.8rem;">'.$r->leixing.'</span>
		            <span class="mui-badge">'.date('Y-m-d',$r->addtime).'</span>
		        </li>';
        }
        
        $pagetotal=$count>$pagecount?(($count%$pagecount)>0?intval($count/$pagecount)+1:intval($count/$pagecount)):1;
        
        /**
         * <li class="mui-table-view-cell">
		            <span style="font-size:1.5rem; color:green;">-100.00</span><br/><span style="font-size:0.8rem;">扣款</span>
		            <span class="mui-badge">2018-04-10</span>
		        </li>
         */
        
        $data=array(
            'status'=>200,
            'error'=>'',
            'data'=> array(
                'count'=>$count,
                'data'=>$rows,
                'html'=>$html,
                'pagecurrent'=>$p,
                'pagetotal'=>$pagetotal,
                'pagecount'=>$pagecount
            )
        );
        $this->response($data);
    }
    
    public function tixian_post(){
        $money= $this->post('money');
        $bank_json= $this->defaultbank();//获取默认银行卡信息
        
        $bank= $bank_json;
        $data=array(
            'status'=>FALSE,
            'error'=>'',
            'data'=> array(
            )
        );
        
        if($money%100>0){
            $data=array(
                'status'=>FALSE,
                'error'=>'提现金额必须是100的倍数！',
                'data'=> array(
                )
            );
            $this->response($data);
        }
        
        if(empty($bank['data'])){
            $data=array(
                'status'=>FALSE,
                'error'=>'请先绑定银行卡',
                'data'=> array(
                )
            );
        }else{
            
            $bankid=$bank['data'][0]['id'];
            $yue= $this->userinfo->money;
            if($yue>=$money){
                $data_arr=array(
                    'user_id'=> $this->userinfo->id,
                    'username'=> $this->userinfo->userid,
                    'money'=>$money,
                    'addtime'=>time(),
                    'bankid'=>$bankid
                );
                $this->db->insert('tixian',$data_arr);
                $new_id= $this->db->insert_id();
                if($new_id>0){
                    $data_arr=array(
                        'money'=> $this->userinfo->money-$money
                    );
                    $this->db->where("id", $this->userinfo->id);
                    $this->db->update('user',$data_arr);
                    $data=array(
                        'status'=>200,
                        'error'=>'申请提现已提交！',
                        'data'=> array(
                        )
                    );
                }else{
                    $data=array(
                        'status'=>FALSE,
                        'error'=>'提现失败',
                        'data'=> array(
                        )
                    );
                }
            }else{
                $data=array(
                    'status'=>FALSE,
                    'error'=>'提现金额不能大于您的余额',
                    'data'=> array(
                    )
                );
            }
        }
        
        $this->response($data);
        
    }
    
    /**
     * 提现记录
     * @param type $object
     * @return type
     */
    public function tixian_get(){
        $p=1;
        if(@$_REQUEST['p']){
            $p= intval($_REQUEST['p'])?intval($_REQUEST['p']):1;
        }
        
        $userid= $this->userinfo->id;
        $username= $this->userinfo->userid;
        
        $this->db->where("user_id","$userid");
        $this->db->where('username',$username);
        
        $count=$this->db->count_all_results('tixian', FALSE);
        $pagecount=10;
        
        $this->db->order_by('addtime','desc');
        $this->db->limit($pagecount,($p-1)*$pagecount);
        $q= $this->db->get();
        $rows=array();
        $html='';
        foreach($q->result() as $r){
            $rows[]=$r;
            $status='';
            if($r->ischeck==0){
                $status="<font color='blue'>未审核</font>";
            }elseif($r->ischeck==1){
                $status="<font color='green'>已通过</font>";
            }elseif($r->ischeck==2){
                $status="<font color='red'>拒绝</font>";
            }
            $html.='<li class="mui-table-view-cell">
		            <span style="font-size:1.5rem;">'.$r->money.'</span><br/><span style="font-size:0.8rem;">'.$status.'</span>
		            <span class="mui-badge">'.date('Y-m-d',$r->addtime).'</span>
		        </li>';
        }
        
        $pagetotal=$count>$pagecount?(($count%$pagecount)>0?intval($count/$pagecount)+1:intval($count/$pagecount)):1;
        
        $data=array(
            'status'=>200,
            'error'=>'',
            'data'=> array(
                'count'=>$count,
                'data'=>$rows,
                'html'=>$html,
                'pagecurrent'=>$p,
                'pagetotal'=>$pagetotal,
                'pagecount'=>$pagecount
            )
        );
        $this->response($data);
    }
    
    public function tixianguize_get(){
        $html="温馨提示：提现手续费5%，最低提现金额100元，提现金额必须为100的整数倍。";
        echo $html;
    }
    
    public function caiwuxinxi_get(){
        $this->db->where("user_id", $this->userinfo->id);
        $this->db->select_sum("shouru");
        $query= $this->db->get("acount_log");
        $r=$query->row();
        $total_shouru=$r->shouru?$r->shouru:0;//总收入
        
        $time=strtotime(date("Y-m-d",time()));
        $this->db->where("addtime >",$time);
        $this->db->where("user_id", $this->userinfo->id);
        $this->db->select_sum("shouru");
        $query= $this->db->get("acount_log");
        $r=$query->row();
        $today_shouru=$r->shouru?$r->shouru:0;//今日收入
        
        $this->db->where("user_id", $this->userinfo->id);
        $this->db->select_sum("zhichu");
        $query= $this->db->get("acount_log");
        $r=$query->row();
        $zhichu=$r->zhichu?$r->zhichu:0;//今日收入
        
$html=<<<EOF
        <li class="mui-table-view-cell mui-media mui-col-xs-4">
			            <a href="#">
			                <div class="mui-media-body" style="color:#FFF; height:auto; margin-top:0;">{$total_shouru}<p style="color:#FFF;">总收入</p></div></a></li>
			        <li class="mui-table-view-cell mui-media mui-col-xs-4">
			            <a href="#">
			                <div class="mui-media-body" style="color:#FFF; height:auto;margin-top:0;">{$today_shouru}<p style="color:#FFF;">今日收入</p></div></a></li>
			        <li class="mui-table-view-cell mui-media mui-col-xs-4">
			                <div class="mui-media-body" style="color:#FFF; height:auto;margin-top:0;">{$zhichu}<p style="color:#FFF;">已消费</p></div></a></li>
EOF;
        echo $html;
    }
    
    public function headimg_get(){
        echo "images/53.png";
    }
    
    public function groupname_get(){
        $this->db->where("levelid", $this->userinfo->groupid);
        $q=$this->db->get("user_group");
        $r=$q->row();
        if($this->userinfo->supervip){
            echo "超级VIP + ".$r->groupname;
        }else{
            echo $r->groupname;
        }
    }
    
    public function ziliao_get(){
        
        
        
        $rows=array(
            'username'=> $this->userinfo->userid,
            'mobile'=>$this->userinfo->mobile,
            'prov'=>$this->userinfo->prov,
            'city'=>$this->userinfo->city,
            'area'=>$this->userinfo->area,
            'address'=>$this->userinfo->address,
        );
        
        $data=array(
            'status'=>200,
            'error'=>'',
            'data'=> array(
                'data'=>$rows,
            )
        );
        
        $this->response($data);
    }
    
    public function ziliao_post(){
        $prov= $this->post("prov");
        $city= $this->post("city");
        $area= $this->post("area");
        $address= $this->post("address");
        
        $array=array(
            'prov'=>$prov,
            'city'=>$city,
            'area'=>$area,
            'address'=>$address
        );
        $this->db->where("id", $this->userinfo->id);
        $this->db->update("user",$array);
        
        $data=array(
            'status'=>200,
            'error'=>'更新完成！',
            'data'=> array(
            )
        );
        
        $this->response($data);
        
    }
    
    public function ziliao1_post(){
        $username= $this->post("username");
        $array=array(
            'username'=>$username
        );
        $this->db->where("id", $this->userinfo->id);
        $this->db->update("user",$array);
        
        $data=array(
            'status'=>200,
            'error'=>'更新完成！',
            'data'=> array(
            )
        );
        
        $this->response($data);
        
    }
    
    
    //霸屏天下转出资金
    public function zhuanchu_post(){
        $token=$this->post('token');
        $money= $this->post('money');
        
        $this->db->where('id', $this->userinfo->id);
        $data=array();
        if($this->userinfo->money>=$money){
            $array=array(
                'money'=> $this->userinfo->money-$money
            );
            $this->db->update("user",$array);
            
            Http("http://www.1.com/account/bpformmoney",array(
                'token'=>$token,
                'money'=>$money
            ));
            
            $arr=array(
                'user_id'=>$this->userinfo->id,
                'username'=>$this->userinfo->userid,
                'shouru'=>0,
                'zhichu'=>$money,
                'remark'=>'',
                'addtime'=>time(),
                'leixing'=>'资金转出'
        );
            
        $this->db->insert("acount_log",$arr);
            
            
            $data=array(
                'status'=>200,
                'error'=>"转出成功",
                'data'=> array(
                )
            );
        }else{
            $data=array(
                'status'=>FALSE,
                'error'=>"余额不足，无法转出",
                'data'=> array(
                )
            );
        }
        
        
        
        $this->response($data);
    }
    
}




function objectToArray ($object) {
    if(!is_object($object) && !is_array($object)) {
        return $object;
    }
 
    return array_map('objectToArray', (array) $object);
}

/*
     *@param String  $url是请求地址 
     *@param Array $getData 是GET数据
     *@param Array $postData
     */
function Http($url, $getData=NULL, $postData=NULL)
    {
        if (!is_string($url) || (!is_array($getData)) || (!is_array($postData))) {
        	return '';
        }
        //读取url后面参数
        $parse_url = parse_url($url);
        $urldata = $parse_url['query'];
        parse_str($urldata, $get);
        //整合两部分get数据
        $getData = array_merge($getData, $get);
        $param = "?".http_build_query($getData);//注意这里http_build_query已经将参数urlencode处理
        $url_with_get = $url.$param;
        if (function_exists('curl_init')) {
            $ch = curl_init();
            curl_setopt($ch, CURLOPT_URL, $url_with_get);
            curl_setopt($ch, CURLOPT_POST, 1);
            curl_setopt($ch, CURLOPT_POSTFIELDS, $postData);
            curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
            $result = curl_exec($ch);
            curl_close($ch);
            return $result;
        } else {
            $content = http_build_query($postData);
            $content_length = strlen($content);
            $context = array(
                    'http' =>
                    array(
                            'method' => 'POST',
                            'user_agent' => $_SERVER['HTTP_USER_AGENT'],
                            'header' => 'Content-Type: ' . 'text/html' . "\r\n" .
                            'Content-Length: ' . $content_length,
                            'content' => $content
                    )
            );
            $context_id = stream_context_create($context);
            $sock = fopen($url_with_get, 'r', false, $context_id);
            $result = '';
            if ($sock) {
                while (!feof($sock)){
                    $result .= fgets($sock, 4096);
                }
                fclose($sock);
            }
            return $result;
        }
    }

