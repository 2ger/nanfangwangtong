<?php
include_once 'config.php';
$dingdan=trim(htmlspecialchars($_REQUEST['orderno']));//¶©µ¥ºÅ
$mobile="0";//ĞèÉèÖÃ0
$paytype="3";

$sql="select * from buyer where orderno='".$dingdan."'";
$query=mysql_query($sql,$conn);
$rs=mysql_fetch_array($query);
$jiage = $rs['money'];
$pid = $rs['pid'];

$sql="select * from mypianku where id='".$pid."'";
$query=mysql_query($sql,$conn);
$rs=mysql_fetch_array($query);
$url = $rs['url'];

?>
<div style="text-align:center;">
<form name="form"  id="payment" accept-charset="UTF-8" action="alipay.php" method="post" >
<input name="out_trade_no" id="out_trade_no"  type="hidden" value="<?php echo $dingdan ?>" />
<input name="total_fee" id="total_fee"  type="hidden" value="<?php echo $jiage ?>" />
<input name="url" id="url"  type="hidden" value="<?php echo $url ?>" />
<input type="submit" class="ui-btn"  onclick="javascript:document.charset='UTF-8';document.getElementById('payment').submit()"  value="hide" style="display:none" align="left" />
</form><script>document.forms['payment'].submit();</script>