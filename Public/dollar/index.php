<?php
/**
 * Dollar 统一入口
 */

require_once dirname(__FILE__) . '/../init.php';

//装载你的接口
DI()->loader->addDirs('Dollar');


//必须显式注册，以便可以让服务自行初始化
DI()->authLite = new Auth_Lite();


/** ---------------- 响应接口请求 ---------------- **/

$api = new PhalApi();
$rs = $api->response();
$rs->output();

