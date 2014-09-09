<?php

namespace Wispiring\Controller;

use Wispiring\Core\AbstractController;
use Wispiring\Core\Component\UserModel;

class NotebookController extends AbstractController
{
    public function listAction()
    {

        $this->tpl->assign('name', 'XXXXXsadsadsadsads');       
        $this->tpl->display('index.tpl');
    }

    public function viewAction($MysqlRes)
    {
        $sql = "SELECT `user_email`,`user`,`age`,`firstname`,`lastname`,`country` FROM `userinfo` WHERE cz=0";
        $res = $MysqlRes->selectAll($sql);
        print_r($res);
    }

    public function addAction()
    {
        echo "vadddiew";
    }

    public function editAction()
    {
        echo "EDITview";
    }

    public function saveAction()
    {

    }
}
