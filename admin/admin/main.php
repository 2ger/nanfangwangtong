<?php
session_start();
require("check.php");
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.js"></script>
</head>
<body>
	<div class="place">
		<span>位置：</span>
		<ul class="placeul">
		<li><a href="main.php">首页</a></li>
		</ul>
	</div>
	<div class="mainindex">
		<div class="welinfo">
		<span><img src="images/sun.png" alt="天气" /></span>
		<b>早上好，欢迎使用本系统</b>
		</div>
		<div class="welinfo">
			<span><img src="images/time.png" alt="时间" /></span>
			<i>您上次登录的时间：<?=$_SESSION['lasttime']?></i>
		</div>
    </div>
</body>
</html>
