<?php
/* * 
 * 功能：支付宝页面跳转同步通知页面
 * 版本：3.3
 * 日期：2012-07-23
 * 说明：
 * 以下代码只是为了方便商户测试而提供的样例代码，商户可以根据自己网站的需要，按照技术文档编写,并非一定要使用该代码。
 * 该代码仅供学习和研究支付宝接口使用，只是提供一个参考。

 *************************页面功能说明*************************
 * 该页面可在本机电脑测试
 * 可放入HTML等美化页面的代码、商户业务逻辑程序代码
 * 该页面可以使用PHP开发工具调试，也可以使用写文本函数logResult，该函数已被默认关闭，见alipay_notify_class.php中的函数verifyReturn
 */

//require_once("alipay.config.php");
//require_once("lib/alipay_notify.class.php");
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

	<div style="text-align: center; padding-top:60px;"><span class="mui-icon mui-icon-checkmarkempty" style="font-size:120px; display: inline-block; width:120px; height: 120px; border-radius:60px; background-color:green; color:#FFF; line-height:120px; text-align: center;"></span></div>
        
        <div style="text-align: center; padding-top:15px; font-size:28px;">支付完成或订单超时</div>
        
        <!-- <div style="text-align: center; padding-top:15px;" onclick="plus.runtime.restart();">返回APP查看</div> -->

<center>
        <button type="button" style="text-align: center; padding:15px;" class="mui-btn mui-btn-success" onclick="plus.runtime.restart();">返回APP查看</button>
</center>
    </body>
</html>