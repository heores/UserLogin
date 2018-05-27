/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : student

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2018-04-18 10:32:55
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `items`
-- ----------------------------
DROP TABLE IF EXISTS `items`;
CREATE TABLE `items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `picture` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of items
-- ----------------------------
INSERT INTO `items` VALUES ('1', '沃特篮球鞋', '佛山', '180', '500', '001.jpg');
INSERT INTO `items` VALUES ('2', '安踏运动鞋', '福州', '120', '800', '002.jpg');
INSERT INTO `items` VALUES ('3', '耐克运动鞋', '广州', '500', '1000', '003.jpg');
INSERT INTO `items` VALUES ('4', '阿迪达斯T血衫', '上海', '388', '600', '004.jpg');
INSERT INTO `items` VALUES ('5', '李宁文化衫', '广州', '180', '900', '005.jpg');
INSERT INTO `items` VALUES ('6', '小米3', '北京', '1999', '3000', '006.jpg');
INSERT INTO `items` VALUES ('7', '小米2S', '北京', '1299', '1000', '007.jpg');
INSERT INTO `items` VALUES ('8', 'thinkpad笔记本', '北京', '6999', '500', '008.jpg');
INSERT INTO `items` VALUES ('9', 'dell笔记本', '北京', '3999', '500', '009.jpg');
INSERT INTO `items` VALUES ('10', 'ipad5', '北京', '5999', '500', '010.jpg');

-- ----------------------------
-- Table structure for `stay`
-- ----------------------------
DROP TABLE IF EXISTS `stay`;
CREATE TABLE `stay` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stay
-- ----------------------------
INSERT INTO `stay` VALUES ('1', 'admin', '通知', '晚上20：00开会');
INSERT INTO `stay` VALUES ('2', 'admin', '测试', '测试留言功能');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `addr` varchar(255) DEFAULT NULL,
  `rdate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`,`username`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', 'admin', '13132468215', 'beijing', '2012-11-21');
INSERT INTO `user` VALUES ('2', 'user', 'user', null, null, null);
INSERT INTO `user` VALUES ('3', 'qwq', 'asa', null, null, null);
INSERT INTO `user` VALUES ('4', 'zhangshan', '123456', null, null, null);
