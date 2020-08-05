<?php 

ini_set('date.timezone','Asia/Shanghai');

//error_reporting(E_ERROR);

require_once "../lib/WxPay.Api.php";

require_once "WxPay.JsApiPay.php";

require_once 'log.php';

include("../../include/website.inc.php");

if(!$_COOKIE['userid']){

	echo "<script type='text/javascript'>location.href='/login.php';</script>";

	exit;

}

if(!isset($_GET["p"]))

{ 

echo "<script type='text/javascript'>alert('访问错误!');history.go(-1);</script>";

exit;

}

$tiaoshu = $cfg_pay[$_GET["p"]][0];

$shijian = $cfg_pay[$_GET["p"]][1];

$jiage = $cfg_pay[$_GET["p"]][2];

$miaoshu= $cfg_webname.'官方充值 '.$tiaoshu.'条'.'|'.$shijian.'天';

$attach=$tiaoshu.'-'.$shijian.'-'.$jiage.'-'.$_COOKIE['userid'];

//初始化日志

$logHandler= new CLogFileHandler("../logs/".date('Y-m-d').'.log');

$log = Log::Init($logHandler, 15);

//打印输出数组信息

function printf_info($data)

{

    foreach($data as $key=>$value){

       echo "<font color='#00ff55;'>$key</font> : $value <br/>";

    }

}

//①、获取用户openid

$tools = new JsApiPay();

$openId = $tools->GetOpenid();

//②、统一下单

$input = new WxPayUnifiedOrder();

$input->SetBody($miaoshu);

$input->SetAttach($attach);

$input->SetOut_trade_no(WxPayConfig::MCHID.date("YmdHis"));

$input->SetTotal_fee($jiage*100);

$input->SetTime_start(date("YmdHis"));

$input->SetTime_expire(date("YmdHis", time() + 600));

$input->SetGoods_tag("test");

$input->SetNotify_url("http://www.xxxx.com/wxpay/pay/notify.php");

$input->SetTrade_type("JSAPI");

$input->SetOpenid($openId);

$order = WxPayApi::unifiedOrder($input);


//echo '<font color="#f00"><b>统一下单支付单信息</b></font><br/>';

//printf_info($order);

$jsApiParameters = $tools->GetJsApiParameters($order);

//获取共享收货地址js函数参数

$editAddress = $tools->GetEditAddressParameters();

//③、在支持成功回调通知中处理成功之后的事宜，见 notify.php

/**

 * 注意：

 * 1、当你的回调地址不可访问的时候，回调通知会失败，可以通过查询订单来确认支付是否成功

 * 2、jsapi支付时需要填入用户openid，WxPay.JsApiPay.php中有获取openid流程 （文档可以参考微信公众平台“网页授权接口”，

 * 参考http://mp.weixin.qq.com/wiki/17/c0f37d5704f0b64713d5d2c37b468d75.html）

 */

?>

<html>

<head>

    <meta http-equiv="content-type" content="text/html;charset=utf-8"/>

    <meta name="viewport" content="width=device-width, initial-scale=1"/> 

    <title>订单确认-在线支付</title>

    <script type="text/javascript">

	//调用微信JS api 支付

	function jsApiCall()

	{

		WeixinJSBridge.invoke(

			'getBrandWCPayRequest',

			<?php echo $jsApiParameters; ?>,

			function(res){

				WeixinJSBridge.log(res.err_msg);

				if(res.err_msg == "get_brand_wcpay_request:ok"){

                   //alert(res.err_code+res.err_desc+res.err_msg);

				  	  alert('支付成功');

                       window.location.href="/index.php";

                   }else{

                       //返回跳转到订单详情页面

                       alert('支付失败');

                       window.location.href="/vip.php";

                   }

			}

		);

	}

	function callpay()

	{

		if (typeof WeixinJSBridge == "undefined"){

		    if( document.addEventListener ){

		        document.addEventListener('WeixinJSBridgeReady', jsApiCall, false);

		    }else if (document.attachEvent){

		        document.attachEvent('WeixinJSBridgeReady', jsApiCall); 

		        document.attachEvent('onWeixinJSBridgeReady', jsApiCall);

		    }

		}else{

		    jsApiCall();

		}

	}

	</script>

	<script type="text/javascript">

	//获取共享地址

	function editAddress()

	{

		WeixinJSBridge.invoke(

			'editAddress',

			<?php echo $editAddress; ?>,

			function(res){

				var value1 = res.proviceFirstStageName;

				var value2 = res.addressCitySecondStageName;

				var value3 = res.addressCountiesThirdStageName;

				var value4 = res.addressDetailInfo;

				var tel = res.telNumber;

				//alert(value1 + value2 + value3 + value4 + ":" + tel);

			}

		);

	}

	window.onload = function(){

		if (typeof WeixinJSBridge == "undefined"){

		    if( document.addEventListener ){

		        document.addEventListener('WeixinJSBridgeReady', editAddress, false);

		    }else if (document.attachEvent){

		        document.attachEvent('WeixinJSBridgeReady', editAddress); 

		        document.attachEvent('onWeixinJSBridgeReady', editAddress);

		    }

		}else{

			editAddress();

		}

	};

	</script>

</head>

<body>

	<div style="width:100%; text-align:center; font-size:1.2em">

	<a style="font-size:1.3em; color:#00CC99">订单确认</a><br>

	<hr>

	<a style="font-size:1.1em; color:#CC0033">文章数量:<?php echo $tiaoshu;?>条</a><br>

	<a style="font-size:1.1em; color:#CC0033">充值天数:<?php echo $shijian;?>天</a><br>

	<a style="font-size:1.1em; color:#CC0033">订单金额:<b><?php echo $jiage;?></b>元</a><br><br>

	 <button style="width:210px; height:50px; border-radius: 15px;background-color:#FE6714; border:0px #FE6714 solid; cursor: pointer;  color:white;  font-size:16px;" type="button" onClick="callpay()" >立即支付</button>

	</div>

</body>

</html>