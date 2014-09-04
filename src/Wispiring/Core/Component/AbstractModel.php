<?php 

namespace Wispiring\Core\Component;

abstract class AbstractModel
{
    private $MysqlRes = null;
    
    public function __construct($MysqlRes)
    {
        $this->MysqlRes = $MysqlRes;
    }
}