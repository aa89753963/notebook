<?php 

namespace Wispring\Controller;

use Wispiring\Core\AbstractController;
use Wispiring\Core\Component;

class AdminController extends AbstractController
{
    public function listUser()
    {
        $info = UserModel::getAllUser();
        $this->tpl->assign('info', $info);
        $this->tpl->display('showlistUser.tpl');
    }

    public function addUser()
    {

    }

    public function viewUser()
    {

    }

    public function editUser()
    {

    }

    public function deleteUser()
    {

    }
}