/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : ssm_crud_shixun

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2020-02-19 18:18:39
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tbl_classes`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_classes`;
CREATE TABLE `tbl_classes` (
  `classes_id` int(11) NOT NULL AUTO_INCREMENT,
  `classes_name` varchar(255) DEFAULT '',
  `classes_date` varchar(255) DEFAULT '',
  `classes_specialty` varchar(255) DEFAULT '',
  `classes_direction` varchar(255) DEFAULT '',
  PRIMARY KEY (`classes_id`),
  KEY `classes_name` (`classes_name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_classes
-- ----------------------------
INSERT INTO `tbl_classes` VALUES ('1', '软测162', '2016', '软件工程', '软件测试');
INSERT INTO `tbl_classes` VALUES ('2', '软开163', '2016', '软件工程', '软件开发');

-- ----------------------------
-- Table structure for `tbl_staff`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_staff`;
CREATE TABLE `tbl_staff` (
  `staff_id` int(11) NOT NULL AUTO_INCREMENT,
  `staff_number` int(11) DEFAULT NULL,
  `staff_mobile` varchar(255) DEFAULT '',
  `staff_name` varchar(255) DEFAULT '',
  `classes_id` int(11) DEFAULT NULL,
  `staff_gender` char(1) DEFAULT '',
  `staff_bitrh` date DEFAULT NULL,
  PRIMARY KEY (`staff_id`),
  KEY `staff_number` (`staff_number`),
  KEY `staff_name` (`staff_name`),
  KEY `staff_mobile` (`staff_mobile`),
  KEY `fk_classes_id_staff` (`classes_id`),
  CONSTRAINT `fk_classes_id_staff` FOREIGN KEY (`classes_id`) REFERENCES `tbl_classes` (`classes_id`)
) ENGINE=InnoDB AUTO_INCREMENT=163 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_staff
-- ----------------------------
INSERT INTO `tbl_staff` VALUES ('1', '22015', '15600000000', '张老师', '1', 'M', '1988-02-09');
INSERT INTO `tbl_staff` VALUES ('2', '12016', '17800001111', '何老师', '1', 'M', '1982-09-09');
INSERT INTO `tbl_staff` VALUES ('3', '202952', '15688889999', '老师a115b80', '2', 'F', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('4', '206397', '15688889999', '老师e57acc1', '2', 'F', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('5', '205347', '15688889999', '老师ed3aad2', '2', 'F', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('6', '204400', '15688889999', '老师1c9e203', '2', 'F', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('7', '203165', '15688889999', '老师1ae7fe4', '2', 'F', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('8', '203228', '15688889999', '老师b601b85', '2', 'F', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('9', '209084', '15688889999', '老师612cbf6', '2', 'F', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('10', '204324', '15688889999', '老师86ffbb7', '2', 'F', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('11', '206458', '15688889999', '老师cd4e058', '2', 'F', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('12', '202580', '15688889999', '老师cb9fdd9', '2', 'F', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('13', '203543', '15688889999', '老师c877be10', '2', 'F', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('14', '204804', '15688889999', '老师f8fb9011', '2', 'F', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('15', '208523', '15688889999', '老师95ad9912', '2', 'F', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('16', '203581', '15688889999', '老师2c574013', '2', 'F', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('17', '207646', '15688889999', '老师6a492014', '2', 'F', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('18', '204135', '15688889999', '老师de763d15', '2', 'F', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('19', '201512', '15688889999', '老师acdb4616', '2', 'F', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('20', '208085', '15688889999', '老师13112f17', '2', 'F', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('21', '208086', '15688889999', '老师3cf3a618', '2', 'F', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('22', '201923', '15688889999', '老师3eea0819', '2', 'F', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('23', '209080', '15688889999', '老师be617720', '2', 'F', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('24', '201048', '15688889999', '老师83409a21', '2', 'F', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('25', '209728', '15688889999', '老师720b9722', '2', 'F', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('26', '203193', '15688889999', '老师3340d323', '2', 'F', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('27', '202039', '15688889999', '老师8975f924', '2', 'F', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('28', '204128', '15688889999', '老师f7152625', '2', 'F', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('29', '208129', '15688889999', '老师15b0ea26', '2', 'F', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('31', '209010', '15688889999', '老师4ef44d28', '2', 'F', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('32', '208630', '15688889999', '老师f8381729', '2', 'F', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('33', '207208', '15688889999', '老师8586c730', '2', 'F', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('34', '209534', '15688889999', '老师94a2c631', '2', 'F', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('35', '209047', '15688889999', '老师6e41ed32', '2', 'F', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('36', '204770', '15688889999', '老师d2e30b33', '2', 'F', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('37', '204318', '15688889999', '老师80530e34', '2', 'F', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('38', '202951', '15688889999', '老师a70b1e35', '2', 'F', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('39', '207262', '15688889999', '老师8027ea36', '2', 'F', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('40', '201839', '15688889999', '老师5af5f637', '2', 'F', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('41', '204190', '15688889999', '老师498d1d38', '2', 'F', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('42', '207238', '15688889999', '老师12add039', '2', 'F', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('43', '207022', '15699990000', '老师f9262c0', '2', 'M', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('44', '203275', '15699990000', '老师1139db1', '2', 'M', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('45', '205674', '15699990000', '老师f264032', '2', 'M', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('46', '206236', '15699990000', '老师336fe63', '2', 'M', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('47', '204784', '15699990000', '老师b3e1534', '2', 'M', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('48', '204789', '15699990000', '老师274ffe5', '2', 'M', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('49', '201083', '15699990000', '老师f95ae76', '2', 'M', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('50', '208892', '15699990000', '老师23fe147', '2', 'M', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('51', '209965', '15699990000', '老师9b67f68', '2', 'M', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('52', '209620', '15699990000', '老师1ed0ef9', '2', 'M', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('53', '204724', '15699990000', '老师dff27d10', '2', 'M', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('54', '204434', '15699990000', '老师2c7d8211', '2', 'M', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('55', '207410', '15699990000', '老师8cdcda12', '2', 'M', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('56', '206429', '15699990000', '老师9dbd4a13', '2', 'M', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('57', '202094', '15699990000', '老师3337ce14', '2', 'M', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('58', '209060', '15699990000', '老师b48d5c15', '2', 'M', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('59', '204553', '15699990000', '老师429c1f16', '2', 'M', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('60', '202737', '15699990000', '老师b9639917', '2', 'M', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('61', '209773', '15699990000', '老师2c3a7f18', '2', 'M', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('62', '209142', '15699990000', '老师f738a119', '2', 'M', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('63', '208535', '15699990000', '老师e3fc5520', '2', 'M', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('64', '203343', '15699990000', '老师949c3b21', '2', 'M', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('65', '207907', '15699990000', '老师c61ddf22', '2', 'M', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('66', '208679', '15699990000', '老师0a8eac23', '2', 'M', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('67', '209410', '15699990000', '老师432fa224', '2', 'M', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('68', '206971', '15699990000', '老师f9eb6725', '2', 'M', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('69', '202255', '15699990000', '老师36f28526', '2', 'M', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('70', '209138', '15699990000', '老师e5366a27', '2', 'M', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('71', '206671', '15699990000', '老师e0582528', '2', 'M', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('72', '208383', '15699990000', '老师3830e429', '2', 'M', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('73', '205141', '15699990000', '老师04a64f30', '2', 'M', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('74', '201519', '15699990000', '老师fce32f31', '2', 'M', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('75', '209275', '15699990000', '老师fdeee132', '2', 'M', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('76', '202967', '15699990000', '老师3730b533', '2', 'M', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('77', '209272', '15699990000', '老师a790c034', '2', 'M', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('78', '207526', '15699990000', '老师f1dc5535', '2', 'M', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('79', '205915', '15699990000', '老师a8ec3136', '2', 'M', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('80', '205382', '15699990000', '老师33fbb937', '2', 'M', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('81', '205033', '15699990000', '老师ba5a0e38', '2', 'M', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('82', '202045', '15699990000', '老师820b5539', '2', 'M', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('83', '208719', '15699990000', '老师c0338b0', '2', 'M', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('84', '209228', '15699990000', '老师1188ea1', '2', 'M', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('85', '203474', '15699990000', '老师b5bbd02', '2', 'M', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('86', '204073', '15699990000', '老师211d883', '2', 'M', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('87', '201157', '15699990000', '老师a8a92d4', '2', 'M', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('88', '202984', '15699990000', '老师7bd2a75', '2', 'M', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('89', '207669', '15699990000', '老师d95cf66', '2', 'M', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('90', '206369', '15699990000', '老师1391837', '2', 'M', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('91', '206280', '15699990000', '老师af2e9b8', '2', 'M', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('92', '207360', '15699990000', '老师264f9f9', '2', 'M', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('93', '209090', '15699990000', '老师f5bdf110', '2', 'M', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('94', '204236', '15699990000', '老师52217611', '2', 'M', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('95', '208370', '15699990000', '老师5e173212', '2', 'M', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('96', '204623', '15699990000', '老师f4d72013', '2', 'M', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('97', '204654', '15699990000', '老师35ff4414', '2', 'M', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('98', '201453', '15699990000', '老师dae46c15', '2', 'M', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('99', '208750', '15699990000', '老师831bc816', '2', 'M', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('100', '202168', '15699990000', '老师38a77917', '2', 'M', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('101', '203477', '15699990000', '老师92253118', '2', 'M', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('102', '207297', '15699990000', '老师d9f84619', '2', 'M', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('103', '204125', '15699990000', '老师48c92920', '2', 'M', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('104', '202517', '15699990000', '老师f17bad21', '2', 'M', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('105', '203636', '15699990000', '老师47f54222', '2', 'M', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('106', '209852', '15699990000', '老师6f4f9823', '2', 'M', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('107', '207610', '15699990000', '老师11eca324', '2', 'M', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('108', '204259', '15699990000', '老师82f9bb25', '2', 'M', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('109', '206107', '15699990000', '老师d001a526', '2', 'M', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('110', '209500', '15699990000', '老师d889bb27', '2', 'M', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('111', '205340', '15699990000', '老师db3dce28', '2', 'M', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('112', '208639', '15699990000', '老师58fa1e29', '2', 'M', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('113', '201774', '15699990000', '老师849e0430', '2', 'M', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('114', '205591', '15699990000', '老师e3574631', '2', 'M', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('115', '201451', '15699990000', '老师161aea32', '2', 'M', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('116', '201807', '15699990000', '老师1a28ce33', '2', 'M', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('117', '208192', '15699990000', '老师0f6a6d34', '2', 'M', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('118', '208138', '15699990000', '老师4850d735', '2', 'M', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('119', '204118', '15699990000', '老师48b69f36', '2', 'M', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('120', '204332', '15699990000', '老师7a704837', '2', 'M', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('121', '207069', '15699990000', '老师03816b38', '2', 'M', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('122', '205965', '15699990000', '老师647c6439', '2', 'M', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('123', '204395', '15699990000', '老师a0e8270', '2', 'M', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('124', '209216', '15699990000', '老师6aaf1d1', '2', 'M', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('125', '202377', '15699990000', '老师14efd62', '2', 'M', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('126', '208340', '15699990000', '老师e949da3', '2', 'M', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('127', '209282', '15699990000', '老师0e98834', '2', 'M', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('128', '203134', '15699990000', '老师2f12575', '2', 'M', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('129', '209388', '15699990000', '老师8434c56', '2', 'M', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('130', '202017', '15699990000', '老师e594dc7', '2', 'M', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('131', '202545', '15699990000', '老师a3bd6f8', '2', 'M', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('132', '201564', '15699990000', '老师d72b749', '2', 'M', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('133', '209646', '15699990000', '老师cf9d5a10', '2', 'M', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('134', '209419', '15699990000', '老师b1a1d211', '2', 'M', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('135', '206121', '15699990000', '老师056f9312', '2', 'M', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('136', '202950', '15699990000', '老师f2af2e13', '2', 'M', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('137', '201121', '15699990000', '老师914e6514', '2', 'M', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('139', '206723', '15699990000', '老师2aaece16', '2', 'M', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('140', '201186', '15699990000', '老师6a968e17', '2', 'M', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('141', '209662', '15699990000', '老师aa753818', '2', 'M', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('142', '206072', '15699990000', '老师bc64ff19', '2', 'M', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('143', '209816', '15699990000', '老师80bd8220', '2', 'M', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('144', '204781', '15699990000', '老师db861221', '2', 'M', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('145', '205786', '15699990000', '老师862a2422', '2', 'M', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('146', '209980', '15699990000', '老师936c2723', '2', 'M', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('147', '205836', '15699990000', '老师d2fa3524', '2', 'M', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('148', '207447', '15699990000', '老师ea4c6025', '2', 'M', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('149', '202210', '15699990000', '老师41c3a626', '2', 'M', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('150', '205387', '15699990000', '老师b5439527', '2', 'M', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('151', '205319', '15699990000', '老师d58a8d28', '2', 'M', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('152', '209881', '15699990000', '老师b9078029', '2', 'M', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('153', '205471', '15699990000', '老师c5bc5a30', '2', 'M', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('154', '209802', '15699990000', '老师2b7d4131', '2', 'M', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('155', '205259', '15699990000', '老师94532532', '2', 'M', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('156', '201500', '15699990000', '老师e0e52933', '2', 'M', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('157', '206342', '15699990000', '老师34053d34', '2', 'M', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('158', '207886', '15699990000', '老师e1c5d335', '2', 'M', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('159', '206257', '15699990000', '老师f4b42636', '2', 'M', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('160', '202633', '15699990000', '老师456dee37', '2', 'M', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('161', '201072', '15699990000', '老师b986c638', '2', 'M', '1998-07-23');
INSERT INTO `tbl_staff` VALUES ('162', '204483', '15699990000', '老师134ceb39', '2', 'M', '1998-07-23');

-- ----------------------------
-- Table structure for `tbl_student`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_student`;
CREATE TABLE `tbl_student` (
  `student_id` int(11) NOT NULL AUTO_INCREMENT,
  `student_number` int(11) DEFAULT NULL,
  `student_age` int(11) DEFAULT NULL,
  `student_gender` char(1) DEFAULT '',
  `student_birth` date DEFAULT NULL,
  `classes_id` int(11) DEFAULT NULL,
  `student_name` varchar(255) DEFAULT '',
  `student_mobile` varchar(255) DEFAULT '',
  PRIMARY KEY (`student_id`),
  KEY `student_number` (`student_number`),
  KEY `student_name` (`student_name`),
  KEY `student_mobile` (`student_mobile`),
  KEY `fk_classes_id_student` (`classes_id`),
  CONSTRAINT `fk_classes_id_student` FOREIGN KEY (`classes_id`) REFERENCES `tbl_classes` (`classes_id`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_student
-- ----------------------------
INSERT INTO `tbl_student` VALUES ('16', '27300', '20', 'M', '1998-07-23', '1', '同学c0a401', '15688889999');
INSERT INTO `tbl_student` VALUES ('17', '27885', '20', 'M', '1998-07-23', '1', '同学de4442', '15688889999');
INSERT INTO `tbl_student` VALUES ('18', '22176', '20', 'M', '1998-07-23', '1', '同学d1fb93', '15688889999');
INSERT INTO `tbl_student` VALUES ('19', '23155', '20', 'M', '1998-07-23', '1', '同学e05804', '15688889999');
INSERT INTO `tbl_student` VALUES ('20', '24436', '20', 'M', '1998-07-23', '1', '同学0f6745', '15688889999');
INSERT INTO `tbl_student` VALUES ('21', '21826', '20', 'M', '1998-07-23', '1', '同学3f0d06', '15688889999');
INSERT INTO `tbl_student` VALUES ('22', '26774', '20', 'M', '1998-07-23', '1', '同学2b6477', '15688889999');
INSERT INTO `tbl_student` VALUES ('23', '26310', '20', 'M', '1998-07-23', '1', '同学515738', '15688889999');
INSERT INTO `tbl_student` VALUES ('24', '27545', '20', 'M', '1998-07-23', '1', '同学284259', '15688889999');
INSERT INTO `tbl_student` VALUES ('25', '27346', '20', 'M', '1998-07-23', '1', '同学2ef6410', '15688889999');
INSERT INTO `tbl_student` VALUES ('26', '27730', '20', 'M', '1998-07-23', '1', '同学7f62f11', '15688889999');
INSERT INTO `tbl_student` VALUES ('27', '25977', '20', 'F', '1998-07-23', '1', '同学1', '15688889999');
INSERT INTO `tbl_student` VALUES ('28', '21048', '20', 'M', '1998-07-23', '1', '同学c56f813', '15688889999');
INSERT INTO `tbl_student` VALUES ('29', '21886', '20', 'M', '1998-07-23', '1', '同学145d514', '15688889999');
INSERT INTO `tbl_student` VALUES ('30', '27656', '20', 'M', '1998-07-23', '1', '同学b87b815', '15688889999');
INSERT INTO `tbl_student` VALUES ('31', '28386', '20', 'M', '1998-07-23', '1', '同学0974816', '15688889999');
INSERT INTO `tbl_student` VALUES ('32', '23104', '20', 'M', '1998-07-23', '1', '同学1bc6c17', '15688889999');
INSERT INTO `tbl_student` VALUES ('33', '21088', '20', 'M', '1998-07-23', '1', '同学daad618', '15688889999');
INSERT INTO `tbl_student` VALUES ('34', '28447', '20', 'M', '1998-07-23', '1', '同学609d319', '15688889999');
INSERT INTO `tbl_student` VALUES ('35', '27140', '20', 'M', '1998-07-23', '1', '同学ec2d620', '15688889999');
INSERT INTO `tbl_student` VALUES ('36', '28772', '20', 'M', '1998-07-23', '1', '同学3a9b321', '15688889999');
INSERT INTO `tbl_student` VALUES ('37', '23552', '20', 'M', '1998-07-23', '1', '同学e138e22', '15688889999');
INSERT INTO `tbl_student` VALUES ('38', '23642', '20', 'M', '1998-07-23', '1', '同学77f9623', '15688889999');
INSERT INTO `tbl_student` VALUES ('39', '29284', '20', 'M', '1998-07-23', '1', '同学0484424', '15688889999');
INSERT INTO `tbl_student` VALUES ('40', '29434', '20', 'M', '1998-07-23', '1', '同学6ef7325', '15688889999');
INSERT INTO `tbl_student` VALUES ('41', '26675', '20', 'M', '1998-07-23', '1', '同学eb01826', '15688889999');
INSERT INTO `tbl_student` VALUES ('42', '25864', '20', 'M', '1998-07-23', '1', '同学dad0727', '15688889999');
INSERT INTO `tbl_student` VALUES ('43', '25276', '20', 'M', '1998-07-23', '1', '同学0674f28', '15688889999');
INSERT INTO `tbl_student` VALUES ('44', '22736', '20', 'M', '1998-07-23', '1', '同学ef4ac29', '15688889999');
INSERT INTO `tbl_student` VALUES ('45', '21821', '20', 'M', '1998-07-23', '1', '同学3408930', '15688889999');
INSERT INTO `tbl_student` VALUES ('46', '22507', '20', 'M', '1998-07-23', '1', '同学df3dc31', '15688889999');
INSERT INTO `tbl_student` VALUES ('47', '28965', '20', 'M', '1998-07-23', '1', '同学afe4032', '15688889999');
INSERT INTO `tbl_student` VALUES ('48', '23549', '20', 'M', '1998-07-23', '1', '同学19b0e33', '15688889999');
INSERT INTO `tbl_student` VALUES ('49', '26579', '20', 'M', '1998-07-23', '1', '同学372b134', '15688889999');
INSERT INTO `tbl_student` VALUES ('50', '28088', '20', 'M', '1998-07-23', '1', '同学ae59e35', '15688889999');
INSERT INTO `tbl_student` VALUES ('51', '26846', '20', 'M', '1998-07-23', '1', '同学305b636', '15688889999');
INSERT INTO `tbl_student` VALUES ('52', '21003', '20', 'M', '1998-07-23', '1', '同学c554637', '15688889999');
INSERT INTO `tbl_student` VALUES ('54', '24775', '20', 'M', '1998-07-23', '1', '同学d6c8839', '15688889999');
INSERT INTO `tbl_student` VALUES ('55', '26671', '20', 'F', '1998-07-23', '2', '同学1b5920', '15688889999');
INSERT INTO `tbl_student` VALUES ('56', '26431', '20', 'F', '1998-07-23', '2', '同学e25a01', '15688889999');
INSERT INTO `tbl_student` VALUES ('57', '29019', '20', 'F', '1998-07-23', '2', '同学575ec2', '15688889999');
INSERT INTO `tbl_student` VALUES ('58', '28948', '20', 'F', '1998-07-23', '2', '同学3edff3', '15688889999');
INSERT INTO `tbl_student` VALUES ('59', '23233', '20', 'F', '1998-07-23', '2', '同学c18b54', '15688889999');
INSERT INTO `tbl_student` VALUES ('60', '21305', '20', 'F', '1998-07-23', '2', '同学f617d5', '15688889999');
INSERT INTO `tbl_student` VALUES ('61', '28597', '20', 'F', '1998-07-23', '2', '同学521ff6', '15688889999');
INSERT INTO `tbl_student` VALUES ('62', '25574', '20', 'F', '1998-07-23', '2', '同学6ed9f7', '15688889999');
INSERT INTO `tbl_student` VALUES ('63', '26803', '20', 'F', '1998-07-23', '2', '同学628068', '15688889999');
INSERT INTO `tbl_student` VALUES ('64', '25201', '20', 'F', '1998-07-23', '2', '同学27fa59', '15688889999');
INSERT INTO `tbl_student` VALUES ('65', '28532', '20', 'F', '1998-07-23', '2', '同学fa22810', '15688889999');
INSERT INTO `tbl_student` VALUES ('66', '24719', '20', 'F', '1998-07-23', '2', '同学d1c3811', '15688889999');
INSERT INTO `tbl_student` VALUES ('67', '21701', '20', 'F', '1998-07-23', '2', '同学70a1812', '15688889999');
INSERT INTO `tbl_student` VALUES ('68', '24096', '20', 'F', '1998-07-23', '2', '同学ed04713', '15688889999');
INSERT INTO `tbl_student` VALUES ('69', '22008', '20', 'F', '1998-07-23', '2', '同学4cf7514', '15688889999');
INSERT INTO `tbl_student` VALUES ('70', '28648', '20', 'F', '1998-07-23', '2', '同学3b29815', '15688889999');
INSERT INTO `tbl_student` VALUES ('71', '25609', '20', 'F', '1998-07-23', '2', '同学1f97116', '15688889999');
INSERT INTO `tbl_student` VALUES ('72', '23730', '20', 'F', '1998-07-23', '2', '同学0a4f317', '15688889999');
INSERT INTO `tbl_student` VALUES ('73', '28310', '20', 'F', '1998-07-23', '2', '同学cb6cc18', '15688889999');
INSERT INTO `tbl_student` VALUES ('74', '22407', '20', 'F', '1998-07-23', '2', '同学ad78919', '15688889999');
INSERT INTO `tbl_student` VALUES ('75', '22380', '20', 'F', '1998-07-23', '2', '同学c321020', '15688889999');
INSERT INTO `tbl_student` VALUES ('76', '22615', '20', 'F', '1998-07-23', '2', '同学538ff21', '15688889999');
INSERT INTO `tbl_student` VALUES ('77', '27289', '20', 'F', '1998-07-23', '2', '同学4225422', '15688889999');
INSERT INTO `tbl_student` VALUES ('78', '23992', '20', 'F', '1998-07-23', '2', '同学cd96723', '15688889999');
INSERT INTO `tbl_student` VALUES ('79', '24295', '20', 'F', '1998-07-23', '2', '同学d5c9a24', '15688889999');
INSERT INTO `tbl_student` VALUES ('80', '26423', '20', 'F', '1998-07-23', '2', '同学f591025', '15688889999');
INSERT INTO `tbl_student` VALUES ('81', '21534', '20', 'F', '1998-07-23', '2', '同学6eee226', '15688889999');
INSERT INTO `tbl_student` VALUES ('82', '23251', '20', 'F', '1998-07-23', '2', '同学24c9d27', '15688889999');
INSERT INTO `tbl_student` VALUES ('83', '23252', '20', 'F', '1998-07-23', '2', '同学50db128', '15688889999');
INSERT INTO `tbl_student` VALUES ('84', '23153', '20', 'F', '1998-07-23', '2', '同学8be3e29', '15688889999');
INSERT INTO `tbl_student` VALUES ('85', '29165', '20', 'F', '1998-07-23', '2', '同学be4fc30', '15688889999');
INSERT INTO `tbl_student` VALUES ('86', '24516', '20', 'F', '1998-07-23', '2', '同学4603d31', '15688889999');
INSERT INTO `tbl_student` VALUES ('87', '28825', '20', 'F', '1998-07-23', '2', '同学2b06032', '15688889999');
INSERT INTO `tbl_student` VALUES ('88', '28135', '20', 'F', '1998-07-23', '2', '同学19bc933', '15688889999');
INSERT INTO `tbl_student` VALUES ('89', '26001', '20', 'F', '1998-07-23', '2', '同学8190934', '15688889999');
INSERT INTO `tbl_student` VALUES ('90', '29635', '20', 'F', '1998-07-23', '2', '同学8187b35', '15688889999');
INSERT INTO `tbl_student` VALUES ('91', '26658', '20', 'F', '1998-07-23', '2', '同学70d1536', '15688889999');
INSERT INTO `tbl_student` VALUES ('92', '29834', '20', 'F', '1998-07-23', '2', '同学9b22d37', '15688889999');
INSERT INTO `tbl_student` VALUES ('93', '29256', '20', 'F', '1998-07-23', '2', '同学9300638', '15688889999');
INSERT INTO `tbl_student` VALUES ('94', '27501', '20', 'F', '1998-07-23', '2', '同学d7bbf39', '15688889999');
INSERT INTO `tbl_student` VALUES ('95', '288889', '10', 'M', '1998-09-09', '1', '王', '17800001111');
INSERT INTO `tbl_student` VALUES ('97', '299999', '90', 'M', '1998-09-09', '1', '何', '17899998888');
INSERT INTO `tbl_student` VALUES ('99', '220222', '18', 'M', '1998-02-09', '1', '测试', '17888888881');
INSERT INTO `tbl_student` VALUES ('100', '223322', '18', 'M', '1998-09-21', '2', '王冠锐', '17655553333');
INSERT INTO `tbl_student` VALUES ('101', '290900', '18', 'M', '1998-02-09', '1', '哇哈哈', '14522223333');
INSERT INTO `tbl_student` VALUES ('102', '222019', '11', 'M', '1998-02-09', '1', '王冠瑞', '15628931723');

-- ----------------------------
-- Table structure for `tbl_user`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE `tbl_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` int(11) DEFAULT NULL,
  `real_name` varchar(255) DEFAULT '',
  `user_mobile` varchar(255) DEFAULT '',
  `user_category` char(1) DEFAULT '',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `fk_user_name_student` (`user_name`) USING BTREE,
  KEY `fk_real_name_student` (`real_name`),
  KEY `fk_user_mobile_student` (`user_mobile`)
) ENGINE=InnoDB AUTO_INCREMENT=267 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_user
-- ----------------------------
INSERT INTO `tbl_user` VALUES ('11', '22021', '李同学1', '17800009999', 'S');
INSERT INTO `tbl_user` VALUES ('12', '12016', '何老师', '17800001111', 'T');
INSERT INTO `tbl_user` VALUES ('13', null, '鍚屽3b1e30', '15688889999', 'S');
INSERT INTO `tbl_user` VALUES ('14', null, '鍚屽7bd381', '15688889999', 'S');
INSERT INTO `tbl_user` VALUES ('15', null, '同学e5d120', '15688889999', 'S');
INSERT INTO `tbl_user` VALUES ('16', null, '同学4c9931', '15688889999', 'S');
INSERT INTO `tbl_user` VALUES ('17', '13465', '同学fe6860', '15688889999', 'S');
INSERT INTO `tbl_user` VALUES ('18', '19471', '同学ab9e31', '15688889999', 'S');
INSERT INTO `tbl_user` VALUES ('20', '27300', '同学c0a401', '15688889999', 'S');
INSERT INTO `tbl_user` VALUES ('21', '27885', '同学de4442', '15688889999', 'S');
INSERT INTO `tbl_user` VALUES ('22', '22176', '同学d1fb93', '15688889999', 'S');
INSERT INTO `tbl_user` VALUES ('23', '23155', '同学e05804', '15688889999', 'S');
INSERT INTO `tbl_user` VALUES ('24', '24436', '同学0f6745', '15688889999', 'S');
INSERT INTO `tbl_user` VALUES ('25', '21826', '同学3f0d06', '15688889999', 'S');
INSERT INTO `tbl_user` VALUES ('26', '26774', '同学2b6477', '15688889999', 'S');
INSERT INTO `tbl_user` VALUES ('27', '26310', '同学515738', '15688889999', 'S');
INSERT INTO `tbl_user` VALUES ('28', '27545', '同学284259', '15688889999', 'S');
INSERT INTO `tbl_user` VALUES ('29', '27346', '同学2ef6410', '15688889999', 'S');
INSERT INTO `tbl_user` VALUES ('30', '27730', '同学7f62f11', '15688889999', 'S');
INSERT INTO `tbl_user` VALUES ('31', '25977', '同学1', '15688889999', 'S');
INSERT INTO `tbl_user` VALUES ('32', '21048', '同学c56f813', '15688889999', 'S');
INSERT INTO `tbl_user` VALUES ('33', '21886', '同学145d514', '15688889999', 'S');
INSERT INTO `tbl_user` VALUES ('34', '27656', '同学b87b815', '15688889999', 'S');
INSERT INTO `tbl_user` VALUES ('35', '28386', '同学0974816', '15688889999', 'S');
INSERT INTO `tbl_user` VALUES ('36', '23104', '同学1bc6c17', '15688889999', 'S');
INSERT INTO `tbl_user` VALUES ('37', '21088', '同学daad618', '15688889999', 'S');
INSERT INTO `tbl_user` VALUES ('38', '28447', '同学609d319', '15688889999', 'S');
INSERT INTO `tbl_user` VALUES ('39', '27140', '同学ec2d620', '15688889999', 'S');
INSERT INTO `tbl_user` VALUES ('40', '28772', '同学3a9b321', '15688889999', 'S');
INSERT INTO `tbl_user` VALUES ('41', '23552', '同学e138e22', '15688889999', 'S');
INSERT INTO `tbl_user` VALUES ('42', '23642', '同学77f9623', '15688889999', 'S');
INSERT INTO `tbl_user` VALUES ('43', '29284', '同学0484424', '15688889999', 'S');
INSERT INTO `tbl_user` VALUES ('44', '29434', '同学6ef7325', '15688889999', 'S');
INSERT INTO `tbl_user` VALUES ('45', '26675', '同学eb01826', '15688889999', 'S');
INSERT INTO `tbl_user` VALUES ('46', '25864', '同学dad0727', '15688889999', 'S');
INSERT INTO `tbl_user` VALUES ('47', '25276', '同学0674f28', '15688889999', 'S');
INSERT INTO `tbl_user` VALUES ('48', '22736', '同学ef4ac29', '15688889999', 'S');
INSERT INTO `tbl_user` VALUES ('49', '21821', '同学3408930', '15688889999', 'S');
INSERT INTO `tbl_user` VALUES ('50', '22507', '同学df3dc31', '15688889999', 'S');
INSERT INTO `tbl_user` VALUES ('51', '28965', '同学afe4032', '15688889999', 'S');
INSERT INTO `tbl_user` VALUES ('52', '23549', '同学19b0e33', '15688889999', 'S');
INSERT INTO `tbl_user` VALUES ('53', '26579', '同学372b134', '15688889999', 'S');
INSERT INTO `tbl_user` VALUES ('54', '28088', '同学ae59e35', '15688889999', 'S');
INSERT INTO `tbl_user` VALUES ('55', '26846', '同学305b636', '15688889999', 'S');
INSERT INTO `tbl_user` VALUES ('56', '21003', '同学c554637', '15688889999', 'S');
INSERT INTO `tbl_user` VALUES ('58', '24775', '同学d6c8839', '15688889999', 'S');
INSERT INTO `tbl_user` VALUES ('59', '26671', '同学1b5920', '15688889999', 'S');
INSERT INTO `tbl_user` VALUES ('60', '26431', '同学e25a01', '15688889999', 'S');
INSERT INTO `tbl_user` VALUES ('61', '29019', '同学575ec2', '15688889999', 'S');
INSERT INTO `tbl_user` VALUES ('62', '28948', '同学3edff3', '15688889999', 'S');
INSERT INTO `tbl_user` VALUES ('63', '23233', '同学c18b54', '15688889999', 'S');
INSERT INTO `tbl_user` VALUES ('64', '21305', '同学f617d5', '15688889999', 'S');
INSERT INTO `tbl_user` VALUES ('65', '28597', '同学521ff6', '15688889999', 'S');
INSERT INTO `tbl_user` VALUES ('66', '25574', '同学6ed9f7', '15688889999', 'S');
INSERT INTO `tbl_user` VALUES ('67', '26803', '同学628068', '15688889999', 'S');
INSERT INTO `tbl_user` VALUES ('68', '25201', '同学27fa59', '15688889999', 'S');
INSERT INTO `tbl_user` VALUES ('69', '28532', '同学fa22810', '15688889999', 'S');
INSERT INTO `tbl_user` VALUES ('70', '24719', '同学d1c3811', '15688889999', 'S');
INSERT INTO `tbl_user` VALUES ('71', '21701', '同学70a1812', '15688889999', 'S');
INSERT INTO `tbl_user` VALUES ('72', '24096', '同学ed04713', '15688889999', 'S');
INSERT INTO `tbl_user` VALUES ('73', '22008', '同学4cf7514', '15688889999', 'S');
INSERT INTO `tbl_user` VALUES ('74', '28648', '同学3b29815', '15688889999', 'S');
INSERT INTO `tbl_user` VALUES ('75', '25609', '同学1f97116', '15688889999', 'S');
INSERT INTO `tbl_user` VALUES ('76', '23730', '同学0a4f317', '15688889999', 'S');
INSERT INTO `tbl_user` VALUES ('77', '28310', '同学cb6cc18', '15688889999', 'S');
INSERT INTO `tbl_user` VALUES ('78', '22407', '同学ad78919', '15688889999', 'S');
INSERT INTO `tbl_user` VALUES ('79', '22380', '同学c321020', '15688889999', 'S');
INSERT INTO `tbl_user` VALUES ('80', '22615', '同学538ff21', '15688889999', 'S');
INSERT INTO `tbl_user` VALUES ('81', '27289', '同学4225422', '15688889999', 'S');
INSERT INTO `tbl_user` VALUES ('82', '23992', '同学cd96723', '15688889999', 'S');
INSERT INTO `tbl_user` VALUES ('83', '24295', '同学d5c9a24', '15688889999', 'S');
INSERT INTO `tbl_user` VALUES ('84', '26423', '同学f591025', '15688889999', 'S');
INSERT INTO `tbl_user` VALUES ('85', '21534', '同学6eee226', '15688889999', 'S');
INSERT INTO `tbl_user` VALUES ('86', '23251', '同学24c9d27', '15688889999', 'S');
INSERT INTO `tbl_user` VALUES ('87', '23252', '同学50db128', '15688889999', 'S');
INSERT INTO `tbl_user` VALUES ('88', '23153', '同学8be3e29', '15688889999', 'S');
INSERT INTO `tbl_user` VALUES ('89', '29165', '同学be4fc30', '15688889999', 'S');
INSERT INTO `tbl_user` VALUES ('90', '24516', '同学4603d31', '15688889999', 'S');
INSERT INTO `tbl_user` VALUES ('91', '28825', '同学2b06032', '15688889999', 'S');
INSERT INTO `tbl_user` VALUES ('92', '28135', '同学19bc933', '15688889999', 'S');
INSERT INTO `tbl_user` VALUES ('93', '26001', '同学8190934', '15688889999', 'S');
INSERT INTO `tbl_user` VALUES ('94', '29635', '同学8187b35', '15688889999', 'S');
INSERT INTO `tbl_user` VALUES ('95', '26658', '同学70d1536', '15688889999', 'S');
INSERT INTO `tbl_user` VALUES ('96', '29834', '同学9b22d37', '15688889999', 'S');
INSERT INTO `tbl_user` VALUES ('97', '29256', '同学9300638', '15688889999', 'S');
INSERT INTO `tbl_user` VALUES ('98', '27501', '同学d7bbf39', '15688889999', 'S');
INSERT INTO `tbl_user` VALUES ('99', '288889', '王', '17800001111', 'S');
INSERT INTO `tbl_user` VALUES ('101', '299999', '何', '17899998888', 'S');
INSERT INTO `tbl_user` VALUES ('103', '220222', '测试', '17888888881', 'S');
INSERT INTO `tbl_user` VALUES ('104', '202952', '老师a115b80', '15688889999', 'T');
INSERT INTO `tbl_user` VALUES ('105', '206397', '老师e57acc1', '15688889999', 'T');
INSERT INTO `tbl_user` VALUES ('106', '205347', '老师ed3aad2', '15688889999', 'T');
INSERT INTO `tbl_user` VALUES ('107', '204400', '老师1c9e203', '15688889999', 'T');
INSERT INTO `tbl_user` VALUES ('108', '203165', '老师1ae7fe4', '15688889999', 'T');
INSERT INTO `tbl_user` VALUES ('109', '203228', '老师b601b85', '15688889999', 'T');
INSERT INTO `tbl_user` VALUES ('110', '209084', '老师612cbf6', '15688889999', 'T');
INSERT INTO `tbl_user` VALUES ('111', '204324', '老师86ffbb7', '15688889999', 'T');
INSERT INTO `tbl_user` VALUES ('112', '206458', '老师cd4e058', '15688889999', 'T');
INSERT INTO `tbl_user` VALUES ('113', '202580', '老师cb9fdd9', '15688889999', 'T');
INSERT INTO `tbl_user` VALUES ('114', '203543', '老师c877be10', '15688889999', 'T');
INSERT INTO `tbl_user` VALUES ('115', '204804', '老师f8fb9011', '15688889999', 'T');
INSERT INTO `tbl_user` VALUES ('116', '208523', '老师95ad9912', '15688889999', 'T');
INSERT INTO `tbl_user` VALUES ('117', '203581', '老师2c574013', '15688889999', 'T');
INSERT INTO `tbl_user` VALUES ('118', '207646', '老师6a492014', '15688889999', 'T');
INSERT INTO `tbl_user` VALUES ('119', '204135', '老师de763d15', '15688889999', 'T');
INSERT INTO `tbl_user` VALUES ('120', '201512', '老师acdb4616', '15688889999', 'T');
INSERT INTO `tbl_user` VALUES ('121', '208085', '老师13112f17', '15688889999', 'T');
INSERT INTO `tbl_user` VALUES ('122', '208086', '老师3cf3a618', '15688889999', 'T');
INSERT INTO `tbl_user` VALUES ('123', '201923', '老师3eea0819', '15688889999', 'T');
INSERT INTO `tbl_user` VALUES ('124', '209080', '老师be617720', '15688889999', 'T');
INSERT INTO `tbl_user` VALUES ('125', '201048', '老师83409a21', '15688889999', 'T');
INSERT INTO `tbl_user` VALUES ('126', '209728', '老师720b9722', '15688889999', 'T');
INSERT INTO `tbl_user` VALUES ('127', '203193', '老师3340d323', '15688889999', 'T');
INSERT INTO `tbl_user` VALUES ('128', '202039', '老师8975f924', '15688889999', 'T');
INSERT INTO `tbl_user` VALUES ('129', '204128', '老师f7152625', '15688889999', 'T');
INSERT INTO `tbl_user` VALUES ('130', '208129', '老师15b0ea26', '15688889999', 'T');
INSERT INTO `tbl_user` VALUES ('132', '209010', '老师4ef44d28', '15688889999', 'T');
INSERT INTO `tbl_user` VALUES ('133', '208630', '老师f8381729', '15688889999', 'T');
INSERT INTO `tbl_user` VALUES ('134', '207208', '老师8586c730', '15688889999', 'T');
INSERT INTO `tbl_user` VALUES ('135', '209534', '老师94a2c631', '15688889999', 'T');
INSERT INTO `tbl_user` VALUES ('136', '209047', '老师6e41ed32', '15688889999', 'T');
INSERT INTO `tbl_user` VALUES ('137', '204770', '老师d2e30b33', '15688889999', 'T');
INSERT INTO `tbl_user` VALUES ('138', '204318', '老师80530e34', '15688889999', 'T');
INSERT INTO `tbl_user` VALUES ('139', '202951', '老师a70b1e35', '15688889999', 'T');
INSERT INTO `tbl_user` VALUES ('140', '207262', '老师8027ea36', '15688889999', 'T');
INSERT INTO `tbl_user` VALUES ('141', '201839', '老师5af5f637', '15688889999', 'T');
INSERT INTO `tbl_user` VALUES ('142', '204190', '老师498d1d38', '15688889999', 'T');
INSERT INTO `tbl_user` VALUES ('143', '207238', '老师12add039', '15688889999', 'T');
INSERT INTO `tbl_user` VALUES ('144', '207022', '老师f9262c0', '15699990000', 'T');
INSERT INTO `tbl_user` VALUES ('145', '203275', '老师1139db1', '15699990000', 'T');
INSERT INTO `tbl_user` VALUES ('146', '205674', '老师f264032', '15699990000', 'T');
INSERT INTO `tbl_user` VALUES ('147', '206236', '老师336fe63', '15699990000', 'T');
INSERT INTO `tbl_user` VALUES ('148', '204784', '老师b3e1534', '15699990000', 'T');
INSERT INTO `tbl_user` VALUES ('149', '204789', '老师274ffe5', '15699990000', 'T');
INSERT INTO `tbl_user` VALUES ('150', '201083', '老师f95ae76', '15699990000', 'T');
INSERT INTO `tbl_user` VALUES ('151', '208892', '老师23fe147', '15699990000', 'T');
INSERT INTO `tbl_user` VALUES ('152', '209965', '老师9b67f68', '15699990000', 'T');
INSERT INTO `tbl_user` VALUES ('153', '209620', '老师1ed0ef9', '15699990000', 'T');
INSERT INTO `tbl_user` VALUES ('154', '204724', '老师dff27d10', '15699990000', 'T');
INSERT INTO `tbl_user` VALUES ('155', '204434', '老师2c7d8211', '15699990000', 'T');
INSERT INTO `tbl_user` VALUES ('156', '207410', '老师8cdcda12', '15699990000', 'T');
INSERT INTO `tbl_user` VALUES ('157', '206429', '老师9dbd4a13', '15699990000', 'T');
INSERT INTO `tbl_user` VALUES ('158', '202094', '老师3337ce14', '15699990000', 'T');
INSERT INTO `tbl_user` VALUES ('159', '209060', '老师b48d5c15', '15699990000', 'T');
INSERT INTO `tbl_user` VALUES ('160', '204553', '老师429c1f16', '15699990000', 'T');
INSERT INTO `tbl_user` VALUES ('161', '202737', '老师b9639917', '15699990000', 'T');
INSERT INTO `tbl_user` VALUES ('162', '209773', '老师2c3a7f18', '15699990000', 'T');
INSERT INTO `tbl_user` VALUES ('163', '209142', '老师f738a119', '15699990000', 'T');
INSERT INTO `tbl_user` VALUES ('164', '208535', '老师e3fc5520', '15699990000', 'T');
INSERT INTO `tbl_user` VALUES ('165', '203343', '老师949c3b21', '15699990000', 'T');
INSERT INTO `tbl_user` VALUES ('166', '207907', '老师c61ddf22', '15699990000', 'T');
INSERT INTO `tbl_user` VALUES ('167', '208679', '老师0a8eac23', '15699990000', 'T');
INSERT INTO `tbl_user` VALUES ('168', '209410', '老师432fa224', '15699990000', 'T');
INSERT INTO `tbl_user` VALUES ('169', '206971', '老师f9eb6725', '15699990000', 'T');
INSERT INTO `tbl_user` VALUES ('170', '202255', '老师36f28526', '15699990000', 'T');
INSERT INTO `tbl_user` VALUES ('171', '209138', '老师e5366a27', '15699990000', 'T');
INSERT INTO `tbl_user` VALUES ('172', '206671', '老师e0582528', '15699990000', 'T');
INSERT INTO `tbl_user` VALUES ('173', '208383', '老师3830e429', '15699990000', 'T');
INSERT INTO `tbl_user` VALUES ('174', '205141', '老师04a64f30', '15699990000', 'T');
INSERT INTO `tbl_user` VALUES ('175', '201519', '老师fce32f31', '15699990000', 'T');
INSERT INTO `tbl_user` VALUES ('176', '209275', '老师fdeee132', '15699990000', 'T');
INSERT INTO `tbl_user` VALUES ('177', '202967', '老师3730b533', '15699990000', 'T');
INSERT INTO `tbl_user` VALUES ('178', '209272', '老师a790c034', '15699990000', 'T');
INSERT INTO `tbl_user` VALUES ('179', '207526', '老师f1dc5535', '15699990000', 'T');
INSERT INTO `tbl_user` VALUES ('180', '205915', '老师a8ec3136', '15699990000', 'T');
INSERT INTO `tbl_user` VALUES ('181', '205382', '老师33fbb937', '15699990000', 'T');
INSERT INTO `tbl_user` VALUES ('182', '205033', '老师ba5a0e38', '15699990000', 'T');
INSERT INTO `tbl_user` VALUES ('183', '202045', '老师820b5539', '15699990000', 'T');
INSERT INTO `tbl_user` VALUES ('184', '208719', '老师c0338b0', '15699990000', 'T');
INSERT INTO `tbl_user` VALUES ('185', '209228', '老师1188ea1', '15699990000', 'T');
INSERT INTO `tbl_user` VALUES ('186', '203474', '老师b5bbd02', '15699990000', 'T');
INSERT INTO `tbl_user` VALUES ('187', '204073', '老师211d883', '15699990000', 'T');
INSERT INTO `tbl_user` VALUES ('188', '201157', '老师a8a92d4', '15699990000', 'T');
INSERT INTO `tbl_user` VALUES ('189', '202984', '老师7bd2a75', '15699990000', 'T');
INSERT INTO `tbl_user` VALUES ('190', '207669', '老师d95cf66', '15699990000', 'T');
INSERT INTO `tbl_user` VALUES ('191', '206369', '老师1391837', '15699990000', 'T');
INSERT INTO `tbl_user` VALUES ('192', '206280', '老师af2e9b8', '15699990000', 'T');
INSERT INTO `tbl_user` VALUES ('193', '207360', '老师264f9f9', '15699990000', 'T');
INSERT INTO `tbl_user` VALUES ('194', '209090', '老师f5bdf110', '15699990000', 'T');
INSERT INTO `tbl_user` VALUES ('195', '204236', '老师52217611', '15699990000', 'T');
INSERT INTO `tbl_user` VALUES ('196', '208370', '老师5e173212', '15699990000', 'T');
INSERT INTO `tbl_user` VALUES ('197', '204623', '老师f4d72013', '15699990000', 'T');
INSERT INTO `tbl_user` VALUES ('198', '204654', '老师35ff4414', '15699990000', 'T');
INSERT INTO `tbl_user` VALUES ('199', '201453', '老师dae46c15', '15699990000', 'T');
INSERT INTO `tbl_user` VALUES ('200', '208750', '老师831bc816', '15699990000', 'T');
INSERT INTO `tbl_user` VALUES ('201', '202168', '老师38a77917', '15699990000', 'T');
INSERT INTO `tbl_user` VALUES ('202', '203477', '老师92253118', '15699990000', 'T');
INSERT INTO `tbl_user` VALUES ('203', '207297', '老师d9f84619', '15699990000', 'T');
INSERT INTO `tbl_user` VALUES ('204', '204125', '老师48c92920', '15699990000', 'T');
INSERT INTO `tbl_user` VALUES ('205', '202517', '老师f17bad21', '15699990000', 'T');
INSERT INTO `tbl_user` VALUES ('206', '203636', '老师47f54222', '15699990000', 'T');
INSERT INTO `tbl_user` VALUES ('207', '209852', '老师6f4f9823', '15699990000', 'T');
INSERT INTO `tbl_user` VALUES ('208', '207610', '老师11eca324', '15699990000', 'T');
INSERT INTO `tbl_user` VALUES ('209', '204259', '老师82f9bb25', '15699990000', 'T');
INSERT INTO `tbl_user` VALUES ('210', '206107', '老师d001a526', '15699990000', 'T');
INSERT INTO `tbl_user` VALUES ('211', '209500', '老师d889bb27', '15699990000', 'T');
INSERT INTO `tbl_user` VALUES ('212', '205340', '老师db3dce28', '15699990000', 'T');
INSERT INTO `tbl_user` VALUES ('213', '208639', '老师58fa1e29', '15699990000', 'T');
INSERT INTO `tbl_user` VALUES ('214', '201774', '老师849e0430', '15699990000', 'T');
INSERT INTO `tbl_user` VALUES ('215', '205591', '老师e3574631', '15699990000', 'T');
INSERT INTO `tbl_user` VALUES ('216', '201451', '老师161aea32', '15699990000', 'T');
INSERT INTO `tbl_user` VALUES ('217', '201807', '老师1a28ce33', '15699990000', 'T');
INSERT INTO `tbl_user` VALUES ('218', '208192', '老师0f6a6d34', '15699990000', 'T');
INSERT INTO `tbl_user` VALUES ('219', '208138', '老师4850d735', '15699990000', 'T');
INSERT INTO `tbl_user` VALUES ('220', '204118', '老师48b69f36', '15699990000', 'T');
INSERT INTO `tbl_user` VALUES ('221', '204332', '老师7a704837', '15699990000', 'T');
INSERT INTO `tbl_user` VALUES ('222', '207069', '老师03816b38', '15699990000', 'T');
INSERT INTO `tbl_user` VALUES ('223', '205965', '老师647c6439', '15699990000', 'T');
INSERT INTO `tbl_user` VALUES ('224', '204395', '老师a0e8270', '15699990000', 'T');
INSERT INTO `tbl_user` VALUES ('225', '209216', '老师6aaf1d1', '15699990000', 'T');
INSERT INTO `tbl_user` VALUES ('226', '202377', '老师14efd62', '15699990000', 'T');
INSERT INTO `tbl_user` VALUES ('227', '208340', '老师e949da3', '15699990000', 'T');
INSERT INTO `tbl_user` VALUES ('228', '209282', '老师0e98834', '15699990000', 'T');
INSERT INTO `tbl_user` VALUES ('229', '203134', '老师2f12575', '15699990000', 'T');
INSERT INTO `tbl_user` VALUES ('230', '209388', '老师8434c56', '15699990000', 'T');
INSERT INTO `tbl_user` VALUES ('231', '202017', '老师e594dc7', '15699990000', 'T');
INSERT INTO `tbl_user` VALUES ('232', '202545', '老师a3bd6f8', '15699990000', 'T');
INSERT INTO `tbl_user` VALUES ('233', '201564', '老师d72b749', '15699990000', 'T');
INSERT INTO `tbl_user` VALUES ('234', '209646', '老师cf9d5a10', '15699990000', 'T');
INSERT INTO `tbl_user` VALUES ('235', '209419', '老师b1a1d211', '15699990000', 'T');
INSERT INTO `tbl_user` VALUES ('236', '206121', '老师056f9312', '15699990000', 'T');
INSERT INTO `tbl_user` VALUES ('237', '202950', '老师f2af2e13', '15699990000', 'T');
INSERT INTO `tbl_user` VALUES ('238', '201121', '老师914e6514', '15699990000', 'T');
INSERT INTO `tbl_user` VALUES ('240', '206723', '老师2aaece16', '15699990000', 'T');
INSERT INTO `tbl_user` VALUES ('241', '201186', '老师6a968e17', '15699990000', 'T');
INSERT INTO `tbl_user` VALUES ('242', '209662', '老师aa753818', '15699990000', 'T');
INSERT INTO `tbl_user` VALUES ('243', '206072', '老师bc64ff19', '15699990000', 'T');
INSERT INTO `tbl_user` VALUES ('244', '209816', '老师80bd8220', '15699990000', 'T');
INSERT INTO `tbl_user` VALUES ('245', '204781', '老师db861221', '15699990000', 'T');
INSERT INTO `tbl_user` VALUES ('246', '205786', '老师862a2422', '15699990000', 'T');
INSERT INTO `tbl_user` VALUES ('247', '209980', '老师936c2723', '15699990000', 'T');
INSERT INTO `tbl_user` VALUES ('248', '205836', '老师d2fa3524', '15699990000', 'T');
INSERT INTO `tbl_user` VALUES ('249', '207447', '老师ea4c6025', '15699990000', 'T');
INSERT INTO `tbl_user` VALUES ('250', '202210', '老师41c3a626', '15699990000', 'T');
INSERT INTO `tbl_user` VALUES ('251', '205387', '老师b5439527', '15699990000', 'T');
INSERT INTO `tbl_user` VALUES ('252', '205319', '老师d58a8d28', '15699990000', 'T');
INSERT INTO `tbl_user` VALUES ('253', '209881', '老师b9078029', '15699990000', 'T');
INSERT INTO `tbl_user` VALUES ('254', '205471', '老师c5bc5a30', '15699990000', 'T');
INSERT INTO `tbl_user` VALUES ('255', '209802', '老师2b7d4131', '15699990000', 'T');
INSERT INTO `tbl_user` VALUES ('256', '205259', '老师94532532', '15699990000', 'T');
INSERT INTO `tbl_user` VALUES ('257', '201500', '老师e0e52933', '15699990000', 'T');
INSERT INTO `tbl_user` VALUES ('258', '206342', '老师34053d34', '15699990000', 'T');
INSERT INTO `tbl_user` VALUES ('259', '207886', '老师e1c5d335', '15699990000', 'T');
INSERT INTO `tbl_user` VALUES ('260', '206257', '老师f4b42636', '15699990000', 'T');
INSERT INTO `tbl_user` VALUES ('261', '202633', '老师456dee37', '15699990000', 'T');
INSERT INTO `tbl_user` VALUES ('262', '201072', '老师b986c638', '15699990000', 'T');
INSERT INTO `tbl_user` VALUES ('263', '204483', '老师134ceb39', '15699990000', 'T');
INSERT INTO `tbl_user` VALUES ('264', '223322', '王冠锐', '17655553333', 'S');
INSERT INTO `tbl_user` VALUES ('265', '290900', '哇哈哈', '14522223333', 'S');
INSERT INTO `tbl_user` VALUES ('266', '222019', '王冠瑞', '15628931723', 'S');
DROP TRIGGER IF EXISTS `insert_user_staff`;
DELIMITER ;;
CREATE TRIGGER `insert_user_staff` AFTER INSERT ON `tbl_staff` FOR EACH ROW begin
    INSERT INTO tbl_user(user_name,real_name,user_mobile,user_category)
    VALUES (new.staff_number,new.staff_name,new.staff_mobile,'T');
end
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `updata_user_staff`;
DELIMITER ;;
CREATE TRIGGER `updata_user_staff` AFTER UPDATE ON `tbl_staff` FOR EACH ROW begin
update tbl_user set real_name = new.staff_name , user_mobile = new.staff_mobile where user_name  = new.staff_number;
end
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `del_user_staff`;
DELIMITER ;;
CREATE TRIGGER `del_user_staff` AFTER DELETE ON `tbl_staff` FOR EACH ROW begin
delete from tbl_user where user_name = old.staff_number;
end
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `insert_user_student`;
DELIMITER ;;
CREATE TRIGGER `insert_user_student` AFTER INSERT ON `tbl_student` FOR EACH ROW begin
    INSERT INTO tbl_user(user_name,real_name,user_mobile,user_category)
    VALUES (new.student_number,new.student_name,new.student_mobile,'S');
end
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `updata_user_student`;
DELIMITER ;;
CREATE TRIGGER `updata_user_student` AFTER UPDATE ON `tbl_student` FOR EACH ROW begin
update tbl_user set real_name = new.student_name , user_mobile = new.student_mobile where user_name  = new.student_number;
end
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `del_user_student`;
DELIMITER ;;
CREATE TRIGGER `del_user_student` AFTER DELETE ON `tbl_student` FOR EACH ROW begin
delete from tbl_user where user_name = old.student_number;
end
;;
DELIMITER ;
