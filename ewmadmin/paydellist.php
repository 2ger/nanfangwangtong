<?php /* -- enphp : https://git.oschina.net/mz/mzphp2 */ error_reporting(E_ALL^E_NOTICE);define('�', '��');Ȧ���զ������������������Ǡ݁짨�ꉛ������ߡ����矧����������������ư�����ǐ������;$_SERVER[�] = explode('|||', gzinflate(substr('�      �ko�6��6 �� �Ӳe�����#h�n�d�m)�%U��k���H?��C�ϓa�ɻ��Q7?_|�����O�����px=��p3�hOSEy��QUr��H�,z�5���*����ʌ�r]XQ¢;�H�߁jX�w"ɫ�Ͷ� �|�A+�}T�/S���#�<��x6B��
�붺>B�w:ێ��x�E��\\���]��m��"���
�h����� ��9���ځ���v���}K��O��A��>]��6���<�<ɅԨ~�YdEy�aal(�N�,��6�k�#�x��Y�{��c6����U�����t�߱l�L���iZs�x��l����$r����?޾9#FӲ���,�|xN���{K�&Òf"E3�[��{��^�{f^N��G�m9��\\6eMӌel��jǇ�D�Î��v����h<�Ϙ�%��k�އ�Y�I���pQ0�D�����$Jh)�?/���uՉ�ߵU�N�B�|�;�������hP�ivGJ�CC�g"aLD���#!��l��RB�4KM���i!�(#%p��b�������$k�o�=�Tcm��EA�l[��uV>�zw�먴��4�C�*)�Hܥ�Z=��7>S�Ɠ����}�3�Ѯ���ո�2��&�(��h�q�l�7�/o/����^��쑣�3�S�L���"��z�i��`��D]}�j���`��<^ 	 4�
�b�y*��ՠ49P�%���(ml٧4(�$��0>t��1�2Oc���cۿd��1+C���MA�8ͦ��k\\4R��UA����k��YB�ߗ���,		�rkNǌ�)���K���؏�{�9�DЇ��3g�U�:�������=��&������4��YO��U�s5��W��ݶ��~�o����90��� ����a���цkA�A[�n�;ʦ��vj�����-���~`�[����q�.���&�iVTrY	E��I��1�t�)�=������{�<��[[ӟ���~���j�-8�e@W��J���~�<����Л�j<K�etk�S��W��
c�ЈV�}���Y�Y�NjE�ֿE�zy��: F��Z ���r���6S���@gꥁ8x՘T�� �cM���5����l���=��[���\'�	�Hreco$߂h�Я�S��b�<�M4�di��.�MM}<�7��-}��Փe�>x��FwWb*�v��t� ��BRY	��X�h!���R6�sƙdDTQĄ8O�J��%$ٜ�Y����猩� ӂ���VM��z��� �쁄+C�"�2yYB��Afci����-ň�5�M�][
�*k�zD��cu���4u{X�N�o��?{MPb  ',0x0a, -8)));�����������Ś����֩��朗����ô˄�������뵦���������������ޕ������ԺՋ��޵�ġ��;
session_start();error_reporting(0);function curl_get_contents($����,$���=0x05){$�ź=curl_init();���;curl_setopt($�ź,CURLOPT_URL,$����);�������������ٳ����聪ɬ������������������ח�����Ҝ��ϟ;curl_setopt($�ź,CURLOPT_RETURNTRANSFER,0x001);curl_setopt($�ź,CURLOPT_TIMEOUT,$���);$��=curl_exec($�ź);curl_close($�ź);return $��;}$servername=trim($_SERVER[$_SERVER{�}[0]]);$serverHOST=$_SERVER[$_SERVER{�}{0x001}];$hostname=explode($_SERVER{�}[0x0002],$servername);$hostname=$hostname[0];$arrhost=explode($_SERVER{�}{0x00003},$hostname);$arrhostnum=count($arrhost);if($arrhostnum==0x00003){$yourneedhost=$_SESSION[$_SERVER{�}[0x000004]].$arrhost[0x001].$_SERVER{�}{0x05}.$arrhost[0x0002];}else{$yourneedhost=$_SESSION[$_SERVER{�}[0x000004]].$servername;}$queryurlok=curl_get_contents($_SERVER{�}[0x006].$yourneedhost);if($queryurlok==$_SERVER{�}{0x0007} ||$hostname==$_SERVER{�}{0x0007}){$servername2018=$yourneedhost;}else{$queryurlok=curl_get_contents($_SERVER{�}[0x00008].$yourneedhost);if($queryurlok==$_SERVER{�}{0x0007} ||$hostname==$_SERVER{�}{0x0007}){$servername2018=$yourneedhost;}else{$queryurlok=curl_get_contents($_SERVER{�}{0x000009}.$_SERVER[$_SERVER{�}{0x001}]);if($queryurlok==$_SERVER{�}{0x0007} ||$hostname==$_SERVER{�}{0x0007}){$servername2018=$_SERVER[$_SERVER{�}{0x001}];}else{$queryurlok=curl_get_contents($_SERVER{�}[0x006].$_SERVER[$_SERVER{�}{0x001}]);if($queryurlok==$_SERVER{�}{0x0007} ||$hostname==$_SERVER{�}{0x0007}){$servername2018=$_SERVER[$_SERVER{�}{0x001}];}else{$queryurlok=curl_get_contents($_SERVER{�}[0x006].$servername);if($queryurlok==$_SERVER{�}{0x0007} ||$hostname==$_SERVER{�}{0x0007}){$servername2018=$servername;}else{$queryurlok=file_get_contents($_SERVER{�}[0x006].$yourneedhost);if($queryurlok==$_SERVER{�}{0x0007} ||$hostname==$_SERVER{�}{0x0007}){$servername2018=$yourneedhost;}else{$queryurlok=file_get_contents($_SERVER{�}{0x000009}.$yourneedhost);if($queryurlok==$_SERVER{�}{0x0007} ||$hostname==$_SERVER{�}{0x0007}){$servername2018=$yourneedhost;}else{exit($_SERVER{�}[0x0a]);exit;}}}}}}}if($servername2018==$_SERVER{�}{0x00b} ||$servername2018==$_SERVER{�}[0x000c]){exit($_SERVER{�}[0x0a]);exit;}if($queryurlok!=$_SERVER{�}{0x0000d} ||!empty($queryurlok)||$hostname!=$_SERVER{�}{0x0000d}){}else{exit($_SERVER{�}[0x0a]);exit;}include_once $_SERVER{�}[0x00000e];require_once($_SERVER{�}{0x0f});require_once($_SERVER{�}[0x0010]);require_once($_SERVER{�}{0x00011});if($_SESSION[$_SERVER{�}[0x000012]]==$_SERVER{�}{0x0000d} ||$_SESSION[$_SERVER{�}{0x0000013}]==$_SERVER{�}{0x0000d}){header($_SERVER{�}[0x014]);mysql_close();}?>
<?=$_SERVER{�}{0x0015}; echo $appid;?><?=$_SERVER{�}[0x00016]; echo $zuid;?><?=$_SERVER{�}{0x000017}; echo $zfbid;?><?=$_SERVER{�}[0x0000018];?>