/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : ewmadmin

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2019-02-25 12:02:21
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for ewmadmin
-- ----------------------------
DROP TABLE IF EXISTS `ewmadmin`;
CREATE TABLE `ewmadmin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adminname` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `custom1` varchar(255) DEFAULT NULL,
  `custom2` varchar(255) DEFAULT NULL,
  `custom3` varchar(255) DEFAULT NULL,
  `custom4` varchar(255) DEFAULT NULL,
  `custom5` varchar(255) DEFAULT NULL,
  `custom6` varchar(255) DEFAULT NULL,
  `urls` varchar(255) DEFAULT NULL,
  `appid` varchar(255) DEFAULT NULL,
  `userkey` varchar(255) DEFAULT NULL,
  `fkok` int(2) DEFAULT NULL,
  `jiekou` varchar(255) DEFAULT NULL,
  `fanhui` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ewmadmin
-- ----------------------------
INSERT INTO `ewmadmin` VALUES ('1', 'admin', 'e10adc3949ba59abbe56e057f20f883e', 'add_balance', '1', 'approved', '1541179525', '1000000', '0', '1', 'haokan.life', '153906557620544', '77052307', '1', 'haokan.life/ldpay/tiaozhuan.php', 'haokan.life/ldpay/jieshou.php');

-- ----------------------------
-- Table structure for ewmddh
-- ----------------------------
DROP TABLE IF EXISTS `ewmddh`;
CREATE TABLE `ewmddh` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pay` varchar(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `cny` varchar(255) DEFAULT NULL,
  `uid` varchar(255) DEFAULT NULL,
  `appid` varchar(255) DEFAULT NULL,
  `timm` varchar(255) DEFAULT NULL,
  `dingdanok` int(8) DEFAULT '0',
  `ddh` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=518 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ewmddh
-- ----------------------------

-- ----------------------------
-- Table structure for ewmszb
-- ----------------------------
DROP TABLE IF EXISTS `ewmszb`;
CREATE TABLE `ewmszb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pay` varchar(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `cny` varchar(255) DEFAULT NULL,
  `appid` varchar(255) DEFAULT NULL,
  `picurl` varchar(255) DEFAULT NULL,
  `ewmurl` varchar(255) DEFAULT NULL,
  `fenzuid` varchar(255) DEFAULT NULL,
  `timm` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ewmszb
-- ----------------------------
INSERT INTO `ewmszb` VALUES ('59', '1', '298.00', '298.00', '153906557620544', 'hejjf1378041562.png', 'https://qr.alipay.com/fkx067477sv4nn3qzggcx5d', '5', '1541860466');
INSERT INTO `ewmszb` VALUES ('58', '1', '298.04', '298.00', '153906557620544', 'uaqjm1106833752.png', 'https://qr.alipay.com/fkx069390wgurezfb2colb3', '5', '1541814212');
INSERT INTO `ewmszb` VALUES ('57', '1', '298.03', '298.00', '153906557620544', 'xhmhy1082731396.png', 'https://qr.alipay.com/fkx08719davhcuncev8sza5', '5', '1541828852');
INSERT INTO `ewmszb` VALUES ('55', '1', '298.01', '298.00', '153906557620544', 'nsssv1221889335.png', 'https://qr.alipay.com/fkx03686cjhbeneibanaof3', '5', '1541854398');
INSERT INTO `ewmszb` VALUES ('56', '1', '298.02', '298.00', '153906557620544', 'fobyn1187074822.png', 'https://qr.alipay.com/fkx09569o9vrjza606it02a', '5', '1541828850');
INSERT INTO `ewmszb` VALUES ('37', '3', '298.00', '298.00', '153906557620544', 'qacgz1246216946.png', 'wxp://f2f1OSloSEKlcOQdQKHKEIJqmVwfMgwzN9KK', '5', '1541938986');
INSERT INTO `ewmszb` VALUES ('38', '3', '298.01', '298.00', '153906557620544', 'bizkn1173747196.png', 'wxp://f2f1szj5XrEyiBQZutgPimp79FlNzJveAH97', '5', '1541937293');
INSERT INTO `ewmszb` VALUES ('39', '3', '298.02', '298.00', '153906557620544', 'iiyxz1310514922.png', 'wxp://f2f1I871e2WwjxOkIxPNTN2kU9c7Z64PBMe5', '5', '1541906583');
INSERT INTO `ewmszb` VALUES ('40', '3', '298.03', '298.00', '153906557620544', 'bgrdp1007483493.png', 'wxp://f2f1Gq2yJfRn9FdGlYgi26XUBEfLB6YpAVUu', '5', '1541906867');
INSERT INTO `ewmszb` VALUES ('41', '3', '298.04', '298.00', '153906557620544', 'dtnxz1234566223.png', 'wxp://f2f1uuWJbYBBO2hD2RxolI-mjNjhVlRE83hi', '5', '1541906612');
INSERT INTO `ewmszb` VALUES ('42', '3', '298.06', '298.00', '153906557620544', 'wnwpc1122901988.png', 'wxp://f2f1aYRP8aSsIjiyY-HPTMstN-Md1MTXbanB', '5', '1541906617');
INSERT INTO `ewmszb` VALUES ('43', '3', '298.07', '298.00', '153906557620544', 'upths1106132956.png', 'wxp://f2f1xFYlGotUKsK2uRSsL57OPEMjPeg0lVPK', '5', '1541857711');
INSERT INTO `ewmszb` VALUES ('44', '3', '298.08', '298.00', '153906557620544', 'ylscr1405710465.png', 'wxp://f2f18qjuhP0mLtumectGXKN4bvGTHzAN102F', '5', '1541857815');
INSERT INTO `ewmszb` VALUES ('45', '2', '298.00', '298.00', '153906557620544', 'tupkj1065636995.png', 'https://i.qianbao.qq.com/wallet/sqrcode.htm?m=tenpay&amp;f=wallet&amp;a=1&amp;ac=430CE2526EAC0304E5E93F69F6CC86BD0634E4AB28337CD4B641BC5BDFC3F3B16F09DCD0A5FAECF2&amp;u=644777789&amp;n=%E8%81%9A%E5%8F%8B%E4%BC%A0%E5%AA%92', '5', '1541906520');
INSERT INTO `ewmszb` VALUES ('46', '2', '298.01', '298.00', '153906557620544', 'uqyop1050369667.png', 'https://i.qianbao.qq.com/wallet/sqrcode.htm?m=tenpay&amp;f=wallet&amp;a=1&amp;ac=430CE2526EAC03045D314032F8E9A917B6B9D8DEA1490A7DB641BC5BDFC3F3B16F09DCD0A5FAECF2&amp;u=644777789&amp;n=%E8%81%9A%E5%8F%8B%E4%BC%A0%E5%AA%92', '5', '1541906615');
INSERT INTO `ewmszb` VALUES ('47', '2', '298.02', '298.00', '153906557620544', 'orhrl1078564167.png', 'https://i.qianbao.qq.com/wallet/sqrcode.htm?m=tenpay&amp;f=wallet&amp;a=1&amp;ac=430CE2526EAC030460F3A61E46FC8D544C683ED2679301C2B641BC5BDFC3F3B16F09DCD0A5FAECF2&amp;u=644777789&amp;n=%E8%81%9A%E5%8F%8B%E4%BC%A0%E5%AA%92', '5', '1541906618');
INSERT INTO `ewmszb` VALUES ('48', '2', '298.03', '298.00', '153906557620544', 'tidvq1010561987.png', 'https://i.qianbao.qq.com/wallet/sqrcode.htm?m=tenpay&amp;f=wallet&amp;a=1&amp;ac=430CE2526EAC03049A10F580AD471118FD6303593CA7DE14B641BC5BDFC3F3B16F09DCD0A5FAECF2&amp;u=644777789&amp;n=%E8%81%9A%E5%8F%8B%E4%BC%A0%E5%AA%92', '5', '1541431625');
INSERT INTO `ewmszb` VALUES ('49', '2', '298.04', '298.00', '153906557620544', 'jzome1190879140.png', 'https://i.qianbao.qq.com/wallet/sqrcode.htm?m=tenpay&amp;f=wallet&amp;a=1&amp;ac=430CE2526EAC03043D5642A8D9F8FFC0E5947AB43913ED87B641BC5BDFC3F3B16F09DCD0A5FAECF2&amp;u=644777789&amp;n=%E8%81%9A%E5%8F%8B%E4%BC%A0%E5%AA%92', '5', '1541431677');

-- ----------------------------
-- Table structure for ewmzu
-- ----------------------------
DROP TABLE IF EXISTS `ewmzu`;
CREATE TABLE `ewmzu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `zuname` varchar(20) DEFAULT NULL,
  `money` float DEFAULT NULL,
  `appid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ewmzu
-- ----------------------------
INSERT INTO `ewmzu` VALUES ('5', '充值298元', '298', '153906557620544');
