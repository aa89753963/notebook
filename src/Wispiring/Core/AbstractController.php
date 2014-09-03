<?php
namespace Wispiring\Core;

use Wispiring\Core\Template\Template; 
use Wispiring\Core\Componet\Database\Mysql\Mysql;
use Smarty;

require '/home/s3/newproject/config.php';
abstract class AbstractController
{

    protected $tpl = null;

    protected $mysql;


    public function __construct()
    {
        $smarty = new Smarty();

        $smarty->setTemplateDir(SYSYTEM_ROOT . '/templates/default');
        $smarty->setCompileDir(SYSYTEM_ROOT . '/caches/templates_c/');
        // $smarty->setConfigDir('configs/');
        $smarty->setCacheDir(SYSYTEM_ROOT . '/caches/cache/');
        $this->tpl = $smarty;
 
        print_r($cofing);exit;
        $this->mysql = new Mysql();
       // print_r($this->Mysql);
    }   

    public function getValue($name, $type = 'string')
    {
        if (isset($_GET[$name])) {
            return $_GET[$name];
        }
    }

    public function postValue($name)
    {
        if (isset($_POST[$name])) {
            return $_POST[$name];
        }
    }
}
