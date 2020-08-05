<?php
header('Content-Type:text/html; charset=utf-8');
define('IN_XD',true);
require('../include/common.inc.php');
define('SCRIPT','account_log');
require("check.php");
session_start();
function date_to_unixtime($date, $timezone = 'PRC') {
    $datetime= new DateTime($date, new DateTimeZone($timezone));
    return $datetime->format('U');
}
if($_GET["act"]=="del")
{
	 
}

?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
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
    <li><a href="#">交易记录</a></li>
    </ul>
    </div>
    <div class="rightinfo">
    <div class="tools">
    	<ul class="toolbar">
           <li style="float:right">
                <form name="searchsoft" method="get" action="">
                    <strong>&nbsp;&nbsp;&nbsp;搜索手机号：</strong>
                    <input name="act" type="hidden" value="search">

                    <input name="title" type="text" id="title" size="20" maxlength="50" class="dfinput" style="width:200px;height:28px" placeholder="标题或内容"/>
                    <input name="Query" type="submit" id="Query" value="查 询" class="scbtn" style="height:28px">
                   <!--   <i>&nbsp;&nbsp;请输入关键字。如果为空，则查找所有信息</i>-->
                </form>
            </li>
		
        </ul>
    </div>
    <table class="imgtable">
    <thead>
    <tr>
    <th>ID编号</th>
	<th>用户名</th>
        <th>交易类型</th>
	<th>收入金额</th>
        
         <th>支出金额</th>
	
	<th>时间</th>
    <th>备注</th>
    <th>操作</th>
    </tr>
    </thead>
    <tbody>
    <?php
		
$where = '1';	
if($_GET['title']){
    $where .= ' and username = "'.$_GET['title'].'" ';
}
	$page_sql = "select * from tbl_acount_log where {$where}";
	qy_page($page_sql,20);
	$sql = "select * from tbl_acount_log where {$where} ORDER by id DESC LIMIT $_pagenum,$_pagesize";

	$query=mysql_query($sql);
	while($row=mysql_fetch_array($query)){
		
	?>
    <tr height="35px">
		<td><?=$row['id']?></td>
		<td><?=$row['username']?></td>
		<td><?=$row['leixing'] ?></td>
                <td><?=$row['shouru']?></td>
		<td><?=$row['zhichu']?></td>
                <td><?=date('Y-m-d H:i:s',$row['addtime']) ?></td>
		<td><?=$row['remark'] ?></td>
		
		<td>--</td>
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
