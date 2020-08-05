<?php
header('Content-Type:text/html; charset=utf-8');
define('IN_XD',true);
require("../include/common.inc.php");
require("check.php");
$shuyu =  $_SESSION['admin_user'];
	//读取代理开户数量
	$dailikaihushu=mysql_query("select * from tbl_admin where id = ".$_SESSION['adminid']);
	while($row1=mysql_fetch_array($dailikaihushu)){
		$row4=$row1;
		}
	$kaihushu=$row4["kehushu"];
	$anumslimit=$row4["anums"];
		//$kaihushu=2;
		//var_dump($anumslimit);
	//	die;
	//统计代理已经开出的数量
	$tongji = "select  COUNT(id) from tbl_user where shuyu = '".$shuyu."'";
	$tongjikehu=mysql_query($tongji);
	$row2=mysql_fetch_array($tongjikehu);
	//var_dump($row2[0]);
if($_GET['act']=='add'){
		if($row2[0]>=$kaihushu){
		echo "<script type='text/javascript'>alert('该用户你的开户数量已经用完，请联系上级');history.go(-1);</script>";
		exit;
	}
		if($_POST["anums"]>$anumslimit){
		echo "<script type='text/javascript'>alert('超出文章上限，请联系上级');history.go(-1);</script>";
		exit;
	}
	if($_POST["pwd"]){
		if($_POST["pwd"]==$_POST["repwd"]){
			$pwd = md5($_POST["pwd"]);
		}else{
			echo "<script type='text/javascript'>alert('两次密码不一致!');history.go(-1);</script>";
			exit;
		}
	}else{	
		$pwd = md5("123456");
	}
	$sqli = "select * from tbl_user where userid = '".$_POST["userid"]."'";
	$queryi=mysql_query($sqli);
	$rowi=mysql_fetch_array($queryi);
	if($rowi){
		echo "<script type='text/javascript'>alert('该用户ID已存在!');history.go(-1);</script>";
		exit;
	}
/*	$sql="INSERT INTO tbl_user " .
	"VALUES(
	0,
	'".$_POST["username"]."',
	'".$pwd."',
	'".$_POST["qq"]."',
	'".$_POST["anums"]."',
	'".date('Y-m-d H:i:s')."',
	'".$_POST["userid"]."',
	'".$_POST["beizhu1"]."',
	'".$_POST["beizhu2"]."'
	)";
	*/
		$sql="INSERT INTO tbl_user  (id,username,userpwd,qq,ctime,userid,beizhu1,beizhu2,shuyu,jifen,money,groupid,adnums)"."VALUES(
	0,
	'后台添加',
	'".$pwd."',
	'".$_POST["qq"]."',
	'".date('Y-m-d H:i:s')."',
	'".$_POST["userid"]."',
	'".$_POST["beizhu1"]."',
	'".$_POST["beizhu2"]."',
	'".$shuyu."',
	".$_POST["jifen"].",
	".$_POST["money"].",
        ".$_POST["groupid"].",
	'".$_POST["adnums"]."'
	)";
        //echo $sql;exit();
	mysql_query($sql);
	if(mysql_affected_rows() == 1){
		xd_close();
		echo "<script type='text/javascript'>alert('添加成功!');location.href='userlist.php';</script>";
		exit;
	}else{
		xd_close();
		qy_alert_back('信息添加失败!');
	}
}
if($_GET['act']=='edit'){
	if($_POST["pwd"]){
		if($_POST["pwd"]==$_POST["repwd"]){
			$pwdsql = "userpwd = '".md5($_POST["pwd"])."',";
		}else{
			echo "<script type='text/javascript'>alert('两次密码不一致!');history.go(-1);</script>";
			exit;
		}
	}
	$sql="UPDATE tbl_user SET 
	jifen=".$_POST["jifen"].",
	supervip=".$_POST["supervip"].",
	money=".$_POST["money"].",
        groupid=".$_POST["groupid"].",
	beizhu1='".$_POST["beizhu1"]."',
	beizhu2='".$_POST["beizhu2"]."',
	shuyu='".$_POST["shuyu"]."',
	adnums='".$_POST["adnums"]."',		
	$pwdsql
	qq='".$_POST["qq"]."'
	WHERE id=".$_POST["id"];
	// echo $sql;exit;
	mysql_query($sql);
	if(mysql_affected_rows() == 1){
		xd_close();
		echo "<script>alert('编辑成功！');window.location.href='userlist.php';</script>";
		exit;
	}else{
		xd_close();
		qy_alert_back('信息编辑失败或无修改动作!');
	}
}
$id=$_GET['id'];
$query=mysql_query("SELECT * FROM tbl_user WHERE id='$id'");
$row=mysql_fetch_array($query);
if($id){
	$action = "?id=$id&act=edit";
}else{
	$action = "?act=add";
}
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link href="css/select.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/select-ui.min.js"></script>
<script language="javascript" type="text/javascript" src="js/My97DatePicker/WdatePicker.js"></script>
 <link href="js/My97DatePicker/skin/WdatePicker.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
$(document).ready(function(e) {
    $(".select1").uedSelect({
		width : 345			  
	});
	$(".select2").uedSelect({
		width : 167  
	});
	$(".select3").uedSelect({
		width : 100
	});
});
</script>
</head>
<body>
	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="main.php">首页</a></li>
    <li><a href="#">用户管理</a></li>
    </ul>
    </div>
<?php
	if(empty($row['shuyu'])){
		$shuyu2 = $shuyu;
	}else {
		$shuyu2 = $row['shuyu'];
	}
?>
    <form action="<?=$action?>" method="post" name="newsform">
	<input name="id" value="<?=$id?>" type="hidden">
    <div class="formbody">
    <div class="formtitle"><span>基本信息</span></div>
    <ul class="forminfo">
    <li><label>用户账号</label><input name="userid" type="text" class="dfinput" value="<?=$row['userid']?>" <?php if ($id){echo 'disabled';}?>/><i>唯一，不能重复</i></li>
	<li><label>密码</label><input name="pwd" type="password" class="dfinput" value="" /><?php if (!$id){echo '<i>不填写密码为默认123456</i>';}?></li>
	<li><label>确认密码</label><input name="repwd" type="password" class="dfinput" value="" /></li>
        <li>
            <label>会员等级</label>
            <select class="dfinput" name="groupid" style="opacity:1;filter:alpha(opacity=1);">
                <?php
                $groupsql="select * from tbl_user_group order by id asc";
                $groupquery=mysql_query($groupsql);
                while($grouprow=mysql_fetch_array($groupquery)){
                ?>
                <option value="<?=$grouprow['levelid']?>" <?php if($row['groupid']==$grouprow['levelid']){echo "selected";}?>><?=$grouprow['groupname']?></option>
                <?php
                }
                ?>
            </select>
        </li>
        <li><label>超级vip</label>
<select class="dfinput" name="supervip" style="opacity:1;filter:alpha(opacity=1);">
                <option value="1" <?php if($row['supervip']==1){echo "selected";}?>>是</option>
                <option value="0" <?php if($row['supervip']==0){echo "selected";}?>>否</option>
            </select>

<i></i></li>
        <li><label>积分</label><input name="jifen" type="text" class="dfinput"  value="<?=$row['jifen']?$row['jifen']:0?>" /><i></i></li>
        <li><label>余额</label><input name="money" type="text" class="dfinput"  value="<?=$row['money']?$row['money']:0.00?>" /><i></i></li>
	<!--<li><label>用户姓名</label><input name="username" type="text" class="dfinput" value="<?=$row['username']?>"/><i></i></li>-->
	<li><label>用户QQ</label><input name="qq" type="text" class="dfinput"  value="<?=$row['qq']?>" /><i></i></li>
    <!--<li><label>文章数量</label><input name="anums" type="text" class="dfinput"  value="<?=$row['anums']?>" /><i>文章数量上线：<?=$anumslimit?></i></li>-->
	<li><label>到期时间</label><input name="beizhu1" type="text" class="dfinput"  value="<?=$row['beizhu1']?>" onfocus="WdatePicker({minDate:'%y-%M-{%d+1}',isShowClear:false,readOnly:true}) "/><i>时间格式：2016-02-17</i></li>
	<li><label>上级管理</label><input name="shuyu" type="text" class="dfinput" readonly  value="<?php echo $shuyu2; ?>" /></li>
    <!--<li><label>端口总数</label><input name="duankouzong" type="text" class="dfinput"  value="<?=$row['duankouzong']?>" /><i></i></li>
    <li><label>端口已用</label><input name="duankouyong" type="text" class="dfinput"  value="<?=$row['duankouyong']?>" /><i></i></li>	-->
    <!--<li><label>备注2</label><textarea name="beizhu2" style="width:345px;height:100px;border-top: solid 1px #a7b5bc;border-left: solid 1px #a7b5bc;border-right: solid 1px #ced9df;border-bottom: solid 1px #ced9df"><?=$row['beizhu2']?></textarea><i></i></li>-->
    <li><label>广告数</label><input name="adnums" type="text" class="dfinput"  value="<?=$row['adnums']?>" /><i></i></li>	<li><label>备注2</label><textarea name="beizhu2" style="width:345px;height:100px;border-top: solid 1px #a7b5bc;border-left: solid 1px #a7b5bc;border-right: solid 1px #ced9df;border-bottom: solid 1px #ced9df"><?=$row['beizhu2']?></textarea><i></i></li>
   <li><label>&nbsp;</label><input name="" type="submit" class="btn" value="确认保存"/></li>
    </ul>
    </div>
	</form>
</body>
</html>
