<?php

ini_set('date.timezone','Asia/Shanghai');

error_reporting(E_ERROR);

require_once "../lib/WxPay.Api.php";

require_once '../lib/WxPay.Notify.php';

require_once 'log.php';

include("../../include/website.inc.php");

//初始化日志

$logHandler= new CLogFileHandler("../logs/".date('Y-m-d').'.log');

$log = Log::Init($logHandler, 15);

class PayNotifyCallBack extends WxPayNotify

{

	//查询订单

	public function Queryorder($transaction_id)

	{

		$input = new WxPayOrderQuery();

		$input->SetTransaction_id($transaction_id);

		$result = WxPayApi::orderQuery($input);

		Log::DEBUG("query:" . json_encode($result));

		if(array_key_exists("return_code", $result)

			&& array_key_exists("result_code", $result)

			&& $result["return_code"] == "SUCCESS"

			&& $result["result_code"] == "SUCCESS")

		{

			return true;

		}

		return false;

	}

	//重写回调处理函数

	public function NotifyProcess($data, &$msg)

	{

		Log::DEBUG("call back:" . json_encode($data));

		$notfiyOutput = array();

		if(!array_key_exists("transaction_id", $data)){

			$msg = "输入参数不正确";

			return false;

		}

		//查询订单，判断订单真实性

		if(!$this->Queryorder($data["transaction_id"])){

			$msg = "订单查询失败";

			return false;

		}

		//处理业务

		$myconn=mysql_connect("localhost","ytieodemcom","comieodemyt");

		mysql_query("set names 'utf-8'"); // //这就是指定数据库字符集，一般放在连接数据库后面就系了

		mysql_select_db("ytieodemcom",$myconn);

		$a = explode("-",$data['attach']); 

		$strSql="INSERT INTO `tbl_cz_log` (`id`, `qudao`, `wnum`, `tnum`, `jiage`, `dingdan`, `userid`,`shijian`) VALUES (NULL, '微信在线支付', ".$a[0].", ".$a[1].", ".$a[2].", '".$data['out_trade_no']."', '".$a[3]."',".$data['time_end'].")";

		//用mysql_query函数从user表里读取数据

		mysql_query($strSql,$myconn);//添加订单信息

		$sql = "select * from tbl_user where id = '".$a[3]."'";

		$query=mysql_query($sql);

		$tbl_user=mysql_fetch_array($query);

		$beizhu1=strtotime($tbl_user['beizhu1']);

		if($beizhu1<time()){

			$beizhu1=time();

		}

		$beizhu1=date('Y-m-d H:i:s',$beizhu1+ $a[1]*86400);

		$anums=$tbl_user['anums']+$a[0];

		$sql="update tbl_user set anums=".$anums.",beizhu1='".$beizhu1."' where id=".$a[3];

		mysql_query($sql);

		mysql_close($myconn);

		//业务处理结束

		return true;

	}

}

Log::DEBUG("begin notify");

$notify = new PayNotifyCallBack();

$notify->Handle(false);

