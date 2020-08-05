<?php
//Code By Safe3 
//Add HTTP_REFERER by D.

/* 
函数名称：inject_check() 
函数作用：检测提交的值是不是含有SQL注射的字符，防止注射，保护服务器安全 
参　　数：$sql_str: 提交的变量 
返 回 值：返回检测结果，ture or false 
*/ 
function inject_check360($sql_str) { 
return eregi('select|insert|and|or|update|delete|\'|\/\*|\*|\.\.\/|\.\/|union|into|load_file|outfile', $sql_str); // 进行过滤 
} 

/* 
函数名称：verify_id() 
函数作用：校验提交的ID类值是否合法 
参　　数：$id: 提交的ID值 
返 回 值：返回处理后的ID 
*/
function verify_id360($id=null) { 
if (!$id) { exit('meiy'); } // 是否为空判断 
elseif (inject_check($id)) { exit('ff'); } // 注射判断 
elseif (!is_numeric($id)) { exit('ff'); } // 数字判断
$id = intval($id); // 整型化 

return $id; 
} 
?>