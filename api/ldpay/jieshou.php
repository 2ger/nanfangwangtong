<?php
define('BASEPATH',"/");
file_put_contents("gude001.txt", date("Y-m-d H:i:s",time()).json_encode($_REQUEST)."\r\n",FILE_APPEND);
//以下代码请不要修改=======================================================================================================================================
//下面是接收软件返回的信息，然后通过这些信息在对网站的订单等进行处理
$key="77052307";	//改成你的秘钥（登陆网站在会员中心的用户信息页面里）
$pay       =   trim(htmlspecialchars($_REQUEST['pay'])); //接收支付方式参数 1 代表支付宝 2 代表QQ钱包 3 代表微信  基本用不到
$ddh	    =	isset($_REQUEST["ddh"])?$_REQUEST["ddh"]:"";  //接收交易号这个是支付宝财付通微信的 官方流水账号   能用到
$Money2		=	isset($_REQUEST["PayJe"])?$_REQUEST["PayJe"]:0;
$money     =   floatval($Money2);//订单金额  能用到
$dingdan		=	isset($_REQUEST["PayMore"])?$_REQUEST["PayMore"]:""; //自己网站上订单的订单号  能用到
$key2		=	isset($_REQUEST["key"])?$_REQUEST["key"]:"";//密钥8位  必须使用
$appid    =    trim(htmlspecialchars($_REQUEST['appid'])); //对应网址的APPID（登陆网站在会员中心的域名列表里查看对应该网站的APPID） 基本用不到
$money3=isset($_REQUEST["moneyactual"])?$_REQUEST["moneyactual"]:0;
$money3     =   floatval($money3);//订单金额  能用到

$bjsnk = strcmp($key2,$key);
//-----------------------------------------------------------------
if ($bjsnk===0)
{
//以上代码请不要修改===========================================================================================================================================

	//返回信息开始-----------------------------------------------------------------------------------------------------------------------------------------------------------
	//$money; //订单金额
	//$dingdan; //提取的订单号
	//$ddh;//支付宝或财付通或微信的官方订单号
	//$pay;//支付方式
	//此处填写对应你网站的处理代码，利用上面获取到的金额 订单号等信息。
	
	//处理成功====如果不会做接口或接入可以联系客服处理，凡是购买开通软件的客户享受免费制作接口及接入一次。
	
	$out_trade_no=$dingdan;
	if($pay==1){
		$type="支付宝";
	}
	if($pay==2){
		$type="QQ钱包";
	}
	if($pay==3){
		$type="微信";
	}
	
	require_once '../application/config/database.php';
	
	
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
				
				
				if($money3>$money){
						$temp=$money3-$money;
						$sql="update tbl_user set money=money+{$temp} where id='{$row['user_id']}'";
//echo $sql;
                        mysqli_query($con,$sql);//直接会员加8

                        //写入交易日志

                        $sql="insert into tbl_acount_log (user_id,username,shouru,addtime,leixing) values ({$row['user_id']},'{$row['username']}',{$temp},{$time},'会员金额多余补贴')";

                        mysqli_query($con,$sql);
				}
				

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

                        $sql="update tbl_user set money=money+20 where userid='{$yi}'";

                        mysqli_query($con,$sql);//直接会员加8

                        //写入交易日志

                        $sql="insert into tbl_acount_log (user_id,username,shouru,addtime,leixing) values ({$row['id']},'{$row['userid']}',20,{$time},'1级推荐VIP会员')";

                        mysqli_query($con,$sql);

                        

                        if(trim($row['shuyu'])){

                            

                            $sql="select * from tbl_user where userid='{$row['shuyu']}'";

                            $result=mysqli_query($con,$sql);

                            $row = mysqli_fetch_array($result, MYSQLI_ASSOC);

                            

                            if(!empty($row)){

								$level4_user_id_arr[]=$row['id'];



                                $er=$row['userid'];

                                $sql="update tbl_user set money=money+20 where userid='{$er}'";

                                mysqli_query($con,$sql);//次级关系会员加8

                                //写入交易日志

                                $sql="insert into tbl_acount_log (user_id,username,shouru,addtime,leixing) values ({$row['id']},'{$row['userid']}',20,{$time},'2级推荐VIP会员')";

								mysqli_query($con,$sql);

								

								if(trim($row['shuyu'])){

                

									$sql="select * from tbl_user where userid='{$row['shuyu']}'";

									$result=mysqli_query($con,$sql);

									$row = mysqli_fetch_array($result, MYSQLI_ASSOC);

									

									if(!empty($row)){

										$level4_user_id_arr[]=$row['id'];



										$er=$row['userid'];

										$sql="update tbl_user set money=money+5 where userid='{$er}'";

										mysqli_query($con,$sql);//次级关系会员加8

										//写入交易日志

										$sql="insert into tbl_acount_log (user_id,username,shouru,addtime,leixing) values ({$row['id']},'{$row['userid']}',5,{$time},'3级推荐VIP会员')";

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

														$sql="update tbl_user set money=money+6 where userid='{$er}'";

														mysqli_query($con,$sql);//次级关系会员加8

														//写入交易日志

														$sql="insert into tbl_acount_log (user_id,username,shouru,addtime,leixing) values ({$row['id']},'{$row['userid']}',6,{$time},'{$i}级推荐VIP会员，营销经理')";

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
	
	echo "Success";//返回成功

}else{
echo 'Key';//返回Key秘钥错误
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

		while($row = mysqli_fetch_array($result, MYSQLI_ASSOC)){

			// var_dump($row);echo '<Br>';//debug

			//$list[]=$row;

			$i++;

			if($i>=50){

				break;

			}

			$sql="select * from tbl_user where shuyu='{$row['userid']}'";

			$result2=mysqli_query($con,$sql);

			while($row2 = mysqli_fetch_array($result2, MYSQLI_ASSOC)){

				// var_dump($row2);echo '<Br>';//debug

				$i++;

				if($i>=50){

					break;

				}

				$sql="select * from tbl_user where shuyu='{$row2['userid']}'";

				$result3=mysqli_query($con,$sql);

				while($row3 = mysqli_fetch_array($result3, MYSQLI_ASSOC)){

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
			file_put_contents("gude001.txt", date("Y-m-d H:i:s",time()).$sql."\r\n",FILE_APPEND);
		}

	}

}

?>
