/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50629
Source Host           : localhost:3306
Source Database       : log4jtest

Target Server Type    : MYSQL
Target Server Version : 50629
File Encoding         : 65001

Date: 2016-07-27 16:43:51
*/
CREATE DATABASE IF NOT EXISTS log4jTest DEFAULT CHARSET utf8 COLLATE utf8_general_ci;
SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for operate_log
-- ----------------------------
DROP TABLE IF EXISTS `operate_log`;
CREATE TABLE `operate_log` (
  `LOG_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '日志编号',
  `CLASS` varchar(500) DEFAULT NULL COMMENT '类名',
  `METHOD` varchar(200) DEFAULT NULL COMMENT '方法名',
  `CREATE_TIME` varchar(100) DEFAULT NULL COMMENT '产生时间',
  `LOG_LEVEL` varchar(20) DEFAULT NULL COMMENT '日志级别',
  `LOG_MSG` text COMMENT '日志信息',
  `USER_TYPE` varchar(50) DEFAULT NULL COMMENT '用户类型',
  `USER_ID` varchar(100) DEFAULT NULL COMMENT '用户编号',
  PRIMARY KEY (`LOG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operate_log
-- ----------------------------
