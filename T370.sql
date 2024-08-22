/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t370`;
CREATE DATABASE IF NOT EXISTS `t370` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t370`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, '轮播图11111', 'upload/config1.jpg'),
	(2, '轮播图2', 'upload/config2.jpg'),
	(3, '轮播图3', 'upload/config3.jpg');

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb3 COMMENT='字典';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'sex_types', '性别类型', 1, '男', NULL, NULL, '2023-03-24 07:01:43'),
	(2, 'sex_types', '性别类型', 2, '女', NULL, NULL, '2023-03-24 07:01:43'),
	(3, 'gonggao_types', '公告类型', 1, '公告类型1', NULL, NULL, '2023-03-24 07:01:43'),
	(4, 'gonggao_types', '公告类型', 2, '公告类型2', NULL, NULL, '2023-03-24 07:01:43'),
	(5, 'shangxia_types', '上下架', 1, '上架', NULL, NULL, '2023-03-24 07:01:43'),
	(6, 'shangxia_types', '上下架', 2, '下架', NULL, NULL, '2023-03-24 07:01:43'),
	(7, 'news_types', '新闻类型', 1, '新闻类型1', NULL, NULL, '2023-03-24 07:01:43'),
	(8, 'news_types', '新闻类型', 2, '新闻类型2', NULL, NULL, '2023-03-24 07:01:43'),
	(9, 'news_types', '新闻类型', 3, '新闻类型3', NULL, NULL, '2023-03-24 07:01:43'),
	(10, 'news_types', '新闻类型', 4, '新闻类型4', NULL, NULL, '2023-03-24 07:01:43'),
	(11, 'news_collection_types', '收藏表类型', 1, '收藏', NULL, NULL, '2023-03-24 07:01:43'),
	(12, 'news_collection_types', '收藏表类型', 2, '赞', NULL, NULL, '2023-03-24 07:01:43'),
	(13, 'news_collection_types', '收藏表类型', 3, '踩', NULL, NULL, '2023-03-24 07:01:43'),
	(14, 'forum_types', '帖子类型', 1, '帖子类型1', NULL, NULL, '2023-03-24 07:01:44'),
	(15, 'forum_types', '帖子类型', 2, '帖子类型2', NULL, NULL, '2023-03-24 07:01:44'),
	(16, 'forum_types', '帖子类型', 3, '帖子类型3', NULL, NULL, '2023-03-24 07:01:44'),
	(17, 'forum_state_types', '帖子状态', 1, '发帖', NULL, NULL, '2023-03-24 07:01:44'),
	(18, 'forum_state_types', '帖子状态', 2, '回帖', NULL, NULL, '2023-03-24 07:01:44'),
	(19, 'tuijian_types', '推荐饭食', 1, '多补充热量', NULL, NULL, '2023-03-24 07:01:44'),
	(20, 'tuijian_types', '推荐饭食', 2, '保持现状', NULL, NULL, '2023-03-24 07:01:44'),
	(21, 'tuijian_types', '推荐饭食', 3, '多吃清淡食物', NULL, NULL, '2023-03-24 07:01:44'),
	(22, 'zhuangtai_types', '状态', 1, '不好', NULL, NULL, '2023-03-24 07:01:44'),
	(23, 'zhuangtai_types', '状态', 2, '一般', NULL, NULL, '2023-03-24 07:01:44'),
	(24, 'zhuangtai_types', '状态', 3, '非常好', NULL, NULL, '2023-03-24 07:01:44'),
	(25, 'xiyan_types', '吸烟', 1, '不吸烟', NULL, NULL, '2023-03-24 07:01:44'),
	(26, 'xiyan_types', '吸烟', 2, '偶尔吸烟', NULL, NULL, '2023-03-24 07:01:44'),
	(27, 'xiyan_types', '吸烟', 3, '一天一包', NULL, NULL, '2023-03-24 07:01:44'),
	(28, 'yinjiu_types', '饮酒', 1, '不喝酒', NULL, NULL, '2023-03-24 07:01:44'),
	(29, 'yinjiu_types', '饮酒', 2, '一般', NULL, NULL, '2023-03-24 07:01:44'),
	(30, 'yinjiu_types', '饮酒', 3, '喝比较多', NULL, NULL, '2023-03-24 07:01:44'),
	(31, 'shuimian_types', '睡眠情况', 1, '非常好', NULL, NULL, '2023-03-24 07:01:44'),
	(32, 'shuimian_types', '睡眠情况', 2, '一般', NULL, NULL, '2023-03-24 07:01:44'),
	(33, 'shuimian_types', '睡眠情况', 3, '差', NULL, NULL, '2023-03-24 07:01:44'),
	(34, 'jiankangrizhi_types', '健康日志类型', 1, '健康日志类型1', NULL, NULL, '2023-03-24 07:01:44'),
	(35, 'jiankangrizhi_types', '健康日志类型', 2, '健康日志类型2', NULL, NULL, '2023-03-24 07:01:44'),
	(36, 'jiankangrizhi_types', '健康日志类型', 3, '健康日志类型3', NULL, NULL, '2023-03-24 07:01:44'),
	(37, 'jiankangrizhi_types', '健康日志类型', 4, '健康日志类型4', NULL, NULL, '2023-03-24 07:01:44'),
	(38, 'xiyan_types', '吸烟', 4, '一天两包', NULL, '', '2023-03-24 07:23:06');

DROP TABLE IF EXISTS `forum`;
CREATE TABLE IF NOT EXISTS `forum` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `users_id` int DEFAULT NULL COMMENT '管理员',
  `forum_content` longtext COMMENT '发布内容',
  `super_ids` int DEFAULT NULL COMMENT '父id',
  `forum_types` int DEFAULT NULL COMMENT '帖子类型  Search111 ',
  `forum_state_types` int DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb3 COMMENT='论坛';

DELETE FROM `forum`;
INSERT INTO `forum` (`id`, `forum_name`, `yonghu_id`, `users_id`, `forum_content`, `super_ids`, `forum_types`, `forum_state_types`, `insert_time`, `update_time`, `create_time`) VALUES
	(1, '帖子标题1', 2, NULL, '发布内容1', 51, 1, 1, '2023-03-24 07:02:27', '2023-03-24 07:02:27', '2023-03-24 07:02:27'),
	(2, '帖子标题2', 2, NULL, '发布内容2', 177, 2, 1, '2023-03-24 07:02:27', '2023-03-24 07:02:27', '2023-03-24 07:02:27'),
	(3, '帖子标题3', 3, NULL, '发布内容3', 45, 1, 1, '2023-03-24 07:02:27', '2023-03-24 07:02:27', '2023-03-24 07:02:27'),
	(4, '帖子标题4', 1, NULL, '发布内容4', 51, 1, 1, '2023-03-24 07:02:27', '2023-03-24 07:02:27', '2023-03-24 07:02:27'),
	(5, '帖子标题5', 2, NULL, '发布内容5', 450, 1, 1, '2023-03-24 07:02:27', '2023-03-24 07:02:27', '2023-03-24 07:02:27'),
	(6, '帖子标题6', 2, NULL, '发布内容6', 328, 2, 1, '2023-03-24 07:02:27', '2023-03-24 07:02:27', '2023-03-24 07:02:27'),
	(7, '帖子标题7', 1, NULL, '发布内容7', 429, 1, 1, '2023-03-24 07:02:27', '2023-03-24 07:02:27', '2023-03-24 07:02:27'),
	(8, '帖子标题8', 1, NULL, '发布内容8', 486, 2, 1, '2023-03-24 07:02:27', '2023-03-24 07:02:27', '2023-03-24 07:02:27'),
	(9, '帖子标题9', 2, NULL, '发布内容9', 215, 1, 1, '2023-03-24 07:02:27', '2023-03-24 07:02:27', '2023-03-24 07:02:27'),
	(10, '帖子标题10', 3, NULL, '发布内容10', 118, 3, 1, '2023-03-24 07:02:27', '2023-03-24 07:02:27', '2023-03-24 07:02:27'),
	(11, '帖子标题11', 3, NULL, '发布内容11', 268, 3, 1, '2023-03-24 07:02:27', '2023-03-24 07:02:27', '2023-03-24 07:02:27'),
	(12, '帖子标题12', 1, NULL, '发布内容12', 480, 3, 1, '2023-03-24 07:02:27', '2023-03-24 07:02:27', '2023-03-24 07:02:27'),
	(13, '帖子标题13', 2, NULL, '发布内容13', 425, 1, 1, '2023-03-24 07:02:27', '2023-03-24 07:02:27', '2023-03-24 07:02:27'),
	(14, '帖子标题14', 2, NULL, '发布内容14', 165, 1, 1, '2023-03-24 07:02:27', '2023-03-24 07:02:27', '2023-03-24 07:02:27'),
	(15, '帖子111', 4, NULL, '<p>广东省广东省公司的很多时候</p>', NULL, 2, 1, '2023-03-24 07:19:07', NULL, '2023-03-24 07:19:07'),
	(16, NULL, 4, NULL, '韩国好几家', 15, NULL, 2, '2023-03-24 07:19:13', NULL, '2023-03-24 07:19:13'),
	(17, NULL, NULL, 1, '好几家', 15, NULL, 2, '2023-03-24 07:23:12', NULL, '2023-03-24 07:23:12'),
	(18, NULL, 1, NULL, '666', 15, NULL, 2, '2024-08-12 06:47:15', NULL, '2024-08-12 06:47:15');

DROP TABLE IF EXISTS `gonggao`;
CREATE TABLE IF NOT EXISTS `gonggao` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告发布时间 ',
  `gonggao_content` longtext COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='公告';

DELETE FROM `gonggao`;
INSERT INTO `gonggao` (`id`, `gonggao_name`, `gonggao_photo`, `gonggao_types`, `insert_time`, `gonggao_content`, `create_time`) VALUES
	(1, '公告名称1', 'upload/gonggao1.jpg', 1, '2023-03-24 07:02:27', '公告详情1', '2023-03-24 07:02:27'),
	(2, '公告名称2', 'upload/gonggao2.jpg', 1, '2023-03-24 07:02:27', '公告详情2', '2023-03-24 07:02:27'),
	(3, '公告名称3', 'upload/gonggao3.jpg', 2, '2023-03-24 07:02:27', '公告详情3', '2023-03-24 07:02:27'),
	(4, '公告名称4', 'upload/gonggao4.jpg', 2, '2023-03-24 07:02:27', '公告详情4', '2023-03-24 07:02:27'),
	(5, '公告名称5', 'upload/gonggao5.jpg', 1, '2023-03-24 07:02:27', '公告详情5', '2023-03-24 07:02:27'),
	(6, '公告名称6', 'upload/gonggao6.jpg', 1, '2023-03-24 07:02:27', '公告详情6', '2023-03-24 07:02:27'),
	(7, '公告名称7', 'upload/gonggao7.jpg', 1, '2023-03-24 07:02:27', '公告详情7', '2023-03-24 07:02:27'),
	(8, '公告名称8', 'upload/gonggao8.jpg', 2, '2023-03-24 07:02:27', '公告详情8', '2023-03-24 07:02:27'),
	(9, '公告名称9', 'upload/gonggao9.jpg', 2, '2023-03-24 07:02:27', '公告详情9', '2023-03-24 07:02:27'),
	(10, '公告名称10', 'upload/gonggao10.jpg', 2, '2023-03-24 07:02:27', '公告详情10', '2023-03-24 07:02:27'),
	(11, '公告名称11', 'upload/gonggao11.jpg', 1, '2023-03-24 07:02:27', '公告详情11', '2023-03-24 07:02:27'),
	(12, '公告名称12', 'upload/gonggao12.jpg', 1, '2023-03-24 07:02:27', '公告详情12', '2023-03-24 07:02:27'),
	(13, '公告名称13', 'upload/gonggao13.jpg', 1, '2023-03-24 07:02:27', '公告详情13', '2023-03-24 07:02:27'),
	(14, '公告名称14', 'upload/gonggao14.jpg', 1, '2023-03-24 07:02:27', '公告详情14', '2023-03-24 07:02:27');

DROP TABLE IF EXISTS `jiankangrizhi`;
CREATE TABLE IF NOT EXISTS `jiankangrizhi` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `jiankangrizhi_uuid_number` varchar(200) DEFAULT NULL COMMENT '健康日志编号',
  `jiankangrizhi_name` varchar(200) DEFAULT NULL COMMENT '健康日志名称  Search111 ',
  `jiankangrizhi_types` int DEFAULT NULL COMMENT '健康日志类型 Search111',
  `shuimian_types` int DEFAULT NULL COMMENT '睡眠情况 Search111',
  `yinjiu_types` int DEFAULT NULL COMMENT '饮酒 Search111',
  `xiyan_types` int DEFAULT NULL COMMENT '吸烟 Search111',
  `gaoya` int DEFAULT NULL COMMENT '高压',
  `diya` int DEFAULT NULL COMMENT '低压',
  `shengao` decimal(10,2) DEFAULT NULL COMMENT '身高(m)',
  `tizhong` decimal(10,2) DEFAULT NULL COMMENT '体重(kg)',
  `zhuangtai_types` int DEFAULT NULL COMMENT '状态 Search111',
  `jiankangrizhi_content` longtext COMMENT '日志内容 ',
  `suoshuriqi_time` date DEFAULT NULL COMMENT '所属日期',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `reliang` decimal(10,2) DEFAULT NULL COMMENT '所需热量(千卡)',
  `bmi_zhi` decimal(10,2) DEFAULT NULL COMMENT 'BMI值',
  `tuijian_types` int DEFAULT NULL COMMENT '推荐饭食 Search111',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3 COMMENT='健康日志';

DELETE FROM `jiankangrizhi`;
INSERT INTO `jiankangrizhi` (`id`, `yonghu_id`, `jiankangrizhi_uuid_number`, `jiankangrizhi_name`, `jiankangrizhi_types`, `shuimian_types`, `yinjiu_types`, `xiyan_types`, `gaoya`, `diya`, `shengao`, `tizhong`, `zhuangtai_types`, `jiankangrizhi_content`, `suoshuriqi_time`, `insert_time`, `reliang`, `bmi_zhi`, `tuijian_types`, `create_time`) VALUES
	(1, 3, '1679641347407', '健康日志名称1', 1, 2, 1, 1, 83, 85, 39.04, 872.24, 3, '日志内容1', '2023-03-23', '2023-03-24 07:02:27', 543.18, 720.67, 2, '2023-03-24 07:02:27'),
	(2, 2, '1679641347378', '健康日志名称2', 2, 3, 2, 2, 110, 275, 865.78, 179.64, 3, '日志内容2', '2023-03-23', '2023-03-24 07:02:27', 287.60, 15.18, 3, '2023-03-24 07:02:27'),
	(3, 3, '1679641347387', '健康日志名称3', 1, 3, 3, 2, 476, 482, 690.69, 606.78, 2, '日志内容3', '2023-03-23', '2023-03-24 07:02:27', 519.34, 78.66, 1, '2023-03-24 07:02:27'),
	(4, 1, '1679641347331', '健康日志名称4', 2, 1, 3, 1, 276, 161, 630.59, 117.48, 1, '日志内容4', '2023-03-23', '2023-03-24 07:02:27', 608.53, 251.99, 3, '2023-03-24 07:02:27'),
	(5, 2, '1679641347392', '健康日志名称5', 4, 1, 2, 2, 161, 388, 29.13, 624.12, 2, '日志内容5', '2023-03-23', '2023-03-24 07:02:27', 431.48, 780.99, 3, '2023-03-24 07:02:27'),
	(6, 2, '1679641347390', '健康日志名称6', 4, 1, 1, 1, 128, 248, 947.99, 902.41, 1, '日志内容6', '2023-03-23', '2023-03-24 07:02:27', 207.18, 411.14, 3, '2023-03-24 07:02:27'),
	(7, 2, '1679641347329', '健康日志名称7', 2, 1, 2, 1, 395, 349, 285.13, 549.88, 2, '日志内容7', '2023-03-23', '2023-03-24 07:02:27', 863.39, 933.95, 3, '2023-03-24 07:02:27'),
	(8, 1, '1679641347336', '健康日志名称8', 4, 1, 3, 3, 8, 274, 725.17, 376.86, 1, '日志内容8', '2023-03-23', '2023-03-24 07:02:27', 719.83, 20.43, 1, '2023-03-24 07:02:27'),
	(9, 3, '1679641347371', '健康日志名称9', 2, 2, 1, 2, 182, 32, 716.15, 160.43, 3, '日志内容9', '2023-03-23', '2023-03-24 07:02:27', 726.72, 884.67, 3, '2023-03-24 07:02:27'),
	(10, 2, '1679641347409', '健康日志名称10', 2, 2, 1, 2, 249, 9, 38.00, 947.47, 1, '日志内容10', '2023-03-23', '2023-03-24 07:02:27', 444.57, 532.57, 1, '2023-03-24 07:02:27'),
	(11, 1, '1679641347369', '健康日志名称11', 2, 2, 3, 1, 408, 71, 704.52, 348.62, 3, '日志内容11', '2023-03-23', '2023-03-24 07:02:27', 828.26, 619.23, 2, '2023-03-24 07:02:27'),
	(12, 1, '1679641347352', '健康日志名称12', 3, 2, 3, 2, 207, 147, 279.95, 144.48, 1, '日志内容12', '2023-03-23', '2023-03-24 07:02:27', 127.97, 791.46, 2, '2023-03-24 07:02:27'),
	(13, 3, '1679641347329', '健康日志名称13', 2, 3, 3, 1, 49, 131, 173.62, 208.80, 2, '日志内容13', '2023-03-23', '2023-03-24 07:02:27', 477.92, 874.15, 2, '2023-03-24 07:02:27'),
	(14, 1, '1679641347312', '健康日志名称14', 2, 2, 3, 3, 22, 369, 938.21, 937.73, 1, '日志内容14', '2023-03-23', '2023-03-24 07:02:27', 752.20, 211.56, 2, '2023-03-24 07:02:27'),
	(15, 1, '1679642120416', '标题111', 3, 1, 1, 3, 88, 99, 1.82, 66.00, 2, '发的工地上干活是的话', '2023-03-24', '2023-03-24 07:15:53', 1757.80, 19.93, 2, '2023-03-24 07:15:53'),
	(16, 4, '1679642381714', '标题111', 4, 3, 3, 2, 99, 22, 1.72, 88.00, 3, '更好地恢复佛山市', '2023-03-24', '2023-03-24 07:20:09', 2009.20, 29.75, 3, '2023-03-24 07:20:09'),
	(17, 4, '1679642427365', '标题112222', 4, 3, 3, 3, 11, 222, 1.92, 120.00, 3, '广东省广东省', '2023-03-25', '2023-03-24 07:20:49', 2547.60, 32.55, 3, '2023-03-24 07:20:49');

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `news_name` varchar(200) DEFAULT NULL COMMENT '新闻名称  Search111 ',
  `news_uuid_number` varchar(200) DEFAULT NULL COMMENT '新闻编号',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '新闻照片',
  `news_video` varchar(200) DEFAULT NULL COMMENT '新闻视频',
  `zan_number` int DEFAULT NULL COMMENT '赞',
  `cai_number` int DEFAULT NULL COMMENT '踩',
  `news_types` int DEFAULT NULL COMMENT '新闻类型 Search111',
  `news_clicknum` int DEFAULT NULL COMMENT '新闻热度',
  `fabu_time` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `news_content` longtext COMMENT '新闻详情 ',
  `shangxia_types` int DEFAULT NULL COMMENT '是否上架 ',
  `news_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='新闻';

DELETE FROM `news`;
INSERT INTO `news` (`id`, `news_name`, `news_uuid_number`, `news_photo`, `news_video`, `zan_number`, `cai_number`, `news_types`, `news_clicknum`, `fabu_time`, `news_content`, `shangxia_types`, `news_delete`, `insert_time`, `create_time`) VALUES
	(1, '新闻名称1', '1679641347408', 'upload/news1.jpg', 'upload/video.mp4', 222, 89, 3, 126, '2023-03-24 07:02:27', '新闻详情1', 1, 1, '2023-03-24 07:02:27', '2023-03-24 07:02:27'),
	(2, '新闻名称2', '1679641347369', 'upload/news2.jpg', 'upload/video.mp4', 241, 65, 4, 295, '2023-03-24 07:02:27', '新闻详情2', 1, 1, '2023-03-24 07:02:27', '2023-03-24 07:02:27'),
	(3, '新闻名称3', '1679641347342', 'upload/news3.jpg', 'upload/video.mp4', 182, 235, 1, 17, '2023-03-24 07:02:27', '新闻详情3', 1, 1, '2023-03-24 07:02:27', '2023-03-24 07:02:27'),
	(4, '新闻名称4', '1679641347317', 'upload/news4.jpg', 'upload/video.mp4', 501, 228, 4, 80, '2023-03-24 07:02:27', '新闻详情4', 1, 1, '2023-03-24 07:02:27', '2023-03-24 07:02:27'),
	(5, '新闻名称5', '1679641347410', 'upload/news5.jpg', 'upload/video.mp4', 184, 328, 3, 164, '2023-03-24 07:02:27', '新闻详情5', 1, 1, '2023-03-24 07:02:27', '2023-03-24 07:02:27'),
	(6, '新闻名称6', '1679641347406', 'upload/news6.jpg', 'upload/video.mp4', 431, 362, 4, 293, '2023-03-24 07:02:27', '新闻详情6', 1, 1, '2023-03-24 07:02:27', '2023-03-24 07:02:27'),
	(7, '新闻名称7', '1679641347335', 'upload/news7.jpg', 'upload/video.mp4', 324, 400, 1, 105, '2023-03-24 07:02:27', '新闻详情7', 1, 1, '2023-03-24 07:02:27', '2023-03-24 07:02:27'),
	(8, '新闻名称8', '1679641347406', 'upload/news8.jpg', 'upload/video.mp4', 10, 252, 4, 462, '2023-03-24 07:02:27', '新闻详情8', 1, 1, '2023-03-24 07:02:27', '2023-03-24 07:02:27'),
	(9, '新闻名称9', '1679641347362', 'upload/news9.jpg', 'upload/video.mp4', 106, 50, 4, 231, '2023-03-24 07:02:27', '新闻详情9', 1, 1, '2023-03-24 07:02:27', '2023-03-24 07:02:27'),
	(10, '新闻名称10', '1679641347400', 'upload/news10.jpg', 'upload/video.mp4', 393, 436, 3, 155, '2023-03-24 07:02:27', '新闻详情10', 1, 1, '2023-03-24 07:02:27', '2023-03-24 07:02:27'),
	(11, '新闻名称11', '1679641347349', 'upload/news11.jpg', 'upload/video.mp4', 336, 382, 1, 452, '2023-03-24 07:02:27', '新闻详情11', 1, 1, '2023-03-24 07:02:27', '2023-03-24 07:02:27'),
	(12, '新闻名称12', '1679641347401', 'upload/news12.jpg', 'upload/video.mp4', 183, 207, 1, 411, '2023-03-24 07:02:27', '新闻详情12', 1, 1, '2023-03-24 07:02:27', '2023-03-24 07:02:27'),
	(13, '新闻名称13', '1679641347355', 'upload/news13.jpg', 'upload/video.mp4', 351, 382, 1, 283, '2023-03-24 07:02:27', '新闻详情13', 1, 1, '2023-03-24 07:02:27', '2023-03-24 07:02:27'),
	(14, '新闻名称14', '1679641347343', 'upload/news14.jpg', 'upload/video.mp4', 102, 392, 2, 314, '2023-03-24 07:02:27', '新闻详情14', 1, 1, '2023-03-24 07:02:27', '2023-03-24 07:02:27');

DROP TABLE IF EXISTS `news_collection`;
CREATE TABLE IF NOT EXISTS `news_collection` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_id` int DEFAULT NULL COMMENT '新闻',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `news_collection_types` int DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3 COMMENT='新闻收藏';

DELETE FROM `news_collection`;
INSERT INTO `news_collection` (`id`, `news_id`, `yonghu_id`, `news_collection_types`, `insert_time`, `create_time`) VALUES
	(1, 1, 3, 1, '2023-03-24 07:02:27', '2023-03-24 07:02:27'),
	(2, 2, 2, 1, '2023-03-24 07:02:27', '2023-03-24 07:02:27'),
	(3, 3, 2, 1, '2023-03-24 07:02:27', '2023-03-24 07:02:27'),
	(4, 4, 3, 1, '2023-03-24 07:02:27', '2023-03-24 07:02:27'),
	(5, 5, 2, 1, '2023-03-24 07:02:27', '2023-03-24 07:02:27'),
	(6, 6, 3, 1, '2023-03-24 07:02:27', '2023-03-24 07:02:27'),
	(7, 7, 1, 1, '2023-03-24 07:02:27', '2023-03-24 07:02:27'),
	(8, 8, 2, 1, '2023-03-24 07:02:27', '2023-03-24 07:02:27'),
	(9, 9, 2, 1, '2023-03-24 07:02:27', '2023-03-24 07:02:27'),
	(10, 10, 2, 1, '2023-03-24 07:02:27', '2023-03-24 07:02:27'),
	(11, 11, 2, 1, '2023-03-24 07:02:27', '2023-03-24 07:02:27'),
	(12, 12, 1, 1, '2023-03-24 07:02:27', '2023-03-24 07:02:27'),
	(13, 13, 2, 1, '2023-03-24 07:02:27', '2023-03-24 07:02:27'),
	(14, 14, 3, 1, '2023-03-24 07:02:27', '2023-03-24 07:02:27'),
	(15, 11, 1, 2, '2023-03-24 07:06:07', '2023-03-24 07:06:07'),
	(16, 8, 4, 2, '2023-03-24 07:18:40', '2023-03-24 07:18:40'),
	(17, 12, 4, 2, '2023-03-24 07:19:27', '2023-03-24 07:19:27'),
	(18, 12, 4, 1, '2023-03-24 07:19:32', '2023-03-24 07:19:32'),
	(19, 8, 4, 1, '2023-03-24 07:19:36', '2023-03-24 07:19:36'),
	(20, 13, 1, 1, '2024-08-12 06:47:30', '2024-08-12 06:47:30');

DROP TABLE IF EXISTS `news_liuyan`;
CREATE TABLE IF NOT EXISTS `news_liuyan` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_id` int DEFAULT NULL COMMENT '新闻',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `news_liuyan_text` longtext COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3 COMMENT='新闻留言';

DELETE FROM `news_liuyan`;
INSERT INTO `news_liuyan` (`id`, `news_id`, `yonghu_id`, `news_liuyan_text`, `insert_time`, `reply_text`, `update_time`, `create_time`) VALUES
	(1, 1, 3, '留言内容1', '2023-03-24 07:02:27', '回复信息1', '2023-03-24 07:02:27', '2023-03-24 07:02:27'),
	(2, 2, 3, '留言内容2', '2023-03-24 07:02:27', '回复信息2', '2023-03-24 07:02:27', '2023-03-24 07:02:27'),
	(3, 3, 2, '留言内容3', '2023-03-24 07:02:27', '回复信息3', '2023-03-24 07:02:27', '2023-03-24 07:02:27'),
	(4, 4, 3, '留言内容4', '2023-03-24 07:02:27', '回复信息4', '2023-03-24 07:02:27', '2023-03-24 07:02:27'),
	(5, 5, 2, '留言内容5', '2023-03-24 07:02:27', '回复信息5', '2023-03-24 07:02:27', '2023-03-24 07:02:27'),
	(6, 6, 3, '留言内容6', '2023-03-24 07:02:27', '回复信息6', '2023-03-24 07:02:27', '2023-03-24 07:02:27'),
	(7, 7, 1, '留言内容7', '2023-03-24 07:02:27', '回复信息7', '2023-03-24 07:02:27', '2023-03-24 07:02:27'),
	(8, 8, 1, '留言内容8', '2023-03-24 07:02:27', '回复信息8', '2023-03-24 07:02:27', '2023-03-24 07:02:27'),
	(9, 9, 3, '留言内容9', '2023-03-24 07:02:27', '回复信息9', '2023-03-24 07:02:27', '2023-03-24 07:02:27'),
	(10, 10, 2, '留言内容10', '2023-03-24 07:02:27', '回复信息10', '2023-03-24 07:02:27', '2023-03-24 07:02:27'),
	(11, 11, 2, '留言内容11', '2023-03-24 07:02:27', '回复信息11', '2023-03-24 07:02:27', '2023-03-24 07:02:27'),
	(12, 12, 1, '留言内容12', '2023-03-24 07:02:27', '回复信息12', '2023-03-24 07:02:27', '2023-03-24 07:02:27'),
	(13, 13, 3, '留言内容13', '2023-03-24 07:02:27', '回复信息13', '2023-03-24 07:02:27', '2023-03-24 07:02:27'),
	(14, 14, 1, '留言内容14', '2023-03-24 07:02:27', '回复信息14', '2023-03-24 07:02:27', '2023-03-24 07:02:27'),
	(15, 11, 1, '哈哈哈哈', '2023-03-24 07:06:12', NULL, NULL, '2023-03-24 07:06:12'),
	(16, 8, 4, 'jk个梵蒂冈', '2023-03-24 07:18:47', NULL, NULL, '2023-03-24 07:18:47'),
	(17, 12, 4, '还款卡', '2023-03-24 07:19:30', '和干活好纠结', '2023-03-24 07:23:24', '2023-03-24 07:19:30');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '学生id',
  `username` varchar(100) NOT NULL COMMENT '学生名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'admin', 'users', '管理员', 'ebzwdcmyqb4dq5h2kifzxht9liow2t56', '2023-03-24 07:05:35', '2024-08-12 07:46:01'),
	(2, 1, 'a1', 'yonghu', '用户', '862nnk0yrmljyizb03dfwetzzdpzmwq6', '2023-03-24 07:05:59', '2024-08-12 07:47:04'),
	(3, 4, 'a5', 'yonghu', '用户', 'oxe83k7emdorp5l54nvhr3a18erhvbfp', '2023-03-24 07:18:31', '2023-03-24 08:18:32');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '学生名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='管理员';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2023-03-24 07:01:43');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '用户邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `username`, `password`, `yonghu_name`, `yonghu_phone`, `yonghu_id_number`, `yonghu_photo`, `sex_types`, `yonghu_email`, `create_time`) VALUES
	(1, '用户1', '123456', '用户姓名1', '17703786901', '410224199010102001', 'upload/yonghu1.jpg', 1, '1@qq.com', '2023-03-24 07:02:27'),
	(2, '用户2', '123456', '用户姓名2', '17703786902', '410224199010102002', 'upload/yonghu2.jpg', 2, '2@qq.com', '2023-03-24 07:02:27'),
	(3, '用户3', '123456', '用户姓名3', '17703786903', '410224199010102003', 'upload/yonghu3.jpg', 1, '3@qq.com', '2023-03-24 07:02:27'),
	(4, '用户4', '123456', '张5', '17788889999', '444888999999999999', 'upload/1679642336838.jpg', 2, '5@qq.com', '2023-03-24 07:18:27');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
