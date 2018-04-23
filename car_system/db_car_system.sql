/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : db_car_system

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2018-04-23 23:06:32
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_admin
-- ----------------------------
DROP TABLE IF EXISTS `t_admin`;
CREATE TABLE `t_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `account` char(20) NOT NULL COMMENT '超级管理员账号',
  `password` char(32) NOT NULL COMMENT '超级管理员密码，md5加密',
  `create_time` char(19) NOT NULL COMMENT '创建记录时间',
  `update_time` char(19) DEFAULT NULL COMMENT '修改记录时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_admin
-- ----------------------------
INSERT INTO `t_admin` VALUES ('1', 'admin', 'f79908a3fdc52d8748a76d003372f1e2', '2018-04-16 15:52:36', '2018-04-23 11:20:22');

-- ----------------------------
-- Table structure for t_car
-- ----------------------------
DROP TABLE IF EXISTS `t_car`;
CREATE TABLE `t_car` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `number` char(20) NOT NULL COMMENT '车辆编号',
  `plate` char(7) DEFAULT NULL COMMENT '车牌号',
  `frame` char(17) NOT NULL COMMENT '车架号，VIN码17位',
  `create_time` char(19) NOT NULL COMMENT '创建记录时间',
  `update_time` char(19) DEFAULT NULL COMMENT '修改记录时间',
  `delete_time` char(19) DEFAULT NULL COMMENT '删除记录时间',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '删除状态，0表示未删除，1表示已删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_car
-- ----------------------------
INSERT INTO `t_car` VALUES ('1', 'A001', '粤L66666', '1G1BL52P7TR115520', '2018-04-19 15:13:40', '2018-04-20 21:00:26', '', '0');
INSERT INTO `t_car` VALUES ('2', 'A002', '粤L66667', '1G1BL52P7TR115521', '2018-04-19 15:20:40', '2018-04-20 21:26:14', '', '0');
INSERT INTO `t_car` VALUES ('3', 'A003', '粤L33333', '1G1BL52P7TR115522', '2018-04-20 00:13:44', '2018-04-20 20:57:48', null, '0');
INSERT INTO `t_car` VALUES ('4', 'A004', '粤L66666', '1G1BL52P7TR115523', '2018-04-20 20:51:06', null, null, '0');
INSERT INTO `t_car` VALUES ('5', 'A005', '粤L88888', '1G1BL52P7TR115520', '2018-04-23 11:06:58', '2018-04-23 11:07:05', '', '0');

-- ----------------------------
-- Table structure for t_driver
-- ----------------------------
DROP TABLE IF EXISTS `t_driver`;
CREATE TABLE `t_driver` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `number` char(8) NOT NULL COMMENT '司机编号',
  `account` char(11) NOT NULL COMMENT '司机账号',
  `password` char(32) NOT NULL COMMENT '司机密码',
  `name` char(20) NOT NULL COMMENT '真实姓名',
  `image` char(30) DEFAULT NULL COMMENT '头像路径',
  `create_time` char(19) NOT NULL COMMENT '创建记录时间',
  `update_time` char(19) DEFAULT NULL COMMENT '修改记录时间',
  `delete_time` char(19) DEFAULT NULL COMMENT '删除记录时间',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '删除状态，0表示未删除，1表示已删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_driver
-- ----------------------------
INSERT INTO `t_driver` VALUES ('1', 'A001', '13669586274', 'd4e11d0fe335d390eb09f07fcf3bddd7', '郑文', '', '2018-04-16 15:13:40', '2018-04-20 20:28:56', '', '0');
INSERT INTO `t_driver` VALUES ('2', 'A002', '13413027537', 'd4e11d0fe335d390eb09f07fcf3bddd7', '赖俊强', null, '2018-04-19 15:13:40', null, '', '0');
INSERT INTO `t_driver` VALUES ('4', '010804', '13669586278', 'd4e11d0fe335d390eb09f07fcf3bddd7', '张三', '', '2018-04-20 01:04:08', '2018-04-20 01:10:34', '', '0');
INSERT INTO `t_driver` VALUES ('5', '010805', '13669583333', 'd4e11d0fe335d390eb09f07fcf3bddd7', '李四', '', '2018-04-20 01:08:04', null, '', '0');
INSERT INTO `t_driver` VALUES ('6', '202819', '12345678901', 'd4e11d0fe335d390eb09f07fcf3bddd7', '王五', '', '2018-04-20 20:28:19', null, '', '0');
INSERT INTO `t_driver` VALUES ('7', '105911', '13669586666', '76bdcca0cf4ac227b454667c719df762', '林东凡', '', '2018-04-23 10:59:11', '2018-04-23 10:59:24', '2018-04-23 10:59:27', '1');

-- ----------------------------
-- Table structure for t_goods
-- ----------------------------
DROP TABLE IF EXISTS `t_goods`;
CREATE TABLE `t_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `number` char(20) NOT NULL COMMENT '商品编号',
  `name` char(20) NOT NULL COMMENT '商品名称',
  `quantity` int(11) NOT NULL COMMENT '商品数量',
  `real_quantity` int(11) NOT NULL COMMENT '商品实际数量',
  `create_time` char(19) NOT NULL COMMENT '创建记录时间',
  `update_time` char(19) DEFAULT NULL COMMENT '修改记录时间',
  `delete_time` char(19) DEFAULT NULL COMMENT '删除记录时间',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '删除状态，0表示未删除，1表示已删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_goods
-- ----------------------------
INSERT INTO `t_goods` VALUES ('1', 'goods20180420160613', 'iphone', '100', '0', '2018-04-20 16:06:13', '2018-04-20 16:43:13', null, '0');
INSERT INTO `t_goods` VALUES ('2', 'goods20180420160932', '笔记本', '100', '0', '2018-04-20 16:09:32', '2018-04-20 16:44:18', null, '0');
INSERT INTO `t_goods` VALUES ('3', 'goods20180420161013', '衬衫', '1000', '0', '2018-04-20 16:10:13', '2018-04-23 10:28:44', null, '0');
INSERT INTO `t_goods` VALUES ('44', 'goods20180420201448', '柴油', '10000', '0', '2018-04-20 20:14:48', '2018-04-20 20:25:16', null, '0');
INSERT INTO `t_goods` VALUES ('45', 'goods20180420201537', '天然气', '1000', '0', '2018-04-20 20:15:37', null, null, '0');
INSERT INTO `t_goods` VALUES ('46', 'goods20180423102437', '石油', '10000', '0', '2018-04-23 10:24:37', null, null, '0');
INSERT INTO `t_goods` VALUES ('47', 'goods20180423102544', '石油', '100000', '0', '2018-04-23 10:25:44', null, null, '0');
INSERT INTO `t_goods` VALUES ('48', 'goods20180423112105', '11', '11111', '0', '2018-04-23 11:21:05', '2018-04-23 11:21:10', null, '0');

-- ----------------------------
-- Table structure for t_log
-- ----------------------------
DROP TABLE IF EXISTS `t_log`;
CREATE TABLE `t_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user` char(20) NOT NULL,
  `log` varchar(50) DEFAULT NULL COMMENT '操作内容',
  `time` char(19) DEFAULT NULL COMMENT '操作时间，也是创建时间',
  `delete_time` char(19) DEFAULT NULL COMMENT '修改记录时间',
  `status` tinyint(4) DEFAULT '0' COMMENT '删除状态，0表示未删除，1表示已删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_log
-- ----------------------------
INSERT INTO `t_log` VALUES ('42', 'admin', '修改账号为：admin 的车辆', '2018-04-23 11:20:23', null, '0');
INSERT INTO `t_log` VALUES ('43', 'admin', '退出系统', '2018-04-23 11:20:25', null, '0');
INSERT INTO `t_log` VALUES ('44', '郑文', '登录系统', '2018-04-23 11:20:36', null, '0');
INSERT INTO `t_log` VALUES ('45', '郑文', '生成订单编号为：20180423112105 的订单', '2018-04-23 11:21:05', null, '0');
INSERT INTO `t_log` VALUES ('46', '郑文', '修改订单编号为：20180423112105 的订单', '2018-04-23 11:21:10', null, '0');
INSERT INTO `t_log` VALUES ('47', '郑文', '删除订单ID为：70 的订单', '2018-04-23 11:21:19', null, '0');
INSERT INTO `t_log` VALUES ('48', '郑文', '退出系统', '2018-04-23 11:21:23', null, '0');
INSERT INTO `t_log` VALUES ('49', '郑文', '登录系统', '2018-04-23 11:21:36', null, '0');
INSERT INTO `t_log` VALUES ('50', '郑文', '退出系统', '2018-04-23 11:22:07', null, '0');
INSERT INTO `t_log` VALUES ('51', 'admin', '登录系统', '2018-04-23 11:22:27', null, '0');
INSERT INTO `t_log` VALUES ('52', 'admin', '登录系统', '2018-04-23 18:37:42', null, '0');
INSERT INTO `t_log` VALUES ('53', 'admin', '退出系统', '2018-04-23 20:02:22', null, '0');
INSERT INTO `t_log` VALUES ('54', 'admin', '登录系统', '2018-04-23 20:02:23', null, '0');
INSERT INTO `t_log` VALUES ('55', 'admin', '退出系统', '2018-04-23 20:04:42', null, '0');
INSERT INTO `t_log` VALUES ('56', 'admin', '登录系统', '2018-04-23 20:11:08', null, '0');
INSERT INTO `t_log` VALUES ('57', 'admin', '退出系统', '2018-04-23 20:12:33', null, '0');
INSERT INTO `t_log` VALUES ('58', '郑文', '登录系统', '2018-04-23 20:37:59', null, '0');

-- ----------------------------
-- Table structure for t_order
-- ----------------------------
DROP TABLE IF EXISTS `t_order`;
CREATE TABLE `t_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `number` char(14) NOT NULL COMMENT '订单编号',
  `order_number` char(20) DEFAULT NULL COMMENT '订单号',
  `goods_id` int(11) DEFAULT NULL COMMENT '商品ID',
  `goods_name` char(20) NOT NULL COMMENT '商品名称',
  `goods_quantity` int(11) NOT NULL COMMENT '商品数量',
  `create_time` char(19) NOT NULL COMMENT '订单创建时间',
  `departure_time` char(16) DEFAULT NULL COMMENT '订单出发时间',
  `car_id` int(11) DEFAULT NULL COMMENT '车辆ID',
  `car_plate` char(7) DEFAULT NULL COMMENT '车牌号',
  `destination` char(30) NOT NULL COMMENT '目的地',
  `order_status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '订单状态，0表示未接单，1表示已接单，2表示已结束',
  `driver_id` int(11) DEFAULT NULL COMMENT '司机ID',
  `driver_number` char(20) DEFAULT NULL COMMENT '司机编号',
  `pick_number` char(20) DEFAULT NULL COMMENT '提货单号',
  `contract_number` char(20) DEFAULT NULL COMMENT '合同号',
  `short_info` char(20) DEFAULT NULL COMMENT '缺货信息',
  `pick_quantity` int(11) DEFAULT NULL COMMENT '商品提货数量',
  `pick_time` char(16) DEFAULT NULL COMMENT '提货时间',
  `company` char(20) DEFAULT '' COMMENT '结算单位',
  `update_time` char(19) DEFAULT NULL COMMENT '修改记录时间',
  `delete_time` char(19) DEFAULT NULL COMMENT '删除记录时间',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '删除状态，0表示未删除，1表示已删除',
  PRIMARY KEY (`id`),
  KEY `goods_id` (`goods_id`),
  KEY `car_id` (`car_id`),
  KEY `driver_id` (`driver_id`),
  CONSTRAINT `t_order_ibfk_1` FOREIGN KEY (`goods_id`) REFERENCES `t_goods` (`id`),
  CONSTRAINT `t_order_ibfk_2` FOREIGN KEY (`car_id`) REFERENCES `t_car` (`id`),
  CONSTRAINT `t_order_ibfk_3` FOREIGN KEY (`driver_id`) REFERENCES `t_driver` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_order
-- ----------------------------
INSERT INTO `t_order` VALUES ('21', '20180420160613', 'A021', '1', 'iphone', '100', '2018-04-20 16:06:13', '2018-04-27T18:00', '3', '粤L33333', '上海', '1', '1', 'A001', '1', '1', '', '1', '0001-01-01T01:01', '1', '2018-04-23 20:45:29', null, '0');
INSERT INTO `t_order` VALUES ('22', '20180420160932', 'A022', '2', '笔记本', '100', '2018-04-20 16:09:32', '2018-04-21T12:00', '5', '粤L88888', '广州', '1', '1', 'A001', '20180420160932', '20180420160932', '', '100', '2018-04-23T21:00', '广州大学', '2018-04-23 21:09:51', null, '0');
INSERT INTO `t_order` VALUES ('23', '20180420161013', 'A023', '3', '衬衫', '1000', '2018-04-20 16:10:13', '2018-04-23T12:00', '1', '粤L66666', '深圳', '1', '1', 'A001', '123456789', '123456789', '', '900', '2018-04-21T18:00', '惠州学院', '2018-04-23 10:28:44', '', '0');
INSERT INTO `t_order` VALUES ('66', '20180420201448', 'A025', '44', '柴油', '10000', '2018-04-20 20:14:48', '2018-04-21T07:00', '1', '粤L66666', '惠州', '1', '1', 'A001', '666', '666', '', '6666', '2018-04-23T10:00', 'TCL', '2018-04-23 21:53:24', '', '0');
INSERT INTO `t_order` VALUES ('67', '20180420201537', 'A026', '45', '天然气', '1000', '2018-04-20 20:15:37', '2018-04-21T07:00', null, null, '惠州', '0', null, null, null, null, null, null, null, '', null, '', '0');
INSERT INTO `t_order` VALUES ('69', '20180423102544', 'A069', '47', '石油', '100000', '2018-04-23 10:25:44', '2018-04-24T12:00', null, null, '北京', '0', null, null, null, null, null, null, null, '', null, '2018-04-23 10:32:05', '1');
INSERT INTO `t_order` VALUES ('70', '20180423112105', 'A099', '48', '11', '11111', '2018-04-23 11:21:05', '2018-04-11T12:00', null, '', '惠州', '0', null, '', '', '', '', '0', '', '', '2018-04-23 11:21:10', '2018-04-23 11:21:19', '1');

-- ----------------------------
-- Table structure for t_role
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `driver_id` int(11) DEFAULT NULL COMMENT '司机ID',
  `driver_name` char(20) DEFAULT NULL COMMENT '司机名称',
  `order_manage` tinyint(4) DEFAULT NULL COMMENT '订单管理权限',
  `driver_manage` tinyint(4) DEFAULT NULL COMMENT '用户管理权限',
  `car_manage` tinyint(4) DEFAULT NULL COMMENT '车辆管理权限',
  `role_manage` tinyint(4) DEFAULT NULL COMMENT '角色管理权限',
  `log_manage` tinyint(4) DEFAULT NULL COMMENT '日志管理权限',
  `create_time` char(19) DEFAULT NULL COMMENT '创建记录时间',
  `update_time` char(19) DEFAULT NULL COMMENT '修改记录时间',
  `delete_time` char(19) DEFAULT NULL COMMENT '删除记录时间',
  `status` tinyint(4) DEFAULT '0' COMMENT '删除状态，0表示未删除，1表示已删除',
  PRIMARY KEY (`id`),
  KEY `driver_id` (`driver_id`),
  CONSTRAINT `t_role_ibfk_1` FOREIGN KEY (`driver_id`) REFERENCES `t_driver` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_role
-- ----------------------------
INSERT INTO `t_role` VALUES ('8', '1', '郑文', '1', '0', '0', '0', '0', '2018-04-21 10:09:22', '2018-04-21 11:17:57', '', '0');
INSERT INTO `t_role` VALUES ('9', '2', '赖俊强', '1', '1', '1', '0', '0', '2018-04-21 10:28:17', '2018-04-21 14:44:19', '', '0');
INSERT INTO `t_role` VALUES ('16', '4', '张三', '1', '1', '0', '0', '0', '2018-04-21 11:13:47', '2018-04-21 11:18:49', '', '0');
