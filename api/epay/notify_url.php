<?php
/* *
 * 功能：优爱云支付异步通知页面
 * 说明：
 * 以下代码只是为了方便商户测试而提供的样例代码，商户可以根据自己网站的需要，按照技术文档编写,并非一定要使用该代码。
 * 该代码仅供学习和研究支付宝接口使用，只是提供一个参考。


 *************************页面功能说明*************************
 * 创建该页面文件时，请留心该页面文件中无任何HTML代码及空格。
 * 该页面不能在本机电脑测试，请到服务器上做测试。请确保外部可以访问该页面。
 * 该页面调试工具请使用写文本函数logResult，该函数已被默认关闭，见alipay_notify_class.php中的函数verifyNotify
 */
define('BASEPATH',"/");
define('ENVIRONMENT', isset($_SERVER['CI_ENV']) ? $_SERVER['CI_ENV'] : 'development');
require_once("epay.config.php");
require_once("lib/epay_notify.class.php");

require_once '../application/config/database.php';



//计算得出通知验证结果
$alipayNotify = new AlipayNotify($alipay_config);
$verify_result = $alipayNotify->verifyNotify();

if($verify_result) {//验证成功
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	//请在这里加上商户的业务逻辑程序代

	
	//——请根据您的业务逻辑来编写程序（以下代码仅作参考）——
	
    //获取支付宝的通知返回参数，可参考技术文档中服务器异步通知参数列表
	
	//商户订单号

	$out_trade_no = $_GET['out_trade_no'];

	//彩虹易支付交易号

	$trade_no = $_GET['trade_no'];

	//交易状态
	$trade_status = $_GET['trade_status'];

	//支付方式
	$type = $_GET['type'];


	if ($_GET['trade_status'] == 'TRADE_SUCCESS') {
		//判断该笔订单是否在商户网站中已经做过处理
			//如果没有做过处理，根据订单号（out_trade_no）在商户网站的订单系统中查到该笔订单的详细，并执行商户的业务程序
			//请务必判断请求时的total_fee、seller_id与通知时获取的total_fee、seller_id为一致的
			//如果有做过处理，不执行商户的业务程序
				
		//注意：
		//付款完成后，支付宝系统发送该交易状态通知
            
            
            //header("Location:/index.php/notify/?order_id={$out_trade_no}&paytype={$type}");
            $con=mysqli_connect($db['default']['hostname'],$db['default']['username'],$db['default']['password'],$db['default']['database']);
            mysqli_query($con,"set names utf8");
            $sql="select * from tbl_pay_log where id={$out_trade_no}";
            
            $result = mysqli_query($con, $sql);
            $row = mysqli_fetch_array($result, MYSQLI_ASSOC);
            
            if($row['status']==0){
                $time=time();
                $sql="update tbl_pay_log set status=1,paytype='{$type}',paytime={$time} where id={$out_trade_no}";
                mysqli_query($con,$sql);
                
                $sql="update tbl_user set groupid=1 where id={$row['user_id']}";
                mysqli_query($con, $sql);
               
                $sql="insert into tbl_acount_log (user_id,username,zhichu,addtime,leixing) values ({$row['user_id']},'{$row['username']}',{$row['money']},{$time},'升级VIP会员')";
                mysqli_query($con,$sql);
                
                $sql="select * from tbl_user where id={$row['uesr_id']}";
                $result=mysqli_query($con,$sql);
                $row = mysqli_fetch_array($result, MYSQLI_ASSOC);
                if(trim($row['shuyu'])){
                    
                    
                    $sql="select * from tbl_user where userid='{$row['shuyu']}'";
                    $result=mysqli_query($con,$sql);
                    $row = mysqli_fetch_array($result, MYSQLI_ASSOC);
                    if(!empty($row)){
                        $yi=$row['shuyu'];
                        $sql="update tbl_user set money=money+8 where userid='{$yi}'";
                        mysqli_query($con,$sql);//直接会员加8
                        //写入交易日志
                        $sql="insert into tbl_acount_log (user_id,username,zhichu,addtime,leixing) values ({$row['user_id']},'{$row['username']}',8,{$time},'推荐VIP会员')";
                        mysqli_query($con,$sql);
                        
                        if(trim($row['shuyu'])){
                            
                            $sql="select * from tbl_user where userid='{$row['shuyu']}'";
                            $result=mysqli_query($con,$sql);
                            $row = mysqli_fetch_array($result, MYSQLI_ASSOC);
                            
                            if(!empty($row)){
                                $er=$row['shuyu'];
                                $sql="update tbl_user set money=money+8 where userid='{$er}'";
                                mysqli_query($con,$sql);//次级关系会员加8
                                //写入交易日志
                                $sql="insert into tbl_acount_log (user_id,username,zhichu,addtime,leixing) values ({$row['user_id']},'{$row['username']}',8,{$time},'推荐VIP会员')";
                                mysqli_query($con,$sql);
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
            mysqli_close($con);
            
            echo "success";
            exit();
    }

	//——请根据您的业务逻辑来编写程序（以上代码仅作参考）——
        
	echo "success";		//请不要修改或删除
	
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
}
else {
    //验证失败
    echo "fail";
}
?>