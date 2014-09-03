<?php
namespace Wispiring\Core\Component\Database\Mysql;

use  Wispiring\Core\Utils; 
class Mysql 
{
 
    private $conn;
    public $date = array();
    private static $mysqlInstance;
    public function __construct($hostname, $username, $userpassword, $dbname)
    {        
        $this->connect($hostname, $username, $userpassword,$dbname);
    }

    public function connect($hostname, $username, $userpassword,$dbname)
    {
       $this->conn = mysql_connect($hostname, $username, $userpassword) or die('disconnect');
       if($this->conn){
            mysql_select_db($dbname);
       }
    }
    public static function getConnect($dbhost,$dbuser,$dbpwd,$dbname)
    {
        if(self::$mysqlInstance) {
            return self::$mysqlInstance;
        }
        return self::$mysqlInstance = new Mysql($dbhost,$dbuser,$dbpwd,$dbname);
    }
    public function show($message)//$dbnmae
    {
        $sql = "select * from ".$message;
        $result = mysql_query($sql);
        $count = 0;
        while ($row = mysql_fetch_assoc($result))
        {
            $date[$count++] = $row;
        }
        return $date;
    }
    public function insert($table,$message)
    {
    
        $insert='';
        $date=array();
        foreach($message as $values)
        {
            $insert = $insert.",'".$values."'";
        }
        $sql='insert into '.$table.' values(null'.$insert.')';
        mysql_query($sql);
        $ID = mysql_insert_id($this->conn);
        return $id;
    }
    public function delete($table,$id)
    {
        $sql='delete from '.$table.' where id='.$id;
        mysql_query($sql);
        return true;
    }
    public function edit($table,$id)
    {
           // $sql='update '.$table.' set '.'something.' .'where id=' $id;
 //       $sql = UPDATE `user_account` SET `id`=[value-1],`username`=[value-2],`userpass`=[value-3],`rds`=[value-4],`rdu`=[value-5],`ds`=[value-6],`du`=[value-7],`cs`=[value-8],`cu`=[value-9] WHERE 1
    }
     /**
     *发送SQL语句
     */

    public function query($sql)
    {
    if ($sql == "") {
        echo 'SQL语句错误';
    }
    return mysql_query($sql);
    }
    /**
    *查询所有信息
    */

    public function selectAll($sql)
    {
        $rs = $this->query($sql);
        if (!$rs) {
            return false;
        }
        while ($row = mysql_fetch_array($rs)) {
            $list[] = $row;
        }
        return $list;
    }

}