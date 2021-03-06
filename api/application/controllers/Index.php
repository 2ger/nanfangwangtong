<?php

require(APPPATH.'libraries/REST_Controller.php');
require(APPPATH.'libraries/Format.php');

/**
 * Description of Index
 *
 * @author sea_s
 */
class Index  extends Restserver\Libraries\REST_Controller{
    //put your code here
    public function gonggao_get(){
        $this->db->where("id",3);
        $q=$this->db->get("config");
        $r=$q->row();
        $data['title'] = $r->notice;
        $data['content'] = str_replace("\n","<br>",$r->content);
        die(json_encode($data,true));
    }
    public function config_get(){
        $this->db->where("id",3);
        $q=$this->db->get("config");
        $r=$q->row();
        $data['appversion'] = $r->appversion;
        $data['downloadurl'] = $r->downloadurl;
        $data['title'] = $r->notice;
        $data['content'] = $r->content;
        die(json_encode($data,true));
    }
    //公告详情
    public function gonggaoxq_get(){
        $html=<<<EOF
       <h3 style="text-align: center; padding:20px 0; font-size:1.3rem;">南方网通的财富裂变规则</h3>
            <!--<div style="text-align:right; color:#999999; padding: 0 10px; border-bottom:1px solid #cfcfcf; height:30px; font-size:0.9rem;">2018-10-18 13:45:50</div>-->
            
            <div style="font-size:14px;padding:20px 5px; color:#333;" id="gonggao">
                <P>尊敬的南方网通用户您好：</P>
                <P>如果你推荐30个人，团队的每个人都推荐30个人，下面我来给大家计算一下：</P>
                <P>1.自己发圈赚钱20元/天</P>
                <P>2.分享好友赚钱24元/天</P>
                <P>3.推荐广告投放商赚钱30%佣金</P>
                <P>推荐奖励：一级：30人*20元=600元</P>
                <P>推荐奖励：二级：30人*30人*10元=9000元</P>
                <P>推荐奖励：三级：30人*30人*30人*5元=135000元</P>
                <P>发圈奖励：一级：30人*12元=360元/天</P>
                <P>发圈奖励：二级：30人*30人*6元=5400元/天</P>
                <P>发圈奖励：三级：30人*30人*30人*6元=162000元/天</P>
                <P>这里还没算你直接推荐50人升级为营销经理的收入！自己算下，而我们做的只是投入了288元每天发两条朋友圈并分享出去！</P>
            
            </div>
EOF;
        echo $html;
    }
    /**
     * 如何赚佣
     */
    public function zhuanyongguize_get(){
        // 或支付1188成为超级VIP
$html=<<<EOF
        <div style="background-color: #FFF; margin-top:44px; padding:0 30px;">
			<p style="line-height:4; color:#FF0000;">加入南方网通，开启躺赚人生，如何发圈赚佣？</p>
			<p style="border-left:1px solid #e7e7e7; height:50px; margin-bottom:0; padding-left:15px; position:relative;">
				<span class="mui-badge mui-badge-danger" style="position:absolute; left:-10px;top:2px;">1</span>
				扫码下载APP
			</p>
			<p style="border-left:1px solid #e7e7e7; height:50px; margin-bottom:0; padding-left:15px; position:relative;">
				<span class="mui-badge mui-badge-danger" style="position:absolute; left:-10px;top:2px;">2</span>
				支付288元成为VIP 
			</p>
			<p style="border-left:1px solid #e7e7e7; height:50px; margin-bottom:0; padding-left:15px; position:relative;">
				<span class="mui-badge mui-badge-danger" style="position:absolute; left:-10px;top:2px;">3</span>
				【任务中心】领取任务发朋友圈保留两小时
			</p>
			<p style="border-left:1px solid #e7e7e7; height:50px; margin-bottom:0; padding-left:15px; position:relative;">
				<span class="mui-badge mui-badge-danger" style="position:absolute; left:-10px;top:2px;">4</span>
				【提交任务】按照任务模板截图上传
			</p>
			<p style="border-left:1px solid #FFFFFF; height:50px; margin-bottom:0; padding-left:15px; position:relative;">
				<span class="mui-badge mui-badge-danger" style="position:absolute; left:-10px;top:2px;">5</span>
				赚取20元/天佣金(超级VIP 60元每天)
			</p>
		</div>
		
		<div>
		<!--	<img src="https://i.loli.net/2018/11/16/5bee9a59edcfb.png" width="100%"> -->
		</div>
EOF;
        echo $html;
    }
    /**
     * 广告投放
     */
    public function adtoufang_get(){
$html=<<<EOF
        <div style="margin:44px 0;padding:20px;">
			
			<div style="line-height:1.75;">欢迎在南方网通投放广告，你的广告将在十亿朋友圈中曝光，广告投放请咨询一下以下微信号：</div>
			
			<div style="width:13rem; height:13rem; margin:0 auto; margin-top:50px; background-image:url(images/19.png); background-repeat: no-repeat; background-size:cover;">
				
				<img src="http://nanfang.185.12.ac.cn/kefu.jpg" style="width:9rem; margin:2rem;">
				
			</div>
			
			
			
		</div>
		
		<div style="background-color: #FFF; color:#333; text-align: center; line-height:50px;">
			fcg2020888
		</div>
EOF;
        echo $html;
    }
    
    /**
     * 积分商城
     */
    public function jifenshangcheng_get(){
$html=<<<EOF
        <img src="images/23.png" style="width:100%;">
EOF;
        echo $html;
    }
    
    /**
     * 客服中心
     */
    public function kefuzhongxin_get(){
$html=<<<EOF
    <div style="padding:80px 0; text-align: center;">
				<img src="images/logo.png" width="80">
			</div>
			
			<ul class="mui-table-view">
				 <li class="mui-table-view-cell">微信客服
				 <span style="float: right;color:#ff0000;">fcg2020888</span>
				 </li>
		         <!--li class="mui-table-view-cell">QQ客服
				 <span style="float: right;color:#ff0000;">644777789</span>
				 </li>
		         <li class="mui-table-view-cell">咨询热线
				 <span style="float: right;color:#ff0000;"></span>
				 </li -->
			</ul>
			
			<div style="height:5px;"></div>
			
			<ul class="mui-table-view">
				 <li class="mui-table-view-cell">客服工作时间
				 <span style="float: right;color:#999999;">9:00-21:00</span>
				 </li>
		         <li class="mui-table-view-cell">咨询热线时间
				 <span style="float: right;color:#999999;">9:00-11:30;13:30-18:00</span>
				 </li>
			</ul>    
EOF;
        echo $html;
    }
    
    /**
     * 成为VIP
     */
    public function chengweivip_get(){
        $token= $this->get('token');
        
        if($token=='null'){
            echo "<script>location.href='login.html';</script>";
            exit();
        }
        
        $this->db->where("token",$token);
        $q=$this->db->get("user");
        $r=$q->row();
      $html = '<img src="images/18.png" style="width:100%;">';  
        if($r->groupid){
            
$html .=<<<EOF
			
			<div style="text-align: center; margin:30px 0; font-size:1.5rem; color:#FF0000;">
				您已成为VIP会员！
			</div>
        
EOF;
        }else{
        //20181102
$html .=<<<EOF
			
			<div style="text-align: center; margin:30px 0; text-decoration: line-through;">
				VIP 原价：￥<b>499</b>
			</div>
			
			<div style="text-align: center; margin:30px 0; font-size:1.5rem; color:#FF0000">
				VIP 优惠价：￥<b>288</b>
			</div>
			
			<div style="margin:0 30px;">
				<a href="javascript:void(0)" id="submit" class="mui-btn mui-btn-danger mui-btn-block">成为VIP</a>
			</div>
                                
       <script>
       $(document).ready(function(){
            $("#submit").click(function(){
                $.get(base_url+"index.php/index/zhifu?token={$token}",{},function(data){
                    $("#content").html(data);
                });
                
            });
        });    
       </script>
        
EOF;
        }

        
        if($r->supervip==1){
            
$html .=<<<EOF
			
			<div style="text-align: center; margin:30px 0; font-size:1.5rem; color:green;">
				您已成为超级VIP会员, 三倍赚钱！
			</div>
        
EOF;
        }else{
        //20181102
$html .=<<<EOF
			
			<div style="text-align: center; margin:30px 0; text-decoration: line-through;">
			超级VIP	原价：￥<b>1998</b>
			</div>
			
			<div style="text-align: center; margin:30px 0; font-size:1.5rem; color:#FF0000">
				超级VIP 优惠价：￥<b>1188</b>
			</div>
			
			<div style="margin:0 30px;">
				<a href="javascript:void(0)" id="submit2" class="mui-btn mui-btn-danger mui-btn-block">成为超级VIP，所有奖励乘以3</a>
			</div>
                                
       <script>
       $(document).ready(function(){
            $("#submit2").click(function(){
                $.get(base_url+"index.php/index/zhifu?token={$token}&supervip=1",{},function(data){
                    $("#content").html(data);
                });
                
            });
        });    
       </script>
        
EOF;
        }
        echo $html;
    }
    
    public function zhifu_get(){
        if(@$_REQUEST['token']){
            $this->db->where("token",$_REQUEST['token']);
            $q=$this->db->get("user");
            $r=$q->row();
            if(isset($r)){
                $updatetime=$r->updatetime;
                $end_time=$updatetime+ $this->config->item('app_expire_time');
                if($end_time>time()){//20181102
                    $data_array=array(
                        'user_id'=>$r->id,
                        'username'=>$r->userid,
                        'money'=>288,
                        'addtime'=>time()
                    );
                    $this->db->insert('pay_log',$data_array);
                    $order_id= $this->db->insert_id();
                    if($_REQUEST['supervip']==1){
$html=<<<EOF
                <div style="padding:20px 15px;">
                <form action="http://{$_SERVER['SERVER_NAME']}/api/ldpay/alipay.php" method="post" name="alipayment">
                <input type="hidden" name="out_trade_no" value="{$order_id}">
                <input type="hidden"  name="WIDsubject" value="升级超级VIP会员">
                <input type="hidden"  name="total_fee" value="1188">
                <input type="hidden"  name="pay" value="3">
                <button type="submit" class="mui-btn mui-btn-success mui-btn-block">微信支付1188元</button>
                </form>

<!--
                <form action="http://{$_SERVER['SERVER_NAME']}/api/ldpay/alipay.php" method="post" name="alipayment">
                <input type="hidden" name="out_trade_no" value="{$order_id}">
                <input type="hidden"  name="WIDsubject" value="升级VIP会员">
                <input type="hidden"  name="total_fee" value="1188">
                <input type="hidden"  name="pay" value="1">
                <button type="submit" class="mui-btn mui-btn-primary mui-btn-block">支付宝充值1188元</button>
                </form>
 -->
EOF;
                    }else{
$html=<<<EOF
                <div style="padding:20px 15px;">
                <form action="http://{$_SERVER['SERVER_NAME']}/api/ldpay/alipay.php" method="post" name="alipayment">
                <input type="hidden" name="out_trade_no" value="{$order_id}">
                <input type="hidden"  name="WIDsubject" value="升级VIP会员">
                <input type="hidden"  name="total_fee" value="288">
                <input type="hidden"  name="pay" value="3">
                <button type="submit" class="mui-btn mui-btn-success mui-btn-block">微信支付288元</button>
                </form>

<!--
                <form action="http://{$_SERVER['SERVER_NAME']}/ldpay/alipay.php" method="post" name="alipayment">
                <input type="hidden" name="out_trade_no" value="{$order_id}">
                <input type="hidden"  name="WIDsubject" value="升级VIP会员">
                <input type="hidden"  name="total_fee" value="288">
                <input type="hidden"  name="pay" value="1">
                <button type="submit" class="mui-btn mui-btn-primary mui-btn-block">支付宝付款</button>
                </form>
 -->
EOF;

                    }
                echo $html;    
                    
                }else{
                    $this->response(array("status"=>false,'error'=>'Unauthorized'));
                }
            }else{
                $this->response(array("status"=>false,'error'=>'Unauthorized'));
            }
            
            
        }else{
            $this->response(array("status"=>false,'error'=>'Unauthorized'));
        }
    }
    
    
    
    /**
     * 推广二维码
     */
    public function tuiguang_get(){
        if(@$_REQUEST['token']){
            $this->db->where("token",$_REQUEST['token']);
            $q=$this->db->get("user");
            $r=$q->row();
            if(isset($r)){
                $updatetime=$r->updatetime;
                $end_time=$updatetime+ $this->config->item('app_expire_time');
                if($end_time>time()){
                    
                    $this->load->library("Qrcode");
                    $this->qrcode->png("http://{$_SERVER['SERVER_NAME']}/api/index.php/register/?t={$r->id}","user_qrcode/{$r->id}.png",QR_ECLEVEL_H,6);
                    
                    
                    //header("Content-type: image/png");
                    $im = imagecreatefrompng("user_qrcode/haibao.png");

                    $head_img_path = "user_qrcode/{$r->id}.png";
                    
                    $head_img = imagecreatefrompng($head_img_path);

                    $head_img_w = imagesx($head_img);
                    $head_img_h = imagesy($head_img);

                    imagecopyresized($im, $head_img, 135, 495, 0, 0, 200,200, $head_img_w, $head_img_h);

                    

                    imagepng($im,"user_qrcode/{$r->id}_haibao.png");
                    imagedestroy($im);
                    
                    
$html=<<<EOF
               <img src="http://{$_SERVER['SERVER_NAME']}/api/user_qrcode/{$r->id}_haibao.png" width="100%" data-preview-src="" data-preview-group="1"/>
EOF;
                echo $html;    
                    
                }else{
                    $this->response(array("status"=>false,'error'=>'Unauthorized'));
                }
            }else{
                $this->response(array("status"=>false,'error'=>'Unauthorized'));
            }
            
            
        }else{
            $this->response(array("status"=>false,'error'=>'Unauthorized'));
        }
    }
    
    
    
}
