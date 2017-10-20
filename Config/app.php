<?php
/**
 * 请在下面放置任何您需要的应用配置
 */

return array(

    /**
     * 应用接口层的统一参数
     */
    'apiCommonRules' => array(
        //'sign' => array('name' => 'sign', 'require' => true),
    ),

    /**
     * 接口服务白名单，格式：接口服务类名.接口服务方法名
     *
     * 示例：
     * - *.*            通配，全部接口服务，慎用！
     * - Default.*      Api_Default接口类的全部方法
     * - *.Index        全部接口类的Index方法
     * - Default.Index  指定某个接口服务，即Api_Default::Index()
     */
    'service_whitelist' => array(
//        'Default.Index',
    ),


    //请将以下配置拷贝到 ./Config/app.php 文件对应的位置中，未配置的表将使用默认路由
    'auth' => array(
        'auth_on' => true, // 认证开关
        'auth_user' => 'auth_user', // 用户信息表
        'auth_group' => 'auth_group', // 组数据表名
        'auth_group_access' => 'auth_group_access', // 用户-组关系表
        'auth_rule' => 'auth_rule', // 权限规则表
        'auth_not_check_user' => array() //跳过权限检测的用户
    )
);
