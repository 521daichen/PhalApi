/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : phal

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2017-10-20 10:43:05
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for phalapi_auth_group
-- ----------------------------
DROP TABLE IF EXISTS `phalapi_auth_group`;
CREATE TABLE `phalapi_auth_group` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` char(100) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `rules` char(80) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phalapi_auth_group
-- ----------------------------
INSERT INTO `phalapi_auth_group` VALUES ('1', '超级管理员', '1', '1');

-- ----------------------------
-- Table structure for phalapi_auth_group_access
-- ----------------------------
DROP TABLE IF EXISTS `phalapi_auth_group_access`;
CREATE TABLE `phalapi_auth_group_access` (
  `uid` mediumint(8) unsigned NOT NULL,
  `group_id` mediumint(8) unsigned NOT NULL,
  UNIQUE KEY `uid_group_id` (`uid`,`group_id`),
  KEY `uid` (`uid`),
  KEY `group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phalapi_auth_group_access
-- ----------------------------
INSERT INTO `phalapi_auth_group_access` VALUES ('1', '1');

-- ----------------------------
-- Table structure for phalapi_auth_rule
-- ----------------------------
DROP TABLE IF EXISTS `phalapi_auth_rule`;
CREATE TABLE `phalapi_auth_rule` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(80) NOT NULL DEFAULT '',
  `title` char(20) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `add_condition` char(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phalapi_auth_rule
-- ----------------------------
INSERT INTO `phalapi_auth_rule` VALUES ('1', 'Default.Index', '默认接口', '1', '');

-- ----------------------------
-- Table structure for phalapi_auth_user
-- ----------------------------
DROP TABLE IF EXISTS `phalapi_auth_user`;
CREATE TABLE `phalapi_auth_user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `status` tinyint(255) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phalapi_auth_user
-- ----------------------------
INSERT INTO `phalapi_auth_user` VALUES ('1', '123', '123', null);
