/*
 Navicat Premium Data Transfer

 Source Server         : centos1
 Source Server Type    : MySQL
 Source Server Version : 50724
 Source Host           : localhost:3306
 Source Schema         : movie

 Target Server Type    : MySQL
 Target Server Version : 50724
 File Encoding         : 65001

 Date: 14/12/2018 14:52:48
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for collectcon
-- ----------------------------
DROP TABLE IF EXISTS `collectcon`;
CREATE TABLE `collectcon`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `userImage` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `record` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `movieId` int(11) NULL DEFAULT NULL,
  `openId` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `collectOpId` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `movieId`(`movieId`) USING BTREE,
  INDEX `openId`(`openId`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 88 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of collectcon
-- ----------------------------
INSERT INTO `collectcon` VALUES (1, 'AdolpH', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', NULL, 'this is test', 1, 'oCEho5HEv4JznUC7K_zS4o4d6gQY', 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `collectcon` VALUES (2, 'AdolpH', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', NULL, 'this is test', 2, 'oCEho5HEv4JznUC7K_zS4o4d6gQY', 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `collectcon` VALUES (3, 'AdolpH', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', NULL, 'this is test', 3, 'oCEho5HEv4JznUC7K_zS4o4d6gQY', 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `collectcon` VALUES (4, 'AdolpH', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', NULL, 'this is test', 4, 'oCEho5HEv4JznUC7K_zS4o4d6gQY', 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `collectcon` VALUES (5, 'AdolpH', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', NULL, 'this is test', 5, 'oCEho5HEv4JznUC7K_zS4o4d6gQY', 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `collectcon` VALUES (6, 'AdolpH', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', NULL, 'this is test', 6, 'oCEho5HEv4JznUC7K_zS4o4d6gQY', 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `collectcon` VALUES (7, 'AdolpH', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', NULL, 'this is test', 7, 'oCEho5HEv4JznUC7K_zS4o4d6gQY', 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `collectcon` VALUES (8, 'AdolpH', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', NULL, 'this is test', 8, 'oCEho5HEv4JznUC7K_zS4o4d6gQY', 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `collectcon` VALUES (9, 'AdolpH', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', NULL, 'this is test', 9, 'oCEho5HEv4JznUC7K_zS4o4d6gQY', 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `collectcon` VALUES (10, 'AdolpH', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', NULL, 'this is test', 10, 'oCEho5HEv4JznUC7K_zS4o4d6gQY', 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `collectcon` VALUES (11, 'AdolpH', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', NULL, 'this is test', 11, 'oCEho5HEv4JznUC7K_zS4o4d6gQY', 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `collectcon` VALUES (12, 'AdolpH', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', NULL, 'this is test', 12, 'oCEho5HEv4JznUC7K_zS4o4d6gQY', 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `collectcon` VALUES (13, 'AdolpH', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', NULL, 'this is test', 13, 'oCEho5HEv4JznUC7K_zS4o4d6gQY', 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `collectcon` VALUES (14, 'AdolpH', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', NULL, 'this is test', 14, 'oCEho5HEv4JznUC7K_zS4o4d6gQY', 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `collectcon` VALUES (15, 'AdolpH', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', NULL, 'this is test', 15, 'oCEho5HEv4JznUC7K_zS4o4d6gQY', 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `collectcon` VALUES (16, 'AdolpH', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', NULL, 'this is test', 3, 'oCEho5HEv4JznUC7K_zS4o4d6gQY', 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `collectcon` VALUES (17, 'AdolpH', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', NULL, 'this is test', 5, 'oCEho5HEv4JznUC7K_zS4o4d6gQY', 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `collectcon` VALUES (18, 'AdolpH', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', NULL, 'this is test', 2, 'oCEho5HEv4JznUC7K_zS4o4d6gQY', 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `collectcon` VALUES (19, 'AdolpH', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', NULL, 'this is test', 2, 'oCEho5HEv4JznUC7K_zS4o4d6gQY', 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `collectcon` VALUES (20, 'AdolpH', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', NULL, 'this is test', 7, 'oCEho5HEv4JznUC7K_zS4o4d6gQY', 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `collectcon` VALUES (21, 'AdolpH', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', NULL, '5555', 5, 'oCEho5HEv4JznUC7K_zS4o4d6gQY', 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `collectcon` VALUES (22, 'AdolpH', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', 'http://tmp/wxeb3d714215c2c7ad.o6zAJs7CPi3VeDvgOJec3r7RxnZE.jsZ59AZZYG274acd55326f641e6121def8fd94b7db1f.durationTime=453.mp3', NULL, 5, 'oCEho5HEv4JznUC7K_zS4o4d6gQY', 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `collectcon` VALUES (23, 'AdolpH', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', NULL, 'this is test', 12, 'oCEho5HEv4JznUC7K_zS4o4d6gQY', 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `collectcon` VALUES (24, 'AdolpH', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', NULL, 'this is test', 5, 'oCEho5HEv4JznUC7K_zS4o4d6gQY', 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `collectcon` VALUES (25, 'AdoplH', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', 'http://tmp/wxeb3d714215c2c7ad.o6zAJs7CPi3VeDvgOJec3r7RxnZE.jsZ59AZZYG274acd55326f641e6121def8fd94b7db1f.durationTime=453.mp3', NULL, 4, 'oCEho5HEv4JznUC7K_zS4o4d6gQY', 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `collectcon` VALUES (26, 'AdoplH', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', 'http://tmp/wxeb3d714215c2c7ad.o6zAJs7CPi3VeDvgOJec3r7RxnZE.jsZ59AZZYG274acd55326f641e6121def8fd94b7db1f.durationTimehttp://tmp/wxeb3d714215c2c7ad.o6zAJs7CPi3VeDvgOJec3r7RxnZE.jsZ59AZZYG274acd55326f641e6121def8fd94b7db1f.durationTime=453.mp3', NULL, 4, 'oCEho5HEv4JznUC7K_zS4o4d6gQY', 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `collectcon` VALUES (27, 'Adolph', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', 'http://tmp/wxeb3d714215c2c7ad.o6zAJs7CPi3VeDvgOJec3r7RxnZE.jsZ59AZZYG274acd55326f641e6121def8fd94b7db1f.durationTime=453.mp3', NULL, 2, 'oCEho5HEv4JznUC7K_zS4o4d6gQY', 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `collectcon` VALUES (28, 'Adolph', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', 'http://tmp/wxeb3d714215c2c7ad.o6zAJs7CPi3VeDvgOJec3r7RxnZE.jsZ59AZZYG274acd55326f641e6121def8fd94b7db1f.durationTime=453.mp3', NULL, 2, 'oCEho5HEv4JznUC7K_zS4o4d6gQY', 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `collectcon` VALUES (29, 'Adolph', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', 'http://tmp/wxeb3d714215c2c7ad.o6zAJs7CPi3VeDvgOJec3r7RxnZE.jsZ59AZZYG274acd55326f641e6121def8fd94b7db1f.durationTime=453.mp3', NULL, 2, 'oCEho5HEv4JznUC7K_zS4o4d6gQY', 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `collectcon` VALUES (30, 'Adolph', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', 'http://tmp/wxeb3d714215c2c7ad.o6zAJs7CPi3VeDvgOJec3r7RxnZE.jsZ59AZZYG274acd55326f641e6121def8fd94b7db1f.durationTime=453.mp3', NULL, 2, 'oCEho5HEv4JznUC7K_zS4o4d6gQY', 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `collectcon` VALUES (31, 'Adolph', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', 'http://tmp/wxeb3d714215c2c7ad.o6zAJs7CPi3VeDvgOJec3r7RxnZE.jsZ59AZZYG274acd55326f641e6121def8fd94b7db1f.durationTime=453.mp3', NULL, 2, 'oCEho5HEv4JznUC7K_zS4o4d6gQY', 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `collectcon` VALUES (32, 'AdolpH', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', NULL, 'this is test', 5, 'oCEho5HEv4JznUC7K_zS4o4d6gQY', 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `collectcon` VALUES (33, 'AdolpH', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', NULL, 'this is test', 13, 'oCEho5HEv4JznUC7K_zS4o4d6gQY', 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `collectcon` VALUES (34, 'AdolpH', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', NULL, 'this is test', 13, 'oCEho5HEv4JznUC7K_zS4o4d6gQY', 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `collectcon` VALUES (35, 'AdolpH', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', NULL, 'this is test', 13, 'oCEho5HEv4JznUC7K_zS4o4d6gQY', 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `collectcon` VALUES (36, 'AdolpH', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', NULL, 'this is test', 13, 'oCEho5HEv4JznUC7K_zS4o4d6gQY', 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `collectcon` VALUES (37, 'AdolpH', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', NULL, 'this is test', 13, 'oCEho5HEv4JznUC7K_zS4o4d6gQY', 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `collectcon` VALUES (38, 'AdolpH', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', NULL, 'this is test', 13, 'oCEho5HEv4JznUC7K_zS4o4d6gQY', 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `collectcon` VALUES (39, 'AdolpH', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', NULL, 'this is test', 13, 'oCEho5HEv4JznUC7K_zS4o4d6gQY', 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `collectcon` VALUES (40, 'AdolpH', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', NULL, 'this is test', 13, 'oCEho5HEv4JznUC7K_zS4o4d6gQY', 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `collectcon` VALUES (41, 'AdolpH', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', 'this is test', NULL, 1, 'oCEho5HEv4JznUC7K_zS4o4d6gQY', 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `collectcon` VALUES (42, 'AdolpH', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', 'this is test', NULL, 1, 'oCEho5HEv4JznUC7K_zS4o4d6gQY', 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `collectcon` VALUES (43, 'AdolpH', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', 'this is test', NULL, 1, 'oCEho5HEv4JznUC7K_zS4o4d6gQY', 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `collectcon` VALUES (44, 'AdolpH', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', 'this is test', NULL, 1, 'oCEho5HEv4JznUC7K_zS4o4d6gQY', 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `collectcon` VALUES (45, 'Adolph', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', 'http://tmp/wxeb3d714215c2c7ad.o6zAJs7CPi3VeDvgOJec3r7RxnZE.X8E0RGuMMxBm8d4a632571039af8238d660da7ba555a.durationTime=534.mp3', NULL, 2, 'oCEho5M-2VbHSS20NxkaDIY22yo4', 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `collectcon` VALUES (46, 'Adolph', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', 'http://tmp/wxeb3d714215c2c7ad.o6zAJs7CPi3VeDvgOJec3r7RxnZE.yNN9daU4lM2F09e7ced0a789ad86f217de55d2c15a52.durationTime=646.mp3', NULL, 1, 'undefined', 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `collectcon` VALUES (47, 'Adolph', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', 'http://tmp/wxeb3d714215c2c7ad.o6zAJs7CPi3VeDvgOJec3r7RxnZE.yNN9daU4lM2F09e7ced0a789ad86f217de55d2c15a52.durationTime=646.mp3', NULL, 1, 'undefined', 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `collectcon` VALUES (48, 'AdoplH', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', '777', NULL, 1, 'undefined', 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `collectcon` VALUES (49, 'AdoplH', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', '777', NULL, 1, 'undefined', 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `collectcon` VALUES (50, 'AdoplH', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', '777', NULL, 1, 'undefined', 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `collectcon` VALUES (51, 'AdolpH', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', NULL, 'this is test', 5, 'undefined', 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `collectcon` VALUES (52, 'AdolpH', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', NULL, 'this is test', 5, 'undefined', 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `collectcon` VALUES (53, 'AdolpH', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', NULL, 'this is test', 5, 'undefined', 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `collectcon` VALUES (54, 'AdolpH', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', NULL, 'this is test', 5, 'undefined', 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `collectcon` VALUES (55, 'AdolpH', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', NULL, 'this is test', 5, 'undefined', 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `collectcon` VALUES (56, 'AdolpH', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', NULL, 'this is test', 5, 'undefined', 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `collectcon` VALUES (57, 'AdolpH', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', NULL, 'this is test', 5, 'undefined', 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `collectcon` VALUES (58, 'AdolpH', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', NULL, 'this is test', 5, 'undefined', 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `collectcon` VALUES (59, 'AdolpH', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', NULL, 'this is test', 5, 'undefined', 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `collectcon` VALUES (60, 'AdolpH', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', NULL, 'this is test', 5, 'undefined', 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `collectcon` VALUES (61, 'AdolpH', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', NULL, 'this is test', 5, 'undefined', 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `collectcon` VALUES (62, 'AdolpH', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', NULL, 'this is test', 5, 'undefined', 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `collectcon` VALUES (63, 'AdolpH', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', NULL, 'this is test', 5, 'undefined', 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `collectcon` VALUES (87, 'AdoplH', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', NULL, '666', 7, 'oCEho5M-2VbHSS20NxkaDIY22yo4', 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `collectcon` VALUES (86, '好', 'https://wx.qlogo.cn/mmopen/vi_32/Px9LUADUDTEuWvQBy4JfWT1nZQS1iavckfXib1IBwPYWDAgj8ZTfbjawRic1WI2WexkOsibyq9jE2kRWhlgKUdyqug/132', NULL, '11212', 1, 'oCEho5M-2VbHSS20NxkaDIY22yo4', 'oCEho5M-2VbHSS20NxkaDIY22yo4');
INSERT INTO `collectcon` VALUES (85, 'AdolpH', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', NULL, 'this is test', 1, 'undefined', 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `collectcon` VALUES (84, 'AdolpH', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', NULL, 'this is test', 1, 'undefined', 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `collectcon` VALUES (83, 'AdolpH', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', NULL, 'this is test', 1, 'oCEho5M-2VbHSS20NxkaDIY22yo4', 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `collectcon` VALUES (82, 'AdoplH', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', NULL, '777', 1, 'oCEho5M-2VbHSS20NxkaDIY22yo4', 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `collectcon` VALUES (81, 'AdolpH', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', NULL, 'this is test', 15, 'oCEho5M-2VbHSS20NxkaDIY22yo4', 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `collectcon` VALUES (72, 'AdolpH', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', 'this is test', NULL, 4, 'oCEho5M-2VbHSS20NxkaDIY22yo4', 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `collectcon` VALUES (73, 'AdolpH', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', NULL, 'this is test', 4, 'oCEho5M-2VbHSS20NxkaDIY22yo4', 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `collectcon` VALUES (74, 'AdolpH', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', 'this is test', NULL, 11, 'oCEho5M-2VbHSS20NxkaDIY22yo4', 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `collectcon` VALUES (75, 'AdolpH', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', NULL, 'this is test', 11, 'oCEho5M-2VbHSS20NxkaDIY22yo4', 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `collectcon` VALUES (76, 'AdolpH', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', 'this is test', NULL, 1, 'oCEho5M-2VbHSS20NxkaDIY22yo4', 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `collectcon` VALUES (77, 'AdolpH', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', NULL, 'this is test', 1, 'oCEho5M-2VbHSS20NxkaDIY22yo4', 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `collectcon` VALUES (78, 'AdolpH', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', '55789123', NULL, 4, 'oCEho5M-2VbHSS20NxkaDIY22yo4', 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `collectcon` VALUES (79, 'AdolpH', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', NULL, '55789123', 4, 'oCEho5M-2VbHSS20NxkaDIY22yo4', 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `collectcon` VALUES (80, 'AdolpH', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', NULL, 'this is test', 15, 'oCEho5M-2VbHSS20NxkaDIY22yo4', 'oCEho5HEv4JznUC7K_zS4o4d6gQY');

-- ----------------------------
-- Table structure for movies
-- ----------------------------
DROP TABLE IF EXISTS `movies`;
CREATE TABLE `movies`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `movieImage` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `category` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `collectId` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of movies
-- ----------------------------
INSERT INTO `movies` VALUES (1, '复仇者联盟3：无限战争', 'http://59.110.213.233/movieJs/images/p2517753454.jpg', '动作 / 科幻 / 奇幻 / 冒险', '《复仇者联盟3：无限战争》是漫威电影宇宙10周年的历史性集结，将为影迷们带来史诗版的终极对决。面对灭霸突然发起的闪电袭击，复仇者联盟及其所有超级英雄盟友必须全力以赴，才能阻止他对全宇宙造成毁灭性的打击。', NULL);
INSERT INTO `movies` VALUES (2, '至暗时刻 Darkest Hour', 'http://59.110.213.233/movieJs/images/p2504277551.jpg', '剧情 / 传记 / 历史', '影片讲述英国首相丘吉尔在作为首相期间面临的最重要的审判：是向纳粹妥协做俘虏，还是团结人民群起反抗？丘吉尔将集结整个国家为自由奋战，试图改变世界历史进程，度过黎明前的黑暗。', NULL);
INSERT INTO `movies` VALUES (3, '挡不住的奇迹', 'http://59.110.213.233/movieJs/images/p863416171.jpg', '剧情 / 喜剧 / 音乐', '盖伊（汤姆·埃弗里特·斯科特 饰）平常就喜欢打鼓，正好当时著名乐队“奇迹”中急需一名鼓手参加表演，于是他鼓起勇气前往应征。盖伊的表现得到了认同，加入了乐队后便密锣紧鼓的加紧训练。演出时，乐队演奏了著名的原创歌曲，可是盖伊却打错了节奏。阴差阳错的时，除了主唱吉米（强纳·森萨奇 饰）之外，其余的人也都喜欢了这个被奏错的版本。这件事成为了吉米与盖伊之间不和的导火线。这首歌很快在经纪人（汤姆·汉克斯 饰）的力捧下成为了冠军歌，但盖伊与吉米之间的矛盾也因为歌迷菲伊的原因越来越深。 到最后他们之间的矛盾能否化解，乐队又能否继续走红呢？', NULL);
INSERT INTO `movies` VALUES (4, '爱乐之城 La La Land', 'http://59.110.213.233/movieJs/images/p2425658570.jpg', '剧情 / 爱情 / 歌舞', '米娅（艾玛·斯通 Emma Stone 饰）渴望成为一名演员，但至今她仍旧只是片场咖啡厅里的一名平凡的咖啡师，尽管不停的参加着大大小小的试镜，但米娅收获的只有失败。某日，在一场派对之中，米娅邂逅了名为塞巴斯汀（瑞恩·高斯林 Ryan Gosling 饰）的男子，起初两人之间产生了小小的矛盾，但很快，米娅便被塞巴斯汀身上闪耀的才华以及他对爵士乐的纯粹追求所吸引，最终两人走到了一起。在塞巴斯汀的鼓励下，米娅辞掉了咖啡厅的工作，专心为自己写起了剧本，与此同时，塞巴斯汀为了获得一份稳定的收入，加入了一支流行爵士乐队，开始演奏自己并不喜欢的现代爵士乐，没想到一炮而红。随着时间的推移，努力追求梦想的两人，彼此之间的距离却越来越远，在理想和感情之间，他们必须做出选择。', NULL);
INSERT INTO `movies` VALUES (5, '海边的曼彻斯特', 'http://59.110.213.233/movieJs/images/p2496940327.jpg', '剧情 / 家庭', '李（卡西·阿弗莱克 Casey Affleck 饰）是一名颓废压抑的修理工，在得知哥哥乔伊（凯尔·钱德勒 Kyle Chandler 饰）去世的消息后，李回到了故乡——海边的曼彻斯特处理乔伊的后事。根据乔伊的遗嘱，李将会成为乔伊的儿子帕特里克（卢卡斯·赫奇斯 Lucas Hedg es 饰）的监护人，李打算将帕特里克带回波士顿，但很显然帕特里克并不愿意离开家乡和朋友们，但李亦不愿在这片伤心地久留。原来，曼彻斯特埋藏着李的一段绝望的回忆，他的过失使得两个女儿葬身火海，妻子兰迪（米歇尔·威廉姆斯 Michelle Williams 饰）亦因此而离开了他。此次重回故乡，李再度见到了已经再婚并且即将做妈妈的兰迪，与此同时，帕特里克那失踪已久的母亲艾丽斯（格瑞辰·摩尔 Gretchen Mol 饰）亦联系上了帕特里克，希望他能够成为她的新家庭中的一员。', NULL);
INSERT INTO `movies` VALUES (6, '热血警探', 'http://59.110.213.233/movieJs/images/p449619623.jpg', '喜剧 / 动作', '尼古拉斯•安奇尔（西蒙•佩吉Simon Pegg 饰）在伦敦担任高级巡警，抓贼破案似乎是他最大的乐趣。为此他成为警局中最敬业最能干的警员。但这却招致了警长的妒嫉，可怜的尼古拉斯被调至一个偏僻平静的小镇当警察。小镇已经几十年没有过恶性犯罪事件。尼古拉斯在那里过得相当郁闷，他觉得自己的擒贼本领没有施展空间。更令他烦恼的是，镇里警察局局长儿子丹尼•巴特曼（尼克•弗罗斯特 Nick Frost 饰）也来凑热闹，成为他的搭档。这个新搭档麻烦至极，整天询问大城市的警员经历。正在尼古拉斯烦心于镇里鸡毛蒜皮的事务和身边的苯搭档时，镇里却发生了一桩案件，让尼古拉斯•嗅到了大展拳脚的机会，惊心动魄的战役开始了。', NULL);
INSERT INTO `movies` VALUES (7, '爱在黎明破晓前', 'http://59.110.213.233/movieJs/images/p452582315.jpg', '剧情 / 爱情', '美国青年杰西（伊桑·霍克 Ethan Hawke 饰）在火车上偶遇了法国女学生塞琳娜（朱莉·德尔佩 Julie Delpy 饰），两人在火车上交谈甚欢。当火车到达维也纳时，杰西盛情邀请塞琳娜一起在维也纳游览一番，即使杰西翌日便要坐飞机离开。与杰西一见钟情的塞琳娜接受了杰西的邀请。他们一边游览城市，一边谈论着彼此的过去 ，彼此对生活的感想，两人了解越加深刻。他们非常珍惜这美妙的晚上，这对恋人一起经历了很多浪漫的经历因为他们约定在半年后再见，而此次约会将会在日出之间结束……', NULL);
INSERT INTO `movies` VALUES (8, '美丽心灵', 'http://59.110.213.233/movieJs/images/p1665997400.jpg', ' 剧情 / 传记', '小约翰•福布斯-纳什（拉塞尔•克劳）在念研究生时，便发表了著名的博弈理论，该理论虽只有短短26页，却在经济、军事等领域产生了深远的影响。但就在小约翰•福布斯-纳什蜚声国际时，他的出众直觉因为精神分裂症受到困扰，然而这并没阻止他向学术上的最高层进军的步伐，在深爱他的妻子艾丽西亚（珍妮弗•康纳利）的鼓励和帮助下，他走得虽然艰缓，却始终没有停步，而最终，凭借十几年的不懈努力和顽强意志，他如愿以偿。', NULL);
INSERT INTO `movies` VALUES (9, '当幸福来敲门', 'http://59.110.213.233/movieJs/images/p2220721286.jpg', '剧情 / 家庭 / 传记', '克里斯•加纳（威尔·史密斯 Will Smith 饰）用尽全部积蓄买下了高科技治疗仪，到处向医院推销，可是价格高昂，接受的人不多。就算他多努力都无法提供一个良好的生活环境给妻儿，妻子（桑迪·牛顿 Thandie Newton 饰）最终选择离开家。从此他带着儿子克里斯托夫（贾登·史密斯 Jaden Smith 饰）相依为命。克里斯好不容易争取回来一个股票投资公司实习的机会，就算没有报酬，成功机会只有百分之五，他仍努力奋斗，儿子是他的力量。他看尽白眼，与儿子躲在地铁站里的公共厕所里，住在教堂的收容所里…… 他坚信，幸福明天就会来临。', NULL);
INSERT INTO `movies` VALUES (10, '肖申克的救赎', 'http://59.110.213.233/movieJs/images/p480747492.jpg', '剧情 / 犯罪', '20世纪40年代末，小有成就的青年银行家安迪（蒂姆·罗宾斯 Tim Robbins 饰）因涉嫌杀害妻子及她的情人而锒铛入狱。在这座名为肖申克的监狱内，希望似乎虚无缥缈，终身监禁的惩罚无疑注定了安迪接下来灰暗绝望的人生。未过多久，安迪尝试接近囚犯中颇有声望的瑞德（摩根·弗里曼 Morgan Freeman 饰），请求对方帮自己搞来小锤子。以此为契机，二人逐渐熟稔，安迪也仿佛在鱼龙混杂、罪恶横生、黑白混淆的牢狱中找到属于自己的求生之道。他利用自身的专业知识，帮助监狱管理层逃税、洗黑钱，同时凭借与瑞德的交往在犯人中间也渐渐受到礼遇。表面看来，他已如瑞德那样对那堵高墙从憎恨转变为处之泰然，但是对自由的渴望仍促使他朝着心中的希望和目标前进。而关于其罪行的真相，似乎更使这一切朝前推进了一步……', NULL);
INSERT INTO `movies` VALUES (11, '三傻大闹宝莱坞', 'http://59.110.213.233/movieJs/images/p579729551.jpg', '剧情 / 喜剧 / 爱情 / 歌舞', '本片根据印度畅销书作家奇坦·巴哈特（Chetan Bhagat）的处女作小说《五点人》（Five Point Someone）改编而成。法兰（马德哈万 R Madhavan 饰）、拉杜（沙曼·乔希 Sharman Joshi 饰）与兰乔（阿米尔·汗 Aamir Khan 饰）是皇家工程学院的学生，三人共居一室，结为好友。在以严格著称的学院里，兰乔是个非常与众不同的学生，他不死记硬背，甚至还公然顶撞校长“病毒”（波曼·伊拉尼 Boman Irani 饰），质疑他的教学方法。他不仅鼓动法兰与拉杜去勇敢追寻理想，还劝说校长的二女儿碧雅（卡琳娜·卡普 Kareena Kapoor 饰）离开满眼铜臭的未婚夫。兰乔的特立独行引起了模范学生“消音器”（奥米·维嘉 Omi Vaidya 饰）的不满，他约定十年后再与兰乔一决高下，看哪种生活方式更能取得成功。', NULL);
INSERT INTO `movies` VALUES (12, '千与千寻', 'http://59.110.213.233/movieJs/images/p1606727862.jpg', '剧情 / 动画 / 奇幻', '千寻和爸爸妈妈一同驱车前往新家，在郊外的小路上不慎进入了神秘的隧道——他们去到了另外一个诡异世界—一个中世纪的小镇。远处飘来食物的香味，爸爸妈妈大快朵颐，孰料之后变成了猪！这时小镇上渐渐来了许多样子古怪、半透明的人。千寻仓皇逃出，一个叫小白的人救了他，喂了她阻止身体消 失的药，并且告诉她怎样去找锅炉爷爷以及汤婆婆，而且必须获得一分工作才能不被魔法变成别的东西。千寻在小白的帮助下幸运地获得了一份在浴池打杂的工作。渐渐她不再被那些怪模怪样的人吓倒，并从小玲那儿知道了小白是凶恶的汤婆婆的弟子。 一次，千寻发现小白被一群白色飞舞的纸人打伤，为了救受伤的小白，她用河神送给她的药丸驱出了小白身体内的封印以及守封印的小妖精，但小白还是没有醒过来。 为了救小白，千寻又踏上了她的冒险之旅。', NULL);
INSERT INTO `movies` VALUES (13, '机器人总动员', 'http://59.110.213.233/movieJs/images/p1461851991.jpg', '爱情 / 科幻 / 动画 / 冒险', '公元2805年，人类文明高度发展，却因污染和生活垃圾大量增加使得地球不再适于人类居住。地球人被迫乘坐飞船离开故乡，进行一次漫长无边的宇宙之旅。临行前他们委托Buynlarge的公司对地球垃圾进行清理，该公司开发了名为WALL·E（Waste Allocation Loa d Lifters – Earth 地球废品分装员）的机器人担当此重任。这些机器人按照程序日复一日、年复一年辛勤工作，但随着时间的流逝和恶劣环境的侵蚀，WALL·E们接连损坏、停止运动。最后只有一个仍在进行这项似乎永无止境的工作。经历了漫长的岁月，它开始拥有了自己的意识。它喜欢将收集来的宝贝小心翼翼藏起，喜欢收工后看看几百年前的歌舞片，此外还有一只蟑螂朋友作伴。直到有一天，一艘来自宇宙的飞船打破了它一成不变的生活……', NULL);
INSERT INTO `movies` VALUES (14, '死亡诗社', 'http://59.110.213.233/movieJs/images/p1910824340.jpg', '剧情', '威尔顿预备学院以其沉稳凝重的教学风格和较高的升学率闻名，作为其毕业班的学生，理想就是升入名校。新学期文学老师约翰·基汀（罗宾·威廉姆斯 饰）的到来如同一阵春风，一反传统名校的严肃刻板。基汀带学生们在校史楼内聆听死亡的声音，反思生的意义 ；让男生们在绿茵场上宣读自己的理想；鼓励学生站在课桌上，用新的视角俯瞰世界。老师自由发散式的哲学思维让学生内心产生强烈的共鸣，他们渐渐学会自己思考与求索，勇敢的追问人生的路途，甚至违反门禁，成立死亡诗社，在山洞里击节而歌！基汀教授、基汀老师、基汀队长，他的教育宛若春风化雨，润物无声的留在每个人心里…', NULL);
INSERT INTO `movies` VALUES (15, '星际穿越', 'http://59.110.213.233/movieJs/images/p2206088801.jpg', '剧情 / 科幻 / 冒险', '近未来的地球黄沙遍野，小麦、秋葵等基础农作物相继因枯萎病灭绝，人类不再像从前那样仰望星空，放纵想象力和灵感的迸发，而是每日在沙尘暴的肆虐下倒数着所剩不多的光景。在家务农的前NASA宇航员库珀（马修·麦康纳 Matthew McConaughey 饰）接连在女儿墨菲（麦肯吉·弗依 Mackenzie Foy 饰）的书房发现奇怪的重力场现象，随即得知在某个未知区域内前NASA成员仍秘密进行一个拯救人类的计划。多年以前土星附近出现神秘虫洞，NASA借机将数名宇航员派遣到遥远的星系寻找适合居住的星球。在布兰德教授（迈克尔·凯恩 Michael Caine 饰）的劝说下，库珀忍痛告别了女儿，和其他三名专家教授女儿艾米莉亚·布兰德（安妮·海瑟薇 Anne Hathaway 饰）、罗米利（大卫·吉雅西 David Gyasi 饰）、多伊尔（韦斯·本特利 Wes Bentley 饰）搭乘宇宙飞船前往目前已知的最有希望的三颗星球考察。他们穿越遥远的星系银河，感受了一小时七年光阴的沧海桑田，窥见了未知星球和黑洞的壮伟与神秘。在浩瀚宇宙的绝望而孤独角落，总有一份超越了时空的笃定情怀将他们紧紧相连……', NULL);

-- ----------------------------
-- Table structure for usercon
-- ----------------------------
DROP TABLE IF EXISTS `usercon`;
CREATE TABLE `usercon`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `userImage` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `record` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `movieId` int(11) NULL DEFAULT NULL,
  `openId` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `movie`(`movieId`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 102 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of usercon
-- ----------------------------
INSERT INTO `usercon` VALUES (1, 'AdolpH', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', NULL, 'this is test', 1, 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `usercon` VALUES (2, 'AdolpH', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', NULL, 'this is test', 2, 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `usercon` VALUES (3, 'AdolpH', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', NULL, 'this is test', 3, 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `usercon` VALUES (4, 'AdolpH', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', NULL, 'this is test', 4, 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `usercon` VALUES (5, 'AdolpH', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', NULL, 'this is test', 5, 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `usercon` VALUES (6, 'AdolpH', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', NULL, 'this is test', 6, 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `usercon` VALUES (7, 'AdolpH', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', NULL, 'this is test', 7, 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `usercon` VALUES (8, 'AdolpH', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', NULL, 'this is test', 8, 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `usercon` VALUES (9, 'AdolpH', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', NULL, 'this is test', 9, 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `usercon` VALUES (10, 'AdolpH', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', NULL, 'this is test', 10, 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `usercon` VALUES (11, 'AdolpH', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', NULL, 'this is test', 11, 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `usercon` VALUES (12, 'AdolpH', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', NULL, 'this is test', 12, 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `usercon` VALUES (13, 'AdolpH', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', NULL, 'this is test', 13, 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `usercon` VALUES (14, 'AdolpH', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', NULL, 'this is test', 14, 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `usercon` VALUES (15, 'AdolpH', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', NULL, 'this is test', 15, 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `usercon` VALUES (16, 'AdolpH', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', NULL, 'this is test', 15, 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `usercon` VALUES (17, 'AdolpH', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', NULL, '55789123', 4, 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `usercon` VALUES (18, 'AdoplH', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', NULL, '5555', 12, 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `usercon` VALUES (19, 'AdoplH', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', NULL, '这是一个成功的测试', 9, 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `usercon` VALUES (20, 'AdoplH', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', NULL, 'asdasdasd', 3, 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `usercon` VALUES (21, 'AdoplH', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', NULL, '50', 6, 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `usercon` VALUES (22, 'AdoplH', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', NULL, '50', 9, 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `usercon` VALUES (23, 'AdoplH', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', NULL, '50', 6, 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `usercon` VALUES (24, 'AdoplH', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', NULL, '50', 15, 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `usercon` VALUES (25, 'AdoplH', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', NULL, '666', 7, 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `usercon` VALUES (26, 'AdoplH', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', NULL, '777', 1, 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `usercon` VALUES (27, 'AdoplH', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', NULL, '777', 14, 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `usercon` VALUES (28, 'AdoplH', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', NULL, '7454', 1, 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `usercon` VALUES (29, 'AdoplH', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', NULL, '888', 13, 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `usercon` VALUES (30, 'AdoplH', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', NULL, 'zhewneli', 13, 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `usercon` VALUES (31, 'AdoplH', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', NULL, '999', 2, 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `usercon` VALUES (32, 'AdoplH', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', NULL, '9966', 3, 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `usercon` VALUES (33, 'AdoplH', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', NULL, '4545', 5, 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `usercon` VALUES (34, 'AdoplH', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', NULL, '996633', 6, 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `usercon` VALUES (35, 'AdoplH', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', NULL, '777', 7, 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `usercon` VALUES (36, 'AdoplH', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', NULL, '--------', 12, 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `usercon` VALUES (37, 'AdoplH', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', NULL, '559963', 8, 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `usercon` VALUES (38, 'AdoplH', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', NULL, '555555555555', 8, 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `usercon` VALUES (39, 'AdoplH', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', NULL, '4444444', 8, 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `usercon` VALUES (40, 'AdoplH', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', NULL, '5555555', 5, 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `usercon` VALUES (41, 'AdoplH', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', NULL, '55555', 5, 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `usercon` VALUES (42, 'AdoplH', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', NULL, '555', 14, 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `usercon` VALUES (43, 'AdoplH', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', NULL, '6666', 8, 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `usercon` VALUES (44, 'AdoplH', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', NULL, '4444', 5, 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `usercon` VALUES (45, 'AdoplH', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', NULL, '44444444', 5, 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `usercon` VALUES (46, 'AdoplH', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', 'http://tmp/wxeb3d714215c2c7ad.o6zAJs7CPi3VeDvgOJec3r7RxnZE.QlR2Wg9BHUdT186b573fd66415b057484f4303353d73.durationTime=1368.mp3', '', 8, 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `usercon` VALUES (47, 'AdoplH', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', 'http://tmp/wxeb3d714215c2c7ad.o6zAJs7CPi3VeDvgOJec3r7RxnZE.varpF4xyx198eb1e5d9ae4a6dda86a5371fdd1cd7e31.durationTime=721.mp3', '', 12, 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `usercon` VALUES (48, 'AdoplH', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', 'http://tmp/wxeb3d714215c2c7ad.o6zAJs7CPi3VeDvgOJec3r7RxnZE.jsZ59AZZYG274acd55326f641e6121def8fd94b7db1f.durationTime=453.mp3', '', 4, 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `usercon` VALUES (49, 'AdoplH', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', 'http://tmp/wxeb3d714215c2c7ad.o6zAJs7CPi3VeDvgOJec3r7RxnZE.jsZ59AZZYG274acd55326f641e6121def8fd94b7db1f.durationTime=453.mp3', '', 4, 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `usercon` VALUES (50, 'AdoplH', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', 'http://tmp/wxeb3d714215c2c7ad.o6zAJs7CPi3VeDvgOJec3r7RxnZE.jsZ59AZZYG274acd55326f641e6121def8fd94b7db1f.durationTime=453.mp3', '', 7, 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `usercon` VALUES (97, '好', 'https://wx.qlogo.cn/mmopen/vi_32/Px9LUADUDTEuWvQBy4JfWT1nZQS1iavckfXib1IBwPYWDAgj8ZTfbjawRic1WI2WexkOsibyq9jE2kRWhlgKUdyqug/132', NULL, '544545', 1, 'oCEho5M-2VbHSS20NxkaDIY22yo4');
INSERT INTO `usercon` VALUES (96, '好', 'https://wx.qlogo.cn/mmopen/vi_32/Px9LUADUDTEuWvQBy4JfWT1nZQS1iavckfXib1IBwPYWDAgj8ZTfbjawRic1WI2WexkOsibyq9jE2kRWhlgKUdyqug/132', NULL, '9999999999999999999999999', 15, 'oCEho5M-2VbHSS20NxkaDIY22yo4');
INSERT INTO `usercon` VALUES (78, 'Adolph', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', 'http://tmp/wxeb3d714215c2c7ad.o6zAJs7CPi3VeDvgOJec3r7RxnZE.jsZ59AZZYG274acd55326f641e6121def8fd94b7db1f.durationTime=453.mp3', NULL, 10, 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `usercon` VALUES (79, 'Adolph', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', NULL, '45454545', 10, 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `usercon` VALUES (80, 'Adolph', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', NULL, '87787878', 6, 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `usercon` VALUES (81, 'Adolph', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', 'http://tmp/wxeb3d714215c2c7ad.o6zAJs7CPi3VeDvgOJec3r7RxnZE.X8E0RGuMMxBm8d4a632571039af8238d660da7ba555a.durationTime=534.mp3', NULL, 15, 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `usercon` VALUES (82, 'Adolph', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', 'http://tmp/wxeb3d714215c2c7ad.o6zAJs7CPi3VeDvgOJec3r7RxnZE.X8E0RGuMMxBm8d4a632571039af8238d660da7ba555a.durationTime=534.mp3', NULL, 11, 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `usercon` VALUES (83, 'Adolph', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', 'http://tmp/wxeb3d714215c2c7ad.o6zAJs7CPi3VeDvgOJec3r7RxnZE.X8E0RGuMMxBm8d4a632571039af8238d660da7ba555a.durationTime=534.mp3', NULL, 2, 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `usercon` VALUES (84, 'Adolph', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', 'http://tmp/wxeb3d714215c2c7ad.o6zAJs7CPi3VeDvgOJec3r7RxnZE.7vtcDqUpHl2b16ad3fbd2c3d1452ac4eddce0c2f662c.durationTime=844.mp3', NULL, 1, 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `usercon` VALUES (85, 'Adolph', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', 'http://tmp/wxeb3d714215c2c7ad.o6zAJs7CPi3VeDvgOJec3r7RxnZE.yNN9daU4lM2F09e7ced0a789ad86f217de55d2c15a52.durationTime=646.mp3', NULL, 1, 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `usercon` VALUES (86, 'Adolph', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', 'http://tmp/wxeb3d714215c2c7ad.o6zAJs7CPi3VeDvgOJec3r7RxnZE.OIPIr78eBsn2ae10a2c2de979d526108f0a2966d645c.durationTime=663.mp3', NULL, 5, 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `usercon` VALUES (87, 'Adolph', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', 'http://tmp/wxeb3d714215c2c7ad.o6zAJs7CPi3VeDvgOJec3r7RxnZE.CgqShEhIYcrs44e2eaa4508b9880704182e0e7fb02b6.durationTime=304.mp3', NULL, 5, 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `usercon` VALUES (88, 'Adolph', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', 'wxfile://tmp_39d2e8fc37d8fc2e455158a8914b48ad37869372ad4e82b4.mp3', NULL, 2, 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `usercon` VALUES (89, 'Adolph', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', 'http://tmp/wxeb3d714215c2c7ad.o6zAJs7CPi3VeDvgOJec3r7RxnZE.iSH3zz2Np9ksf0585973274a5603a33680b5e6365bef.durationTime=843.mp3', NULL, 5, 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `usercon` VALUES (90, '好', 'https://wx.qlogo.cn/mmopen/vi_32/Px9LUADUDTEuWvQBy4JfWT1nZQS1iavckfXib1IBwPYWDAgj8ZTfbjawRic1WI2WexkOsibyq9jE2kRWhlgKUdyqug/132', NULL, '可口可乐了LOL了', 13, 'oCEho5M-2VbHSS20NxkaDIY22yo4');
INSERT INTO `usercon` VALUES (91, '好', 'https://wx.qlogo.cn/mmopen/vi_32/Px9LUADUDTEuWvQBy4JfWT1nZQS1iavckfXib1IBwPYWDAgj8ZTfbjawRic1WI2WexkOsibyq9jE2kRWhlgKUdyqug/132', 'wxfile://tmp_853232782852b3b2a65c1a0ace087f4f.mp3', NULL, 13, 'oCEho5M-2VbHSS20NxkaDIY22yo4');
INSERT INTO `usercon` VALUES (92, 'Adolph', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', 'wxfile://tmp_b2ac8192efe8330546349fb51282273c7193591b85f26a83.mp3', NULL, 7, 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `usercon` VALUES (93, '好', 'https://wx.qlogo.cn/mmopen/vi_32/Px9LUADUDTEuWvQBy4JfWT1nZQS1iavckfXib1IBwPYWDAgj8ZTfbjawRic1WI2WexkOsibyq9jE2kRWhlgKUdyqug/132', NULL, '任祖跃1号', 13, 'oCEho5M-2VbHSS20NxkaDIY22yo4');
INSERT INTO `usercon` VALUES (94, 'Adolph', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', 'wxfile://tmp_45ef1e192d8643f2fa80c5e73b342d4167eb8f958791cac4.mp3', NULL, 2, 'oCEho5HEv4JznUC7K_zS4o4d6gQY');
INSERT INTO `usercon` VALUES (95, '好', 'https://wx.qlogo.cn/mmopen/vi_32/Px9LUADUDTEuWvQBy4JfWT1nZQS1iavckfXib1IBwPYWDAgj8ZTfbjawRic1WI2WexkOsibyq9jE2kRWhlgKUdyqug/132', NULL, '可以用', 15, 'oCEho5M-2VbHSS20NxkaDIY22yo4');
INSERT INTO `usercon` VALUES (98, '咖啡色牛奶', 'https://wx.qlogo.cn/mmopen/vi_32/HA8oibUYs8yclibZsb2yu7waJ2hYv7gjAZaXic8ookCyIZtQThHia3Suicqrbjic3We03Xut7qrdR7jHdbNIMWbPiaKrg/132', 'undefined', NULL, 13, 'oCEho5BG2rDtwgaiYC1Eequs2Qgw');
INSERT INTO `usercon` VALUES (99, '咖啡色牛奶', 'https://wx.qlogo.cn/mmopen/vi_32/HA8oibUYs8yclibZsb2yu7waJ2hYv7gjAZaXic8ookCyIZtQThHia3Suicqrbjic3We03Xut7qrdR7jHdbNIMWbPiaKrg/132', NULL, 'undefined', 13, 'oCEho5BG2rDtwgaiYC1Eequs2Qgw');
INSERT INTO `usercon` VALUES (100, '好', 'https://wx.qlogo.cn/mmopen/vi_32/Px9LUADUDTEuWvQBy4JfWT1nZQS1iavckfXib1IBwPYWDAgj8ZTfbjawRic1WI2WexkOsibyq9jE2kRWhlgKUdyqug/132', NULL, '11212', 1, 'oCEho5M-2VbHSS20NxkaDIY22yo4');
INSERT INTO `usercon` VALUES (101, 'Adolph', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erEHQhA6aPvXXuTppRacliaVVMXoPiaceNX1nL9Pd5gqCPvhf6ZiaQGoEW5Brv5hXiavO1zZ1UekbVxRg/132', NULL, '6666', 2, 'oCEho5HEv4JznUC7K_zS4o4d6gQY');

-- ----------------------------
-- Table structure for usersinfo
-- ----------------------------
DROP TABLE IF EXISTS `usersinfo`;
CREATE TABLE `usersinfo`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `userImage` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `openId` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `openId`(`openId`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
