/*
 Navicat Premium Data Transfer

 Source Server         : MySQL
 Source Server Type    : MySQL
 Source Server Version : 50724
 Source Host           : localhost:3306
 Source Schema         : base

 Target Server Type    : MySQL
 Target Server Version : 50724
 File Encoding         : 65001

 Date: 27/05/2021 16:44:52
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin_database_bak
-- ----------------------------
DROP TABLE IF EXISTS `admin_database_bak`;
CREATE TABLE `admin_database_bak`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(0) NOT NULL,
  `update_time` datetime(0) NOT NULL,
  `filename` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `filepath` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 36 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_database_bak
-- ----------------------------
INSERT INTO `admin_database_bak` VALUES (33, '2021-01-15 16:07:54', '2021-01-15 16:07:54', 'base_20210115160753.sql', 'E:/base/backup/');
INSERT INTO `admin_database_bak` VALUES (34, '2021-01-15 16:07:59', '2021-01-15 16:07:59', 'base_20210115160758.sql', 'E:/base/backup/');
INSERT INTO `admin_database_bak` VALUES (35, '2021-01-15 16:08:04', '2021-01-15 16:08:04', 'base_20210115160803.sql', 'E:/base/backup/');

-- ----------------------------
-- Table structure for admin_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_menu`;
CREATE TABLE `admin_menu`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(0) NOT NULL,
  `update_time` datetime(0) NOT NULL,
  `icon` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sort` int(11) NOT NULL,
  `url` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `parent_id` bigint(20) NULL DEFAULT NULL,
  `is_button` bit(1) NOT NULL,
  `is_show` bit(1) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKck0mctr73qlq7wigmed2qbtxv`(`parent_id`) USING BTREE,
  CONSTRAINT `FKck0mctr73qlq7wigmed2qbtxv` FOREIGN KEY (`parent_id`) REFERENCES `admin_menu` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_menu
-- ----------------------------
INSERT INTO `admin_menu` VALUES (1, '2021-01-07 21:18:53', '2021-01-07 22:03:03', 'mdi-settings', '系统设置', 1, '', NULL, b'0', b'1');
INSERT INTO `admin_menu` VALUES (2, '2021-01-07 21:19:06', '2021-01-08 22:05:27', 'mdi-view-list', '菜单管理', 2, '/admin/menu/list', 1, b'0', b'1');
INSERT INTO `admin_menu` VALUES (3, '2021-01-07 21:19:20', '2021-01-13 10:49:56', 'mdi-plus', '新增', 3, '/admin/menu/add', 2, b'0', b'1');
INSERT INTO `admin_menu` VALUES (4, '2021-01-07 21:19:37', '2021-01-13 11:16:15', 'mdi-pencil', '编辑', 5, 'edit(\'/admin/menu/edit\')', 2, b'1', b'1');
INSERT INTO `admin_menu` VALUES (5, '2021-01-07 21:22:59', '2021-01-13 11:17:43', 'mdi-close', '删除', 4, 'del(\'/admin/menu/delete\')', 2, b'1', b'1');
INSERT INTO `admin_menu` VALUES (8, '2021-01-08 22:05:14', '2021-01-08 22:07:55', 'mdi-account-settings-variant', '角色管理', 6, '/admin/role/list', 1, b'0', b'1');
INSERT INTO `admin_menu` VALUES (9, '2021-01-08 22:06:54', '2021-01-13 10:50:04', 'mdi-account-plus', '新增', 7, '/admin/role/add', 8, b'0', b'1');
INSERT INTO `admin_menu` VALUES (10, '2021-01-08 22:07:42', '2021-01-13 11:32:47', 'mdi-account-edit', '编辑', 8, 'edit(\'/admin/role/edit\')', 8, b'1', b'1');
INSERT INTO `admin_menu` VALUES (11, '2021-01-08 22:08:38', '2021-01-13 11:33:08', 'mdi-account-remove', '删除', 10, 'del(\'/admin/role/delete\')', 8, b'1', b'1');
INSERT INTO `admin_menu` VALUES (12, '2021-01-10 16:56:05', '2021-01-13 09:40:32', 'mdi-account-multiple', '用户管理', 0, '/admin/user/list', 1, b'0', b'1');
INSERT INTO `admin_menu` VALUES (13, '2021-01-10 16:58:02', '2021-01-13 10:50:20', 'mdi-account-plus', '新增', 0, '/admin/user/add', 12, b'0', b'1');
INSERT INTO `admin_menu` VALUES (14, '2021-01-10 16:59:00', '2021-01-13 11:33:29', 'mdi-account-edit', '编辑', 0, 'edit(\'/admin/user/edit\')', 12, b'1', b'1');
INSERT INTO `admin_menu` VALUES (15, '2021-01-12 15:26:03', '2021-01-13 11:37:49', 'mdi-account-minus', '删除', 0, 'del(\'/admin/user/delete\')', 12, b'1', b'1');
INSERT INTO `admin_menu` VALUES (23, '2021-01-13 17:17:49', '2021-01-13 17:17:49', 'mdi-arrow-up-bold-circle', '上传图片', 0, '/upload/upload_photo', 12, b'0', b'0');
INSERT INTO `admin_menu` VALUES (25, '2021-01-14 09:30:30', '2021-01-14 09:48:23', 'mdi-tag', '日志管理', 0, '/admin/operator_log/list', 1, b'0', b'1');
INSERT INTO `admin_menu` VALUES (26, '2021-01-14 09:34:08', '2021-01-14 09:34:08', 'mdi-tag-remove', '删除', 0, 'del(\'/admin/operator_log/delete\')', 25, b'1', b'1');
INSERT INTO `admin_menu` VALUES (27, '2021-01-14 09:35:31', '2021-01-14 10:27:48', 'mdi-delete-circle', '清空日志', 0, 'delAll(\'/admin/operator_log/deleteAll\')', 25, b'1', b'1');
INSERT INTO `admin_menu` VALUES (28, '2021-01-14 11:38:05', '2021-01-14 11:40:24', 'mdi-database', '数据备份', 0, '/admin/database_bak/list', 1, b'0', b'1');
INSERT INTO `admin_menu` VALUES (29, '2021-01-14 11:41:10', '2021-01-14 14:43:10', 'mdi-database-plus', '备份', 0, 'add(\'/admin/database_bak/add\')', 28, b'1', b'1');
INSERT INTO `admin_menu` VALUES (30, '2021-01-14 11:42:04', '2021-01-14 11:42:04', 'mdi-database-minus', '删除', 0, 'del(\'/admin/database_bak/delete\')', 28, b'1', b'1');
INSERT INTO `admin_menu` VALUES (32, '2021-01-14 22:03:48', '2021-01-14 22:04:53', 'mdi-set-all', '还原', 0, 'restore(\'/admin/database_bak/restore\')', 28, b'1', b'1');

-- ----------------------------
-- Table structure for admin_operator_log
-- ----------------------------
DROP TABLE IF EXISTS `admin_operator_log`;
CREATE TABLE `admin_operator_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(0) NOT NULL,
  `update_time` datetime(0) NOT NULL,
  `content` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `operator` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 390 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_operator_log
-- ----------------------------
INSERT INTO `admin_operator_log` VALUES (323, '2021-01-14 15:33:13', '2021-01-14 15:33:13', '编辑一个用户，用户名：织梦行云', '织梦行云');
INSERT INTO `admin_operator_log` VALUES (324, '2021-01-14 15:33:36', '2021-01-14 15:33:36', '编辑一个用户，用户名：admin', '织梦行云');
INSERT INTO `admin_operator_log` VALUES (325, '2021-01-14 15:33:47', '2021-01-14 15:33:47', '编辑一个用户，用户名：test01', '织梦行云');
INSERT INTO `admin_operator_log` VALUES (326, '2021-01-14 15:35:48', '2021-01-14 15:35:48', '用户【织梦行云】于【2021-01-14 15:35:48】登录系统！', '织梦行云');
INSERT INTO `admin_operator_log` VALUES (327, '2021-01-14 15:36:21', '2021-01-14 15:36:21', '编辑一个用户，用户名：admin', '织梦行云');
INSERT INTO `admin_operator_log` VALUES (328, '2021-01-14 20:26:29', '2021-01-14 20:26:29', '用户【织梦行云】于【2021-01-14 20:26:29】登录系统！', '织梦行云');
INSERT INTO `admin_operator_log` VALUES (329, '2021-01-14 20:51:09', '2021-01-14 20:51:09', '数据库备份成功,备份文件信息DatabaseBak{filename=\'base_20210114.sql\', filepath=\'E:/base/backup/\'}', '织梦行云');
INSERT INTO `admin_operator_log` VALUES (330, '2021-01-14 21:00:01', '2021-01-14 21:00:01', '数据库备份成功,备份文件信息DatabaseBak{filename=\'base_20210114210000.sql\', filepath=\'E:/base/backup/\'}', '织梦行云');
INSERT INTO `admin_operator_log` VALUES (331, '2021-01-14 21:00:06', '2021-01-14 21:00:06', '数据库备份成功,备份文件信息DatabaseBak{filename=\'base_20210114210006.sql\', filepath=\'E:/base/backup/\'}', '织梦行云');
INSERT INTO `admin_operator_log` VALUES (332, '2021-01-14 21:27:47', '2021-01-14 21:27:47', '用户【织梦行云】于【2021-01-14 21:27:46】登录系统！', '织梦行云');
INSERT INTO `admin_operator_log` VALUES (333, '2021-01-14 21:33:45', '2021-01-14 21:33:45', '数据库备份成功,备份文件信息DatabaseBak{filename=\'base_20210114213344.sql\', filepath=\'E:/base/backup/\'}', '织梦行云');
INSERT INTO `admin_operator_log` VALUES (334, '2021-01-14 21:33:47', '2021-01-14 21:33:47', '数据库备份成功,备份文件信息DatabaseBak{filename=\'base_20210114213347.sql\', filepath=\'E:/base/backup/\'}', '织梦行云');
INSERT INTO `admin_operator_log` VALUES (335, '2021-01-14 21:33:49', '2021-01-14 21:33:49', '数据库备份成功,备份文件信息DatabaseBak{filename=\'base_20210114213348.sql\', filepath=\'E:/base/backup/\'}', '织梦行云');
INSERT INTO `admin_operator_log` VALUES (336, '2021-01-14 21:54:03', '2021-01-14 21:54:03', '数据库备份成功,备份文件信息DatabaseBak{filename=\'base_20210114215403.sql\', filepath=\'E:/base/backup/\'}', '织梦行云');
INSERT INTO `admin_operator_log` VALUES (337, '2021-01-14 22:03:48', '2021-01-14 22:03:48', '添加一个菜单【Menu{name=\'还原\', parent=Menu{name=\'数据备份\', parent=Menu{name=\'系统设置\', parent=null, url=\'\', icon=\'mdi-settings\', sort=1, isbutton=false, isshow=true}, url=\'/admin/database_bak/list\', icon=\'mdi-database\', sort=0, isbutton=false, isshow=true}, url=\'restor(\'/admin/database_bak/restor\')\', icon=\'mdi-set-all\', sort=0, isbutton=true, isshow=true}】', '织梦行云');
INSERT INTO `admin_operator_log` VALUES (338, '2021-01-14 22:04:53', '2021-01-14 22:04:53', '修改一个菜单【Menu{name=\'还原\', parent=Menu{name=\'数据备份\', parent=Menu{name=\'系统设置\', parent=null, url=\'\', icon=\'mdi-settings\', sort=1, isbutton=false, isshow=true}, url=\'/admin/database_bak/list\', icon=\'mdi-database\', sort=0, isbutton=false, isshow=true}, url=\'restore(\'/admin/database_bak/restore\')\', icon=\'mdi-set-all\', sort=0, isbutton=true, isshow=true}】', '织梦行云');
INSERT INTO `admin_operator_log` VALUES (339, '2021-01-14 22:09:08', '2021-01-14 22:09:08', '用户【织梦行云】于【2021-01-14 22:09:07】登录系统！', '织梦行云');
INSERT INTO `admin_operator_log` VALUES (340, '2021-01-14 22:09:23', '2021-01-14 22:09:23', '数据库备份成功,备份文件信息DatabaseBak{filename=\'base_20210114220922.sql\', filepath=\'E:/base/backup/\'}', '织梦行云');
INSERT INTO `admin_operator_log` VALUES (341, '2021-01-14 22:09:34', '2021-01-14 22:09:34', '数据库备份成功,备份文件信息DatabaseBak{filename=\'base_20210114220934.sql\', filepath=\'E:/base/backup/\'}', '织梦行云');
INSERT INTO `admin_operator_log` VALUES (342, '2021-01-14 22:09:36', '2021-01-14 22:09:36', '数据库备份成功,备份文件信息DatabaseBak{filename=\'base_20210114220935.sql\', filepath=\'E:/base/backup/\'}', '织梦行云');
INSERT INTO `admin_operator_log` VALUES (343, '2021-01-14 22:09:45', '2021-01-14 22:09:45', '数据库备份成功,备份文件信息DatabaseBak{filename=\'base_20210114220944.sql\', filepath=\'E:/base/backup/\'}', '织梦行云');
INSERT INTO `admin_operator_log` VALUES (344, '2021-01-14 22:10:07', '2021-01-14 22:10:07', '修改一个角色【超管】', '织梦行云');
INSERT INTO `admin_operator_log` VALUES (345, '2021-01-14 22:10:16', '2021-01-14 22:10:16', '用户【织梦行云】于【2021-01-14 22:10:16】登录系统！', '织梦行云');
INSERT INTO `admin_operator_log` VALUES (346, '2021-01-14 22:13:01', '2021-01-14 22:13:01', '数据库备份成功,备份文件信息DatabaseBak{filename=\'base_20210114221300.sql\', filepath=\'E:/base/backup/\'}', '织梦行云');
INSERT INTO `admin_operator_log` VALUES (347, '2021-01-14 22:13:05', '2021-01-14 22:13:05', '数据库备份成功,备份文件信息DatabaseBak{filename=\'base_20210114221305.sql\', filepath=\'E:/base/backup/\'}', '织梦行云');
INSERT INTO `admin_operator_log` VALUES (348, '2021-01-14 22:23:21', '2021-01-14 22:23:21', '数据库备份成功,备份文件信息DatabaseBak{filename=\'base_20210114222320.sql\', filepath=\'E:/base/backup/\'}', '织梦行云');
INSERT INTO `admin_operator_log` VALUES (349, '2021-01-14 22:24:56', '2021-01-14 22:24:56', '数据库还原成功,还原文件信息DatabaseBak{filename=\'base_20210114222320.sql\', filepath=\'E:/base/backup/\'}', '织梦行云');
INSERT INTO `admin_operator_log` VALUES (350, '2021-01-15 08:57:34', '2021-01-15 08:57:34', '用户【织梦行云】于【2021-01-15 08:57:34】登录系统！', '织梦行云');
INSERT INTO `admin_operator_log` VALUES (351, '2021-01-15 08:57:45', '2021-01-15 08:57:45', '数据库备份成功,备份文件信息DatabaseBak{filename=\'base_20210115085745.sql\', filepath=\'E:/base/backup/\'}', '织梦行云');
INSERT INTO `admin_operator_log` VALUES (352, '2021-01-15 14:12:45', '2021-01-15 14:12:45', '用户【admin】于【2021-01-15 14:12:44】登录系统！', 'admin');
INSERT INTO `admin_operator_log` VALUES (353, '2021-01-15 14:13:51', '2021-01-15 14:13:51', '用户【织梦行云】于【2021-01-15 14:13:50】登录系统！', '织梦行云');
INSERT INTO `admin_operator_log` VALUES (354, '2021-01-15 14:35:32', '2021-01-15 14:35:32', '数据库备份成功,备份文件信息DatabaseBak{filename=\'base_20210115143531.sql\', filepath=\'E:/base/backup/\'}', '织梦行云');
INSERT INTO `admin_operator_log` VALUES (355, '2021-01-15 15:52:39', '2021-01-15 15:52:39', '用户【织梦行云】于【2021-01-15 15:52:39】登录系统！', '织梦行云');
INSERT INTO `admin_operator_log` VALUES (356, '2021-01-15 15:53:02', '2021-01-15 15:53:02', '数据库备份成功,备份文件信息DatabaseBak{filename=\'base_20210115155301.sql\', filepath=\'E:/base/backup/\'}', '织梦行云');
INSERT INTO `admin_operator_log` VALUES (357, '2021-01-15 15:59:16', '2021-01-15 15:59:16', '数据库备份成功,备份文件信息DatabaseBak{filename=\'base_20210115155915.sql\', filepath=\'E:/base/backup/\'}', '织梦行云');
INSERT INTO `admin_operator_log` VALUES (358, '2021-01-15 16:07:54', '2021-01-15 16:07:54', '自动定时任务，数据库备份成功！DatabaseBak{filename=\'base_20210115160753.sql\', filepath=\'E:/base/backup/\'}', '未知（获取登录用户失败）');
INSERT INTO `admin_operator_log` VALUES (359, '2021-01-15 16:07:59', '2021-01-15 16:07:59', '自动定时任务，数据库备份成功！DatabaseBak{filename=\'base_20210115160758.sql\', filepath=\'E:/base/backup/\'}', '未知（获取登录用户失败）');
INSERT INTO `admin_operator_log` VALUES (360, '2021-01-15 16:08:04', '2021-01-15 16:08:04', '自动定时任务，数据库备份成功！DatabaseBak{filename=\'base_20210115160803.sql\', filepath=\'E:/base/backup/\'}', '未知（获取登录用户失败）');
INSERT INTO `admin_operator_log` VALUES (361, '2021-01-15 22:42:56', '2021-01-15 22:42:56', '用户【织梦行云】于【2021-01-15 22:42:55】登录系统！', '织梦行云');
INSERT INTO `admin_operator_log` VALUES (362, '2021-01-16 19:39:40', '2021-01-16 19:39:40', '用户【织梦行云】于【2021-01-16 19:39:40】登录系统！', '织梦行云');
INSERT INTO `admin_operator_log` VALUES (363, '2021-01-16 19:39:40', '2021-01-16 19:39:40', '用户【织梦行云】于【2021-01-16 19:39:40】登录系统！', '织梦行云');
INSERT INTO `admin_operator_log` VALUES (364, '2021-01-16 19:52:50', '2021-01-16 19:52:50', '用户【织梦行云】于【2021-01-16 19:52:49】登录系统！', '织梦行云');
INSERT INTO `admin_operator_log` VALUES (365, '2021-01-16 19:53:08', '2021-01-16 19:53:08', '删除一个用户，用户ID：7', '织梦行云');
INSERT INTO `admin_operator_log` VALUES (366, '2021-01-16 20:14:45', '2021-01-16 20:14:45', '添加一个用户，用户名：123123', '织梦行云');
INSERT INTO `admin_operator_log` VALUES (367, '2021-01-16 20:14:53', '2021-01-16 20:14:53', '删除一个用户，用户ID：8', '织梦行云');
INSERT INTO `admin_operator_log` VALUES (368, '2021-01-16 20:31:35', '2021-01-16 20:31:35', '用户【织梦行云】于【2021-01-16 20:31:34】登录系统！', '织梦行云');
INSERT INTO `admin_operator_log` VALUES (369, '2021-01-16 20:34:18', '2021-01-16 20:34:18', '用户【织梦行云】于【2021-01-16 20:34:18】登录系统！', '织梦行云');
INSERT INTO `admin_operator_log` VALUES (370, '2021-01-16 20:35:08', '2021-01-16 20:35:08', '用户【admin】于【2021-01-16 20:35:07】登录系统！', 'admin');
INSERT INTO `admin_operator_log` VALUES (371, '2021-01-16 20:44:23', '2021-01-16 20:44:23', '用户【织梦行云】于【2021-01-16 20:44:23】登录系统！', '织梦行云');
INSERT INTO `admin_operator_log` VALUES (372, '2021-01-16 20:46:52', '2021-01-16 20:46:52', '用户【织梦行云】于【2021-01-16 20:46:52】登录系统！', '织梦行云');
INSERT INTO `admin_operator_log` VALUES (373, '2021-01-16 20:55:24', '2021-01-16 20:55:24', '用户【织梦行云】于【2021-01-16 20:55:24】登录系统！', '织梦行云');
INSERT INTO `admin_operator_log` VALUES (374, '2021-01-18 08:55:53', '2021-01-18 08:55:53', '用户【织梦行云】于【2021-01-18 08:55:52】登录系统！', '织梦行云');
INSERT INTO `admin_operator_log` VALUES (375, '2021-01-18 09:02:13', '2021-01-18 09:02:13', '修改一个角色【超级管理员】', '织梦行云');
INSERT INTO `admin_operator_log` VALUES (376, '2021-01-20 20:30:29', '2021-01-20 20:30:29', '用户【织梦行云】于【2021-01-20 20:30:28】登录系统！', '织梦行云');
INSERT INTO `admin_operator_log` VALUES (377, '2021-01-20 20:37:05', '2021-01-20 20:37:05', '用户【织梦行云】于【2021-01-20 20:37:04】登录系统！', '织梦行云');
INSERT INTO `admin_operator_log` VALUES (378, '2021-01-20 20:41:33', '2021-01-20 20:41:33', '用户【织梦行云】于【2021-01-20 20:41:32】登录系统！', '织梦行云');
INSERT INTO `admin_operator_log` VALUES (379, '2021-01-21 08:56:03', '2021-01-21 08:56:03', '用户【织梦行云】于【2021-01-21 08:56:03】登录系统！', '织梦行云');
INSERT INTO `admin_operator_log` VALUES (380, '2021-01-21 08:56:08', '2021-01-21 08:56:08', '用户【织梦行云】于【2021-01-21 08:56:07】登录系统！', '织梦行云');
INSERT INTO `admin_operator_log` VALUES (381, '2021-01-21 19:15:43', '2021-01-21 19:15:43', '用户【织梦行云】于【2021-01-21 19:15:43】登录系统！', '织梦行云');
INSERT INTO `admin_operator_log` VALUES (382, '2021-01-21 19:16:13', '2021-01-21 19:16:13', '用户【admin】于【2021-01-21 19:16:12】登录系统！', 'admin');
INSERT INTO `admin_operator_log` VALUES (383, '2021-01-21 19:17:57', '2021-01-21 19:17:57', '用户【织梦行云】于【2021-01-21 19:17:56】登录系统！', '织梦行云');
INSERT INTO `admin_operator_log` VALUES (384, '2021-01-21 19:18:30', '2021-01-21 19:18:30', '用户【织梦行云】于【2021-01-21 19:18:30】登录系统！', '织梦行云');
INSERT INTO `admin_operator_log` VALUES (385, '2021-01-21 19:22:00', '2021-01-21 19:22:00', '用户【织梦行云】于【2021-01-21 19:22:00】登录系统！', '织梦行云');
INSERT INTO `admin_operator_log` VALUES (386, '2021-01-21 19:24:25', '2021-01-21 19:24:25', '用户【织梦行云】于【2021-01-21 19:24:25】登录系统！', '织梦行云');
INSERT INTO `admin_operator_log` VALUES (387, '2021-01-21 19:26:12', '2021-01-21 19:26:12', '用户【织梦行云】于【2021-01-21 19:26:11】登录系统！', '织梦行云');
INSERT INTO `admin_operator_log` VALUES (388, '2021-03-15 21:59:38', '2021-03-15 21:59:38', '用户【织梦行云】于【2021-03-15 21:59:37】登录系统！', '织梦行云');
INSERT INTO `admin_operator_log` VALUES (389, '2021-05-27 16:44:05', '2021-05-27 16:44:05', '用户【织梦行云】于【2021-05-27 16:44:04】登录系统！', '织梦行云');

-- ----------------------------
-- Table structure for admin_role
-- ----------------------------
DROP TABLE IF EXISTS `admin_role`;
CREATE TABLE `admin_role`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(0) NOT NULL,
  `update_time` datetime(0) NOT NULL,
  `name` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `remark` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_role
-- ----------------------------
INSERT INTO `admin_role` VALUES (1, '2021-01-09 16:50:15', '2021-01-18 09:02:13', '超级管理员', '超级管理员拥有系统所有的权限', 1);
INSERT INTO `admin_role` VALUES (2, '2021-01-09 16:54:03', '2021-01-13 11:58:47', '普通管理员(正常)', '普通管理员只有部分权限', 1);
INSERT INTO `admin_role` VALUES (8, '2021-01-13 11:59:29', '2021-01-13 11:59:37', '普通管理员（未启用）', '', 0);
INSERT INTO `admin_role` VALUES (9, '2021-01-13 11:59:53', '2021-01-13 11:59:53', '测试角色（无权限）', '', 1);
INSERT INTO `admin_role` VALUES (10, '2021-01-13 13:03:50', '2021-01-13 13:03:50', '测试角色02', '', 1);

-- ----------------------------
-- Table structure for admin_role_authorities
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_authorities`;
CREATE TABLE `admin_role_authorities`  (
  `role_id` bigint(20) NOT NULL,
  `authorities_id` bigint(20) NOT NULL,
  INDEX `FK6u89bs02tdutw9xbi5usbd6oa`(`authorities_id`) USING BTREE,
  INDEX `FKhcyeg218v4gul05clcma4wq4v`(`role_id`) USING BTREE,
  CONSTRAINT `FK6u89bs02tdutw9xbi5usbd6oa` FOREIGN KEY (`authorities_id`) REFERENCES `admin_menu` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKhcyeg218v4gul05clcma4wq4v` FOREIGN KEY (`role_id`) REFERENCES `admin_role` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_role_authorities
-- ----------------------------
INSERT INTO `admin_role_authorities` VALUES (2, 1);
INSERT INTO `admin_role_authorities` VALUES (2, 8);
INSERT INTO `admin_role_authorities` VALUES (2, 9);
INSERT INTO `admin_role_authorities` VALUES (2, 10);
INSERT INTO `admin_role_authorities` VALUES (2, 11);
INSERT INTO `admin_role_authorities` VALUES (2, 12);
INSERT INTO `admin_role_authorities` VALUES (2, 13);
INSERT INTO `admin_role_authorities` VALUES (2, 14);
INSERT INTO `admin_role_authorities` VALUES (2, 15);
INSERT INTO `admin_role_authorities` VALUES (8, 1);
INSERT INTO `admin_role_authorities` VALUES (8, 8);
INSERT INTO `admin_role_authorities` VALUES (8, 9);
INSERT INTO `admin_role_authorities` VALUES (8, 10);
INSERT INTO `admin_role_authorities` VALUES (8, 11);
INSERT INTO `admin_role_authorities` VALUES (8, 12);
INSERT INTO `admin_role_authorities` VALUES (8, 13);
INSERT INTO `admin_role_authorities` VALUES (8, 14);
INSERT INTO `admin_role_authorities` VALUES (8, 15);
INSERT INTO `admin_role_authorities` VALUES (10, 1);
INSERT INTO `admin_role_authorities` VALUES (10, 12);
INSERT INTO `admin_role_authorities` VALUES (10, 14);
INSERT INTO `admin_role_authorities` VALUES (1, 1);
INSERT INTO `admin_role_authorities` VALUES (1, 2);
INSERT INTO `admin_role_authorities` VALUES (1, 3);
INSERT INTO `admin_role_authorities` VALUES (1, 4);
INSERT INTO `admin_role_authorities` VALUES (1, 5);
INSERT INTO `admin_role_authorities` VALUES (1, 8);
INSERT INTO `admin_role_authorities` VALUES (1, 9);
INSERT INTO `admin_role_authorities` VALUES (1, 10);
INSERT INTO `admin_role_authorities` VALUES (1, 11);
INSERT INTO `admin_role_authorities` VALUES (1, 12);
INSERT INTO `admin_role_authorities` VALUES (1, 13);
INSERT INTO `admin_role_authorities` VALUES (1, 14);
INSERT INTO `admin_role_authorities` VALUES (1, 15);
INSERT INTO `admin_role_authorities` VALUES (1, 23);
INSERT INTO `admin_role_authorities` VALUES (1, 25);
INSERT INTO `admin_role_authorities` VALUES (1, 26);
INSERT INTO `admin_role_authorities` VALUES (1, 27);
INSERT INTO `admin_role_authorities` VALUES (1, 28);
INSERT INTO `admin_role_authorities` VALUES (1, 29);
INSERT INTO `admin_role_authorities` VALUES (1, 30);
INSERT INTO `admin_role_authorities` VALUES (1, 32);

-- ----------------------------
-- Table structure for admin_user
-- ----------------------------
DROP TABLE IF EXISTS `admin_user`;
CREATE TABLE `admin_user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(0) NOT NULL,
  `update_time` datetime(0) NOT NULL,
  `email` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gander` int(11) NULL DEFAULT NULL,
  `head_pic` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` int(11) NULL DEFAULT NULL,
  `username` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `role_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UK_lvod9bfm438ex1071ku1glb70`(`username`) USING BTREE,
  INDEX `FKovciu5m099lrc4e1dbhmol80l`(`role_id`) USING BTREE,
  CONSTRAINT `FKovciu5m099lrc4e1dbhmol80l` FOREIGN KEY (`role_id`) REFERENCES `admin_role` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_user
-- ----------------------------
INSERT INTO `admin_user` VALUES (1, '2021-01-11 21:17:29', '2021-01-14 15:33:13', '617646487@qq.com', 1, '20210114/1610609588911.jpg', '13014511285', '123123', 1, '织梦行云', 1);
INSERT INTO `admin_user` VALUES (2, '2021-01-11 21:22:45', '2021-01-14 15:36:21', '123', 1, '20210114/1610609778468.jpg', '123', '123123', 1, 'admin', 2);
INSERT INTO `admin_user` VALUES (5, '2021-01-12 16:45:02', '2021-01-14 15:33:47', 'bb@163afdafa.com', 0, '20210114/1610609625393.jpg', '13014511285', '123123', 1, 'test01', 8);

SET FOREIGN_KEY_CHECKS = 1;
