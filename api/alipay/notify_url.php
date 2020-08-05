<?php

/* *

 * 功能：支付宝服务器异步通知页面

 * 版本：3.3

 * 日期：2012-07-23

 * 说明：

 * 以下代码只是为了方便商户测试而提供的样例代码，商户可以根据自己网站的需要，按照技术文档编写,并非一定要使用该代码。

 * 该代码仅供学习和研究支付宝接口使用，只是提供一个参考。





 *************************页面功能说明*************************

 * 创建该页面文件时，请留心该页面文件中无任何HTML代码及空格。

 * 该页面不能在本机电脑测试，请到服务器上做测试。请确保外部可以访问该页面。

 * 该页面调试工具请使用写文本函数logResult，该函数已被默认关闭，见alipay_notify_class.php中的函数verifyNotify

 * 如果没有收到该页面返回的 success 信息，支付宝会在24小时内按一定的时间策略重发通知

 */

define('BASEPATH',"/");

require_once("alipay.config.php");

require_once("lib/alipay_notify.class.php");



require_once '../application/config/database.php';



//计算得出通知验证结果

$alipayNotify = new AlipayNotify($alipay_config);

$verify_result = $alipayNotify->verifyNotify();



// $verify_result=true;//debug

// $_POST['trade_status']="TRADE_SUCCESS";//debug

// $_POST['out_trade_no']=5;//debug



if($verify_result) {//验证成功

	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

	//请在这里加上商户的业务逻辑程序代



	file_put_contents("gude001.txt", date("Y-m-d H:i:s",time()).json_encode($_POST)."\r\n",FILE_APPEND);

	//——请根据您的业务逻辑来编写程序（以下代码仅作参考）——

	

    //获取支付宝的通知返回参数，可参考技术文档中服务器异步通知参数列表

	

	//商户订单号



	$out_trade_no = $_POST['out_trade_no'];



	//支付宝交易号



	$trade_no = $_POST['trade_no'];



	//交易状态

	$trade_status = $_POST['trade_status'];





    if($_POST['trade_status'] == 'TRADE_FINISHED') {

		//判断该笔订单是否在商户网站中已经做过处理

			//如果没有做过处理，根据订单号（out_trade_no）在商户网站的订单系统中查到该笔订单的详细，并执行商户的业务程序

			//请务必判断请求时的total_fee、seller_id与通知时获取的total_fee、seller_id为一致的

			//如果有做过处理，不执行商户的业务程序

				

		//注意：

		//退款日期超过可退款期限后（如三个月可退款），支付宝系统发送该交易状态通知



        //调试用，写文本函数记录程序运行情况是否正常

        //logResult("这里写入想要调试的代码变量值，或其他运行的结果记录");

    }

    else if ($_POST['trade_status'] == 'TRADE_SUCCESS') {

		//判断该笔订单是否在商户网站中已经做过处理

			//如果没有做过处理，根据订单号（out_trade_no）在商户网站的订单系统中查到该笔订单的详细，并执行商户的业务程序

			//请务必判断请求时的total_fee、seller_id与通知时获取的total_fee、seller_id为一致的

			//如果有做过处理，不执行商户的业务程序

				

		//注意：

		//付款完成后，支付宝系统发送该交易状态通知



        //调试用，写文本函数记录程序运行情况是否正常

		//logResult("这里写入想要调试的代码变量值，或其他运行的结果记录");

		

		$con=mysqli_connect($db['default']['hostname'],$db['default']['username'],$db['default']['password'],$db['default']['database']);

            mysqli_query($con,"set names utf8");

            $sql="select * from tbl_pay_log where id={$out_trade_no}";

            

            $result = mysqli_query($con, $sql);

			$row = mysqli_fetch_array($result, MYSQLI_ASSOC);

			$type="支付宝";

			

			// var_dump($row);exit;

            

            if($row['status']==0){

                $time=time();

                $sql="update tbl_pay_log set status=1,paytype='{$type}',paytime={$time} where id={$out_trade_no}";

                mysqli_query($con,$sql);

                

                $sql="update tbl_user set groupid=1 where id={$row['user_id']}";

                mysqli_query($con, $sql);

               

                $sql="insert into tbl_acount_log (user_id,username,zhichu,addtime,leixing) values ({$row['user_id']},'{$row['username']}',{$row['money']},{$time},'升级VIP会员')";

                mysqli_query($con,$sql);

				

				$level4_user_id_arr=array();



                $sql="select * from tbl_user where id={$row['user_id']}";

                $result=mysqli_query($con,$sql);

				$row = mysqli_fetch_array($result, MYSQLI_ASSOC);

				// var_dump($row);exit;

                if(trim($row['shuyu'])){

                    $sql="select * from tbl_user where userid='{$row['shuyu']}'";

                    $result=mysqli_query($con,$sql);

                    $row = mysqli_fetch_array($result, MYSQLI_ASSOC);

                    if(!empty($row)){

						$level4_user_id_arr[]=$row['id'];



                        $yi=$row['userid'];

                        $sql="update tbl_user set money=money+8 where userid='{$yi}'";

                        mysqli_query($con,$sql);//直接会员加8

                        //写入交易日志

                        $sql="insert into tbl_acount_log (user_id,username,shouru,addtime,leixing) values ({$row['id']},'{$row['userid']}',8,{$time},'1级推荐VIP会员')";

                        mysqli_query($con,$sql);

                        

                        if(trim($row['shuyu'])){

                            

                            $sql="select * from tbl_user where userid='{$row['shuyu']}'";

                            $result=mysqli_query($con,$sql);

                            $row = mysqli_fetch_array($result, MYSQLI_ASSOC);

                            

                            if(!empty($row)){

								$level4_user_id_arr[]=$row['id'];



                                $er=$row['userid'];

                                $sql="update tbl_user set money=money+8 where userid='{$er}'";

                                mysqli_query($con,$sql);//次级关系会员加8

                                //写入交易日志

                                $sql="insert into tbl_acount_log (user_id,username,shouru,addtime,leixing) values ({$row['id']},'{$row['userid']}',8,{$time},'2级推荐VIP会员')";

								mysqli_query($con,$sql);

								

								if(trim($row['shuyu'])){

                

									$sql="select * from tbl_user where userid='{$row['shuyu']}'";

									$result=mysqli_query($con,$sql);

									$row = mysqli_fetch_array($result, MYSQLI_ASSOC);

									

									if(!empty($row)){

										$level4_user_id_arr[]=$row['id'];



										$er=$row['userid'];

										$sql="update tbl_user set money=money+2 where userid='{$er}'";

										mysqli_query($con,$sql);//次级关系会员加8

										//写入交易日志

										$sql="insert into tbl_acount_log (user_id,username,shouru,addtime,leixing) values ({$row['id']},'{$row['userid']}',2,{$time},'3级推荐VIP会员')";

										mysqli_query($con,$sql);

										$i=4;

										do{

											if(trim($row['shuyu'])){

							

												$sql="select * from tbl_user where userid='{$row['shuyu']}'";

												$result=mysqli_query($con,$sql);

												$row = mysqli_fetch_array($result, MYSQLI_ASSOC);

												

												if(!empty($row)){

													if($row['groupid']==2){

														$er=$row['userid'];

														$sql="update tbl_user set money=money+3 where userid='{$er}'";

														mysqli_query($con,$sql);//次级关系会员加8

														//写入交易日志

														$sql="insert into tbl_acount_log (user_id,username,shouru,addtime,leixing) values ({$row['id']},'{$row['userid']}',3,{$time},'{$i}级推荐VIP会员，营销经理')";

														mysqli_query($con,$sql);

													}

												}

												$i++;

											}else{

												break;

											}

										}while(true);

									}

									

								}

                            }

                            

                        }

                        

                    }

                    

				}

				

				foreach($level4_user_id_arr as $k=>$v){

					uplevel($v,$con);

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



    //调试用，写文本函数记录程序运行情况是否正常

    //logResult("这里写入想要调试的代码变量值，或其他运行的结果记录");

}



function uplevel($user_id,$con){

	$sql="select * from tbl_user where id='{$user_id}'";

	$result=mysqli_query($con,$sql);

	$row = mysqli_fetch_array($result, MYSQLI_ASSOC);

	// var_dump($row);

	// echo "<br>";

	if($row['groupid']!=2){

		$shuyu=$row['userid'];

		$sql="select * from tbl_user where shuyu='{$shuyu}'";

		// exit($sql);

		$result=mysqli_query($con,$sql);

		$list=array();

		// $shuyu=array();

		$i=0;

		while($row = mysqli_fetch_row($result)){

			// var_dump($row);echo '<Br>';//debug

			//$list[]=$row;

			$i++;

			if($i>=50){

				break;

			}

			$sql="select * from tbl_user where shuyu='{$row['userid']}'";

			$result2=mysqli_query($con,$sql);

			while($row2 = mysqli_fetch_row($result2)){

				// var_dump($row2);echo '<Br>';//debug

				$i++;

				if($i>=50){

					break;

				}

				$sql="select * from tbl_user where shuyu='{$row2['userid']}'";

				$result3=mysqli_query($con,$sql);

				while($row3 = mysqli_fetch_row($result3)){

					// var_dump($row3);echo '<Br>';//debug

					$i++;

					if($i>=50){

						break;

					}

				}

			}

		}

		// echo "$user_id:$i";//debug

		// echo "<Br>";//debug

		if($i>=50){

			$sql="update tbl_user set groupid=2 where id='{$user_id}'";

			$result=mysqli_query($con,$sql);

		}

	}

}

?>