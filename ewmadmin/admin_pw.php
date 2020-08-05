<?php
session_start();
error_reporting(0);
include_once 'inc/conn.php';
if ($_SESSION['ldewm2017_username'] == "" or $_SESSION['ldewm2017_token'] == "") {
header("location:login.php");
mysql_close();
}
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>&#25903;&#20184;&#23453;&#20813;&#31614;&#32422;&#95;&#20010;&#20154;&#25903;&#20184;&#23453;&#20813;&#31614;&#32422;&#25509;&#21475;&#25554;&#20214;&#95;&#25903;&#20184;&#23453;&#20813;&#31614;&#32422;&#21160;&#24577;&#20108;&#32500;&#30721;&#25509;&#21475;</title>
<link rel="stylesheet" type="text/css" href="css/style.css" />
<link rel="stylesheet" type="text/css" href="js/style.css">
<link rel="stylesheet" type="text/css" href="js/buttons.css">
<style type="text/css">
<!--
body,td,th {
	font-size: 12px;
}
-->
</style></head> 
<body>
<div class="content">
<div class="main">
<?php
include_once 'head.php';
include_once 'menu.php';
?>
    <div class="right1">
                <div class="bar4"><input type="submit" name="Submit" class="button red"  value="&#31649;&#29702;&#21592;&#23494;&#30721;&#20462;&#25913;"></div>
       <p>
      <table width='209' id='cow' cellspacing='0' cellpadding='0'>
          <form action="uppassword.php" method="post" style="background-color:#EEF2F4; width:60%; " >
                        <tr><td width='43%' height="32"><div align="center"><strong>&#24080;&#21495;&#65306;</strong></div></td>
                            <td width='57%'><?= $_SESSION['ldewm2017_username']; ?></td></tr><br />
                        <tr><td width='43%' height="32" class='infobr'><div align="center"><strong>&#23494;&#30721;&#65306;</strong></div></td>
                            <td width='57%'><input name="password" type="password" size="16" maxlength="16" /></td></tr>
                        <tr><td height="38"><div align="right">
                        <input name="submit" type="submit" value="&#20462;&#25913;" class="button white small"/>
                        </div></td>
                            <td width='57%'>
                              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input name="B2" type="reset" value="&#37325;&#32622;" class="button white small"/></td></tr> 
        </form>
      </table>
    </div>
    <div class="clear"></div>
  </div>
<div style="display:none">
</div>
</div>
</body></html>