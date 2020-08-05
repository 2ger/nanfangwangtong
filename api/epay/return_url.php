<?php
/* * 
 * 功能：优爱云支付页面跳转同步通知页面
 * 说明：
 * 以下代码只是为了方便商户测试而提供的样例代码，商户可以根据自己网站的需要，按照技术文档编写,并非一定要使用该代码。
 * 该代码仅供学习和研究支付宝接口使用，只是提供一个参考。

 *************************页面功能说明*************************
 * 该页面可在本机电脑测试
 * 可放入HTML等美化页面的代码、商户业务逻辑程序代码
 * 该页面可以使用PHP开发工具调试，也可以使用写文本函数logResult，该函数已被默认关闭，见epay_notify_class.php中的函数verifyReturn
 */

require_once("epay.config.php");
require_once("lib/epay_notify.class.php");
?>
<!DOCTYPE HTML>
<html>
    <head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
    <meta name="apple-mobile-web-app-capable" content="yes">
	<meta name="apple-mobile-web-app-status-bar-style" content="black">

        <title>支付完成</title>
        
        <script src="/skins/js/mui.min.js"></script>
    <link href="/skins/css/mui.min.css" rel="stylesheet"/>
    <script type="text/javascript" charset="utf-8">
      	mui.init();
    </script>
    <link rel="stylesheet" type="text/css" href="/skins/css/icons-extra.css" />
		<!--App自定义的css-->
	<link rel="stylesheet" type="text/css" href="/skins/css/app.css"/>
        
	</head>
    <body>
        
        <?php
//计算得出通知验证结果
$alipayNotify = new AlipayNotify($alipay_config);
$verify_result = $alipayNotify->verifyReturn();
if($verify_result) {//验证成功
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	//请在这里加上商户的业务逻辑程序代码
	
	//——请根据您的业务逻辑来编写程序（以下代码仅作参考）——
    //获取支付宝的通知返回参数，可参考技术文档中页面跳转同步通知参数列表

	//商户订单号

	$out_trade_no = $_GET['out_trade_no'];

	//支付宝交易号

	$trade_no = $_GET['trade_no'];

	//交易状态
	$trade_status = $_GET['trade_status'];

	//支付方式
	$type = $_GET['type'];


    if($_GET['trade_status'] == 'TRADE_SUCCESS') {
		//判断该笔订单是否在商户网站中已经做过处理
			//如果没有做过处理，根据订单号（out_trade_no）在商户网站的订单系统中查到该笔订单的详细，并执行商户的业务程序
			//如果有做过处理，不执行商户的业务程序
        ?>
	<div style="text-align: center; padding-top:60px;"><span class="mui-icon mui-icon-checkmarkempty" style="font-size:120px; display: inline-block; width:120px; height: 120px; border-radius:60px; background-color:green; color:#FFF; line-height:120px; text-align: center;"></span></div>
        
        <div style="text-align: center; padding-top:15px; font-size:28px;">支付完成</div>
        
        <div style="text-align: center; padding-top:15px;">登录手机APP查看</div>
        <?php
        
    }
    else {
      echo "trade_status=".$_GET['trade_status'];
    }


	//——请根据您的业务逻辑来编写程序（以上代码仅作参考）——
	
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
}
else {
    //验证失败
    //如要调试，请看alipay_notify.php页面的verifyReturn函数
    //echo "验证失败";
    ?>
        
        <div style="text-align: center; padding-top:60px;"><span class="mui-icon mui-icon-closeempty" style="font-size:120px; display: inline-block; width:120px; height: 120px; border-radius:60px; background-color:red; color:#FFF; line-height:120px; text-align: center;"></span></div>
        
        <div style="text-align: center; padding-top:15px; font-size:28px;">支付失败</div>
        
        <div style="text-align: center; padding-top:15px;">登录手机APP查看</div>
        
        <?php
}
?>
        
    </body>
</html>