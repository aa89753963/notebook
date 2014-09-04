<?php

namespace Wispiring\Core\Config;

class Config
{

	private static $configInstance;
	public static function  getInstance()
	{

		if (self::$configInstance) {
			return self::$configInstance;
		}

		return self::$configInstance = new  Config();
		
	}
	private $values = array();
	public function setValue($key,$values)
	{
		$this->values[$key] = $values;
		return $this;
		//return $this->values[$key] = $values;
	}
	public function setValues($values)
	{
		$this->values = $values;
		return $this;
	}
	public function getValues()
	{
		return $this->values;
	}
	public function getValue($key)
	{
		return $this->values[$key];
	}

}
/*
$info = Config::getInstance()->setValues($array)->getValues();
print_r($info);
*/