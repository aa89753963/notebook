<?php

namespace Wispiring\Controller;

use Wispiring\Core\AbstractController;
use Wispiring\Core\Component\UserModel as User;
use Wispiring\Core\Config\Config;

class NotebookController extends AbstractController
{
    public function listAction()
    {

       $a = new User();
$config = Config::getInstance();
$a->getArray($config, $array);
exit;
        
        $this->tpl->assign('name', 'XXXXX');
        
        $this->tpl->display('index.tpl');
    }

    public function viewAction()
    {
        echo "vie1w";
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
