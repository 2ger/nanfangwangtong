<?php
//Code By Safe3 
//Add HTTP_REFERER by D.

/* 
�������ƣ�inject_check() 
�������ã�����ύ��ֵ�ǲ��Ǻ���SQLע����ַ�����ֹע�䣬������������ȫ 
�Ρ�������$sql_str: �ύ�ı��� 
�� �� ֵ�����ؼ������ture or false 
*/ 
function inject_check360($sql_str) { 
return eregi('select|insert|and|or|update|delete|\'|\/\*|\*|\.\.\/|\.\/|union|into|load_file|outfile', $sql_str); // ���й��� 
} 

/* 
�������ƣ�verify_id() 
�������ã�У���ύ��ID��ֵ�Ƿ�Ϸ� 
�Ρ�������$id: �ύ��IDֵ 
�� �� ֵ�����ش�����ID 
*/
function verify_id360($id=null) { 
if (!$id) { exit('meiy'); } // �Ƿ�Ϊ���ж� 
elseif (inject_check($id)) { exit('ff'); } // ע���ж� 
elseif (!is_numeric($id)) { exit('ff'); } // �����ж�
$id = intval($id); // ���ͻ� 

return $id; 
} 
?>