<?php
header('Content-Type:text/html; charset=utf-8');
define('IN_XD',true);
require("../include/common.inc.php");
require("check.php");
$shuyu =  $_SESSION['admin_user'];
	
if($_GET['act']=='add'){
	
	$sqli = "select * from tbl_user where levelid = '".$_POST["levelid"]."'";
	$queryi=mysql_query($sqli);
	$rowi=mysql_fetch_array($queryi);
	if($rowi){
		echo "<script type='text/javascript'>alert('该等级已存在!');history.go(-1);</script>";
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
		$sql="INSERT INTO tbl_user_group  (levelid,groupname)"."VALUES(
	
	'".$_POST["levelid"]."',
	'".$_POST["groupname"]."'
	)";
	mysql_query($sql);
	if(mysql_affected_rows() == 1){
		xd_close();
		echo "<script type='text/javascript'>alert('添加成功!');location.href='group.php';</script>";
		exit;
	}else{
		xd_close();
		qy_alert_back('添加失败!');
	}
}
if($_GET['act']=='edit'){
	
	$sql="UPDATE tbl_user_group SET 
	levelid='".$_POST["levelid"]."',
	groupname='".$_POST["groupname"]."'
	WHERE id=".$_POST["id"];
	//echo $sql;exit;
	mysql_query($sql);
	if(mysql_affected_rows() == 1){
		xd_close();
		echo "<script>alert('编辑成功！');window.location.href='group.php';</script>";
		exit;
	}else{
		xd_close();
		qy_alert_back('编辑失败或无修改动作!');
	}
}
$id=$_GET['id'];
$query=mysql_query("SELECT * FROM tbl_user_group WHERE id='$id'");
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
    <li><a href="#">会员组管理</a></li>
    </ul>
    </div>

    <form action="<?=$action?>" method="post" name="newsform">
	<input name="id" value="<?=$id?>" type="hidden">
    <div class="formbody">
    <div class="formtitle"><span>会员组信息</span></div>
    <ul class="forminfo">
    <li><label>等级</label><input name="levelid" type="text" class="dfinput" value="<?=$row['levelid']?>" /><i>唯一，不能重复，填写数值</i></li>
	
	<li><label>会员组名称</label><input name="groupname" type="text" class="dfinput" value="<?=$row['groupname']?>"/><i></i></li>
	
   <li><label>&nbsp;</label><input name="" type="submit" class="btn" value="确认保存"/></li>
    </ul>
    </div>
	</form>
</body>
</html>
