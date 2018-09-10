/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50722
Source Host           : localhost:3306
Source Database       : manager_system

Target Server Type    : MYSQL
Target Server Version : 50722
File Encoding         : 65001

Date: 2018-09-10 13:54:49
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for agent
-- ----------------------------
DROP TABLE IF EXISTS `agent`;
CREATE TABLE `agent` (
  `id` int(255) NOT NULL,
  `ygmc` varchar(255) NOT NULL,
  `xsje` varchar(255) DEFAULT NULL,
  `thje` varchar(255) DEFAULT NULL,
  `shje` varchar(255) DEFAULT NULL,
  `wsje` varchar(255) DEFAULT NULL,
  `czy` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of agent
-- ----------------------------
INSERT INTO `agent` VALUES ('13', '小王', '0', '0', '0', '0', 'admin');
INSERT INTO `agent` VALUES ('14', '李总', '0', '0', '0', '0', 'admin');
INSERT INTO `agent` VALUES ('15', '小刘', '0', '0', '0', '0', 'admin');

-- ----------------------------
-- Table structure for ck
-- ----------------------------
DROP TABLE IF EXISTS `ck`;
CREATE TABLE `ck` (
  `id` int(255) NOT NULL,
  `ckmc` varchar(255) NOT NULL,
  `jm` varchar(255) DEFAULT NULL,
  `fzr` varchar(255) DEFAULT NULL,
  `lxdh` varchar(255) DEFAULT NULL,
  `dz` varchar(255) DEFAULT NULL,
  `bz` varchar(255) DEFAULT NULL,
  `mrck` varchar(255) DEFAULT NULL,
  `pjck` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ck
-- ----------------------------
INSERT INTO `ck` VALUES ('11', '主仓库', 'ZCK', '', '                                                  ', '', '', 'Y', 'Y');
INSERT INTO `ck` VALUES ('12', '仓库1', 'CK1', '', '                                                  ', '', '', 'N', 'N');

-- ----------------------------
-- Table structure for customer
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `id` int(255) NOT NULL,
  `customer` varchar(255) NOT NULL,
  `jm` varchar(255) DEFAULT NULL,
  `lxr` varchar(255) DEFAULT NULL,
  `lxdh` varchar(255) DEFAULT NULL,
  `lxdz` varchar(255) DEFAULT NULL,
  `bz` varchar(255) DEFAULT NULL,
  `lwje` varchar(255) DEFAULT NULL,
  `mrkh` varchar(255) DEFAULT NULL,
  `pl` varchar(255) DEFAULT NULL,
  `lx` varchar(255) DEFAULT NULL,
  `dq` varchar(255) DEFAULT NULL,
  `jy` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of customer
-- ----------------------------
INSERT INTO `customer` VALUES ('11', '普通客户', 'PTKH', '', '                                                  ', '', '\n\n\n\n\n', '0', 'Y', '33', '', '', 'N');
INSERT INTO `customer` VALUES ('20', '五星手机大卖场', 'WXSJDMC', '', '                                                  ', '', '', '0', 'N', '0', '', '', 'N');
INSERT INTO `customer` VALUES ('21', '广志手机销售中心', 'GZSJXSZX', '', '                                                  ', '', '', '0', 'N', '0', '', '', 'N');
INSERT INTO `customer` VALUES ('22', '三星手机专卖店', 'SXSJZMD', '', '                                                  ', '', '', '0', 'N', '1', '', '', 'N');

-- ----------------------------
-- Table structure for goods_inf
-- ----------------------------
DROP TABLE IF EXISTS `goods_inf`;
CREATE TABLE `goods_inf` (
  `goods_id` varchar(255) NOT NULL,
  `goods_name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `banned` varchar(255) DEFAULT NULL,
  `goods_type` varchar(255) DEFAULT NULL,
  `unit` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `goods_barcode` varchar(255) DEFAULT NULL,
  `min_inventory` varchar(255) DEFAULT NULL,
  `pre_in_price` int(10) DEFAULT NULL,
  `pre_out_price` int(10) DEFAULT NULL,
  `sales commission` varchar(255) DEFAULT NULL,
  `manufacturer` varchar(255) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`goods_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods_inf
-- ----------------------------
INSERT INTO `goods_inf` VALUES ('5500001', '波导D610', 'BDD610', 'False', '波导', '部', 'D610', '银', '', '0', '1150', '0', '0', '波导', '');
INSERT INTO `goods_inf` VALUES ('5500002', '波导D610', 'BDD610', 'False', '波导', '部', 'D610', '蓝', '', '0', '1150', '0', '0', '波导', '');
INSERT INTO `goods_inf` VALUES ('5500003', '波导D610', 'BDD610', 'False', '波导', '部', 'D610', '黑', '', '0', '1150', '0', '0', '波导', '');
INSERT INTO `goods_inf` VALUES ('5500004', '波导D650', 'BDD650', 'False', '波导', '部', 'D650', '蓝', '', '0', '0', '0', '0', '', '');
INSERT INTO `goods_inf` VALUES ('5600001', '飞利浦680', 'FLP680', 'False', '飞利浦', '部', '680', '黑', '', '0', '1650', '0', '0', '', '');
INSERT INTO `goods_inf` VALUES ('5600002', '飞利浦9@9a', 'FLP9@9a', 'False', '飞利浦', '部', '9@9a', '黑', '', '0', '1100', '0', '0', '', '');
INSERT INTO `goods_inf` VALUES ('5700001', '摩托罗拉L2', 'MTLLL2', 'False', '摩托罗拉', '部', 'L2', '统一', '', '0', '800', '0', '0', '摩托罗拉', '');
INSERT INTO `goods_inf` VALUES ('5700002', '摩托罗拉E680g', 'MTLLE680g', 'False', '摩托罗拉', '部', 'E680g', '统一', '', '0', '2400', '2800', '0', '', '');
INSERT INTO `goods_inf` VALUES ('5700003', '摩托罗拉 V361', 'MTLL V361', 'False', '摩托罗拉', '部', 'V361', '黑', '', '0', '0', '0', '0', '', '');
INSERT INTO `goods_inf` VALUES ('5700004', '摩托罗拉 A1200', 'MTLL A1200', 'False', '摩托罗拉', '部', 'A1200', '混合', '', '0', '3450', '0', '0', '', '');
INSERT INTO `goods_inf` VALUES ('5700005', '摩托罗拉 E680i', 'MTLL E680i', 'False', '摩托罗拉', '部', 'E680i', '统一', '', '0', '2000', '0', '0', '', '');
INSERT INTO `goods_inf` VALUES ('5700006', '摩托罗拉 A780', 'MTLL A780', 'False', '摩托罗拉', '部', 'A780', '统一', '', '0', '2100', '0', '0', '', '');
INSERT INTO `goods_inf` VALUES ('5700007', '摩托罗拉 A1000', 'MTLL A1000', 'False', '摩托罗拉', '部', 'A1000', '黑', '', '0', '0', '0', '0', '', '');
INSERT INTO `goods_inf` VALUES ('5800001', '诺基亚1255', 'NJY1255', 'False', '诺基亚', '部', '1255', '黑', '', '0', '500', '0', '0', '', '');
INSERT INTO `goods_inf` VALUES ('5800002', '诺基亚2355', 'NJY2355', 'False', '诺基亚', '部', '2355', '统一', '', '0', '900', '0', '0', '', '');
INSERT INTO `goods_inf` VALUES ('5800003', '诺基亚3250', 'NJY3250', 'False', '诺基亚', '部', '3250', '统一', '', '0', '2900', '0', '0', '', '');
INSERT INTO `goods_inf` VALUES ('5800004', '诺基亚6268', 'NJY6268', 'False', '诺基亚', '部', '6268', '统一', '', '0', '2850', '0', '0', '', '');
INSERT INTO `goods_inf` VALUES ('5800005', '诺基亚 N70', 'NJY N70', 'False', '诺基亚', '部', 'N70', '统一', '', '0', '3000', '0', '0', '', '');
INSERT INTO `goods_inf` VALUES ('5800006', '诺基亚 3230', 'NJY 3230', 'False', '诺基亚', '部', '3230', '统一', '', '0', '1750', '0', '0', '', '');
INSERT INTO `goods_inf` VALUES ('5800007', '诺基亚 7610', 'NJY 7610', 'False', '诺基亚', '部', '7610', '统一', '', '0', '1900', '0', '0', '', '');
INSERT INTO `goods_inf` VALUES ('5800008', '诺基亚 6681', 'NJY 6681', 'False', '诺基亚', '部', '6681', '统一', '', '0', '2500', '0', '0', '', '');
INSERT INTO `goods_inf` VALUES ('5800009', '诺基亚 6670', 'NJY 6670', 'False', '诺基亚', '部', '6670', '统一', '', '0', '1750', '0', '0', '', '');
INSERT INTO `goods_inf` VALUES ('5800010', '诺基亚 N80', 'NJY N80', 'False', '诺基亚', '部', 'N80', '统一', '', '0', '4600', '0', '0', '', '');
INSERT INTO `goods_inf` VALUES ('5800011', '诺基亚 6280', 'NJY 6280', 'False', '诺基亚', '部', '6280', '统一', '', '0', '0', '0', '0', '', '');
INSERT INTO `goods_inf` VALUES ('5900001', '索尼爱立信J100c', 'SNALXJ100c', 'False', '索尼爱立信', '部', 'J100c', '白', '', '0', '350', '0', '0', '', '');
INSERT INTO `goods_inf` VALUES ('5900002', '索尼爱立信K510c', 'SNALXK510c', 'False', '索尼爱立信', '部', 'K510c', '统一', '', '0', '0', '0', '0', '', '');
INSERT INTO `goods_inf` VALUES ('5900003', '索尼爱立信W300c', 'SNALXW300c', 'False', '索尼爱立信', '部', 'W300c', '统一', '', '0', '1650', '0', '0', '', '');
INSERT INTO `goods_inf` VALUES ('5900004', '索尼爱立信W810c', 'SNALXW810c', 'False', '索尼爱立信', '部', 'W810c', '统一', '', '0', '3000', '0', '0', '', '');
INSERT INTO `goods_inf` VALUES ('5900007', '索尼爱立信 W850c', 'SNALX W850c', 'False', '索尼爱立信', '部', 'W850c', '统一', '', '0', '0', '0', '0', '', '');
INSERT INTO `goods_inf` VALUES ('5900008', '索尼爱立信 W800c', 'SNALX W800c', 'False', '索尼爱立信', '部', 'W800c', '统一', '', '0', '2600', '0', '0', '', '');
INSERT INTO `goods_inf` VALUES ('5900009', '索尼爱立信 W700c', 'SNALX W700c', 'False', '索尼爱立信', '部', 'W700c ', '统一', '', '0', '0', '0', '0', '', '');
INSERT INTO `goods_inf` VALUES ('6000001', '三星SCH-F359', 'SXSCH-F359', 'False', '三星', '部', 'SCH-F359', '黑', '', '0', '1650', '0', '0', '', '');
INSERT INTO `goods_inf` VALUES ('6000002', '三星SCH-W399', 'SXSCH-W399', 'False', '三星', '部', 'SCH-W399', '黑', '', '0', '3600', '0', '0', '', '');
INSERT INTO `goods_inf` VALUES ('6000003', '三星SGH-D528', 'SXSGH-D528', 'False', '三星', '部', 'SGH-D528', '黑', '', '0', '2800', '0', '0', '', '');
INSERT INTO `goods_inf` VALUES ('6100001', 'NECN1306', 'NECN1306', 'False', 'NEC', '部', 'N1306', '统一', '', '0', '550', '0', '0', '', '');
INSERT INTO `goods_inf` VALUES ('6100002', 'NECN8202', 'NECN8202', 'False', 'NEC', '部', 'N8202', '统一', '', '0', '2200', '0', '0', '', '');
INSERT INTO `goods_inf` VALUES ('6100003', 'NEC1102', 'NEC1102', 'False', 'NEC', '部', '1102', '统一', '', '0', '300', '0', '0', '', '');
INSERT INTO `goods_inf` VALUES ('6100004', 'NEC6305', 'NEC6305', 'False', 'NEC', '部', '6305', '统一', '', '0', '0', '0', '0', '', '');
INSERT INTO `goods_inf` VALUES ('6200001', '松下 A210', 'SX A210', 'False', '松下', '部', 'A210', '白', '', '0', '500', '0', '0', '', '');
INSERT INTO `goods_inf` VALUES ('6200002', '松下 MX7', 'SX MX7', 'False', '松下', '部', 'MX7', '黑', '', '0', '2050', '0', '0', '', '');
INSERT INTO `goods_inf` VALUES ('6200003', '松下 SA6', 'SX SA6', 'False', '松下', '部', 'SA6', '统一', '', '0', '1150', '0', '0', '', '');
INSERT INTO `goods_inf` VALUES ('6200004', '松下 VS6', 'SX VS6', 'False', '松下', '部', 'VS6', '统一', '', '0', '1650', '0', '0', '', '');
INSERT INTO `goods_inf` VALUES ('6300001', 'TCL M360', 'TCL M360', 'False', 'TCL', '部', 'M360', '白', '', '0', '0', '0', '0', '', '');
INSERT INTO `goods_inf` VALUES ('6300002', 'TCL M398', 'TCL M398', 'False', 'TCL', '部', 'M398', '统一', '', '0', '0', '0', '0', '', '');
INSERT INTO `goods_inf` VALUES ('6300003', 'TCL Q580', 'TCL Q580', 'False', 'TCL', '部', 'Q580', '统一', '', '0', '0', '0', '0', '', '');
INSERT INTO `goods_inf` VALUES ('6400001', '夏新 A660', 'XX A660', 'False', '夏新', '部', 'A660', '黑', '', '0', '1550', '0', '0', '', '');
INSERT INTO `goods_inf` VALUES ('6400002', '夏新 M630', 'XX M630', 'False', '夏新', '部', 'M630', '统一', '', '0', '1100', '0', '0', '', '');
INSERT INTO `goods_inf` VALUES ('6400003', '夏新 M636', 'XX M636', 'False', '夏新', '部', 'M636', '统一', '', '0', '1500', '0', '0', '', '');
INSERT INTO `goods_inf` VALUES ('6400004', '夏新 A320', 'XX A320', 'False', '夏新', '部', 'A320', '统一', '', '0', '550', '0', '0', '', '');
INSERT INTO `goods_inf` VALUES ('6600001', '联想 i717', 'LX i717', 'False', '联想', '部', 'i717', '黑', '', '0', '700', '0', '0', '', '');
INSERT INTO `goods_inf` VALUES ('6600002', '联想 P708', 'LX P708', 'False', '联想', '部', 'P708', '统一', '', '0', '750', '0', '0', '', '');
INSERT INTO `goods_inf` VALUES ('6600003', '联想 V920', 'LX V920', 'False', '联想', '部', 'V920', '统一', '', '0', '1500', '0', '0', '', '');
INSERT INTO `goods_inf` VALUES ('6700001', 'LG C960', 'LG C960', 'False', 'LG', '部', 'C960', '混合', '', '0', '0', '0', '0', '', '');
INSERT INTO `goods_inf` VALUES ('6700002', 'LG G912', 'LG G912', 'False', 'LG', '部', 'G912', '统一', '', '0', '2350', '0', '0', '', '');
INSERT INTO `goods_inf` VALUES ('6700003', 'LG C270', 'LG C270', 'False', 'LG', '部', 'C270', '统一', '', '0', '3050', '0', '0', '', '');
INSERT INTO `goods_inf` VALUES ('6900001', '德赛高容量商务电池', 'DSGRLSWDC', 'False', '电池', '块', 'D8210L1100', '统一', '', '0', '60', '0', '0', '广东惠州', '用机型:NOKIA 3610 5210 6500 6510 7650 8210 8250 8310 8850 8890 8910 8910i');
INSERT INTO `goods_inf` VALUES ('6900002', '飞毛腿', 'FMT', 'False', '电池', '块', '800MA', '统一', '', '0', '75', '0', '0', '', '适合摩托罗拉');
INSERT INTO `goods_inf` VALUES ('7000001', '普通座充电器', 'PTZCDQ', 'False', '充电器', '部', '', '', '', '0', '0', '0', '0', '', '适合摩托罗拉机型');
INSERT INTO `goods_inf` VALUES ('7100001', '索爱蓝牙耳机', 'SALYEJ', 'False', '耳机', '部', '', '', '', '0', '85', '0', '0', '', '');
INSERT INTO `goods_inf` VALUES ('7200001', '手机套', 'SJT', 'False', '其它', '个', '真皮', '黑', '', '0', '5', '0', '0', '', '');

-- ----------------------------
-- Table structure for import_order
-- ----------------------------
DROP TABLE IF EXISTS `import_order`;
CREATE TABLE `import_order` (
  `id` varchar(255) NOT NULL,
  `manufacturer` int(255) NOT NULL,
  `ck` int(255) NOT NULL,
  `date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `yfje` int(10) NOT NULL,
  `sfje` int(10) NOT NULL,
  `agent` varchar(255) NOT NULL,
  `bz` varchar(255) DEFAULT NULL,
  `czy` varchar(255) DEFAULT NULL,
  `bid` varchar(255) DEFAULT NULL,
  `yhje` int(10) DEFAULT NULL,
  `num` varchar(255) DEFAULT NULL,
  `th` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of import_order
-- ----------------------------
INSERT INTO `import_order` VALUES ('CJ060605010001', '33', '11', '2006-12-25 00:00:00', '67350', '67350', '13', '', 'admin', '', '0', '0', '');
INSERT INTO `import_order` VALUES ('CJ060605010002', '32', '11', '2006-12-25 00:00:00', '28800', '28800', '13', '', 'admin', '', '0', '0', '');
INSERT INTO `import_order` VALUES ('CJ060605010003', '34', '11', '2006-12-25 00:00:00', '17500', '17500', '13', '', 'admin', '', '0', '0', '');
INSERT INTO `import_order` VALUES ('CJ060605010004', '35', '11', '2006-12-25 00:00:00', '11350', '11350', '13', '', 'admin', '', '0', '0', '');
INSERT INTO `import_order` VALUES ('CJ060605010005', '31', '11', '2006-12-25 00:00:00', '7150', '7150', '13', '', 'admin', '', '0', '0', '');
INSERT INTO `import_order` VALUES ('CJ060605010006', '30', '11', '2006-12-25 00:00:00', '4600', '4600', '13', '', 'admin', '', '0', '0', '');
INSERT INTO `import_order` VALUES ('CJ060605010007', '2', '11', '2006-12-25 00:00:00', '7550', '7550', '13', '', 'admin', '', '0', '0', '');
INSERT INTO `import_order` VALUES ('CJ060605010008', '2', '11', '2006-12-25 00:00:00', '16000', '16000', '13', '', 'admin', '', '0', '0', '');
INSERT INTO `import_order` VALUES ('CJ060605010009', '2', '11', '2006-12-25 00:00:00', '13500', '13500', '13', '', 'admin', '', '0', '0', '');
INSERT INTO `import_order` VALUES ('CJ060605010010', '2', '11', '2006-12-25 00:00:00', '10350', '10350', '13', '', 'admin', '', '0', '0', '');
INSERT INTO `import_order` VALUES ('CJ060605010011', '2', '11', '2006-12-25 00:00:00', '5400', '5400', '13', '', 'admin', '', '0', '0', '');
INSERT INTO `import_order` VALUES ('CJ060605010012', '2', '11', '2006-12-25 00:00:00', '1335', '1335', '13', '', 'admin', '', '0', '0', '');
INSERT INTO `import_order` VALUES ('CJ061221010001', '32', '11', '2006-12-25 00:00:00', '12000', '12000', '13', '', 'admin', '', '0', '0', '');
INSERT INTO `import_order` VALUES ('CJ070226010001', '32', '11', '2007-02-26 00:00:00', '1900', '1900', '13', '', 'admin', '', '0', '0', '');
INSERT INTO `import_order` VALUES ('CJ070424010001', '33', '11', '2007-04-24 00:00:00', '95000', '95000', '13', '', 'admin', '', '0', '0', '');
INSERT INTO `import_order` VALUES ('CJ091225010001', '33', '11', '2009-12-25 00:00:00', '2500', '2500', '13', '', 'admin', '', '0', '0', '');
INSERT INTO `import_order` VALUES ('CJ100819010001', '2', '11', '2010-08-19 00:00:00', '2500', '2500', '13', '', 'admin', '', '0', '0', '');

-- ----------------------------
-- Table structure for manufacturer
-- ----------------------------
DROP TABLE IF EXISTS `manufacturer`;
CREATE TABLE `manufacturer` (
  `id` int(255) NOT NULL,
  `ghsmc` varchar(255) NOT NULL,
  `jm` varchar(255) DEFAULT NULL,
  `lxr` varchar(255) DEFAULT NULL,
  `lxdh` varchar(255) DEFAULT NULL,
  `lxdz` varchar(255) DEFAULT NULL,
  `bz` varchar(255) DEFAULT NULL,
  `lwje` varchar(255) DEFAULT NULL,
  `mrghs` varchar(255) DEFAULT NULL,
  `pl` varchar(255) DEFAULT NULL,
  `lx` varchar(255) DEFAULT NULL,
  `dq` varchar(255) DEFAULT NULL,
  `jy` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of manufacturer
-- ----------------------------
INSERT INTO `manufacturer` VALUES ('2', '普通供货商', 'PTGHS', '', '                                                  ', '', '', '0', 'Y', '24', '', '', 'N');
INSERT INTO `manufacturer` VALUES ('30', '波导供货商', 'BDGHS', '李先生', '                                                  ', '', '', '0', 'N', '2', '', '', 'N');
INSERT INTO `manufacturer` VALUES ('31', '飞利浦供货商', 'FLPGHS', '王先生', '                                                  ', '', '', '0', 'N', '2', '', '', 'N');
INSERT INTO `manufacturer` VALUES ('32', '摩托罗拉供货商', 'MTLLGHS', '', '                                                  ', '', '', '0', 'N', '6', '', '', 'N');
INSERT INTO `manufacturer` VALUES ('33', '诺基亚供货商', 'NJYGHS', '', '                                                  ', '', '', '0', 'N', '6', '', '', 'N');
INSERT INTO `manufacturer` VALUES ('34', '索尼爱立信供货商', 'SNALXGHS', '', '                                                  ', '', '', '0', 'N', '3', '', '', 'N');
INSERT INTO `manufacturer` VALUES ('35', '三星供货商', 'SXGHS', '', '                                                  ', '', '', '0', 'N', '2', '', '', 'N');

-- ----------------------------
-- Table structure for sales_order
-- ----------------------------
DROP TABLE IF EXISTS `sales_order`;
CREATE TABLE `sales_order` (
  `id` varchar(255) NOT NULL,
  `customer` int(255) NOT NULL,
  `ck` int(255) NOT NULL,
  `date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `yfje` varchar(255) NOT NULL,
  `sfje` varchar(255) NOT NULL,
  `agent` varchar(255) NOT NULL,
  `bz` varchar(255) DEFAULT NULL,
  `czy` varchar(255) DEFAULT NULL,
  `bid` varchar(255) DEFAULT NULL,
  `yhje` varchar(255) DEFAULT NULL,
  `kh_gd` varchar(255) DEFAULT NULL,
  `ishh` varchar(255) DEFAULT NULL,
  `ispos` varchar(255) DEFAULT NULL,
  `xj` varchar(255) DEFAULT NULL,
  `yhk` varchar(255) DEFAULT NULL,
  `djq` varchar(255) DEFAULT NULL,
  `fkje` varchar(255) DEFAULT NULL,
  `zlje` varchar(255) DEFAULT NULL,
  `wxid` varchar(255) DEFAULT NULL,
  `dhflag` varchar(255) DEFAULT NULL,
  `alipay` varchar(255) DEFAULT NULL,
  `wx` varchar(255) DEFAULT NULL,
  `fkfs` varchar(255) DEFAULT NULL,
  `PayNo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sales_order
-- ----------------------------
INSERT INTO `sales_order` VALUES ('XS060605010001', '11', '11', '2006-12-25 00:00:00', '3430', '3430', '15', '', 'admin', '', '0', '', 'N', 'N', '3430', '0', '0', '', '', '', 'N', '0', '0', '现金', '');
INSERT INTO `sales_order` VALUES ('XS060605010002', '11', '11', '2006-12-25 00:00:00', '3930', '3930', '15', '', 'admin', '', '0', '', 'N', 'N', '3930', '0', '0', '', '', '', 'N', '0', '0', '现金', '');
INSERT INTO `sales_order` VALUES ('XS060605010003', '11', '11', '2006-12-25 00:00:00', '2050', '2050', '15', '', 'admin', '', '0', '', 'N', 'N', '2050', '0', '0', '', '', '', 'N', '0', '0', '现金', '');
INSERT INTO `sales_order` VALUES ('XS060605010004', '11', '11', '2006-12-25 00:00:00', '1900', '1900', '15', '', 'admin', '', '0', '', 'N', 'N', '1900', '0', '0', '', '', '', 'N', '0', '0', '现金', '');
INSERT INTO `sales_order` VALUES ('XS060605010005', '11', '11', '2006-12-25 00:00:00', '2500', '2500', '15', '', 'admin', '', '0', '', 'N', 'N', '2500', '0', '0', '', '', '', 'N', '0', '0', '现金', '');
INSERT INTO `sales_order` VALUES ('XS061221010001', '11', '11', '2006-12-25 00:00:00', '2800', '2800', '15', '', 'admin', '', '', '', 'N', 'N', '2800', '0', '0', '', '', '', 'N', '0', '0', '现金', '');
INSERT INTO `sales_order` VALUES ('XS061221010002', '22', '11', '2006-12-25 00:00:00', '3200', '3200', '15', '', 'admin', '', '0', '', 'N', 'N', '3200', '0', '0', '', '', '', 'N', '0', '0', '现金', '');
INSERT INTO `sales_order` VALUES ('XS061221010003', '11', '11', '2006-12-25 00:00:00', '3000', '3000', '15', '', 'admin', '', '0', '', 'N', 'N', '3000', '0', '0', '', '', '', 'N', '0', '0', '现金', '');
INSERT INTO `sales_order` VALUES ('XS061221110001', '0', '0', '2006-12-21 00:00:00', '80', '80', '13', ' ', 'admin', '', '0', '', 'N', 'N', '80', '0', '0', '', '', 'WX061221110001', 'N', '0', '0', '现金', '');
INSERT INTO `sales_order` VALUES ('XS061221110002', '0', '0', '2006-12-21 00:00:00', '90', '90', '13', ' ', 'admin', '', '0', '', 'N', 'N', '90', '0', '0', '', '', 'WX061221110002', 'N', '0', '0', '现金', '');
INSERT INTO `sales_order` VALUES ('XS061221110003', '0', '0', '2006-12-21 00:00:00', '50', '50', '13', ' ', 'admin', '', '0', '', 'N', 'N', '50', '0', '0', '', '', 'WX061221110003', 'N', '0', '0', '现金', '');
INSERT INTO `sales_order` VALUES ('XS061222010001', '11', '11', '2006-12-25 00:00:00', '2800', '2800', '15', '', 'admin', '', '', '', 'N', 'N', '2800', '0', '0', '', '', '', 'N', '0', '0', '现金', '');
INSERT INTO `sales_order` VALUES ('XS070105110001', '0', '0', '2007-01-05 00:00:00', '95', '95', '13', ' ', 'admin', '', '0', '', 'N', 'N', '95', '0', '0', '', '', 'WX070105110004', 'N', '0', '0', '现金', '');
INSERT INTO `sales_order` VALUES ('XS071227010001', '11', '11', '2007-12-27 00:00:00', '2800', '2800', '15', '', 'admin', '', '0', '', 'N', 'N', '2800', '0', '0', '', '', '', 'N', '0', '0', '现金', '');
INSERT INTO `sales_order` VALUES ('XS071227010002', '0', '11', '2007-12-27 00:00:00', '5', '5', '13', ' ', 'admin', '', '0', '', 'N', 'N', '5', '0', '0', '', '', 'WX071227010001', 'N', '0', '0', '现金', '');
INSERT INTO `sales_order` VALUES ('XS071227010003', '0', '11', '2007-12-27 00:00:00', '50', '50', '13', ' ', 'admin', '', '0', '', 'N', 'N', '50', '0', '0', '', '', 'WX071227010002', 'N', '0', '0', '现金', '');
INSERT INTO `sales_order` VALUES ('XS090312010001', '11', '11', '2009-03-12 00:00:00', '2800', '2800', '15', '', 'admin', '', '0', '', 'N', 'N', '2800', '0', '0', '', '', '', 'N', '0', '0', '现金', '');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', '123456');

-- ----------------------------
-- Table structure for warehouse
-- ----------------------------
DROP TABLE IF EXISTS `warehouse`;
CREATE TABLE `warehouse` (
  `id` int(255) NOT NULL,
  `goods_id` varchar(255) NOT NULL,
  `num` int(10) NOT NULL,
  `cost_price` int(10) NOT NULL,
  `ck` int(255) NOT NULL,
  `xssl` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of warehouse
-- ----------------------------
INSERT INTO `warehouse` VALUES ('261', '5800001', '5', '500', '11', '0');
INSERT INTO `warehouse` VALUES ('262', '5800002', '3', '900', '11', '0');
INSERT INTO `warehouse` VALUES ('263', '5800003', '2', '2900', '11', '0');
INSERT INTO `warehouse` VALUES ('264', '5800004', '5', '2850', '11', '0');
INSERT INTO `warehouse` VALUES ('265', '5800005', '1', '3000', '11', '1');
INSERT INTO `warehouse` VALUES ('266', '5800006', '3', '1750', '11', '2');
INSERT INTO `warehouse` VALUES ('267', '5800007', '52', '1900', '11', '0');
INSERT INTO `warehouse` VALUES ('268', '5800008', '5', '2500', '11', '0');
INSERT INTO `warehouse` VALUES ('269', '5800009', '4', '1750', '11', '1');
INSERT INTO `warehouse` VALUES ('270', '5800010', '2', '4600', '11', '0');
INSERT INTO `warehouse` VALUES ('271', '5700001', '6', '800', '11', '0');
INSERT INTO `warehouse` VALUES ('272', '5700002', '1', '2400', '11', '6');
INSERT INTO `warehouse` VALUES ('273', '5700004', '2', '3450', '11', '0');
INSERT INTO `warehouse` VALUES ('274', '5700005', '2', '2000', '11', '1');
INSERT INTO `warehouse` VALUES ('275', '5700006', '3', '2100', '11', '0');
INSERT INTO `warehouse` VALUES ('276', '5900001', '5', '350', '11', '0');
INSERT INTO `warehouse` VALUES ('277', '5900002', '2', '0', '11', '0');
INSERT INTO `warehouse` VALUES ('278', '5900003', '2', '1650', '11', '1');
INSERT INTO `warehouse` VALUES ('279', '5900004', '1', '3000', '11', '0');
INSERT INTO `warehouse` VALUES ('280', '5900008', '3', '2600', '11', '0');
INSERT INTO `warehouse` VALUES ('281', '6000001', '3', '1650', '11', '0');
INSERT INTO `warehouse` VALUES ('282', '6000002', '1', '3600', '11', '0');
INSERT INTO `warehouse` VALUES ('283', '6000003', '1', '2800', '11', '0');
INSERT INTO `warehouse` VALUES ('284', '5600001', '3', '1650', '11', '0');
INSERT INTO `warehouse` VALUES ('285', '5600002', '2', '1100', '11', '0');
INSERT INTO `warehouse` VALUES ('286', '5500001', '2', '1150', '11', '0');
INSERT INTO `warehouse` VALUES ('287', '5500002', '1', '1150', '11', '0');
INSERT INTO `warehouse` VALUES ('288', '5500003', '1', '1150', '11', '0');
INSERT INTO `warehouse` VALUES ('289', '6100001', '3', '550', '11', '0');
INSERT INTO `warehouse` VALUES ('290', '6100002', '2', '2200', '11', '0');
INSERT INTO `warehouse` VALUES ('291', '6100003', '5', '300', '11', '0');
INSERT INTO `warehouse` VALUES ('292', '6200001', '6', '500', '11', '0');
INSERT INTO `warehouse` VALUES ('293', '6200002', '2', '2050', '11', '0');
INSERT INTO `warehouse` VALUES ('294', '6200003', '2', '1150', '11', '0');
INSERT INTO `warehouse` VALUES ('295', '6200004', '4', '1650', '11', '0');
INSERT INTO `warehouse` VALUES ('296', '6400001', '2', '1550', '11', '0');
INSERT INTO `warehouse` VALUES ('297', '6400002', '1', '1100', '11', '0');
INSERT INTO `warehouse` VALUES ('298', '6400003', '4', '1500', '11', '0');
INSERT INTO `warehouse` VALUES ('299', '6400004', '6', '550', '11', '0');
INSERT INTO `warehouse` VALUES ('300', '6600001', '3', '700', '11', '0');
INSERT INTO `warehouse` VALUES ('301', '6600002', '5', '750', '11', '0');
INSERT INTO `warehouse` VALUES ('302', '6600003', '3', '1500', '11', '0');
INSERT INTO `warehouse` VALUES ('303', '6700002', '1', '2350', '11', '0');
INSERT INTO `warehouse` VALUES ('304', '6700003', '1', '3050', '11', '0');
INSERT INTO `warehouse` VALUES ('305', '6900001', '5', '60', '11', '0');
INSERT INTO `warehouse` VALUES ('306', '6900002', '10', '75', '11', '0');
INSERT INTO `warehouse` VALUES ('307', '7100001', '3', '85', '11', '0');
INSERT INTO `warehouse` VALUES ('308', '7200001', '5', '5', '11', '1');
