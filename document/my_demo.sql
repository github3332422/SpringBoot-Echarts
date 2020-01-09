/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 50721
 Source Host           : localhost:3306
 Source Schema         : my_demo

 Target Server Type    : MySQL
 Target Server Version : 50721
 File Encoding         : 65001

 Date: 09/01/2020 11:53:23
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for my_chart01
-- ----------------------------
DROP TABLE IF EXISTS `my_chart01`;
CREATE TABLE `my_chart01`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `num` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of my_chart01
-- ----------------------------
INSERT INTO `my_chart01` VALUES (1, '衬衫', 5);
INSERT INTO `my_chart01` VALUES (2, '羊毛衫', 20);
INSERT INTO `my_chart01` VALUES (3, '雪纺衫', 36);
INSERT INTO `my_chart01` VALUES (4, '裤子', 10);
INSERT INTO `my_chart01` VALUES (5, '高跟鞋', 10);
INSERT INTO `my_chart01` VALUES (6, '袜子', 24);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `age` int(11) NOT NULL COMMENT '年龄',
  `sex` tinyint(3) NOT NULL COMMENT '0:保密 1:男 2:女',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 'woaitianwen', 20, 0);
INSERT INTO `sys_user` VALUES (2, 'yuyi', 18, 1);
INSERT INTO `sys_user` VALUES (3, 'ceshi', 24, 2);
INSERT INTO `sys_user` VALUES (4, 'ceshi02', 21, 2);

SET FOREIGN_KEY_CHECKS = 1;
