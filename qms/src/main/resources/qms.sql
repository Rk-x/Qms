/*
 Navicat Premium Data Transfer

 Source Server         : 本地
 Source Server Type    : MySQL
 Source Server Version : 50527
 Source Host           : localhost:3306
 Source Schema         : qms

 Target Server Type    : MySQL
 Target Server Version : 50527
 File Encoding         : 65001

 Date: 15/05/2022 18:43:37
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for answer
-- ----------------------------
DROP TABLE IF EXISTS `answer`;
CREATE TABLE `answer`  (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NULL DEFAULT NULL,
  `uid` int(11) NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `comment_num` int(11) NULL DEFAULT 0,
  `agree_num` int(11) NULL DEFAULT 0,
  `ctime` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mtime` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `del` int(11) NULL DEFAULT 0,
  `qid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`aid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 56 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of answer
-- ----------------------------
INSERT INTO `answer` VALUES (30, 1, 31, '操作系统的解答', NULL, NULL, '2022-05-09 17:35:57', NULL, 0, 39);
INSERT INTO `answer` VALUES (31, 2, 3, '单列集合和双列集合', NULL, NULL, '2022-05-09 17:35:57', NULL, 1, 39);
INSERT INTO `answer` VALUES (32, NULL, 31, '  计算机', 0, 0, '2022-05-09 17:35:57', NULL, 1, 39);
INSERT INTO `answer` VALUES (34, NULL, 30, '  有list和set还有map', 0, 0, '2022-05-09 21:05:43', NULL, 0, 31);
INSERT INTO `answer` VALUES (39, NULL, 30, '  Ruannble和Threan实现', 0, 0, '2022-05-10 11:18:12', NULL, 0, 32);
INSERT INTO `answer` VALUES (40, NULL, 30, '  五花肉和企鹅', 0, 0, '2022-05-10 11:38:30', NULL, 1, 31);
INSERT INTO `answer` VALUES (41, NULL, 30, '  这是安徽', 0, 0, '2022-05-10 22:00:33', NULL, 0, 31);
INSERT INTO `answer` VALUES (42, NULL, 30, '  我觉的你说的不全面', 0, 0, '2022-05-14 19:42:34', NULL, 0, 38);
INSERT INTO `answer` VALUES (43, NULL, 31, '  java的类', 0, 0, '2022-05-14 20:56:34', NULL, 0, 31);
INSERT INTO `answer` VALUES (44, NULL, 31, '  你好', 0, 0, '2022-05-14 20:57:03', NULL, 1, 32);
INSERT INTO `answer` VALUES (45, NULL, 31, ' 这是啥', 0, 0, '2022-05-14 20:57:19', NULL, 1, 39);
INSERT INTO `answer` VALUES (46, NULL, 31, '  这是啥', 0, 0, '2022-05-14 20:57:34', NULL, 1, 39);
INSERT INTO `answer` VALUES (47, NULL, 31, '  这是啥', 0, 0, '2022-05-14 20:58:10', NULL, 1, 38);
INSERT INTO `answer` VALUES (49, NULL, 31, '  你好我拉黑了狂欢节', 0, 0, '2022-05-14 21:01:58', NULL, 1, 32);
INSERT INTO `answer` VALUES (50, NULL, 31, '  你好我拉黑了狂欢节', 0, 0, '2022-05-14 21:02:23', NULL, 1, 38);
INSERT INTO `answer` VALUES (51, NULL, 31, '  rkfgkfgk', 0, 0, '2022-05-14 21:03:49', NULL, 1, 32);
INSERT INTO `answer` VALUES (52, NULL, 59, '  tcp/ip有四层模型。从应用层到传输层，添加一个tcp头，\r\n传输层是对端口的。传输层到网络层，添加一个ip头，网络\r\n层是ip到ip的。从网络层到数据链路层，添加一个以太网头\r\n包含mac信息', 0, 0, '2022-05-15 12:46:50', NULL, 0, 39);
INSERT INTO `answer` VALUES (53, NULL, 57, ' 操作系统是一个系统软件，起一个承上启下的作用，上面是\r\n应用软件，下面是计算机硬件', 0, 0, '2022-05-15 12:54:26', NULL, 0, 30);
INSERT INTO `answer` VALUES (54, NULL, 57, 'Arraylist和Linedlist两种', 0, 0, '2022-05-15 12:55:37', NULL, 0, 31);
INSERT INTO `answer` VALUES (55, NULL, 58, '  tcp和udp都是传输层协议，tcp更加安全，tcp是面向连接的，\r\n通过三次握手建立连接，upd发送数据前不需要建立连接', 0, 0, '2022-05-15 13:07:51', NULL, 0, 42);

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `ctime` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mtime` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `del` int(11) NULL DEFAULT 0,
  `aid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`cid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES (1, 30, '正确的', '2022-05-06', NULL, 0, 31);
INSERT INTO `comment` VALUES (2, 30, '  年后', '2022-05-10 11:17:22', '2022-05-15 18:36:03', 1, 34);
INSERT INTO `comment` VALUES (3, 30, '  还有callable', '2022-05-10 11:18:32', NULL, 0, 39);
INSERT INTO `comment` VALUES (4, 31, '  nihaogahahf', '2022-05-10 17:26:31', '2022-05-15 18:37:42', 1, 32);
INSERT INTO `comment` VALUES (5, 30, '  说的对', '2022-05-13 16:35:46', '2022-05-15 18:29:24', 0, 31);
INSERT INTO `comment` VALUES (6, 30, '  对的', '2022-05-14 19:42:58', '2022-05-15 18:28:39', 0, 42);
INSERT INTO `comment` VALUES (7, 59, '  回答的很对', '2022-05-15 12:48:16', '2022-05-15 18:28:02', 0, 52);
INSERT INTO `comment` VALUES (8, 57, '  回答的不全面', '2022-05-15 12:54:49', NULL, 0, 39);
INSERT INTO `comment` VALUES (9, 57, '说的有问题', '2022-05-15 12:55:07', '2022-05-15 18:26:28', 0, 40);
INSERT INTO `comment` VALUES (10, 58, '  管理员很棒，回答的很好', '2022-05-15 13:09:09', NULL, 0, 52);

-- ----------------------------
-- Table structure for logs
-- ----------------------------
DROP TABLE IF EXISTS `logs`;
CREATE TABLE `logs`  (
  `operid` int(11) NOT NULL AUTO_INCREMENT,
  `opertime` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `opername` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `methods` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `ddesc` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`operid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 867 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of logs
-- ----------------------------
INSERT INTO `logs` VALUES (1, '2022-05-10 17:25:42', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (2, '2022-05-10 17:25:42', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (3, '2022-05-10 17:25:42', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.QuestController.listQuestion', '分页查询提问问题');
INSERT INTO `logs` VALUES (4, '2022-05-10 17:25:44', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (5, '2022-05-10 17:25:52', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.CommentController.listAnswer', '分页查询评论');
INSERT INTO `logs` VALUES (6, '2022-05-10 17:26:07', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.CommentController.listAnswer', '分页查询评论');
INSERT INTO `logs` VALUES (7, '2022-05-10 17:26:11', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.CommentController.removebyid', '删除评论');
INSERT INTO `logs` VALUES (8, '2022-05-10 17:26:11', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.CommentController.listAnswer', '分页查询评论');
INSERT INTO `logs` VALUES (9, '2022-05-10 17:26:20', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.splictlistTags', '分页查询标签');
INSERT INTO `logs` VALUES (10, '2022-05-10 17:26:24', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (11, '2022-05-10 17:26:24', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (12, '2022-05-10 17:26:24', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.QuestController.listQuestion', '分页查询提问问题');
INSERT INTO `logs` VALUES (13, '2022-05-10 17:26:26', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (14, '2022-05-10 17:26:31', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.CommentController.saveComment', '保存评论');
INSERT INTO `logs` VALUES (15, '2022-05-10 17:28:53', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (16, '2022-05-10 17:28:55', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (17, '2022-05-10 17:28:55', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (18, '2022-05-10 17:28:55', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.QuestController.listQuestion', '分页查询提问问题');
INSERT INTO `logs` VALUES (19, '2022-05-10 17:28:57', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.CommentController.listAnswer', '分页查询评论');
INSERT INTO `logs` VALUES (20, '2022-05-10 17:29:01', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.CommentController.removebyid', '删除评论');
INSERT INTO `logs` VALUES (21, '2022-05-10 17:29:01', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.CommentController.listAnswer', '分页查询评论');
INSERT INTO `logs` VALUES (22, '2022-05-10 17:42:58', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (23, '2022-05-10 17:48:22', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (24, '2022-05-10 17:49:49', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.CommentController.listAnswer', '分页查询评论');
INSERT INTO `logs` VALUES (25, '2022-05-10 17:49:55', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.splictlistTags', '分页查询标签');
INSERT INTO `logs` VALUES (26, '2022-05-10 17:50:24', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.saveTags', '添加标签');
INSERT INTO `logs` VALUES (27, '2022-05-10 17:50:24', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.splictlistTags', '分页查询标签');
INSERT INTO `logs` VALUES (28, '2022-05-10 17:50:33', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.updateTags', '修改标签');
INSERT INTO `logs` VALUES (29, '2022-05-10 17:50:34', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.splictlistTags', '分页查询标签');
INSERT INTO `logs` VALUES (30, '2022-05-10 17:51:11', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (31, '2022-05-10 17:51:11', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (32, '2022-05-10 17:51:11', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.QuestController.listQuestion', '分页查询提问问题');
INSERT INTO `logs` VALUES (33, '2022-05-10 17:51:23', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (34, '2022-05-10 17:52:22', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.splictlistTags', '分页查询标签');
INSERT INTO `logs` VALUES (35, '2022-05-10 17:52:37', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.splictlistTags', '分页查询标签');
INSERT INTO `logs` VALUES (36, '2022-05-10 17:52:48', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (37, '2022-05-10 17:52:53', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (38, '2022-05-10 17:52:59', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.QuestController.listQuestion', '分页查询提问问题');
INSERT INTO `logs` VALUES (39, '2022-05-10 20:37:05', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (40, '2022-05-10 20:37:07', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (41, '2022-05-10 20:38:50', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (42, '2022-05-10 20:38:52', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (43, '2022-05-10 20:46:18', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (44, '2022-05-10 20:48:52', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (45, '2022-05-10 20:50:18', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (46, '2022-05-10 21:00:07', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (47, '2022-05-10 21:00:10', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (48, '2022-05-10 21:00:13', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (49, '2022-05-10 21:10:51', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (50, '2022-05-10 21:10:51', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (51, '2022-05-10 21:10:51', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.QuestController.listQuestion', '分页查询提问问题');
INSERT INTO `logs` VALUES (52, '2022-05-10 21:10:52', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.splictlistTags', '分页查询标签');
INSERT INTO `logs` VALUES (53, '2022-05-10 21:10:52', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (54, '2022-05-10 21:33:49', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (55, '2022-05-10 21:40:25', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (56, '2022-05-10 22:00:24', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (57, '2022-05-10 22:00:24', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (58, '2022-05-10 22:00:24', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.QuestController.listQuestion', '分页查询提问问题');
INSERT INTO `logs` VALUES (59, '2022-05-10 22:00:25', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (60, '2022-05-10 22:00:33', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.saveAnswer', '添加问题回复');
INSERT INTO `logs` VALUES (61, '2022-05-10 22:00:39', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (62, '2022-05-10 22:00:45', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.removeAnswer', '删除问题回复');
INSERT INTO `logs` VALUES (63, '2022-05-10 22:00:45', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (64, '2022-05-11 19:17:02', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (65, '2022-05-11 19:17:04', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (66, '2022-05-11 19:19:14', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (67, '2022-05-11 19:19:15', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (68, '2022-05-11 19:19:40', '123', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (69, '2022-05-11 19:19:41', '123', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.splictlistTags', '分页查询标签');
INSERT INTO `logs` VALUES (70, '2022-05-11 19:19:42', '123', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (71, '2022-05-11 19:19:42', '123', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (72, '2022-05-11 19:19:42', '123', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.QuestController.listQuestion', '分页查询提问问题');
INSERT INTO `logs` VALUES (73, '2022-05-11 19:19:43', '123', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (74, '2022-05-11 19:19:45', '123', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.CommentController.listAnswer', '分页查询评论');
INSERT INTO `logs` VALUES (75, '2022-05-11 20:48:19', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (76, '2022-05-11 20:48:57', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (77, '2022-05-11 20:48:58', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (78, '2022-05-12 16:39:00', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (79, '2022-05-12 16:39:00', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (80, '2022-05-12 16:43:07', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (81, '2022-05-12 16:46:56', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (82, '2022-05-12 16:47:47', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (83, '2022-05-12 16:50:54', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (84, '2022-05-12 16:54:01', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (85, '2022-05-12 16:55:28', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (86, '2022-05-12 16:56:39', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (87, '2022-05-12 16:58:07', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (88, '2022-05-12 17:00:17', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (89, '2022-05-12 17:01:28', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (90, '2022-05-12 17:02:19', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (91, '2022-05-12 17:03:39', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (92, '2022-05-12 17:04:37', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (93, '2022-05-12 17:06:47', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (94, '2022-05-12 17:15:00', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (95, '2022-05-12 17:38:56', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (96, '2022-05-12 17:38:58', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (97, '2022-05-12 17:39:00', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.CommentController.listAnswer', '分页查询评论');
INSERT INTO `logs` VALUES (98, '2022-05-12 17:41:25', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (99, '2022-05-12 17:47:16', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (100, '2022-05-12 17:52:03', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (101, '2022-05-12 18:07:58', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (102, '2022-05-12 19:08:27', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (103, '2022-05-12 19:10:36', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (104, '2022-05-12 19:29:56', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (105, '2022-05-12 19:33:43', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (106, '2022-05-12 19:38:24', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (107, '2022-05-12 19:50:01', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (108, '2022-05-12 20:06:36', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (109, '2022-05-12 20:08:28', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (110, '2022-05-12 20:09:51', '123', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (111, '2022-05-13 09:29:04', '123', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (112, '2022-05-13 09:29:14', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (113, '2022-05-13 09:32:23', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (114, '2022-05-13 09:33:41', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (115, '2022-05-13 09:47:34', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (116, '2022-05-13 11:28:15', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (117, '2022-05-13 11:31:45', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (118, '2022-05-13 11:37:39', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (119, '2022-05-13 11:45:47', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (120, '2022-05-13 11:47:12', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (121, '2022-05-13 11:48:17', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (122, '2022-05-13 11:50:18', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.splictlistTags', '分页查询标签');
INSERT INTO `logs` VALUES (123, '2022-05-13 11:52:38', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (124, '2022-05-13 11:54:43', '123', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (125, '2022-05-13 12:02:36', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (126, '2022-05-13 12:03:54', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (127, '2022-05-13 12:09:57', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.CommentController.listAnswer', '分页查询评论');
INSERT INTO `logs` VALUES (128, '2022-05-13 12:09:59', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.splictlistTags', '分页查询标签');
INSERT INTO `logs` VALUES (129, '2022-05-13 12:10:00', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (130, '2022-05-13 12:10:00', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (131, '2022-05-13 12:10:00', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.QuestController.listQuestion', '分页查询提问问题');
INSERT INTO `logs` VALUES (132, '2022-05-13 12:10:01', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (133, '2022-05-13 13:31:30', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (134, '2022-05-13 14:54:55', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (135, '2022-05-13 15:24:56', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (136, '2022-05-13 15:25:22', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (137, '2022-05-13 15:25:22', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (138, '2022-05-13 15:25:22', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.QuestController.listQuestion', '分页查询提问问题');
INSERT INTO `logs` VALUES (139, '2022-05-13 15:25:23', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (140, '2022-05-13 15:25:41', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.CommentController.listAnswer', '分页查询评论');
INSERT INTO `logs` VALUES (141, '2022-05-13 15:37:30', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (142, '2022-05-13 15:37:32', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (143, '2022-05-13 15:37:33', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (144, '2022-05-13 15:37:33', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (145, '2022-05-13 15:37:33', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.QuestController.listQuestion', '分页查询提问问题');
INSERT INTO `logs` VALUES (146, '2022-05-13 15:37:34', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.splictlistTags', '分页查询标签');
INSERT INTO `logs` VALUES (147, '2022-05-13 15:37:36', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.CommentController.listAnswer', '分页查询评论');
INSERT INTO `logs` VALUES (148, '2022-05-13 15:37:47', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (149, '2022-05-13 15:37:50', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.CommentController.listAnswer', '分页查询评论');
INSERT INTO `logs` VALUES (150, '2022-05-13 15:37:59', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (151, '2022-05-13 15:37:59', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (152, '2022-05-13 15:37:59', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.QuestController.listQuestion', '分页查询提问问题');
INSERT INTO `logs` VALUES (153, '2022-05-13 15:38:00', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (154, '2022-05-13 15:53:49', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (155, '2022-05-13 15:57:57', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (156, '2022-05-13 16:04:01', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (157, '2022-05-13 16:21:40', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (158, '2022-05-13 16:22:57', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (159, '2022-05-13 16:25:21', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (160, '2022-05-13 16:27:00', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (161, '2022-05-13 16:27:12', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (162, '2022-05-13 16:27:18', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.CommentController.listAnswer', '分页查询评论');
INSERT INTO `logs` VALUES (163, '2022-05-13 16:27:20', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (164, '2022-05-13 16:27:20', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (165, '2022-05-13 16:27:20', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.QuestController.listQuestion', '分页查询提问问题');
INSERT INTO `logs` VALUES (166, '2022-05-13 16:27:22', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (167, '2022-05-13 16:27:56', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (168, '2022-05-13 16:27:56', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (169, '2022-05-13 16:27:56', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.QuestController.listQuestion', '分页查询提问问题');
INSERT INTO `logs` VALUES (170, '2022-05-13 16:27:58', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (171, '2022-05-13 16:28:00', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.CommentController.listAnswer', '分页查询评论');
INSERT INTO `logs` VALUES (172, '2022-05-13 16:28:54', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (173, '2022-05-13 16:28:54', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (174, '2022-05-13 16:28:54', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.QuestController.listQuestion', '分页查询提问问题');
INSERT INTO `logs` VALUES (175, '2022-05-13 16:28:58', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.CommentController.listAnswer', '分页查询评论');
INSERT INTO `logs` VALUES (176, '2022-05-13 16:34:43', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (177, '2022-05-13 16:34:45', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (178, '2022-05-13 16:34:45', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (179, '2022-05-13 16:34:45', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.QuestController.listQuestion', '分页查询提问问题');
INSERT INTO `logs` VALUES (180, '2022-05-13 16:34:48', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (181, '2022-05-13 16:34:56', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.splictlistTags', '分页查询标签');
INSERT INTO `logs` VALUES (182, '2022-05-13 16:35:00', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.CommentController.listAnswer', '分页查询评论');
INSERT INTO `logs` VALUES (183, '2022-05-13 16:35:46', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.CommentController.saveComment', '保存评论');
INSERT INTO `logs` VALUES (184, '2022-05-13 16:35:54', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (185, '2022-05-13 16:36:00', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.CommentController.listAnswer', '分页查询评论');
INSERT INTO `logs` VALUES (186, '2022-05-13 16:36:13', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (187, '2022-05-13 16:36:14', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (188, '2022-05-13 16:36:14', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (189, '2022-05-13 16:36:14', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.QuestController.listQuestion', '分页查询提问问题');
INSERT INTO `logs` VALUES (190, '2022-05-13 16:36:20', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (191, '2022-05-13 16:36:22', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.CommentController.listAnswer', '分页查询评论');
INSERT INTO `logs` VALUES (192, '2022-05-13 16:47:34', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (193, '2022-05-13 16:48:54', NULL, '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (194, '2022-05-13 16:49:02', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (195, '2022-05-13 17:02:24', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (196, '2022-05-13 17:02:27', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (197, '2022-05-13 17:02:30', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (198, '2022-05-13 20:41:20', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (199, '2022-05-13 20:41:24', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (200, '2022-05-13 20:41:29', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (201, '2022-05-13 20:44:10', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (202, '2022-05-13 20:50:52', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (203, '2022-05-13 20:59:44', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (204, '2022-05-13 21:03:05', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (205, '2022-05-13 21:05:39', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (206, '2022-05-13 21:05:57', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (207, '2022-05-13 21:05:57', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (208, '2022-05-13 21:05:57', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.QuestController.listQuestion', '分页查询提问问题');
INSERT INTO `logs` VALUES (209, '2022-05-13 21:05:58', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (210, '2022-05-13 21:06:01', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.CommentController.listAnswer', '分页查询评论');
INSERT INTO `logs` VALUES (211, '2022-05-13 21:27:55', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (212, '2022-05-13 21:28:23', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.CommentController.listAnswer', '分页查询评论');
INSERT INTO `logs` VALUES (213, '2022-05-13 21:30:44', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (214, '2022-05-13 21:44:34', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (215, '2022-05-13 21:44:37', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.RolesController.listRoles', '查询所有角色信息');
INSERT INTO `logs` VALUES (216, '2022-05-13 22:10:34', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.RolesController.listRoles', '查询所有角色信息');
INSERT INTO `logs` VALUES (217, '2022-05-13 22:13:04', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (218, '2022-05-13 22:13:08', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.RolesController.listRoles', '查询所有角色信息');
INSERT INTO `logs` VALUES (219, '2022-05-13 22:17:32', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.RolesController.listRoles', '查询所有角色信息');
INSERT INTO `logs` VALUES (220, '2022-05-13 22:17:48', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.RolesController.listRoles', '查询所有角色信息');
INSERT INTO `logs` VALUES (221, '2022-05-13 22:18:02', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.RolesController.listRoles', '查询所有角色信息');
INSERT INTO `logs` VALUES (222, '2022-05-14 09:38:00', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (223, '2022-05-14 09:38:03', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.RolesController.listRoles', '查询所有角色信息');
INSERT INTO `logs` VALUES (224, '2022-05-14 09:51:10', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (225, '2022-05-14 09:51:13', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.RolesController.listRoles', '查询所有角色信息');
INSERT INTO `logs` VALUES (226, '2022-05-14 09:51:36', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (227, '2022-05-14 09:51:39', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.CommentController.listAnswer', '分页查询评论');
INSERT INTO `logs` VALUES (228, '2022-05-14 09:51:41', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.RolesController.listRoles', '查询所有角色信息');
INSERT INTO `logs` VALUES (229, '2022-05-14 09:51:46', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.splictlistTags', '分页查询标签');
INSERT INTO `logs` VALUES (230, '2022-05-14 09:51:46', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (231, '2022-05-14 09:51:47', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (232, '2022-05-14 09:51:47', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.QuestController.listQuestion', '分页查询提问问题');
INSERT INTO `logs` VALUES (233, '2022-05-14 09:51:47', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (234, '2022-05-14 09:52:18', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (235, '2022-05-14 09:52:21', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.RolesController.listRoles', '查询所有角色信息');
INSERT INTO `logs` VALUES (236, '2022-05-14 09:52:27', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.splictlistTags', '分页查询标签');
INSERT INTO `logs` VALUES (237, '2022-05-14 09:52:37', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.CommentController.listAnswer', '分页查询评论');
INSERT INTO `logs` VALUES (238, '2022-05-14 09:53:06', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (239, '2022-05-14 09:53:09', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.CommentController.listAnswer', '分页查询评论');
INSERT INTO `logs` VALUES (240, '2022-05-14 09:53:58', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (241, '2022-05-14 09:54:03', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.RolesController.listRoles', '查询所有角色信息');
INSERT INTO `logs` VALUES (242, '2022-05-14 09:54:30', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (243, '2022-05-14 09:54:33', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.CommentController.listAnswer', '分页查询评论');
INSERT INTO `logs` VALUES (244, '2022-05-14 09:54:35', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.RolesController.listRoles', '查询所有角色信息');
INSERT INTO `logs` VALUES (245, '2022-05-14 09:54:41', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.splictlistTags', '分页查询标签');
INSERT INTO `logs` VALUES (246, '2022-05-14 09:54:42', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (247, '2022-05-14 09:54:42', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (248, '2022-05-14 09:54:42', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.QuestController.listQuestion', '分页查询提问问题');
INSERT INTO `logs` VALUES (249, '2022-05-14 09:54:42', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (250, '2022-05-14 09:55:43', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (251, '2022-05-14 09:57:54', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (252, '2022-05-14 09:57:58', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.CommentController.listAnswer', '分页查询评论');
INSERT INTO `logs` VALUES (253, '2022-05-14 09:58:00', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.RolesController.listRoles', '查询所有角色信息');
INSERT INTO `logs` VALUES (254, '2022-05-14 10:00:51', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (255, '2022-05-14 10:00:54', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.RolesController.listRoles', '查询所有角色信息');
INSERT INTO `logs` VALUES (256, '2022-05-14 10:04:04', '1234', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (257, '2022-05-14 10:04:14', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (258, '2022-05-14 10:04:18', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.RolesController.listRoles', '查询所有角色信息');
INSERT INTO `logs` VALUES (259, '2022-05-14 10:04:34', '1234', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (260, '2022-05-14 10:04:36', '1234', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.CommentController.listAnswer', '分页查询评论');
INSERT INTO `logs` VALUES (261, '2022-05-14 10:04:38', '1234', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.RolesController.listRoles', '查询所有角色信息');
INSERT INTO `logs` VALUES (262, '2022-05-14 10:04:46', '1234', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (263, '2022-05-14 10:04:46', '1234', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (264, '2022-05-14 10:04:46', '1234', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.QuestController.listQuestion', '分页查询提问问题');
INSERT INTO `logs` VALUES (265, '2022-05-14 10:04:48', '1234', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (266, '2022-05-14 10:18:20', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (267, '2022-05-14 10:18:23', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.RolesController.listRoles', '查询所有角色信息');
INSERT INTO `logs` VALUES (268, '2022-05-14 11:11:10', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (269, '2022-05-14 11:11:13', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.RolesController.listRoles', '查询所有角色信息');
INSERT INTO `logs` VALUES (270, '2022-05-14 11:39:40', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.splictlistTags', '分页查询标签');
INSERT INTO `logs` VALUES (271, '2022-05-14 11:39:40', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (272, '2022-05-14 11:39:40', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (273, '2022-05-14 11:39:40', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.QuestController.listQuestion', '分页查询提问问题');
INSERT INTO `logs` VALUES (274, '2022-05-14 11:39:40', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (275, '2022-05-14 12:08:26', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.splictlistTags', '分页查询标签');
INSERT INTO `logs` VALUES (276, '2022-05-14 12:08:27', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (277, '2022-05-14 12:08:27', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (278, '2022-05-14 12:08:27', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.QuestController.listQuestion', '分页查询提问问题');
INSERT INTO `logs` VALUES (279, '2022-05-14 12:08:28', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (280, '2022-05-14 12:09:13', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.CommentController.listAnswer', '分页查询评论');
INSERT INTO `logs` VALUES (281, '2022-05-14 12:09:15', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.RolesController.listRoles', '查询所有角色信息');
INSERT INTO `logs` VALUES (282, '2022-05-14 13:31:47', NULL, '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (283, '2022-05-14 13:32:03', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (284, '2022-05-14 13:32:09', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.RolesController.listRoles', '查询所有角色信息');
INSERT INTO `logs` VALUES (285, '2022-05-14 13:32:12', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.PermissionController.listPermissions', '查询所有权限初始化权限菜单');
INSERT INTO `logs` VALUES (286, '2022-05-14 13:49:32', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.PermissionController.listPermissions', '查询所有权限初始化权限菜单');
INSERT INTO `logs` VALUES (287, '2022-05-14 13:49:38', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.RolesController.listRoles', '查询所有角色信息');
INSERT INTO `logs` VALUES (288, '2022-05-14 14:02:20', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (289, '2022-05-14 14:02:22', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.RolesController.listRoles', '查询所有角色信息');
INSERT INTO `logs` VALUES (290, '2022-05-14 14:02:24', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.PermissionController.listPermissions', '查询所有权限初始化权限菜单');
INSERT INTO `logs` VALUES (291, '2022-05-14 14:02:24', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.RolesController.listPageRoles', '分页查询角色信息');
INSERT INTO `logs` VALUES (292, '2022-05-14 14:02:36', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.splictlistTags', '分页查询标签');
INSERT INTO `logs` VALUES (293, '2022-05-14 14:07:12', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.CommentController.listAnswer', '分页查询评论');
INSERT INTO `logs` VALUES (294, '2022-05-14 14:07:13', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (295, '2022-05-14 14:07:13', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (296, '2022-05-14 14:07:13', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.QuestController.listQuestion', '分页查询提问问题');
INSERT INTO `logs` VALUES (297, '2022-05-14 14:07:15', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (298, '2022-05-14 15:21:55', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (299, '2022-05-14 15:22:01', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.CommentController.listAnswer', '分页查询评论');
INSERT INTO `logs` VALUES (300, '2022-05-14 15:22:05', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (301, '2022-05-14 15:32:25', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.RolesController.listRoles', '查询所有角色信息');
INSERT INTO `logs` VALUES (302, '2022-05-14 15:53:17', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.RolesController.listRoles', '查询所有角色信息');
INSERT INTO `logs` VALUES (303, '2022-05-14 15:53:52', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.RolesController.listRoles', '查询所有角色信息');
INSERT INTO `logs` VALUES (304, '2022-05-14 16:09:23', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.RolesController.listRoles', '查询所有角色信息');
INSERT INTO `logs` VALUES (305, '2022-05-14 19:33:27', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (306, '2022-05-14 19:33:31', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.splictlistTags', '分页查询标签');
INSERT INTO `logs` VALUES (307, '2022-05-14 19:33:32', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (308, '2022-05-14 19:33:32', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (309, '2022-05-14 19:33:32', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.QuestController.listQuestion', '分页查询提问问题');
INSERT INTO `logs` VALUES (310, '2022-05-14 19:33:36', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (311, '2022-05-14 19:33:51', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.RolesController.listRoles', '查询所有角色信息');
INSERT INTO `logs` VALUES (312, '2022-05-14 19:33:51', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.PermissionController.listPermissions', '查询所有权限初始化权限菜单');
INSERT INTO `logs` VALUES (313, '2022-05-14 19:33:51', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.RolesController.listPageRoles', '分页查询角色信息');
INSERT INTO `logs` VALUES (314, '2022-05-14 19:34:02', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.PermissionController.savePermissions', '给角色分配权限');
INSERT INTO `logs` VALUES (315, '2022-05-14 19:34:04', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.PermissionController.removePermissions', '删除角色权限');
INSERT INTO `logs` VALUES (316, '2022-05-14 19:37:58', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.PermissionController.savePermissions', '给角色分配权限');
INSERT INTO `logs` VALUES (317, '2022-05-14 19:39:48', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.PermissionController.removePermissions', '删除角色权限');
INSERT INTO `logs` VALUES (318, '2022-05-14 19:41:16', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.RolesController.listRoles', '查询所有角色信息');
INSERT INTO `logs` VALUES (319, '2022-05-14 19:41:17', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.PermissionController.listPermissions', '查询所有权限初始化权限菜单');
INSERT INTO `logs` VALUES (320, '2022-05-14 19:41:17', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.RolesController.listPageRoles', '分页查询角色信息');
INSERT INTO `logs` VALUES (321, '2022-05-14 19:41:26', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.PermissionController.savePermissions', '给角色分配权限');
INSERT INTO `logs` VALUES (322, '2022-05-14 19:41:28', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.PermissionController.removePermissions', '删除角色权限');
INSERT INTO `logs` VALUES (323, '2022-05-14 19:41:40', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.PermissionController.savePermissions', '给角色分配权限');
INSERT INTO `logs` VALUES (324, '2022-05-14 19:41:53', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.CommentController.listAnswer', '分页查询评论');
INSERT INTO `logs` VALUES (325, '2022-05-14 19:41:56', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.splictlistTags', '分页查询标签');
INSERT INTO `logs` VALUES (326, '2022-05-14 19:41:56', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (327, '2022-05-14 19:41:56', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (328, '2022-05-14 19:41:56', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.QuestController.listQuestion', '分页查询提问问题');
INSERT INTO `logs` VALUES (329, '2022-05-14 19:41:58', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (330, '2022-05-14 19:42:13', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.updateTags', '修改标签');
INSERT INTO `logs` VALUES (331, '2022-05-14 19:42:13', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.splictlistTags', '分页查询标签');
INSERT INTO `logs` VALUES (332, '2022-05-14 19:42:34', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.saveAnswer', '添加问题回复');
INSERT INTO `logs` VALUES (333, '2022-05-14 19:42:44', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.splictlistTags', '分页查询标签');
INSERT INTO `logs` VALUES (334, '2022-05-14 19:42:44', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (335, '2022-05-14 19:42:44', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (336, '2022-05-14 19:42:44', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.QuestController.listQuestion', '分页查询提问问题');
INSERT INTO `logs` VALUES (337, '2022-05-14 19:42:45', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (338, '2022-05-14 19:42:47', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.CommentController.listAnswer', '分页查询评论');
INSERT INTO `logs` VALUES (339, '2022-05-14 19:42:58', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.CommentController.saveComment', '保存评论');
INSERT INTO `logs` VALUES (340, '2022-05-14 19:43:00', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (341, '2022-05-14 19:43:00', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (342, '2022-05-14 19:43:00', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.QuestController.listQuestion', '分页查询提问问题');
INSERT INTO `logs` VALUES (343, '2022-05-14 19:44:26', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.PermissionController.listPermissions', '查询所有权限初始化权限菜单');
INSERT INTO `logs` VALUES (344, '2022-05-14 19:44:26', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.RolesController.listPageRoles', '分页查询角色信息');
INSERT INTO `logs` VALUES (345, '2022-05-14 19:47:38', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.PermissionController.savePermissions', '给角色分配权限');
INSERT INTO `logs` VALUES (346, '2022-05-14 19:47:57', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (347, '2022-05-14 19:47:59', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.PermissionController.listPermissions', '查询所有权限初始化权限菜单');
INSERT INTO `logs` VALUES (348, '2022-05-14 19:47:59', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.RolesController.listPageRoles', '分页查询角色信息');
INSERT INTO `logs` VALUES (349, '2022-05-14 19:48:12', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (350, '2022-05-14 19:48:16', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.RolesController.listRoles', '查询所有角色信息');
INSERT INTO `logs` VALUES (351, '2022-05-14 19:48:28', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.PermissionController.listPermissions', '查询所有权限初始化权限菜单');
INSERT INTO `logs` VALUES (352, '2022-05-14 19:48:28', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.RolesController.listPageRoles', '分页查询角色信息');
INSERT INTO `logs` VALUES (353, '2022-05-14 19:48:36', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.PermissionController.savePermissions', '给角色分配权限');
INSERT INTO `logs` VALUES (354, '2022-05-14 19:49:03', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.splictlistTags', '分页查询标签');
INSERT INTO `logs` VALUES (355, '2022-05-14 19:49:06', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.RolesController.listRoles', '查询所有角色信息');
INSERT INTO `logs` VALUES (356, '2022-05-14 19:50:24', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.PermissionController.listPermissions', '查询所有权限初始化权限菜单');
INSERT INTO `logs` VALUES (357, '2022-05-14 19:50:24', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.RolesController.listPageRoles', '分页查询角色信息');
INSERT INTO `logs` VALUES (358, '2022-05-14 19:50:35', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.PermissionController.savePermissions', '给角色分配权限');
INSERT INTO `logs` VALUES (359, '2022-05-14 19:51:44', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (360, '2022-05-14 19:51:47', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.RolesController.listRoles', '查询所有角色信息');
INSERT INTO `logs` VALUES (361, '2022-05-14 19:51:49', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.PermissionController.listPermissions', '查询所有权限初始化权限菜单');
INSERT INTO `logs` VALUES (362, '2022-05-14 19:51:49', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.RolesController.listPageRoles', '分页查询角色信息');
INSERT INTO `logs` VALUES (363, '2022-05-14 20:20:07', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (364, '2022-05-14 20:20:10', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.RolesController.listRoles', '查询所有角色信息');
INSERT INTO `logs` VALUES (365, '2022-05-14 20:20:12', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.PermissionController.listPermissions', '查询所有权限初始化权限菜单');
INSERT INTO `logs` VALUES (366, '2022-05-14 20:20:12', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.RolesController.listPageRoles', '分页查询角色信息');
INSERT INTO `logs` VALUES (367, '2022-05-14 20:20:19', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.PermissionController.savePermissions', '给角色分配权限');
INSERT INTO `logs` VALUES (368, '2022-05-14 20:20:26', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.splictlistTags', '分页查询标签');
INSERT INTO `logs` VALUES (369, '2022-05-14 20:20:28', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.CommentController.listAnswer', '分页查询评论');
INSERT INTO `logs` VALUES (370, '2022-05-14 20:25:04', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (371, '2022-05-14 20:25:07', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.RolesController.listRoles', '查询所有角色信息');
INSERT INTO `logs` VALUES (372, '2022-05-14 20:25:08', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.PermissionController.listPermissions', '查询所有权限初始化权限菜单');
INSERT INTO `logs` VALUES (373, '2022-05-14 20:25:08', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.RolesController.listPageRoles', '分页查询角色信息');
INSERT INTO `logs` VALUES (374, '2022-05-14 20:25:13', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.PermissionController.savePermissions', '给角色分配权限');
INSERT INTO `logs` VALUES (375, '2022-05-14 20:25:15', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.PermissionController.removePermissions', '删除角色权限');
INSERT INTO `logs` VALUES (376, '2022-05-14 20:25:21', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.PermissionController.savePermissions', '给角色分配权限');
INSERT INTO `logs` VALUES (377, '2022-05-14 20:25:26', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.PermissionController.savePermissions', '给角色分配权限');
INSERT INTO `logs` VALUES (378, '2022-05-14 20:25:29', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.PermissionController.removePermissions', '删除角色权限');
INSERT INTO `logs` VALUES (379, '2022-05-14 20:25:33', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.PermissionController.savePermissions', '给角色分配权限');
INSERT INTO `logs` VALUES (380, '2022-05-14 20:25:37', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.RolesController.listRoles', '查询所有角色信息');
INSERT INTO `logs` VALUES (381, '2022-05-14 20:32:43', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (382, '2022-05-14 20:32:46', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.RolesController.listRoles', '查询所有角色信息');
INSERT INTO `logs` VALUES (383, '2022-05-14 20:32:47', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.PermissionController.listPermissions', '查询所有权限初始化权限菜单');
INSERT INTO `logs` VALUES (384, '2022-05-14 20:32:47', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.RolesController.listPageRoles', '分页查询角色信息');
INSERT INTO `logs` VALUES (385, '2022-05-14 20:32:55', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.PermissionController.savePermissions', '给角色分配权限');
INSERT INTO `logs` VALUES (386, '2022-05-14 20:32:57', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.PermissionController.removePermissions', '删除角色权限');
INSERT INTO `logs` VALUES (387, '2022-05-14 20:33:01', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.PermissionController.savePermissions', '给角色分配权限');
INSERT INTO `logs` VALUES (388, '2022-05-14 20:33:06', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.RolesController.listRoles', '查询所有角色信息');
INSERT INTO `logs` VALUES (389, '2022-05-14 20:36:08', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (390, '2022-05-14 20:36:18', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.RolesController.listRoles', '查询所有角色信息');
INSERT INTO `logs` VALUES (391, '2022-05-14 20:39:45', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (392, '2022-05-14 20:39:53', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.RolesController.listRoles', '查询所有角色信息');
INSERT INTO `logs` VALUES (393, '2022-05-14 20:39:56', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.PermissionController.listPermissions', '查询所有权限初始化权限菜单');
INSERT INTO `logs` VALUES (394, '2022-05-14 20:39:56', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.RolesController.listPageRoles', '分页查询角色信息');
INSERT INTO `logs` VALUES (395, '2022-05-14 20:40:04', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.PermissionController.savePermissions', '给角色分配权限');
INSERT INTO `logs` VALUES (396, '2022-05-14 20:40:15', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.RolesController.listRoles', '查询所有角色信息');
INSERT INTO `logs` VALUES (397, '2022-05-14 20:40:26', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.PermissionController.removePermissions', '删除角色权限');
INSERT INTO `logs` VALUES (398, '2022-05-14 20:40:31', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.RolesController.listRoles', '查询所有角色信息');
INSERT INTO `logs` VALUES (399, '2022-05-14 20:40:38', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.PermissionController.savePermissions', '给角色分配权限');
INSERT INTO `logs` VALUES (400, '2022-05-14 20:40:49', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.RolesController.listRoles', '查询所有角色信息');
INSERT INTO `logs` VALUES (401, '2022-05-14 20:40:51', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.PermissionController.listPermissions', '查询所有权限初始化权限菜单');
INSERT INTO `logs` VALUES (402, '2022-05-14 20:40:51', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.RolesController.listPageRoles', '分页查询角色信息');
INSERT INTO `logs` VALUES (403, '2022-05-14 20:40:57', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.PermissionController.savePermissions', '给角色分配权限');
INSERT INTO `logs` VALUES (404, '2022-05-14 20:41:00', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.PermissionController.removePermissions', '删除角色权限');
INSERT INTO `logs` VALUES (405, '2022-05-14 20:41:02', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.PermissionController.savePermissions', '给角色分配权限');
INSERT INTO `logs` VALUES (406, '2022-05-14 20:41:07', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.RolesController.listRoles', '查询所有角色信息');
INSERT INTO `logs` VALUES (407, '2022-05-14 20:48:17', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.PermissionController.savePermissions', '给角色分配权限');
INSERT INTO `logs` VALUES (408, '2022-05-14 20:48:20', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.PermissionController.removePermissions', '删除角色权限');
INSERT INTO `logs` VALUES (409, '2022-05-14 20:48:33', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.PermissionController.savePermissions', '给角色分配权限');
INSERT INTO `logs` VALUES (410, '2022-05-14 20:48:41', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (411, '2022-05-14 20:48:45', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.RolesController.listRoles', '查询所有角色信息');
INSERT INTO `logs` VALUES (412, '2022-05-14 20:49:00', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (413, '2022-05-14 20:49:02', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.RolesController.listRoles', '查询所有角色信息');
INSERT INTO `logs` VALUES (414, '2022-05-14 20:49:24', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.RolesController.listRoles', '查询所有角色信息');
INSERT INTO `logs` VALUES (415, '2022-05-14 20:49:53', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.PermissionController.listPermissions', '查询所有权限初始化权限菜单');
INSERT INTO `logs` VALUES (416, '2022-05-14 20:49:53', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.RolesController.listPageRoles', '分页查询角色信息');
INSERT INTO `logs` VALUES (417, '2022-05-14 20:50:31', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.RolesController.listRoles', '查询所有角色信息');
INSERT INTO `logs` VALUES (418, '2022-05-14 20:50:58', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.CommentController.listAnswer', '分页查询评论');
INSERT INTO `logs` VALUES (419, '2022-05-14 20:51:00', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.RolesController.listRoles', '查询所有角色信息');
INSERT INTO `logs` VALUES (420, '2022-05-14 20:51:43', NULL, '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (421, '2022-05-14 20:51:44', NULL, '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (422, '2022-05-14 20:51:47', NULL, '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (423, '2022-05-14 20:51:52', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (424, '2022-05-14 20:51:55', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.RolesController.listRoles', '查询所有角色信息');
INSERT INTO `logs` VALUES (425, '2022-05-14 20:54:05', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (426, '2022-05-14 20:54:07', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (427, '2022-05-14 20:54:12', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (428, '2022-05-14 20:54:15', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.RolesController.listRoles', '查询所有角色信息');
INSERT INTO `logs` VALUES (429, '2022-05-14 20:55:20', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (430, '2022-05-14 20:55:23', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.RolesController.listRoles', '查询所有角色信息');
INSERT INTO `logs` VALUES (431, '2022-05-14 20:56:01', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.PermissionController.listPermissions', '查询所有权限初始化权限菜单');
INSERT INTO `logs` VALUES (432, '2022-05-14 20:56:01', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.RolesController.listPageRoles', '分页查询角色信息');
INSERT INTO `logs` VALUES (433, '2022-05-14 20:56:09', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (434, '2022-05-14 20:56:11', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.CommentController.listAnswer', '分页查询评论');
INSERT INTO `logs` VALUES (435, '2022-05-14 20:56:13', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.RolesController.listRoles', '查询所有角色信息');
INSERT INTO `logs` VALUES (436, '2022-05-14 20:56:18', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (437, '2022-05-14 20:56:18', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (438, '2022-05-14 20:56:18', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.QuestController.listQuestion', '分页查询提问问题');
INSERT INTO `logs` VALUES (439, '2022-05-14 20:56:20', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (440, '2022-05-14 20:56:34', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.saveAnswer', '添加问题回复');
INSERT INTO `logs` VALUES (441, '2022-05-14 20:56:40', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (442, '2022-05-14 20:56:40', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (443, '2022-05-14 20:56:40', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.QuestController.listQuestion', '分页查询提问问题');
INSERT INTO `logs` VALUES (444, '2022-05-14 20:56:41', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (445, '2022-05-14 20:57:03', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.saveAnswer', '添加问题回复');
INSERT INTO `logs` VALUES (446, '2022-05-14 20:57:07', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (447, '2022-05-14 20:57:12', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (448, '2022-05-14 20:57:12', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (449, '2022-05-14 20:57:12', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.QuestController.listQuestion', '分页查询提问问题');
INSERT INTO `logs` VALUES (450, '2022-05-14 20:57:19', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.saveAnswer', '添加问题回复');
INSERT INTO `logs` VALUES (451, '2022-05-14 20:57:23', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (452, '2022-05-14 20:57:25', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (453, '2022-05-14 20:57:25', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (454, '2022-05-14 20:57:25', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.QuestController.listQuestion', '分页查询提问问题');
INSERT INTO `logs` VALUES (455, '2022-05-14 20:57:34', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.saveAnswer', '添加问题回复');
INSERT INTO `logs` VALUES (456, '2022-05-14 20:57:38', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (457, '2022-05-14 20:57:50', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (458, '2022-05-14 20:57:50', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (459, '2022-05-14 20:57:50', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.QuestController.listQuestion', '分页查询提问问题');
INSERT INTO `logs` VALUES (460, '2022-05-14 20:57:57', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (461, '2022-05-14 20:57:57', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (462, '2022-05-14 20:57:57', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.QuestController.listQuestion', '分页查询提问问题');
INSERT INTO `logs` VALUES (463, '2022-05-14 20:58:10', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.saveAnswer', '添加问题回复');
INSERT INTO `logs` VALUES (464, '2022-05-14 20:58:15', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (465, '2022-05-14 20:58:24', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (466, '2022-05-14 20:58:36', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (467, '2022-05-14 20:58:37', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (468, '2022-05-14 20:58:37', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.QuestController.listQuestion', '分页查询提问问题');
INSERT INTO `logs` VALUES (469, '2022-05-14 20:58:43', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.saveAnswer', '添加问题回复');
INSERT INTO `logs` VALUES (470, '2022-05-14 20:58:51', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (471, '2022-05-14 20:58:57', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (472, '2022-05-14 20:58:59', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (473, '2022-05-14 20:59:01', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (474, '2022-05-14 20:59:07', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (475, '2022-05-14 21:01:52', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (476, '2022-05-14 21:01:52', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (477, '2022-05-14 21:01:52', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.QuestController.listQuestion', '分页查询提问问题');
INSERT INTO `logs` VALUES (478, '2022-05-14 21:01:58', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.saveAnswer', '添加问题回复');
INSERT INTO `logs` VALUES (479, '2022-05-14 21:02:05', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (480, '2022-05-14 21:02:08', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (481, '2022-05-14 21:02:23', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.saveAnswer', '添加问题回复');
INSERT INTO `logs` VALUES (482, '2022-05-14 21:02:26', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (483, '2022-05-14 21:02:28', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (484, '2022-05-14 21:03:20', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (485, '2022-05-14 21:03:20', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (486, '2022-05-14 21:03:21', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.QuestController.listQuestion', '分页查询提问问题');
INSERT INTO `logs` VALUES (487, '2022-05-14 21:03:21', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (488, '2022-05-14 21:03:23', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (489, '2022-05-14 21:03:26', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (490, '2022-05-14 21:03:27', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (491, '2022-05-14 21:03:49', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.saveAnswer', '添加问题回复');
INSERT INTO `logs` VALUES (492, '2022-05-14 21:04:03', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (493, '2022-05-14 21:04:05', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (494, '2022-05-15 12:28:38', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (495, '2022-05-15 12:41:39', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.RolesController.listRoles', '查询所有角色信息');
INSERT INTO `logs` VALUES (496, '2022-05-15 12:41:39', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.listUsers', '分页查询用户');
INSERT INTO `logs` VALUES (497, '2022-05-15 12:42:23', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.saveUsers', '添加用户');
INSERT INTO `logs` VALUES (498, '2022-05-15 12:42:23', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.listUsers', '分页查询用户');
INSERT INTO `logs` VALUES (499, '2022-05-15 12:42:35', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.updateUsers', '修改用户');
INSERT INTO `logs` VALUES (500, '2022-05-15 12:42:35', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.listUsers', '分页查询用户');
INSERT INTO `logs` VALUES (501, '2022-05-15 12:42:54', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (502, '2022-05-15 12:43:07', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (503, '2022-05-15 12:43:30', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.PermissionController.listPermissions', '查询所有权限初始化权限菜单');
INSERT INTO `logs` VALUES (504, '2022-05-15 12:43:31', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.RolesController.listPageRoles', '分页查询角色信息');
INSERT INTO `logs` VALUES (505, '2022-05-15 12:43:40', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.RolesController.listRoles', '查询所有角色信息');
INSERT INTO `logs` VALUES (506, '2022-05-15 12:43:41', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.listUsers', '分页查询用户');
INSERT INTO `logs` VALUES (507, '2022-05-15 12:43:46', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.RolesController.saveRole', '给用户分配角色');
INSERT INTO `logs` VALUES (508, '2022-05-15 12:44:04', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (509, '2022-05-15 12:44:07', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (510, '2022-05-15 12:44:07', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (511, '2022-05-15 12:44:07', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.QuestController.listQuestion', '分页查询提问问题');
INSERT INTO `logs` VALUES (512, '2022-05-15 12:44:07', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (513, '2022-05-15 12:44:10', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.CommentController.listAnswer', '分页查询评论');
INSERT INTO `logs` VALUES (514, '2022-05-15 12:44:43', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.QuestController.saveQuestion', '保存提问问题');
INSERT INTO `logs` VALUES (515, '2022-05-15 12:44:43', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.QuestController.listQuestion', '分页查询提问问题');
INSERT INTO `logs` VALUES (516, '2022-05-15 12:46:50', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.saveAnswer', '添加问题回复');
INSERT INTO `logs` VALUES (517, '2022-05-15 12:46:53', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (518, '2022-05-15 12:47:12', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (519, '2022-05-15 12:47:36', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (520, '2022-05-15 12:47:36', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (521, '2022-05-15 12:47:36', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.QuestController.listQuestion', '分页查询提问问题');
INSERT INTO `logs` VALUES (522, '2022-05-15 12:47:48', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (523, '2022-05-15 12:47:52', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (524, '2022-05-15 12:48:16', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.CommentController.saveComment', '保存评论');
INSERT INTO `logs` VALUES (525, '2022-05-15 12:48:18', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.CommentController.listAnswer', '分页查询评论');
INSERT INTO `logs` VALUES (526, '2022-05-15 12:48:29', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (527, '2022-05-15 12:48:31', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.CommentController.listAnswer', '分页查询评论');
INSERT INTO `logs` VALUES (528, '2022-05-15 12:48:38', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.RolesController.listRoles', '查询所有角色信息');
INSERT INTO `logs` VALUES (529, '2022-05-15 12:48:38', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.listUsers', '分页查询用户');
INSERT INTO `logs` VALUES (530, '2022-05-15 12:48:45', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.RolesController.saveRole', '给用户分配角色');
INSERT INTO `logs` VALUES (531, '2022-05-15 12:48:50', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.RolesController.saveRole', '给用户分配角色');
INSERT INTO `logs` VALUES (532, '2022-05-15 12:49:33', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (533, '2022-05-15 12:49:34', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (534, '2022-05-15 12:49:34', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (535, '2022-05-15 12:49:34', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.QuestController.listQuestion', '分页查询提问问题');
INSERT INTO `logs` VALUES (536, '2022-05-15 12:49:36', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.RolesController.listRoles', '查询所有角色信息');
INSERT INTO `logs` VALUES (537, '2022-05-15 12:49:36', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.listUsers', '分页查询用户');
INSERT INTO `logs` VALUES (538, '2022-05-15 12:49:37', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.CommentController.listAnswer', '分页查询评论');
INSERT INTO `logs` VALUES (539, '2022-05-15 12:49:42', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (540, '2022-05-15 12:49:46', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (541, '2022-05-15 12:49:51', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (542, '2022-05-15 12:50:02', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (543, '2022-05-15 12:50:05', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.splictlistTags', '分页查询标签');
INSERT INTO `logs` VALUES (544, '2022-05-15 12:50:08', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.CommentController.listAnswer', '分页查询评论');
INSERT INTO `logs` VALUES (545, '2022-05-15 12:50:13', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.RolesController.listRoles', '查询所有角色信息');
INSERT INTO `logs` VALUES (546, '2022-05-15 12:50:13', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.listUsers', '分页查询用户');
INSERT INTO `logs` VALUES (547, '2022-05-15 12:50:14', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.PermissionController.listPermissions', '查询所有权限初始化权限菜单');
INSERT INTO `logs` VALUES (548, '2022-05-15 12:50:14', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.RolesController.listPageRoles', '分页查询角色信息');
INSERT INTO `logs` VALUES (549, '2022-05-15 12:51:01', '杜牛', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (550, '2022-05-15 12:51:08', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (551, '2022-05-15 12:51:11', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.RolesController.listRoles', '查询所有角色信息');
INSERT INTO `logs` VALUES (552, '2022-05-15 12:51:11', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.listUsers', '分页查询用户');
INSERT INTO `logs` VALUES (553, '2022-05-15 12:51:17', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.updateUsers', '修改用户');
INSERT INTO `logs` VALUES (554, '2022-05-15 12:51:17', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.listUsers', '分页查询用户');
INSERT INTO `logs` VALUES (555, '2022-05-15 12:51:23', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.updateUsers', '修改用户');
INSERT INTO `logs` VALUES (556, '2022-05-15 12:51:24', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.listUsers', '分页查询用户');
INSERT INTO `logs` VALUES (557, '2022-05-15 12:51:30', '杜牛', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (558, '2022-05-15 12:51:41', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (559, '2022-05-15 12:51:45', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.RolesController.listRoles', '查询所有角色信息');
INSERT INTO `logs` VALUES (560, '2022-05-15 12:51:46', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.listUsers', '分页查询用户');
INSERT INTO `logs` VALUES (561, '2022-05-15 12:51:51', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.RolesController.saveRole', '给用户分配角色');
INSERT INTO `logs` VALUES (562, '2022-05-15 12:51:56', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.RolesController.saveRole', '给用户分配角色');
INSERT INTO `logs` VALUES (563, '2022-05-15 12:52:05', '杜牛', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (564, '2022-05-15 12:52:06', '杜牛', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (565, '2022-05-15 12:52:06', '杜牛', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (566, '2022-05-15 12:52:06', '杜牛', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.QuestController.listQuestion', '分页查询提问问题');
INSERT INTO `logs` VALUES (567, '2022-05-15 12:52:32', '杜牛', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.QuestController.saveQuestion', '保存提问问题');
INSERT INTO `logs` VALUES (568, '2022-05-15 12:52:32', '杜牛', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.QuestController.listQuestion', '分页查询提问问题');
INSERT INTO `logs` VALUES (569, '2022-05-15 12:53:13', '杜牛', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.QuestController.saveQuestion', '保存提问问题');
INSERT INTO `logs` VALUES (570, '2022-05-15 12:53:14', '杜牛', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.QuestController.listQuestion', '分页查询提问问题');
INSERT INTO `logs` VALUES (571, '2022-05-15 12:53:15', '杜牛', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (572, '2022-05-15 12:53:18', '杜牛', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (573, '2022-05-15 12:53:20', '杜牛', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.CommentController.listAnswer', '分页查询评论');
INSERT INTO `logs` VALUES (574, '2022-05-15 12:53:22', '杜牛', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.RolesController.listRoles', '查询所有角色信息');
INSERT INTO `logs` VALUES (575, '2022-05-15 12:53:22', '杜牛', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.listUsers', '分页查询用户');
INSERT INTO `logs` VALUES (576, '2022-05-15 12:53:27', '杜牛', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (577, '2022-05-15 12:53:27', '杜牛', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (578, '2022-05-15 12:53:27', '杜牛', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.QuestController.listQuestion', '分页查询提问问题');
INSERT INTO `logs` VALUES (579, '2022-05-15 12:54:27', '杜牛', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.saveAnswer', '添加问题回复');
INSERT INTO `logs` VALUES (580, '2022-05-15 12:54:29', '杜牛', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (581, '2022-05-15 12:54:49', '杜牛', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.CommentController.saveComment', '保存评论');
INSERT INTO `logs` VALUES (582, '2022-05-15 12:55:07', '杜牛', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.CommentController.saveComment', '保存评论');
INSERT INTO `logs` VALUES (583, '2022-05-15 12:55:37', '杜牛', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.saveAnswer', '添加问题回复');
INSERT INTO `logs` VALUES (584, '2022-05-15 12:55:40', '杜牛', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.CommentController.listAnswer', '分页查询评论');
INSERT INTO `logs` VALUES (585, '2022-05-15 12:55:41', '杜牛', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.RolesController.listRoles', '查询所有角色信息');
INSERT INTO `logs` VALUES (586, '2022-05-15 12:55:41', '杜牛', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.listUsers', '分页查询用户');
INSERT INTO `logs` VALUES (587, '2022-05-15 12:55:59', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (588, '2022-05-15 12:56:02', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.PermissionController.listPermissions', '查询所有权限初始化权限菜单');
INSERT INTO `logs` VALUES (589, '2022-05-15 12:56:02', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.RolesController.listPageRoles', '分页查询角色信息');
INSERT INTO `logs` VALUES (590, '2022-05-15 12:56:11', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.PermissionController.savePermissions', '给角色分配权限');
INSERT INTO `logs` VALUES (591, '2022-05-15 12:56:15', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.PermissionController.removePermissions', '删除角色权限');
INSERT INTO `logs` VALUES (592, '2022-05-15 12:56:23', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.PermissionController.savePermissions', '给角色分配权限');
INSERT INTO `logs` VALUES (593, '2022-05-15 12:56:29', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.CommentController.listAnswer', '分页查询评论');
INSERT INTO `logs` VALUES (594, '2022-05-15 12:56:31', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (595, '2022-05-15 12:56:31', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (596, '2022-05-15 12:56:31', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.QuestController.listQuestion', '分页查询提问问题');
INSERT INTO `logs` VALUES (597, '2022-05-15 12:56:32', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (598, '2022-05-15 12:56:36', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (599, '2022-05-15 12:56:39', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.removeAnswer', '删除问题回复');
INSERT INTO `logs` VALUES (600, '2022-05-15 12:56:39', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (601, '2022-05-15 12:56:40', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.removeAnswer', '删除问题回复');
INSERT INTO `logs` VALUES (602, '2022-05-15 12:56:40', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (603, '2022-05-15 12:56:42', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.removeAnswer', '删除问题回复');
INSERT INTO `logs` VALUES (604, '2022-05-15 12:56:42', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (605, '2022-05-15 12:56:44', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (606, '2022-05-15 12:56:46', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (607, '2022-05-15 12:56:50', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.removeAnswer', '删除问题回复');
INSERT INTO `logs` VALUES (608, '2022-05-15 12:56:50', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (609, '2022-05-15 12:56:55', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (610, '2022-05-15 12:56:57', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (611, '2022-05-15 12:57:03', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.removeAnswer', '删除问题回复');
INSERT INTO `logs` VALUES (612, '2022-05-15 12:57:03', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (613, '2022-05-15 12:57:26', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.removeAnswer', '删除问题回复');
INSERT INTO `logs` VALUES (614, '2022-05-15 12:57:26', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (615, '2022-05-15 12:58:36', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (616, '2022-05-15 12:58:41', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.RolesController.listRoles', '查询所有角色信息');
INSERT INTO `logs` VALUES (617, '2022-05-15 12:58:41', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.listUsers', '分页查询用户');
INSERT INTO `logs` VALUES (618, '2022-05-15 12:58:44', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.splictlistTags', '分页查询标签');
INSERT INTO `logs` VALUES (619, '2022-05-15 12:58:44', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (620, '2022-05-15 12:58:44', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (621, '2022-05-15 12:58:44', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.QuestController.listQuestion', '分页查询提问问题');
INSERT INTO `logs` VALUES (622, '2022-05-15 12:58:51', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (623, '2022-05-15 12:58:53', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (624, '2022-05-15 13:00:12', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (625, '2022-05-15 13:00:16', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.removeAnswer', '删除问题回复');
INSERT INTO `logs` VALUES (626, '2022-05-15 13:00:16', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (627, '2022-05-15 13:00:19', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (628, '2022-05-15 13:00:22', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (629, '2022-05-15 13:05:35', '高驴', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (630, '2022-05-15 13:05:37', '高驴', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (631, '2022-05-15 13:05:37', '高驴', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (632, '2022-05-15 13:05:37', '高驴', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.QuestController.listQuestion', '分页查询提问问题');
INSERT INTO `logs` VALUES (633, '2022-05-15 13:05:37', '高驴', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (634, '2022-05-15 13:05:40', '高驴', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (635, '2022-05-15 13:05:41', '高驴', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (636, '2022-05-15 13:05:47', '高驴', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (637, '2022-05-15 13:05:49', '高驴', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (638, '2022-05-15 13:07:51', '高驴', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.saveAnswer', '添加问题回复');
INSERT INTO `logs` VALUES (639, '2022-05-15 13:08:34', '高驴', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.QuestController.saveQuestion', '保存提问问题');
INSERT INTO `logs` VALUES (640, '2022-05-15 13:08:34', '高驴', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.QuestController.listQuestion', '分页查询提问问题');
INSERT INTO `logs` VALUES (641, '2022-05-15 13:08:46', '高驴', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (642, '2022-05-15 13:08:50', '高驴', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (643, '2022-05-15 13:08:53', '高驴', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.CommentController.listAnswer', '分页查询评论');
INSERT INTO `logs` VALUES (644, '2022-05-15 13:09:09', '高驴', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.CommentController.saveComment', '保存评论');
INSERT INTO `logs` VALUES (645, '2022-05-15 13:09:12', '高驴', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (646, '2022-05-15 13:09:16', '高驴', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (647, '2022-05-15 13:09:16', '高驴', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (648, '2022-05-15 13:09:16', '高驴', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.QuestController.listQuestion', '分页查询提问问题');
INSERT INTO `logs` VALUES (649, '2022-05-15 13:09:17', '高驴', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (650, '2022-05-15 13:09:18', '高驴', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (651, '2022-05-15 13:09:21', '高驴', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.CommentController.listAnswer', '分页查询评论');
INSERT INTO `logs` VALUES (652, '2022-05-15 13:09:31', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (653, '2022-05-15 13:09:34', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.CommentController.listAnswer', '分页查询评论');
INSERT INTO `logs` VALUES (654, '2022-05-15 13:09:37', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.splictlistTags', '分页查询标签');
INSERT INTO `logs` VALUES (655, '2022-05-15 13:09:37', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (656, '2022-05-15 13:09:42', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.removeAnswer', '删除问题回复');
INSERT INTO `logs` VALUES (657, '2022-05-15 13:09:42', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (658, '2022-05-15 13:09:44', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.removeAnswer', '删除问题回复');
INSERT INTO `logs` VALUES (659, '2022-05-15 13:09:44', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (660, '2022-05-15 13:09:47', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (661, '2022-05-15 13:09:47', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (662, '2022-05-15 13:09:47', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.QuestController.listQuestion', '分页查询提问问题');
INSERT INTO `logs` VALUES (663, '2022-05-15 13:42:26', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (664, '2022-05-15 13:42:29', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.RolesController.listRoles', '查询所有角色信息');
INSERT INTO `logs` VALUES (665, '2022-05-15 13:42:29', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.listUsers', '分页查询用户');
INSERT INTO `logs` VALUES (666, '2022-05-15 13:49:24', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (667, '2022-05-15 13:52:59', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (668, '2022-05-15 13:53:05', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (669, '2022-05-15 13:53:12', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (670, '2022-05-15 13:55:31', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (671, '2022-05-15 13:58:10', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (672, '2022-05-15 14:03:39', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (673, '2022-05-15 14:03:54', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.splictlistTags', '分页查询标签');
INSERT INTO `logs` VALUES (674, '2022-05-15 14:03:54', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (675, '2022-05-15 14:03:54', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (676, '2022-05-15 14:03:54', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.QuestController.listQuestion', '分页查询提问问题');
INSERT INTO `logs` VALUES (677, '2022-05-15 14:03:55', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (678, '2022-05-15 14:04:20', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.CommentController.listAnswer', '分页查询评论');
INSERT INTO `logs` VALUES (679, '2022-05-15 14:11:41', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.RolesController.listRoles', '查询所有角色信息');
INSERT INTO `logs` VALUES (680, '2022-05-15 14:11:41', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.listUsers', '分页查询用户');
INSERT INTO `logs` VALUES (681, '2022-05-15 14:16:13', NULL, '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (682, '2022-05-15 14:16:17', '杜牛', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (683, '2022-05-15 14:16:20', '杜牛', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (684, '2022-05-15 14:16:20', '杜牛', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (685, '2022-05-15 14:16:21', '杜牛', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.QuestController.listQuestion', '分页查询提问问题');
INSERT INTO `logs` VALUES (686, '2022-05-15 14:16:25', '杜牛', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.QuestController.removeQuestion', '删除提问问题');
INSERT INTO `logs` VALUES (687, '2022-05-15 14:16:34', '杜牛', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (688, '2022-05-15 14:16:34', '杜牛', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (689, '2022-05-15 14:16:34', '杜牛', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.QuestController.listQuestion', '分页查询提问问题');
INSERT INTO `logs` VALUES (690, '2022-05-15 14:16:41', '杜牛', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.QuestController.removeQuestion', '删除提问问题');
INSERT INTO `logs` VALUES (691, '2022-05-15 14:16:44', '杜牛', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (692, '2022-05-15 14:16:44', '杜牛', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (693, '2022-05-15 14:16:44', '杜牛', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.QuestController.listQuestion', '分页查询提问问题');
INSERT INTO `logs` VALUES (694, '2022-05-15 14:22:01', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (695, '2022-05-15 14:22:02', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (696, '2022-05-15 14:22:02', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (697, '2022-05-15 14:22:02', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.QuestController.listQuestion', '分页查询提问问题');
INSERT INTO `logs` VALUES (698, '2022-05-15 14:22:11', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.QuestController.saveQuestion', '保存提问问题');
INSERT INTO `logs` VALUES (699, '2022-05-15 14:22:11', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.QuestController.listQuestion', '分页查询提问问题');
INSERT INTO `logs` VALUES (700, '2022-05-15 14:22:15', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.QuestController.removeQuestion', '删除提问问题');
INSERT INTO `logs` VALUES (701, '2022-05-15 14:22:19', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (702, '2022-05-15 14:22:19', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (703, '2022-05-15 14:22:19', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.QuestController.listQuestion', '分页查询提问问题');
INSERT INTO `logs` VALUES (704, '2022-05-15 14:22:21', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.QuestController.removeQuestion', '删除提问问题');
INSERT INTO `logs` VALUES (705, '2022-05-15 14:22:21', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.QuestController.listQuestion', '分页查询提问问题');
INSERT INTO `logs` VALUES (706, '2022-05-15 14:22:30', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.QuestController.saveQuestion', '保存提问问题');
INSERT INTO `logs` VALUES (707, '2022-05-15 14:22:30', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.QuestController.listQuestion', '分页查询提问问题');
INSERT INTO `logs` VALUES (708, '2022-05-15 14:22:36', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (709, '2022-05-15 14:22:39', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (710, '2022-05-15 14:22:39', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (711, '2022-05-15 14:22:39', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.QuestController.listQuestion', '分页查询提问问题');
INSERT INTO `logs` VALUES (712, '2022-05-15 14:22:45', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.QuestController.removeQuestion', '删除提问问题');
INSERT INTO `logs` VALUES (713, '2022-05-15 14:25:05', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (714, '2022-05-15 14:25:28', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (715, '2022-05-15 14:25:28', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (716, '2022-05-15 14:25:28', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.QuestController.listQuestion', '分页查询提问问题');
INSERT INTO `logs` VALUES (717, '2022-05-15 14:25:31', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.QuestController.removeQuestion', '删除提问问题');
INSERT INTO `logs` VALUES (718, '2022-05-15 14:25:31', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.QuestController.listQuestion', '分页查询提问问题');
INSERT INTO `logs` VALUES (719, '2022-05-15 14:29:44', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (720, '2022-05-15 14:29:55', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (721, '2022-05-15 14:29:55', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (722, '2022-05-15 14:29:55', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.QuestController.listQuestion', '分页查询提问问题');
INSERT INTO `logs` VALUES (723, '2022-05-15 14:29:59', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.QuestController.updateQuestion', '修改提问问题');
INSERT INTO `logs` VALUES (724, '2022-05-15 14:29:59', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.QuestController.listQuestion', '分页查询提问问题');
INSERT INTO `logs` VALUES (725, '2022-05-15 14:30:08', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (726, '2022-05-15 14:30:09', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (727, '2022-05-15 14:30:09', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (728, '2022-05-15 14:30:09', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.QuestController.listQuestion', '分页查询提问问题');
INSERT INTO `logs` VALUES (729, '2022-05-15 14:30:18', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.QuestController.updateQuestion', '修改提问问题');
INSERT INTO `logs` VALUES (730, '2022-05-15 14:31:41', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (731, '2022-05-15 14:31:43', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (732, '2022-05-15 14:31:43', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (733, '2022-05-15 14:31:43', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.QuestController.listQuestion', '分页查询提问问题');
INSERT INTO `logs` VALUES (734, '2022-05-15 14:31:48', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.QuestController.updateQuestion', '修改提问问题');
INSERT INTO `logs` VALUES (735, '2022-05-15 14:32:37', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (736, '2022-05-15 14:32:37', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (737, '2022-05-15 14:32:39', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (738, '2022-05-15 14:32:39', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (739, '2022-05-15 14:32:39', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.QuestController.listQuestion', '分页查询提问问题');
INSERT INTO `logs` VALUES (740, '2022-05-15 14:32:42', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.QuestController.updateQuestion', '修改提问问题');
INSERT INTO `logs` VALUES (741, '2022-05-15 14:32:52', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (742, '2022-05-15 14:36:12', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (743, '2022-05-15 14:36:13', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (744, '2022-05-15 14:36:13', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (745, '2022-05-15 14:36:13', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.QuestController.listQuestion', '分页查询提问问题');
INSERT INTO `logs` VALUES (746, '2022-05-15 14:36:14', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (747, '2022-05-15 14:36:19', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (748, '2022-05-15 14:36:21', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (749, '2022-05-15 14:36:24', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (750, '2022-05-15 14:36:25', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (751, '2022-05-15 14:36:50', 'admin', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.CommentController.listAnswer', '分页查询评论');
INSERT INTO `logs` VALUES (752, '2022-05-15 14:39:18', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (753, '2022-05-15 14:39:20', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (754, '2022-05-15 14:39:20', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (755, '2022-05-15 14:39:21', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.QuestController.listQuestion', '分页查询提问问题');
INSERT INTO `logs` VALUES (756, '2022-05-15 14:39:23', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (757, '2022-05-15 14:39:28', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.QuestController.removeQuestion', '删除提问问题');
INSERT INTO `logs` VALUES (758, '2022-05-15 14:39:34', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.CommentController.listAnswer', '分页查询评论');
INSERT INTO `logs` VALUES (759, '2022-05-15 14:39:37', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.CommentController.removebyid', '删除评论');
INSERT INTO `logs` VALUES (760, '2022-05-15 14:39:39', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.CommentController.removebyid', '删除评论');
INSERT INTO `logs` VALUES (761, '2022-05-15 14:39:41', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.CommentController.listAnswer', '分页查询评论');
INSERT INTO `logs` VALUES (762, '2022-05-15 14:39:44', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.CommentController.removebyid', '删除评论');
INSERT INTO `logs` VALUES (763, '2022-05-15 14:40:54', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (764, '2022-05-15 14:40:55', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (765, '2022-05-15 14:40:55', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (766, '2022-05-15 14:40:55', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.QuestController.listQuestion', '分页查询提问问题');
INSERT INTO `logs` VALUES (767, '2022-05-15 14:40:56', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (768, '2022-05-15 14:40:58', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.CommentController.listAnswer', '分页查询评论');
INSERT INTO `logs` VALUES (769, '2022-05-15 14:41:00', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.CommentController.removebyid', '删除评论');
INSERT INTO `logs` VALUES (770, '2022-05-15 14:41:45', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.removeAnswer', '删除问题回复');
INSERT INTO `logs` VALUES (771, '2022-05-15 14:41:49', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.removeAnswer', '删除问题回复');
INSERT INTO `logs` VALUES (772, '2022-05-15 14:44:31', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (773, '2022-05-15 14:44:33', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (774, '2022-05-15 14:44:33', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (775, '2022-05-15 14:44:33', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.QuestController.listQuestion', '分页查询提问问题');
INSERT INTO `logs` VALUES (776, '2022-05-15 14:44:37', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.QuestController.removeQuestion', '删除提问问题');
INSERT INTO `logs` VALUES (777, '2022-05-15 14:44:37', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.QuestController.listQuestion', '分页查询提问问题');
INSERT INTO `logs` VALUES (778, '2022-05-15 14:44:42', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.QuestController.removeQuestion', '删除提问问题');
INSERT INTO `logs` VALUES (779, '2022-05-15 14:44:44', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.QuestController.removeQuestion', '删除提问问题');
INSERT INTO `logs` VALUES (780, '2022-05-15 14:44:48', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (781, '2022-05-15 14:44:52', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.removeAnswer', '删除问题回复');
INSERT INTO `logs` VALUES (782, '2022-05-15 14:44:55', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.CommentController.listAnswer', '分页查询评论');
INSERT INTO `logs` VALUES (783, '2022-05-15 14:44:58', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.CommentController.removebyid', '删除评论');
INSERT INTO `logs` VALUES (784, '2022-05-15 14:45:05', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.CommentController.removebyid', '删除评论');
INSERT INTO `logs` VALUES (785, '2022-05-15 18:22:55', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (786, '2022-05-15 18:23:55', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.splictlistTags', '分页查询标签');
INSERT INTO `logs` VALUES (787, '2022-05-15 18:23:56', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (788, '2022-05-15 18:23:56', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (789, '2022-05-15 18:23:56', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.QuestController.listQuestion', '分页查询提问问题');
INSERT INTO `logs` VALUES (790, '2022-05-15 18:23:57', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (791, '2022-05-15 18:24:10', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.removeAnswer', '删除问题回复');
INSERT INTO `logs` VALUES (792, '2022-05-15 18:24:17', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.removeAnswer', '删除问题回复');
INSERT INTO `logs` VALUES (793, '2022-05-15 18:24:22', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.removeAnswer', '删除问题回复');
INSERT INTO `logs` VALUES (794, '2022-05-15 18:24:57', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.RolesController.listRoles', '查询所有角色信息');
INSERT INTO `logs` VALUES (795, '2022-05-15 18:24:57', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.listUsers', '分页查询用户');
INSERT INTO `logs` VALUES (796, '2022-05-15 18:25:12', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.updateUsers', '修改用户');
INSERT INTO `logs` VALUES (797, '2022-05-15 18:25:12', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.listUsers', '分页查询用户');
INSERT INTO `logs` VALUES (798, '2022-05-15 18:25:26', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.updateUsers', '修改用户');
INSERT INTO `logs` VALUES (799, '2022-05-15 18:25:26', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.listUsers', '分页查询用户');
INSERT INTO `logs` VALUES (800, '2022-05-15 18:25:31', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.updateUsers', '修改用户');
INSERT INTO `logs` VALUES (801, '2022-05-15 18:25:31', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.listUsers', '分页查询用户');
INSERT INTO `logs` VALUES (802, '2022-05-15 18:25:49', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.RolesController.listRoles', '查询所有角色信息');
INSERT INTO `logs` VALUES (803, '2022-05-15 18:25:49', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.listUsers', '分页查询用户');
INSERT INTO `logs` VALUES (804, '2022-05-15 18:26:11', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.CommentController.listAnswer', '分页查询评论');
INSERT INTO `logs` VALUES (805, '2022-05-15 18:26:28', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.CommentController.removebyid', '删除评论');
INSERT INTO `logs` VALUES (806, '2022-05-15 18:27:40', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (807, '2022-05-15 18:27:45', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.CommentController.listAnswer', '分页查询评论');
INSERT INTO `logs` VALUES (808, '2022-05-15 18:28:02', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.CommentController.removebyid', '删除评论');
INSERT INTO `logs` VALUES (809, '2022-05-15 18:28:06', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.CommentController.listAnswer', '分页查询评论');
INSERT INTO `logs` VALUES (810, '2022-05-15 18:28:39', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.CommentController.removebyid', '删除评论');
INSERT INTO `logs` VALUES (811, '2022-05-15 18:29:18', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (812, '2022-05-15 18:29:21', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.CommentController.listAnswer', '分页查询评论');
INSERT INTO `logs` VALUES (813, '2022-05-15 18:29:24', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.CommentController.removebyid', '删除评论');
INSERT INTO `logs` VALUES (814, '2022-05-15 18:29:49', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.CommentController.removebyid', '删除评论');
INSERT INTO `logs` VALUES (815, '2022-05-15 18:31:46', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (816, '2022-05-15 18:31:51', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.CommentController.listAnswer', '分页查询评论');
INSERT INTO `logs` VALUES (817, '2022-05-15 18:31:55', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.CommentController.removebyid', '删除评论');
INSERT INTO `logs` VALUES (818, '2022-05-15 18:32:20', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (819, '2022-05-15 18:32:25', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.removeAnswer', '删除问题回复');
INSERT INTO `logs` VALUES (820, '2022-05-15 18:35:19', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (821, '2022-05-15 18:35:23', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (822, '2022-05-15 18:35:26', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (823, '2022-05-15 18:35:26', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (824, '2022-05-15 18:35:26', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.QuestController.listQuestion', '分页查询提问问题');
INSERT INTO `logs` VALUES (825, '2022-05-15 18:35:34', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.removeAnswer', '删除问题回复');
INSERT INTO `logs` VALUES (826, '2022-05-15 18:36:01', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.CommentController.listAnswer', '分页查询评论');
INSERT INTO `logs` VALUES (827, '2022-05-15 18:36:03', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.CommentController.removebyid', '删除评论');
INSERT INTO `logs` VALUES (828, '2022-05-15 18:37:08', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (829, '2022-05-15 18:37:11', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (830, '2022-05-15 18:37:11', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (831, '2022-05-15 18:37:11', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.QuestController.listQuestion', '分页查询提问问题');
INSERT INTO `logs` VALUES (832, '2022-05-15 18:37:15', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (833, '2022-05-15 18:37:19', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.removeAnswer', '删除问题回复');
INSERT INTO `logs` VALUES (834, '2022-05-15 18:37:19', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (835, '2022-05-15 18:37:24', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.removeAnswer', '删除问题回复');
INSERT INTO `logs` VALUES (836, '2022-05-15 18:37:24', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (837, '2022-05-15 18:37:25', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.removeAnswer', '删除问题回复');
INSERT INTO `logs` VALUES (838, '2022-05-15 18:37:25', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (839, '2022-05-15 18:37:27', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.removeAnswer', '删除问题回复');
INSERT INTO `logs` VALUES (840, '2022-05-15 18:37:27', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (841, '2022-05-15 18:37:29', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.removeAnswer', '删除问题回复');
INSERT INTO `logs` VALUES (842, '2022-05-15 18:37:29', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (843, '2022-05-15 18:37:31', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.removeAnswer', '删除问题回复');
INSERT INTO `logs` VALUES (844, '2022-05-15 18:37:31', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (845, '2022-05-15 18:37:32', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.removeAnswer', '删除问题回复');
INSERT INTO `logs` VALUES (846, '2022-05-15 18:37:32', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (847, '2022-05-15 18:37:39', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.CommentController.listAnswer', '分页查询评论');
INSERT INTO `logs` VALUES (848, '2022-05-15 18:37:42', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.CommentController.removebyid', '删除评论');
INSERT INTO `logs` VALUES (849, '2022-05-15 18:37:42', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.CommentController.listAnswer', '分页查询评论');
INSERT INTO `logs` VALUES (850, '2022-05-15 18:38:02', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.splictlistTags', '分页查询标签');
INSERT INTO `logs` VALUES (851, '2022-05-15 18:39:25', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (852, '2022-05-15 18:39:25', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.TagesController.findall', '查询所有标签');
INSERT INTO `logs` VALUES (853, '2022-05-15 18:39:25', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.QuestController.listQuestion', '分页查询提问问题');
INSERT INTO `logs` VALUES (854, '2022-05-15 18:39:27', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.QuestController.removeQuestion', '删除提问问题');
INSERT INTO `logs` VALUES (855, '2022-05-15 18:39:27', '罗林', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.QuestController.listQuestion', '分页查询提问问题');
INSERT INTO `logs` VALUES (856, '2022-05-15 18:39:38', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.login', '用户登录');
INSERT INTO `logs` VALUES (857, '2022-05-15 18:39:40', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (858, '2022-05-15 18:39:42', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.CommentController.listAnswer', '分页查询评论');
INSERT INTO `logs` VALUES (859, '2022-05-15 18:40:16', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.CommentController.removebyid', '删除评论');
INSERT INTO `logs` VALUES (860, '2022-05-15 18:40:20', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.CommentController.removebyid', '删除评论');
INSERT INTO `logs` VALUES (861, '2022-05-15 18:40:26', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.removeAnswer', '删除问题回复');
INSERT INTO `logs` VALUES (862, '2022-05-15 18:40:29', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (863, '2022-05-15 18:40:32', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.listAnswer', '分页查询问题回复');
INSERT INTO `logs` VALUES (864, '2022-05-15 18:40:38', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.AnswerController.removeAnswer', '删除问题回复');
INSERT INTO `logs` VALUES (865, '2022-05-15 18:40:46', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.RolesController.listRoles', '查询所有角色信息');
INSERT INTO `logs` VALUES (866, '2022-05-15 18:40:46', '王敏', '0:0:0:0:0:0:0:1', 'com.rk.app.controller.UsersController.listUsers', '分页查询用户');

-- ----------------------------
-- Table structure for permissions
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions`  (
  `pid` int(11) NOT NULL,
  `pname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pdesc` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`pid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of permissions
-- ----------------------------
INSERT INTO `permissions` VALUES (1, 'S1', '添加用户');
INSERT INTO `permissions` VALUES (2, 'S2', '修改用户');
INSERT INTO `permissions` VALUES (3, 'S3', '删除用户');
INSERT INTO `permissions` VALUES (4, 'S0', '查询用户');
INSERT INTO `permissions` VALUES (5, 'S4', '分配角色');
INSERT INTO `permissions` VALUES (6, 'S5', '更改状态');

-- ----------------------------
-- Table structure for question
-- ----------------------------
DROP TABLE IF EXISTS `question`;
CREATE TABLE `question`  (
  `qid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NULL DEFAULT NULL,
  `tid` int(11) NULL DEFAULT NULL,
  `aid` int(11) NULL DEFAULT NULL,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `ctime` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mtime` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  `del` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`qid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 46 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of question
-- ----------------------------
INSERT INTO `question` VALUES (30, 30, 37, 30, '什么是操作系统?', '操作系统是系统软件，没有操作的系统的电脑称为裸机', '2022-05-07 11:16:28', '2022-05-09 17:01:46', 0);
INSERT INTO `question` VALUES (31, 30, 36, NULL, 'java中有哪些集合', '常见的list集合有哪些?', '2022-05-09 13:05:56', '2022-05-09 13:27:29', 0);
INSERT INTO `question` VALUES (32, 30, 36, NULL, '什么是多线程', '如何实现', '2022-05-09 13:19:14', '2022-05-09 17:01:51', 0);
INSERT INTO `question` VALUES (38, 31, 39, NULL, 'B+树和B树的区别是什么?', 'B树叶子结点和非叶子节点都存储的有数据。而B+输只有叶子节点存储数据，并且叶子节点由链表相连', '2022-05-09 16:41:56', '0', 1);
INSERT INTO `question` VALUES (39, 31, 40, NULL, 'tcp/ip', 'tcp/ip的内容是什么?', '2022-05-09 17:01:13', '0', 0);
INSERT INTO `question` VALUES (40, 59, 39, NULL, '什么是红黑树', '和二叉树有什么区别?', '2022-05-15 12:44:43', '0', 0);
INSERT INTO `question` VALUES (41, 57, 40, NULL, '什么是三次握手', '为什么不是两次或者四次握手', '2022-05-15 12:52:32', '0', 0);
INSERT INTO `question` VALUES (42, 57, 40, NULL, 'tcp和udp的区别', '详细说一下', '2022-05-15 12:53:13', '0', 0);
INSERT INTO `question` VALUES (43, 58, 37, NULL, 'rom和ram的区别', '存储ahbah', '2022-05-15 13:08:34', '2022-05-15 14:29:59', 0);
INSERT INTO `question` VALUES (44, 31, 36, NULL, '345325', '1', '2022-05-15 14:22:11', '0', 1);
INSERT INTO `question` VALUES (45, 31, 36, NULL, 'wgq', '阿莎', '2022-05-15 14:22:30', '0', 0);

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles`  (
  `rid` int(11) NOT NULL,
  `rname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `rdesc` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`rid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES (1, '0', '管理员');
INSERT INTO `roles` VALUES (2, '1', '普通用户');

-- ----------------------------
-- Table structure for tags
-- ----------------------------
DROP TABLE IF EXISTS `tags`;
CREATE TABLE `tags`  (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `tname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ctime` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mtime` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`tid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 43 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tags
-- ----------------------------
INSERT INTO `tags` VALUES (36, 'java类', '2022-05-09 13:04:24', NULL);
INSERT INTO `tags` VALUES (37, '计算机基础类', '2022-04-27 13:04:48', '2022-05-05 19:42:09');
INSERT INTO `tags` VALUES (39, '数据结构', '2022-05-09 13:05:12', '2022-05-09 14:12:55');
INSERT INTO `tags` VALUES (40, '计算机网络', '2022-05-23 13:05:22', NULL);
INSERT INTO `tags` VALUES (42, '数据库', '2022-05-23 13:05:22', NULL);

-- ----------------------------
-- Table structure for tb_role_per
-- ----------------------------
DROP TABLE IF EXISTS `tb_role_per`;
CREATE TABLE `tb_role_per`  (
  `rid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  PRIMARY KEY (`rid`, `pid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_role_per
-- ----------------------------
INSERT INTO `tb_role_per` VALUES (1, 1);
INSERT INTO `tb_role_per` VALUES (1, 2);
INSERT INTO `tb_role_per` VALUES (1, 3);
INSERT INTO `tb_role_per` VALUES (1, 4);
INSERT INTO `tb_role_per` VALUES (1, 5);
INSERT INTO `tb_role_per` VALUES (1, 6);
INSERT INTO `tb_role_per` VALUES (2, 2);
INSERT INTO `tb_role_per` VALUES (2, 4);

-- ----------------------------
-- Table structure for tb_user_role
-- ----------------------------
DROP TABLE IF EXISTS `tb_user_role`;
CREATE TABLE `tb_user_role`  (
  `uid` int(11) NOT NULL,
  `rid` int(11) NOT NULL,
  PRIMARY KEY (`uid`, `rid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_user_role
-- ----------------------------
INSERT INTO `tb_user_role` VALUES (30, 1);
INSERT INTO `tb_user_role` VALUES (31, 2);
INSERT INTO `tb_user_role` VALUES (42, 2);
INSERT INTO `tb_user_role` VALUES (50, 2);
INSERT INTO `tb_user_role` VALUES (53, 2);
INSERT INTO `tb_user_role` VALUES (54, 2);
INSERT INTO `tb_user_role` VALUES (55, 2);
INSERT INTO `tb_user_role` VALUES (57, 2);
INSERT INTO `tb_user_role` VALUES (58, 2);
INSERT INTO `tb_user_role` VALUES (59, 1);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nickname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `avatar` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `remark` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ctime` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mtime` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `del` int(11) NULL DEFAULT 0,
  `stat` int(255) NULL DEFAULT 0 COMMENT '0启用1禁用',
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 60 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (30, '罗林', 'rk', 'd207e590fe81b886aa4ac00f62b29133', '男', 'http://rbrbsa8ab.hn-bkt.clouddn.com/O4ejBnLAAl', '无', '2022-05-09 13:05:12', '2022-05-15 18:25:31', 0, 0);
INSERT INTO `users` VALUES (31, '王敏', '王牛', '764f955ab13faf1c42901ed466045ed0', '女', 'http://rbrbsa8ab.hn-bkt.clouddn.com/irOl74WbzV', '无', '2022-05-09 13:05:12', '2022-05-14 20:55:31', 0, 0);
INSERT INTO `users` VALUES (42, '收到货司法局', '及看得开34', '899ebee96b925d878e18ea56386d2367', '男', 'http://rbrbsa8ab.hn-bkt.clouddn.com/GWSD6', '打开地', '2022-05-13 11:34:21', '2022-05-13 22:17:52', 1, 0);
INSERT INTO `users` VALUES (50, '123', '123', 'f5a42e1bbd3e3af23f0db84c4a28ff6d', '男', 'http://rbrbsa8ab.hn-bkt.clouddn.com/3BFR96b82N', '123', '2022-05-13 11:54:35', '2022-05-14 15:53:30', 1, 0);
INSERT INTO `users` VALUES (53, '罗agah', '罗林', 'd73967c7e1e41d26f80780893b34bafc', '男', 'http://rbrbsa8ab.hn-bkt.clouddn.com/qZzWy', '123', '2022-05-13 22:16:31', '2022-05-14 10:01:04', 1, 0);
INSERT INTO `users` VALUES (54, '1234', 'agqas', '8209efe6fc2582710aa37b42ee711b5b', '男', 'http://rbrbsa8ab.hn-bkt.clouddn.com/ECs2hw2UPu', '1234', '2022-05-14 10:03:51', '2022-05-14 15:54:06', 1, 0);
INSERT INTO `users` VALUES (55, '123', '3', 'dfdcbe71d760e68a48aaaab6eba06740', '男', 'http://rbrbsa8ab.hn-bkt.clouddn.com/ERkkm', 'atgag', '2022-05-14 11:11:30', NULL, 1, 0);
INSERT INTO `users` VALUES (56, '123', '3', 'dfdcbe71d760e68a48aaaab6eba06740', '男', 'http://rbrbsa8ab.hn-bkt.clouddn.com/j5xMQ', 'atgag', '2022-05-14 11:11:30', NULL, 1, 0);
INSERT INTO `users` VALUES (57, '杜牛', '杜牛', '61b7f7eef37289f93a801f1fb4e4463f', '男', 'http://rbrbsa8ab.hn-bkt.clouddn.com/lfJY6z8qpC', '密码123', '2022-05-14 20:47:13', '2022-05-15 12:51:17', 0, 0);
INSERT INTO `users` VALUES (58, '高驴', '高驴', 'a8026ced6dc7469eb2100e2eac529cc0', '男', 'http://rbrbsa8ab.hn-bkt.clouddn.com/sgnYOSDA44', '密码123', '2022-05-14 20:48:00', '2022-05-15 12:51:23', 0, 0);
INSERT INTO `users` VALUES (59, 'admin', '管理员', 'fe76d7f4be65317a387c7edcaaaa1f30', '男', 'http://rbrbsa8ab.hn-bkt.clouddn.com/qEoYRIR6C4', 'admin', '2022-05-15 12:42:23', '2022-05-15 18:25:26', 0, 0);

SET FOREIGN_KEY_CHECKS = 1;
