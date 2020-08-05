<?php
header('Content-Type:text/html; charset=utf-8');
define('IN_XD',true);
require("../include/common.inc.php");
require("check.php");
session_start();
$shuyu =  $_SESSION['admin_user'];

if($_GET['act']=='add'){
    
    $addtime=time();
    $sql="select * from tbl_user where userid='{$_POST['username']}'";
    $query=mysql_query($sql);
    $r=mysql_fetch_array($query);
    $user_id=$r['id'];
    
    
    
    $sql="insert into tbl_tixian(user_id,username,money,addtime,ischeck,bankid,opuser,opremark) values ({$user_id},'{$_POST['username']}',{$_POST['money']},{$addtime},{$_POST['ischeck']},'{$_POST['bankid']}','{$shuyu}','{$_POST['opremark']}')";
    //echo $sql;    exit();
    mysql_query($sql);
    if($_POST['ischeck']==1){
        $sql="update tbl_user set money=money-{$_POST['money']} where id={$user_id}";
        mysql_query($sql);
        $sql="insert into tbl_acount_log (user_id,username,shouru,zhichu,remark,addtime,leixing) values ({$user_id},'{$_POST['username']}',0,{$_POST['money']},'',{$addtime},'{$_POST['opremark']}')";
        //echo $sql;    exit();
        mysql_query($sql);
    }
    xd_close();
    echo "<script>alert('提现成功！');window.location.href='tixian.php';</script>";
    exit;
}

if($_GET['act']=='edit'){
	
}

if($_GET['act']=='banklist'){
    $sql="select * from tbl_bank where username='{$_GET['username']}'";
    $query=mysql_query($sql);
    $html="";
    while($row=mysql_fetch_array($query)){
        $html.="<option value='{$row['id']}'>{$row['bankcard']}/{$row['bank_username']}</option>";
    }
    
    echo $html;
    exit();
    
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
    <li><a href="#">提现</a></li>
    </ul>
    </div>

    <form action="<?=$action?>" method="post" name="newsform">
	<input name="id" value="<?=$id?>" type="hidden">
    <div class="formbody">
    <div class="formtitle"><span>提现信息</span></div>
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
    <li><label>用户名</label><input type="text" name="username" id="username" class="dfinput"/></li>
    <li><label>金额</label><input type="text" name="money" value="0" class="dfinput"/></li>
    <li><label>类型</label>
        <input type="radio" name="opremark" value="提现" />用户提现 
        <input type="radio" name="opremark" value="扣款" /> 后台扣款
        <i></i></li>
    <li id="bank">
        <label>银行卡信息</label>
        <select name="paytype" class="dfinput" id="bankid" style="opacity:1;filter:alpha(opacity=1);">
            <option value="0">请选择</option>
            
        </select>
        <i></i>
    </li>
    
    <script>
    $(document).ready(function(){
        $("input[type='radio'][name='opremark']").click(function(){
            //alert($(this).val());
            if($(this).val()=='提现'){
                $("#bank").show();
                var username=$("#username").val();
                $.get('?act=banklist&username='+username,{},function(data){
                    $("#bankid").append(data);
                });
            }else{
                $("#bankid>option").remove();
                $("#bankid").append("<option value='0'>请选择</option>");
                $("#bank").hide();
            }
        });
    });
    </script>
    
    <?php
    }
    ?>
    <li><label>是否审核</label>
        <input type="radio" name="ischeck" value="0" <?php if($row['ischeck']==0){echo "checked";}?>/>未审核 
        <input type="radio" name="ischeck" value="1" <?php if($row['ischeck']==1){echo "checked";}?>/>已审核 
        <input type="radio" name="ischeck" value="2" <?php if($row['ischeck']==2){echo "checked";}?>/>拒绝
        <i></i></li>
    
        
	
   <li><label>&nbsp;</label><input name="" type="submit" class="btn" value="确认保存"/></li>
    </ul>
    </div>
	</form>
</body>
</html>
