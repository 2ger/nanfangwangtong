<?php 
require_once('inc/safemode.php');
require_once('inc/360_safe3.php');
require_once('inc/md532.php');

$ewmurl = $_GET['ewmurl'];
$ewmurlok = inject_check($ewmurl);
if($ewmurlok==True){exit();}else{}

if(is_null($_GET['ewmurl']) or empty($_GET['ewmurl'])){
header("location:index.php");
}
?>
<img src="../ewmimages/<?php echo $ewmurl;?>">