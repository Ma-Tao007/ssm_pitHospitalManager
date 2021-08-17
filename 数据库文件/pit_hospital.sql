/*
 Navicat Premium Data Transfer

 Source Server         : 本地
 Source Server Type    : MySQL
 Source Server Version : 80011
 Source Host           : localhost:3306
 Source Schema         : pit_hospital

 Target Server Type    : MySQL
 Target Server Version : 80011
 File Encoding         : 65001

 Date: 19/03/2021 16:27:34
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, 'admin', '123');

-- ----------------------------
-- Table structure for customer
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系方式',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of customer
-- ----------------------------
INSERT INTO `customer` VALUES (1, 'maker', '2222', '2413');
INSERT INTO `customer` VALUES (2, '用户1', '123', NULL);
INSERT INTO `customer` VALUES (4, '用户3', '123', '15552201622');
INSERT INTO `customer` VALUES (5, 'xm', '123', NULL);

-- ----------------------------
-- Table structure for doctor
-- ----------------------------
DROP TABLE IF EXISTS `doctor`;
CREATE TABLE `doctor`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '医生表',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '真实姓名',
  `sex` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别（1男 2女）',
  `age` int(11) NULL DEFAULT NULL COMMENT '年龄',
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系方式',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of doctor
-- ----------------------------
INSERT INTO `doctor` VALUES (1, '医生1', '123', '医生1名字2', '男', 20, '110');
INSERT INTO `doctor` VALUES (2, '医生2', '123', '医生2名字', '男', 20, '110');
INSERT INTO `doctor` VALUES (3, '医生5', '123', '医生5名字', '男', 20, '110');
INSERT INTO `doctor` VALUES (4, '医生3', '123', '医生3名字', '男', 20, '110');
INSERT INTO `doctor` VALUES (5, '医生4', '123', '医生4名字', '男', 20, '110');
INSERT INTO `doctor` VALUES (7, '医生7', '123', '小啊咩', '女', 23, '54');

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '挂号记录表',
  `cid` int(11) NULL DEFAULT NULL COMMENT '顾客id',
  `did` int(11) NULL DEFAULT NULL COMMENT '医生id',
  `pname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '宠物的名字',
  `psex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '宠物的性别',
  `page` int(11) NULL DEFAULT NULL COMMENT '宠物的年龄',
  `pheathy` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '宠物的健康情况',
  `pstate` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '宠物当前状态（未治疗  治疗中  已治疗）',
  `createtime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单创建时间',
  `zltime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '治疗时间',
  `jstime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '治疗结束时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 47 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES (1, 1, 1, '泰迪', '公的', 2, '吃东西拉东西', '已治疗', '2021-03-09 15:40:04', '2021-03-10 08:58:11', '2021-03-10 10:25:48');
INSERT INTO `order` VALUES (2, 1, 3, '泰迪2', '公的', 3, '吃屎吃多了   ', '未治疗', '2021-03-09 15:59:22', NULL, NULL);
INSERT INTO `order` VALUES (3, 1, 1, '泰迪', '公的', 2, '吃东西拉东西', '已治疗', '2021-03-09 15:40:04', '2021-03-10 08:59:32', '2021-03-10 08:59:35');
INSERT INTO `order` VALUES (4, 1, 3, '泰迪', '公的', 2, '吃东西拉东西', '治疗中', '2021-03-09 15:40:04', '2021-03-10 10:27:26', NULL);
INSERT INTO `order` VALUES (5, 1, 1, '泰迪', '公的', 2, '吃东西拉东西', '未治疗', '2021-03-09 15:40:04', NULL, NULL);
INSERT INTO `order` VALUES (6, 1, 1, '泰迪', '公的', 2, '吃东西拉东西', '未治疗', '2021-03-09 15:40:04', NULL, NULL);
INSERT INTO `order` VALUES (7, 1, 1, '泰迪', '公的', 2, '吃东西拉东西', '未治疗', '2021-03-09 15:40:04', NULL, NULL);
INSERT INTO `order` VALUES (8, 1, 1, '泰迪', '公的', 2, '吃东西拉东西', '未治疗', '2021-03-09 15:40:04', NULL, NULL);
INSERT INTO `order` VALUES (9, 1, 3, '泰迪2', '公的', 3, '吃屎吃多了   ', '未治疗', '2021-03-09 15:59:22', NULL, NULL);
INSERT INTO `order` VALUES (10, 1, 1, '泰迪', '公的', 2, '吃东西拉东西', '未治疗', '2021-03-09 15:40:04', NULL, NULL);
INSERT INTO `order` VALUES (11, 1, 1, '泰迪', '公的', 2, '吃东西拉东西', '未治疗', '2021-03-09 15:40:04', NULL, NULL);
INSERT INTO `order` VALUES (12, 1, 1, '泰迪', '公的', 2, '吃东西拉东西', '未治疗', '2021-03-09 15:40:04', NULL, NULL);
INSERT INTO `order` VALUES (13, 1, 1, '泰迪', '公的', 2, '吃东西拉东西', '未治疗', '2021-03-09 15:40:04', NULL, NULL);
INSERT INTO `order` VALUES (14, 1, 1, '泰迪', '公的', 2, '吃东西拉东西', '未治疗', '2021-03-09 15:40:04', NULL, NULL);
INSERT INTO `order` VALUES (15, 1, 1, '泰迪', '公的', 2, '吃东西拉东西', '未治疗', '2021-03-09 15:40:04', NULL, NULL);
INSERT INTO `order` VALUES (16, 1, 3, '泰迪2', '公的', 3, '吃屎吃多了   ', '未治疗', '2021-03-09 15:59:22', NULL, NULL);
INSERT INTO `order` VALUES (17, 1, 3, '泰迪2', '公的', 3, '吃屎吃多了   ', '未治疗', '2021-03-09 15:59:22', NULL, NULL);
INSERT INTO `order` VALUES (18, 1, 1, '泰迪', '公的', 2, '吃东西拉东西', '未治疗', '2021-03-09 15:40:04', NULL, NULL);
INSERT INTO `order` VALUES (19, 1, 1, '泰迪', '公的', 2, '吃东西拉东西', '未治疗', '2021-03-09 15:40:04', NULL, NULL);
INSERT INTO `order` VALUES (20, 1, 3, '泰迪', '公的', 2, '吃东西拉东西', '未治疗', '2021-03-09 15:40:04', NULL, NULL);
INSERT INTO `order` VALUES (21, 1, 3, '泰迪', '公的', 2, '吃东西拉东西', '未治疗', '2021-03-09 15:40:04', NULL, NULL);
INSERT INTO `order` VALUES (22, 1, 1, '泰迪', '公的', 2, '吃东西拉东西', '未治疗', '2021-03-09 15:40:04', NULL, NULL);
INSERT INTO `order` VALUES (23, 1, 1, '泰迪', '公的', 2, '吃东西拉东西', '未治疗', '2021-03-09 15:40:04', NULL, NULL);
INSERT INTO `order` VALUES (24, 1, 1, '泰迪', '公的', 2, '吃东西拉东西', '未治疗', '2021-03-09 15:40:04', NULL, NULL);
INSERT INTO `order` VALUES (26, 1, 1, '泰迪', '公的', 2, '吃东西拉东西', '未治疗', '2021-03-09 15:40:04', NULL, NULL);
INSERT INTO `order` VALUES (27, 1, 1, '泰迪', '公的', 2, '吃东西拉东西', '未治疗', '2021-03-09 15:40:04', NULL, NULL);
INSERT INTO `order` VALUES (28, 1, 1, '泰迪', '公的', 2, '吃东西拉东西', '未治疗', '2021-03-09 15:40:04', NULL, NULL);
INSERT INTO `order` VALUES (29, 1, 1, '泰迪', '公的', 2, '吃东西拉东西', '未治疗', '2021-03-09 15:40:04', NULL, NULL);
INSERT INTO `order` VALUES (30, 1, 3, '泰迪2', '公的', 3, '吃屎吃多了   ', '未治疗', '2021-03-09 15:59:22', NULL, NULL);
INSERT INTO `order` VALUES (31, 1, 3, '泰迪2', '公的', 3, '吃屎吃多了   ', '未治疗', '2021-03-09 15:59:22', NULL, NULL);
INSERT INTO `order` VALUES (32, 1, 1, '泰迪', '公的', 2, '吃东西拉东西', '未治疗', '2021-03-09 15:40:04', NULL, NULL);
INSERT INTO `order` VALUES (33, 1, 1, '泰迪', '公的', 2, '吃东西拉东西', '未治疗', '2021-03-09 15:40:04', NULL, NULL);
INSERT INTO `order` VALUES (34, 1, 1, '泰迪', '公的', 2, '吃东西拉东西', '未治疗', '2021-03-09 15:40:04', NULL, NULL);
INSERT INTO `order` VALUES (35, 1, 1, '泰迪', '公的', 2, '吃东西拉东西', '未治疗', '2021-03-09 15:40:04', NULL, NULL);
INSERT INTO `order` VALUES (36, 1, 1, '泰迪', '公的', 2, '吃东西拉东西', '未治疗', '2021-03-09 15:40:04', NULL, NULL);
INSERT INTO `order` VALUES (37, 1, 3, '泰迪2', '公的', 3, '吃屎吃多了   ', '未治疗', '2021-03-09 15:59:22', NULL, NULL);
INSERT INTO `order` VALUES (38, 1, 1, '泰迪', '公的', 2, '吃东西拉东西', '未治疗', '2021-03-09 15:40:04', NULL, NULL);
INSERT INTO `order` VALUES (39, 1, 3, '泰迪', '公的', 2, '吃东西拉东西', '未治疗', '2021-03-09 15:40:04', NULL, NULL);
INSERT INTO `order` VALUES (40, 1, 1, '泰迪', '公的', 2, '吃东西拉东西', '未治疗', '2021-03-09 15:40:04', NULL, NULL);
INSERT INTO `order` VALUES (41, 1, 1, '泰迪', '公的', 2, '吃东西拉东西', '未治疗', '2021-03-09 15:40:04', NULL, NULL);
INSERT INTO `order` VALUES (42, 1, 1, '泰迪', '公的', 2, '吃东西拉东西', '未治疗', '2021-03-09 15:40:04', NULL, NULL);
INSERT INTO `order` VALUES (43, 1, 1, '泰迪', '公的', 2, '吃东西拉东西', '未治疗', '2021-03-09 15:40:04', NULL, NULL);
INSERT INTO `order` VALUES (44, 1, 3, '泰迪2', '公的', 3, '吃屎吃多了   ', '未治疗', '2021-03-09 15:59:22', NULL, NULL);
INSERT INTO `order` VALUES (45, 1, 1, '泰迪', '公的', 2, '吃东西拉东西', '未治疗', '2021-03-09 15:40:04', NULL, NULL);
INSERT INTO `order` VALUES (47, 5, 2, '小白猫', '公的', 1, '晚上不睡觉    还喜欢吐', '已治疗', '2021-03-10 10:48:01', '2021-03-10 10:48:37', '2021-03-10 10:48:49');
INSERT INTO `order` VALUES (48, 1, 2, '6-动力设备', '公的', 43, 'ffff', '未治疗', '2021-03-19 14:38:24', NULL, NULL);
INSERT INTO `order` VALUES (49, 1, 1, '泰迪', '公的', 33, '不清楚', '未治疗', '2021-03-19 14:41:43', NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
