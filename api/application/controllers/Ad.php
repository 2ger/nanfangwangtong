<?php
defined('BASEPATH') OR exit('No direct script access allowed');

require(APPPATH.'libraries/REST_Controller.php');
require(APPPATH.'libraries/Format.php');

/**
 * Description of Ad
 *
 * @author sea_s
 */
class Ad extends Restserver\Libraries\REST_Controller {
    
    private $userinfo;
    private $list;
    public function __construct($config = 'rest_auth') {
        $is_vip = 0;
        $supervip = 0;
        if(@$_REQUEST['token']){
            parent::__construct('rest');
            $this->db->where("token",$_REQUEST['token']);
            $q=$this->db->get("user");
            $r=$q->row();
            if(isset($r)){
                $is_vip = $r->groupid;
                $supervip = $r->supervip;

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
        
        $this->db->where("isshow",1);
        $this->db->where("ischeck",1);
        // if($supervip){
            // if(!$is_vip){
                // $this->db->where("supervip",1);
            // }
        // }else{
                // $this->db->where("supervip",0);
        // }
        $this->db->order_by("id",'desc');
        $query=$this->db->get("ads");
        $list_data=array();
        foreach($query->result() as $row){
            // var_dump($row);
            $data=array();
            $images= json_decode($row->images,TRUE);
            $list_data[$row->id]=array(
                'title'=>$row->title,
                'content'=>$row->content,
                'supervip'=>$row->supervip,
                'tu1'=>$images[0]?$images[0]:"",
                'tu2'=>$images[1]?$images[1]:"",
                'tu3'=>$images[2]?$images[2]:"",
                'tu4'=>$images[3]?$images[3]:"",
                'tu5'=>$images[4]?$images[4]:"",
                'tu6'=>$images[5]?$images[5]:"",
                'tu7'=>$images[6]?$images[6]:"",
                'tu8'=>$images[7]?$images[7]:"",
            );
        }

        // $list_data[0]=array(
        //     'title'=>'招募合伙人',
        //     'content'=>'聚友传媒拿出巨额奖励鼓励市场推广！七天内完成一级五十人，二级三百人，公司直接给予奖励现金一万元！现金一万元！等你来拿！只需要多动动手指头！',
        //     'tu1'=>'http://'.$_SERVER['SERVER_NAME'].'/erweima/tuiguang1.jpg',
        //     'tu2'=>'http://'.$_SERVER['SERVER_NAME'].'/erweima/tuiguang2.jpg',
        // );
        // var_dump($list_data);exit;
        $this->list=$list_data;
        
    }
    
    public function list_get(){
        /*
         * <ul class="mui-table-view">
    <li class="mui-table-view-cell mui-media">
        <a href="javascript:;">
            <img class="mui-media-object mui-pull-left" src="../images/shuijiao.jpg">
            <div class="mui-media-body">
                幸福
                <p class='mui-ellipsis'>能和心爱的人一起睡觉，是件幸福的事情；可是，打呼噜怎么办？</p>
            </div>
        </a>
    </li><ul>
         * 
         **/
        
        $this->db->where("user_id", $this->userinfo->id);
        $today_start_time=strtotime(date("Y-m-d")." 00:00:00");
        $today_end_time=strtotime(date("Y-m-d")." 00:00:00")+24*3600;
        $this->db->where("addtime >=", $today_start_time);
        $this->db->where("addtime <", $today_end_time);
        $this->db->order_by("id",'desc');
        
        $query= $this->db->get("ads_task");
        $ads_id=array();
        foreach($query->result() as $k=>$v){
            $ads_id[]=$v->aid;
        }
         
        $groupid= $this->userinfo->groupid;
        $supervip= $this->userinfo->supervip;
        
        $html="<ul class=\"mui-table-view\">";
        foreach($this->list as $k=>$v){
            $a="";
            if(in_array($k,$ads_id)){
                $a='<a href="task_01_xq.html?id='.$k.'" style="float:right;width:auto; line-height:1.5rem; position:absolute; top:18px; right:20px;">今日已领取';
            }else{
                if($groupid==1){
                    $a='<a href="javascript:xq('.$k.');" style="float:right;width:auto; line-height:1.5rem; position:absolute; top:18px; right:20px;">';
                }else{
                    $a='<a href="javascript:void(0);" onclick="mui.alert(\'申请成为VIP会员可以领取任务！\');" style="float:right;width:auto; line-height:1.5rem; position:absolute; top:18px; right:20px;">';
                }

                if($v['supervip']==1 && !$supervip){
                    $a='<a href="javascript:void(0);" onclick="mui.alert(\'申请成为超级VIP会员可以领取此任务！\');" style="float:right;width:auto; line-height:1.5rem; position:absolute; top:18px; right:20px;">';
                }
                $a.="点击领取";
            }
            if($v['supervip']==1){
                $type = '超级任务';
            }else{
                $type = '普通任务';
            }
            $html.='<li class="mui-table-view-cell mui-media" style="position:relative;">
            <img class="mui-media-object mui-pull-left" src="images/logo108.png">
            <div class="mui-media-body">
                <a href="task_01_xq.html?id='.$k.'">'.$v['title'].' - '.$type.'</a>
            </div>
            '.$a.'</a>
        
    </li>';
           
        }
        $html.="</ul>";
        
        echo $html;
        
    }
    
    public function xq_post(){//20181013
        $aid= $this->post('aid');
        $user_id=$this->userinfo->id;
        $username=$this->userinfo->userid;
        
        $this->db->where("user_id", $this->userinfo->id);
        $today_start_time=strtotime(date("Y-m-d")." 00:00:00");
        $today_end_time=strtotime(date("Y-m-d")." 00:00:00")+24*3600;
        $this->db->where("addtime >=", $today_start_time);
        $this->db->where("addtime <", $today_end_time);
        $this->db->order_by("id",'desc');
        
        $query= $this->db->get("ads_task");
        $ads_id=array();
        foreach($query->result() as $k=>$v){
            $ads_id[]=$v->aid;
        }
        
        if(count($ads_id)>=4){
            $data=array(
                'status'=>FALSE,
                'error'=>'每日只能领取两个任务',
                'data'=>array()
            );
        }else{
            if(in_array($aid,$ads_id)){
                $data=array(
                    'status'=>FALSE,
                    'error'=>'该任务今日已领取',
                    'data'=>array()
                );
            }else{
                $array=array(
                    'aid'=>$aid,
                    'user_id'=>$user_id,
                    'username'=>$username,
                    'addtime'=>time(),
                );
                $this->db->insert('ads_task',$array);
                $data=array(
                    'status'=>200,
                    'error'=>'已成功领取',
                    'data'=>array()
                );
            }
        }

        $this->response($data);
        
    }

    public function xq_get(){
        $id= $this->get('id');
        
        // $key= array_search($id, $this->list);
        
$html=<<<EOF
        <p>文案[长按复制]</p>
        <textarea style="width:100%; height:180px; line-height:1rem;" readonly>{$this->list[$id]['content']}</textarea>
        <p>图片</p>
        <ul class="mui-table-view mui-grid-view mui-grid-9">
					<li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3">
					    <a href="#" style="max-height:100px;">
					        <img src="{$this->list[$id]['tu1']}" width="100%" data-preview-src="" data-preview-group="1">
					    </a>
					</li>
					<li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3">
					    <a href="#" style="max-height:100px;">
					        <img src="{$this->list[$id]['tu2']}" width="100%" data-preview-src="" data-preview-group="1">
					        </a>
					</li>
					<li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3">
					    <a href="#" style="max-height:100px;">
					        <img src="{$this->list[$id]['tu3']}" width="100%" data-preview-src="" data-preview-group="1">
                            <!--
<img src="http://{$_SERVER['SERVER_NAME']}/erweima/{$this->userinfo->id}_haibao.png" width="100%" data-preview-src="" data-preview-group="1">
-->
					    </a>
					</li>
				
				    </ul>
EOF;
        
        echo $html;
        
    }
    
    public function tasklist_get(){
        $this->db->where("user_id", $this->userinfo->id);
        $this->db->order_by("id",'desc');
        $query= $this->db->get("ads_task");
        $html='<div id="pullrefresh" class="mui-content mui-scroll-wrapper"><div class="mui-scroll">';// style="padding-top: 44px;"
        $i=0;
        foreach($query->result() as $row){
            $aid=$row->aid;
            $this->db->where("id",$aid);
            $q=$this->db->get("ads");
            $r= $q->row();
            $html.='<div class="mui-card">
            <div class="mui-card-content" style="background-image:url(images/1.jpg); background-repeat: no-repeat; background-position:center center; background-size:cover; height:200px;"></div><div class="mui-card-footer"><span class="mui-card-link">'.date("Y-m-d",$row->addtime)."&nbsp;&nbsp;".$r->title.'</span><span class="mui-card-link">'.($row->ischeck==1?"<font color='green'>已审核</font>":"<font color='red'>未审核</font>").'</span></div></div>';
            $i++;      
        }
        $html.="</div></div>";

        if($i==0){

            $html='<div style="padding-top:100px; text-align: center;">
                                <img src="images/nullData.png" width="150">
                                <p style="color:#666666;">没有数据😭</p>
                        </div>';
        }

        echo $html;
    }
    /**
     * 上传截图时，调用任务列表
    */ 
    public function taskli_get(){
        $this->db->where("user_id", $this->userinfo->id);
        $this->db->where("ischeck",0);
        $this->db->order_by("id",'desc');
        $query= $this->db->get("ads_task");
        $html="<ul class=\"mui-table-view\">";
        foreach($query->result() as $row){
            $aid=$row->aid;
            $this->db->where("id",$aid);
            $q=$this->db->get("ads");
            $r= $q->row();
            $html.="<li class='mui-table-view-cell'><input type='radio' name='aid' id='aid_{$row->aid}' value='{$row->aid}'><label for='aid_{$row->aid}'>{$r->title}&nbsp;&nbsp;".date('Y-m-d',$row->addtime)."</label></li>";
        }
        $html.="</ul>";
$html.=<<<EOF
        <script>
   $("input[id^='aid_']").click(function(){
        $("#aid").val($(this).val());
   });      
   </script>
EOF;
        echo $html;
    }
    
    public function uploadtask_post(){
        $data=array();
        $aid= $this->post('aid');
        $image_data= $this->post("image_data");
	/* 	 $data=array(
                'status'=>200,
                'error'=>$this->post("image_data");,
                'data'=>array()
            );
        $this->response($data);
		
		
		$s=str_split($image_data,5000);
		
		
		$log=array(
               'img'=>strlen($image_data),
			     'img0'=>$image_data,
			   'img1'=>$s[1],
			   'img2'=>$s[2],
			   
			   
			   
				  'time'=>time()
            );
		
		 $this->db->insert("log",$log);
		  */
		 
        if($aid && $image_data){
            $this->db->where("aid",$aid);
            $this->db->where("user_id", $this->userinfo->id);
            $data_arr=array(
                'imagepath'=>$image_data,
                'ischeck'=>2
            );
            $this->db->update("ads_task",$data_arr);
            $data=array(
                'status'=>200,
                'error'=>'截图已提交，请等待审核！',//.strlen($image_data)
                'data'=>array()
            );
        } else {
            $data=array(
                'status'=>FALSE,
                'error'=>'参数有误！',
                'data'=>array()
            );
        }
        $this->response($data);
    }
    
    public function guize_get(){
$html=<<<EOF
        <p>任务领取规则：</p>
				<p>1、VIP会员可领取每天2条朋友圈发布任务。</p>
				<p>2、发布任务时必须与平台内的文案与图片一致【个人邀请好友海报+产品图2张】</p>
				<p>3、不得屏蔽微信好友查看您的朋友圈。</p>
				<p>4、上传图片必须是朋友圈全屏截图。</p>
				<p>5、首次登陆需去首页点击一次推广二维码。</p>
				<img src="images/34.png" style="width:100%;">
EOF;
        echo $html;
    }
    
}
