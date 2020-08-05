<?php

defined('BASEPATH') OR exit('No direct script access allowed');

/**

 * 远程API登录加密串
 *  */
$config['app_key']=md5('wfeDRfeg5f22S3dCRdfgh');
$config['app_expire_time']=2*24*60*60;//登录有效期2天