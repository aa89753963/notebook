-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2014-09-02 09:49:14
-- 服务器版本: 5.5.38-0ubuntu0.14.04.1
-- PHP 版本: 5.5.9-1ubuntu4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `user`
--

-- --------------------------------------------------------

--
-- 表的结构 `useremail`
--

CREATE TABLE IF NOT EXISTS `useremail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `email` int(11) DEFAULT NULL,
  `ds` int(11) DEFAULT NULL,
  `du` int(11) DEFAULT NULL,
  `cs` int(11) DEFAULT NULL,
  `cu` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `userinfo`
--

CREATE TABLE IF NOT EXISTS `userinfo` (
  `id` int(11) NOT NULL,
  `user_email` varchar(30) NOT NULL,
  `user` int(11) NOT NULL,
  `age` int(11) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `ds` int(11) NOT NULL,
  `du` int(5) NOT NULL,
  `cs` int(11) NOT NULL,
  `cu` int(5) NOT NULL,
  `country` varchar(100) NOT NULL,
  `gender` int(2) NOT NULL,
  `uid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `user_account`
--

CREATE TABLE IF NOT EXISTS `user_account` (
  `id` int(11) NOT NULL,
  `username` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `userpass` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `rds` int(11) DEFAULT NULL,
  `rdu` int(5) DEFAULT NULL,
  `ds` int(11) DEFAULT NULL,
  `du` int(11) DEFAULT NULL,
  `cs` int(11) DEFAULT NULL,
  `cu` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `user_addres`
--

CREATE TABLE IF NOT EXISTS `user_addres` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `province` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `streetnr` varchar(256) DEFAULT NULL,
  `postcode` int(11) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `cs` int(11) DEFAULT NULL,
  `cu` int(11) DEFAULT NULL,
  `ds` int(11) DEFAULT NULL,
  `du` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `user_entry`
--

CREATE TABLE IF NOT EXISTS `user_entry` (
  `id` int(11) DEFAULT NULL,
  `uid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `ds` int(11) NOT NULL,
  `du` int(11) NOT NULL,
  `cs` int(11) NOT NULL,
  `cu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `user_group`
--

CREATE TABLE IF NOT EXISTS `user_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `gid` int(11) DEFAULT NULL,
  `cu` int(11) DEFAULT NULL,
  `cs` int(11) DEFAULT NULL,
  `du` int(11) DEFAULT NULL,
  `ds` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
