<?php
$magic_quotes_gpc = get_magic_quotes_gpc(); 
@extract(daddslashes($_COOKIE)); 
@extract(daddslashes($_POST)); 
@extract(daddslashes($_GET)); 
if(!$magic_quotes_gpc) { 
$_FILES = daddslashes($_FILES); 
} 


function daddslashes($string, $force = 0) { 
if(!$GLOBALS['magic_quotes_gpc'] || $force) { 
if(is_array($string)) { 
foreach($string as $key => $val) { 
$string[$key] = daddslashes($val, $force); 
} 
} else { 
$string = addslashes($string); 
} 
} 
return $string; 
}

$referer = isset($_SERVER['HTTP_REFERER']) ? $_SERVER['HTTP_REFERER'] : NULL;
$host = $_SERVER['HTTP_HOST'];
if(substr($referer,7,strlen($host)) != $host){
exit();
}else{
}


function inject_check($sql_str) { 
$sql_str = FALSE;
return $sql_str;
} 

function verify_id($id=null) { 
if (!$id) { exit(''); } 
elseif (inject_check($id)) { exit(''); }
elseif (!is_numeric($id)) { exit(''); }
$id = intval($id); 

return $id; 
} 
 
function str_check( $str ) { 
if (!get_magic_quotes_gpc()) {
$str = addslashes($str); 
} 
$str = str_replace("_", "\_", $str);
$str = str_replace("%", "\%", $str); 

return $str; 
} 

function post_check($post) { 
if (!get_magic_quotes_gpc()) { 
$post = addslashes($post);
} 
$post = str_replace("_", "\_", $post); 
$post = str_replace("%", "\%", $post);
$post = nl2br($post); 
$post = htmlspecialchars($post);

return $post; 
} 
?>