<?php

/*
/**
 * 用户模型
 * @author: hms 2015-8-6
 */

class Model_Auth_User extends PhalApi_Model_NotORM
{

    protected function getTableName($id)
    {


        return DI()->config->get('app.auth.auth_user');
    }
    
    public  function getUserInfo($uid){
        static $userinfo = array();
        if (!isset($userinfo[$uid])) {
            $userinfo[$uid] = $this->getORM()->where('id', $uid)->fetchOne();
        }
        return $userinfo[$uid];
    }

    public  function checkUserInfo($uname,$upass)
    {

        if (isset($uname) && isset($upass)) {
            $uinfo = $this->getORM()->where('username', $uname)->where('password', $upass)->fetchOne();
            if ($uinfo) {
                return $uinfo;
            } else {
                return false;
            }
        } else {
            return false;

        }
    }
}