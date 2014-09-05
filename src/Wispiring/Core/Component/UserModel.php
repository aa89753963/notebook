<?php 

namespace Wispiring\Core\Component;

use Wispiring\Core\Config\Config;
use Wispiring\Core\Component\AbstractModel;

class UserModel extends AbstractModel
{
    private static $NewUserModel;

    public function selectAll($sql)
    {
        $this->MysqlRes->selectAll($sql);
        return $this;
    }

    public function selectRow($sql)
    {
        $this->MysqlRes->selectRow($sql);
        return $this;
    }

    public function insert($sql)
    {
        $this->MysqlRes->insert($sql);
    }
}

