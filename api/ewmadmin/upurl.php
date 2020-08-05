<?php
session_start();
include_once 'inc/conn.php';
if ($_SESSION['ldewm2017_username'] == "" or $_SESSION['ldewm2017_token'] == "") {
header("location:login.php");
mysql_close();
}
$urls=trim(htmlspecialchars(addslashes($_REQUEST['urls'])));
$appid=trim(htmlspecialchars(addslashes($_REQUEST['appid'])));
$userkey=trim(htmlspecialchars(addslashes($_REQUEST['userkey'])));
$jiekou=trim(htmlspecialchars(addslashes($_REQUEST['jiekou'])));
$fanhui=trim(htmlspecialchars(addslashes($_REQUEST['fanhui'])));

if ($urls=="" or $appid=="" or $userkey=="" or $jiekou=="" or $fanhui==""){
exit("&#21442;&#25968;&#22635;&#20889;&#19981;&#27491;&#30830;&#35831;&#37325;&#26032;&#22635;&#20889;");
}else{
    $exec = "UPDATE `ewmadmin` SET `urls` = '" . $urls . "',`appid` = '" . $appid . "',`userkey` = '" . $userkey . "',`jiekou` = '" . $jiekou . "',`fanhui` = '" . $fanhui . "' WHERE `id` =1";
    $result = mysql_query($exec);
    mysql_close();
    echo"<meta http-equiv='Content-Type' content='text/html; charset=UTF-8' /><script src='js/upurl.js'></script><script language='javaScript'>window.history.back(-1);</script>";
}
?>

