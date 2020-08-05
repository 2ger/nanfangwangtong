<?php
header('Access-Control-Allow-Origin:*');
define('IN_XD',true);
require("../include/common.inc.php");
	
$table = $_GET['table'];
$where = $_GET['where'];
$insert_key = $_GET['insert_key'];
$insert_value = $_GET['insert_value'];
$update_str = $_GET['update_str'];

if($_GET['act']=='insert'){
    $sql="INSERT INTO {$table} ({$insert_key})"." VALUES({$insert_value})";
    echo $sql;
	mysql_query($sql);
	if(mysql_affected_rows() == 1){
		xd_close();
		echo "<script type='text/javascript'>alert('添加成功!');</script>";
		exit;
	}else{
		xd_close();
		qy_alert_back('添加失败!');
	}
}
if($_GET['act']=='update'){
	$sql="UPDATE {$table} SET {$update_str} WHERE ".$where;
    echo $sql;
	mysql_query($sql);
	if(mysql_affected_rows() == 1){
		xd_close();
		echo "<script>alert('编辑成功！');</script>";
		exit;
	}else{
		xd_close();
		qy_alert_back('编辑失败或无修改动作!');
	}
}

if($_GET['act']=='select'){
	$sql = "select * from {$table} where {$where}";
    echo $sql;
	$query=mysql_query($sql);
    $data = array();
	while($row=mysql_fetch_array($query)){
        // $data[$row->id] =$row;
        print_r($row);
    }
   // print_r($data);
    exit();
}
if($_GET['act']=='delete'){
	 $sql="delete from {$table}  where ".$where;
    echo $sql;
	 mysql_query($sql);
	if(mysql_affected_rows() >= 1){
		xd_close();
		echo "<script>alert('删除成功！');</script>";
		exit;
	}else{
		xd_close();
		qy_alert_back('失败!');
	}
}
die('Internal Server Error,500 error');
?>
