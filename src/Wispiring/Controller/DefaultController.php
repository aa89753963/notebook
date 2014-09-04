<?php

namespace Wispiring\Controller;

use Wispiring\Core\AbstractController;


class DefaultController extends AbstractController
{
    public function indexAction()
    {
       $this->tpl->assign('id', 'intgeger');

       $this->tpl->display('index');
    }
}