<?php

class Common_SignFilter implements PhalApi_Filter
{
    public function check()
    {
//        $user->checkLogin() //检测登录，自主实现
        $userInfo = $this->checkUser();

        if($userInfo){
            $api=DI()->request->get('service','Default.Index'); //获取当前访问的接口
//            $userId=DI()->request->get('user_id',0);//获取用户id参数

            $userId = $userInfo['id'];
            $r=DI()->authLite->check($api,$userId);
            if(!$r){
                echo json_encode([
                    'msg'=>'没有权限'
                ]);
                exit();
            }
        }else{
            echo json_encode([
                'msg'=>'非法请求'
            ]);
            exit();
        }
    }

    public function checkUser(){
        $uname=DI()->request->get('uname',0);
        $upass=DI()->request->get('upass',0);
        $userInfo = DI()->authLite->checkUserInfo($uname,$upass);
        return $userInfo;
    }
}