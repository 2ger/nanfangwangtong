<?php
header('Content-Type:text/html; charset=utf-8');
define('IN_XD',true);
require("../include/common.inc.php");
require("check.php");
$shuyu =  $_SESSION['admin_user'];
	
if($_GET['act']=='add'){
	
    $sql="select * from tbl_user where userid='{$_POST['username']}'";
    $query=mysql_query($sql);
    $r=mysql_fetch_array($query);
	
		$sql="INSERT INTO tbl_bank (user_id,username,bankcard,bankname,bank_username,zhihang)"."VALUES(
	
	".$r["id"].",
	'".$_POST["username"]."',
        '".$_POST["bankcard"]."',
        '".$_POST["bankname"]."',
        '".$_POST["bank_username"]."',
        '".$_POST["zhihang"]."'
	)";
                //echo $sql;exit();
	mysql_query($sql);
	if(mysql_affected_rows() == 1){
		xd_close();
		echo "<script type='text/javascript'>alert('添加成功!');location.href='bank.php';</script>";
		exit;
	}else{
		xd_close();
		qy_alert_back('添加失败!');
	}
}
if($_GET['act']=='edit'){
	
	$sql="UPDATE tbl_bank SET 
	username='".$_POST["username"]."',
        bankcard='".$_POST["bankcard"]."',
        bankname='".$_POST["bankname"]."',
        bank_username='".$_POST["bank_username"]."',
        zhihang='".$_POST["zhihang"]."'
	WHERE id=".$_POST["id"];
	//echo $sql;exit;
	mysql_query($sql);
	if(mysql_affected_rows() == 1){
		xd_close();
		echo "<script>alert('编辑成功！');window.location.href='bank.php';</script>";
		exit;
	}else{
		xd_close();
		qy_alert_back('编辑失败或无修改动作!');
	}
}
$id=$_GET['id'];
$query=mysql_query("SELECT * FROM tbl_bank WHERE id='$id'");
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
    <li><a href="#">银行卡管理</a></li>
    </ul>
    </div>

    <form action="<?=$action?>" method="post" name="newsform">
	<input name="id" value="<?=$id?>" type="hidden">
    <div class="formbody">
    <div class="formtitle"><span>银行卡信息</span></div>
    <ul class="forminfo">
    <li><label>绑定会员账号</label><input name="username" type="text" class="dfinput" value="<?=$row['username']?>" /><i></i></li>
	
	<li><label>开户人姓名</label><input name="bank_username" type="text" class="dfinput" value="<?=$row['bank_username']?>"/><i></i></li>
        
        <li><label>卡号</label><input name="bankcard" type="text" class="dfinput" value="<?=$row['bankcard']?>"/><i></i></li>
        
        <li><label>开户银行</label><input name="bankname" type="text" class="dfinput" value="<?=$row['bankname']?>"/><i></i></li>
        
        <li><label>开户支行</label><input name="zhihang" type="text" class="dfinput" value="<?=$row['zhihang']?>"/><i></i></li>
	
   <li><label>&nbsp;</label><input name="" type="submit" class="btn" value="确认保存"/></li>
    </ul>
    </div>
	</form>
</body>
</html>
