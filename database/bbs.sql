/*
 Navicat Premium Data Transfer

 Source Server         : root@localhost
 Source Server Type    : MySQL
 Source Server Version : 50727
 Source Host           : localhost:3306
 Source Schema         : bbs

 Target Server Type    : MySQL
 Target Server Version : 50727
 File Encoding         : 65001

 Date: 22/12/2020 12:04:54
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for caina
-- ----------------------------
DROP TABLE IF EXISTS `caina`;
CREATE TABLE `caina`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `huidaid` int(10) UNSIGNED NOT NULL COMMENT '回答id',
  `xuqiubianhao` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '需求编号',
  `biaoti` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标题',
  `faburen` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '发布人',
  `jianglijifen` int(11) NOT NULL COMMENT '奖励积分',
  `huidaren` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '回答人',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `caina_huidaid_index`(`huidaid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of caina
-- ----------------------------
INSERT INTO `caina` VALUES (5, 5, 'X00005', '学生证掉了如何补办？', '5801118034', 1, 'admin', '2020-12-21 23:26:26');

-- ----------------------------
-- Table structure for huida
-- ----------------------------
DROP TABLE IF EXISTS `huida`;
CREATE TABLE `huida`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `xuqiuid` int(10) UNSIGNED NOT NULL COMMENT '需求id',
  `xuqiubianhao` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '需求编号',
  `biaoti` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标题',
  `jianglijifen` int(11) NOT NULL COMMENT '奖励积分',
  `faburen` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '发布人',
  `huidaneirong` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '回答内容',
  `zhuangtai` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '状态',
  `huidaren` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '回答人',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `huida_xuqiuid_index`(`xuqiuid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of huida
-- ----------------------------
INSERT INTO `huida` VALUES (5, 5, 'X00005', '学生证掉了如何补办？', 1, '5801118034', '<p>在九栋即可。</p>', '已采纳', 'admin', '2020-12-21 23:25:15');

-- ----------------------------
-- Table structure for huifu
-- ----------------------------
DROP TABLE IF EXISTS `huifu`;
CREATE TABLE `huifu`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tieziid` int(10) UNSIGNED NOT NULL COMMENT '帖子id',
  `bianhao` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '编号',
  `biaoti` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标题',
  `lanmu` int(10) UNSIGNED NOT NULL COMMENT '栏目',
  `faburen` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '发布人',
  `huifuneirong` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '回复内容',
  `huifuren` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '回复人',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `huifu_tieziid_index`(`tieziid`) USING BTREE,
  INDEX `huifu_lanmu_index`(`lanmu`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of huifu
-- ----------------------------
INSERT INTO `huifu` VALUES (10, 9, 'T00009', '上岸浙江大学经验分享', 6, '7901118115', '<p>谢谢学长，醍醐灌顶。</p>', '5801118034', '2020-12-21 23:13:33');
INSERT INTO `huifu` VALUES (11, 13, 'T00013', '田径场', 4, '7901118115', '<p>身体最重要。</p>', '5801118034', '2020-12-21 23:17:48');
INSERT INTO `huifu` VALUES (12, 10, 'T00010', '一号门一览', 5, '7901118115', '<p>亚洲第一号门~</p>', 'admin', '2020-12-21 23:23:08');

-- ----------------------------
-- Table structure for jiajingzhiding
-- ----------------------------
DROP TABLE IF EXISTS `jiajingzhiding`;
CREATE TABLE `jiajingzhiding`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tieziid` int(10) UNSIGNED NOT NULL COMMENT '帖子id',
  `bianhao` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '编号',
  `biaoti` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标题',
  `faburen` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '发布人',
  `jiajing` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '加精',
  `zhiding` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '置顶',
  `caozuoren` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '操作人',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `jiajingzhiding_tieziid_index`(`tieziid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for lanmu
-- ----------------------------
DROP TABLE IF EXISTS `lanmu`;
CREATE TABLE `lanmu`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `lanmuming` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '栏目名',
  `guanliren` int(10) UNSIGNED NOT NULL COMMENT '管理人',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `lanmu_guanliren_index`(`guanliren`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of lanmu
-- ----------------------------
INSERT INTO `lanmu` VALUES (1, '考研专区', 2, '2020-12-16 16:40:13');
INSERT INTO `lanmu` VALUES (2, '吃喝玩乐', 3, '2020-12-16 16:40:24');
INSERT INTO `lanmu` VALUES (3, '师生交流', 2, '2020-12-16 16:40:44');
INSERT INTO `lanmu` VALUES (4, '生活专区', 3, '2020-12-16 16:41:14');
INSERT INTO `lanmu` VALUES (5, '日常分享', 2, '2020-12-17 09:56:38');
INSERT INTO `lanmu` VALUES (6, '生活分享', 7, '2020-12-17 10:38:32');

-- ----------------------------
-- Table structure for shoucangjilu
-- ----------------------------
DROP TABLE IF EXISTS `shoucangjilu`;
CREATE TABLE `shoucangjilu`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `xwid` int(10) UNSIGNED NOT NULL,
  `biao` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `biaoti` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `url` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ziduan` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of shoucangjilu
-- ----------------------------
INSERT INTO `shoucangjilu` VALUES (1, '003', 1, 'tiezi', '舌尖上的记忆，黔山贵水，我在贵州转了一个圈。', 'http://localhost:8080/tiezidetail.do?id=1', 'biaoti', '2020-12-17 10:13:53');
INSERT INTO `shoucangjilu` VALUES (2, '005', 2, 'tiezi', '说走就走，滇、藏、青、甘自驾游', 'http://localhost:8080/tiezidetail.do?id=2', 'biaoti', '2020-12-17 10:41:18');

-- ----------------------------
-- Table structure for tiezi
-- ----------------------------
DROP TABLE IF EXISTS `tiezi`;
CREATE TABLE `tiezi`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `bianhao` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '编号',
  `biaoti` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标题',
  `lanmu` int(10) UNSIGNED NOT NULL COMMENT '栏目',
  `tupian` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '图片',
  `neirong` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '内容',
  `faburen` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '发布人',
  `dianjilv` int(11) NOT NULL COMMENT '点击率',
  `huifushu` int(11) NOT NULL COMMENT '回复数',
  `jiajing` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '加精',
  `zhiding` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '置顶',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `tiezi_lanmu_index`(`lanmu`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tiezi
-- ----------------------------
INSERT INTO `tiezi` VALUES (9, 'T00009', '上岸浙江大学经验分享', 6, '', '<hr/><p><strong>不断学习...</strong><br/></p>', '7901118115', 3, 1, '否', '否', '2020-12-21 23:00:38');
INSERT INTO `tiezi` VALUES (10, 'T00010', '一号门一览', 5, 'upload/20201221/41941608562851655.png', '<p>一号门好长呀~</p>', '7901118115', 2, 1, '否', '否', '2020-12-21 23:01:01');
INSERT INTO `tiezi` VALUES (11, 'T00011', '我们毕业了', 3, 'upload/20201221/25781608562910822.png', '', '7901118115', 0, 0, '否', '否', '2020-12-21 23:01:53');
INSERT INTO `tiezi` VALUES (12, 'T00012', '南昌大学考研教室申请流程', 1, '', '<p>1.填表</p><p>2.抽签</p><p>3.放弃考研</p>', '7901118115', 0, 0, '否', '否', '2020-12-21 23:04:26');
INSERT INTO `tiezi` VALUES (13, 'T00013', '田径场', 4, 'upload/20201221/91251608563121576.png', '<p>身体是革命的本钱</p>', '7901118115', 2, 1, '否', '否', '2020-12-21 23:06:03');
INSERT INTO `tiezi` VALUES (14, 'T00014', '图书馆学习', 6, 'upload/20201221/17331608563297153.png', '<p>同学们应该多走出寝室，到图书馆学习</p>', '5801118034', 0, 0, '否', '否', '2020-12-21 23:08:58');
INSERT INTO `tiezi` VALUES (15, 'T00015', '咱们学校的食堂真不错', 6, 'upload/20201221/51441608563388132.png', '<p>脑子和胃总有一个是满的</p>', '5801118034', 0, 0, '否', '否', '2020-12-21 23:11:02');

-- ----------------------------
-- Table structure for xuqiu
-- ----------------------------
DROP TABLE IF EXISTS `xuqiu`;
CREATE TABLE `xuqiu`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `xuqiubianhao` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '需求编号',
  `biaoti` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标题',
  `jianglijifen` int(11) NOT NULL COMMENT '奖励积分',
  `neirong` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '内容',
  `zhuangtai` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '状态',
  `faburen` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '发布人',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of xuqiu
-- ----------------------------
INSERT INTO `xuqiu` VALUES (5, 'X00005', '学生证掉了如何补办？', 1, '<p><span style=\"white-space: normal;\">学生证掉了，想早点补办，想问下学长学姐怎么处理。</span></p>', '已解决', '5801118034', '2020-12-21 23:14:37');
INSERT INTO `xuqiu` VALUES (6, 'X00006', '游泳馆一个月多少钱？', 1, '<p>如题</p>', '待解决', 'admin', '2020-12-21 23:23:56');
INSERT INTO `xuqiu` VALUES (7, 'X00007', '本学期图书馆什么时候闭馆？', 1, '', '待解决', 'admin', '2020-12-21 23:25:01');

-- ----------------------------
-- Table structure for yonghu
-- ----------------------------
DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE `yonghu`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `cx` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '权限',
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '帐号',
  `pwd` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `nicheng` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '昵称',
  `shouji` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '手机',
  `xingbie` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '性别',
  `youxiang` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '邮箱',
  `gongzuoxingzhi` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '工作性质',
  `gongzuodidian` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '工作地点',
  `gerenjianjie` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '个人简介',
  `jifen` int(10) NOT NULL COMMENT '积分',
  `touxiang` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '头像',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of yonghu
-- ----------------------------
INSERT INTO `yonghu` VALUES (1, '管理员', 'admin', 'admin', '管理员', '13800138000', '', '', '', '', '', 3, 'upload/20201216/28161608107283825.png', '2020-12-15 20:55:18');
INSERT INTO `yonghu` VALUES (4, '用户', '003', '000', 'Wahaha', '13800138000', '', '', '', '', '', 42, 'upload/20201216/80601608107705089.png', '2020-12-16 16:35:06');
INSERT INTO `yonghu` VALUES (6, '用户', '005', '000', '噢噢噢噢', '13800138000', '', '', '', '', '', 5, 'upload/20201217/401608172617041.png', '2020-12-17 10:36:58');
INSERT INTO `yonghu` VALUES (7, '版主', '006', '000', '1234556', '13800138001', '', '', '', '', '', 0, 'upload/20201217/58181608172681191.png', '2020-12-17 10:38:02');
INSERT INTO `yonghu` VALUES (9, '用户', '008', '000', '呵呵呵', '13800138000', '男', '13800138000@qq.com', '测试', '超市菜市', '超市菜市场', 1, 'upload/20201218/81481608284882421.png', '2020-12-18 17:46:47');
INSERT INTO `yonghu` VALUES (10, '用户', '7901118115', '123456', '小邱', '18775689875', '男', '1055195659@qq.com', '学生', '南昌大学', '内卷受害者', 0, 'upload/20201221/87281608562414372.png', '2020-12-21 22:53:36');
INSERT INTO `yonghu` VALUES (11, '用户', '5801118034', '123456', '小小', '18775689875', '男', '2499423707@qq.com', '学生', '南昌大学', '好好学习天天向上', 3, 'upload/20201221/43511608563239524.png', '2020-12-21 23:07:21');

SET FOREIGN_KEY_CHECKS = 1;
