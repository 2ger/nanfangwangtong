<?php
header('Content-Type:text/html; charset=utf-8');
define('IN_XD',true);
require("../include/common.inc.php");
require("check.php");
$shuyu =  $_SESSION['admin_user'];
	
if($_GET['act']=='add'){
    $images_arr=array();
    foreach($_POST['tu'] as $k=>$v){
        if($v){
            $images_arr[]=$v;
        }
    }
    
    $images= json_encode($images_arr);
    $addtime=strtotime($_POST['addtime']);
    $updatetime=time();
		$sql="INSERT INTO tbl_ads (title,content,images,supervip,addtime,ischeck,isshow,user_id,username,issys,updatetime,ip,port)"."VALUES('{$_POST['title']}','{$_POST['content']}','{$images}',{$_POST['supervip']},{$addtime},{$_POST['ischeck']},{$_POST['isshow']},0,'{$shuyu}',1,{$updatetime},'{$_SERVER['REMOTE_ADDR']}',{$_SERVER['REMOTE_PORT']})";
                //echo $sql;exit();
	mysql_query($sql);
	if(mysql_affected_rows() == 1){
		xd_close();
		echo "<script type='text/javascript'>alert('添加成功!');location.href='adlist.php';</script>";
		exit;
	}else{
		xd_close();
		qy_alert_back('添加失败!');
	}
}
if($_GET['act']=='edit'){
	$images_arr=array();
    foreach($_POST['tu'] as $k=>$v){
        if($v){
            $images_arr[]=$v;
        }
    }
    
    $images= json_encode($images_arr);
    $addtime=strtotime($_POST['addtime']);
    $updatetime=time();
	$sql="UPDATE tbl_ads SET title='{$_POST['title']}',content='{$_POST['content']}',images='{$images}',addtime={$addtime},ischeck={$_POST['ischeck']},isshow={$_POST['isshow']},supervip={$_POST['supervip']},updatetime={$updatetime} WHERE id=".$_POST["id"];
	//echo $sql;exit;
	mysql_query($sql);
	if(mysql_affected_rows() == 1){
		xd_close();
		echo "<script>alert('编辑成功！');window.location.href='adlist.php';</script>";
		exit;
	}else{
		xd_close();
		qy_alert_back('编辑失败或无修改动作!');
	}
}
$id=$_GET['id'];
$query=mysql_query("SELECT * FROM tbl_ads WHERE id='$id'");
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
    <li><a href="#">广告管理</a></li>
    </ul>
    </div>

    <form action="<?=$action?>" method="post" name="newsform">
	<input name="id" value="<?=$id?>" type="hidden">
    <div class="formbody">
    <div class="formtitle"><span>广告信息</span></div>
    <ul class="forminfo">
    <li><label>标题</label><input name="title" type="text" class="dfinput" value="<?=$row['title']?>" /><i></i></li>
	
	<li><label>文案</label>
            <textarea name="content" class="dfinput" style="width:500px; height:200px;"><?=$row['content']?></textarea>
            <i></i></li>
        <?php
        $images=array();
        if($id){
            $images= json_decode($row['images'],TRUE);
        }
        ?>
        <li><label>图片1</label><input name="tu[]" type="text" class="dfinput" value="<?=$images[0]?>"/><i></i></li>
        <li><label>图片2</label><input name="tu[]" type="text" class="dfinput" value="<?=$images[1]?>"/><i></i></li>
        <li><label>图片3</label><input name="tu[]" type="text" class="dfinput" value="<?=$images[2]?>"/><i></i></li>
        <li><label>图片4</label><input name="tu[]" type="text" class="dfinput" value="<?=$images[3]?>"/><i></i></li>
        <li><label>图片5</label><input name="tu[]" type="text" class="dfinput" value="<?=$images[4]?>"/><i></i></li>
        <li><label>图片6</label><input name="tu[]" type="text" class="dfinput" value="<?=$images[5]?>"/><i></i></li>
        <li><label>图片7</label><input name="tu[]" type="text" class="dfinput" value="<?=$images[6]?>"/><i></i></li>
        <li><label>图片8</label><input name="tu[]" type="text" class="dfinput" value="<?=$images[7]?>"/><i></i></li>
        
        <li><label>发布时间</label><input name="addtime" type="text" class="dfinput" value="<?=$row['addtime']?date('Y-m-d H:i:s',$row['addtime']):date('Y-m-d H:i:s',time())?>" onfocus="WdatePicker({dateFmt:'yyyy-M-d H:mm:ss',isShowClear:false,readOnly:true}) "/><i></i></li>
        
        <li><label>是否超级任务</label>
            <input type="radio" name="supervip" value="0" <?php if($row['supervip']==0){echo "checked";}?>/>否
            <input type="radio" name="supervip" value="1" <?php if($row['supervip']==1){echo "checked";}?>/>是
            <i></i></li>

        <li><label>是否审核</label>
            <input type="radio" name="ischeck" value="0" <?php if($row['ischeck']==0){echo "checked";}?>/>未审核
            <input type="radio" name="ischeck" value="1" <?php if($row['ischeck']==1){echo "checked";}?>/>已审核
            <i></i></li>
        <li><label>是否显示</label>
            <input type="radio" name="isshow" value="0" <?php if($row['isshow']==0){echo "checked";}?>/>隐藏
            <input type="radio" name="isshow" value="1" <?php if($row['isshow']==1){echo "checked";}?>/>显示
            <i></i></li>
	
   <li><label>&nbsp;</label><input name="" type="submit" class="btn" value="确认保存"/></li>
    </ul>
    </div>
	</form>
</body>
</html>
