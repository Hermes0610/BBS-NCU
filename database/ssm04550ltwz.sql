/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50553
 Source Host           : localhost:3306
 Source Schema         : ssm04550ltwz

 Target Server Type    : MySQL
 Target Server Version : 50553
 File Encoding         : 65001

 Date: 18/12/2020 17:53:13
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
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `caina_huidaid_index`(`huidaid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of caina
-- ----------------------------
INSERT INTO `caina` VALUES (2, 1, 'X00001', '线缆什么牌子比较好', '003', 3, '004', '2020-12-18 17:14:17');
INSERT INTO `caina` VALUES (3, 2, 'X00002', '美国虚拟主机的主要用途？', '003', 5, '005', '2020-12-18 17:18:09');
INSERT INTO `caina` VALUES (4, 4, 'X00004', 'cVS v测试测', '008', 1, '007', '2020-12-18 17:50:27');

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
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `huida_xuqiuid_index`(`xuqiuid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of huida
-- ----------------------------
INSERT INTO `huida` VALUES (1, 1, 'X00001', '线缆什么牌子比较好', 3, '003', '<p>珠江电缆！</p>', '已采纳', '004', '2020-12-18 16:52:38');
INSERT INTO `huida` VALUES (2, 2, 'X00002', '美国虚拟主机的主要用途？', 5, '003', '<p>　　电子商务平台：美国虚拟主机和服务器的运行相通，大多数中小型服务商可以借助比较低的成本，从而通过美国虚拟主机自己建站，如电子商务网站或者在线交易平台等等。<br style=\"color: rgb(0, 0, 0); font-family: &quot;Microsoft YaHei&quot;; text-align: justify; white-space: normal; background-color: rgb(238, 238, 238);\"/>　　ASP应用平台：都知道美国虚拟主机特有的程序模版，作用是可以快速作批量部署，加上较低的成本和独立服务器的特质，可以成为中小型企业进行ASP应用的首选。<br style=\"color: rgb(0, 0, 0); font-family: &quot;Microsoft YaHei&quot;; text-align: justify; white-space: normal; background-color: rgb(238, 238, 238);\"/>　　在线游戏平台：美国虚拟主机的机房可以说是比较安全的，同时机房之间也有很好的间隔和售后保障，这样才能使得中小企业和专业的门户网站们可以借用美国虚拟主机所提供的数据下载和共享服务。<br style=\"color: rgb(0, 0, 0); font-family: &quot;Microsoft YaHei&quot;; text-align: justify; white-space: normal; background-color: rgb(238, 238, 238);\"/>　　数据存储平台：美国的服务器的研发技术，是很多团队都无法去匹配的，同时因为其强大的技术保障和服务，选择知名度高一点的品牌，系统更加完善，保障更全面。比如老品牌的bluehost美国虚拟主机，可以了解一下</p>', '已采纳', '005', '2020-12-18 17:17:03');
INSERT INTO `huida` VALUES (3, 2, 'X00002', '美国虚拟主机的主要用途？', 5, '003', '<div>　　美国虚拟主机的主要用途有以下几个方面：<br/><br/>　　1.美国虚拟主机用于学习和研究方面；<br/><br/>　　2.美国虚拟主机用于个人博客类型的网站；<br/><br/>　　3.用于中小型的企业展示和单页营销型的网站；<br/><br/>　　其实美国虚拟主机主要用途就是用来建设网站，美国虚拟主机可以了解下BlueHost。</div><p><br/></p>', '待采纳', '004', '2020-12-18 17:17:42');
INSERT INTO `huida` VALUES (4, 4, 'X00004', 'cVS v测试测', 1, '008', '<p>vdvvd</p>', '已采纳', '007', '2020-12-18 17:50:05');

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
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `huifu_tieziid_index`(`tieziid`) USING BTREE,
  INDEX `huifu_lanmu_index`(`lanmu`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of huifu
-- ----------------------------
INSERT INTO `huifu` VALUES (1, 3, 'T00003', '减了40斤后，我这样生活', 2, '004', '<p>　　晚上真的是超标吃太饱！约了好朋友一起吃火锅，等上菜前为了她的栗子蛋糕，俩人坐那剥栗子，一副贤惠的样子就很好笑。<br style=\"color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; font-size: 17px; text-align: justify; white-space: normal; background-color: rgb(238, 238, 238);\"/>　　<img src=\"http://img3.laibafile.cn/p/m/319644588.jpg\" title=\"点击图片查看幻灯模式\" original=\"http://img3.laibafile.cn/p/m/319644588.jpg\" loaded=\"1\" style=\"border-style: initial; display: block; margin: 10px auto; color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; font-size: 17px; text-align: justify; white-space: normal; background-color: rgb(238, 238, 238); cursor: pointer;\"/></p>', '004', '2020-12-16 17:15:27');
INSERT INTO `huifu` VALUES (2, 3, 'T00003', '减了40斤后，我这样生活', 2, '004', '<p>　　终于周末了，今天睡得特别晚，起来还是一杯咖啡。这两天外食太多，周末要清肠，没有特别饿就不吃了。天终于有点点冷了，没有工作的时候赖在沙发上太舒服了～<br style=\"color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; font-size: 17px; text-align: justify; white-space: normal; background-color: rgb(238, 238, 238);\"/>　　<img src=\"http://img3.laibafile.cn/p/m/319648389.jpg\" title=\"点击图片查看幻灯模式\" original=\"http://img3.laibafile.cn/p/m/319648389.jpg\" loaded=\"1\" style=\"border-style: initial; display: block; margin: 10px auto; color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; font-size: 17px; text-align: justify; white-space: normal; background-color: rgb(238, 238, 238); cursor: pointer;\"/><br style=\"color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; font-size: 17px; text-align: justify; white-space: normal; background-color: rgb(238, 238, 238);\"/><br style=\"color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; font-size: 17px; text-align: justify; white-space: normal; background-color: rgb(238, 238, 238);\"/>　　<img src=\"http://img3.laibafile.cn/p/m/319648390.jpg\" title=\"点击图片查看幻灯模式\" original=\"http://img3.laibafile.cn/p/m/319648390.jpg\" loaded=\"1\" style=\"border-style: initial; display: block; margin: 10px auto; color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; font-size: 17px; text-align: justify; white-space: normal; background-color: rgb(238, 238, 238); cursor: pointer;\"/></p>', '004', '2020-12-16 17:15:43');
INSERT INTO `huifu` VALUES (3, 3, 'T00003', '减了40斤后，我这样生活', 2, '004', '<p>　　昨晚到家又接了朋友的电话，说今天结婚要我一起来喝酒。虽然已经很累了，但还是想着去给个红包吧。这群朋友认识十年了吧，都是男生居多，现在结婚的结婚，生娃的生娃，基本上已经不怎么见面了。结婚的男生乖巧帅气，以前的性格闷闷的，总是会跟着我和前男友到处去当电灯泡，我们以前总是会开玩笑担心他以后会不会孤独终老啊，哈哈哈现在看来我们还是管好自己吧～后来他认识了现在的老婆，性格也开朗了很多，女生也是个娇小可爱性格好的人，所以男生找到了适合自己的人，真的会加分。我知道这群人都很唏嘘我和前男友十年的感情就这样付之东流，很多事早已物是人非。昨天到了之后，很多男生都不认识我了，确实也都一两年没见了，我瘦了很多，头发也剪短了，是有点判若两人。酒喝开了，大家也就说得多了，不得不说男人就是视觉动物，夸人的话越来越多，这是我这一两年来最明显的感觉，确实自己变好了，别人也不再会去惋惜你的过去，反而会认为你值得更好的。这么久再见到他们也很感慨，虽然早已不是一个圈子的人了，亲切和陌生混杂着，也很开心，但是很多大家各自怀着的情感，都已经是回不去了。</p>', '004', '2020-12-16 17:15:54');
INSERT INTO `huifu` VALUES (4, 1, 'T00001', '舌尖上的记忆，黔山贵水，我在贵州转了一个圈。', 1, '004', '<p><span style=\"font-family: Arial; font-size: 14px; white-space: normal;\">念头很久了，之所以没有成行，是因为一直想由远而近的玩，贵州毕竟是国内可以说走就走。</span></p>', '003', '2020-12-17 10:16:25');
INSERT INTO `huifu` VALUES (5, 1, 'T00001', '舌尖上的记忆，黔山贵水，我在贵州转了一个圈。', 1, '004', '<blockquote><p>回【1楼】（Wahaha）的帖子</p><p><span style=\"font-family: Arial; font-size: 14px; white-space: normal;\">念头很久了，之所以没有成行，是因为一直想由远而近的玩，贵州毕竟是国内可以说走就走。</span></p></blockquote><p>&nbsp;走</p>', '003', '2020-12-17 10:16:34');
INSERT INTO `huifu` VALUES (6, 2, 'T00002', '说走就走，滇、藏、青、甘自驾游', 1, '004', '<p>产生磁场</p>', '005', '2020-12-17 10:41:01');
INSERT INTO `huifu` VALUES (7, 2, 'T00002', '说走就走，滇、藏、青、甘自驾游', 1, '004', '<blockquote><p>回【1楼】（噢噢噢噢）的帖子</p><p>产生磁场</p></blockquote><p>&nbsp;超市菜市场</p>', '005', '2020-12-17 10:41:08');
INSERT INTO `huifu` VALUES (8, 2, 'T00002', '说走就走，滇、藏、青、甘自驾游', 1, '004', '<p>123</p><p><br/></p>', '003', '2020-12-18 16:25:09');
INSERT INTO `huifu` VALUES (9, 2, 'T00002', '说走就走，滇、藏、青、甘自驾游', 1, '004', '<p>cscv</p>', '008', '2020-12-18 17:48:36');

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
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `jiajingzhiding_tieziid_index`(`tieziid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of jiajingzhiding
-- ----------------------------
INSERT INTO `jiajingzhiding` VALUES (1, 2, 'T00002', '说走就走，滇、藏、青、甘自驾游', '004', '是', '是', 'admin', '2020-12-16 17:32:29');
INSERT INTO `jiajingzhiding` VALUES (2, 2, 'T00002', '说走就走，滇、藏、青、甘自驾游', '004', '是', '否', 'admin', '2020-12-16 17:46:31');
INSERT INTO `jiajingzhiding` VALUES (3, 5, 'T00005', '啥也没发明，继续灌水！', '003', '是', '否', 'admin', '2020-12-17 10:39:10');
INSERT INTO `jiajingzhiding` VALUES (4, 6, 'T00006', 'cscs测试测试测试场撒从', '005', '否', '是', '006', '2020-12-17 10:42:32');
INSERT INTO `jiajingzhiding` VALUES (5, 6, 'T00006', 'cscs测试测试测试场撒从', '005', '否', '否', 'admin', '2020-12-18 16:00:57');
INSERT INTO `jiajingzhiding` VALUES (6, 2, 'T00002', '说走就走，滇、藏、青、甘自驾游', '004', '是', '是', 'admin', '2020-12-18 16:01:08');

-- ----------------------------
-- Table structure for lanmu
-- ----------------------------
DROP TABLE IF EXISTS `lanmu`;
CREATE TABLE `lanmu`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `lanmuming` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '栏目名',
  `guanliren` int(10) UNSIGNED NOT NULL COMMENT '管理人',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `lanmu_guanliren_index`(`guanliren`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of lanmu
-- ----------------------------
INSERT INTO `lanmu` VALUES (1, '旅游休闲', 2, '2020-12-16 16:40:13');
INSERT INTO `lanmu` VALUES (2, '饮食男女', 3, '2020-12-16 16:40:24');
INSERT INTO `lanmu` VALUES (3, '灌水专区', 2, '2020-12-16 16:40:44');
INSERT INTO `lanmu` VALUES (4, '娱乐八卦', 3, '2020-12-16 16:41:14');
INSERT INTO `lanmu` VALUES (5, '需求发布', 2, '2020-12-17 09:56:38');
INSERT INTO `lanmu` VALUES (6, '测试栏目', 7, '2020-12-17 10:38:32');

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
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
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
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `tiezi_lanmu_index`(`lanmu`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tiezi
-- ----------------------------
INSERT INTO `tiezi` VALUES (1, 'T00001', '舌尖上的记忆，黔山贵水，我在贵州转了一个圈。', 1, 'upload/20201216/79221608109879476.png', '<p>　　今年旅游选择了贵州为目的地。<br style=\"color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; font-size: 17px; text-align: justify; white-space: normal; background-color: rgb(238, 238, 238);\"/>　　想去贵州的念头很久了，之所以没有成行，是因为一直想由远而近的玩，贵州毕竟是国内可以说走就走。<br style=\"color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; font-size: 17px; text-align: justify; white-space: normal; background-color: rgb(238, 238, 238);\"/>　　<img src=\"./upload/1608109882571.png\" title=\"点击图片查看幻灯模式\" original=\"./upload/1608109882571.png\" loaded=\"1\" style=\"border-style: initial; display: block; margin: 10px auto; color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; font-size: 17px; text-align: justify; white-space: normal; background-color: rgb(238, 238, 238); cursor: pointer; width: 704px; height: 519px;\"/></p>', '004', 17, 2, '否', '否', '2020-12-16 17:11:22');
INSERT INTO `tiezi` VALUES (2, 'T00002', '说走就走，滇、藏、青、甘自驾游', 1, 'upload/20201216/95241608110015379.png', '<p>　　在我们短暂的一生当中，总有那么几个地方，偶然得知，便一见倾情。<br style=\"color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; font-size: 17px; text-align: justify; white-space: normal; background-color: rgb(238, 238, 238);\"/>　　每一个的旅行者爱好者，无论是旅行大咖，徒步达人，摄影发烧友，亦或是旅行小白，大概都会将一个名字，写进“旅行必去目的地”的清单里，那便是：西藏。<br style=\"color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; font-size: 17px; text-align: justify; white-space: normal; background-color: rgb(238, 238, 238);\"/><br style=\"color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; font-size: 17px; text-align: justify; white-space: normal; background-color: rgb(238, 238, 238);\"/>　　<img src=\"./upload/1608110017795.png\" title=\"点击图片查看幻灯模式\" original=\"./upload/1608110017795.png\" loaded=\"1\" style=\"border-style: initial; display: block; margin: 10px auto; color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; font-size: 17px; text-align: justify; white-space: normal; background-color: rgb(238, 238, 238); cursor: pointer;\"/></p><p>上图为此次行程的第一站泸沽湖，（四川西昌一侧进，云南丽江一侧出）<br style=\"color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; font-size: 17px; text-align: justify; white-space: normal; background-color: rgb(238, 238, 238);\"/>　　下图为位于云南奔子栏镇附近的金沙江大拐弯<br style=\"color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; font-size: 17px; text-align: justify; white-space: normal; background-color: rgb(238, 238, 238);\"/><br style=\"color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; font-size: 17px; text-align: justify; white-space: normal; background-color: rgb(238, 238, 238);\"/>　　<img src=\"./upload/1608110017911.png\" title=\"点击图片查看幻灯模式\" original=\"./upload/1608110017911.png\" loaded=\"1\" style=\"border-style: initial; display: block; margin: 10px auto; color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; font-size: 17px; text-align: justify; white-space: normal; background-color: rgb(238, 238, 238); cursor: pointer;\"/></p>', '004', 32, 4, '是', '是', '2020-12-16 17:13:37');
INSERT INTO `tiezi` VALUES (3, 'T00003', '减了40斤后，我这样生活', 2, '', '<p>最胖的时候，78kg<br style=\"color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; font-size: 17px; text-align: justify; white-space: normal; background-color: rgb(238, 238, 238);\"/>　　那时候不丧，很幸福，热爱生活<br style=\"color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; font-size: 17px; text-align: justify; white-space: normal; background-color: rgb(238, 238, 238);\"/>　　还有个男朋友<br style=\"color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; font-size: 17px; text-align: justify; white-space: normal; background-color: rgb(238, 238, 238);\"/>　　现在维持着的体重，58kg<br style=\"color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; font-size: 17px; text-align: justify; white-space: normal; background-color: rgb(238, 238, 238);\"/>　　生活比以前更加体面、光鲜<br style=\"color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; font-size: 17px; text-align: justify; white-space: normal; background-color: rgb(238, 238, 238);\"/>　　但会丧，会迷茫，单身着<br style=\"color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; font-size: 17px; text-align: justify; white-space: normal; background-color: rgb(238, 238, 238);\"/><br style=\"color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; font-size: 17px; text-align: justify; white-space: normal; background-color: rgb(238, 238, 238);\"/>　　我看过生活的两面<br style=\"color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; font-size: 17px; text-align: justify; white-space: normal; background-color: rgb(238, 238, 238);\"/>　　所以更加坚信<br style=\"color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; font-size: 17px; text-align: justify; white-space: normal; background-color: rgb(238, 238, 238);\"/>　　心之所想都是自己创造的…</p><p>终于周五了，瑞幸是我雷打不动的工作早餐，日常续命美式，最近发现它家的红茶司康也不错！<br style=\"color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; font-size: 17px; text-align: justify; white-space: normal; background-color: rgb(238, 238, 238);\"/>　　<img src=\"./upload/1608110084839.png\" title=\"点击图片查看幻灯模式\" original=\"./upload/1608110084839.png\" loaded=\"1\" style=\"border-style: initial; display: block; margin: 10px auto; color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; font-size: 17px; text-align: justify; white-space: normal; background-color: rgb(238, 238, 238); cursor: pointer;\"/></p><p>　　昨晚到2点才睡，除了喝酒，平时很少跟朋友聊那么晚，当然昨晚也喝酒了哈哈。年纪大了对朋友的取舍很果断，身边人见面大多都是聊感情聊小孩聊家庭，能一起聊聊自己聊聊吃喝玩乐的人越来越少了。有时候也会羡慕有家庭的人，但更多的时候还是喜欢这种自己做主的状态。以前一直以为自己会早早结婚，毕竟曾经有个谈了快十年的男朋友，事实证明恋爱不要谈太久哈哈哈，不过也好，看到现在的自己我就在想，当初要是结婚了我现在肯定后悔死了。<br style=\"color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; font-size: 17px; text-align: justify; white-space: normal; background-color: rgb(238, 238, 238);\"/>　　<img src=\"./upload/1608110084921.png\" title=\"点击图片查看幻灯模式\" original=\"./upload/1608110084921.png\" loaded=\"1\" style=\"border-style: initial; display: block; margin: 10px auto; color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; font-size: 17px; text-align: justify; white-space: normal; background-color: rgb(238, 238, 238); cursor: pointer;\"/></p>', '004', 36, 3, '否', '否', '2020-12-16 17:14:44');
INSERT INTO `tiezi` VALUES (4, 'T00004', '嘀嗒嘀嗒，下雨了', 3, '', '<div>　　嘀嗒嘀嗒<br/>　　下雨了<br/>　　想找个地方记录下自己的生活<br/>　　记性越来越差<br/>　　好记性不如烂笔头<br/>　　希望这次可以记录下我的生活</div><p>　　发成功了吗？<br style=\"color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; font-size: 17px; text-align: justify; white-space: normal; background-color: rgb(238, 238, 238);\"/>　　为啥在我的帖子里面找不到呢<br style=\"color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; font-size: 17px; text-align: justify; white-space: normal; background-color: rgb(238, 238, 238);\"/>　　那些个盗号的人怎么想的<br style=\"color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; font-size: 17px; text-align: justify; white-space: normal; background-color: rgb(238, 238, 238);\"/>　　一个论坛的账号至于三番五次地盗用么<br style=\"color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; font-size: 17px; text-align: justify; white-space: normal; background-color: rgb(238, 238, 238);\"/>　　这个账号注册了快七年了<br style=\"color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; font-size: 17px; text-align: justify; white-space: normal; background-color: rgb(238, 238, 238);\"/>　　都不知道当初是因为什么而注册</p><p><br/></p><p>　　挺舍不得之前快八个月的碎碎念记录的<br style=\"color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; font-size: 17px; text-align: justify; white-space: normal; background-color: rgb(238, 238, 238);\"/>　　说没就没了<br style=\"color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; font-size: 17px; text-align: justify; white-space: normal; background-color: rgb(238, 238, 238);\"/>　　不知道值班编辑会不会处理<br style=\"color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; font-size: 17px; text-align: justify; white-space: normal; background-color: rgb(238, 238, 238);\"/>　　帖子恢复第一件事<br style=\"color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; font-size: 17px; text-align: justify; white-space: normal; background-color: rgb(238, 238, 238);\"/>　　备份<br style=\"color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; font-size: 17px; text-align: justify; white-space: normal; background-color: rgb(238, 238, 238);\"/>　　备份<br style=\"color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; font-size: 17px; text-align: justify; white-space: normal; background-color: rgb(238, 238, 238);\"/>　　备份<br style=\"color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; font-size: 17px; text-align: justify; white-space: normal; background-color: rgb(238, 238, 238);\"/>　　看来定期备份真的很重要啊<br style=\"color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; font-size: 17px; text-align: justify; white-space: normal; background-color: rgb(238, 238, 238);\"/>　　真是除了自己神马都不值得信任</p><p><br/></p><p>　　最近为了追韩剧<br style=\"color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; font-size: 17px; text-align: justify; white-space: normal; background-color: rgb(238, 238, 238);\"/>　　下载了百度贴吧<br style=\"color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; font-size: 17px; text-align: justify; white-space: normal; background-color: rgb(238, 238, 238);\"/>　　然后的然后<br style=\"color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; font-size: 17px; text-align: justify; white-space: normal; background-color: rgb(238, 238, 238);\"/>　　发现我的吧龄是7.8年……惊呆了<br style=\"color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; font-size: 17px; text-align: justify; white-space: normal; background-color: rgb(238, 238, 238);\"/>　　然后挨个看了下回复<br style=\"color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; font-size: 17px; text-align: justify; white-space: normal; background-color: rgb(238, 238, 238);\"/>　　都是追剧时的回复<br style=\"color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; font-size: 17px; text-align: justify; white-space: normal; background-color: rgb(238, 238, 238);\"/>　　………</p><p><br/></p><p><br/></p>', '003', 1, 0, '否', '否', '2020-12-17 10:31:32');
INSERT INTO `tiezi` VALUES (5, 'T00005', '啥也没发明，继续灌水！', 3, '', '<div>　…………………………………………<br/>　　天涯灌水已十年，楼层昨日到六千。<br/>　　咬牙跺脚封楼顶，今开新帖又开灌。<br/><br/>　　水区依旧是家园，园美花开艳色添。<br/>　　凡尘一切要随缘，顽童趣乐老当先。</div><p>　　过去的让它过去，新来的不必着急；<br style=\"color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; font-size: 17px; text-align: justify; white-space: normal; background-color: rgb(238, 238, 238);\"/>　　问候下姐妹兄弟，是否还常返水区？</p><p><br/></p><p>　　进来就是朋友，<br style=\"color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; font-size: 17px; text-align: justify; white-space: normal; background-color: rgb(238, 238, 238);\"/>　　出去仍是兄弟。</p><p><br/></p><p>　　难为了别人，作贱了自己；<br style=\"color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; font-size: 17px; text-align: justify; white-space: normal; background-color: rgb(238, 238, 238);\"/>　　跨不过的门坎，不要硬跨，<br style=\"color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; font-size: 17px; text-align: justify; white-space: normal; background-color: rgb(238, 238, 238);\"/>　　跨过了是门，跨不过就是坎；<br style=\"color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; font-size: 17px; text-align: justify; white-space: normal; background-color: rgb(238, 238, 238);\"/>　　做不来的事情，不要硬做，<br style=\"color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; font-size: 17px; text-align: justify; white-space: normal; background-color: rgb(238, 238, 238);\"/>　　换种思路，也许会事半功倍；<br style=\"color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; font-size: 17px; text-align: justify; white-space: normal; background-color: rgb(238, 238, 238);\"/>　　拿不来的东西，不要硬拿，<br style=\"color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; font-size: 17px; text-align: justify; white-space: normal; background-color: rgb(238, 238, 238);\"/>　　即使暂时得到，也会失去。<br style=\"color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; font-size: 17px; text-align: justify; white-space: normal; background-color: rgb(238, 238, 238);\"/>　　人生的道路上，常常会站在岔道口上徘徊，<br style=\"color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; font-size: 17px; text-align: justify; white-space: normal; background-color: rgb(238, 238, 238);\"/>　　只要走错一步，就可能影响一生的前程。</p><p><br/></p>', '003', 3, 0, '是', '否', '2020-12-17 10:32:40');
INSERT INTO `tiezi` VALUES (6, 'T00006', 'cscs测试测试测试场撒从', 6, '', '<p>测试测试测试测试测试测试测试</p>', '005', 2, 0, '否', '否', '2020-12-17 10:40:38');

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
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of xuqiu
-- ----------------------------
INSERT INTO `xuqiu` VALUES (1, 'X00001', '线缆什么牌子比较好', 3, '<p>线缆什么牌子比较好 ??</p>', '已解决', '003', '2020-12-18 16:31:41');
INSERT INTO `xuqiu` VALUES (2, 'X00002', '美国虚拟主机的主要用途？', 5, '<p>求解....</p>', '已解决', '003', '2020-12-18 17:16:31');
INSERT INTO `xuqiu` VALUES (3, 'X00003', '哪里可以发表带肉肉的小说', 5, '<div class=\"bbs-content clearfix\" style=\"margin: 0px 0px 10px; padding: 0px; zoom: 1; font-size: 17px; line-height: 1.9em; color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; text-align: justify; white-space: normal;\">　　我一直想写自己的小说，但是一直半途而废。那天无意间看了一篇稍稍三观不正，带肉肉的小说，受其影响较大。于是一时冲动写了一中篇小说，因为涉及伦理问题以及带了肉肉（我是无肉不欢呐?(^?^*)），一般的小说网站都会审核，要审核过了才能发表。可是这是我的第一篇小说，我不想只有我一个人看，好像与大家分享，但是害怕会被和谐。。。。哪位大神知道可以在哪里发表这类文章吗？</div><div class=\"action-tyf\" style=\"margin: 0px; padding: 20px 0px 0px; text-align: center; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 14px; line-height: 22px; font-family: &quot;Microsoft Yahei&quot;; color: rgb(153, 153, 153); white-space: normal;\"><div class=\"action-tyf-shang\" style=\"margin: 0px 20px; padding: 0px; display: inline-block; position: relative;\"></div></div><p><br/></p>', '待解决', '003', '2020-12-18 17:26:42');
INSERT INTO `xuqiu` VALUES (4, 'X00004', 'cVS v测试测', 1, '<p>scs cs测试测是超市菜市场上传测试测试</p>', '已解决', '008', '2020-12-18 17:49:33');

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
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of yonghu
-- ----------------------------
INSERT INTO `yonghu` VALUES (1, '管理员', 'admin', 'admin', '管理员', '13800138000', '', '', '', '', '', 0, 'upload/20201216/28161608107283825.png', '2020-12-15 20:55:18');
INSERT INTO `yonghu` VALUES (2, '版主', '001', '000', '你漂亮你说了算', '13800138000', '', '', '', '', '', 0, 'upload/20201216/99841608107335571.png', '2020-12-16 16:28:56');
INSERT INTO `yonghu` VALUES (3, '版主', '002', '000', '我帅我谁了算', '13800138002', '', '', '', '', '', 0, 'upload/20201216/57911608107355772.png', '2020-12-16 16:29:16');
INSERT INTO `yonghu` VALUES (4, '用户', '003', '000', 'Wahaha', '13800138000', '', '', '', '', '', 42, 'upload/20201216/80601608107705089.png', '2020-12-16 16:35:06');
INSERT INTO `yonghu` VALUES (5, '用户', '004', '000', '恩波哼', '13800138000', '', '', '', '', '', 3, 'upload/20201216/34881608109088953.png', '2020-12-16 16:58:09');
INSERT INTO `yonghu` VALUES (6, '用户', '005', '000', '噢噢噢噢', '13800138000', '', '', '', '', '', 5, 'upload/20201217/401608172617041.png', '2020-12-17 10:36:58');
INSERT INTO `yonghu` VALUES (7, '版主', '006', '000', '1234556', '13800138001', '', '', '', '', '', 0, 'upload/20201217/58181608172681191.png', '2020-12-17 10:38:02');
INSERT INTO `yonghu` VALUES (8, '用户', '007', '000', '风疯枫', '13800138000', '男', '13800138000@qq.com', '', '', '124344', 1, '', '2020-12-18 17:38:50');
INSERT INTO `yonghu` VALUES (9, '用户', '008', '000', '呵呵呵', '13800138000', '男', '13800138000@qq.com', '测试', '超市菜市', '超市菜市场', 1, 'upload/20201218/81481608284882421.png', '2020-12-18 17:46:47');

SET FOREIGN_KEY_CHECKS = 1;
