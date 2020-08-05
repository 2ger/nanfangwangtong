<?php
header('Content-Type:text/html; charset=utf-8');
define('IN_XD',true);
require("../include/common.inc.php");
require("check.php");
$shuyu =  $_SESSION['admin_user'];

if($_GET['act']=='add'){
    
    $addtime=time();
    $sql="select * from tbl_user where userid='{$_POST['username']}'";
    $query=mysql_query($sql);
    $r=mysql_fetch_array($query);
    $user_id=$r['id'];
    
    $paytime= $_POST['paytime']?strtotime($_POST['paytime']):0;
    
    $sql="insert into tbl_chongzhi(user_id,username,money,addtime,ischeck,paytype,paytime,remark,opuser,opremark) values ({$user_id},'{$_POST['username']}',{$_POST['money']},{$addtime},{$_POST['ischeck']},'{$_POST['paytype']}',{$paytime},'{$_POST['remark']}','{$shuyu}','{$_POST['opremark']}')";
    //echo $sql;    exit();
    mysql_query($sql);
    if($_POST['ischeck']==1){
        $sql="update tbl_user set money=money+{$_POST['money']} where id={$user_id}";
        mysql_query($sql);
        $sql="insert into tbl_acount_log (user_id,username,shouru,zhichu,remark,addtime,leixing) values ({$user_id},'{$_POST['username']}',{$_POST['money']},0,'',{$addtime},'{$_POST['opremark']}')";
        //echo $sql;    exit();
        mysql_query($sql);
    }
    xd_close();
    echo "<script>alert('充值成功！');window.location.href='chongzhi.php';</script>";
    exit;
}

if($_GET['act']=='edit'){
	$time=time();
	$sql="UPDATE tbl_chongzhi SET 
	paytype='".$_POST["paytype"]."',
        paytime='".strtotime($_POST["paytime"])."',
        opuser='".$shuyu."',
        ischeck={$_POST['ischeck']},
        updatetime={$time}
	WHERE id=".$_POST["id"];
	//echo $sql;exit;
	mysql_query($sql);
	if(mysql_affected_rows() == 1){
            
            if($_POST['ischeck']==1){//充值添加记录并用户金额增加
                $sql="select * from tbl_chongzhi where id={$_POST["id"]}";
                $query=mysql_query($sql);
                $r=mysql_fetch_array($query);
                
                $leixing=$r['remark']?$r['remark']:"充值";
                
             $sql="insert into tbl_acount_log (user_id,username,shouru,zhichu,remark,addtime,leixing) values ({$r['user_id']},'{$r['username']}',{$r['money']},0,'',{$time},'{$leixing}')";
                mysql_query($sql);
                $sql="update tbl_user SET money=money+{$r['money']} where id={$r['user_id']}";
                mysql_query($sql);
            }
            
		xd_close();
		echo "<script>alert('更新成功！');window.location.href='chongzhi.php';</script>";
		exit;
	}else{
		xd_close();
		qy_alert_back('更新失败或无修改动作!');
	}
}
$id=$_GET['id'];
$query=mysql_query("SELECT * FROM tbl_chongzhi WHERE id='$id'");
$row=mysql_fetch_array($query);
if($id){
	$action = "?id=$id&act=edit";
}else{
    $action="?act=add";
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
    <li><a href="#">充值</a></li>
    </ul>
    </div>

    <form action="<?=$action?>" method="post" name="newsform">
	<input name="id" value="<?=$id?>" type="hidden">
    <div class="formbody">
    <div class="formtitle"><span>充值信息</span></div>
    <ul class="forminfo">
    <?php
    if($id){
    ?>
    <li><label>用户</label><?=$row['username']?><i></i></li>
    <li><label>金额</label><?=$row['money']?><i></i></li>
    <li><label>创建时间</label><?=date('Y-m-d H:i:s',$row['addtime'])?><i></i></li>
    <?php
    }else{
        ?>
    <li><label>用户名</label><input type="text" name="username" class="dfinput"/></li>
    <li><label>金额</label><input type="text" name="money" class="dfinput"/></li>
    <li><label>类型</label>
        <input type="radio" name="opremark" value="充值"/>充值 
        <input type="radio" name="opremark" value="加款" checked/>后台加款 
        <input type="radio" name="opremark" value="广告收益"/>广告收益
    </li>
    <?php
    }
    ?>
    <li><label>是否审核</label>
        <input type="radio" name="ischeck" value="0" <?php if($row['ischeck']==0){echo "checked";}?>/>未审核 
        <input type="radio" name="ischeck" value="1" <?php if($row['ischeck']==1){echo "checked";}?>/>已审核 
        <input type="radio" name="ischeck" value="2" <?php if($row['ischeck']==2){echo "checked";}?>/>无效
        <i></i></li>
    <li><label>支付方式</label>
        <select name="paytype" class="dfinput"  style="opacity:1;filter:alpha(opacity=1);">
            <option value="微信支付">微信支付</option>
            <option value="支付宝">支付宝</option>
            <option value="银行转账">银行转账</option>
            <option value="其他方式">其他方式</option>
        </select>
        <i></i></li>
	
	<li><label>支付时间</label><input name="paytime" type="text" class="dfinput" value="<?=$row['paytime']>0?date('Y-m-d H:i:s',$row['paytime']):date('Y-m-d H:i:s',time())?>" onfocus="WdatePicker({dateFmt:'yyyy-M-d H:mm:ss',isShowClear:false,readOnly:true}) "/><i></i></li>
        
	
   <li><label>&nbsp;</label><input name="" type="submit" class="btn" value="确认保存"/></li>
    </ul>
    </div>
	</form>
</body>
</html>
