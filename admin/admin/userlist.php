<?php
header('Content-Type:text/html; charset=utf-8');
define('IN_XD',true);
require('../include/common.inc.php');
define('SCRIPT','userlist');
require("check.php");
session_start();
function date_to_unixtime($date, $timezone = 'PRC') {
    $datetime= new DateTime($date, new DateTimeZone($timezone));
    return $datetime->format('U');
}
if($_GET["act"]=="del")
{
	 $sql="delete from tbl_user where id=".$_GET['id'];
	 mysql_query($sql);
	 mysql_close();
	 echo "<script type='text/javascript'>alert('成功删除!');location.href='userlist.php';</script>";
	 exit;
}
if($_GET["act"]=="repass")
{
	 $sql="update tbl_user set userpwd = 'e10adc3949ba59abbe56e057f20f883e' where id=".$_GET['id'];
	 mysql_query($sql);
	 mysql_close();
	 echo "<script type='text/javascript'>alert('密码重置成功!');location.href='userlist.php';</script>";
	 exit;
}
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>易推</title>
<style type="text/css">
.erweimadiag{position:absolute;height:auto;z-index:90001;padding:1px; display:none; width:235px; background-color:none;}
.erweimadiag img{ border-radius:5px;}
.erweimaclose{background:url(images/close1.png) no-repeat; width:38px; height:38px; display:inline-block; margin-bottom:-50px; cursor:pointer; margin-bottom:-38px; z-index:999; position:absolute;right:-18px; top:-18px;}
.overlay{background-color:#252525;position:absolute;z-index:90000;left:0;top:0;width:100%;height:100%;opacity:0.7;filter: alpha(opacity=70);-moz-opacity: 0.5; display:none;}
</style>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.js"></script>
<script language="javascript">
$(function(){	
	//导航切换
	$(".imglist li").click(function(){
		$(".imglist li.selected").removeClass("selected")
		$(this).addClass("selected");
	})	
})	
</script>
<script type="text/javascript">
$(document).ready(function(){
  $(".click").click(function(){
  $(".tip").fadeIn(200);
  });
  $(".tiptop a").click(function(){
  $(".tip").fadeOut(200);
});
  $(".sure").click(function(){
  $(".tip").fadeOut(100);
});
  $(".cancel").click(function(){
  $(".tip").fadeOut(100);
});
});
</script>
<script type="text/javascript">
$(function(){
	$(".erweima").click(function(){		
	$(".ewsrc").attr('src','http://<? echo $_SERVER['SERVER_NAME']; ?>/qr.php?url='+$(this).data("url")); 
	$(".overlay").css({display:"block",height:$(document).height()});
	$(".erweimadiag").css({
		left:($("body").width()-$(".erweimadiag").width())/2+"px",
		top:($(window).height()-$(".erweimadiag").height())/2+$(window).scrollTop()+"px",
		display:"block"
	});
	});
	$(".erweimaclose").click(function(){
	$(".overlay,.erweimadiag").css("display","none");
	return false;
	});
})
</script>
</head>
<body>
<div class="overlay"></div>
	<div class="erweimadiag">
		<a class="erweimaclose"></a> 
			<img class="ewsrc" src="" width="235" height="235" alt="" />
	</div>
	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="main.php">首页</a></li>
    <li><a href="#">用户列表</a></li>
    </ul>
    </div>
    <div class="rightinfo">
    <div class="tools">
    	<ul class="toolbar">
        <li class="click"><a href="useredit.php"><span><img src="images/t01.png" /></span>添加会员</a></li>
		<li style="float:right">
			<form name="searchsoft" method="post" action="?act=search">
			<strong>&nbsp;&nbsp;&nbsp;搜索关键字：</strong>
			<input name="title" type="text" id="title" size="20" maxlength="50" class="dfinput" style="width:200px;height:28px" placeholder="用户ID或姓名或QQ号"/>
			<input name="Query" type="submit" id="Query" value="查 询" class="scbtn" style="height:28px"> 
			<i>&nbsp;&nbsp;请输入关键字。如果为空，则查找所有信息</i>
			</form>
		</li>
        </ul>
    </div>
    <table class="imgtable">
    <thead>
    <tr>
    <th>会员登录ID</th>
    <th>[等级]会员账号</th>
    <!--
	<th>文章数量</th>
	<th>已发数量</th>
    -->
    <th>积分</th>
	<th>余额</th>
    <th>用户qq</th>
	<th>重置密码</th>
	<th>创建时间</th>
	<th>到期时间</th>
	<th>上级</th>
	<!--<th>端口</th>-->
	<th>备注2</th>
    <th>操作</th>
    </tr>
    </thead>
    <tbody>
    <?php
		if($_GET["act"]=="search" && $_POST['title']!='')
	{
		 $where .= " and (username like '%".$_POST['title']."%' or userid like '%".$_POST['title']."%'  or shuyu like '%".$_POST['title']."%' or qq like '%".$_POST['title']."%')";
	}
	$page_sql = "select * from tbl_user where 1=1 and shuyu='".$_SESSION['admin_user']."' $where";
		qy_page($page_sql,20);
	$sql = "select * from tbl_user where 1=1  and shuyu='".$_SESSION['admin_user']."' $where ORDER by id DESC LIMIT $_pagenum,$_pagesize";
	$_id ='id='.$_GET['id'].'&';

	$query=mysql_query($sql);
	while($row=mysql_fetch_array($query)){
		$sqlcc = "select count(*) as ccc from tbl_info where userid = '".$row['userid']."'";
		$querycc=mysql_query($sqlcc);
		$rowcc=mysql_fetch_array($querycc);
                
                $sqlgroup="select groupname from tbl_user_group where levelid={$row['groupid']}";
                $querygroup=mysql_query($sqlgroup);
                $rowgroup=mysql_fetch_array($querygroup);
	?>
    <tr height="35px">
		<td><?=$row['id']?></td>
                <td>[<?=$rowgroup['groupname']?>] <?=$row['userid']?></td>
		<!--<td><?=$row['anums']?></td>
		<td><?=$rowcc['ccc']?>&nbsp;<?php if($rowcc['ccc']>0){?><a href="artile.php?userid=<?=$row['userid']?>" class="tablelink">(查看文章)</a><?php } ?></td>
  -->
                <td><?=$row['jifen']?></td>
                <td><?=$row['money']?></td>
		<td><?=$row['qq']?></td>
	<td><a href="?act=repass&id=<?=$row['id']?>" alt="重置为默认密码123456" title="重置为默认密码123456">重置密码</a></td>
		<td><?=$row['ctime']?></td>
		<td>
<?php
 $time1=strtotime(date("Y-m-d H:i:s")); 
 $time2= date_to_unixtime($row['beizhu1']);
 echo "还有<font color=red>";
 echo ceil(($time2-$time1)/86400);
 echo "</font>天到期";
?>
</td>
			<td><?=$row['shuyu']?></td>
		<!--<td><?=$row['duankouyong']?>/<?=$row['duankouzong']?></td>-->
	<td><?=$row['beizhu2']?></td>
		<td><a href="useredit.php?id=<?=$row['id']?>" class="tablelink">编辑</a>     <a href="userlist.php?id=<?=$row['id']?>&act=del" onclick="if (confirm('确定要删除吗？')) return true; else return false;" class="tablelink"> 删除</a></td>
    </tr>
    <?php
	}
	?>    
    </tbody>
    </table>
    <div class="pagin">
    	<?=qy_paginga()?>
    </div>
</div>
<script type="text/javascript">
	$('.imgtable tbody tr:odd').addClass('odd');
</script>
</body>
</html>
