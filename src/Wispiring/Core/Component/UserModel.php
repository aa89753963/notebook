<?php 
namespace Wispiring\Core\Component;

use Wispiring\Core\Componet\Database\Mysql\Mysql;

class UserModel
{
    public static function getAllUser()
    {
        $res = new Mysql();
        $sql = "SELECT `username`,`userpass` FROM user_account";
        $info = Mysql::selectAll($sql);
        return $info;
    }
}