/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50642
 Source Host           : localhost:3306
 Source Schema         : yc_underwaterworld

 Target Server Type    : MySQL
 Target Server Version : 50642
 File Encoding         : 65001

 Date: 28/11/2018 14:00:42
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for yc_underwaterworld_collect
-- ----------------------------
DROP TABLE IF EXISTS `yc_underwaterworld_collect`;
CREATE TABLE `yc_underwaterworld_collect`  (
  `id` int(255) NOT NULL AUTO_INCREMENT COMMENT '收藏id',
  `collectedessayid` int(255) NOT NULL COMMENT '被收藏的文章的id',
  `collectuserid` int(255) NOT NULL COMMENT '收藏者id',
  `collecttime` datetime(6) NOT NULL COMMENT '收藏时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `collectfk_essay_id`(`collectedessayid`) USING BTREE,
  INDEX `collectfk_user_id`(`collectuserid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for yc_underwaterworld_comment
-- ----------------------------
DROP TABLE IF EXISTS `yc_underwaterworld_comment`;
CREATE TABLE `yc_underwaterworld_comment`  (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '评论id',
  `commenttext` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '评论的内容',
  `createtime` datetime(6) NOT NULL ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '评论创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for yc_underwaterworld_essay
-- ----------------------------
DROP TABLE IF EXISTS `yc_underwaterworld_essay`;
CREATE TABLE `yc_underwaterworld_essay`  (
  `id` int(255) NOT NULL AUTO_INCREMENT COMMENT '文章id',
  `essaytext` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '文章文字部分',
  `createuserid` int(20) DEFAULT NULL COMMENT '文章创建者id',
  `createtime` datetime(6) DEFAULT NULL COMMENT '文章的创建时间',
  `searchtimes` int(20) DEFAULT NULL COMMENT '文章被搜索次数',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk-createuserid`(`createuserid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for yc_underwaterworld_essay_pic
-- ----------------------------
DROP TABLE IF EXISTS `yc_underwaterworld_essay_pic`;
CREATE TABLE `yc_underwaterworld_essay_pic`  (
  `essayid` int(255) NOT NULL COMMENT '文章id',
  `picid` int(255) DEFAULT NULL COMMENT '图片id',
  PRIMARY KEY (`essayid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for yc_underwaterworld_focus
-- ----------------------------
DROP TABLE IF EXISTS `yc_underwaterworld_focus`;
CREATE TABLE `yc_underwaterworld_focus`  (
  `id` int(255) NOT NULL AUTO_INCREMENT COMMENT '关注id',
  `createuserid` int(20) NOT NULL COMMENT '用户id',
  `focususerid` int(20) NOT NULL COMMENT '被关注用户id',
  `focustime` datetime(6) NOT NULL ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '关注的时间',
  `iscancel` int(2) NOT NULL DEFAULT 0 COMMENT '是否被取消   1：被取消  0：没有被取消',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for yc_underwaterworld_message
-- ----------------------------
DROP TABLE IF EXISTS `yc_underwaterworld_message`;
CREATE TABLE `yc_underwaterworld_message`  (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '消息id',
  `msgcontent` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '消息内容',
  `createtime` datetime(6) DEFAULT NULL COMMENT '创建时间',
  `isread` int(2) DEFAULT 0 COMMENT '是否被阅读  1：已被阅读   0：未被阅读',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for yc_underwaterworld_msgtype
-- ----------------------------
DROP TABLE IF EXISTS `yc_underwaterworld_msgtype`;
CREATE TABLE `yc_underwaterworld_msgtype`  (
  `id` int(2) NOT NULL AUTO_INCREMENT COMMENT '消息类型id',
  `msgtypeName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '消息类型名称(赞我的，评论我的，关注我的，收藏我的)',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of yc_underwaterworld_msgtype
-- ----------------------------
INSERT INTO `yc_underwaterworld_msgtype` VALUES (1, '赞我的信息');
INSERT INTO `yc_underwaterworld_msgtype` VALUES (2, '评论我的信息');
INSERT INTO `yc_underwaterworld_msgtype` VALUES (3, '关注我的信息');
INSERT INTO `yc_underwaterworld_msgtype` VALUES (4, '收藏我的文章的信息');

-- ----------------------------
-- Table structure for yc_underwaterworld_pic
-- ----------------------------
DROP TABLE IF EXISTS `yc_underwaterworld_pic`;
CREATE TABLE `yc_underwaterworld_pic`  (
  `id` int(255) NOT NULL AUTO_INCREMENT COMMENT '图片id',
  `pic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '图片存储的字符串',
  `createtime` datetime(6) NOT NULL COMMENT '图片创建时时间',
  `createuserid` int(20) NOT NULL COMMENT '图片创建者id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for yc_underwaterworld_praise
-- ----------------------------
DROP TABLE IF EXISTS `yc_underwaterworld_praise`;
CREATE TABLE `yc_underwaterworld_praise`  (
  `id` int(255) NOT NULL AUTO_INCREMENT COMMENT '点赞id',
  `essayid` int(255) NOT NULL COMMENT '被点赞文章的id, 对应essay表的id',
  `createtime` datetime(6) NOT NULL COMMENT '点赞的时间',
  `createuserid` int(20) NOT NULL COMMENT '点赞者id 对应user表的id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for yc_underwaterworld_role
-- ----------------------------
DROP TABLE IF EXISTS `yc_underwaterworld_role`;
CREATE TABLE `yc_underwaterworld_role`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '角色id',
  `rolename` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色名',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of yc_underwaterworld_role
-- ----------------------------
INSERT INTO `yc_underwaterworld_role` VALUES (1, '普通用户');
INSERT INTO `yc_underwaterworld_role` VALUES (2, '管理员');

-- ----------------------------
-- Table structure for yc_underwaterworld_user
-- ----------------------------
DROP TABLE IF EXISTS `yc_underwaterworld_user`;
CREATE TABLE `yc_underwaterworld_user`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户登录邮箱',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户密码',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户名',
  `gender` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户性别',
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户头像',
  `birthday` datetime(6) DEFAULT NULL COMMENT '用户生日',
  `createtime` datetime(6) DEFAULT NULL COMMENT '用户创建时间',
  `lasttime` datetime(6) NOT NULL ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '用户最后一次登录时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for yc_underwaterworld_user_essay_comment
-- ----------------------------
DROP TABLE IF EXISTS `yc_underwaterworld_user_essay_comment`;
CREATE TABLE `yc_underwaterworld_user_essay_comment`  (
  `commentid` int(255) NOT NULL COMMENT '评论id',
  `essayid` int(255) NOT NULL COMMENT '文章id',
  `createuserid` int(20) NOT NULL COMMENT '评论者id',
  PRIMARY KEY (`commentid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for yc_underwaterworld_user_message_type
-- ----------------------------
DROP TABLE IF EXISTS `yc_underwaterworld_user_message_type`;
CREATE TABLE `yc_underwaterworld_user_message_type`  (
  `messageid` int(255) NOT NULL COMMENT '消息id',
  `senduserid` int(20) NOT NULL COMMENT '发送消息者的id',
  `acceptuserid` int(20) NOT NULL COMMENT '接受消息者的id',
  `msgtypeid` int(2) NOT NULL COMMENT '消息类型id',
  PRIMARY KEY (`messageid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for yc_underwaterworld_user_role
-- ----------------------------
DROP TABLE IF EXISTS `yc_underwaterworld_user_role`;
CREATE TABLE `yc_underwaterworld_user_role`  (
  `userid` int(2) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `roleid` int(2) DEFAULT 1 COMMENT '角色id',
  PRIMARY KEY (`userid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

SET FOREIGN_KEY_CHECKS = 1;
