<?php
header("Content-type: text/html; charset=utf-8");
if (!file_exists('../vendor/autoload.php')) {
    echo "Plz use `php composer.phar install` to initial the project!";
    exit;
}

require '../vendor/autoload.php';
require '../config.php';
use Wispiring\Core\Component\Database\Mysql\Mysql;
use Wispiring\Core\Utils;
use Wispiring\Core\Config\Config;
use Wispiring\Core\Component\UserModel;

$res = Config::getInstance()->setValues($array)->getValues();




define('SYSYTEM_ROOT', realpath(__DIR__ . '/../'));

$page   = isset($_GET['page']) ? $_GET['page'] : 'Default';
$action = isset($_GET['action']) ? $_GET['action'] : 'Index';

$MysqlRes = new Mysql($res['dbhost'], $res['dbuser'], $res['dbpwd'], $res['dbname'], $res['charset']);
new UserModel($MysqlRes);

try {
    Utils::router($page, $action, array($MysqlRes));
} catch (Exception $e) {
    $code = $e->getCode();
    if ($code === 404) {
        header("HTTP/1.0 404 Not Found");
        echo $e->getMessage();
        exit;
    }
}
