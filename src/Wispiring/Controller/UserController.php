<?php

namespace Wispiring\Controller;

use Wispiring\Core\AbstractController;
use Wispiring\Core\Component\UserModel;

class UserController extends AbstractController
{

    public function showAction($MysqlRes)
    {
        $sql = "SELECT `user_email`,`user`,`age`,`firstname`,`lastname`,`country`,`gender` FROM `userinfo` WHERE cz=0";
        $res = $MysqlRes->selectAll($sql);
        //print_r($res);exit;
        $this->tpl->assign('info', $res);
        $this->tpl->display('showuser.tpl');
    }

    public function addAction($MysqlRes)
    {
        $this->tpl->display('adduser.tpl');
        $name = $_POST['name'];
        $pwd = md5($_POST['pwd']);
        $sql = "INSERT INTO `user`.`user_account` (`username`, `userpass`) VALUES ('$name', '$pwd')";
        $res = $MysqlRes->insert($sql);
    }

    public function deleteAction()
    {
        $sql = "SELECT `id`,`user_email`,`user`,`age`,`firstname`,`lastname`,`country`,`gender` FROM `userinfo` WHERE cz=0";
        $res = $MysqlRes->selectAll($sql);
        $this->tpl->assign('info', $res);
        $this->tpl->display('showuser.tpl');
    }
}