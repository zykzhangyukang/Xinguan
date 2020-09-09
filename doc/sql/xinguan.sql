/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50728
 Source Host           : localhost:3306
 Source Schema         : xinguan

 Target Server Type    : MySQL
 Target Server Version : 50728
 File Encoding         : 65001

 Date: 09/09/2020 20:39:55
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for biz_consumer
-- ----------------------------
DROP TABLE IF EXISTS `biz_consumer`;
CREATE TABLE `biz_consumer`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '物资消费方',
  `address` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '地址',
  `create_time` datetime(0) NULL DEFAULT NULL,
  `modified_time` datetime(0) NULL DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `sort` int(11) NULL DEFAULT NULL,
  `contact` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '联系人姓名',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of biz_consumer
-- ----------------------------
INSERT INTO `biz_consumer` VALUES (7, '324234234', '天津市/市辖区/和平区', '2020-04-25 20:12:06', '2020-05-10 09:21:37', '15079437282', 1, '老王');
INSERT INTO `biz_consumer` VALUES (8, '43535345', '江西省/九江市/共青城市', '2020-04-25 20:12:43', '2020-04-25 20:12:43', '15079437282', 2, '11');
INSERT INTO `biz_consumer` VALUES (9, '3424243424', '山西省/大同市/矿区', '2020-04-25 20:13:20', '2020-05-10 09:21:33', '15079437282', 1, '小李');
INSERT INTO `biz_consumer` VALUES (10, '465646', '天津市/市辖区/和平区', '2020-04-25 20:21:28', '2020-04-25 20:21:28', '15079437282', 2, '33');
INSERT INTO `biz_consumer` VALUES (11, '3424', '江西省/抚州市/黎川县', '2020-04-25 20:28:26', '2020-05-10 09:21:47', '15079437282', 1, '44');
INSERT INTO `biz_consumer` VALUES (13, '32424', '天津市/市辖区/和平区', '2020-04-25 21:38:42', '2020-04-25 21:38:42', '15079437282', 2, '22');
INSERT INTO `biz_consumer` VALUES (14, '34242', '江西省/抚州市/黎川县', '2020-04-25 21:38:59', '2020-04-25 21:38:59', '15079437282', 3, '444');
INSERT INTO `biz_consumer` VALUES (15, '5他', '河北省/石家庄市/长安区', '2020-04-25 21:39:25', '2020-04-25 21:39:25', '15079437282', 2, '555');
INSERT INTO `biz_consumer` VALUES (16, '3243242', '山东省/青岛市/历下区', '2020-04-25 21:40:43', '2020-04-25 21:40:43', '15079437282', 1, '555');
INSERT INTO `biz_consumer` VALUES (17, '一栋705宿舍', '江西省/九江市/共青城市', '2020-04-25 21:56:04', '2020-04-25 21:56:04', '15079437282', 3, '章宇康');
INSERT INTO `biz_consumer` VALUES (18, '反反复复', '内蒙古自治区/赤峰市/阿鲁科尔沁旗', '2020-04-25 22:05:47', '2020-04-25 22:05:47', '15079437282', 2, '反反复复');
INSERT INTO `biz_consumer` VALUES (19, 'test224444', '江西省/九江市/共青城市', '2020-04-26 09:47:37', '2020-04-26 09:47:50', '15079437282', 3, 'test');
INSERT INTO `biz_consumer` VALUES (20, '324234', '天津市/市辖区/和平区', '2020-05-25 11:00:23', '2020-05-25 11:00:23', '15079437282', 1, '32424');
INSERT INTO `biz_consumer` VALUES (21, 'test111', '福建省/莆田市/秀屿区', '2020-05-25 11:01:18', '2020-05-25 11:01:55', '15079437282', 2, 'testman');
INSERT INTO `biz_consumer` VALUES (22, '6666666', '天津市/市辖区/和平区', '2020-05-25 11:16:12', '2020-05-25 11:16:12', '15079437282', 1, '23423424');
INSERT INTO `biz_consumer` VALUES (23, '6666666', '天津市/市辖区/和平区', '2020-05-25 11:17:15', '2020-05-25 11:17:15', '15079437282', 1, '23423424');
INSERT INTO `biz_consumer` VALUES (24, 'hemei', '河北省/唐山市/古冶区', '2020-05-25 11:27:42', '2020-05-25 11:27:42', '15079437282', 1, 'hemei');
INSERT INTO `biz_consumer` VALUES (25, 'hemei', '河北省/唐山市/古冶区', '2020-05-25 11:32:39', '2020-05-25 11:32:39', '15079437282', 1, 'hemei');
INSERT INTO `biz_consumer` VALUES (26, '武汉汉口校医院', '天津市/市辖区/和平区', '2020-05-25 15:46:07', '2020-05-25 15:46:07', '15079437282', 1, '李大牛');

-- ----------------------------
-- Table structure for biz_health
-- ----------------------------
DROP TABLE IF EXISTS `biz_health`;
CREATE TABLE `biz_health`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `address` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `situation` int(1) NOT NULL,
  `touch` int(1) NOT NULL,
  `passby` int(1) NOT NULL,
  `reception` int(1) NOT NULL,
  `create_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 36 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of biz_health
-- ----------------------------
INSERT INTO `biz_health` VALUES (24, '湖北省/武汉市/汉南区', 5, 0, 0, 0, 0, '2020-05-07 15:23:40');
INSERT INTO `biz_health` VALUES (25, '河北省/秦皇岛市/北戴河区', 5, 0, 1, 1, 1, '2020-05-10 11:26:27');
INSERT INTO `biz_health` VALUES (28, '天津市/市辖区/和平区', 5, 0, 1, 1, 1, '2020-05-13 22:43:09');
INSERT INTO `biz_health` VALUES (29, '天津市/市辖区/南开区', 5, 0, 1, 1, 1, '2020-05-14 20:10:12');
INSERT INTO `biz_health` VALUES (30, '天津市/市辖区/和平区', 5, 1, 0, 0, 0, '2020-05-14 20:23:07');
INSERT INTO `biz_health` VALUES (31, '天津市/市辖区/和平区', 184, 2, 1, 1, 1, '2020-05-14 21:06:47');
INSERT INTO `biz_health` VALUES (35, '天津市/市辖区/和平区', 5, 0, 1, 1, 1, '2020-05-18 09:33:33');

-- ----------------------------
-- Table structure for biz_in_stock
-- ----------------------------
DROP TABLE IF EXISTS `biz_in_stock`;
CREATE TABLE `biz_in_stock`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `in_num` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '入库单编号',
  `type` int(2) NULL DEFAULT NULL COMMENT '类型：1：捐赠，2：下拨，3：采购,4:退货入库',
  `operator` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作人员',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '入库单创建时间',
  `modified` datetime(0) NULL DEFAULT NULL COMMENT '入库单修改时间',
  `product_number` int(11) NULL DEFAULT NULL COMMENT '物资总数',
  `supplier_id` bigint(20) NULL DEFAULT NULL COMMENT '来源',
  `remark` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述信息',
  `status` int(1) NULL DEFAULT 2 COMMENT '0:正常入库单,1:已进入回收,2:等待审核',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `operator_id`(`operator`) USING BTREE,
  INDEX `supplier_id`(`supplier_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 107 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of biz_in_stock
-- ----------------------------
INSERT INTO `biz_in_stock` VALUES (84, 'a2ea9b97-ad12-4d85-a9b4-1a644d86', 2, 'zhangyukang', '2020-05-09 20:01:48', '2020-05-09 20:01:48', 13, 15, '333333', 0);
INSERT INTO `biz_in_stock` VALUES (85, '78473f1a-405a-4f5e-b08c-42a7b2e8', 2, 'zhangyukang', '2020-05-10 09:27:45', '2020-05-10 09:27:45', 48, 14, '324324242424', 0);
INSERT INTO `biz_in_stock` VALUES (86, '31ff3701-c44f-4b98-91e0-1d41d8b2', 1, 'zhangyukang', '2020-05-11 09:59:30', '2020-05-11 09:59:30', 51, 15, '32424', 0);
INSERT INTO `biz_in_stock` VALUES (87, '38ed0881-20ed-4cec-a321-eb8f4c3b', 1, 'zhangyukang', '2020-05-11 10:04:05', '2020-05-11 10:04:05', 30, 15, '232323232', 0);
INSERT INTO `biz_in_stock` VALUES (90, 'db1c2afe-8117-43fd-adf7-866ef7e4', 1, '系统测试人员', '2020-05-18 10:11:11', '2020-05-16 17:37:12', 4, 15, '2222222', 0);
INSERT INTO `biz_in_stock` VALUES (91, 'df793f2b-ea13-4d93-b22c-60454f32', 2, '系统测试人员', '2020-05-18 10:11:09', '2020-05-18 10:11:00', 25, 15, '2342424', 0);
INSERT INTO `biz_in_stock` VALUES (92, 'c2054c39-a88b-4f47-9f9e-5c57f9e6', 1, '系统测试人员', '2020-05-18 10:42:04', '2020-05-18 10:41:55', 3, 15, '222222', 0);
INSERT INTO `biz_in_stock` VALUES (93, '08a51486-49e9-402e-a10e-3e6a45df', 1, '系统测试人员', '2020-05-18 11:01:16', '2020-05-18 11:01:09', 4, 15, '2222222', 0);
INSERT INTO `biz_in_stock` VALUES (99, 'bb5de246-bd56-4987-b027-8fbcf3c3', 2, '系统测试人员', '2020-05-18 12:21:41', '2020-05-18 11:43:49', 6, 19, '33333', 0);
INSERT INTO `biz_in_stock` VALUES (100, '7657f747-ab27-49d7-b1ce-d6d47ecf', 1, '系统测试人员', '2020-05-18 12:21:40', '2020-05-18 12:21:29', 2, 20, '23432424', 0);
INSERT INTO `biz_in_stock` VALUES (101, '03fbc3b3-e28b-418c-a457-87c376c3', 1, '系统测试人员', '2020-05-18 13:16:38', '2020-05-18 13:16:28', 12, 21, '454545454545', 0);
INSERT INTO `biz_in_stock` VALUES (102, 'd83621b8-b5c7-4499-a8a0-56af2849', 1, '系统测试人员', '2020-05-18 13:18:51', '2020-05-18 13:18:41', 18, 17, '33333', 0);
INSERT INTO `biz_in_stock` VALUES (103, '51fa7a04-535f-43b5-8972-23d0e55a', 1, '系统测试人员', '2020-05-18 13:42:41', '2020-05-18 13:42:29', 6, 22, '222222', 0);
INSERT INTO `biz_in_stock` VALUES (104, 'c96eaa3e-22ee-4f6b-98bd-87d34372', 1, 'zhangyukang', '2020-05-24 21:46:16', '2020-05-24 21:46:06', 6, 15, '432424', 0);
INSERT INTO `biz_in_stock` VALUES (105, '5ad278ed-ce30-4f0d-bb67-7f9070fc', 1, 'zhangyukang', '2020-05-25 11:45:10', '2020-05-25 10:27:06', 6, 15, '32432424', 0);
INSERT INTO `biz_in_stock` VALUES (106, 'efeef1d2-b8c9-4eb5-8ea2-b0695fb9', 1, 'zhangyukang', '2020-05-26 09:35:23', '2020-05-26 09:35:17', 10, 17, '2342424', 0);

-- ----------------------------
-- Table structure for biz_in_stock_info
-- ----------------------------
DROP TABLE IF EXISTS `biz_in_stock_info`;
CREATE TABLE `biz_in_stock_info`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `in_num` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '入库单编号',
  `p_num` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品编号',
  `product_number` int(11) NULL DEFAULT NULL COMMENT '数量',
  `create_time` datetime(0) NULL DEFAULT NULL,
  `modified_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 360 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of biz_in_stock_info
-- ----------------------------
INSERT INTO `biz_in_stock_info` VALUES (282, 'a2ea9b97-ad12-4d85-a9b4-1a644d86', '3DFC8EA0-6', 2, '2020-05-09 20:01:49', '2020-05-09 20:01:49');
INSERT INTO `biz_in_stock_info` VALUES (283, 'a2ea9b97-ad12-4d85-a9b4-1a644d86', '2C15F1B6-1', 2, '2020-05-09 20:01:49', '2020-05-09 20:01:49');
INSERT INTO `biz_in_stock_info` VALUES (284, 'a2ea9b97-ad12-4d85-a9b4-1a644d86', '6976D3B4-A', 3, '2020-05-09 20:01:49', '2020-05-09 20:01:49');
INSERT INTO `biz_in_stock_info` VALUES (285, 'a2ea9b97-ad12-4d85-a9b4-1a644d86', 'f248ee7a-c30c-447c-ae9c-0a1c09e9', 3, '2020-05-09 20:01:49', '2020-05-09 20:01:49');
INSERT INTO `biz_in_stock_info` VALUES (286, 'a2ea9b97-ad12-4d85-a9b4-1a644d86', 'beb944c4-01ae-497b-bfdd-2132032f', 3, '2020-05-09 20:01:49', '2020-05-09 20:01:49');
INSERT INTO `biz_in_stock_info` VALUES (287, '78473f1a-405a-4f5e-b08c-42a7b2e8', '3DFC8EA0-6', 2, '2020-05-10 09:27:45', '2020-05-10 09:27:45');
INSERT INTO `biz_in_stock_info` VALUES (288, '78473f1a-405a-4f5e-b08c-42a7b2e8', '2C15F1B6-1', 1, '2020-05-10 09:27:45', '2020-05-10 09:27:45');
INSERT INTO `biz_in_stock_info` VALUES (289, '78473f1a-405a-4f5e-b08c-42a7b2e8', '6976D3B4-A', 2, '2020-05-10 09:27:45', '2020-05-10 09:27:45');
INSERT INTO `biz_in_stock_info` VALUES (290, '78473f1a-405a-4f5e-b08c-42a7b2e8', 'f248ee7a-c30c-447c-ae9c-0a1c09e9', 2, '2020-05-10 09:27:45', '2020-05-10 09:27:45');
INSERT INTO `biz_in_stock_info` VALUES (291, '78473f1a-405a-4f5e-b08c-42a7b2e8', 'beb944c4-01ae-497b-bfdd-2132032f', 3, '2020-05-10 09:27:45', '2020-05-10 09:27:45');
INSERT INTO `biz_in_stock_info` VALUES (292, '78473f1a-405a-4f5e-b08c-42a7b2e8', '24573d5b-0c9b-403b-9a88-c214702e', 3, '2020-05-10 09:27:45', '2020-05-10 09:27:45');
INSERT INTO `biz_in_stock_info` VALUES (293, '78473f1a-405a-4f5e-b08c-42a7b2e8', 'c98183c8-bc47-4505-abbb-1dc219b5', 2, '2020-05-10 09:27:45', '2020-05-10 09:27:45');
INSERT INTO `biz_in_stock_info` VALUES (294, '78473f1a-405a-4f5e-b08c-42a7b2e8', 'de16b9e6-bb49-4547-ab91-db7ae7b6', 3, '2020-05-10 09:27:45', '2020-05-10 09:27:45');
INSERT INTO `biz_in_stock_info` VALUES (295, '78473f1a-405a-4f5e-b08c-42a7b2e8', '6AF405A1-C', 10, '2020-05-10 09:27:45', '2020-05-10 09:27:45');
INSERT INTO `biz_in_stock_info` VALUES (296, '78473f1a-405a-4f5e-b08c-42a7b2e8', '0b9e9176-f996-4384-bb6c-209f55d0', 10, '2020-05-10 09:27:45', '2020-05-10 09:27:45');
INSERT INTO `biz_in_stock_info` VALUES (297, '78473f1a-405a-4f5e-b08c-42a7b2e8', '894b8218-36ee-4a0d-9ad1-d9c5e455', 10, '2020-05-10 09:27:45', '2020-05-10 09:27:45');
INSERT INTO `biz_in_stock_info` VALUES (298, '31ff3701-c44f-4b98-91e0-1d41d8b2', '3DFC8EA0-6', 10, '2020-05-11 09:59:31', '2020-05-11 09:59:31');
INSERT INTO `biz_in_stock_info` VALUES (299, '31ff3701-c44f-4b98-91e0-1d41d8b2', '2C15F1B6-1', 10, '2020-05-11 09:59:32', '2020-05-11 09:59:32');
INSERT INTO `biz_in_stock_info` VALUES (300, '31ff3701-c44f-4b98-91e0-1d41d8b2', '15bc064e-991d-40e3-bcd6-f6aff0e3', 10, '2020-05-11 09:59:32', '2020-05-11 09:59:32');
INSERT INTO `biz_in_stock_info` VALUES (301, '31ff3701-c44f-4b98-91e0-1d41d8b2', 'f248ee7a-c30c-447c-ae9c-0a1c09e9', 10, '2020-05-11 09:59:32', '2020-05-11 09:59:32');
INSERT INTO `biz_in_stock_info` VALUES (302, '31ff3701-c44f-4b98-91e0-1d41d8b2', 'beb944c4-01ae-497b-bfdd-2132032f', 10, '2020-05-11 09:59:32', '2020-05-11 09:59:32');
INSERT INTO `biz_in_stock_info` VALUES (303, '31ff3701-c44f-4b98-91e0-1d41d8b2', '0e17f606-9aaa-48a7-b4e9-ef18462e', 1, '2020-05-11 09:59:32', '2020-05-11 09:59:32');
INSERT INTO `biz_in_stock_info` VALUES (304, '38ed0881-20ed-4cec-a321-eb8f4c3b', '3DFC8EA0-6', 10, '2020-05-11 10:04:05', '2020-05-11 10:04:05');
INSERT INTO `biz_in_stock_info` VALUES (305, '38ed0881-20ed-4cec-a321-eb8f4c3b', '24573d5b-0c9b-403b-9a88-c214702e', 10, '2020-05-11 10:04:06', '2020-05-11 10:04:06');
INSERT INTO `biz_in_stock_info` VALUES (306, '38ed0881-20ed-4cec-a321-eb8f4c3b', '6EF5F2C0-9', 10, '2020-05-11 10:04:06', '2020-05-11 10:04:06');
INSERT INTO `biz_in_stock_info` VALUES (315, 'db1c2afe-8117-43fd-adf7-866ef7e4', '3DFC8EA0-6', 2, '2020-05-16 17:37:12', '2020-05-16 17:37:12');
INSERT INTO `biz_in_stock_info` VALUES (316, 'db1c2afe-8117-43fd-adf7-866ef7e4', '2C15F1B6-1', 2, '2020-05-16 17:37:13', '2020-05-16 17:37:13');
INSERT INTO `biz_in_stock_info` VALUES (317, 'df793f2b-ea13-4d93-b22c-60454f32', '3DFC8EA0-6', 3, '2020-05-18 10:11:00', '2020-05-18 10:11:00');
INSERT INTO `biz_in_stock_info` VALUES (318, 'df793f2b-ea13-4d93-b22c-60454f32', '2C15F1B6-1', 3, '2020-05-18 10:11:00', '2020-05-18 10:11:00');
INSERT INTO `biz_in_stock_info` VALUES (319, 'df793f2b-ea13-4d93-b22c-60454f32', '15bc064e-991d-40e3-bcd6-f6aff0e3', 3, '2020-05-18 10:11:00', '2020-05-18 10:11:00');
INSERT INTO `biz_in_stock_info` VALUES (320, 'df793f2b-ea13-4d93-b22c-60454f32', '6976D3B4-A', 3, '2020-05-18 10:11:00', '2020-05-18 10:11:00');
INSERT INTO `biz_in_stock_info` VALUES (321, 'df793f2b-ea13-4d93-b22c-60454f32', 'f248ee7a-c30c-447c-ae9c-0a1c09e9', 10, '2020-05-18 10:11:00', '2020-05-18 10:11:00');
INSERT INTO `biz_in_stock_info` VALUES (322, 'df793f2b-ea13-4d93-b22c-60454f32', 'beb944c4-01ae-497b-bfdd-2132032f', 3, '2020-05-18 10:11:00', '2020-05-18 10:11:00');
INSERT INTO `biz_in_stock_info` VALUES (323, 'c2054c39-a88b-4f47-9f9e-5c57f9e6', '3DFC8EA0-6', 3, '2020-05-18 10:41:55', '2020-05-18 10:41:55');
INSERT INTO `biz_in_stock_info` VALUES (324, '08a51486-49e9-402e-a10e-3e6a45df', '3DFC8EA0-6', 2, '2020-05-18 11:01:09', '2020-05-18 11:01:09');
INSERT INTO `biz_in_stock_info` VALUES (325, '08a51486-49e9-402e-a10e-3e6a45df', '2C15F1B6-1', 2, '2020-05-18 11:01:09', '2020-05-18 11:01:09');
INSERT INTO `biz_in_stock_info` VALUES (335, 'bb5de246-bd56-4987-b027-8fbcf3c3', '2C15F1B6-1', 3, '2020-05-18 11:43:50', '2020-05-18 11:43:50');
INSERT INTO `biz_in_stock_info` VALUES (336, 'bb5de246-bd56-4987-b027-8fbcf3c3', '15bc064e-991d-40e3-bcd6-f6aff0e3', 3, '2020-05-18 11:43:50', '2020-05-18 11:43:50');
INSERT INTO `biz_in_stock_info` VALUES (337, '7657f747-ab27-49d7-b1ce-d6d47ecf', '3DFC8EA0-6', 1, '2020-05-18 12:21:29', '2020-05-18 12:21:29');
INSERT INTO `biz_in_stock_info` VALUES (338, '7657f747-ab27-49d7-b1ce-d6d47ecf', '2C15F1B6-1', 1, '2020-05-18 12:21:29', '2020-05-18 12:21:29');
INSERT INTO `biz_in_stock_info` VALUES (339, '03fbc3b3-e28b-418c-a457-87c376c3', '3DFC8EA0-6', 4, '2020-05-18 13:16:28', '2020-05-18 13:16:28');
INSERT INTO `biz_in_stock_info` VALUES (340, '03fbc3b3-e28b-418c-a457-87c376c3', '2C15F1B6-1', 4, '2020-05-18 13:16:28', '2020-05-18 13:16:28');
INSERT INTO `biz_in_stock_info` VALUES (341, '03fbc3b3-e28b-418c-a457-87c376c3', '15bc064e-991d-40e3-bcd6-f6aff0e3', 4, '2020-05-18 13:16:28', '2020-05-18 13:16:28');
INSERT INTO `biz_in_stock_info` VALUES (342, 'd83621b8-b5c7-4499-a8a0-56af2849', '3DFC8EA0-6', 3, '2020-05-18 13:18:41', '2020-05-18 13:18:41');
INSERT INTO `biz_in_stock_info` VALUES (343, 'd83621b8-b5c7-4499-a8a0-56af2849', '2C15F1B6-1', 3, '2020-05-18 13:18:42', '2020-05-18 13:18:42');
INSERT INTO `biz_in_stock_info` VALUES (344, 'd83621b8-b5c7-4499-a8a0-56af2849', '15bc064e-991d-40e3-bcd6-f6aff0e3', 3, '2020-05-18 13:18:42', '2020-05-18 13:18:42');
INSERT INTO `biz_in_stock_info` VALUES (345, 'd83621b8-b5c7-4499-a8a0-56af2849', '6976D3B4-A', 3, '2020-05-18 13:18:42', '2020-05-18 13:18:42');
INSERT INTO `biz_in_stock_info` VALUES (346, 'd83621b8-b5c7-4499-a8a0-56af2849', 'f248ee7a-c30c-447c-ae9c-0a1c09e9', 3, '2020-05-18 13:18:42', '2020-05-18 13:18:42');
INSERT INTO `biz_in_stock_info` VALUES (347, 'd83621b8-b5c7-4499-a8a0-56af2849', 'beb944c4-01ae-497b-bfdd-2132032f', 3, '2020-05-18 13:18:42', '2020-05-18 13:18:42');
INSERT INTO `biz_in_stock_info` VALUES (348, '51fa7a04-535f-43b5-8972-23d0e55a', '3DFC8EA0-6', 2, '2020-05-18 13:42:29', '2020-05-18 13:42:29');
INSERT INTO `biz_in_stock_info` VALUES (349, '51fa7a04-535f-43b5-8972-23d0e55a', '2C15F1B6-1', 2, '2020-05-18 13:42:29', '2020-05-18 13:42:29');
INSERT INTO `biz_in_stock_info` VALUES (350, '51fa7a04-535f-43b5-8972-23d0e55a', '15bc064e-991d-40e3-bcd6-f6aff0e3', 2, '2020-05-18 13:42:29', '2020-05-18 13:42:29');
INSERT INTO `biz_in_stock_info` VALUES (351, 'c96eaa3e-22ee-4f6b-98bd-87d34372', '3DFC8EA0-6', 3, '2020-05-24 21:46:06', '2020-05-24 21:46:06');
INSERT INTO `biz_in_stock_info` VALUES (352, 'c96eaa3e-22ee-4f6b-98bd-87d34372', '2C15F1B6-1', 3, '2020-05-24 21:46:06', '2020-05-24 21:46:06');
INSERT INTO `biz_in_stock_info` VALUES (353, '5ad278ed-ce30-4f0d-bb67-7f9070fc', '3DFC8EA0-6', 1, '2020-05-25 10:27:07', '2020-05-25 10:27:07');
INSERT INTO `biz_in_stock_info` VALUES (354, '5ad278ed-ce30-4f0d-bb67-7f9070fc', '2C15F1B6-1', 1, '2020-05-25 10:27:07', '2020-05-25 10:27:07');
INSERT INTO `biz_in_stock_info` VALUES (355, '5ad278ed-ce30-4f0d-bb67-7f9070fc', '15bc064e-991d-40e3-bcd6-f6aff0e3', 1, '2020-05-25 10:27:07', '2020-05-25 10:27:07');
INSERT INTO `biz_in_stock_info` VALUES (356, '5ad278ed-ce30-4f0d-bb67-7f9070fc', '6976D3B4-A', 1, '2020-05-25 10:27:07', '2020-05-25 10:27:07');
INSERT INTO `biz_in_stock_info` VALUES (357, '5ad278ed-ce30-4f0d-bb67-7f9070fc', 'f248ee7a-c30c-447c-ae9c-0a1c09e9', 1, '2020-05-25 10:27:07', '2020-05-25 10:27:07');
INSERT INTO `biz_in_stock_info` VALUES (358, '5ad278ed-ce30-4f0d-bb67-7f9070fc', 'beb944c4-01ae-497b-bfdd-2132032f', 1, '2020-05-25 10:27:07', '2020-05-25 10:27:07');
INSERT INTO `biz_in_stock_info` VALUES (359, 'efeef1d2-b8c9-4eb5-8ea2-b0695fb9', '6EF5F2C0-9', 10, '2020-05-26 09:35:17', '2020-05-26 09:35:17');

-- ----------------------------
-- Table structure for biz_out_stock
-- ----------------------------
DROP TABLE IF EXISTS `biz_out_stock`;
CREATE TABLE `biz_out_stock`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `out_num` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '出库单',
  `type` int(1) NOT NULL COMMENT '出库类型:0:直接出库,1:审核出库',
  `operator` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '操作人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '出库时间',
  `product_number` int(11) NULL DEFAULT NULL COMMENT '出库总数',
  `consumer_id` bigint(20) NOT NULL COMMENT '消费者id',
  `remark` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `status` int(1) NULL DEFAULT NULL COMMENT '状态:0:正常入库,1:已进入回收,2:等待审核',
  `priority` int(1) NOT NULL COMMENT '紧急程度:1:不急,2:常规,3:紧急4:特急',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of biz_out_stock
-- ----------------------------
INSERT INTO `biz_out_stock` VALUES (1, 'fdasfsfsaf', 1, '1', '2020-05-10 14:42:04', 111, 7, '1', 0, 1);
INSERT INTO `biz_out_stock` VALUES (2, '11fdsafsafasf', 0, '324', '2020-05-10 15:16:03', 3, 8, '3', 0, 4);
INSERT INTO `biz_out_stock` VALUES (4, '8d468e4b-0c45-4807-9e0e-6c2c65d6', 0, 'zhangyukang', '2020-05-26 09:38:02', 7, 25, '2342424', 0, 1);
INSERT INTO `biz_out_stock` VALUES (5, '2d7158d3-2b15-473e-8cbe-6f6bd45a', 0, 'zhangyukang', '2020-05-26 09:37:49', 10, 24, '4545454545', 0, 4);
INSERT INTO `biz_out_stock` VALUES (6, 'bd5032d0-c84a-4413-a72d-ba80d33f', 0, 'zhangyukang', '2020-05-25 12:08:07', 93, 9, '23424234324', 2, 1);
INSERT INTO `biz_out_stock` VALUES (7, 'c23e95d0-0607-4e00-9041-cc97d299', 0, 'zhangyukang', '2020-05-25 15:46:07', 6, 26, 'testtest', 0, 2);
INSERT INTO `biz_out_stock` VALUES (9, '982e449e-1ab0-4456-8e9a-5403a685', 0, 'zhangyukang', '2020-05-26 09:32:43', 30, 9, '3434343', 0, 1);
INSERT INTO `biz_out_stock` VALUES (10, '622e8b6d-924a-4dfe-bc51-2143cf3c', 0, 'zhangyukang', '2020-05-26 09:34:30', 13, 8, '23232323', 0, 1);
INSERT INTO `biz_out_stock` VALUES (11, '55e4942f-3c0a-4bc2-85f7-2f2a7bff', 0, 'zhangyukang', '2020-05-26 09:52:09', 2, 9, '34243424', 2, 3);
INSERT INTO `biz_out_stock` VALUES (12, '453544fd-53ec-430f-9899-73f2edf5', 0, 'zhangyukang', '2020-05-26 10:00:04', 4, 8, '11111111', 0, 1);
INSERT INTO `biz_out_stock` VALUES (13, '4d7e5874-7d9c-4fca-ac08-ee4f4975', 3, 'zhangyukang', '2020-05-26 10:02:11', 3, 8, '123213', 0, 1);

-- ----------------------------
-- Table structure for biz_out_stock_info
-- ----------------------------
DROP TABLE IF EXISTS `biz_out_stock_info`;
CREATE TABLE `biz_out_stock_info`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `out_num` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `p_num` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `product_number` int(11) NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `modified_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of biz_out_stock_info
-- ----------------------------
INSERT INTO `biz_out_stock_info` VALUES (1, '8d468e4b-0c45-4807-9e0e-6c2c65d6', '3DFC8EA0-6', 1, '2020-05-25 11:32:39', '2020-05-25 11:32:39');
INSERT INTO `biz_out_stock_info` VALUES (2, '8d468e4b-0c45-4807-9e0e-6c2c65d6', '6EF5F2C0-9', 2, '2020-05-25 11:32:39', '2020-05-25 11:32:39');
INSERT INTO `biz_out_stock_info` VALUES (3, '8d468e4b-0c45-4807-9e0e-6c2c65d6', '6976D3B4-A', 4, '2020-05-25 11:32:39', '2020-05-25 11:32:39');
INSERT INTO `biz_out_stock_info` VALUES (4, '2d7158d3-2b15-473e-8cbe-6f6bd45a', '3DFC8EA0-6', 1, '2020-05-25 11:41:02', '2020-05-25 11:41:02');
INSERT INTO `biz_out_stock_info` VALUES (5, '2d7158d3-2b15-473e-8cbe-6f6bd45a', '6EF5F2C0-9', 1, '2020-05-25 11:41:02', '2020-05-25 11:41:02');
INSERT INTO `biz_out_stock_info` VALUES (6, '2d7158d3-2b15-473e-8cbe-6f6bd45a', '6976D3B4-A', 1, '2020-05-25 11:41:02', '2020-05-25 11:41:02');
INSERT INTO `biz_out_stock_info` VALUES (7, '2d7158d3-2b15-473e-8cbe-6f6bd45a', 'AB0E206E-A', 3, '2020-05-25 11:41:02', '2020-05-25 11:41:02');
INSERT INTO `biz_out_stock_info` VALUES (8, '2d7158d3-2b15-473e-8cbe-6f6bd45a', '6AF405A1-C', 1, '2020-05-25 11:41:02', '2020-05-25 11:41:02');
INSERT INTO `biz_out_stock_info` VALUES (9, '2d7158d3-2b15-473e-8cbe-6f6bd45a', '2C15F1B6-1', 3, '2020-05-25 11:41:02', '2020-05-25 11:41:02');
INSERT INTO `biz_out_stock_info` VALUES (10, 'bd5032d0-c84a-4413-a72d-ba80d33f', '3DFC8EA0-6', 80, '2020-05-25 12:08:07', '2020-05-25 12:08:07');
INSERT INTO `biz_out_stock_info` VALUES (11, 'bd5032d0-c84a-4413-a72d-ba80d33f', '6EF5F2C0-9', 13, '2020-05-25 12:08:07', '2020-05-25 12:08:07');
INSERT INTO `biz_out_stock_info` VALUES (12, 'c23e95d0-0607-4e00-9041-cc97d299', '3DFC8EA0-6', 1, '2020-05-25 15:46:07', '2020-05-25 15:46:07');
INSERT INTO `biz_out_stock_info` VALUES (13, 'c23e95d0-0607-4e00-9041-cc97d299', '6EF5F2C0-9', 1, '2020-05-25 15:46:07', '2020-05-25 15:46:07');
INSERT INTO `biz_out_stock_info` VALUES (14, 'c23e95d0-0607-4e00-9041-cc97d299', '6976D3B4-A', 1, '2020-05-25 15:46:07', '2020-05-25 15:46:07');
INSERT INTO `biz_out_stock_info` VALUES (15, 'c23e95d0-0607-4e00-9041-cc97d299', 'AB0E206E-A', 1, '2020-05-25 15:46:07', '2020-05-25 15:46:07');
INSERT INTO `biz_out_stock_info` VALUES (16, 'c23e95d0-0607-4e00-9041-cc97d299', '6AF405A1-C', 1, '2020-05-25 15:46:07', '2020-05-25 15:46:07');
INSERT INTO `biz_out_stock_info` VALUES (17, 'c23e95d0-0607-4e00-9041-cc97d299', '2C15F1B6-1', 1, '2020-05-25 15:46:07', '2020-05-25 15:46:07');
INSERT INTO `biz_out_stock_info` VALUES (21, '982e449e-1ab0-4456-8e9a-5403a685', '3DFC8EA0-6', 30, '2020-05-26 09:32:25', '2020-05-26 09:32:25');
INSERT INTO `biz_out_stock_info` VALUES (22, '622e8b6d-924a-4dfe-bc51-2143cf3c', '6EF5F2C0-9', 13, '2020-05-26 09:34:23', '2020-05-26 09:34:23');
INSERT INTO `biz_out_stock_info` VALUES (23, '55e4942f-3c0a-4bc2-85f7-2f2a7bff', '3DFC8EA0-6', 1, '2020-05-26 09:52:09', '2020-05-26 09:52:09');
INSERT INTO `biz_out_stock_info` VALUES (24, '55e4942f-3c0a-4bc2-85f7-2f2a7bff', '6EF5F2C0-9', 1, '2020-05-26 09:52:09', '2020-05-26 09:52:09');
INSERT INTO `biz_out_stock_info` VALUES (25, '453544fd-53ec-430f-9899-73f2edf5', '6AF405A1-C', 1, '2020-05-26 09:59:57', '2020-05-26 09:59:57');
INSERT INTO `biz_out_stock_info` VALUES (26, '453544fd-53ec-430f-9899-73f2edf5', '2C15F1B6-1', 1, '2020-05-26 09:59:57', '2020-05-26 09:59:57');
INSERT INTO `biz_out_stock_info` VALUES (27, '453544fd-53ec-430f-9899-73f2edf5', '6976D3B4-A', 1, '2020-05-26 09:59:57', '2020-05-26 09:59:57');
INSERT INTO `biz_out_stock_info` VALUES (28, '453544fd-53ec-430f-9899-73f2edf5', '6EF5F2C0-9', 1, '2020-05-26 09:59:57', '2020-05-26 09:59:57');
INSERT INTO `biz_out_stock_info` VALUES (29, '4d7e5874-7d9c-4fca-ac08-ee4f4975', '3DFC8EA0-6', 1, '2020-05-26 10:02:01', '2020-05-26 10:02:01');
INSERT INTO `biz_out_stock_info` VALUES (30, '4d7e5874-7d9c-4fca-ac08-ee4f4975', '6EF5F2C0-9', 1, '2020-05-26 10:02:03', '2020-05-26 10:02:03');
INSERT INTO `biz_out_stock_info` VALUES (31, '4d7e5874-7d9c-4fca-ac08-ee4f4975', '6976D3B4-A', 1, '2020-05-26 10:02:03', '2020-05-26 10:02:03');

-- ----------------------------
-- Table structure for biz_product
-- ----------------------------
DROP TABLE IF EXISTS `biz_product`;
CREATE TABLE `biz_product`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `p_num` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品编号',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品名称',
  `image_url` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '图片',
  `model` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '规格型号',
  `unit` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '计算单位',
  `remark` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `sort` int(11) NULL DEFAULT NULL COMMENT '排序',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `modified_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `one_category_id` bigint(20) NULL DEFAULT NULL COMMENT '1级分类',
  `two_category_id` bigint(20) NULL DEFAULT NULL COMMENT '2级分类',
  `three_category_id` bigint(20) NULL DEFAULT NULL COMMENT '3级分类',
  `status` int(1) NULL DEFAULT 0 COMMENT '是否删除:1物资正常,0:物资回收,2:物资审核中',
  INDEX `id`(`id`) USING BTREE,
  INDEX `category_id`(`one_category_id`) USING BTREE,
  INDEX `two_category_id`(`two_category_id`) USING BTREE,
  INDEX `three_category_id`(`three_category_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 52 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of biz_product
-- ----------------------------
INSERT INTO `biz_product` VALUES (17, '3DFC8EA0-6', 'N95口罩', 'group1/M00/00/00/rBofMl5yGl2AR3rCAAArOxrzeKs522.jpg', '10个/包', '包', '救命的口罩', 1, '2020-03-18 00:00:00', '2020-08-19 17:34:24', 33, 34, 37, 0);
INSERT INTO `biz_product` VALUES (18, '6EF5F2C0-9', '普通医用口罩', 'group1/M00/00/00/rBofMl5yCTGAC-nZAAA5bqFUaK8834.jpg', '5个/包', '包', '医用口罩也不错哦', 3, '2020-03-18 00:00:00', '2020-03-18 12:52:49', 20, 23, 25, 0);
INSERT INTO `biz_product` VALUES (19, '6976D3B4-A', '普通温度计', 'group1/M00/00/00/rBofMl56zoiAJQ2HAAAhQYzsgJk572.jpg', '10只/盒', '盒', '温度计', 2, '2020-03-18 00:00:00', '2020-03-25 11:22:49', 20, 21, 38, 0);
INSERT INTO `biz_product` VALUES (20, 'AB0E206E-A', '生理盐水', 'group1/M00/00/00/rBofMl5yCqmAZi_8AABSkMEsmEI099.jpg', '500ml', '瓶', '生理盐水', 3, '2020-03-18 00:00:00', '2020-03-18 12:53:06', 20, 43, 44, 0);
INSERT INTO `biz_product` VALUES (23, '6AF405A1-C', '东北大米', 'group1/M00/00/00/rBofMl5yDA-AQd0QAAAKYAyjupw156.png', '1斤/袋', '袋', '老鼠爱大米', 4, '2020-03-18 11:55:44', '2020-03-18 11:55:44', 24, 30, 41, 0);
INSERT INTO `biz_product` VALUES (25, '2C15F1B6-1', '防毒面具', 'group1/M00/00/00/rBofMl5yFiSAe6h2AADJ0MIVEUw374.jpg', '舒适版', '个', '防毒气的', 1, '2020-03-18 00:00:00', '2020-04-30 19:08:15', 20, 23, 39, 0);
INSERT INTO `biz_product` VALUES (28, '894b8218-36ee-4a0d-9ad1-d9c5e455', '霸王洗发水', 'group1/M00/00/00/rBofMl50e76AYzVtAAB6dwE5XLI650.jpg', '10ml', '瓶', '洗发水挺好的', 7, '2020-03-20 00:00:00', '2020-03-20 09:34:08', 24, 31, 52, 0);
INSERT INTO `biz_product` VALUES (29, '0b9e9176-f996-4384-bb6c-209f55d0', '卫龙辣条', 'group1/M00/00/00/rBofMl52BQKAB9scAAA8bqb6l5k008.jpg', '大包', '包', '好吃', 4, '2020-03-21 12:14:43', '2020-03-21 12:14:43', 24, 30, 41, 0);
INSERT INTO `biz_product` VALUES (30, '24573d5b-0c9b-403b-9a88-c214702e', '医用酒精', 'group1/M00/00/00/rBofMl522Z6AN_RSAACJQ9cHSCk392.jpg', '100ml/75%', '瓶', '100ml/75%', 3, '2020-03-22 03:21:38', '2020-03-22 03:21:38', 20, 43, 57, 0);
INSERT INTO `biz_product` VALUES (31, 'c98183c8-bc47-4505-abbb-1dc219b5', '碘伏', 'group1/M00/00/00/rBofMl523RqAa7kpAABX9NSDgIo799.jpg', '500ml', '瓶', '碘伏', 3, '2020-03-22 03:36:15', '2020-03-22 03:36:15', 20, 43, 57, 0);
INSERT INTO `biz_product` VALUES (32, 'f248ee7a-c30c-447c-ae9c-0a1c09e9', '呼吸机', 'group1/M00/00/00/rBofMl523tCANhpiAABH8PzDOBU255.jpg', '100伏特', '台', 'test', 2, '2020-03-22 00:00:00', '2020-04-14 13:21:00', 20, 21, 32, 0);
INSERT INTO `biz_product` VALUES (34, 'beb944c4-01ae-497b-bfdd-2132032f', '帅气男装', 'group1/M00/00/00/rBofMl56yieAIrPAAAE3074vL7M795.jpg', '175cm', '件', '帅气男装', 2, '2020-03-25 11:04:41', '2020-03-25 11:04:41', 24, 27, 40, 0);
INSERT INTO `biz_product` VALUES (37, 'cf5a5f37-b299-4d96-bcb2-c4a46737', '脑白金', 'group1/M00/00/00/rBofMl56zOCATfJ_AABZdj80IoY642.jpg', '600ml', '包', '脑白金', 2, '2020-03-25 11:16:42', '2020-03-25 11:16:42', 20, 43, 44, 0);
INSERT INTO `biz_product` VALUES (38, '3fa0d5c1-4922-4078-8c7c-8d1cfeb5', '金鸡胶囊', 'group1/M00/00/00/rBofMl56zTyAQ3zLAATMENY24Ek321.jpg', '10个/包', '包', '金鸡胶囊', 2, '2020-03-25 11:17:38', '2020-03-25 11:17:38', 20, 43, 53, 0);
INSERT INTO `biz_product` VALUES (39, 'de16b9e6-bb49-4547-ab91-db7ae7b6', '感冒康胶囊', 'group1/M00/00/00/rBofMl56zXKAf32OAADXvzUKR90347.jpg', '10片/包', '包', '感冒康胶囊', 3, '2020-03-25 11:18:31', '2020-03-25 11:18:31', 20, 43, 53, 0);
INSERT INTO `biz_product` VALUES (40, '0e17f606-9aaa-48a7-b4e9-ef18462e', '康师傅矿泉水', 'group1/M00/00/00/rBofMl56zbyANBJlAAB2gMoSEvw394.jpg', '10瓶/箱', '箱', '矿泉水', 2, '2020-03-25 00:00:00', '2020-04-28 17:18:03', 24, 30, 62, 0);
INSERT INTO `biz_product` VALUES (46, '15bc064e-991d-40e3-bcd6-f6aff0e3', '小鸟伏特加', 'group1/M00/00/02/rBofMl63aOGAf28xAABoVKQ8E60733.jpg', '500ml', '瓶', 'ZBC', 1, '2020-05-10 10:37:53', '2020-05-10 10:37:53', 20, 43, 44, 0);
INSERT INTO `biz_product` VALUES (51, '35be7cd8-d2e4-4dd8-8601-ae295588', '334334', 'group1/M00/00/05/rBofMl89CK6AWdKaAACNRL-ICbE987.PNG', '34', '34', '44535', 4, '2020-08-19 19:10:47', '2020-08-19 19:10:47', 33, 34, 37, 2);

-- ----------------------------
-- Table structure for biz_product_category
-- ----------------------------
DROP TABLE IF EXISTS `biz_product_category`;
CREATE TABLE `biz_product_category`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '类别id',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类别名称',
  `remark` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `sort` int(11) NULL DEFAULT NULL COMMENT '排序',
  `create_time` datetime(0) NULL DEFAULT NULL,
  `modified_time` datetime(0) NULL DEFAULT NULL,
  `pid` bigint(20) NULL DEFAULT NULL COMMENT '父级分类id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 81 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of biz_product_category
-- ----------------------------
INSERT INTO `biz_product_category` VALUES (20, '医疗物资', '11111122', 2, '2020-03-17 00:00:00', '2020-03-22 23:00:38', 0);
INSERT INTO `biz_product_category` VALUES (21, '仪器', '仪器', 1, '2020-03-17 00:00:00', '2020-08-19 17:37:27', 20);
INSERT INTO `biz_product_category` VALUES (23, '防护品', '防护品', 2, '2020-03-17 11:33:48', '2020-03-17 11:33:48', 20);
INSERT INTO `biz_product_category` VALUES (24, '生活用品', '生活用品', 3, '2020-03-17 00:00:00', '2020-03-22 23:00:43', 0);
INSERT INTO `biz_product_category` VALUES (27, '衣服用品', '衣服用品', 2, '2020-03-17 11:38:50', '2020-03-17 11:38:50', 24);
INSERT INTO `biz_product_category` VALUES (28, '防护服', '防护服', 3, '2020-03-17 11:44:38', '2020-03-17 11:44:38', 23);
INSERT INTO `biz_product_category` VALUES (30, '粮油类', '粮油类', 2, '2020-03-17 11:51:29', '2020-03-17 11:51:29', 24);
INSERT INTO `biz_product_category` VALUES (31, '洗化用品', '洗化用品', 3, '2020-03-17 11:51:50', '2020-03-17 11:51:50', 24);
INSERT INTO `biz_product_category` VALUES (32, '呼吸机', '呼吸机', 1, '2020-03-17 00:00:00', '2020-03-17 13:43:01', 21);
INSERT INTO `biz_product_category` VALUES (33, '交通运输', '交通运输。。。2323。', 1, '2020-03-17 00:00:00', '2020-08-19 17:37:16', 0);
INSERT INTO `biz_product_category` VALUES (34, '车辆', '小车车', 2, '2020-03-17 11:56:51', '2020-03-17 11:56:51', 33);
INSERT INTO `biz_product_category` VALUES (37, '运输车', '运输车', 1, '2020-03-17 00:00:00', '2020-03-23 10:46:10', 34);
INSERT INTO `biz_product_category` VALUES (38, '温度器', '温度器', 1, '2020-03-18 01:43:52', '2020-03-18 01:43:52', 21);
INSERT INTO `biz_product_category` VALUES (39, '防毒面具', '防毒面具', 5, '2020-03-18 01:44:27', '2020-03-18 01:44:27', 23);
INSERT INTO `biz_product_category` VALUES (40, '衣服', '衣服', 1, '2020-03-18 01:50:33', '2020-03-18 01:50:33', 27);
INSERT INTO `biz_product_category` VALUES (41, '大米', '大米', 2, '2020-03-18 01:50:49', '2020-03-18 01:50:49', 30);
INSERT INTO `biz_product_category` VALUES (43, '药品', '药品', 2, '2020-03-18 01:57:42', '2020-03-18 01:57:42', 20);
INSERT INTO `biz_product_category` VALUES (44, '输液', '输液', 2, '2020-03-18 01:58:31', '2020-03-18 01:58:31', 43);
INSERT INTO `biz_product_category` VALUES (45, '消毒液', '消毒液', 2, '2020-03-18 01:59:03', '2020-03-18 01:59:03', 43);
INSERT INTO `biz_product_category` VALUES (46, '血压仪', '血压仪', 2, '2020-03-18 01:59:30', '2020-03-18 01:59:30', 21);
INSERT INTO `biz_product_category` VALUES (50, 'test', 'test', 1, '2020-03-19 01:05:24', '2020-03-19 01:05:24', 49);
INSERT INTO `biz_product_category` VALUES (51, 'test3', 'test3', 3, '2020-03-19 01:05:45', '2020-03-19 01:05:45', 50);
INSERT INTO `biz_product_category` VALUES (52, '洗发水', '洗发的', 1, '2020-03-20 08:15:45', '2020-03-20 08:15:45', 31);
INSERT INTO `biz_product_category` VALUES (53, '解热镇痛药', '解热镇痛药', 1, '2020-03-21 03:37:18', '2020-03-21 03:37:18', 43);
INSERT INTO `biz_product_category` VALUES (54, '外用及器具', '外用及器具', 1, '2020-03-21 03:38:13', '2020-03-21 03:38:13', 20);
INSERT INTO `biz_product_category` VALUES (55, '导尿管', '导尿管', 2, '2020-03-21 03:38:30', '2020-03-21 03:38:30', 54);
INSERT INTO `biz_product_category` VALUES (56, '三角巾急救包', '三角巾急救包', 2, '2020-03-21 03:38:51', '2020-03-21 03:38:51', 54);
INSERT INTO `biz_product_category` VALUES (57, '消毒药品类', '消毒药品类', 2, '2020-03-21 03:40:09', '2020-03-21 03:40:09', 43);
INSERT INTO `biz_product_category` VALUES (58, '外科手术服', '外科手术服', 2, '2020-03-21 03:41:20', '2020-03-21 03:41:20', 23);
INSERT INTO `biz_product_category` VALUES (62, '食用油', '实用油', 2, '2020-03-25 11:13:39', '2020-03-25 11:13:39', 30);
INSERT INTO `biz_product_category` VALUES (75, '333', '333', 3, '2020-08-19 17:10:54', '2020-08-19 17:10:54', 74);
INSERT INTO `biz_product_category` VALUES (79, '2313', '232323', 2, '2020-08-19 17:37:10', '2020-08-19 17:37:10', 21);
INSERT INTO `biz_product_category` VALUES (80, '2313', '12313', 3, '2020-08-19 17:37:32', '2020-08-19 17:37:32', 0);

-- ----------------------------
-- Table structure for biz_product_stock
-- ----------------------------
DROP TABLE IF EXISTS `biz_product_stock`;
CREATE TABLE `biz_product_stock`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `p_num` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `stock` bigint(20) NULL DEFAULT NULL COMMENT '商品库存结余',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 63 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of biz_product_stock
-- ----------------------------
INSERT INTO `biz_product_stock` VALUES (43, '3DFC8EA0-6', 47);
INSERT INTO `biz_product_stock` VALUES (44, '2C15F1B6-1', 64);
INSERT INTO `biz_product_stock` VALUES (45, '6976D3B4-A', 37);
INSERT INTO `biz_product_stock` VALUES (46, '967CE098-3', 4);
INSERT INTO `biz_product_stock` VALUES (47, '79f01380-43c7-4506-9e0c-e2640288', 5);
INSERT INTO `biz_product_stock` VALUES (48, 'f248ee7a-c30c-447c-ae9c-0a1c09e9', 49);
INSERT INTO `biz_product_stock` VALUES (49, '6AF405A1-C', 18);
INSERT INTO `biz_product_stock` VALUES (50, '0b9e9176-f996-4384-bb6c-209f55d0', 16);
INSERT INTO `biz_product_stock` VALUES (51, '894b8218-36ee-4a0d-9ad1-d9c5e455', 14);
INSERT INTO `biz_product_stock` VALUES (52, 'beb944c4-01ae-497b-bfdd-2132032f', 31);
INSERT INTO `biz_product_stock` VALUES (53, 'cf5a5f37-b299-4d96-bcb2-c4a46737', 5);
INSERT INTO `biz_product_stock` VALUES (54, '3fa0d5c1-4922-4078-8c7c-8d1cfeb5', 2);
INSERT INTO `biz_product_stock` VALUES (55, '0e17f606-9aaa-48a7-b4e9-ef18462e', 2);
INSERT INTO `biz_product_stock` VALUES (56, 'd9155553-fe5c-4d35-bb9a-1e1ab8d4', 2);
INSERT INTO `biz_product_stock` VALUES (57, '6EF5F2C0-9', 5);
INSERT INTO `biz_product_stock` VALUES (58, 'AB0E206E-A', 6);
INSERT INTO `biz_product_stock` VALUES (59, '24573d5b-0c9b-403b-9a88-c214702e', 31);
INSERT INTO `biz_product_stock` VALUES (60, 'c98183c8-bc47-4505-abbb-1dc219b5', 7);
INSERT INTO `biz_product_stock` VALUES (61, 'de16b9e6-bb49-4547-ab91-db7ae7b6', 9);
INSERT INTO `biz_product_stock` VALUES (62, '15bc064e-991d-40e3-bcd6-f6aff0e3', 28);

-- ----------------------------
-- Table structure for biz_supplier
-- ----------------------------
DROP TABLE IF EXISTS `biz_supplier`;
CREATE TABLE `biz_supplier`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '供应商名称',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '供应商地址',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '供应商邮箱',
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '供应商电话',
  `create_time` datetime(0) NULL DEFAULT NULL,
  `modified_time` datetime(0) NULL DEFAULT NULL,
  `sort` int(10) NULL DEFAULT NULL COMMENT '排序',
  `contact` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of biz_supplier
-- ----------------------------
INSERT INTO `biz_supplier` VALUES (14, '324234', '河北省/秦皇岛市/长安区', '424324@qq.com', '15079437282', '2020-04-26 10:00:05', '2020-04-26 10:00:05', 2, '324324');
INSERT INTO `biz_supplier` VALUES (15, '大街', '河北省/邯郸市/峰峰矿区', '3424324@qq.com', '15079437282', '2020-05-09 19:37:46', '2020-05-10 11:25:01', 1, '324324');
INSERT INTO `biz_supplier` VALUES (16, '2342424', '内蒙古自治区/鄂尔多斯市/鄂托克前旗', '432423424@qq.com', '15079437282', '2020-05-09 19:42:07', '2020-05-09 19:42:07', 1, '3242423');
INSERT INTO `biz_supplier` VALUES (17, '北京人民大会堂', '北京市/市辖区/朝阳区', 'xiong@qq.com', '15079437282', '2020-05-18 11:38:04', '2020-05-18 11:38:04', 1, '熊老板');
INSERT INTO `biz_supplier` VALUES (18, 'xixiixxxxi', '河北省/秦皇岛市/北戴河区', 'chrome@qq.com', '15079437282', '2020-05-18 11:41:09', '2020-05-18 11:41:09', 1, 'perterchro');
INSERT INTO `biz_supplier` VALUES (19, 'xixiixxxxi', '河北省/秦皇岛市/北戴河区', 'chrome@qq.com', '15079437282', '2020-05-18 11:43:49', '2020-05-18 11:43:49', 1, 'perterchro');
INSERT INTO `biz_supplier` VALUES (20, 'aloooodf', '山西省/晋城市/陵川县', 'justiner@qq.com', '15245745454', '2020-05-18 12:21:29', '2020-05-18 12:21:29', 1, 'justiner');
INSERT INTO `biz_supplier` VALUES (21, 'HHH', '河北省/秦皇岛市/长安区', 'HHH@qq.com', '15079437282', '2020-05-18 13:16:28', '2020-05-18 13:16:28', 1, 'HHH');
INSERT INTO `biz_supplier` VALUES (22, 'PuPuPu34', '山西省/阳泉市/平定县', '124545454@qq.com', '15254541241', '2020-05-18 13:42:29', '2020-05-18 13:43:05', 1, '封小新');

-- ----------------------------
-- Table structure for tb_department
-- ----------------------------
DROP TABLE IF EXISTS `tb_department`;
CREATE TABLE `tb_department`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '系名',
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '系办公电话',
  `address` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '办公室地点',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `modified_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_department
-- ----------------------------
INSERT INTO `tb_department` VALUES (1, '物资管理部', '15045741241', '负责系统物资的管理。', '2020-03-16 00:00:00', '2020-08-19 16:48:16');
INSERT INTO `tb_department` VALUES (12, '采购部', '15079451241', '采购中心', '2020-03-16 00:00:00', '2020-08-19 16:48:20');
INSERT INTO `tb_department` VALUES (14, '信息技术部', '18214521412', '3楼405房间', '2020-03-19 00:00:00', '2020-08-19 16:48:23');
INSERT INTO `tb_department` VALUES (15, '行政部', '15079457458', '3栋504房间', '2020-03-19 00:00:00', '2020-03-25 11:27:35');

-- ----------------------------
-- Table structure for tb_image
-- ----------------------------
DROP TABLE IF EXISTS `tb_image`;
CREATE TABLE `tb_image`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `path` varchar(1023) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '图片路径',
  `size` bigint(20) NULL DEFAULT NULL COMMENT '图片大小',
  `media_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '图片类型',
  `suffix` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '图片后缀',
  `height` int(20) NULL DEFAULT NULL COMMENT '图片高度',
  `width` int(20) NULL DEFAULT NULL COMMENT '图片宽度',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_image
-- ----------------------------
INSERT INTO `tb_image` VALUES (2, 'group1/M00/00/05/rBofMl883AeAQ5diAAAXqIRjvsQ186.PNG', NULL, 'image/png', NULL, 540, 1250, '2020-08-19 16:00:07');
INSERT INTO `tb_image` VALUES (7, 'group1/M00/00/05/rBofMl883RaAF_OAAACNRL-ICbE879.PNG', NULL, 'image/png', NULL, 256, 1526, '2020-08-19 16:04:39');
INSERT INTO `tb_image` VALUES (12, 'group1/M00/00/05/rBofMl884DqAPlhlAAFx8VvhOiM302.PNG', NULL, 'image/png', NULL, 480, 1098, '2020-08-19 16:18:02');
INSERT INTO `tb_image` VALUES (19, 'group1/M00/00/05/rBofMl8840qAa90AAAAKYAyjupw661.PNG', NULL, 'image/png', NULL, 400, 400, '2020-08-19 16:31:07');
INSERT INTO `tb_image` VALUES (20, 'group1/M00/00/05/rBofMl89AkyAbmybAAATfahiDQ0876.JPG', NULL, 'image/jpeg', NULL, 200, 200, '2020-08-19 18:43:25');
INSERT INTO `tb_image` VALUES (21, 'group1/M00/00/05/rBofMl89A46AMehSAAE5a45QSpU128.JPG', NULL, 'image/jpeg', NULL, 962, 640, '2020-08-19 18:48:46');
INSERT INTO `tb_image` VALUES (22, 'group1/M00/00/05/rBofMl89BJuAPUHbAACNRL-ICbE462.PNG', NULL, 'image/png', NULL, 256, 1526, '2020-08-19 18:53:15');
INSERT INTO `tb_image` VALUES (23, 'group1/M00/00/05/rBofMl89BUuAWKY9AAFx8VvhOiM865.PNG', NULL, 'image/png', NULL, 480, 1098, '2020-08-19 18:56:11');
INSERT INTO `tb_image` VALUES (24, 'group1/M00/00/05/rBofMl89BtaAWOfdAACPaNECvsQ616.PNG', NULL, 'image/png', NULL, 540, 837, '2020-08-19 19:02:47');
INSERT INTO `tb_image` VALUES (25, 'group1/M00/00/05/rBofMl89BtaAZMqkAAAXqIRjvsQ483.PNG', NULL, 'image/png', NULL, 540, 1250, '2020-08-19 19:02:47');
INSERT INTO `tb_image` VALUES (26, 'group1/M00/00/05/rBofMl89BteALj1_ABQ_6C5PSkM056.PNG', NULL, 'image/png', NULL, 1080, 1920, '2020-08-19 19:02:47');
INSERT INTO `tb_image` VALUES (27, 'group1/M00/00/05/rBofMl89CK6AWdKaAACNRL-ICbE987.PNG', NULL, 'image/png', NULL, 256, 1526, '2020-08-19 19:10:38');
INSERT INTO `tb_image` VALUES (29, 'group1/M00/00/05/rBofMl89DZ-AHnbuAAHpPHX2HTg198.PNG', NULL, 'image/png', NULL, 1030, 702, '2020-08-19 19:31:44');
INSERT INTO `tb_image` VALUES (30, 'group1/M00/00/06/rBofMl9YyXmAMiuyAAZ7xz6rKuE592.PNG', NULL, 'image/png', NULL, 852, 1512, '2020-09-09 20:24:27');

-- ----------------------------
-- Table structure for tb_log
-- ----------------------------
DROP TABLE IF EXISTS `tb_log`;
CREATE TABLE `tb_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志ID',
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作用户',
  `operation` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '操作内容',
  `time` decimal(11, 0) NULL DEFAULT NULL COMMENT '耗时',
  `method` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '操作方法',
  `params` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '方法参数',
  `ip` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作者IP',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `location` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作地点',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2004 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '操作日志表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_log
-- ----------------------------
INSERT INTO `tb_log` VALUES (1335, 'zhangyukang', '批量删除系统日志', 29, 'com.coderman.api.system.controller.LogController.batchDelete()', 'paramName:[ids],args:[1334],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-04 19:48:36', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1336, 'zhangyukang', '用户|禁用/启用', 1093, 'com.coderman.api.system.controller.UserController.updateStatus()', 'paramName:[id, status],args:[6, true],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-04 19:57:31', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1338, 'zhangyukang', '更新用户', 46, 'com.coderman.api.system.controller.UserController.update()', 'paramName:[id, userEditVO],args:[56, UserEditVO(id=56, username=coderman, nickname=zhangyu, email=zhangyukang@qq.com, phoneNumber=13426528317, sex=1, birth=Fri Mar 20 00:00:00 CST 2020, departmentId=1)],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-04 19:57:35', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1339, 'zhangyukang', '更新用户', 20, 'com.coderman.api.system.controller.UserController.update()', 'paramName:[id, userEditVO],args:[42, UserEditVO(id=42, username=coderman, nickname=zhangyu, email=zhangyukang@qq.com, phoneNumber=13426528317, sex=0, birth=Fri Mar 13 00:00:00 CST 2020, departmentId=1)],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-04 19:57:40', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1340, 'zhangyukang', '删除用户', 392, 'com.coderman.api.system.controller.UserController.delete()', 'paramName:[id],args:[82],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-04 19:57:45', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1342, 'zhangyukang', '用户|禁用/启用', 14, 'com.coderman.api.system.controller.UserController.updateStatus()', 'paramName:[id, status],args:[84, true],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-04 19:57:49', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1343, 'zhangyukang', '用户|禁用/启用', 414, 'com.coderman.api.system.controller.UserController.updateStatus()', 'paramName:[id, status],args:[84, false],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-04 19:57:53', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1344, 'zhangyukang', '新增菜单/按钮', 965, 'com.coderman.api.system.controller.MenuController.add()', 'paramName:[menuVO],args:[MenuVO(id=null, parentId=307, menuName=删除日志, url=, icon=el-icon-circle-close, type=1, orderNum=1, createTime=null, modifiedTime=null, disabled=false, open=1, perms=log:delete)],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-04 19:59:21', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1345, 'zhangyukang', '新增菜单/按钮', 1298, 'com.coderman.api.system.controller.MenuController.add()', 'paramName:[menuVO],args:[MenuVO(id=null, parentId=307, menuName=批量删除, url=null, icon=el-icon-document-delete, type=1, orderNum=2, createTime=null, modifiedTime=null, disabled=false, open=0, perms=log:batchDelete)],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-04 20:00:00', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1346, 'zhangyukang', '更新菜单', 114, 'com.coderman.api.system.controller.MenuController.update()', 'paramName:[id, menuVO],args:[229, MenuVO(id=229, parentId=0, menuName=物资管理, url=, icon=el-icon-date, type=0, orderNum=1, createTime=Tue Mar 10 05:34:08 CST 2020, modifiedTime=Sun Mar 22 22:54:06 CST 2020, disabled=false, open=0, perms=el-icon-date)],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-04 20:00:52', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1347, 'zhangyukang', '更新菜单', 109, 'com.coderman.api.system.controller.MenuController.update()', 'paramName:[id, menuVO],args:[271, MenuVO(id=271, parentId=5, menuName=登入日志, url=/loginLog, icon=el-icon-date, type=0, orderNum=1, createTime=Fri Mar 20 10:31:12 CST 2020, modifiedTime=Sun Mar 22 22:19:38 CST 2020, disabled=false, open=0, perms=login:log)],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-04 20:01:03', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1349, '系统测试人员', '角色|禁用/启用', 67, 'com.coderman.api.system.controller.RoleController.updateStatus()', 'paramName:[id, status],args:[2, true],role:[Role{id=138, roleName=\'测试员工\'}]', '127.0.0.1', '2020-04-04 20:41:38', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1350, '系统测试人员', '角色|禁用/启用', 1170, 'com.coderman.api.system.controller.RoleController.updateStatus()', 'paramName:[id, status],args:[2, false],role:[Role{id=138, roleName=\'测试员工\'}]', '127.0.0.1', '2020-04-04 20:41:40', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1351, 'zhangyukang', '新增菜单/按钮', 801, 'com.coderman.api.system.controller.MenuController.add()', 'paramName:[menuVO],args:[MenuVO(id=null, parentId=229, menuName=物资去处, url=/consumers, icon=el-icon-edit, type=0, orderNum=1, createTime=null, modifiedTime=null, disabled=false, open=0, perms=)],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-05 10:08:22', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1352, 'zhangyukang', '更新菜单', 119, 'com.coderman.api.system.controller.MenuController.update()', 'paramName:[id, menuVO],args:[312, MenuVO(id=312, parentId=0, menuName=业务管理, url=null, icon=el-icon-edit, type=0, orderNum=2, createTime=Sun Apr 05 10:19:07 CST 2020, modifiedTime=Sun Apr 05 10:19:09 CST 2020, disabled=false, open=1, perms=null)],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-05 10:21:01', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1353, 'zhangyukang', '更新菜单', 1859, 'com.coderman.api.system.controller.MenuController.update()', 'paramName:[id, menuVO],args:[303, MenuVO(id=303, parentId=0, menuName=健康报备, url=, icon=el-icon-platform-eleme, type=0, orderNum=3, createTime=Tue Mar 24 10:11:53 CST 2020, modifiedTime=Tue Mar 24 10:26:54 CST 2020, disabled=false, open=1, perms=)],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-05 10:21:24', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1354, 'zhangyukang', '更新菜单', 90, 'com.coderman.api.system.controller.MenuController.update()', 'paramName:[id, menuVO],args:[272, MenuVO(id=272, parentId=0, menuName=疫情地图, url=null, icon=el-icon-help, type=0, orderNum=5, createTime=Fri Mar 20 19:29:40 CST 2020, modifiedTime=Tue Mar 24 10:25:32 CST 2020, disabled=false, open=0, perms=null)],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-05 10:21:30', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1355, 'zhangyukang', '用户|禁用/启用', 559, 'com.coderman.api.system.controller.UserController.updateStatus()', 'paramName:[id, status],args:[6, false],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-11 10:03:38', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1356, 'zhangyukang', '更新用户', 220, 'com.coderman.api.system.controller.UserController.update()', 'paramName:[id, userEditVO],args:[54, UserEditVO(id=54, username=coderman, nickname=zhangyu, email=zhangyukang@qq.com, phoneNumber=13426528317, sex=0, birth=Fri Apr 03 00:00:00 CST 2020, departmentId=1)],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-11 10:03:49', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1357, 'zhangyukang', '更新用户', 889, 'com.coderman.api.system.controller.UserController.update()', 'paramName:[id, userEditVO],args:[6, UserEditVO(id=6, username=Georgie, nickname=zhangyu, email=Georgie@qq.com, phoneNumber=17766666666, sex=0, birth=Wed Mar 25 00:00:00 CST 2020, departmentId=1)],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-11 10:14:38', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1358, 'zhangyukang', '用户|禁用/启用', 44, 'com.coderman.api.system.controller.UserController.updateStatus()', 'paramName:[id, status],args:[6, true],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-11 10:14:40', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1359, 'zhangyukang', '用户|禁用/启用', 22, 'com.coderman.api.system.controller.UserController.updateStatus()', 'paramName:[id, status],args:[6, false],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-11 10:14:41', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1360, 'zhangyukang', '删除用户', 225, 'com.coderman.api.system.controller.UserController.delete()', 'paramName:[id],args:[90],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-11 10:14:49', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1361, 'zhangyukang', '添加用户', 473, 'com.coderman.api.system.controller.UserController.add()', 'paramName:[userVO],args:[UserVO(id=null, username=xixxix, nickname=fdasfsf, email=12121515@qq.com, phoneNumber=13426525414, status=null, createTime=null, sex=1, birth=Tue Apr 28 00:00:00 CST 2020, password=123456, departmentName=null, departmentId=12)],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-11 10:15:27', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1363, 'zhangyukang', '角色授权', 2426, 'com.coderman.api.system.controller.RoleController.authority()', 'paramName:[id, mids],args:[139, [Ljava.lang.Long;@d0f2c72],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-11 10:46:45', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1364, 'zhangyukang', '用户|禁用/启用', 1680, 'com.coderman.api.system.controller.UserController.updateStatus()', 'paramName:[id, status],args:[54, false],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-11 11:00:09', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1365, '系统测试人员', '更新菜单', 1354, 'com.coderman.api.system.controller.MenuController.update()', 'paramName:[id, menuVO],args:[229, MenuVO(id=229, parentId=312, menuName=物资管理, url=, icon=el-icon-date, type=0, orderNum=1, createTime=Tue Mar 10 05:34:08 CST 2020, modifiedTime=Sat Apr 04 20:00:52 CST 2020, disabled=false, open=0, perms=el-icon-date)],role:[Role{id=138, roleName=\'测试员工\'}]', '127.0.0.1', '2020-04-11 11:04:06', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1366, '系统测试人员', '更新部门', 44, 'com.coderman.api.system.controller.DepartmentController.update()', 'paramName:[id, departmentVO],args:[1, DepartmentVO(id=1, name=物资管理部, phone=15045741241, address=负责系统物资的管理。, mgrId=71, createTime=Mon Mar 16 00:00:00 CST 2020, modifiedTime=Tue Mar 24 00:00:00 CST 2020, mgrName=null)],role:[Role{id=138, roleName=\'测试员工\'}]', '127.0.0.1', '2020-04-11 11:18:45', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1367, 'zhangyukang', '更新菜单', 112, 'com.coderman.api.system.controller.MenuController.update()', 'paramName:[id, menuVO],args:[247, MenuVO(id=247, parentId=4, menuName=添加菜单, url=, icon=el-icon-s-opportunity, type=1, orderNum=1, createTime=Tue Mar 10 07:55:10 CST 2020, modifiedTime=Sun Mar 15 13:29:21 CST 2020, disabled=true, open=0, perms=menu:add)],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-11 11:19:48', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1368, 'zhangyukang', '更新菜单', 35, 'com.coderman.api.system.controller.MenuController.update()', 'paramName:[id, menuVO],args:[1, MenuVO(id=1, parentId=0, menuName=系统管理, url=, icon=el-icon-setting, type=0, orderNum=1, createTime=Sat Mar 07 17:41:30 CST 2020, modifiedTime=Sun Mar 22 22:54:20 CST 2020, disabled=true, open=0, perms=null)],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-11 11:20:24', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1369, 'zhangyukang', '更新菜单', 113, 'com.coderman.api.system.controller.MenuController.update()', 'paramName:[id, menuVO],args:[1, MenuVO(id=1, parentId=0, menuName=系统管理, url=, icon=el-icon-setting, type=0, orderNum=1, createTime=Sat Mar 07 17:41:30 CST 2020, modifiedTime=Sat Apr 11 11:20:24 CST 2020, disabled=false, open=0, perms=null)],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-11 11:21:00', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1370, 'zhangyukang', '更新用户', 1212, 'com.coderman.api.system.controller.UserController.update()', 'paramName:[id, userEditVO],args:[6, UserEditVO(id=6, username=Georgie, nickname=zhangyu, email=Georgie@qq.com, phoneNumber=17766666666, sex=1, birth=Wed Mar 25 00:00:00 CST 2020, departmentId=1)],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-11 13:14:48', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1371, 'zhangyukang', '更新用户', 278, 'com.coderman.api.system.controller.UserController.update()', 'paramName:[id, userEditVO],args:[42, UserEditVO(id=42, username=coderman, nickname=zhangyu, email=zhangyukang@qq.com, phoneNumber=13426528317, sex=1, birth=Fri Mar 13 00:00:00 CST 2020, departmentId=1)],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-11 13:14:57', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1372, 'zhangyukang', '更新用户', 2040, 'com.coderman.api.system.controller.UserController.update()', 'paramName:[id, userEditVO],args:[42, UserEditVO(id=42, username=coderman, nickname=zhangyu, email=zhangyukang@qq.com, phoneNumber=13426528317, sex=0, birth=Fri Mar 13 00:00:00 CST 2020, departmentId=1)],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-11 13:15:11', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1373, 'zhangyukang', '更新用户', 169, 'com.coderman.api.system.controller.UserController.update()', 'paramName:[id, userEditVO],args:[6, UserEditVO(id=6, username=Georgie, nickname=zhangyu, email=Georgie@qq.com, phoneNumber=17766666666, sex=1, birth=Wed Mar 25 00:00:00 CST 2020, departmentId=1)],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-11 13:15:41', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1374, 'zhangyukang', '更新部门', 2672, 'com.coderman.api.system.controller.DepartmentController.update()', 'paramName:[id, departmentVO],args:[1, DepartmentVO(id=1, name=物资管理部, phone=15045741241, address=负责系统物资的管理。, mgrId=54, createTime=Mon Mar 16 00:00:00 CST 2020, modifiedTime=Sat Apr 11 00:00:00 CST 2020, mgrName=null)],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-11 13:16:23', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1376, 'zhangyukang', '更新部门', 1181, 'com.coderman.api.system.controller.DepartmentController.update()', 'paramName:[id, departmentVO],args:[1, DepartmentVO(id=1, name=物资管理部, phone=15045741241, address=负责系统物资的管理。, mgrId=54, createTime=Mon Mar 16 00:00:00 CST 2020, modifiedTime=Sat Apr 11 00:00:00 CST 2020, mgrName=null)],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-11 13:16:59', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1397, 'zhangyukang', '更新部门', 751, 'com.coderman.api.system.controller.DepartmentController.update()', 'paramName:[id, departmentVO],args:[1, DepartmentVO(id=1, name=物资管理部, phone=15045741241, address=负责系统物资的管理。, mgrId=54, createTime=Mon Mar 16 00:00:00 CST 2020, modifiedTime=Sat Apr 11 00:00:00 CST 2020, mgrName=null)],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-11 13:22:04', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1398, 'zhangyukang', '更新部门', 888, 'com.coderman.api.system.controller.DepartmentController.update()', 'paramName:[id, departmentVO],args:[1, DepartmentVO(id=1, name=物资管理部, phone=15045741241, address=负责系统物资的管理。, mgrId=54, createTime=Mon Mar 16 00:00:00 CST 2020, modifiedTime=Sat Apr 11 00:00:00 CST 2020, mgrName=null)],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-11 13:22:07', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1399, 'zhangyukang', '更新部门', 60, 'com.coderman.api.system.controller.DepartmentController.update()', 'paramName:[id, departmentVO],args:[12, DepartmentVO(id=12, name=采购部, phone=15079451241, address=采购中心, mgrId=54, createTime=Mon Mar 16 00:00:00 CST 2020, modifiedTime=Sat Mar 21 00:00:00 CST 2020, mgrName=null)],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-11 13:22:10', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1400, 'zhangyukang', '更新部门', 424, 'com.coderman.api.system.controller.DepartmentController.update()', 'paramName:[id, departmentVO],args:[1, DepartmentVO(id=1, name=物资管理部, phone=15045741241, address=负责系统物资的管理。, mgrId=54, createTime=Mon Mar 16 00:00:00 CST 2020, modifiedTime=Sat Apr 11 00:00:00 CST 2020, mgrName=null)],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-11 13:22:13', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1401, 'zhangyukang', '更新部门', 944, 'com.coderman.api.system.controller.DepartmentController.update()', 'paramName:[id, departmentVO],args:[12, DepartmentVO(id=12, name=采购部, phone=15079451241, address=采购中心, mgrId=54, createTime=Mon Mar 16 00:00:00 CST 2020, modifiedTime=Sat Apr 11 00:00:00 CST 2020, mgrName=null)],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-11 13:22:19', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1402, 'zhangyukang', '更新部门', 835, 'com.coderman.api.system.controller.DepartmentController.update()', 'paramName:[id, departmentVO],args:[12, DepartmentVO(id=12, name=采购部, phone=15079451241, address=采购中心, mgrId=54, createTime=Mon Mar 16 00:00:00 CST 2020, modifiedTime=Sat Apr 11 00:00:00 CST 2020, mgrName=null)],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-11 13:22:22', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1403, 'zhangyukang', '添加部门', 562, 'com.coderman.api.system.controller.DepartmentController.add()', 'paramName:[departmentVO],args:[DepartmentVO(id=null, name=fdsfa, phone=15079437282, address=fdsf, mgrId=54, createTime=null, modifiedTime=null, mgrName=null)],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-11 13:22:50', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1404, 'zhangyukang', '更新部门', 21, 'com.coderman.api.system.controller.DepartmentController.update()', 'paramName:[id, departmentVO],args:[17, DepartmentVO(id=17, name=fdsfa, phone=15079437282, address=fdsf, mgrId=54, createTime=Sat Apr 11 00:00:00 CST 2020, modifiedTime=Sat Apr 11 00:00:00 CST 2020, mgrName=null)],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-11 13:22:54', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1405, 'zhangyukang', '更新部门', 1294, 'com.coderman.api.system.controller.DepartmentController.update()', 'paramName:[id, departmentVO],args:[17, DepartmentVO(id=17, name=fdsfa, phone=15079437282, address=fdsf, mgrId=54, createTime=Sat Apr 11 00:00:00 CST 2020, modifiedTime=Sat Apr 11 00:00:00 CST 2020, mgrName=null)],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-11 13:23:47', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1406, 'zhangyukang', '更新部门', 886, 'com.coderman.api.system.controller.DepartmentController.update()', 'paramName:[id, departmentVO],args:[1, DepartmentVO(id=1, name=物资管理部, phone=15045741241, address=负责系统物资的管理。, mgrId=54, createTime=Mon Mar 16 00:00:00 CST 2020, modifiedTime=Sat Apr 11 00:00:00 CST 2020, mgrName=null)],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-11 13:25:01', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1407, 'zhangyukang', '更新部门', 984, 'com.coderman.api.system.controller.DepartmentController.update()', 'paramName:[id, departmentVO],args:[1, DepartmentVO(id=1, name=物资管理部, phone=15045741241, address=负责系统物资的管理。, mgrId=54, createTime=Mon Mar 16 00:00:00 CST 2020, modifiedTime=Sat Apr 11 00:00:00 CST 2020, mgrName=null)],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-11 13:25:09', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1408, 'zhangyukang', '更新部门', 18, 'com.coderman.api.system.controller.DepartmentController.update()', 'paramName:[id, departmentVO],args:[14, DepartmentVO(id=14, name=信息技术部, phone=18214521412, address=3楼405房间, mgrId=6, createTime=Thu Mar 19 00:00:00 CST 2020, modifiedTime=Sat Apr 11 00:00:00 CST 2020, mgrName=null)],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-11 13:25:23', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1409, 'zhangyukang', '更新部门', 296, 'com.coderman.api.system.controller.DepartmentController.update()', 'paramName:[id, departmentVO],args:[14, DepartmentVO(id=14, name=信息技术部, phone=18214521412, address=3楼405房间, mgrId=6, createTime=Thu Mar 19 00:00:00 CST 2020, modifiedTime=Sat Apr 11 00:00:00 CST 2020, mgrName=null)],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-11 13:25:27', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1410, 'zhangyukang', '更新部门', 972, 'com.coderman.api.system.controller.DepartmentController.update()', 'paramName:[id, departmentVO],args:[17, DepartmentVO(id=17, name=fdsfa, phone=15079437282, address=fdsf, mgrId=54, createTime=Sat Apr 11 00:00:00 CST 2020, modifiedTime=Sat Apr 11 00:00:00 CST 2020, mgrName=null)],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-11 13:25:36', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1411, 'zhangyukang', '更新部门', 623, 'com.coderman.api.system.controller.DepartmentController.update()', 'paramName:[id, departmentVO],args:[1, DepartmentVO(id=1, name=物资管理部, phone=15045741241, address=负责系统物资的管理。, mgrId=54, createTime=Mon Mar 16 00:00:00 CST 2020, modifiedTime=Sat Apr 11 00:00:00 CST 2020, mgrName=null)],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-11 13:25:43', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1412, 'zhangyukang', '添加部门', 116, 'com.coderman.api.system.controller.DepartmentController.add()', 'paramName:[departmentVO],args:[DepartmentVO(id=null, name=3434, phone=15014141251, address=fdsfaf, mgrId=71, createTime=null, modifiedTime=null, mgrName=null)],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-11 13:27:27', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1413, 'zhangyukang', '添加部门', 185, 'com.coderman.api.system.controller.DepartmentController.add()', 'paramName:[departmentVO],args:[DepartmentVO(id=null, name=fsdf, phone=15079410400, address=42432424, mgrId=5, createTime=null, modifiedTime=null, mgrName=null)],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-11 13:27:45', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1414, 'zhangyukang', '更新部门', 734, 'com.coderman.api.system.controller.DepartmentController.update()', 'paramName:[id, departmentVO],args:[12, DepartmentVO(id=12, name=采购部, phone=15079451241, address=采购中心, mgrId=5, createTime=Mon Mar 16 00:00:00 CST 2020, modifiedTime=Sat Apr 11 00:00:00 CST 2020, mgrName=null)],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-11 13:28:46', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1415, 'zhangyukang', '添加部门', 25, 'com.coderman.api.system.controller.DepartmentController.add()', 'paramName:[departmentVO],args:[DepartmentVO(id=null, name=234242, phone=15079482821, address=beijing, mgrId=54, createTime=null, modifiedTime=null, mgrName=null)],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-11 13:29:00', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1416, 'zhangyukang', '更新部门', 234, 'com.coderman.api.system.controller.DepartmentController.update()', 'paramName:[id, departmentVO],args:[20, DepartmentVO(id=20, name=234242, phone=15079482821, address=beijing, mgrId=71, createTime=Sat Apr 11 00:00:00 CST 2020, modifiedTime=Sat Apr 11 00:00:00 CST 2020, mgrName=null)],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-11 13:29:08', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1417, 'zhangyukang', '更新用户', 44, 'com.coderman.api.system.controller.UserController.update()', 'paramName:[id, userEditVO],args:[6, UserEditVO(id=6, username=Georgie, nickname=zhangyu, email=Georgie@qq.com, phoneNumber=17766666666, sex=1, birth=Wed Mar 25 00:00:00 CST 2020, departmentId=1)],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-11 13:39:20', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1418, 'zhangyukang', '更新用户', 30, 'com.coderman.api.system.controller.UserController.update()', 'paramName:[id, userEditVO],args:[42, UserEditVO(id=42, username=coderman, nickname=zhangyu, email=zhangyukang@qq.com, phoneNumber=13426528317, sex=0, birth=Fri Mar 13 00:00:00 CST 2020, departmentId=1)],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-11 13:39:23', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1419, 'zhangyukang', '更新用户', 305, 'com.coderman.api.system.controller.UserController.update()', 'paramName:[id, userEditVO],args:[6, UserEditVO(id=6, username=Georgie, nickname=zhangyu, email=Georgie@qq.com, phoneNumber=17766666666, sex=1, birth=Wed Mar 25 00:00:00 CST 2020, departmentId=1)],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-11 13:39:26', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1420, 'zhangyukang', '更新用户', 58, 'com.coderman.api.system.controller.UserController.update()', 'paramName:[id, userEditVO],args:[6, UserEditVO(id=6, username=Georgie, nickname=zhangyu, email=Georgie@qq.com, phoneNumber=17766666666, sex=1, birth=Wed Mar 25 00:00:00 CST 2020, departmentId=1)],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-11 13:40:22', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1421, 'zhangyukang', '更新用户', 23, 'com.coderman.api.system.controller.UserController.update()', 'paramName:[id, userEditVO],args:[6, UserEditVO(id=6, username=Georgie, nickname=zhangyu, email=Georgie@qq.com, phoneNumber=17766666666, sex=1, birth=Wed Mar 25 00:00:00 CST 2020, departmentId=1)],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-11 13:40:25', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1422, 'zhangyukang', '更新用户', 20, 'com.coderman.api.system.controller.UserController.update()', 'paramName:[id, userEditVO],args:[6, UserEditVO(id=6, username=Georgie, nickname=zhangyu, email=Georgie@qq.com, phoneNumber=17766666666, sex=1, birth=Wed Mar 25 00:00:00 CST 2020, departmentId=1)],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-11 13:40:32', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1423, 'zhangyukang', '更新用户', 28, 'com.coderman.api.system.controller.UserController.update()', 'paramName:[id, userEditVO],args:[42, UserEditVO(id=42, username=coderman, nickname=zhangyu, email=zhangyukang@qq.com, phoneNumber=13426528317, sex=1, birth=Fri Mar 13 00:00:00 CST 2020, departmentId=1)],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-11 13:40:36', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1424, 'zhangyukang', '添加用户', 43, 'com.coderman.api.system.controller.UserController.add()', 'paramName:[userVO],args:[UserVO(id=null, username=324234, nickname=fsdfasf, email=fdsafsf@qq.com, phoneNumber=15078485741, status=null, createTime=null, sex=1, birth=Wed Apr 15 00:00:00 CST 2020, password=123456fdsf, departmentName=null, departmentId=12)],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-11 13:41:00', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1425, 'zhangyukang', '分配角色', 143, 'com.coderman.api.system.controller.UserController.assignRoles()', 'paramName:[id, rids],args:[187, [Ljava.lang.Long;@3a9acaab],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-11 13:41:10', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1426, 'zhangyukang', '分配角色', 82, 'com.coderman.api.system.controller.UserController.assignRoles()', 'paramName:[id, rids],args:[187, [Ljava.lang.Long;@53d3c956],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-11 13:41:13', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1427, 'zhangyukang', '更新用户', 412, 'com.coderman.api.system.controller.UserController.update()', 'paramName:[id, userEditVO],args:[6, UserEditVO(id=6, username=Georgie, nickname=zhangyu, email=Georgie@qq.com, phoneNumber=17766666666, sex=1, birth=Wed Mar 25 00:00:00 CST 2020, departmentId=1)],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-11 13:41:21', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1428, 'zhangyukang', '更新用户', 61, 'com.coderman.api.system.controller.UserController.update()', 'paramName:[id, userEditVO],args:[6, UserEditVO(id=6, username=Georgie, nickname=zhangyu, email=Georgie@qq.com, phoneNumber=17766666666, sex=0, birth=Wed Mar 25 00:00:00 CST 2020, departmentId=1)],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-11 13:41:39', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1429, 'zhangyukang', '角色授权', 137, 'com.coderman.api.system.controller.RoleController.authority()', 'paramName:[id, mids],args:[2, [Ljava.lang.Long;@1c060ae5],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-11 13:45:24', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1430, 'zhangyukang', '更新角色', 28, 'com.coderman.api.system.controller.RoleController.update()', 'paramName:[id, roleVO],args:[2, RoleVO(id=2, roleName=注册账户, remark=注册账户，拥有查看, createTime=Fri Jun 14 00:00:00 CST 2019, modifiedTime=Wed Mar 11 01:41:35 CST 2020, status=null)],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-11 13:45:29', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1431, 'zhangyukang', '添加角色', 51, 'com.coderman.api.system.controller.RoleController.add()', 'paramName:[roleVO],args:[RoleVO(id=null, roleName=2432, remark=32424, createTime=null, modifiedTime=null, status=null)],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-11 13:45:36', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1432, 'zhangyukang', '删除角色', 51, 'com.coderman.api.system.controller.RoleController.delete()', 'paramName:[id],args:[142],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-11 13:45:41', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1433, 'zhangyukang', '角色授权', 51, 'com.coderman.api.system.controller.RoleController.authority()', 'paramName:[id, mids],args:[139, [Ljava.lang.Long;@b31a2b8],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-11 13:45:44', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1434, 'zhangyukang', '角色授权', 52, 'com.coderman.api.system.controller.RoleController.authority()', 'paramName:[id, mids],args:[139, [Ljava.lang.Long;@4df5b8e6],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-11 13:45:44', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1435, 'zhangyukang', '角色授权', 83, 'com.coderman.api.system.controller.RoleController.authority()', 'paramName:[id, mids],args:[139, [Ljava.lang.Long;@303266f9],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-11 13:45:47', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1436, 'zhangyukang', '角色授权', 36, 'com.coderman.api.system.controller.RoleController.authority()', 'paramName:[id, mids],args:[139, [Ljava.lang.Long;@33731876],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-11 13:45:52', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1437, 'zhangyukang', '角色授权', 118, 'com.coderman.api.system.controller.RoleController.authority()', 'paramName:[id, mids],args:[141, [Ljava.lang.Long;@b0ebf84],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-11 13:45:58', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1438, 'zhangyukang', '更新用户', 24, 'com.coderman.api.system.controller.UserController.update()', 'paramName:[id, userEditVO],args:[6, UserEditVO(id=6, username=Georgie, nickname=zhangyu, email=Georgie@qq.com, phoneNumber=17766666666, sex=0, birth=Wed Mar 25 00:00:00 CST 2020, departmentId=1)],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-11 13:46:09', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1439, 'zhangyukang', '角色授权', 160, 'com.coderman.api.system.controller.RoleController.authority()', 'paramName:[id, mids],args:[2, [Ljava.lang.Long;@dbe38bf],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-11 13:46:20', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1440, 'zhangyukang', '更新用户', 41, 'com.coderman.api.system.controller.UserController.update()', 'paramName:[id, userEditVO],args:[6, UserEditVO(id=6, username=Georgie, nickname=zhangyu, email=Georgie@qq.com, phoneNumber=17766666666, sex=0, birth=Wed Mar 25 00:00:00 CST 2020, departmentId=1)],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-11 13:53:23', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1441, 'zhangyukang', '分配角色', 1, 'com.coderman.api.system.controller.UserController.assignRoles()', 'paramName:[id, rids],args:[84, [Ljava.lang.Long;@a556180],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-11 13:53:32', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1442, 'zhangyukang', '更新菜单', 39, 'com.coderman.api.system.controller.MenuController.update()', 'paramName:[id, menuVO],args:[229, MenuVO(id=229, parentId=312, menuName=物资管理, url=, icon=el-icon-date, type=0, orderNum=1, createTime=Tue Mar 10 05:34:08 CST 2020, modifiedTime=Sat Apr 11 11:04:05 CST 2020, disabled=false, open=0, perms=el-icon-date)],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-11 13:56:13', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1443, 'zhangyukang', '更新菜单', 25, 'com.coderman.api.system.controller.MenuController.update()', 'paramName:[id, menuVO],args:[269, MenuVO(id=269, parentId=311, menuName=物资来源, url=/suppliers, icon=el-icon-coordinate, type=0, orderNum=5, createTime=Mon Mar 16 12:35:10 CST 2020, modifiedTime=Sun Mar 22 22:46:24 CST 2020, disabled=false, open=0, perms=)],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-11 13:56:16', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1444, 'zhangyukang', '新增菜单/按钮', 615, 'com.coderman.api.system.controller.MenuController.add()', 'paramName:[menuVO],args:[MenuVO(id=null, parentId=0, menuName=1111, url=11, icon=1111, type=0, orderNum=1, createTime=null, modifiedTime=null, disabled=false, open=1, perms=11)],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-11 13:56:30', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1445, 'zhangyukang', '删除菜单/按钮', 46, 'com.coderman.api.system.controller.MenuController.delete()', 'paramName:[id],args:[313],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-11 13:56:42', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1446, 'zhangyukang', '更新菜单', 19, 'com.coderman.api.system.controller.MenuController.update()', 'paramName:[id, menuVO],args:[1, MenuVO(id=1, parentId=0, menuName=系统管理, url=, icon=el-icon-setting, type=0, orderNum=1, createTime=Sat Mar 07 17:41:30 CST 2020, modifiedTime=Sat Apr 11 11:21:00 CST 2020, disabled=false, open=0, perms=null)],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-11 13:56:50', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1447, 'zhangyukang', '更新菜单', 27, 'com.coderman.api.system.controller.MenuController.update()', 'paramName:[id, menuVO],args:[312, MenuVO(id=312, parentId=0, menuName=业务管理, url=null, icon=el-icon-edit, type=0, orderNum=2, createTime=Sun Apr 05 10:19:07 CST 2020, modifiedTime=Sun Apr 05 10:21:01 CST 2020, disabled=false, open=1, perms=null)],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-11 13:56:54', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1448, 'zhangyukang', '更新部门', 104, 'com.coderman.api.system.controller.DepartmentController.update()', 'paramName:[id, departmentVO],args:[1, DepartmentVO(id=1, name=物资管理部, phone=15045741241, address=负责系统物资的管理。, mgrId=54, createTime=Mon Mar 16 00:00:00 CST 2020, modifiedTime=Sat Apr 11 00:00:00 CST 2020, mgrName=null)],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-11 13:57:09', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1449, 'zhangyukang', '分配角色', 100, 'com.coderman.api.system.controller.UserController.assignRoles()', 'paramName:[id, rids],args:[6, [Ljava.lang.Long;@1085cdb9],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-11 14:02:23', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1450, 'zhangyukang', '删除部门', 308, 'com.coderman.api.system.controller.DepartmentController.delete()', 'paramName:[id],args:[20],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-14 10:46:54', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1451, 'zhangyukang', '删除部门', 35, 'com.coderman.api.system.controller.DepartmentController.delete()', 'paramName:[id],args:[19],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-14 10:46:57', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1452, 'zhangyukang', '角色授权', 2, 'com.coderman.api.system.controller.RoleController.authority()', 'paramName:[id, mids],args:[125, [Ljava.lang.Long;@2dcfa3],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-14 10:49:58', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1453, 'zhangyukang', '更新部门', 86, 'com.coderman.api.system.controller.DepartmentController.update()', 'paramName:[id, departmentVO],args:[18, DepartmentVO(id=18, name=3434, phone=15014141251, address=fdsfaf, mgrId=71, createTime=Sat Apr 11 00:00:00 CST 2020, modifiedTime=Sat Apr 11 00:00:00 CST 2020, mgrName=null)],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-14 10:50:02', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1454, 'zhangyukang', '更新部门', 220, 'com.coderman.api.system.controller.DepartmentController.update()', 'paramName:[id, departmentVO],args:[1, DepartmentVO(id=1, name=物资管理部, phone=15045741241, address=负责系统物资的管理。, mgrId=71, createTime=Mon Mar 16 00:00:00 CST 2020, modifiedTime=Sat Apr 11 00:00:00 CST 2020, mgrName=null)],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-15 20:22:36', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1455, 'zhangyukang', '分配角色', 2073, 'com.coderman.api.system.controller.UserController.assignRoles()', 'paramName:[id, rids],args:[6, [Ljava.lang.Long;@796b28e2],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-15 20:35:52', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1456, 'zhangyukang', '分配角色', 1275, 'com.coderman.api.system.controller.UserController.assignRoles()', 'paramName:[id, rids],args:[6, [Ljava.lang.Long;@7bc4a71a],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-15 20:36:02', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1458, 'zhangyukang', '更新菜单', 1254, 'com.coderman.api.system.controller.MenuController.update()', 'paramName:[id, menuVO],args:[253, MenuVO(id=253, parentId=1, menuName=欢迎页面, url=/welcome, icon=el-icon-star-off, type=0, orderNum=1, createTime=Tue Mar 10 08:46:44 CST 2020, modifiedTime=Wed Apr 15 20:49:10 CST 2020, disabled=false, open=0, perms=welcome:view)],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-15 20:49:48', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1459, 'zhangyukang', '用户|禁用/启用', 56, 'com.coderman.api.system.controller.UserController.updateStatus()', 'paramName:[id, status],args:[6, true],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-15 20:54:41', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1460, 'zhangyukang', '用户|禁用/启用', 813, 'com.coderman.api.system.controller.UserController.updateStatus()', 'paramName:[id, status],args:[6, false],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-15 20:54:49', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1461, 'zhangyukang', '删除用户', 221, 'com.coderman.api.system.controller.UserController.delete()', 'paramName:[id],args:[108],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-15 20:54:57', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1462, 'zhangyukang', '分配角色', 1062, 'com.coderman.api.system.controller.UserController.assignRoles()', 'paramName:[id, rids],args:[109, [Ljava.lang.Long;@6b932667],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-15 20:55:06', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1463, 'zhangyukang', '新增菜单/按钮', 183, 'com.coderman.api.system.controller.MenuController.add()', 'paramName:[menuVO],args:[MenuVO(id=null, parentId=0, menuName=测试菜单, url=, icon=el-icon-edit, type=0, orderNum=2, createTime=null, modifiedTime=null, disabled=false, open=0, perms=)],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-15 21:22:53', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1464, 'zhangyukang', '新增菜单/按钮', 982, 'com.coderman.api.system.controller.MenuController.add()', 'paramName:[menuVO],args:[MenuVO(id=null, parentId=314, menuName=子菜单, url=, icon=el-icon-edit, type=0, orderNum=2, createTime=null, modifiedTime=null, disabled=false, open=0, perms=)],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-15 21:23:43', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1465, 'zhangyukang', '删除菜单/按钮', 560, 'com.coderman.api.system.controller.MenuController.delete()', 'paramName:[id],args:[315],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-15 21:24:00', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1466, 'zhangyukang', '删除菜单/按钮', 1257, 'com.coderman.api.system.controller.MenuController.delete()', 'paramName:[id],args:[314],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-15 21:24:12', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1467, 'zhangyukang', '分配角色', 139, 'com.coderman.api.system.controller.UserController.assignRoles()', 'paramName:[id, rids],args:[42, [Ljava.lang.Long;@4cd5a84d],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-15 21:33:49', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1468, 'zhangyukang', '新增菜单/按钮', 793, 'com.coderman.api.system.controller.MenuController.add()', 'paramName:[menuVO],args:[MenuVO(id=null, parentId=229, menuName=物资库存, url=/stocks, icon=el-icon-edit, type=0, orderNum=5, createTime=null, modifiedTime=null, disabled=false, open=0, perms=)],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-16 08:45:08', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1469, 'zhangyukang', '更新用户', 107, 'com.coderman.api.system.controller.UserController.update()', 'paramName:[id, userEditVO],args:[110, UserEditVO(id=110, username=98ec73, nickname=32323213, email=ef7a1@qq.com, phoneNumber=15097141421, sex=1, birth=Mon Mar 09 00:00:00 CST 2020, departmentId=1)],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-16 13:29:27', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1470, 'zhangyukang', '新增菜单/按钮', 1066, 'com.coderman.api.system.controller.MenuController.add()', 'paramName:[menuVO],args:[MenuVO(id=null, parentId=226, menuName=导出表格, url=, icon=el-icon-edit, type=1, orderNum=1, createTime=null, modifiedTime=null, disabled=false, open=0, perms=user:export)],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-17 18:02:06', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1471, 'zhangyukang', '更新部门', 239, 'com.coderman.api.system.controller.DepartmentController.update()', 'paramName:[id, departmentVO],args:[1, DepartmentVO(id=1, name=物资管理部, phone=15045741241, address=负责系统物资的管理。, mgrId=6, createTime=Mon Mar 16 00:00:00 CST 2020, modifiedTime=Wed Apr 15 00:00:00 CST 2020, mgrName=null)],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-17 19:09:08', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1472, 'zhangyukang', '导出用户excel', 694, 'com.coderman.api.system.controller.UserController.export()', 'paramName:[response],args:[com.alibaba.druid.support.http.WebStatFilter$StatHttpServletResponseWrapper@66357199],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-17 19:17:13', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1473, 'zhangyukang', '角色授权', 1558, 'com.coderman.api.system.controller.RoleController.authority()', 'paramName:[id, mids],args:[138, [Ljava.lang.Long;@7109dae],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-17 20:38:56', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1474, 'zhangyukang', '导出用户excel', 1958, 'com.coderman.api.system.controller.MenuController.export()', 'paramName:[response],args:[com.alibaba.druid.support.http.WebStatFilter$StatHttpServletResponseWrapper@463f6854],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-18 09:17:16', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1475, 'zhangyukang', '导出用户excel', 428, 'com.coderman.api.system.controller.UserController.export()', 'paramName:[response],args:[com.alibaba.druid.support.http.WebStatFilter$StatHttpServletResponseWrapper@cb9813d],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-18 09:19:32', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1476, 'zhangyukang', '导出用户excel', 40, 'com.coderman.api.system.controller.UserController.export()', 'paramName:[response],args:[com.alibaba.druid.support.http.WebStatFilter$StatHttpServletResponseWrapper@347c7eaf],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-18 09:24:51', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1477, 'zhangyukang', '导出角色excel', 643, 'com.coderman.api.system.controller.RoleController.export()', 'paramName:[response],args:[com.alibaba.druid.support.http.WebStatFilter$StatHttpServletResponseWrapper@36cae749],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-18 09:30:49', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1478, 'zhangyukang', '导出菜单excel', 67, 'com.coderman.api.system.controller.MenuController.export()', 'paramName:[response],args:[com.alibaba.druid.support.http.WebStatFilter$StatHttpServletResponseWrapper@3b2ca394],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-18 09:32:13', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1479, 'zhangyukang', '导出角色excel', 46, 'com.coderman.api.system.controller.RoleController.export()', 'paramName:[response],args:[com.alibaba.druid.support.http.WebStatFilter$StatHttpServletResponseWrapper@7266c2cc],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-18 09:32:20', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1480, 'zhangyukang', '导出用户excel', 45, 'com.coderman.api.system.controller.UserController.export()', 'paramName:[response],args:[com.alibaba.druid.support.http.WebStatFilter$StatHttpServletResponseWrapper@7f851266],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-18 09:34:18', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1481, 'zhangyukang', '导出菜单excel', 42, 'com.coderman.api.system.controller.MenuController.export()', 'paramName:[response],args:[com.alibaba.druid.support.http.WebStatFilter$StatHttpServletResponseWrapper@396fd527],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-18 09:34:34', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1482, 'zhangyukang', '导出角色excel', 383, 'com.coderman.api.system.controller.RoleController.export()', 'paramName:[response],args:[com.alibaba.druid.support.http.WebStatFilter$StatHttpServletResponseWrapper@549a651b],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-18 09:34:39', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1483, 'zhangyukang', '导出用户excel', 62, 'com.coderman.api.system.controller.UserController.export()', 'paramName:[response],args:[com.alibaba.druid.support.http.WebStatFilter$StatHttpServletResponseWrapper@7244797a],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-18 09:40:02', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1484, 'zhangyukang', '用户|禁用/启用', 1496, 'com.coderman.api.system.controller.UserController.updateStatus()', 'paramName:[id, status],args:[6, true],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-18 09:40:08', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1485, 'zhangyukang', '用户|禁用/启用', 988, 'com.coderman.api.system.controller.UserController.updateStatus()', 'paramName:[id, status],args:[6, false],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-18 09:40:11', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1486, 'zhangyukang', '分配角色', 2683, 'com.coderman.api.system.controller.UserController.assignRoles()', 'paramName:[id, rids],args:[6, [Ljava.lang.Long;@2473390d],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-18 09:44:24', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1487, 'zhangyukang', '导出用户excel', 171, 'com.coderman.api.system.controller.UserController.export()', 'paramName:[response],args:[com.alibaba.druid.support.http.WebStatFilter$StatHttpServletResponseWrapper@3eff8e0a],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-18 09:51:18', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1488, 'zhangyukang', '更新部门', 927, 'com.coderman.api.system.controller.DepartmentController.update()', 'paramName:[id, departmentVO],args:[1, DepartmentVO(id=1, name=物资管理部, phone=15045741241, address=负责系统物资的管理。, mgrId=54, createTime=Mon Mar 16 00:00:00 CST 2020, modifiedTime=Fri Apr 17 00:00:00 CST 2020, mgrName=null)],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-18 09:51:30', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1489, 'zhangyukang', '导出用户excel', 31, 'com.coderman.api.system.controller.UserController.export()', 'paramName:[response],args:[com.alibaba.druid.support.http.WebStatFilter$StatHttpServletResponseWrapper@3ea07d1a],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-18 09:57:24', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1490, 'zhangyukang', '导出菜单excel', 25, 'com.coderman.api.system.controller.MenuController.export()', 'paramName:[response],args:[com.alibaba.druid.support.http.WebStatFilter$StatHttpServletResponseWrapper@4c75e02f],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-18 09:57:27', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1491, 'zhangyukang', '导出角色excel', 547, 'com.coderman.api.system.controller.RoleController.export()', 'paramName:[response],args:[com.alibaba.druid.support.http.WebStatFilter$StatHttpServletResponseWrapper@491de26a],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-18 09:57:31', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1492, '系统测试人员', '更新用户', 2054, 'com.coderman.api.system.controller.UserController.update()', 'paramName:[id, userEditVO],args:[54, UserEditVO(id=54, username=coderman, nickname=zhangyu```, email=zhangyukang@qq.com, phoneNumber=13426528317, sex=0, birth=Fri Apr 03 00:00:00 CST 2020, departmentId=1)],role:[Role{id=138, roleName=\'测试员工\'}]', '127.0.0.1', '2020-04-18 10:03:37', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1493, 'zhangyukang', '导出角色excel', 1902, 'com.coderman.api.system.controller.RoleController.export()', 'paramName:[response],args:[com.alibaba.druid.support.http.WebStatFilter$StatHttpServletResponseWrapper@54b22276],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-18 12:27:54', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1494, 'zhangyukang', '更新用户', 298, 'com.coderman.api.system.controller.UserController.update()', 'paramName:[id, userEditVO],args:[75, UserEditVO(id=75, username=coderman2, nickname=nickname, email=3053161401@qq.com, phoneNumber=13426524512, sex=1, birth=Mon Mar 23 00:00:00 CST 2020, departmentId=14)],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-18 12:29:03', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1495, 'zhangyukang', '更新菜单', 625, 'com.coderman.api.system.controller.MenuController.update()', 'paramName:[id, menuVO],args:[1, MenuVO(id=1, parentId=0, menuName=系统管理, url=, icon=el-icon-setting, type=0, orderNum=1, createTime=Sat Mar 07 17:41:30 CST 2020, modifiedTime=Sat Apr 11 13:56:50 CST 2020, disabled=false, open=0, perms=null)],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-18 12:29:15', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1496, 'zhangyukang', '用户|禁用/启用', 373, 'com.coderman.api.system.controller.UserController.updateStatus()', 'paramName:[id, status],args:[6, true],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-18 12:29:26', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1497, 'zhangyukang', '用户|禁用/启用', 267, 'com.coderman.api.system.controller.UserController.updateStatus()', 'paramName:[id, status],args:[6, false],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-18 12:29:28', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1498, 'zhangyukang', '导出用户excel', 84, 'com.coderman.api.system.controller.UserController.export()', 'paramName:[response],args:[com.alibaba.druid.support.http.WebStatFilter$StatHttpServletResponseWrapper@450620d7],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-18 12:46:48', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1499, 'zhangyukang', '导出用户excel', 191, 'com.coderman.api.system.controller.UserController.export()', 'paramName:[response],args:[com.alibaba.druid.support.http.WebStatFilter$StatHttpServletResponseWrapper@45b333f7],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-18 12:48:34', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1500, 'zhangyukang', '导出用户excel', 4468, 'com.coderman.api.system.controller.UserController.export()', 'paramName:[response],args:[com.alibaba.druid.support.http.WebStatFilter$StatHttpServletResponseWrapper@14a6ab31],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-18 17:20:13', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1501, 'zhangyukang', '导出角色excel', 84, 'com.coderman.api.system.controller.RoleController.export()', 'paramName:[response],args:[com.alibaba.druid.support.http.WebStatFilter$StatHttpServletResponseWrapper@5eb5f05d],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-18 17:20:19', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1502, 'zhangyukang', '导出部门excel', 1252, 'com.coderman.api.system.controller.DepartmentController.export()', 'paramName:[response],args:[com.alibaba.druid.support.http.WebStatFilter$StatHttpServletResponseWrapper@6e7f0e05],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-18 17:27:12', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1503, 'zhangyukang', '导出部门excel', 49, 'com.coderman.api.system.controller.DepartmentController.export()', 'paramName:[response],args:[com.alibaba.druid.support.http.WebStatFilter$StatHttpServletResponseWrapper@67f4ca49],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-18 17:29:26', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1504, 'zhangyukang', '分配角色', 383, 'com.coderman.api.system.controller.UserController.assignRoles()', 'paramName:[id, rids],args:[184, [Ljava.lang.Long;@20c1b83a],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-20 17:05:48', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1505, 'zhangyukang', '分配角色', 1472, 'com.coderman.api.system.controller.UserController.assignRoles()', 'paramName:[id, rids],args:[184, [Ljava.lang.Long;@7435c6b6],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-20 17:09:52', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1506, 'zhangyukang', '分配角色', 391, 'com.coderman.api.system.controller.UserController.assignRoles()', 'paramName:[id, rids],args:[184, [Ljava.lang.Long;@6bff8ffb],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-20 17:12:27', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1507, 'zhangyukang', '更新用户', 238, 'com.coderman.api.system.controller.UserController.update()', 'paramName:[id, userEditVO],args:[184, UserEditVO(id=184, username=系统测试人员, nickname=Sys-Test, email=3053161401@qq.com, phoneNumber=15079454152, sex=1, birth=Thu Mar 19 00:00:00 CST 2020, departmentId=14)],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-20 17:12:36', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1508, 'zhangyukang', '分配角色', 487, 'com.coderman.api.system.controller.UserController.assignRoles()', 'paramName:[id, rids],args:[184, [Ljava.lang.Long;@5fa57917],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-20 17:19:26', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1509, 'zhangyukang', '角色授权', 448, 'com.coderman.api.system.controller.RoleController.authority()', 'paramName:[id, mids],args:[125, [Ljava.lang.Long;@20058a25],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-20 17:19:45', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1510, 'zhangyukang', '分配角色', 1641, 'com.coderman.api.system.controller.UserController.assignRoles()', 'paramName:[id, rids],args:[184, [Ljava.lang.Long;@5eb181b2],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-21 10:25:24', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1511, 'zhangyukang', '添加角色', 58, 'com.coderman.api.system.controller.RoleController.add()', 'paramName:[roleVO],args:[RoleVO(id=null, roleName=超级管理员, remark=拥有系统的最高权限, createTime=null, modifiedTime=null, status=null)],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-21 10:34:12', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1512, 'zhangyukang', '角色授权', 545, 'com.coderman.api.system.controller.RoleController.authority()', 'paramName:[id, mids],args:[143, [Ljava.lang.Long;@62db5f7a],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-21 10:34:24', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1513, 'zhangyukang', '分配角色', 161, 'com.coderman.api.system.controller.UserController.assignRoles()', 'paramName:[id, rids],args:[184, [Ljava.lang.Long;@c825f5b],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-21 10:34:42', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1514, '系统测试人员', '角色授权', 200, 'com.coderman.api.system.controller.RoleController.authority()', 'paramName:[id, mids],args:[143, [Ljava.lang.Long;@6e3c8bb1],role:[Role{id=125, roleName=\'测试用户\'}, Role{id=143, roleName=\'超级管理员\'}]', '127.0.0.1', '2020-04-21 10:35:16', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1515, '系统测试人员', '角色授权', 1831, 'com.coderman.api.system.controller.RoleController.authority()', 'paramName:[id, mids],args:[143, [Ljava.lang.Long;@4213d52f],role:[Role{id=125, roleName=\'测试用户\'}, Role{id=143, roleName=\'超级管理员\'}]', '127.0.0.1', '2020-04-21 10:36:27', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1516, 'zhangyukang', '新增菜单/按钮', 1826, 'com.coderman.api.system.controller.MenuController.add()', 'paramName:[menuVO],args:[MenuVO(id=null, parentId=295, menuName=图标管理, url=/icons, icon=el-icon-edit, type=0, orderNum=1, createTime=null, modifiedTime=null, disabled=false, open=1, perms=)],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-21 12:06:35', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1517, 'zhangyukang', '新增菜单/按钮', 104, 'com.coderman.api.system.controller.MenuController.add()', 'paramName:[menuVO],args:[MenuVO(id=null, parentId=1, menuName=公告管理, url=/message, icon=el-icon-s-flag, type=0, orderNum=4, createTime=null, modifiedTime=null, disabled=false, open=0, perms=)],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-21 12:07:46', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1518, 'zhangyukang', '更新菜单', 785, 'com.coderman.api.system.controller.MenuController.update()', 'paramName:[id, menuVO],args:[319, MenuVO(id=319, parentId=1, menuName=公告管理, url=/messages, icon=el-icon-s-flag, type=0, orderNum=4, createTime=Tue Apr 21 12:07:46 CST 2020, modifiedTime=Tue Apr 21 12:07:46 CST 2020, disabled=false, open=0, perms=)],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-21 12:08:23', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1519, 'zhangyukang', '更新菜单', 211, 'com.coderman.api.system.controller.MenuController.update()', 'paramName:[id, menuVO],args:[319, MenuVO(id=319, parentId=1, menuName=公告管理, url=/notices, icon=el-icon-s-flag, type=0, orderNum=4, createTime=Tue Apr 21 12:07:46 CST 2020, modifiedTime=Tue Apr 21 12:08:22 CST 2020, disabled=false, open=0, perms=)],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-21 12:23:05', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1520, 'zhangyukang', '新增菜单/按钮', 113, 'com.coderman.api.system.controller.MenuController.add()', 'paramName:[menuVO],args:[MenuVO(id=null, parentId=319, menuName=公告发布, url=/notices/add, icon=el-icon-edit, type=1, orderNum=1, createTime=null, modifiedTime=null, disabled=false, open=1, perms=)],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-21 12:26:56', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1521, 'zhangyukang', '导出部门excel', 12537, 'com.coderman.api.system.controller.DepartmentController.export()', 'paramName:[response],args:[com.alibaba.druid.support.http.WebStatFilter$StatHttpServletResponseWrapper@6ec587d5],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-21 12:34:24', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1522, 'zhangyukang', '更新部门', 374, 'com.coderman.api.system.controller.DepartmentController.update()', 'paramName:[id, departmentVO],args:[1, DepartmentVO(id=1, name=物资管理部, phone=15045741241, address=负责系统物资的管理。, mgrId=71, createTime=Mon Mar 16 00:00:00 CST 2020, modifiedTime=Sat Apr 18 00:00:00 CST 2020, mgrName=null)],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-21 12:47:28', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1523, 'zhangyukang', '删除部门', 330, 'com.coderman.api.system.controller.DepartmentController.delete()', 'paramName:[id],args:[18],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-23 10:15:32', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1524, 'zhangyukang', '删除部门', 41, 'com.coderman.api.system.controller.DepartmentController.delete()', 'paramName:[id],args:[17],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-23 10:15:35', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1525, 'zhangyukang', '用户|禁用/启用', 1998, 'com.coderman.api.system.controller.UserController.updateStatus()', 'paramName:[id, status],args:[6, true],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-23 20:04:05', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1526, 'zhangyukang', '用户|禁用/启用', 902, 'com.coderman.api.system.controller.UserController.updateStatus()', 'paramName:[id, status],args:[6, false],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-23 20:04:08', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1527, 'zhangyukang', '分配角色', 1508, 'com.coderman.api.system.controller.UserController.assignRoles()', 'paramName:[id, rids],args:[6, [Ljava.lang.Long;@7098d426],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-23 20:04:26', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1528, 'zhangyukang', '更新菜单', 615, 'com.coderman.api.system.controller.MenuController.update()', 'paramName:[id, menuVO],args:[226, MenuVO(id=226, parentId=1, menuName=用户管理, url=/users, icon=el-icon-user, type=0, orderNum=2, createTime=Tue Mar 10 05:27:54 CST 2020, modifiedTime=Sat Mar 21 11:18:17 CST 2020, disabled=false, open=0, perms=users)],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-23 20:04:37', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1529, 'zhangyukang', '角色|禁用/启用', 355, 'com.coderman.api.system.controller.RoleController.updateStatus()', 'paramName:[id, status],args:[126, true],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-23 20:04:46', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1530, 'zhangyukang', '角色|禁用/启用', 823, 'com.coderman.api.system.controller.RoleController.updateStatus()', 'paramName:[id, status],args:[126, false],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-23 20:04:49', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1531, 'zhangyukang', '角色授权', 229, 'com.coderman.api.system.controller.RoleController.authority()', 'paramName:[id, mids],args:[126, [Ljava.lang.Long;@31e39bfb],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-23 20:04:54', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1532, 'zhangyukang', '导出部门excel', 3104, 'com.coderman.api.system.controller.DepartmentController.export()', 'paramName:[response],args:[com.alibaba.druid.support.http.WebStatFilter$StatHttpServletResponseWrapper@774c9336],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-23 20:05:07', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1533, 'zhangyukang', '新增菜单/按钮', 516, 'com.coderman.api.system.controller.MenuController.add()', 'paramName:[menuVO],args:[MenuVO(id=null, parentId=1, menuName=附件管理, url=/attachments, icon=el-icon-picture-outline, type=0, orderNum=2, createTime=null, modifiedTime=null, disabled=false, open=1, perms=)],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-25 10:52:17', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1534, 'zhangyukang', '用户|禁用/启用', 109, 'com.coderman.api.system.controller.UserController.updateStatus()', 'paramName:[id, status],args:[6, true],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-25 13:21:53', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1535, 'zhangyukang', '用户|禁用/启用', 39, 'com.coderman.api.system.controller.UserController.updateStatus()', 'paramName:[id, status],args:[6, false],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-25 13:21:54', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1536, 'zhangyukang', '更新部门', 198, 'com.coderman.api.system.controller.DepartmentController.update()', 'paramName:[id, departmentVO],args:[1, DepartmentVO(id=1, name=物资管理部, phone=15045741241, address=负责系统物资的管理。, mgrId=54, createTime=Mon Mar 16 00:00:00 CST 2020, modifiedTime=Tue Apr 21 00:00:00 CST 2020, mgrName=null)],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-25 13:22:55', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1537, 'zhangyukang', '角色授权', 6752, 'com.coderman.api.system.controller.RoleController.authority()', 'paramName:[id, mids],args:[138, [Ljava.lang.Long;@6cb1f986],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-25 13:30:21', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1538, 'zhangyukang', '分配角色', 3207, 'com.coderman.api.system.controller.UserController.assignRoles()', 'paramName:[id, rids],args:[184, [Ljava.lang.Long;@2901618e],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-25 13:31:17', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1539, 'zhangyukang', '角色授权', 1450, 'com.coderman.api.system.controller.RoleController.authority()', 'paramName:[id, mids],args:[125, [Ljava.lang.Long;@169f37e7],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-25 13:33:12', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1540, 'zhangyukang', '更新部门', 834, 'com.coderman.api.system.controller.DepartmentController.update()', 'paramName:[id, departmentVO],args:[1, DepartmentVO(id=1, name=物资管理部, phone=15045741241, address=负责系统物资的管理。, mgrId=71, createTime=Mon Mar 16 00:00:00 CST 2020, modifiedTime=Sat Apr 25 00:00:00 CST 2020, mgrName=null)],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-26 10:10:42', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1541, 'zhangyukang', '角色授权', 3245, 'com.coderman.api.system.controller.RoleController.authority()', 'paramName:[id, mids],args:[138, [Ljava.lang.Long;@494d40a4],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-27 09:45:33', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1542, 'zhangyukang', '角色授权', 1878, 'com.coderman.api.system.controller.RoleController.authority()', 'paramName:[id, mids],args:[138, [Ljava.lang.Long;@2962474a],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-27 09:53:23', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1543, 'zhangyukang', '角色授权', 1181, 'com.coderman.api.system.controller.RoleController.authority()', 'paramName:[id, mids],args:[138, [Ljava.lang.Long;@43e8515d],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-27 09:54:28', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1544, 'zhangyukang', '角色授权', 180, 'com.coderman.api.system.controller.RoleController.authority()', 'paramName:[id, mids],args:[125, [Ljava.lang.Long;@37e7e1e4],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-27 09:55:26', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1545, 'zhangyukang', '更新角色', 1712, 'com.coderman.api.system.controller.RoleController.update()', 'paramName:[id, roleVO],args:[2, RoleVO(id=2, roleName=系统管理员, remark=拥有系统的最高权限., createTime=Fri Jun 14 00:00:00 CST 2019, modifiedTime=Sat Apr 11 13:45:29 CST 2020, status=null)],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-27 09:59:00', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1546, 'zhangyukang', '角色授权', 1561, 'com.coderman.api.system.controller.RoleController.authority()', 'paramName:[id, mids],args:[2, [Ljava.lang.Long;@1bc27799],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-27 09:59:32', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1547, 'zhangyukang', '更新菜单', 444, 'com.coderman.api.system.controller.MenuController.update()', 'paramName:[id, menuVO],args:[247, MenuVO(id=247, parentId=4, menuName=添加菜单, url=, icon=el-icon-s-opportunity, type=1, orderNum=1, createTime=Tue Mar 10 07:55:10 CST 2020, modifiedTime=Sat Apr 11 11:19:48 CST 2020, disabled=false, open=0, perms=menu:add)],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-27 09:59:44', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1548, 'zhangyukang', '角色授权', 1265, 'com.coderman.api.system.controller.RoleController.authority()', 'paramName:[id, mids],args:[2, [Ljava.lang.Long;@2f4831b3],role:[Role{id=140, roleName=\'系主任\'}]', '127.0.0.1', '2020-04-27 10:00:22', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1549, '系统测试人员', '角色授权', 353, 'com.coderman.api.system.controller.RoleController.authority()', 'paramName:[id, mids],args:[125, [Ljava.lang.Long;@d04d201],role:[Role{id=125, roleName=\'测试用户\'}]', '127.0.0.1', '2020-04-27 10:49:08', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1550, '系统测试人员', '角色授权', 146, 'com.coderman.api.system.controller.RoleController.authority()', 'paramName:[id, mids],args:[125, [Ljava.lang.Long;@4dab899d],role:[Role{id=125, roleName=\'测试用户\'}]', '127.0.0.1', '2020-04-27 10:50:58', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1551, '系统测试人员', '角色授权', 252, 'com.coderman.api.system.controller.RoleController.authority()', 'paramName:[id, mids],args:[125, [Ljava.lang.Long;@14a08d3f],role:[Role{id=125, roleName=\'测试用户\'}]', '127.0.0.1', '2020-04-27 10:51:48', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1552, '系统测试人员', '更新菜单', 97, 'com.coderman.api.system.controller.MenuController.update()', 'paramName:[id, menuVO],args:[254, MenuVO(id=254, parentId=226, menuName=分配角色, url=, icon=el-icon-s-tools, type=1, orderNum=3, createTime=Wed Mar 11 01:32:29 CST 2020, modifiedTime=Sat Mar 14 04:56:13 CST 2020, disabled=false, open=0, perms=assign)],role:[Role{id=125, roleName=\'测试用户\'}]', '127.0.0.1', '2020-04-27 10:57:31', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1553, '系统测试人员', '更新菜单', 20, 'com.coderman.api.system.controller.MenuController.update()', 'paramName:[id, menuVO],args:[254, MenuVO(id=254, parentId=226, menuName=分配角色, url=, icon=el-icon-s-tools, type=1, orderNum=3, createTime=Wed Mar 11 01:32:29 CST 2020, modifiedTime=Mon Apr 27 10:57:31 CST 2020, disabled=false, open=0, perms=user:assign)],role:[Role{id=125, roleName=\'测试用户\'}]', '127.0.0.1', '2020-04-27 10:58:30', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1554, '系统测试人员', '角色授权', 237, 'com.coderman.api.system.controller.RoleController.authority()', 'paramName:[id, mids],args:[125, [Ljava.lang.Long;@13341c94],role:[Role{id=125, roleName=\'测试用户\'}]', '127.0.0.1', '2020-04-27 10:59:58', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1555, '系统测试人员', '角色授权', 147, 'com.coderman.api.system.controller.RoleController.authority()', 'paramName:[id, mids],args:[125, [Ljava.lang.Long;@4cc0746a],role:[Role{id=125, roleName=\'测试用户\'}]', '127.0.0.1', '2020-04-27 11:00:44', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1556, '系统测试人员', '角色授权', 149, 'com.coderman.api.system.controller.RoleController.authority()', 'paramName:[id, mids],args:[125, [Ljava.lang.Long;@74f6ea3f],role:[Role{id=125, roleName=\'测试用户\'}]', '127.0.0.1', '2020-04-27 11:05:17', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1557, '系统测试人员', '角色授权', 198, 'com.coderman.api.system.controller.RoleController.authority()', 'paramName:[id, mids],args:[125, [Ljava.lang.Long;@3e47157c],role:[Role{id=125, roleName=\'测试用户\'}]', '127.0.0.1', '2020-04-27 11:06:35', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1558, '系统测试人员', '角色授权', 4601, 'com.coderman.api.system.controller.RoleController.authority()', 'paramName:[id, mids],args:[125, [Ljava.lang.Long;@3cad07e0],role:[Role{id=125, roleName=\'测试用户\'}]', '127.0.0.1', '2020-04-27 11:07:53', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1559, '系统测试人员', '角色授权', 10479, 'com.coderman.api.system.controller.RoleController.authority()', 'paramName:[id, mids],args:[125, [Ljava.lang.Long;@3de181f5],role:[Role{id=125, roleName=\'测试用户\'}]', '127.0.0.1', '2020-04-27 11:08:37', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1560, '系统测试人员', '角色授权', 2324, 'com.coderman.api.system.controller.RoleController.authority()', 'paramName:[id, mids],args:[125, [Ljava.lang.Long;@508077b],role:[Role{id=125, roleName=\'测试用户\'}]', '127.0.0.1', '2020-04-27 11:09:27', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1561, '系统测试人员', '角色授权', 3128, 'com.coderman.api.system.controller.RoleController.authority()', 'paramName:[id, mids],args:[125, [Ljava.lang.Long;@1e273a4f],role:[Role{id=125, roleName=\'测试用户\'}]', '127.0.0.1', '2020-04-27 11:12:34', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1562, '系统测试人员', '角色授权', 8082, 'com.coderman.api.system.controller.RoleController.authority()', 'paramName:[id, mids],args:[125, [Ljava.lang.Long;@5c12697a],role:[Role{id=125, roleName=\'测试用户\'}]', '127.0.0.1', '2020-04-27 11:13:05', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1563, '系统测试人员', '角色授权', 1837, 'com.coderman.api.system.controller.RoleController.authority()', 'paramName:[id, mids],args:[125, [Ljava.lang.Long;@712fb684],role:[Role{id=125, roleName=\'测试用户\'}]', '127.0.0.1', '2020-04-27 11:14:08', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1564, '系统测试人员', '角色授权', 167, 'com.coderman.api.system.controller.RoleController.authority()', 'paramName:[id, mids],args:[125, [Ljava.lang.Long;@2f7beff1],role:[Role{id=125, roleName=\'测试用户\'}]', '127.0.0.1', '2020-04-27 11:15:40', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1565, 'zhangyukang', '角色授权', 1291, 'com.coderman.api.system.controller.RoleController.authority()', 'paramName:[id, mids],args:[125, [Ljava.lang.Long;@1d2cf677],role:[Role{id=0, roleName=\'admin\'}]', '127.0.0.1', '2020-04-27 11:33:19', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1566, 'zhangyukang', '角色授权', 216, 'com.coderman.api.system.controller.RoleController.authority()', 'paramName:[id, mids],args:[125, [Ljava.lang.Long;@4e1b9b1e],role:[Role{id=0, roleName=\'admin\'}]', '127.0.0.1', '2020-04-27 11:33:38', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1567, 'zhangyukang', '角色授权', 2524, 'com.coderman.api.system.controller.RoleController.authority()', 'paramName:[id, mids],args:[125, [Ljava.lang.Long;@fd76f3b],role:[Role{id=0, roleName=\'admin\'}]', '127.0.0.1', '2020-04-27 11:36:45', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1568, '系统测试人员', '角色授权', 411, 'com.coderman.api.system.controller.RoleController.authority()', 'paramName:[id, mids],args:[125, [Ljava.lang.Long;@54b1eba],role:[Role{id=125, roleName=\'测试用户\'}]', '127.0.0.1', '2020-04-27 12:17:11', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1569, '系统测试人员', '角色授权', 265, 'com.coderman.api.system.controller.RoleController.authority()', 'paramName:[id, mids],args:[125, [Ljava.lang.Long;@2a009e4f],role:[Role{id=125, roleName=\'测试用户\'}]', '127.0.0.1', '2020-04-27 12:17:35', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1570, '系统测试人员', '更新用户', 232, 'com.coderman.api.system.controller.UserController.update()', 'paramName:[id, userEditVO],args:[42, UserEditVO(id=42, username=coderman, nickname=zhangyu, email=zhangyukang@qq.com, phoneNumber=13426528317, sex=1, birth=Fri Mar 13 00:00:00 CST 2020, departmentId=12)],role:[Role{id=125, roleName=\'测试用户\'}]', '127.0.0.1', '2020-04-27 12:23:12', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1571, '系统测试人员', '角色授权', 2696, 'com.coderman.api.system.controller.RoleController.authority()', 'paramName:[id, mids],args:[125, [Ljava.lang.Long;@3b45e0f6],role:[Role{id=125, roleName=\'测试用户\'}]', '127.0.0.1', '2020-04-27 12:24:33', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1572, '系统测试人员', '分配角色', 114, 'com.coderman.api.system.controller.UserController.assignRoles()', 'paramName:[id, rids],args:[42, [Ljava.lang.Long;@116d77be],role:[Role{id=125, roleName=\'测试用户\'}]', '127.0.0.1', '2020-04-27 12:25:33', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1573, '系统测试人员', '角色授权', 231, 'com.coderman.api.system.controller.RoleController.authority()', 'paramName:[id, mids],args:[125, [Ljava.lang.Long;@6c642bdb],role:[Role{id=125, roleName=\'测试用户\'}]', '127.0.0.1', '2020-04-27 12:26:02', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1574, '系统测试人员', '角色授权', 199, 'com.coderman.api.system.controller.RoleController.authority()', 'paramName:[id, mids],args:[125, [Ljava.lang.Long;@14972c54],role:[Role{id=125, roleName=\'测试用户\'}]', '127.0.0.1', '2020-04-27 12:29:21', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1575, 'zhangyukang', '角色授权', 1540, 'com.coderman.api.system.controller.RoleController.authority()', 'paramName:[id, mids],args:[125, [Ljava.lang.Long;@6deb7c1d],role:[Role{id=0, roleName=\'admin\'}]', '127.0.0.1', '2020-04-27 12:32:36', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1576, 'zhangyukang', '角色授权', 849, 'com.coderman.api.system.controller.RoleController.authority()', 'paramName:[id, mids],args:[125, [Ljava.lang.Long;@3c56a06],role:[Role{id=0, roleName=\'admin\'}]', '127.0.0.1', '2020-04-27 12:34:28', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1577, 'zhangyukang', '角色授权', 791, 'com.coderman.api.system.controller.RoleController.authority()', 'paramName:[id, mids],args:[125, [Ljava.lang.Long;@3f462100],role:[Role{id=0, roleName=\'admin\'}]', '127.0.0.1', '2020-04-27 12:35:11', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1578, 'zhangyukang', '角色授权', 1467, 'com.coderman.api.system.controller.RoleController.authority()', 'paramName:[id, mids],args:[125, [Ljava.lang.Long;@bba1c9a],role:[Role{id=0, roleName=\'admin\'}]', '127.0.0.1', '2020-04-27 12:40:11', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1579, 'zhangyukang', '角色授权', 502, 'com.coderman.api.system.controller.RoleController.authority()', 'paramName:[id, mids],args:[125, [Ljava.lang.Long;@3eef02be],role:[Role{id=0, roleName=\'admin\'}]', '127.0.0.1', '2020-04-27 12:40:53', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1580, '系统测试人员', '角色授权', 3074, 'com.coderman.api.system.controller.RoleController.authority()', 'paramName:[id, mids],args:[125, [Ljava.lang.Long;@2d294b6c],role:[Role{id=125, roleName=\'测试用户\'}]', '127.0.0.1', '2020-04-27 16:48:33', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1582, '系统测试人员', '角色授权', 3557, 'com.coderman.api.system.controller.RoleController.authority()', 'paramName:[id, mids],args:[125, [Ljava.lang.Long;@469c154f],role:[Role{id=125, roleName=\'测试用户\'}]', '127.0.0.1', '2020-04-27 16:49:34', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1583, 'zhangyukang', '新增菜单/按钮', 474, 'com.coderman.api.system.controller.MenuController.add()', 'paramName:[menuVO],args:[MenuVO(id=null, parentId=310, menuName=添加去处, url=, icon=el-icon-add, type=1, orderNum=2, createTime=null, modifiedTime=null, disabled=false, open=1, perms=consumer:add)],role:[Role{id=0, roleName=\'admin\'}]', '127.0.0.1', '2020-04-27 16:57:04', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1584, 'zhangyukang', '新增菜单/按钮', 1146, 'com.coderman.api.system.controller.MenuController.add()', 'paramName:[menuVO],args:[MenuVO(id=null, parentId=310, menuName=删除去处, url=null, icon=el-icon-delete, type=1, orderNum=1, createTime=null, modifiedTime=null, disabled=false, open=0, perms=consumer:delete)],role:[Role{id=0, roleName=\'admin\'}]', '127.0.0.1', '2020-04-27 16:57:43', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1585, 'zhangyukang', '更新菜单', 303, 'com.coderman.api.system.controller.MenuController.update()', 'paramName:[id, menuVO],args:[322, MenuVO(id=322, parentId=310, menuName=添加去处, url=, icon=el-icon-plus, type=1, orderNum=2, createTime=Mon Apr 27 16:57:04 CST 2020, modifiedTime=Mon Apr 27 16:57:04 CST 2020, disabled=false, open=1, perms=consumer:add)],role:[Role{id=0, roleName=\'admin\'}]', '127.0.0.1', '2020-04-27 16:58:21', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1586, 'zhangyukang', '新增菜单/按钮', 267, 'com.coderman.api.system.controller.MenuController.add()', 'paramName:[menuVO],args:[MenuVO(id=null, parentId=310, menuName=编辑去处, url=, icon=el-icon-edit, type=1, orderNum=1, createTime=null, modifiedTime=null, disabled=false, open=0, perms=consumer:edit)],role:[Role{id=0, roleName=\'admin\'}]', '127.0.0.1', '2020-04-27 16:59:17', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1587, 'zhangyukang', '新增菜单/按钮', 37, 'com.coderman.api.system.controller.MenuController.add()', 'paramName:[menuVO],args:[MenuVO(id=null, parentId=310, menuName=更新去处, url=null, icon=el-icon-star-off, type=1, orderNum=1, createTime=null, modifiedTime=null, disabled=false, open=1, perms=consumer:update)],role:[Role{id=0, roleName=\'admin\'}]', '127.0.0.1', '2020-04-27 17:00:18', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1588, 'zhangyukang', '角色授权', 1509, 'com.coderman.api.system.controller.RoleController.authority()', 'paramName:[id, mids],args:[125, [Ljava.lang.Long;@5f159a81],role:[Role{id=0, roleName=\'admin\'}]', '127.0.0.1', '2020-04-27 17:01:35', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1589, 'zhangyukang', '更新菜单', 1393, 'com.coderman.api.system.controller.MenuController.update()', 'paramName:[id, menuVO],args:[303, MenuVO(id=303, parentId=0, menuName=健康报备, url=, icon=el-icon-platform-eleme, type=0, orderNum=3, createTime=Tue Mar 24 10:11:53 CST 2020, modifiedTime=Sun Apr 05 10:21:22 CST 2020, disabled=false, open=0, perms=)],role:[Role{id=0, roleName=\'admin\'}]', '127.0.0.1', '2020-04-27 17:06:14', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1590, 'zhangyukang', '新增菜单/按钮', 538, 'com.coderman.api.system.controller.MenuController.add()', 'paramName:[menuVO],args:[MenuVO(id=null, parentId=230, menuName=添加入库, url=, icon=el-icon-plus, type=1, orderNum=1, createTime=null, modifiedTime=null, disabled=false, open=1, perms=inStock:in)],role:[Role{id=0, roleName=\'admin\'}]', '127.0.0.1', '2020-04-27 17:07:05', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1591, 'zhangyukang', '新增菜单/按钮', 310, 'com.coderman.api.system.controller.MenuController.add()', 'paramName:[menuVO],args:[MenuVO(id=null, parentId=326, menuName=入库明细, url=null, icon=el-icon-zoom-in, type=1, orderNum=1, createTime=null, modifiedTime=null, disabled=false, open=0, perms=inStock:detail)],role:[Role{id=0, roleName=\'admin\'}]', '127.0.0.1', '2020-04-27 17:07:43', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1592, 'zhangyukang', '删除菜单/按钮', 648, 'com.coderman.api.system.controller.MenuController.delete()', 'paramName:[id],args:[327],role:[Role{id=0, roleName=\'admin\'}]', '127.0.0.1', '2020-04-27 17:07:52', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1593, 'zhangyukang', '新增菜单/按钮', 884, 'com.coderman.api.system.controller.MenuController.add()', 'paramName:[menuVO],args:[MenuVO(id=null, parentId=230, menuName=入库明细, url=null, icon=el-icon-zoom-in, type=1, orderNum=2, createTime=null, modifiedTime=null, disabled=false, open=0, perms=inStock:detail)],role:[Role{id=0, roleName=\'admin\'}]', '127.0.0.1', '2020-04-27 17:08:26', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1594, '系统测试人员', '角色授权', 2349, 'com.coderman.api.system.controller.RoleController.authority()', 'paramName:[id, mids],args:[125, [Ljava.lang.Long;@3583c0f6],role:[Role{id=125, roleName=\'测试用户\'}]', '127.0.0.1', '2020-04-27 17:11:00', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1595, '系统测试人员', '角色授权', 2203, 'com.coderman.api.system.controller.RoleController.authority()', 'paramName:[id, mids],args:[125, [Ljava.lang.Long;@6c131856],role:[Role{id=125, roleName=\'测试用户\'}]', '127.0.0.1', '2020-04-27 17:13:48', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1596, '系统测试人员', '角色授权', 74899, 'com.coderman.api.system.controller.RoleController.authority()', 'paramName:[id, mids],args:[125, [Ljava.lang.Long;@5d81e33e],role:[Role{id=125, roleName=\'测试用户\'}]', '127.0.0.1', '2020-04-27 17:15:41', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1597, 'zhangyukang', '新增菜单/按钮', 588, 'com.coderman.api.system.controller.MenuController.add()', 'paramName:[menuVO],args:[MenuVO(id=null, parentId=4, menuName=导出菜单, url=null, icon=el-icon-edit, type=1, orderNum=1, createTime=null, modifiedTime=null, disabled=false, open=0, perms=menu:export)],role:[Role{id=0, roleName=\'admin\'}]', '127.0.0.1', '2020-04-27 17:26:41', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1598, '系统测试人员', '角色授权', 3760, 'com.coderman.api.system.controller.RoleController.authority()', 'paramName:[id, mids],args:[125, [Ljava.lang.Long;@2795ea5c],role:[Role{id=125, roleName=\'测试用户\'}]', '127.0.0.1', '2020-04-27 17:27:43', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1599, '系统测试人员', '角色授权', 48089, 'com.coderman.api.system.controller.RoleController.authority()', 'paramName:[id, mids],args:[125, [Ljava.lang.Long;@4d778aeb],role:[Role{id=125, roleName=\'测试用户\'}]', '127.0.0.1', '2020-04-27 17:33:01', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1600, '系统测试人员', '角色授权', 3105, 'com.coderman.api.system.controller.RoleController.authority()', 'paramName:[id, mids],args:[125, [Ljava.lang.Long;@48c1a55f],role:[Role{id=125, roleName=\'测试用户\'}]', '127.0.0.1', '2020-04-27 17:40:07', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1601, '系统测试人员', '角色授权', 1851, 'com.coderman.api.system.controller.RoleController.authority()', 'paramName:[id, mids],args:[125, [Ljava.lang.Long;@55053644],role:[Role{id=125, roleName=\'测试用户\'}]', '127.0.0.1', '2020-04-27 17:41:22', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1602, '系统测试人员', '角色授权', 2079, 'com.coderman.api.system.controller.RoleController.authority()', 'paramName:[id, mids],args:[125, [Ljava.lang.Long;@21a117dd],role:[Role{id=125, roleName=\'测试用户\'}]', '127.0.0.1', '2020-04-27 17:42:10', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1603, 'zhangyukang', '更新角色', 658, 'com.coderman.api.system.controller.RoleController.update()', 'paramName:[id, roleVO],args:[0, RoleVO(id=0, roleName=admin33, remark=拥有系统的最高权限., createTime=Fri Jun 14 00:00:00 CST 2019, modifiedTime=Mon Apr 27 09:58:59 CST 2020, status=null)],role:[Role{id=0, roleName=\'admin\'}]', '127.0.0.1', '2020-04-27 21:29:29', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1604, 'zhangyukang', '添加部门', 110, 'com.coderman.api.system.controller.DepartmentController.add()', 'paramName:[departmentVO],args:[DepartmentVO(id=null, name=ttttt, phone=15078451414, address=tetet, mgrId=67, createTime=null, modifiedTime=null, mgrName=null)],role:[Role{id=0, roleName=\'admin33\'}]', '127.0.0.1', '2020-04-28 08:41:22', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1605, 'zhangyukang', '删除部门', 254, 'com.coderman.api.system.controller.DepartmentController.delete()', 'paramName:[id],args:[19],role:[Role{id=0, roleName=\'admin33\'}]', '127.0.0.1', '2020-04-28 08:41:29', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1606, 'zhangyukang', '更新部门', 346, 'com.coderman.api.system.controller.DepartmentController.update()', 'paramName:[id, departmentVO],args:[1, DepartmentVO(id=1, name=物资管理部, phone=15045741241, address=负责系统物资的管理。, mgrId=67, createTime=Mon Mar 16 00:00:00 CST 2020, modifiedTime=Sun Apr 26 00:00:00 CST 2020, mgrName=null)],role:[Role{id=0, roleName=\'admin33\'}]', '127.0.0.1', '2020-04-28 08:41:35', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1607, 'zhangyukang', '更新部门', 93, 'com.coderman.api.system.controller.DepartmentController.update()', 'paramName:[id, departmentVO],args:[1, DepartmentVO(id=1, name=物资管理部, phone=15045741241, address=负责系统物资的管理。, mgrId=67, createTime=Mon Mar 16 00:00:00 CST 2020, modifiedTime=Tue Apr 28 00:00:00 CST 2020, mgrName=null)],role:[Role{id=0, roleName=\'admin33\'}]', '127.0.0.1', '2020-04-28 12:52:43', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1608, '系统测试人员', '角色授权', 529, 'com.coderman.api.system.controller.RoleController.authority()', 'paramName:[id, mids],args:[138, [Ljava.lang.Long;@699c9d47],role:[Role{id=125, roleName=\'测试用户\'}]', '127.0.0.1', '2020-04-29 21:47:29', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1609, '系统测试人员', '角色授权', 221, 'com.coderman.api.system.controller.RoleController.authority()', 'paramName:[id, mids],args:[125, [Ljava.lang.Long;@3ce3e4c9],role:[Role{id=125, roleName=\'测试用户\'}]', '127.0.0.1', '2020-04-29 21:48:13', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1610, '系统测试人员', '角色授权', 1332, 'com.coderman.api.system.controller.RoleController.authority()', 'paramName:[id, mids],args:[125, [Ljava.lang.Long;@5dcd6bc9],role:[Role{id=125, roleName=\'测试用户\'}]', '127.0.0.1', '2020-04-29 21:56:08', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1611, '系统测试人员', '角色授权', 297, 'com.coderman.api.system.controller.RoleController.authority()', 'paramName:[id, mids],args:[125, [Ljava.lang.Long;@76f0f223],role:[Role{id=125, roleName=\'测试用户\'}]', '127.0.0.1', '2020-04-30 09:20:34', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1612, '系统测试人员', '新增菜单/按钮', 111, 'com.coderman.api.system.controller.MenuController.add()', 'paramName:[menuVO],args:[MenuVO(id=null, parentId=267, menuName=回收物资, url=, icon=el-icon-remove, type=1, orderNum=1, createTime=null, modifiedTime=null, disabled=false, open=0, perms=product:remove)],role:[Role{id=125, roleName=\'测试用户\'}]', '127.0.0.1', '2020-04-30 09:22:46', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1613, '系统测试人员', '角色授权', 287, 'com.coderman.api.system.controller.RoleController.authority()', 'paramName:[id, mids],args:[125, [Ljava.lang.Long;@3c9cdeee],role:[Role{id=125, roleName=\'测试用户\'}]', '127.0.0.1', '2020-04-30 09:22:57', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1614, 'zhangyukang', '新增菜单/按钮', 102, 'com.coderman.api.system.controller.MenuController.add()', 'paramName:[menuVO],args:[MenuVO(id=null, parentId=267, menuName=回收站, url=null, icon=el-icon-delete, type=1, orderNum=1, createTime=null, modifiedTime=null, disabled=false, open=0, perms=product:recycle)],role:[Role{id=0, roleName=\'admin33\'}]', '127.0.0.1', '2020-04-30 18:27:02', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1615, 'zhangyukang', '更新菜单', 262, 'com.coderman.api.system.controller.MenuController.update()', 'paramName:[id, menuVO],args:[275, MenuVO(id=275, parentId=331, menuName=删除物资, url=null, icon=el-icon-c-scale-to-original, type=1, orderNum=2, createTime=Sat Mar 21 02:04:55 CST 2020, modifiedTime=Sat Mar 21 02:04:55 CST 2020, disabled=false, open=0, perms=product:recycle:delete)],role:[Role{id=0, roleName=\'admin33\'}]', '127.0.0.1', '2020-04-30 18:28:30', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1616, 'zhangyukang', '更新菜单', 2824, 'com.coderman.api.system.controller.MenuController.update()', 'paramName:[id, menuVO],args:[229, MenuVO(id=229, parentId=312, menuName=物资管理, url=, icon=el-icon-date, type=0, orderNum=1, createTime=Tue Mar 10 05:34:08 CST 2020, modifiedTime=Sat Apr 11 13:56:13 CST 2020, disabled=false, open=1, perms=el-icon-date)],role:[Role{id=0, roleName=\'admin33\'}]', '127.0.0.1', '2020-04-30 18:29:23', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1617, 'zhangyukang', '更新菜单', 99, 'com.coderman.api.system.controller.MenuController.update()', 'paramName:[id, menuVO],args:[5, MenuVO(id=5, parentId=0, menuName=日志管理, url=/logs, icon=el-icon-camera, type=0, orderNum=5, createTime=Sat Mar 07 18:58:18 CST 2020, modifiedTime=Sun Mar 22 22:19:32 CST 2020, disabled=false, open=0, perms=null)],role:[Role{id=0, roleName=\'admin33\'}]', '127.0.0.1', '2020-04-30 18:29:29', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1618, 'zhangyukang', '更新菜单', 600, 'com.coderman.api.system.controller.MenuController.update()', 'paramName:[id, menuVO],args:[311, MenuVO(id=311, parentId=312, menuName=物资流向, url=null, icon=el-icon-edit, type=0, orderNum=3, createTime=Sun Apr 05 10:16:59 CST 2020, modifiedTime=Sun Apr 05 10:17:01 CST 2020, disabled=false, open=0, perms=null)],role:[Role{id=0, roleName=\'admin33\'}]', '127.0.0.1', '2020-04-30 18:40:44', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1619, 'zhangyukang', '更新菜单', 76, 'com.coderman.api.system.controller.MenuController.update()', 'paramName:[id, menuVO],args:[331, MenuVO(id=331, parentId=267, menuName=物资回收站, url=null, icon=el-icon-delete, type=1, orderNum=1, createTime=Thu Apr 30 18:27:02 CST 2020, modifiedTime=Thu Apr 30 18:27:02 CST 2020, disabled=false, open=0, perms=product:recycle)],role:[Role{id=0, roleName=\'admin33\'}]', '127.0.0.1', '2020-04-30 18:52:31', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1620, 'zhangyukang', '更新菜单', 162, 'com.coderman.api.system.controller.MenuController.update()', 'paramName:[id, menuVO],args:[331, MenuVO(id=331, parentId=267, menuName=物资回收, url=null, icon=el-icon-delete, type=1, orderNum=1, createTime=Thu Apr 30 18:27:02 CST 2020, modifiedTime=Thu Apr 30 18:52:31 CST 2020, disabled=false, open=0, perms=product:recycle)],role:[Role{id=0, roleName=\'admin33\'}]', '127.0.0.1', '2020-04-30 18:52:46', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1621, 'zhangyukang', '更新菜单', 40, 'com.coderman.api.system.controller.MenuController.update()', 'paramName:[id, menuVO],args:[330, MenuVO(id=330, parentId=331, menuName=回收物资, url=, icon=el-icon-remove, type=1, orderNum=1, createTime=Thu Apr 30 09:22:46 CST 2020, modifiedTime=Thu Apr 30 09:22:46 CST 2020, disabled=false, open=0, perms=product:remove)],role:[Role{id=0, roleName=\'admin33\'}]', '127.0.0.1', '2020-04-30 18:53:45', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1622, 'zhangyukang', '更新菜单', 61, 'com.coderman.api.system.controller.MenuController.update()', 'paramName:[id, menuVO],args:[330, MenuVO(id=330, parentId=331, menuName=还原物资, url=, icon=el-icon-refresh, type=1, orderNum=1, createTime=Thu Apr 30 09:22:46 CST 2020, modifiedTime=Thu Apr 30 18:53:45 CST 2020, disabled=false, open=0, perms=product:back)],role:[Role{id=0, roleName=\'admin33\'}]', '127.0.0.1', '2020-04-30 18:55:47', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1623, 'zhangyukang', '更新菜单', 26, 'com.coderman.api.system.controller.MenuController.update()', 'paramName:[id, menuVO],args:[267, MenuVO(id=267, parentId=229, menuName=物资资料, url=/products, icon=el-icon-goods, type=0, orderNum=2, createTime=Mon Mar 16 09:01:02 CST 2020, modifiedTime=Tue Mar 24 10:13:55 CST 2020, disabled=false, open=1, perms=)],role:[Role{id=0, roleName=\'admin33\'}]', '127.0.0.1', '2020-04-30 18:55:53', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1624, 'zhangyukang', '新增菜单/按钮', 137, 'com.coderman.api.system.controller.MenuController.add()', 'paramName:[menuVO],args:[MenuVO(id=null, parentId=267, menuName=回收物资, url=, icon=el-icon-remove, type=1, orderNum=1, createTime=null, modifiedTime=null, disabled=false, open=1, perms=product:remove)],role:[Role{id=0, roleName=\'admin33\'}]', '127.0.0.1', '2020-04-30 18:56:48', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1625, 'zhangyukang', '更新菜单', 42, 'com.coderman.api.system.controller.MenuController.update()', 'paramName:[id, menuVO],args:[331, MenuVO(id=331, parentId=267, menuName=回收站, url=null, icon=el-icon-delete, type=1, orderNum=1, createTime=Thu Apr 30 18:27:02 CST 2020, modifiedTime=Thu Apr 30 18:52:46 CST 2020, disabled=false, open=0, perms=product:recycle)],role:[Role{id=0, roleName=\'admin33\'}]', '127.0.0.1', '2020-04-30 18:57:19', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1626, 'zhangyukang', '新增菜单/按钮', 174, 'com.coderman.api.system.controller.MenuController.add()', 'paramName:[menuVO],args:[MenuVO(id=null, parentId=267, menuName=物资审核, url=null, icon=el-icon-edit, type=1, orderNum=1, createTime=null, modifiedTime=null, disabled=false, open=0, perms=product:examine)],role:[Role{id=0, roleName=\'admin33\'}]', '127.0.0.1', '2020-04-30 18:58:38', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1627, 'zhangyukang', '新增菜单/按钮', 126, 'com.coderman.api.system.controller.MenuController.add()', 'paramName:[menuVO],args:[MenuVO(id=null, parentId=333, menuName=审核通过, url=null, icon=el-icon-edit, type=1, orderNum=1, createTime=null, modifiedTime=null, disabled=false, open=0, perms=product:examine:publish)],role:[Role{id=0, roleName=\'admin33\'}]', '127.0.0.1', '2020-04-30 18:59:48', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1628, 'zhangyukang', '新增菜单/按钮', 117, 'com.coderman.api.system.controller.MenuController.add()', 'paramName:[menuVO],args:[MenuVO(id=null, parentId=333, menuName=物资删除, url=null, icon=el-icon-delete, type=1, orderNum=1, createTime=null, modifiedTime=null, disabled=false, open=0, perms=product:examine:delete)],role:[Role{id=0, roleName=\'admin33\'}]', '127.0.0.1', '2020-04-30 19:01:00', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1629, 'zhangyukang', '更新菜单', 115, 'com.coderman.api.system.controller.MenuController.update()', 'paramName:[id, menuVO],args:[330, MenuVO(id=330, parentId=331, menuName=还原物资, url=, icon=el-icon-refresh, type=1, orderNum=1, createTime=Thu Apr 30 09:22:46 CST 2020, modifiedTime=Thu Apr 30 18:55:47 CST 2020, disabled=false, open=0, perms=product:recycle:back)],role:[Role{id=0, roleName=\'admin33\'}]', '127.0.0.1', '2020-04-30 19:03:04', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1630, 'zhangyukang', '更新菜单', 113, 'com.coderman.api.system.controller.MenuController.update()', 'paramName:[id, menuVO],args:[335, MenuVO(id=335, parentId=333, menuName=物资删除, url=null, icon=el-icon-delete, type=1, orderNum=1, createTime=Thu Apr 30 19:01:00 CST 2020, modifiedTime=Thu Apr 30 19:01:00 CST 2020, disabled=false, open=0, perms=product:delete)],role:[Role{id=0, roleName=\'admin33\'}]', '127.0.0.1', '2020-04-30 19:04:20', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1631, 'zhangyukang', '删除菜单/按钮', 130, 'com.coderman.api.system.controller.MenuController.delete()', 'paramName:[id],args:[335],role:[Role{id=0, roleName=\'admin33\'}]', '127.0.0.1', '2020-04-30 19:04:34', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1632, 'zhangyukang', '删除菜单/按钮', 19, 'com.coderman.api.system.controller.MenuController.delete()', 'paramName:[id],args:[334],role:[Role{id=0, roleName=\'admin33\'}]', '127.0.0.1', '2020-04-30 19:04:38', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1633, 'zhangyukang', '删除菜单/按钮', 64, 'com.coderman.api.system.controller.MenuController.delete()', 'paramName:[id],args:[275],role:[Role{id=0, roleName=\'admin33\'}]', '127.0.0.1', '2020-04-30 19:04:47', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1634, 'zhangyukang', '删除菜单/按钮', 20, 'com.coderman.api.system.controller.MenuController.delete()', 'paramName:[id],args:[330],role:[Role{id=0, roleName=\'admin33\'}]', '127.0.0.1', '2020-04-30 19:04:51', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1635, 'zhangyukang', '更新菜单', 120, 'com.coderman.api.system.controller.MenuController.update()', 'paramName:[id, menuVO],args:[331, MenuVO(id=331, parentId=267, menuName=回收物资, url=null, icon=el-icon-delete, type=1, orderNum=1, createTime=Thu Apr 30 18:27:02 CST 2020, modifiedTime=Thu Apr 30 18:57:19 CST 2020, disabled=false, open=0, perms=product:remove)],role:[Role{id=0, roleName=\'admin33\'}]', '127.0.0.1', '2020-04-30 19:05:09', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1636, 'zhangyukang', '更新菜单', 107, 'com.coderman.api.system.controller.MenuController.update()', 'paramName:[id, menuVO],args:[331, MenuVO(id=331, parentId=267, menuName=删除物资, url=null, icon=el-icon-delete, type=1, orderNum=1, createTime=Thu Apr 30 18:27:02 CST 2020, modifiedTime=Thu Apr 30 19:05:09 CST 2020, disabled=false, open=0, perms=product:delete)],role:[Role{id=0, roleName=\'admin33\'}]', '127.0.0.1', '2020-04-30 19:05:31', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1637, 'zhangyukang', '更新菜单', 117, 'com.coderman.api.system.controller.MenuController.update()', 'paramName:[id, menuVO],args:[333, MenuVO(id=333, parentId=267, menuName=物资审核, url=null, icon=el-icon-edit, type=1, orderNum=1, createTime=Thu Apr 30 18:58:38 CST 2020, modifiedTime=Thu Apr 30 18:58:38 CST 2020, disabled=false, open=0, perms=product:publish)],role:[Role{id=0, roleName=\'admin33\'}]', '127.0.0.1', '2020-04-30 19:05:42', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1638, 'zhangyukang', '新增菜单/按钮', 33, 'com.coderman.api.system.controller.MenuController.add()', 'paramName:[menuVO],args:[MenuVO(id=null, parentId=267, menuName=物资还原, url=null, icon=el-icon-top-left, type=1, orderNum=1, createTime=null, modifiedTime=null, disabled=false, open=0, perms=product:back)],role:[Role{id=0, roleName=\'admin33\'}]', '127.0.0.1', '2020-04-30 19:06:22', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1639, '系统测试人员', '角色授权', 331, 'com.coderman.api.system.controller.RoleController.authority()', 'paramName:[id, mids],args:[125, [Ljava.lang.Long;@19c4392c],role:[Role{id=125, roleName=\'测试用户\'}]', '127.0.0.1', '2020-04-30 19:07:56', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1640, '系统测试人员', '角色授权', 141, 'com.coderman.api.system.controller.RoleController.authority()', 'paramName:[id, mids],args:[125, [Ljava.lang.Long;@620d0150],role:[Role{id=125, roleName=\'测试用户\'}]', '127.0.0.1', '2020-04-30 19:08:38', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1641, '系统测试人员', '角色授权', 142, 'com.coderman.api.system.controller.RoleController.authority()', 'paramName:[id, mids],args:[125, [Ljava.lang.Long;@34ab349f],role:[Role{id=125, roleName=\'测试用户\'}]', '127.0.0.1', '2020-04-30 19:09:42', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1642, '系统测试人员', '角色授权', 243, 'com.coderman.api.system.controller.RoleController.authority()', 'paramName:[id, mids],args:[125, [Ljava.lang.Long;@1a010211],role:[Role{id=125, roleName=\'测试用户\'}]', '127.0.0.1', '2020-04-30 19:10:28', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1643, '系统测试人员', '角色授权', 283, 'com.coderman.api.system.controller.RoleController.authority()', 'paramName:[id, mids],args:[125, [Ljava.lang.Long;@709f9433],role:[Role{id=125, roleName=\'测试用户\'}]', '127.0.0.1', '2020-04-30 19:11:06', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1644, '系统测试人员', '更新菜单', 21, 'com.coderman.api.system.controller.MenuController.update()', 'paramName:[id, menuVO],args:[267, MenuVO(id=267, parentId=229, menuName=物资资料, url=/products, icon=el-icon-goods, type=0, orderNum=2, createTime=Mon Mar 16 09:01:02 CST 2020, modifiedTime=Thu Apr 30 18:55:53 CST 2020, disabled=false, open=0, perms=)],role:[Role{id=125, roleName=\'测试用户\'}]', '127.0.0.1', '2020-04-30 19:11:56', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1645, '系统测试人员', '新增菜单/按钮', 80, 'com.coderman.api.system.controller.MenuController.add()', 'paramName:[menuVO],args:[MenuVO(id=null, parentId=230, menuName=入库回收, url=, icon=el-icon-remove, type=1, orderNum=1, createTime=null, modifiedTime=null, disabled=false, open=1, perms=inStock:remove)],role:[Role{id=125, roleName=\'测试用户\'}]', '127.0.0.1', '2020-04-30 19:12:56', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1646, '系统测试人员', '更新菜单', 61, 'com.coderman.api.system.controller.MenuController.update()', 'paramName:[id, menuVO],args:[230, MenuVO(id=230, parentId=229, menuName=物资入库, url=/inStocks, icon=el-icon-date, type=0, orderNum=1, createTime=Tue Mar 10 05:34:28 CST 2020, modifiedTime=Thu Mar 19 02:24:33 CST 2020, disabled=false, open=1, perms=el-icon-date)],role:[Role{id=125, roleName=\'测试用户\'}]', '127.0.0.1', '2020-04-30 19:13:01', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1647, '系统测试人员', '新增菜单/按钮', 125, 'com.coderman.api.system.controller.MenuController.add()', 'paramName:[menuVO],args:[MenuVO(id=null, parentId=230, menuName=入库审核, url=null, icon=el-icon-edit, type=1, orderNum=1, createTime=null, modifiedTime=null, disabled=false, open=0, perms=inStock:publish)],role:[Role{id=125, roleName=\'测试用户\'}]', '127.0.0.1', '2020-04-30 19:13:33', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1648, '系统测试人员', '新增菜单/按钮', 124, 'com.coderman.api.system.controller.MenuController.add()', 'paramName:[menuVO],args:[MenuVO(id=null, parentId=230, menuName=删除记录, url=null, icon=el-icon-delete, type=1, orderNum=1, createTime=null, modifiedTime=null, disabled=false, open=0, perms=inStock:delete)],role:[Role{id=125, roleName=\'测试用户\'}]', '127.0.0.1', '2020-04-30 19:14:03', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1649, '系统测试人员', '角色授权', 100, 'com.coderman.api.system.controller.RoleController.authority()', 'paramName:[id, mids],args:[125, [Ljava.lang.Long;@7fc4aab2],role:[Role{id=125, roleName=\'测试用户\'}]', '127.0.0.1', '2020-04-30 19:15:21', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1650, '系统测试人员', '角色授权', 141, 'com.coderman.api.system.controller.RoleController.authority()', 'paramName:[id, mids],args:[125, [Ljava.lang.Long;@5b4fee4d],role:[Role{id=125, roleName=\'测试用户\'}]', '127.0.0.1', '2020-04-30 19:15:49', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1651, '系统测试人员', '角色授权', 98, 'com.coderman.api.system.controller.RoleController.authority()', 'paramName:[id, mids],args:[125, [Ljava.lang.Long;@6aaf91a5],role:[Role{id=125, roleName=\'测试用户\'}]', '127.0.0.1', '2020-04-30 19:16:22', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1652, '系统测试人员', '新增菜单/按钮', 115, 'com.coderman.api.system.controller.MenuController.add()', 'paramName:[menuVO],args:[MenuVO(id=null, parentId=230, menuName=入库还原, url=, icon=el-icon-d-arrow-left, type=1, orderNum=1, createTime=null, modifiedTime=null, disabled=false, open=0, perms=inStock:back)],role:[Role{id=125, roleName=\'测试用户\'}]', '127.0.0.1', '2020-04-30 19:17:27', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1653, '系统测试人员', '角色授权', 202, 'com.coderman.api.system.controller.RoleController.authority()', 'paramName:[id, mids],args:[125, [Ljava.lang.Long;@1a6d6057],role:[Role{id=125, roleName=\'测试用户\'}]', '127.0.0.1', '2020-04-30 19:17:34', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1654, 'zhangyukang', '删除菜单/按钮', 445, 'com.coderman.api.system.controller.MenuController.delete()', 'paramName:[id],args:[302],role:[Role{id=0, roleName=\'admin33\'}]', '127.0.0.1', '2020-05-01 12:40:39', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1655, 'zhangyukang', '更新菜单', 161, 'com.coderman.api.system.controller.MenuController.update()', 'paramName:[id, menuVO],args:[272, MenuVO(id=272, parentId=303, menuName=疫情辟谣, url=/rumors, icon=el-icon-help, type=0, orderNum=5, createTime=Fri Mar 20 19:29:40 CST 2020, modifiedTime=Sun Apr 05 10:21:30 CST 2020, disabled=false, open=0, perms=null)],role:[Role{id=0, roleName=\'admin33\'}]', '127.0.0.1', '2020-05-01 12:41:01', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1656, 'zhangyukang', '更新菜单', 1427, 'com.coderman.api.system.controller.MenuController.update()', 'paramName:[id, menuVO],args:[319, MenuVO(id=319, parentId=1, menuName=公告管理, url=/notices, icon=el-icon-s-flag, type=0, orderNum=4, createTime=Tue Apr 21 12:07:46 CST 2020, modifiedTime=Tue Apr 21 12:23:05 CST 2020, disabled=true, open=0, perms=)],role:[Role{id=0, roleName=\'admin33\'}]', '127.0.0.1', '2020-05-05 19:55:10', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1657, 'zhangyukang', '更新菜单', 413, 'com.coderman.api.system.controller.MenuController.update()', 'paramName:[id, menuVO],args:[1, MenuVO(id=1, parentId=0, menuName=系统管理, url=, icon=el-icon-setting, type=0, orderNum=1, createTime=Sat Mar 07 17:41:30 CST 2020, modifiedTime=Sat Apr 18 12:29:15 CST 2020, disabled=true, open=0, perms=null)],role:[Role{id=0, roleName=\'admin33\'}]', '127.0.0.1', '2020-05-05 19:55:31', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1658, 'zhangyukang', '更新菜单', 729, 'com.coderman.api.system.controller.MenuController.update()', 'paramName:[id, menuVO],args:[1, MenuVO(id=1, parentId=0, menuName=系统管理, url=, icon=el-icon-setting, type=0, orderNum=1, createTime=Sat Mar 07 17:41:30 CST 2020, modifiedTime=Tue May 05 19:55:30 CST 2020, disabled=false, open=0, perms=null)],role:[Role{id=0, roleName=\'admin33\'}]', '127.0.0.1', '2020-05-05 19:55:55', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1659, 'zhangyukang', '更新菜单', 1037, 'com.coderman.api.system.controller.MenuController.update()', 'paramName:[id, menuVO],args:[304, MenuVO(id=304, parentId=303, menuName=健康打卡, url=/health, icon=el-icon-s-cooperation, type=0, orderNum=1, createTime=Tue Mar 24 10:12:57 CST 2020, modifiedTime=Tue Mar 24 10:12:57 CST 2020, disabled=false, open=0, perms=)],role:[Role{id=0, roleName=\'admin33\'}]', '127.0.0.1', '2020-05-06 09:37:52', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1660, 'zhangyukang', '更新用户', 441, 'com.coderman.api.system.controller.UserController.update()', 'paramName:[id, userEditVO],args:[6, UserEditVO(id=6, username=Georgie, nickname=zhangyu, email=Georgie@qq.com, phoneNumber=17766666666, sex=0, birth=Wed Mar 25 00:00:00 CST 2020, departmentId=14)],role:[Role{id=0, roleName=\'admin33\'}]', '127.0.0.1', '2020-05-06 10:54:34', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1661, 'zhangyukang', '更新用户', 65, 'com.coderman.api.system.controller.UserController.update()', 'paramName:[id, userEditVO],args:[55, UserEditVO(id=55, username=coderman, nickname=zhangyu, email=zhangyukang@qq.com, phoneNumber=13426528317, sex=1, birth=Thu Mar 12 00:00:00 CST 2020, departmentId=16)],role:[Role{id=0, roleName=\'admin33\'}]', '127.0.0.1', '2020-05-06 10:54:51', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1662, 'zhangyukang', '更新用户', 1138, 'com.coderman.api.system.controller.UserController.update()', 'paramName:[id, userEditVO],args:[80, UserEditVO(id=80, username=4f9dac, nickname=xiaohfdsa, email=b5501@qq.com, phoneNumber=13521245214, sex=0, birth=Mon Mar 09 00:00:00 CST 2020, departmentId=15)],role:[Role{id=0, roleName=\'admin33\'}]', '127.0.0.1', '2020-05-06 10:54:58', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1663, 'zhangyukang', '用户|禁用/启用', 2064, 'com.coderman.api.system.controller.UserController.updateStatus()', 'paramName:[id, status],args:[42, true],role:[Role{id=0, roleName=\'admin33\'}]', '127.0.0.1', '2020-05-07 12:24:52', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1664, 'zhangyukang', '更新部门', 436, 'com.coderman.api.system.controller.DepartmentController.update()', 'paramName:[id, departmentVO],args:[1, DepartmentVO(id=1, name=物资管理部, phone=15045741241, address=负责系统物资的管理。, mgrId=71, createTime=Mon Mar 16 00:00:00 CST 2020, modifiedTime=Tue Apr 28 00:00:00 CST 2020, mgrName=null, total=0)],role:[Role{id=0, roleName=\'admin33\'}]', '127.0.0.1', '2020-05-07 12:25:10', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1665, 'zhangyukang', '新增菜单/按钮', 1277, 'com.coderman.api.system.controller.MenuController.add()', 'paramName:[menuVO],args:[MenuVO(id=null, parentId=295, menuName=个人博客, url=/blog, icon=el-icon-view, type=0, orderNum=1, createTime=null, modifiedTime=null, disabled=false, open=0, perms=)],role:[Role{id=0, roleName=\'admin33\'}]', '127.0.0.1', '2020-05-07 19:34:33', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1666, 'zhangyukang', '更新菜单', 1992, 'com.coderman.api.system.controller.MenuController.update()', 'paramName:[id, menuVO],args:[312, MenuVO(id=312, parentId=0, menuName=业务管理, url=null, icon=el-icon-edit, type=0, orderNum=2, createTime=Sun Apr 05 10:19:07 CST 2020, modifiedTime=Sat Apr 11 13:56:54 CST 2020, disabled=false, open=0, perms=null)],role:[Role{id=0, roleName=\'admin33\'}]', '127.0.0.1', '2020-05-07 19:35:13', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1667, 'zhangyukang', '更新菜单', 1223, 'com.coderman.api.system.controller.MenuController.update()', 'paramName:[id, menuVO],args:[5, MenuVO(id=5, parentId=0, menuName=日志管理, url=/logs, icon=el-icon-camera, type=0, orderNum=6, createTime=Sat Mar 07 18:58:18 CST 2020, modifiedTime=Thu Apr 30 18:29:29 CST 2020, disabled=false, open=0, perms=null)],role:[Role{id=0, roleName=\'admin33\'}]', '127.0.0.1', '2020-05-07 19:35:20', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1668, 'zhangyukang', '更新菜单', 673, 'com.coderman.api.system.controller.MenuController.update()', 'paramName:[id, menuVO],args:[295, MenuVO(id=295, parentId=0, menuName=其他管理, url=, icon=el-icon-s-marketing, type=0, orderNum=5, createTime=Sun Mar 22 01:21:56 CST 2020, modifiedTime=Tue Mar 24 10:25:16 CST 2020, disabled=false, open=0, perms=)],role:[Role{id=0, roleName=\'admin33\'}]', '127.0.0.1', '2020-05-07 19:35:28', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1669, 'zhangyukang', '新增菜单/按钮', 1660, 'com.coderman.api.system.controller.MenuController.add()', 'paramName:[menuVO],args:[MenuVO(id=null, parentId=295, menuName=BBS论坛, url=/forum, icon=el-icon-edit, type=0, orderNum=1, createTime=null, modifiedTime=null, disabled=false, open=1, perms=)],role:[Role{id=0, roleName=\'admin33\'}]', '127.0.0.1', '2020-05-07 19:38:00', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1670, 'zhangyukang', '更新菜单', 699, 'com.coderman.api.system.controller.MenuController.update()', 'paramName:[id, menuVO],args:[295, MenuVO(id=295, parentId=0, menuName=其他管理, url=, icon=el-icon-s-marketing, type=0, orderNum=5, createTime=Sun Mar 22 01:21:56 CST 2020, modifiedTime=Thu May 07 19:35:27 CST 2020, disabled=false, open=1, perms=)],role:[Role{id=0, roleName=\'admin33\'}]', '127.0.0.1', '2020-05-07 19:43:30', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1671, 'zhangyukang', '更新菜单', 616, 'com.coderman.api.system.controller.MenuController.update()', 'paramName:[id, menuVO],args:[296, MenuVO(id=296, parentId=295, menuName=swagger文档, url=/swagger, icon=el-icon-document, type=0, orderNum=2, createTime=Sun Mar 22 01:22:48 CST 2020, modifiedTime=Sun Mar 22 01:35:53 CST 2020, disabled=false, open=0, perms=null)],role:[Role{id=0, roleName=\'admin33\'}]', '127.0.0.1', '2020-05-07 19:43:42', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1672, 'zhangyukang', '删除菜单/按钮', 302, 'com.coderman.api.system.controller.MenuController.delete()', 'paramName:[id],args:[342],role:[Role{id=0, roleName=\'admin33\'}]', '127.0.0.1', '2020-05-07 19:43:46', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1673, 'zhangyukang', '更新用户', 977, 'com.coderman.api.system.controller.UserController.update()', 'paramName:[id, userEditVO],args:[184, UserEditVO(id=184, username=系统测试人员, nickname=Sys-Test, email=3053161401@qq.com, phoneNumber=15079454152, sex=1, birth=Thu Mar 19 00:00:00 CST 2020, departmentId=15)],role:[Role{id=0, roleName=\'admin33\'}]', '127.0.0.1', '2020-05-10 10:32:57', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1674, 'zhangyukang', '更新菜单', 274, 'com.coderman.api.system.controller.MenuController.update()', 'paramName:[id, menuVO],args:[270, MenuVO(id=270, parentId=229, menuName=物资发放, url=/outStocks, icon=el-icon-goods, type=0, orderNum=5, createTime=Mon Mar 16 13:55:49 CST 2020, modifiedTime=Sun Mar 22 22:39:01 CST 2020, disabled=false, open=1, perms=)],role:[Role{id=0, roleName=\'admin33\'}]', '127.0.0.1', '2020-05-10 14:46:54', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1675, 'zhangyukang', '新增菜单/按钮', 176, 'com.coderman.api.system.controller.MenuController.add()', 'paramName:[menuVO],args:[MenuVO(id=null, parentId=304, menuName=健康上报, url=, icon=el-icon-edit, type=1, orderNum=1, createTime=null, modifiedTime=null, disabled=false, open=0, perms=health:report)],role:[Role{id=0, roleName=\'admin33\'}]', '127.0.0.1', '2020-05-14 20:21:09', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1676, 'zhangyukang', '角色授权', 1101, 'com.coderman.api.system.controller.RoleController.authority()', 'paramName:[id, mids],args:[125, [Ljava.lang.Long;@65faba4f],role:[Role{id=0, roleName=\'admin33\'}]', '127.0.0.1', '2020-05-14 20:21:46', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1677, 'zhangyukang', '删除用户', 75, 'com.coderman.api.system.controller.UserController.delete()', '[2]', '127.0.0.1', '2020-05-16 10:29:19', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1678, 'zhangyukang', '删除用户', 8, 'com.coderman.api.system.controller.UserController.delete()', '[2]', '127.0.0.1', '2020-05-16 10:30:52', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1679, 'zhangyukang', '删除用户', 1, 'com.coderman.api.system.controller.UserController.delete()', '[2]', '127.0.0.1', '2020-05-16 10:31:07', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1680, 'zhangyukang', '删除用户', 78, 'com.coderman.api.system.controller.UserController.delete()', '[2]', '127.0.0.1', '2020-05-16 10:31:33', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1681, 'zhangyukang', '删除用户', 154, 'com.coderman.api.system.controller.UserController.delete()', '[2]', '127.0.0.1', '2020-05-16 10:39:17', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1682, 'zhangyukang', '删除用户', 111, 'com.coderman.api.system.controller.UserController.delete()', '[2]', '127.0.0.1', '2020-05-16 10:40:12', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1683, 'zhangyukang', '删除用户', 8, 'com.coderman.api.system.controller.UserController.delete()', '[2]', '127.0.0.1', '2020-05-16 10:41:38', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1684, 'zhangyukang', '分配角色', 1027, 'com.coderman.api.system.controller.UserController.assignRoles()', '[6,[138]]', '127.0.0.1', '2020-05-16 11:08:00', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1685, 'zhangyukang', '用户|禁用/启用', 193, 'com.coderman.api.system.controller.UserController.updateStatus()', '[42,false]', '127.0.0.1', '2020-05-16 11:11:50', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1686, 'zhangyukang', '分配角色', 513, 'com.coderman.api.system.controller.UserController.assignRoles()', 'paramName:[id, rids],args:[6, [Ljava.lang.Long;@43ade6fb]', '127.0.0.1', '2020-05-16 11:30:37', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1687, 'zhangyukang', '用户|禁用/启用', 116, 'com.coderman.api.system.controller.UserController.updateStatus()', 'paramName:[id, status],args:[42, true]', '127.0.0.1', '2020-05-16 11:47:19', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1688, 'zhangyukang', '角色授权', 25, 'com.coderman.api.system.controller.RoleController.authority()', 'paramName:[id, mids],args:[0, [Ljava.lang.Long;@234843a4]', '127.0.0.1', '2020-05-16 11:47:22', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1689, 'zhangyukang', '更新部门', 107, 'com.coderman.api.system.controller.DepartmentController.update()', 'paramName:[id, departmentVO],args:[1, DepartmentVO(id=1, name=物资管理部, phone=15045741241, address=负责系统物资的管理。, mgrId=71, createTime=Mon Mar 16 00:00:00 CST 2020, modifiedTime=Thu May 07 00:00:00 CST 2020, mgrName=null, total=0)]', '127.0.0.1', '2020-05-16 11:47:28', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1690, '系统测试人员', '更新菜单', 430, 'com.coderman.api.system.controller.MenuController.update()response:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id, menuVO],args:[303, MenuVO(id=303, parentId=0, menuName=健康报备, url=, icon=el-icon-platform-eleme, type=0, orderNum=3, createTime=Tue Mar 24 10:11:53 CST 2020, modifiedTime=Mon Apr 27 17:06:12 CST 2020, disabled=false, open=0, perms=)]', '127.0.0.1', '2020-05-16 11:53:36', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1691, '系统测试人员', '更新菜单', 789, 'com.coderman.api.system.controller.MenuController.update()+\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id, menuVO],args:[1, MenuVO(id=1, parentId=0, menuName=系统管理, url=, icon=el-icon-setting, type=0, orderNum=1, createTime=Sat Mar 07 17:41:30 CST 2020, modifiedTime=Tue May 05 19:55:54 CST 2020, disabled=false, open=0, perms=null)]', '127.0.0.1', '2020-05-16 11:55:00', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1693, 'zhangyukang', '更新菜单', 735, 'com.coderman.api.system.controller.MenuController.update()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id, menuVO],args:[1, MenuVO(id=1, parentId=0, menuName=系统管理, url=, icon=el-icon-setting, type=0, orderNum=1, createTime=Sat Mar 07 17:41:30 CST 2020, modifiedTime=Sat May 16 11:55:00 CST 2020, disabled=true, open=0, perms=null)]', '127.0.0.1', '2020-05-16 16:36:01', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1694, 'zhangyukang', '更新菜单', 680, 'com.coderman.api.system.controller.MenuController.update()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id, menuVO],args:[1, MenuVO(id=1, parentId=0, menuName=系统管理, url=, icon=el-icon-setting, type=0, orderNum=1, createTime=Sat Mar 07 17:41:30 CST 2020, modifiedTime=Sat May 16 16:36:01 CST 2020, disabled=false, open=0, perms=null)]', '127.0.0.1', '2020-05-16 16:36:44', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1695, '系统测试人员', '更新菜单', 1102, 'com.coderman.api.system.controller.MenuController.update()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id, menuVO],args:[1, MenuVO(id=1, parentId=0, menuName=系统管理, url=, icon=el-icon-setting, type=0, orderNum=1, createTime=Sat Mar 07 17:41:30 CST 2020, modifiedTime=Sat May 16 16:36:44 CST 2020, disabled=true, open=0, perms=null)]', '127.0.0.1', '2020-05-16 16:37:06', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1696, '系统测试人员', '更新菜单', 1236, 'com.coderman.api.system.controller.MenuController.update()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id, menuVO],args:[1, MenuVO(id=1, parentId=0, menuName=系统管理, url=, icon=el-icon-setting, type=0, orderNum=1, createTime=Sat Mar 07 17:41:30 CST 2020, modifiedTime=Sat May 16 16:37:06 CST 2020, disabled=false, open=0, perms=null)]', '127.0.0.1', '2020-05-16 16:37:28', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1697, '系统测试人员', '更新菜单', 52, 'com.coderman.api.system.controller.MenuController.update()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id, menuVO],args:[1, MenuVO(id=1, parentId=0, menuName=系统管理, url=, icon=el-icon-setting, type=0, orderNum=1, createTime=Sat Mar 07 17:41:30 CST 2020, modifiedTime=Sat May 16 16:37:28 CST 2020, disabled=false, open=1, perms=null)]', '127.0.0.1', '2020-05-16 16:37:37', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1698, '系统测试人员', '更新菜单', 1269, 'com.coderman.api.system.controller.MenuController.update()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id, menuVO],args:[235, MenuVO(id=235, parentId=1, menuName=角色管理, url=/roles, icon=el-icon-postcard, type=0, orderNum=3, createTime=Tue Mar 10 05:51:28 CST 2020, modifiedTime=Sat Mar 14 05:09:56 CST 2020, disabled=true, open=0, perms=)]', '127.0.0.1', '2020-05-16 16:37:48', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1699, '系统测试人员', '更新菜单', 937, 'com.coderman.api.system.controller.MenuController.update()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id, menuVO],args:[235, MenuVO(id=235, parentId=1, menuName=角色管理, url=/roles, icon=el-icon-postcard, type=0, orderNum=3, createTime=Tue Mar 10 05:51:28 CST 2020, modifiedTime=Sat May 16 16:37:48 CST 2020, disabled=false, open=0, perms=)]', '127.0.0.1', '2020-05-16 16:37:58', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1700, '系统测试人员', '更新菜单', 37, 'com.coderman.api.system.controller.MenuController.update()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id, menuVO],args:[307, MenuVO(id=307, parentId=5, menuName=操作日志, url=/logs, icon=el-icon-edit, type=0, orderNum=1, createTime=Sat Apr 04 19:04:53 CST 2020, modifiedTime=Sat Apr 04 20:01:07 CST 2020, disabled=false, open=1, perms=)]', '127.0.0.1', '2020-05-16 16:39:18', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1701, '系统测试人员', '更新菜单', 43, 'com.coderman.api.system.controller.MenuController.update()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id, menuVO],args:[1, MenuVO(id=1, parentId=0, menuName=系统管理, url=, icon=el-icon-setting, type=0, orderNum=1, createTime=Sat Mar 07 17:41:30 CST 2020, modifiedTime=Sat May 16 16:37:37 CST 2020, disabled=false, open=0, perms=null)]', '127.0.0.1', '2020-05-16 16:54:32', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1702, '系统测试人员', '更新菜单', 148, 'com.coderman.api.system.controller.MenuController.update()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id, menuVO],args:[297, MenuVO(id=297, parentId=295, menuName=监控管理, url=, icon=el-icon-warning, type=0, orderNum=1, createTime=Sun Mar 22 02:47:10 CST 2020, modifiedTime=Sun Mar 22 02:47:10 CST 2020, disabled=false, open=0, perms=)]', '127.0.0.1', '2020-05-16 16:54:39', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1703, '系统测试人员', '更新菜单', 28, 'com.coderman.api.system.controller.MenuController.update()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id, menuVO],args:[295, MenuVO(id=295, parentId=0, menuName=其他管理, url=, icon=el-icon-s-marketing, type=0, orderNum=5, createTime=Sun Mar 22 01:21:56 CST 2020, modifiedTime=Thu May 07 19:43:30 CST 2020, disabled=false, open=0, perms=)]', '127.0.0.1', '2020-05-16 16:54:43', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1704, '系统测试人员', '更新菜单', 41, 'com.coderman.api.system.controller.MenuController.update()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id, menuVO],args:[1, MenuVO(id=1, parentId=0, menuName=系统管理, url=, icon=el-icon-setting, type=0, orderNum=1, createTime=Sat Mar 07 17:41:30 CST 2020, modifiedTime=Sat May 16 16:54:32 CST 2020, disabled=false, open=1, perms=null)]', '127.0.0.1', '2020-05-16 16:54:50', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1705, '系统测试人员', '更新菜单', 129, 'com.coderman.api.system.controller.MenuController.update()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id, menuVO],args:[316, MenuVO(id=316, parentId=229, menuName=物资库存, url=/stocks, icon=el-icon-tickets, type=0, orderNum=5, createTime=Thu Apr 16 08:45:08 CST 2020, modifiedTime=Thu Apr 16 08:45:08 CST 2020, disabled=false, open=0, perms=)]', '127.0.0.1', '2020-05-16 16:56:53', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1706, '系统测试人员', '更新菜单', 172, 'com.coderman.api.system.controller.MenuController.update()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id, menuVO],args:[318, MenuVO(id=318, parentId=295, menuName=图标管理, url=/icons, icon=el-icon-star-off, type=0, orderNum=2, createTime=Tue Apr 21 12:06:33 CST 2020, modifiedTime=Sat May 16 11:57:31 CST 2020, disabled=false, open=1, perms=)]', '127.0.0.1', '2020-05-16 17:07:35', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1707, '系统测试人员', '更新菜单', 161, 'com.coderman.api.system.controller.MenuController.update()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id, menuVO],args:[312, MenuVO(id=312, parentId=0, menuName=业务管理, url=null, icon=el-icon-s-goods, type=0, orderNum=2, createTime=Sun Apr 05 10:19:07 CST 2020, modifiedTime=Thu May 07 19:35:11 CST 2020, disabled=false, open=0, perms=null)]', '127.0.0.1', '2020-05-16 17:09:22', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1708, '系统测试人员', '物资资料更新', 127, 'com.coderman.api.biz.controller.ProductController.update()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id, productVO],args:[17, ProductVO(id=17, pNum=3DFC8EA0-6, name=N95口罩, model=10个/包, unit=包, remark=救命的口罩, sort=1, createTime=Wed Mar 18 00:00:00 CST 2020, modifiedTime=Sun Apr 26 00:00:00 CST 2020, imageUrl=group1/M00/00/00/rBofMl5yGl2AR3rCAAArOxrzeKs522.jpg, categoryKeys=[20, 23, 25], oneCategoryId=20, twoCategoryId=23, threeCategoryId=25, status=0)]', '127.0.0.1', '2020-05-16 17:25:20', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1709, '系统测试人员', '物资资料添加', 308, 'com.coderman.api.biz.controller.ProductController.add()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[productVO],args:[ProductVO(id=null, pNum=null, name=23423424, model=23, unit=23, remark=2323, sort=1, createTime=null, modifiedTime=null, imageUrl=group1/M00/00/02/rBofMl6_sZeARmYyAACRJDOLg9A306.jpg, categoryKeys=[33, 34, 37], oneCategoryId=null, twoCategoryId=null, threeCategoryId=null, status=null)]', '127.0.0.1', '2020-05-16 17:25:53', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1710, '系统测试人员', '物资资料回收', 192, 'com.coderman.api.biz.controller.ProductController.remove()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id],args:[17]', '127.0.0.1', '2020-05-16 17:26:59', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1711, '系统测试人员', '物资资料恢复', 153, 'com.coderman.api.biz.controller.ProductController.back()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id],args:[17]', '127.0.0.1', '2020-05-16 17:27:03', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1712, '系统测试人员', '入库单回收', 145, 'com.coderman.api.biz.controller.InStockController.remove()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id],args:[88]', '127.0.0.1', '2020-05-16 17:31:56', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1714, '系统测试人员', '入库单回收', 223, 'com.coderman.api.biz.controller.InStockController.remove()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id],args:[89]', '127.0.0.1', '2020-05-16 17:32:26', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1715, '系统测试人员', '入库单删除', 1275, 'com.coderman.api.biz.controller.InStockController.delete()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id],args:[89]', '127.0.0.1', '2020-05-16 17:32:35', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1716, '系统测试人员', '入库单删除', 659, 'com.coderman.api.biz.controller.InStockController.delete()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id],args:[88]', '127.0.0.1', '2020-05-16 17:32:38', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1717, '系统测试人员', '入库单申请', 1077, 'com.coderman.api.biz.controller.InStockController.addIntoStock()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[inStockVO],args:[InStockVO(id=null, inNum=null, type=1, operator=null, supplierId=15, supplierName=null, createTime=null, modified=null, productNumber=null, phone=null, remark=2222222, products=[{productId=17, productNumber=2}, {productId=25, productNumber=2}], status=null, startTime=null, endTime=null)]', '127.0.0.1', '2020-05-16 17:37:12', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1718, 'zhangyukang', '物资分类更新', 244, 'com.coderman.api.biz.controller.ProductCategoryController.update()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id, productCategoryVO],args:[33, ProductCategoryVO(id=33, name=交通运输, remark=交通运输。。。。, sort=1, createTime=Tue Mar 17 00:00:00 CST 2020, modifiedTime=Sat Apr 11 00:00:00 CST 2020, pid=0)]', '127.0.0.1', '2020-05-16 17:43:39', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1719, 'zhangyukang', '物资分类删除', 87, 'com.coderman.api.biz.controller.ProductCategoryController.delete()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id],args:[60]', '127.0.0.1', '2020-05-16 17:44:34', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1720, 'zhangyukang', '物资分类添加', 269, 'com.coderman.api.biz.controller.ProductCategoryController.add()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[productCategoryVO],args:[ProductCategoryVO(id=null, name=esttet, remark=tewt, sort=1, createTime=null, modifiedTime=null, pid=59)]', '127.0.0.1', '2020-05-16 17:44:44', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1721, 'zhangyukang', '更新角色', 701, 'com.coderman.api.system.controller.RoleController.update()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id, roleVO],args:[140, RoleVO(id=140, roleName=部门主任, remark=系主任，管理院系。, createTime=Sun Mar 15 00:00:00 CST 2020, modifiedTime=Sun Mar 15 10:49:20 CST 2020, status=null)]', '127.0.0.1', '2020-05-16 18:33:28', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1722, '系统测试人员', '批量删除登入日志', 423, 'com.coderman.api.system.controller.LoginLogController.batchDelete()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[ids],args:[1532]', '127.0.0.1', '2020-05-16 18:54:03', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1723, '系统测试人员', '入库单回收', 1152, 'com.coderman.api.biz.controller.InStockController.remove()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id],args:[83]', '127.0.0.1', '2020-05-18 09:09:39', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1724, 'zhangyukang', '健康上报', 1062, 'com.coderman.api.biz.controller.HealthController.report()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[healthVO],args:[HealthVO(id=null, address=天津市/市辖区/和平区, userId=null, situation=0, touch=0, passby=0, reception=0, createTime=null)]', '127.0.0.1', '2020-05-18 09:13:07', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1725, '系统测试人员', '健康上报', 369, 'com.coderman.api.biz.controller.HealthController.report()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[healthVO],args:[HealthVO(id=null, address=天津市/市辖区/南开区, userId=null, situation=0, touch=1, passby=1, reception=1, createTime=null)]', '127.0.0.1', '2020-05-18 09:22:57', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1726, 'zhangyukang', '健康上报', 719, 'com.coderman.api.biz.controller.HealthController.report()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[healthVO],args:[HealthVO(id=null, address=天津市/市辖区/和平区, userId=null, situation=0, touch=1, passby=1, reception=1, createTime=null)]', '127.0.0.1', '2020-05-18 09:33:33', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1727, 'zhangyukang', '分配角色', 218, 'com.coderman.api.system.controller.UserController.assignRoles()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id, rids],args:[54, [Ljava.lang.Long;@1fcc06a0]', '127.0.0.1', '2020-05-18 09:49:52', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1728, 'zhangyukang', '删除用户', 99, 'com.coderman.api.system.controller.UserController.delete()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id],args:[54]', '127.0.0.1', '2020-05-18 09:50:05', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1729, 'zhangyukang', '角色授权', 115, 'com.coderman.api.system.controller.RoleController.authority()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id, mids],args:[105, [Ljava.lang.Long;@1f3fe549]', '127.0.0.1', '2020-05-18 09:50:23', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1730, 'zhangyukang', '删除角色', 43, 'com.coderman.api.system.controller.RoleController.delete()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id],args:[105]', '127.0.0.1', '2020-05-18 09:50:32', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1731, 'zhangyukang', '角色授权', 264, 'com.coderman.api.system.controller.RoleController.authority()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id, mids],args:[125, [Ljava.lang.Long;@2515724e]', '127.0.0.1', '2020-05-18 09:51:01', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1732, 'zhangyukang', '分配角色', 22, 'com.coderman.api.system.controller.UserController.assignRoles()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id, rids],args:[184, [Ljava.lang.Long;@54e4e06e]', '127.0.0.1', '2020-05-18 09:51:30', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1733, '系统测试人员', '分配角色', 121, 'com.coderman.api.system.controller.UserController.assignRoles()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id, rids],args:[6, [Ljava.lang.Long;@7720e8b9]', '127.0.0.1', '2020-05-18 09:53:28', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1734, '系统测试人员', '用户|禁用/启用', 103, 'com.coderman.api.system.controller.UserController.updateStatus()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id, status],args:[42, false]', '127.0.0.1', '2020-05-18 09:56:32', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1735, '系统测试人员', '用户|禁用/启用', 45, 'com.coderman.api.system.controller.UserController.updateStatus()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id, status],args:[6, true]', '127.0.0.1', '2020-05-18 09:57:13', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1736, '系统测试人员', '用户|禁用/启用', 32, 'com.coderman.api.system.controller.UserController.updateStatus()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id, status],args:[42, true]', '127.0.0.1', '2020-05-18 09:57:16', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1737, '系统测试人员', '用户|禁用/启用', 58, 'com.coderman.api.system.controller.UserController.updateStatus()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id, status],args:[6, false]', '127.0.0.1', '2020-05-18 09:58:09', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1738, '系统测试人员', '用户|禁用/启用', 20, 'com.coderman.api.system.controller.UserController.updateStatus()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id, status],args:[42, false]', '127.0.0.1', '2020-05-18 09:58:12', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1739, '系统测试人员', '用户|禁用/启用', 56, 'com.coderman.api.system.controller.UserController.updateStatus()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id, status],args:[6, true]', '127.0.0.1', '2020-05-18 09:58:16', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1740, '系统测试人员', '用户|禁用/启用', 89, 'com.coderman.api.system.controller.UserController.updateStatus()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id, status],args:[56, true]', '127.0.0.1', '2020-05-18 09:58:18', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1741, '系统测试人员', '用户|禁用/启用', 20, 'com.coderman.api.system.controller.UserController.updateStatus()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id, status],args:[55, true]', '127.0.0.1', '2020-05-18 09:58:19', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1742, '系统测试人员', '用户|禁用/启用', 29, 'com.coderman.api.system.controller.UserController.updateStatus()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id, status],args:[6, false]', '127.0.0.1', '2020-05-18 09:58:26', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1743, '系统测试人员', '用户|禁用/启用', 157, 'com.coderman.api.system.controller.UserController.updateStatus()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id, status],args:[6, true]', '127.0.0.1', '2020-05-18 09:58:28', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1744, '系统测试人员', '用户|禁用/启用', 166, 'com.coderman.api.system.controller.UserController.updateStatus()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id, status],args:[6, true]', '127.0.0.1', '2020-05-18 09:58:28', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1745, '系统测试人员', '用户|禁用/启用', 23, 'com.coderman.api.system.controller.UserController.updateStatus()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id, status],args:[6, false]', '127.0.0.1', '2020-05-18 09:58:29', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1746, '系统测试人员', '用户|禁用/启用', 438, 'com.coderman.api.system.controller.UserController.updateStatus()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id, status],args:[6, false]', '127.0.0.1', '2020-05-18 09:58:29', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1747, '系统测试人员', '用户|禁用/启用', 52, 'com.coderman.api.system.controller.UserController.updateStatus()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id, status],args:[6, true]', '127.0.0.1', '2020-05-18 09:58:29', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1748, '系统测试人员', '用户|禁用/启用', 52, 'com.coderman.api.system.controller.UserController.updateStatus()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id, status],args:[6, true]', '127.0.0.1', '2020-05-18 09:58:29', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1749, '系统测试人员', '用户|禁用/启用', 24, 'com.coderman.api.system.controller.UserController.updateStatus()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id, status],args:[6, false]', '127.0.0.1', '2020-05-18 09:58:29', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1750, '系统测试人员', '用户|禁用/启用', 26, 'com.coderman.api.system.controller.UserController.updateStatus()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id, status],args:[6, false]', '127.0.0.1', '2020-05-18 09:59:39', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1751, '系统测试人员', '用户|禁用/启用', 43, 'com.coderman.api.system.controller.UserController.updateStatus()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id, status],args:[55, false]', '127.0.0.1', '2020-05-18 10:01:13', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1752, '系统测试人员', '用户|禁用/启用', 590, 'com.coderman.api.system.controller.UserController.updateStatus()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id, status],args:[55, true]', '127.0.0.1', '2020-05-18 10:01:17', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1753, '系统测试人员', '用户|禁用/启用', 28, 'com.coderman.api.system.controller.UserController.updateStatus()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id, status],args:[55, false]', '127.0.0.1', '2020-05-18 10:01:20', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1754, '系统测试人员', '用户|禁用/启用', 42, 'com.coderman.api.system.controller.UserController.updateStatus()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id, status],args:[55, true]', '127.0.0.1', '2020-05-18 10:01:21', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1755, '系统测试人员', '用户|禁用/启用', 394, 'com.coderman.api.system.controller.UserController.updateStatus()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id, status],args:[55, false]', '127.0.0.1', '2020-05-18 10:01:23', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1756, '系统测试人员', '用户|禁用/启用', 20, 'com.coderman.api.system.controller.UserController.updateStatus()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id, status],args:[56, false]', '127.0.0.1', '2020-05-18 10:01:47', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1757, '系统测试人员', '用户|禁用/启用', 23, 'com.coderman.api.system.controller.UserController.updateStatus()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id, status],args:[56, true]', '127.0.0.1', '2020-05-18 10:01:48', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1758, '系统测试人员', '更新用户', 157, 'com.coderman.api.system.controller.UserController.update()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id, userEditVO],args:[6, UserEditVO(id=6, username=Georgie, nickname=zhangyu, email=Georgie@qq.com, phoneNumber=17766666666, sex=0, birth=Wed Mar 25 00:00:00 CST 2020, departmentId=14)]', '127.0.0.1', '2020-05-18 10:01:53', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1759, '系统测试人员', '用户|禁用/启用', 100, 'com.coderman.api.system.controller.UserController.updateStatus()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id, status],args:[56, false]', '127.0.0.1', '2020-05-18 10:02:32', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1760, '系统测试人员', '用户|禁用/启用', 26, 'com.coderman.api.system.controller.UserController.updateStatus()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id, status],args:[42, true]', '127.0.0.1', '2020-05-18 10:02:36', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1775, '系统测试人员', '分配角色', 204, 'com.coderman.api.system.controller.UserController.assignRoles()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id, rids],args:[6, [Ljava.lang.Long;@1b381a9f]', '127.0.0.1', '2020-05-18 10:07:30', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1776, '系统测试人员', '用户|禁用/启用', 30, 'com.coderman.api.system.controller.UserController.updateStatus()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id, status],args:[6, true]', '127.0.0.1', '2020-05-18 10:07:41', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1777, '系统测试人员', '用户|禁用/启用', 27, 'com.coderman.api.system.controller.UserController.updateStatus()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id, status],args:[6, false]', '127.0.0.1', '2020-05-18 10:07:44', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1778, '系统测试人员', '更新用户', 40, 'com.coderman.api.system.controller.UserController.update()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id, userEditVO],args:[123, UserEditVO(id=123, username=ad96c3, nickname=23131, email=40e2f@qq.com, phoneNumber=15078454141, sex=1, birth=Mon Mar 09 00:00:00 CST 2020, departmentId=1)]', '127.0.0.1', '2020-05-18 10:09:00', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1779, '系统测试人员', '角色授权', 3, 'com.coderman.api.system.controller.RoleController.authority()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id, mids],args:[0, [Ljava.lang.Long;@1b59edb1]', '127.0.0.1', '2020-05-18 10:09:18', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1780, '系统测试人员', '分配角色', 56, 'com.coderman.api.system.controller.UserController.assignRoles()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id, rids],args:[6, [Ljava.lang.Long;@121ef124]', '127.0.0.1', '2020-05-18 10:09:26', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1781, '系统测试人员', '用户|禁用/启用', 28, 'com.coderman.api.system.controller.UserController.updateStatus()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id, status],args:[6, true]', '127.0.0.1', '2020-05-18 10:09:28', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1782, '系统测试人员', '用户|禁用/启用', 109, 'com.coderman.api.system.controller.UserController.updateStatus()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id, status],args:[6, false]', '127.0.0.1', '2020-05-18 10:09:33', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1783, '系统测试人员', '用户|禁用/启用', 50, 'com.coderman.api.system.controller.UserController.updateStatus()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id, status],args:[186, true]', '127.0.0.1', '2020-05-18 10:09:43', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1784, '系统测试人员', '入库单申请', 238, 'com.coderman.api.biz.controller.InStockController.addIntoStock()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[inStockVO],args:[InStockVO(id=null, inNum=null, type=2, operator=null, supplierId=15, supplierName=null, createTime=null, modified=null, productNumber=null, phone=null, remark=2342424, products=[{productId=17, productNumber=3}, {productId=25, productNumber=3}, {productId=46, productNumber=3}, {productId=19, productNumber=3}, {productId=32, productNumber=10}, {productId=34, productNumber=3}], status=null, startTime=null, endTime=null)]', '127.0.0.1', '2020-05-18 10:11:00', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1785, '系统测试人员', '入库单审核', 111, 'com.coderman.api.biz.controller.InStockController.publish()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id],args:[91]', '127.0.0.1', '2020-05-18 10:11:09', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1786, '系统测试人员', '入库单审核', 59, 'com.coderman.api.biz.controller.InStockController.publish()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id],args:[90]', '127.0.0.1', '2020-05-18 10:11:11', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1787, '系统测试人员', '入库单申请', 173, 'com.coderman.api.biz.controller.InStockController.addIntoStock()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[inStockVO],args:[InStockVO(id=null, inNum=null, type=1, operator=null, supplierId=15, supplierName=null, createTime=null, modified=null, productNumber=null, phone=null, remark=222222, products=[{productId=17, productNumber=3}], status=null, startTime=null, endTime=null)]', '127.0.0.1', '2020-05-18 10:41:55', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1788, '系统测试人员', '入库单审核', 28, 'com.coderman.api.biz.controller.InStockController.publish()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id],args:[92]', '127.0.0.1', '2020-05-18 10:42:04', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1789, '系统测试人员', '入库单申请', 559, 'com.coderman.api.biz.controller.InStockController.addIntoStock()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[inStockVO],args:[InStockVO(id=null, inNum=null, type=1, operator=null, supplierId=15, supplierName=null, createTime=null, modified=null, productNumber=null, phone=null, remark=2222222, products=[{productId=17, productNumber=2}, {productId=25, productNumber=2}], status=null, startTime=null, endTime=null)]', '127.0.0.1', '2020-05-18 11:01:09', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1790, '系统测试人员', '入库单审核', 76, 'com.coderman.api.biz.controller.InStockController.publish()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id],args:[93]', '127.0.0.1', '2020-05-18 11:01:16', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1791, '系统测试人员', '入库单申请', 147, 'com.coderman.api.biz.controller.InStockController.addIntoStock()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[inStockVO],args:[InStockVO(id=null, inNum=null, type=4, operator=null, supplierId=null, supplierName=null, createTime=null, modified=null, productNumber=null, phone=15214524587, remark=2222222, products=[{productId=17, productNumber=2}, {productId=25, productNumber=2}], status=null, startTime=null, endTime=null)]', '127.0.0.1', '2020-05-18 11:04:13', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1792, '系统测试人员', '入库单审核', 124, 'com.coderman.api.biz.controller.InStockController.publish()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id],args:[94]', '127.0.0.1', '2020-05-18 11:04:53', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1793, '系统测试人员', '入库单回收', 116, 'com.coderman.api.biz.controller.InStockController.remove()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id],args:[94]', '127.0.0.1', '2020-05-18 11:18:16', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1794, '系统测试人员', '入库单删除', 77, 'com.coderman.api.biz.controller.InStockController.delete()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id],args:[94]', '127.0.0.1', '2020-05-18 11:18:22', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1795, '系统测试人员', '入库单删除', 49, 'com.coderman.api.biz.controller.InStockController.delete()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id],args:[83]', '127.0.0.1', '2020-05-18 11:18:24', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1796, '系统测试人员', '入库单申请', 92, 'com.coderman.api.biz.controller.InStockController.addIntoStock()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[inStockVO],args:[InStockVO(id=null, inNum=null, type=1, operator=null, supplierId=null, supplierName=null, createTime=null, modified=null, productNumber=null, phone=15078414125, remark=3243242, products=[{productId=17, productNumber=3}], status=null, startTime=null, endTime=null)]', '127.0.0.1', '2020-05-18 11:24:36', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1797, '系统测试人员', '入库单申请', 419, 'com.coderman.api.biz.controller.InStockController.addIntoStock()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[inStockVO],args:[InStockVO(id=null, inNum=null, type=1, operator=null, supplierId=null, supplierName=null, createTime=null, modified=null, productNumber=null, remark=44444, products=[{productId=17, productNumber=4}, {productId=25, productNumber=4}], status=null, startTime=null, endTime=null, name=北京人民大会堂, address=北京市/市辖区/朝阳区, email=xiong@qq.com, phone=15079437282, sort=1, contact=熊老板)]', '127.0.0.1', '2020-05-18 11:38:04', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1798, '系统测试人员', '入库单申请', 249, 'com.coderman.api.biz.controller.InStockController.addIntoStock()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[inStockVO],args:[InStockVO(id=null, inNum=null, type=2, operator=null, supplierId=null, supplierName=null, createTime=null, modified=null, productNumber=null, remark=33333, products=[{productId=25, productNumber=3}, {productId=46, productNumber=3}], status=null, startTime=null, endTime=null, name=xixiixxxxi, address=河北省/秦皇岛市/北戴河区, email=chrome@qq.com, phone=15079437282, sort=1, contact=perterchro)]', '127.0.0.1', '2020-05-18 11:43:49', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1799, '系统测试人员', '入库单申请', 252, 'com.coderman.api.biz.controller.InStockController.addIntoStock()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[inStockVO],args:[InStockVO(id=null, inNum=null, type=1, operator=null, supplierId=null, supplierName=null, createTime=null, modified=null, productNumber=null, remark=23432424, products=[{productId=17, productNumber=1}, {productId=25, productNumber=1}], status=null, startTime=null, endTime=null, name=aloooodf, address=山西省/晋城市/陵川县, email=justiner@qq.com, phone=15245745454, sort=1, contact=justiner)]', '127.0.0.1', '2020-05-18 12:21:29', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1800, '系统测试人员', '入库单审核', 65, 'com.coderman.api.biz.controller.InStockController.publish()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id],args:[100]', '127.0.0.1', '2020-05-18 12:21:40', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1801, '系统测试人员', '入库单审核', 52, 'com.coderman.api.biz.controller.InStockController.publish()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id],args:[99]', '127.0.0.1', '2020-05-18 12:21:41', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1802, '系统测试人员', '入库单申请', 350, 'com.coderman.api.biz.controller.InStockController.addIntoStock()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[inStockVO],args:[InStockVO(id=null, inNum=null, type=1, operator=null, supplierId=null, supplierName=null, createTime=null, modified=null, productNumber=null, remark=454545454545, products=[{productId=17, productNumber=4}, {productId=25, productNumber=4}, {productId=46, productNumber=4}], status=null, startTime=null, endTime=null, name=HHH, address=河北省/秦皇岛市/长安区, email=HHH@qq.com, phone=15079437282, sort=1, contact=HHH)]', '127.0.0.1', '2020-05-18 13:16:28', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1803, '系统测试人员', '入库单审核', 57, 'com.coderman.api.biz.controller.InStockController.publish()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id],args:[101]', '127.0.0.1', '2020-05-18 13:16:38', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1804, '系统测试人员', '入库单申请', 894, 'com.coderman.api.biz.controller.InStockController.addIntoStock()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[inStockVO],args:[InStockVO(id=null, inNum=null, type=1, operator=null, supplierId=17, supplierName=null, createTime=null, modified=null, productNumber=null, remark=33333, products=[{productId=17, productNumber=3}, {productId=25, productNumber=3}, {productId=46, productNumber=3}, {productId=19, productNumber=3}, {productId=32, productNumber=3}, {productId=34, productNumber=3}], status=null, startTime=null, endTime=null, name=null, address=undefined/undefined/undefined, email=null, phone=null, sort=null, contact=null)]', '127.0.0.1', '2020-05-18 13:18:41', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1805, '系统测试人员', '入库单审核', 1044, 'com.coderman.api.biz.controller.InStockController.publish()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id],args:[102]', '127.0.0.1', '2020-05-18 13:18:51', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1806, '系统测试人员', '入库单申请', 180, 'com.coderman.api.biz.controller.InStockController.addIntoStock()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[inStockVO],args:[InStockVO(id=null, inNum=null, type=1, operator=null, supplierId=null, supplierName=null, createTime=null, modified=null, productNumber=null, remark=222222, products=[{productId=17, productNumber=2}, {productId=25, productNumber=2}, {productId=46, productNumber=2}], status=null, startTime=null, endTime=null, name=PuPuPu, address=山西省/阳泉市/平定县, email=124545454@qq.com, phone=15254541241, sort=1, contact=封小新)]', '127.0.0.1', '2020-05-18 13:42:29', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1807, '系统测试人员', '入库单审核', 126, 'com.coderman.api.biz.controller.InStockController.publish()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id],args:[103]', '127.0.0.1', '2020-05-18 13:42:41', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1808, '系统测试人员', '物资来源更新', 42, 'com.coderman.api.biz.controller.SupplierController.update()\n\nresponse:{\"code\":200,\"msg\":\"更新来源成功\"}', 'paramName:[id, supplierVO],args:[22, SupplierVO(id=22, name=PuPuPu34, address=山西省/阳泉市/平定县, email=124545454@qq.com, phone=15254541241, sort=1, createTime=Mon May 18 13:42:29 CST 2020, modifiedTime=Mon May 18 00:00:00 CST 2020, contact=封小新)]', '127.0.0.1', '2020-05-18 13:43:05', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1809, '系统测试人员', '入库单删除', 373, 'com.coderman.api.biz.controller.InStockController.delete()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id],args:[98]', '127.0.0.1', '2020-05-18 13:50:08', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1810, '系统测试人员', '入库单删除', 73, 'com.coderman.api.biz.controller.InStockController.delete()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id],args:[97]', '127.0.0.1', '2020-05-18 13:50:10', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1811, '系统测试人员', '入库单删除', 40, 'com.coderman.api.biz.controller.InStockController.delete()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id],args:[96]', '127.0.0.1', '2020-05-18 13:50:11', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1812, '系统测试人员', '入库单删除', 20, 'com.coderman.api.biz.controller.InStockController.delete()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id],args:[95]', '127.0.0.1', '2020-05-18 13:50:13', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1813, 'zhangyukang', '入库单申请', 579, 'com.coderman.api.biz.controller.InStockController.addIntoStock()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[inStockVO],args:[InStockVO(id=null, inNum=null, type=1, operator=null, supplierId=15, supplierName=null, createTime=null, modified=null, productNumber=null, remark=432424, products=[{productId=17, productNumber=3}, {productId=25, productNumber=3}], status=null, startTime=null, endTime=null, name=null, address=undefined/undefined/undefined, email=null, phone=null, sort=null, contact=null)]', '127.0.0.1', '2020-05-24 21:46:06', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1814, 'zhangyukang', '入库单审核', 165, 'com.coderman.api.biz.controller.InStockController.publish()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id],args:[104]', '127.0.0.1', '2020-05-24 21:46:16', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1815, 'zhangyukang', '入库单申请', 1031, 'com.coderman.api.biz.controller.InStockController.addIntoStock()\n\nresponse:{\"code\":-1,\"msg\":\"邮箱不能为空\"}', 'paramName:[inStockVO],args:[InStockVO(id=null, inNum=null, type=2, operator=null, supplierId=null, supplierName=null, createTime=null, modified=null, productNumber=null, remark=43242342424, products=[{productId=43, productNumber=1}, {productId=57, productNumber=1}, {productId=45, productNumber=1}, {productId=58, productNumber=1}, {productId=49, productNumber=1}, {productId=44, productNumber=1}], status=null, startTime=null, endTime=null, name=23424, address=天津市/市辖区/南开区, email=null, phone=15079437282, sort=1, contact=4234324)]', '127.0.0.1', '2020-05-25 10:23:37', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1816, 'zhangyukang', '入库单申请', 369, 'com.coderman.api.biz.controller.InStockController.addIntoStock()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[inStockVO],args:[InStockVO(id=null, inNum=null, type=1, operator=null, supplierId=15, supplierName=null, createTime=null, modified=null, productNumber=null, remark=32432424, products=[{productId=17, productNumber=1}, {productId=25, productNumber=1}, {productId=46, productNumber=1}, {productId=19, productNumber=1}, {productId=32, productNumber=1}, {productId=34, productNumber=1}], status=null, startTime=null, endTime=null, name=null, address=undefined/undefined/undefined, email=null, phone=null, sort=null, contact=null)]', '127.0.0.1', '2020-05-25 10:27:06', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1817, 'zhangyukang', '发放单申请', 72, 'com.coderman.api.biz.controller.OutStockController.addOutStock()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[outStockVO],args:[OutStockVO(id=null, outNum=null, type=2, operator=null, createTime=null, productNumber=null, consumerId=8, remark=12ewreqrewrwr, status=null, consumerName=null, phone=null, priority=null, products=[{productId=43, productNumber=1}, {productId=57, productNumber=4}, {productId=45, productNumber=5}])]', '127.0.0.1', '2020-05-25 10:33:23', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1818, 'zhangyukang', '发放单申请', 39382, 'com.coderman.api.biz.controller.OutStockController.addOutStock()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[outStockVO],args:[OutStockVO(id=null, outNum=null, type=2, operator=null, createTime=null, productNumber=null, consumerId=9, remark=234234234324, status=null, consumerName=null, phone=null, priority=null, products=[{productId=43, productNumber=1}, {productId=57, productNumber=2}, {productId=45, productNumber=3}, {productId=58, productNumber=2}, {productId=49, productNumber=2}, {productId=44, productNumber=3}])]', '127.0.0.1', '2020-05-25 10:34:22', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1819, 'zhangyukang', '发放单申请', 76, 'com.coderman.api.biz.controller.OutStockController.addOutStock()\n\nresponse:{\"code\":-1,\"msg\":\"物资去向名不能为空\"}', 'paramName:[outStockVO],args:[OutStockVO(id=null, outNum=null, type=null, operator=null, createTime=null, productNumber=null, consumerId=null, remark=234234324324, status=null, consumerName=null, phone=15079437282, priority=2, products=[{productId=43, productNumber=2}, {productId=57, productNumber=2}, {productId=45, productNumber=2}, {productId=58, productNumber=2}, {productId=49, productNumber=2}, {productId=44, productNumber=2}])]', '127.0.0.1', '2020-05-25 10:52:34', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1820, 'zhangyukang', '发放单申请', 1, 'com.coderman.api.biz.controller.OutStockController.addOutStock()\n\nresponse:{\"code\":-1,\"msg\":\"物资去向名不能为空\"}', 'paramName:[outStockVO],args:[OutStockVO(id=null, outNum=null, type=null, operator=null, createTime=null, productNumber=null, consumerId=null, remark=234234324324, status=null, consumerName=null, phone=15079437282, priority=2, products=[{productId=43, productNumber=2}, {productId=57, productNumber=2}, {productId=45, productNumber=2}, {productId=58, productNumber=2}, {productId=49, productNumber=2}, {productId=44, productNumber=2}])]', '127.0.0.1', '2020-05-25 10:52:52', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1821, 'zhangyukang', '发放单申请', 58, 'com.coderman.api.biz.controller.OutStockController.addOutStock()\n\nresponse:{\"code\":-1,\"msg\":\"联系人不能为空\"}', 'paramName:[outStockVO],args:[OutStockVO(id=null, outNum=null, type=null, operator=null, createTime=null, productNumber=null, consumerId=null, remark=2344234324, status=null, name=test, phone=15079437282, priority=2, products=[{productId=43, productNumber=1}, {productId=57, productNumber=1}, {productId=45, productNumber=1}, {productId=58, productNumber=1}, {productId=49, productNumber=1}, {productId=44, productNumber=1}])]', '127.0.0.1', '2020-05-25 10:56:25', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1822, 'zhangyukang', '发放单申请', 65, 'com.coderman.api.biz.controller.OutStockController.addOutStock()\n\nresponse:{\"code\":-1,\"msg\":\"地址不能为空\"}', 'paramName:[outStockVO],args:[OutStockVO(id=null, outNum=null, type=null, operator=null, createTime=null, productNumber=null, consumerId=null, remark=2343242424, status=null, name=234324test, phone=15079437282, contact=4324324, priority=1, products=[{productId=43, productNumber=1}, {productId=57, productNumber=1}, {productId=45, productNumber=1}])]', '127.0.0.1', '2020-05-25 10:58:07', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1823, 'zhangyukang', '发放单申请', 1395, 'com.coderman.api.biz.controller.OutStockController.addOutStock()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[outStockVO],args:[OutStockVO(id=null, outNum=null, type=null, operator=null, createTime=null, productNumber=null, priority=1, products=[{productId=43, productNumber=1}, {productId=45, productNumber=1}, {productId=57, productNumber=1}], remark=43242424242, status=null, consumerId=null, name=324234, address=天津市/市辖区/和平区, phone=15079437282, contact=32424, sort=1)]', '127.0.0.1', '2020-05-25 11:00:23', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1824, 'zhangyukang', '发放单申请', 734, 'com.coderman.api.biz.controller.OutStockController.addOutStock()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[outStockVO],args:[OutStockVO(id=null, outNum=null, type=null, operator=null, createTime=null, productNumber=null, priority=1, products=[{productId=57, productNumber=1}, {productId=43, productNumber=1}, {productId=45, productNumber=1}, {productId=58, productNumber=1}], remark=23432424, status=null, consumerId=null, name=test, address=福建省/莆田市/秀屿区, phone=15079437282, contact=testman, sort=2)]', '127.0.0.1', '2020-05-25 11:01:18', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1825, 'zhangyukang', '物资去向更新', 1430, 'com.coderman.api.biz.controller.ConsumerController.update()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id, consumerVO],args:[21, ConsumerVO(id=21, name=test111, address=福建省/莆田市/秀屿区, createTime=Mon May 25 11:01:18 CST 2020, modifiedTime=Mon May 25 11:01:18 CST 2020, phone=15079437282, sort=2, contact=testman)]', '127.0.0.1', '2020-05-25 11:01:55', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1826, 'zhangyukang', '发放单申请', 545, 'com.coderman.api.biz.controller.OutStockController.addOutStock()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[outStockVO],args:[OutStockVO(id=null, outNum=null, type=null, operator=null, createTime=null, productNumber=null, priority=1, products=[{productId=17, productNumber=1}, {productId=18, productNumber=2}, {productId=19, productNumber=4}], remark=2342424, status=null, consumerId=null, name=hemei, address=河北省/唐山市/古冶区, phone=15079437282, contact=hemei, sort=1)]', '127.0.0.1', '2020-05-25 11:32:39', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1827, 'zhangyukang', '发放单申请', 195, 'com.coderman.api.biz.controller.OutStockController.addOutStock()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[outStockVO],args:[OutStockVO(id=null, outNum=null, type=null, operator=null, createTime=null, productNumber=null, priority=4, products=[{productId=17, productNumber=1}, {productId=18, productNumber=1}, {productId=19, productNumber=1}, {productId=20, productNumber=3}, {productId=23, productNumber=1}, {productId=25, productNumber=3}], remark=4545454545, status=null, consumerId=24, name=null, address=undefined/undefined/undefined, phone=null, contact=null, sort=null)]', '127.0.0.1', '2020-05-25 11:41:02', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1828, 'zhangyukang', '入库单审核', 156, 'com.coderman.api.biz.controller.InStockController.publish()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id],args:[105]', '127.0.0.1', '2020-05-25 11:45:10', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1829, 'zhangyukang', '发放单申请', 204, 'com.coderman.api.biz.controller.OutStockController.addOutStock()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[outStockVO],args:[OutStockVO(id=null, outNum=null, type=null, operator=null, createTime=null, productNumber=null, priority=1, products=[{productId=17, productNumber=80}, {productId=18, productNumber=13}], remark=23424234324, status=null, consumerId=9, name=null, address=undefined/undefined/undefined, phone=null, contact=null, sort=null)]', '127.0.0.1', '2020-05-25 12:08:07', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1830, 'zhangyukang', '发放单申请', 677, 'com.coderman.api.biz.controller.OutStockController.addOutStock()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[outStockVO],args:[OutStockVO(id=null, outNum=null, type=null, operator=null, createTime=null, productNumber=null, priority=2, products=[{productId=17, productNumber=1}, {productId=18, productNumber=1}, {productId=19, productNumber=1}, {productId=20, productNumber=1}, {productId=23, productNumber=1}, {productId=25, productNumber=1}], remark=testtest, status=null, consumerId=null, name=武汉汉口校医院, address=天津市/市辖区/和平区, phone=15079437282, contact=李大牛, sort=1)]', '127.0.0.1', '2020-05-25 15:46:07', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1831, 'zhangyukang', '发放单申请', 1225, 'com.coderman.api.biz.controller.OutStockController.addOutStock()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[outStockVO],args:[OutStockVO(id=null, outNum=null, type=null, operator=null, createTime=null, productNumber=null, priority=1, products=[{productId=17, productNumber=2}, {productId=18, productNumber=2}, {productId=19, productNumber=3}], remark=324242424, status=null, consumerId=26, name=null, address=undefined/undefined/undefined, phone=null, contact=null, sort=null)]', '127.0.0.1', '2020-05-25 15:57:12', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1832, 'zhangyukang', '发放单回收', 795, 'com.coderman.api.biz.controller.OutStockController.remove()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id],args:[2]', '127.0.0.1', '2020-05-25 16:14:28', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1833, 'zhangyukang', '发放单恢复', 385, 'com.coderman.api.biz.controller.OutStockController.back()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id],args:[2]', '127.0.0.1', '2020-05-25 16:18:58', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1834, 'zhangyukang', '发放单回收', 95, 'com.coderman.api.biz.controller.OutStockController.remove()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id],args:[2]', '127.0.0.1', '2020-05-25 16:19:03', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1835, 'zhangyukang', '发放单回收', 390, 'com.coderman.api.biz.controller.OutStockController.remove()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id],args:[1]', '127.0.0.1', '2020-05-25 16:19:05', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1836, 'zhangyukang', '发放单恢复', 26, 'com.coderman.api.biz.controller.OutStockController.back()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id],args:[2]', '127.0.0.1', '2020-05-25 16:19:09', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1837, 'zhangyukang', '发放单恢复', 15, 'com.coderman.api.biz.controller.OutStockController.back()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id],args:[1]', '127.0.0.1', '2020-05-25 16:19:10', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1838, 'zhangyukang', '发放单删除', 235, 'com.coderman.api.biz.controller.OutStockController.delete()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id],args:[3]', '127.0.0.1', '2020-05-25 17:03:01', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1839, 'zhangyukang', '发放单回收', 28, 'com.coderman.api.biz.controller.OutStockController.remove()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id],args:[8]', '127.0.0.1', '2020-05-25 17:03:28', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1840, 'zhangyukang', '发放单删除', 43, 'com.coderman.api.biz.controller.OutStockController.delete()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id],args:[8]', '127.0.0.1', '2020-05-25 17:03:39', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1841, 'zhangyukang', '发放单申请', 1355, 'com.coderman.api.biz.controller.OutStockController.addOutStock()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[outStockVO],args:[OutStockVO(id=null, outNum=null, type=null, operator=null, createTime=null, productNumber=null, priority=1, products=[{productId=17, productNumber=30}], remark=3434343, status=null, consumerId=9, name=null, address=undefined/undefined/undefined, phone=null, contact=null, sort=null)]', '127.0.0.1', '2020-05-26 09:32:24', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1842, 'zhangyukang', '入库单审核', 662, 'com.coderman.api.biz.controller.OutStockController.publish()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id],args:[9]', '127.0.0.1', '2020-05-26 09:32:42', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1843, 'zhangyukang', '发放单申请', 513, 'com.coderman.api.biz.controller.OutStockController.addOutStock()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[outStockVO],args:[OutStockVO(id=null, outNum=null, type=null, operator=null, createTime=null, productNumber=null, priority=1, products=[{productId=18, productNumber=13}], remark=23232323, status=null, consumerId=8, name=null, address=undefined/undefined/undefined, phone=null, contact=null, sort=null)]', '127.0.0.1', '2020-05-26 09:34:22', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1844, 'zhangyukang', '入库单审核', 1067, 'com.coderman.api.biz.controller.OutStockController.publish()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id],args:[10]', '127.0.0.1', '2020-05-26 09:34:29', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1845, 'zhangyukang', '入库单申请', 388, 'com.coderman.api.biz.controller.InStockController.addIntoStock()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[inStockVO],args:[InStockVO(id=null, inNum=null, type=1, operator=null, supplierId=17, supplierName=null, createTime=null, modified=null, productNumber=null, remark=2342424, products=[{productId=18, productNumber=10}], status=null, startTime=null, endTime=null, name=null, address=undefined/undefined/undefined, email=null, phone=null, sort=null, contact=null)]', '127.0.0.1', '2020-05-26 09:35:17', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1846, 'zhangyukang', '入库单审核', 633, 'com.coderman.api.biz.controller.InStockController.publish()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id],args:[106]', '127.0.0.1', '2020-05-26 09:35:23', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1847, 'zhangyukang', '入库单审核', 1884, 'com.coderman.api.biz.controller.OutStockController.publish()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id],args:[5]', '127.0.0.1', '2020-05-26 09:37:47', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1848, 'zhangyukang', '入库单审核', 1404, 'com.coderman.api.biz.controller.OutStockController.publish()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id],args:[4]', '127.0.0.1', '2020-05-26 09:38:00', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1849, 'zhangyukang', '发放单申请', 62, 'com.coderman.api.biz.controller.OutStockController.addOutStock()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[outStockVO],args:[OutStockVO(id=null, outNum=null, type=3, operator=null, createTime=null, productNumber=null, priority=3, products=[{productId=17, productNumber=1}, {productId=18, productNumber=1}], remark=34243424, status=null, consumerId=9, name=null, address=undefined/undefined/undefined, phone=null, contact=null, sort=null)]', '127.0.0.1', '2020-05-26 09:52:09', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1850, 'zhangyukang', '发放单申请', 946, 'com.coderman.api.biz.controller.OutStockController.addOutStock()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[outStockVO],args:[OutStockVO(id=null, outNum=null, type=2, operator=null, createTime=null, productNumber=null, priority=1, products=[{productId=23, productNumber=1}, {productId=25, productNumber=1}, {productId=19, productNumber=1}, {productId=18, productNumber=1}], remark=11111111, status=null, consumerId=8, name=null, address=undefined/undefined/undefined, phone=null, contact=null, sort=null)]', '127.0.0.1', '2020-05-26 09:59:57', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1851, 'zhangyukang', '入库单审核', 555, 'com.coderman.api.biz.controller.OutStockController.publish()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id],args:[12]', '127.0.0.1', '2020-05-26 10:00:03', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1852, 'zhangyukang', '发放单申请', 2525, 'com.coderman.api.biz.controller.OutStockController.addOutStock()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[outStockVO],args:[OutStockVO(id=null, outNum=null, type=3, operator=null, createTime=null, productNumber=null, priority=1, products=[{productId=17, productNumber=1}, {productId=18, productNumber=1}, {productId=19, productNumber=1}], remark=123213, status=null, consumerId=8, name=null, address=undefined/undefined/undefined, phone=null, contact=null, sort=null)]', '127.0.0.1', '2020-05-26 10:02:01', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1853, 'zhangyukang', '发放单审核', 241, 'com.coderman.api.biz.controller.OutStockController.publish()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id],args:[13]', '127.0.0.1', '2020-05-26 10:02:11', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1854, 'zhangyukang', '更新菜单', 250, 'com.coderman.api.system.controller.MenuController.update()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id, menuVO],args:[253, MenuVO(id=253, parentId=1, menuName=系统首页, url=/welcome, icon=el-icon-star-off, type=0, orderNum=1, createTime=Tue Mar 10 08:46:44 CST 2020, modifiedTime=Wed Apr 15 20:49:47 CST 2020, disabled=false, open=0, perms=welcome:view)]', '127.0.0.1', '2020-05-29 12:04:52', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1855, 'zhangyukang', '更新菜单', 28, 'com.coderman.api.system.controller.MenuController.update()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id, menuVO],args:[319, MenuVO(id=319, parentId=1, menuName=公告管理, url=/notices, icon=el-icon-s-flag, type=0, orderNum=4, createTime=Tue Apr 21 12:07:46 CST 2020, modifiedTime=Tue May 05 19:55:08 CST 2020, disabled=false, open=0, perms=)]', '127.0.0.1', '2020-05-29 12:05:10', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1856, 'zhangyukang', '更新菜单', 689, 'com.coderman.api.system.controller.MenuController.update()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id, menuVO],args:[319, MenuVO(id=319, parentId=1, menuName=公告管理, url=/notices, icon=el-icon-s-flag, type=0, orderNum=4, createTime=Tue Apr 21 12:07:46 CST 2020, modifiedTime=Fri May 29 12:05:10 CST 2020, disabled=true, open=0, perms=)]', '127.0.0.1', '2020-05-29 12:05:22', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1857, '系统测试人员', '更新菜单', 133, 'com.coderman.api.system.controller.MenuController.update()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id, menuVO],args:[253, MenuVO(id=253, parentId=1, menuName=系统首页, url=/welcome, icon=el-icon-star-off, type=0, orderNum=1, createTime=Tue Mar 10 08:46:44 CST 2020, modifiedTime=Fri May 29 12:04:52 CST 2020, disabled=true, open=0, perms=welcome:view)]', '127.0.0.1', '2020-05-29 12:12:39', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1858, '系统测试人员', '更新菜单', 24, 'com.coderman.api.system.controller.MenuController.update()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id, menuVO],args:[253, MenuVO(id=253, parentId=1, menuName=系统首页, url=/welcome, icon=el-icon-star-off, type=0, orderNum=1, createTime=Tue Mar 10 08:46:44 CST 2020, modifiedTime=Fri May 29 12:12:39 CST 2020, disabled=false, open=0, perms=welcome:view)]', '127.0.0.1', '2020-05-29 12:12:47', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1859, '系统测试人员', '用户|禁用/启用', 140, 'com.coderman.api.system.controller.UserController.updateStatus()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id, status],args:[184, true]', '127.0.0.1', '2020-05-29 12:13:05', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1860, 'zhangyukang', '用户|禁用/启用', 102, 'com.coderman.api.system.controller.UserController.updateStatus()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id, status],args:[184, false]', '127.0.0.1', '2020-05-29 12:17:23', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1861, '系统测试人员', '用户|禁用/启用', 382, 'com.coderman.api.system.controller.UserController.updateStatus()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id, status],args:[6, true]', '127.0.0.1', '2020-05-29 14:23:59', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1862, '系统测试人员', '用户|禁用/启用', 693, 'com.coderman.api.system.controller.UserController.updateStatus()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id, status],args:[6, false]', '127.0.0.1', '2020-05-29 14:24:00', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1863, '系统测试人员', '用户|禁用/启用', 1318, 'com.coderman.api.system.controller.UserController.updateStatus()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id, status],args:[6, false]', '127.0.0.1', '2020-05-29 14:24:01', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1864, '系统测试人员', '用户|禁用/启用', 1378, 'com.coderman.api.system.controller.UserController.updateStatus()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id, status],args:[6, false]', '127.0.0.1', '2020-05-29 14:24:01', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1865, '系统测试人员', '用户|禁用/启用', 76, 'com.coderman.api.system.controller.UserController.updateStatus()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id, status],args:[6, true]', '127.0.0.1', '2020-05-29 14:24:03', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1866, '系统测试人员', '用户|禁用/启用', 148, 'com.coderman.api.system.controller.UserController.updateStatus()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id, status],args:[6, true]', '127.0.0.1', '2020-05-29 14:24:03', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1867, '系统测试人员', '用户|禁用/启用', 114, 'com.coderman.api.system.controller.UserController.updateStatus()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id, status],args:[6, false]', '127.0.0.1', '2020-05-29 14:24:03', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1868, '系统测试人员', '删除用户', 3288, 'com.coderman.api.system.controller.UserController.delete()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id],args:[69]', '127.0.0.1', '2020-05-29 14:26:35', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1869, 'zhangyukang', '角色|禁用/启用', 148, 'com.coderman.api.system.controller.RoleController.updateStatus()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id, status],args:[0, true]', '127.0.0.1', '2020-05-29 14:34:54', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1870, 'zhangyukang', '角色|禁用/启用', 523, 'com.coderman.api.system.controller.RoleController.updateStatus()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id, status],args:[77, true]', '127.0.0.1', '2020-05-29 14:35:07', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1871, 'zhangyukang', '角色|禁用/启用', 1257, 'com.coderman.api.system.controller.RoleController.updateStatus()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id, status],args:[78, true]', '127.0.0.1', '2020-05-29 14:37:01', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1872, 'zhangyukang', '删除用户', 69, 'com.coderman.api.system.controller.UserController.delete()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id],args:[111]', '127.0.0.1', '2020-05-29 14:40:04', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1873, 'zhangyukang', '删除用户', 1013, 'com.coderman.api.system.controller.UserController.delete()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id],args:[72]', '127.0.0.1', '2020-05-29 14:44:16', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1874, 'zhangyukang', '添加用户', 64, 'com.coderman.api.system.controller.UserController.add()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[userVO],args:[UserVO(id=null, username=2321313, nickname=232332, email=23232332@qq.com, phoneNumber=15074854512, status=null, createTime=null, sex=1, birth=Wed May 13 00:00:00 CST 2020, password=23233, departmentName=null, departmentId=1)]', '127.0.0.1', '2020-05-29 14:45:30', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1875, 'zhangyukang', '用户|禁用/启用', 16, 'com.coderman.api.system.controller.UserController.updateStatus()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id, status],args:[189, true]', '127.0.0.1', '2020-05-29 14:45:32', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1876, 'zhangyukang', '用户|禁用/启用', 61, 'com.coderman.api.system.controller.UserController.updateStatus()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id, status],args:[189, false]', '127.0.0.1', '2020-05-29 14:45:33', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1877, 'zhangyukang', '分配角色', 61, 'com.coderman.api.system.controller.UserController.assignRoles()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id, rids],args:[189, [Ljava.lang.Long;@248565e1]', '127.0.0.1', '2020-05-29 14:45:38', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1932, '系统测试人员', '更新菜单', 25, 'com.coderman.api.system.controller.MenuController.update()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id, menuVO],args:[253, MenuVO(id=253, parentId=1, menuName=系统首页, url=/welcome, icon=el-icon-star-off, type=0, orderNum=3, createTime=Tue Mar 10 08:46:44 CST 2020, modifiedTime=Fri May 29 12:12:47 CST 2020, disabled=false, open=0, perms=welcome:view)]', '127.0.0.1', '2020-05-29 20:42:51', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1933, '系统测试人员', '更新菜单', 25, 'com.coderman.api.system.controller.MenuController.update()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id, menuVO],args:[253, MenuVO(id=253, parentId=1, menuName=系统首页, url=/welcome, icon=el-icon-star-off, type=0, orderNum=1, createTime=Tue Mar 10 08:46:44 CST 2020, modifiedTime=Fri May 29 20:42:51 CST 2020, disabled=false, open=0, perms=welcome:view)]', '127.0.0.1', '2020-05-29 20:43:12', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1934, 'admin', '添加用户', 288, 'com.coderman.api.system.controller.UserController.add()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[userVO],args:[UserVO(id=null, username=jack, nickname=testman, email=3053161401@qq.com, phoneNumber=15079747485, status=null, createTime=null, sex=1, birth=Wed Aug 12 00:00:00 CST 2020, password=123456789, departmentName=null, departmentId=1)]', '127.0.0.1', '2020-08-19 16:47:27', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1935, 'admin', '分配角色', 22, 'com.coderman.api.system.controller.UserController.assignRoles()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id, rids],args:[195, [Ljava.lang.Long;@1abe45e1]', '127.0.0.1', '2020-08-19 16:48:07', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1936, 'admin', '更新部门', 34, 'com.coderman.api.system.controller.DepartmentController.update()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id, departmentVO],args:[1, DepartmentVO(id=1, name=物资管理部, phone=15045741241, address=负责系统物资的管理。, mgrId=195, createTime=Mon Mar 16 00:00:00 CST 2020, modifiedTime=Fri May 29 00:00:00 CST 2020, mgrName=null, total=0)]', '127.0.0.1', '2020-08-19 16:48:16', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1937, 'admin', '更新部门', 355, 'com.coderman.api.system.controller.DepartmentController.update()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id, departmentVO],args:[12, DepartmentVO(id=12, name=采购部, phone=15079451241, address=采购中心, mgrId=195, createTime=Mon Mar 16 00:00:00 CST 2020, modifiedTime=Fri May 29 00:00:00 CST 2020, mgrName=null, total=0)]', '127.0.0.1', '2020-08-19 16:48:20', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1938, 'admin', '更新部门', 26, 'com.coderman.api.system.controller.DepartmentController.update()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id, departmentVO],args:[14, DepartmentVO(id=14, name=信息技术部, phone=18214521412, address=3楼405房间, mgrId=195, createTime=Thu Mar 19 00:00:00 CST 2020, modifiedTime=Sat Apr 11 00:00:00 CST 2020, mgrName=null, total=0)]', '127.0.0.1', '2020-08-19 16:48:23', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1939, 'admin', '导出用户excel', 2105, 'com.coderman.api.system.controller.UserController.export()\n\nresponse:', 'paramName:[response],args:[com.alibaba.druid.support.http.WebStatFilter$StatHttpServletResponseWrapper@7f436466]', '127.0.0.1', '2020-08-19 16:48:37', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1940, 'admin', '物资分类添加', 87, 'com.coderman.api.biz.controller.ProductCategoryController.add()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[productCategoryVO],args:[ProductCategoryVO(id=null, name=23, remark=323, sort=1, createTime=null, modifiedTime=null, pid=0)]', '127.0.0.1', '2020-08-19 16:59:04', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1941, 'admin', '物资分类删除', 22, 'com.coderman.api.biz.controller.ProductCategoryController.delete()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id],args:[68]', '127.0.0.1', '2020-08-19 16:59:10', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1942, 'admin', '物资分类添加', 30, 'com.coderman.api.biz.controller.ProductCategoryController.add()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[productCategoryVO],args:[ProductCategoryVO(id=null, name=3333, remark=333, sort=3, createTime=null, modifiedTime=null, pid=null)]', '127.0.0.1', '2020-08-19 16:59:23', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1943, 'admin', '物资分类添加', 107, 'com.coderman.api.biz.controller.ProductCategoryController.add()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[productCategoryVO],args:[ProductCategoryVO(id=null, name=33, remark=33, sort=1, createTime=null, modifiedTime=null, pid=0)]', '127.0.0.1', '2020-08-19 17:02:36', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1944, 'admin', '物资分类删除', 119, 'com.coderman.api.biz.controller.ProductCategoryController.delete()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id],args:[70]', '127.0.0.1', '2020-08-19 17:02:39', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1945, 'admin', '物资分类添加', 117, 'com.coderman.api.biz.controller.ProductCategoryController.add()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[productCategoryVO],args:[ProductCategoryVO(id=null, name=222, remark=222, sort=1, createTime=null, modifiedTime=null, pid=0)]', '127.0.0.1', '2020-08-19 17:03:06', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1946, 'admin', '物资分类添加', 28, 'com.coderman.api.biz.controller.ProductCategoryController.add()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[productCategoryVO],args:[ProductCategoryVO(id=null, name=222, remark=222, sort=1, createTime=null, modifiedTime=null, pid=0)]', '127.0.0.1', '2020-08-19 17:03:45', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1947, 'admin', '物资分类删除', 44, 'com.coderman.api.biz.controller.ProductCategoryController.delete()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id],args:[71]', '127.0.0.1', '2020-08-19 17:06:34', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1948, 'admin', '物资分类删除', 27, 'com.coderman.api.biz.controller.ProductCategoryController.delete()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id],args:[72]', '127.0.0.1', '2020-08-19 17:06:36', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1949, 'admin', '物资分类添加', 110, 'com.coderman.api.biz.controller.ProductCategoryController.add()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[productCategoryVO],args:[ProductCategoryVO(id=null, name=333, remark=333, sort=1, createTime=null, modifiedTime=null, pid=0)]', '127.0.0.1', '2020-08-19 17:07:24', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1950, 'admin', '物资分类删除', 17, 'com.coderman.api.biz.controller.ProductCategoryController.delete()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id],args:[73]', '127.0.0.1', '2020-08-19 17:10:31', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1951, 'admin', '物资分类添加', 113, 'com.coderman.api.biz.controller.ProductCategoryController.add()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[productCategoryVO],args:[ProductCategoryVO(id=null, name=tet, remark=fsdafasf, sort=1, createTime=null, modifiedTime=null, pid=0)]', '127.0.0.1', '2020-08-19 17:10:40', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1952, 'admin', '物资分类添加', 931, 'com.coderman.api.biz.controller.ProductCategoryController.add()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[productCategoryVO],args:[ProductCategoryVO(id=null, name=333, remark=333, sort=3, createTime=null, modifiedTime=null, pid=74)]', '127.0.0.1', '2020-08-19 17:10:54', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1953, 'admin', '物资分类删除', 35, 'com.coderman.api.biz.controller.ProductCategoryController.delete()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id],args:[74]', '127.0.0.1', '2020-08-19 17:11:00', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1954, 'admin', '物资分类添加', 291, 'com.coderman.api.biz.controller.ProductCategoryController.add()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[productCategoryVO],args:[ProductCategoryVO(id=null, name=3333, remark=333333, sort=1, createTime=null, modifiedTime=null, pid=0)]', '127.0.0.1', '2020-08-19 17:16:08', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1955, 'admin', '物资分类添加', 27, 'com.coderman.api.biz.controller.ProductCategoryController.add()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[productCategoryVO],args:[ProductCategoryVO(id=null, name=324234, remark=3333, sort=3, createTime=null, modifiedTime=null, pid=76)]', '127.0.0.1', '2020-08-19 17:16:17', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1956, 'admin', '物资分类删除', 667, 'com.coderman.api.biz.controller.ProductCategoryController.delete()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id],args:[77]', '127.0.0.1', '2020-08-19 17:16:28', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1957, 'admin', '物资分类删除', 510, 'com.coderman.api.biz.controller.ProductCategoryController.delete()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id],args:[76]', '127.0.0.1', '2020-08-19 17:16:31', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1958, 'admin', '物资分类删除', 39525, 'com.coderman.api.biz.controller.ProductCategoryController.delete()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id],args:[35]', '127.0.0.1', '2020-08-19 17:21:08', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1959, 'admin', '物资分类删除', 16447, 'com.coderman.api.biz.controller.ProductCategoryController.delete()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id],args:[25]', '127.0.0.1', '2020-08-19 17:22:06', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1960, 'admin', '物资资料更新', 92, 'com.coderman.api.biz.controller.ProductController.update()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id, productVO],args:[17, ProductVO(id=17, pNum=3DFC8EA0-6, name=N95口罩, model=10个/包, unit=包, remark=救命的口罩, sort=1, createTime=Wed Mar 18 00:00:00 CST 2020, modifiedTime=Sat May 16 00:00:00 CST 2020, imageUrl=group1/M00/00/00/rBofMl5yGl2AR3rCAAArOxrzeKs522.jpg, categoryKeys=[20, 23, 25], oneCategoryId=20, twoCategoryId=23, threeCategoryId=25, status=0)]', '127.0.0.1', '2020-08-19 17:31:55', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1961, 'admin', '物资资料更新', 68, 'com.coderman.api.biz.controller.ProductController.update()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id, productVO],args:[17, ProductVO(id=17, pNum=3DFC8EA0-6, name=N95口罩, model=10个/包, unit=包, remark=救命的口罩, sort=1, createTime=Wed Mar 18 00:00:00 CST 2020, modifiedTime=Wed Aug 19 00:00:00 CST 2020, imageUrl=group1/M00/00/00/rBofMl5yGl2AR3rCAAArOxrzeKs522.jpg, categoryKeys=[20, 23, 25], oneCategoryId=20, twoCategoryId=23, threeCategoryId=25, status=0)]', '127.0.0.1', '2020-08-19 17:32:01', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1962, 'admin', '物资资料更新', 56, 'com.coderman.api.biz.controller.ProductController.update()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id, productVO],args:[17, ProductVO(id=17, pNum=3DFC8EA0-6, name=N95口罩, model=10个/包, unit=包, remark=救命的口罩, sort=1, createTime=Wed Mar 18 00:00:00 CST 2020, modifiedTime=Wed Aug 19 00:00:00 CST 2020, imageUrl=group1/M00/00/00/rBofMl5yGl2AR3rCAAArOxrzeKs522.jpg, categoryKeys=[20, 21, 32], oneCategoryId=20, twoCategoryId=23, threeCategoryId=25, status=0)]', '127.0.0.1', '2020-08-19 17:32:18', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1963, 'admin', '物资资料更新', 1, 'com.coderman.api.biz.controller.ProductController.update()\n\nresponse:{\"code\":-1,\"msg\":\"物资需要3级分类\"}', 'paramName:[id, productVO],args:[17, ProductVO(id=17, pNum=3DFC8EA0-6, name=N95口罩, model=10个/包, unit=包, remark=救命的口罩, sort=1, createTime=Wed Mar 18 00:00:00 CST 2020, modifiedTime=Wed Aug 19 00:00:00 CST 2020, imageUrl=group1/M00/00/00/rBofMl5yGl2AR3rCAAArOxrzeKs522.jpg, categoryKeys=[59, 67], oneCategoryId=20, twoCategoryId=21, threeCategoryId=32, status=0)]', '127.0.0.1', '2020-08-19 17:33:26', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1964, 'admin', '物资分类添加', 27, 'com.coderman.api.biz.controller.ProductCategoryController.add()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[productCategoryVO],args:[ProductCategoryVO(id=null, name=344324, remark=333, sort=1, createTime=null, modifiedTime=null, pid=67)]', '127.0.0.1', '2020-08-19 17:33:46', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1965, 'admin', '物资资料更新', 619, 'com.coderman.api.biz.controller.ProductController.update()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id, productVO],args:[17, ProductVO(id=17, pNum=3DFC8EA0-6, name=N95口罩, model=10个/包, unit=包, remark=救命的口罩, sort=1, createTime=Wed Mar 18 00:00:00 CST 2020, modifiedTime=Wed Aug 19 00:00:00 CST 2020, imageUrl=group1/M00/00/00/rBofMl5yGl2AR3rCAAArOxrzeKs522.jpg, categoryKeys=[59, 67, 78], oneCategoryId=20, twoCategoryId=21, threeCategoryId=32, status=0)]', '127.0.0.1', '2020-08-19 17:33:54', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1966, 'admin', '物资资料更新', 40, 'com.coderman.api.biz.controller.ProductController.update()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id, productVO],args:[17, ProductVO(id=17, pNum=3DFC8EA0-6, name=N95口罩, model=10个/包, unit=包, remark=救命的口罩, sort=1, createTime=Wed Mar 18 00:00:00 CST 2020, modifiedTime=Wed Aug 19 00:00:00 CST 2020, imageUrl=group1/M00/00/00/rBofMl5yGl2AR3rCAAArOxrzeKs522.jpg, categoryKeys=[33, 34, 37], oneCategoryId=59, twoCategoryId=67, threeCategoryId=78, status=0)]', '127.0.0.1', '2020-08-19 17:34:24', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1967, 'admin', '物资分类删除', 27, 'com.coderman.api.biz.controller.ProductCategoryController.delete()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id],args:[78]', '127.0.0.1', '2020-08-19 17:34:29', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1968, 'admin', '物资分类删除', 30, 'com.coderman.api.biz.controller.ProductCategoryController.delete()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id],args:[67]', '127.0.0.1', '2020-08-19 17:34:32', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1969, 'admin', '物资分类删除', 501, 'com.coderman.api.biz.controller.ProductCategoryController.delete()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id],args:[59]', '127.0.0.1', '2020-08-19 17:34:35', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1970, 'admin', '物资分类添加', 29, 'com.coderman.api.biz.controller.ProductCategoryController.add()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[productCategoryVO],args:[ProductCategoryVO(id=null, name=2313, remark=232323, sort=2, createTime=null, modifiedTime=null, pid=21)]', '127.0.0.1', '2020-08-19 17:37:10', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1971, 'admin', '物资分类更新', 28, 'com.coderman.api.biz.controller.ProductCategoryController.update()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id, productCategoryVO],args:[33, ProductCategoryVO(id=33, name=交通运输, remark=交通运输。。。。, sort=1, createTime=Tue Mar 17 00:00:00 CST 2020, modifiedTime=Sat May 16 00:00:00 CST 2020, pid=0)]', '127.0.0.1', '2020-08-19 17:37:12', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1972, 'admin', '物资分类更新', 112, 'com.coderman.api.biz.controller.ProductCategoryController.update()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id, productCategoryVO],args:[33, ProductCategoryVO(id=33, name=交通运输, remark=交通运输。。。2323。, sort=1, createTime=Tue Mar 17 00:00:00 CST 2020, modifiedTime=Wed Aug 19 00:00:00 CST 2020, pid=0)]', '127.0.0.1', '2020-08-19 17:37:16', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1973, 'admin', '物资分类更新', 101, 'com.coderman.api.biz.controller.ProductCategoryController.update()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id, productCategoryVO],args:[21, ProductCategoryVO(id=21, name=仪器, remark=仪器, sort=1, createTime=Tue Mar 17 00:00:00 CST 2020, modifiedTime=Tue Mar 17 00:00:00 CST 2020, pid=20)]', '127.0.0.1', '2020-08-19 17:37:27', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1974, 'admin', '物资分类添加', 28, 'com.coderman.api.biz.controller.ProductCategoryController.add()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[productCategoryVO],args:[ProductCategoryVO(id=null, name=2313, remark=12313, sort=3, createTime=null, modifiedTime=null, pid=0)]', '127.0.0.1', '2020-08-19 17:37:32', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1975, 'admin', '物资分类添加', 22, 'com.coderman.api.biz.controller.ProductCategoryController.add()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[productCategoryVO],args:[ProductCategoryVO(id=null, name=33, remark=33, sort=2, createTime=null, modifiedTime=null, pid=80)]', '127.0.0.1', '2020-08-19 17:37:41', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1976, 'admin', '物资分类删除', 26, 'com.coderman.api.biz.controller.ProductCategoryController.delete()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id],args:[81]', '127.0.0.1', '2020-08-19 17:37:47', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1977, 'admin', '删除用户', 60, 'com.coderman.api.system.controller.UserController.delete()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id],args:[195]', '127.0.0.1', '2020-08-19 17:40:58', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1978, 'admin', '添加用户', 39, 'com.coderman.api.system.controller.UserController.add()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[userVO],args:[UserVO(id=null, username=jack, nickname=testetst, email=test@qq.com, phoneNumber=15045414141, status=null, createTime=null, sex=1, birth=Mon Aug 17 00:00:00 CST 2020, password=123456, departmentName=null, departmentId=12)]', '127.0.0.1', '2020-08-19 17:41:20', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1979, 'admin', '分配角色', 144, 'com.coderman.api.system.controller.UserController.assignRoles()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id, rids],args:[196, [Ljava.lang.Long;@7c11e3a6]', '127.0.0.1', '2020-08-19 17:42:54', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1980, 'admin', '角色授权', 166, 'com.coderman.api.system.controller.RoleController.authority()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id, mids],args:[0, [Ljava.lang.Long;@706cb963]', '127.0.0.1', '2020-08-19 17:43:16', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1981, 'jack', '分配角色', 73, 'com.coderman.api.system.controller.UserController.assignRoles()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id, rids],args:[196, [Ljava.lang.Long;@41035d7f]', '127.0.0.1', '2020-08-19 17:43:43', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1982, 'jack', '新增菜单/按钮', 78, 'com.coderman.api.system.controller.MenuController.add()\n\nresponse:{\"code\":200,\"data\":{\"children\":[],\"menuName\":\"入库页面\",\"id\":344},\"msg\":\"成功\"}', 'paramName:[menuVO],args:[MenuVO(id=null, parentId=230, menuName=入库页面, url=/inStocks/addStocks, icon=null, type=0, orderNum=1, createTime=null, modifiedTime=null, disabled=false, open=1, perms=)]', '127.0.0.1', '2020-08-19 17:56:26', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1983, 'jack', '更新菜单', 27, 'com.coderman.api.system.controller.MenuController.update()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id, menuVO],args:[344, MenuVO(id=344, parentId=230, menuName=入库页面, url=/inStocks/addStocks, icon=el-icon-edit, type=0, orderNum=1, createTime=Wed Aug 19 17:56:26 CST 2020, modifiedTime=Wed Aug 19 17:56:26 CST 2020, disabled=false, open=1, perms=)]', '127.0.0.1', '2020-08-19 17:57:01', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1984, 'jack', '更新菜单', 26, 'com.coderman.api.system.controller.MenuController.update()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id, menuVO],args:[326, MenuVO(id=326, parentId=230, menuName=添加入库, url=, icon=el-icon-plus, type=1, orderNum=3, createTime=Mon Apr 27 17:07:04 CST 2020, modifiedTime=Mon Apr 27 17:07:04 CST 2020, disabled=false, open=1, perms=inStock:in)]', '127.0.0.1', '2020-08-19 17:57:15', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1985, 'jack', '更新菜单', 21, 'com.coderman.api.system.controller.MenuController.update()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id, menuVO],args:[1, MenuVO(id=1, parentId=0, menuName=系统管理, url=, icon=el-icon-setting, type=0, orderNum=1, createTime=Sat Mar 07 17:41:30 CST 2020, modifiedTime=Fri May 29 18:48:57 CST 2020, disabled=false, open=0, perms=null)]', '127.0.0.1', '2020-08-19 17:57:20', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1986, 'jack', '更新菜单', 28, 'com.coderman.api.system.controller.MenuController.update()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id, menuVO],args:[312, MenuVO(id=312, parentId=0, menuName=业务管理, url=null, icon=el-icon-s-goods, type=0, orderNum=2, createTime=Sun Apr 05 10:19:07 CST 2020, modifiedTime=Sat May 16 17:09:22 CST 2020, disabled=false, open=1, perms=null)]', '127.0.0.1', '2020-08-19 17:57:27', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1987, 'jack', '更新菜单', 113, 'com.coderman.api.system.controller.MenuController.update()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id, menuVO],args:[338, MenuVO(id=338, parentId=230, menuName=入库审核, url=null, icon=el-icon-edit, type=1, orderNum=2, createTime=Thu Apr 30 19:13:32 CST 2020, modifiedTime=Thu Apr 30 19:13:32 CST 2020, disabled=false, open=0, perms=inStock:publish)]', '127.0.0.1', '2020-08-19 17:57:32', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1988, 'jack', '更新菜单', 38, 'com.coderman.api.system.controller.MenuController.update()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id, menuVO],args:[339, MenuVO(id=339, parentId=230, menuName=删除记录, url=null, icon=el-icon-delete, type=1, orderNum=4, createTime=Thu Apr 30 19:14:03 CST 2020, modifiedTime=Thu Apr 30 19:14:03 CST 2020, disabled=false, open=0, perms=inStock:delete)]', '127.0.0.1', '2020-08-19 17:57:42', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1989, 'jack', '更新菜单', 110, 'com.coderman.api.system.controller.MenuController.update()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id, menuVO],args:[340, MenuVO(id=340, parentId=230, menuName=入库还原, url=, icon=el-icon-d-arrow-left, type=1, orderNum=3, createTime=Thu Apr 30 19:17:27 CST 2020, modifiedTime=Thu Apr 30 19:17:27 CST 2020, disabled=false, open=0, perms=inStock:back)]', '127.0.0.1', '2020-08-19 17:57:49', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1990, 'jack', '更新菜单', 24, 'com.coderman.api.system.controller.MenuController.update()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id, menuVO],args:[337, MenuVO(id=337, parentId=230, menuName=入库回收, url=, icon=el-icon-remove, type=1, orderNum=3, createTime=Thu Apr 30 19:12:56 CST 2020, modifiedTime=Thu Apr 30 19:12:56 CST 2020, disabled=false, open=1, perms=inStock:remove)]', '127.0.0.1', '2020-08-19 17:57:55', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1991, 'admin', '删除菜单/按钮', 26, 'com.coderman.api.system.controller.MenuController.delete()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id],args:[344]', '127.0.0.1', '2020-08-19 17:58:38', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1992, 'jack', '更新菜单', 102, 'com.coderman.api.system.controller.MenuController.update()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id, menuVO],args:[230, MenuVO(id=230, parentId=229, menuName=物资入库, url=/inStocks, icon=el-icon-date, type=0, orderNum=1, createTime=Tue Mar 10 05:34:28 CST 2020, modifiedTime=Thu Apr 30 19:13:01 CST 2020, disabled=false, open=0, perms=el-icon-date)]', '127.0.0.1', '2020-08-19 18:40:25', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1993, 'jack', '物资资料添加', 42, 'com.coderman.api.biz.controller.ProductController.add()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[productVO],args:[ProductVO(id=null, pNum=null, name=34, model=34, unit=34, remark=34, sort=1, createTime=null, modifiedTime=null, imageUrl=https://www.zykhome.club/group1/M00/00/05/rBofMl89AkyAbmybAAATfahiDQ0876.JPG, categoryKeys=[20, 54, 55], oneCategoryId=null, twoCategoryId=null, threeCategoryId=null, status=null)]', '127.0.0.1', '2020-08-19 18:43:32', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1994, 'jack', '物资资料删除', 27, 'com.coderman.api.biz.controller.ProductController.delete()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id],args:[48]', '127.0.0.1', '2020-08-19 18:48:19', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1995, 'jack', '物资资料删除', 47, 'com.coderman.api.biz.controller.ProductController.delete()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id],args:[47]', '127.0.0.1', '2020-08-19 18:48:21', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1996, 'jack', '物资资料添加', 26, 'com.coderman.api.biz.controller.ProductController.add()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[productVO],args:[ProductVO(id=null, pNum=null, name=gfdg, model=gggg, unit=gg, remark=ggg, sort=1, createTime=null, modifiedTime=null, imageUrl=https://www.zykhome.club/group1/M00/00/05/rBofMl89A46AMehSAAE5a45QSpU128.JPG, categoryKeys=[33, 34, 37], oneCategoryId=null, twoCategoryId=null, threeCategoryId=null, status=null)]', '127.0.0.1', '2020-08-19 18:48:54', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1997, 'jack', '物资资料添加', 42, 'com.coderman.api.biz.controller.ProductController.add()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[productVO],args:[ProductVO(id=null, pNum=null, name=3434, model=34, unit=434, remark=333, sort=4, createTime=null, modifiedTime=null, imageUrl=https://www.zykhome.club/group1/M00/00/05/rBofMl89BJuAPUHbAACNRL-ICbE462.PNG, categoryKeys=[33, 34, 37], oneCategoryId=null, twoCategoryId=null, threeCategoryId=null, status=null)]', '127.0.0.1', '2020-08-19 18:53:24', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1998, 'jack', '物资资料添加', 98, 'com.coderman.api.biz.controller.ProductController.add()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[productVO],args:[ProductVO(id=null, pNum=null, name=334334, model=34, unit=34, remark=44535, sort=4, createTime=null, modifiedTime=null, imageUrl=group1/M00/00/05/rBofMl89CK6AWdKaAACNRL-ICbE987.PNG, categoryKeys=[33, 34, 37], oneCategoryId=null, twoCategoryId=null, threeCategoryId=null, status=null)]', '127.0.0.1', '2020-08-19 19:10:47', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (1999, 'jack', '物资资料删除', 113, 'com.coderman.api.biz.controller.ProductController.delete()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id],args:[50]', '127.0.0.1', '2020-08-19 19:10:53', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (2000, 'jack', '物资资料删除', 89, 'com.coderman.api.biz.controller.ProductController.delete()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id],args:[49]', '127.0.0.1', '2020-08-19 19:10:55', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (2001, 'admin', '用户|禁用/启用', 1035, 'com.coderman.api.system.controller.UserController.updateStatus()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id, status],args:[196, true]', '127.0.0.1', '2020-09-09 20:28:34', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (2002, 'admin', '用户|禁用/启用', 392, 'com.coderman.api.system.controller.UserController.updateStatus()\n\nresponse:{\"code\":200,\"msg\":\"Success\"}', 'paramName:[id, status],args:[196, false]', '127.0.0.1', '2020-09-09 20:28:36', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES (2003, 'admin', '导出角色excel', 1961, 'com.coderman.api.system.controller.RoleController.export()\n\nresponse:', 'paramName:[response],args:[com.alibaba.druid.support.http.WebStatFilter$StatHttpServletResponseWrapper@1235a25]', '127.0.0.1', '2020-09-09 20:33:50', '内网IP|0|0|内网IP|内网IP');

-- ----------------------------
-- Table structure for tb_login_log
-- ----------------------------
DROP TABLE IF EXISTS `tb_login_log`;
CREATE TABLE `tb_login_log`  (
  `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `login_time` datetime(0) NOT NULL COMMENT '登录时间',
  `location` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '登录地点',
  `ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'IP地址',
  `user_system` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作系统',
  `user_browser` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '浏览器',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1588 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '登录日志表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_login_log
-- ----------------------------
INSERT INTO `tb_login_log` VALUES (924, 'zhangyukang', '2020-03-22 02:45:18', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (925, 'zhangyukang', '2020-03-22 02:50:33', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (926, 'zhangyukang', '2020-03-22 03:46:00', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (927, 'zhangyukang', '2020-03-22 03:46:47', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (928, 'zhangyukang', '2020-03-22 04:02:20', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (929, 'zhangyukang', '2020-03-22 11:02:59', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (930, 'zhangyukang', '2020-03-22 11:06:15', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (931, 'zhangyukang', '2020-03-22 13:19:29', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Mac OS X (iPhone)', 'Mobile Safari');
INSERT INTO `tb_login_log` VALUES (932, 'zhangyukang', '2020-03-22 13:39:38', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (933, 'zhangyukang', '2020-03-22 13:40:22', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (934, 'zhangyukang', '2020-03-22 21:41:48', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (935, 'zhangyukang', '2020-03-22 21:45:16', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (936, 'zhangyukang', '2020-03-22 21:56:10', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (937, '系统测试人员', '2020-03-22 21:56:31', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (938, 'zhangyukang', '2020-03-22 22:16:04', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (939, '系统测试人员', '2020-03-22 22:23:00', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (956, '系统测试人员', '2020-03-22 23:05:17', '中国|华东|江西省|抚州市|移动', '117.162.171.7', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (958, '系统测试人员', '2020-03-22 23:09:42', '中国|华东|江西省|抚州市|移动', '117.162.171.7', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (959, '系统测试人员', '2020-03-22 23:10:28', '中国|华东|江西省|抚州市|移动', '117.162.171.7', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (960, 'zhangyukang', '2020-03-22 23:11:30', '中国|华东|江西省|抚州市|移动', '117.162.171.7', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (961, '系统测试人员', '2020-03-23 08:23:27', '中国|华东|江西省|抚州市|移动', '117.162.170.0', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (962, '系统测试人员', '2020-03-23 08:51:22', '中国|华东|江西省|抚州市|移动', '117.162.170.0', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (963, '系统测试人员', '2020-03-23 10:12:22', '中国|华东|江西省|抚州市|移动', '117.162.170.0', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (964, '系统测试人员', '2020-03-23 10:44:34', '中国|华东|江西省|抚州市|移动', '117.162.170.0', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (965, 'zhangyukang', '2020-03-23 10:45:06', '中国|华东|江西省|抚州市|移动', '117.162.170.0', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (966, '系统测试人员', '2020-03-23 10:45:27', '中国|华东|江西省|抚州市|移动', '117.162.170.0', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (967, 'zhangyukang', '2020-03-23 10:47:41', '中国|华东|江西省|抚州市|移动', '117.162.170.0', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (968, '系统测试人员', '2020-03-23 10:50:31', '中国|华东|江西省|抚州市|移动', '117.162.170.0', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (969, '系统测试人员', '2020-03-23 12:11:45', '中国|华东|江西省|抚州市|移动', '117.162.170.0', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (970, '系统测试人员', '2020-03-23 12:16:49', '中国|华东|江西省|抚州市|移动', '117.162.170.0', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (971, 'zhangyukang', '2020-03-23 12:17:11', '中国|华东|江西省|抚州市|移动', '117.162.170.0', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (975, 'zhangyukang', '2020-03-23 12:29:49', '中国|华东|江西省|抚州市|移动', '117.162.170.0', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (976, '系统测试人员', '2020-03-23 12:35:22', '中国|华东|江西省|抚州市|移动', '117.162.170.0', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (977, 'zhangyukang', '2020-03-23 12:35:35', '中国|华东|江西省|抚州市|移动', '117.162.170.0', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (978, 'zhangyukang', '2020-03-23 13:36:06', '中国|华东|江西省|抚州市|移动', '117.162.170.0', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (979, '系统测试人员', '2020-03-23 14:00:46', '中国|华东|江西省|抚州市|移动', '117.162.170.0', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (980, 'zhangyukang', '2020-03-23 14:00:56', '中国|华东|江西省|抚州市|移动', '117.162.170.0', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (981, 'zhangyukang', '2020-03-23 16:23:01', '中国|华东|江西省|抚州市|移动', '117.162.170.0', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (982, '系统测试人员', '2020-03-23 17:50:46', '中国|西北|陕西省|0|移动', '111.18.69.71', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (983, '系统测试人员', '2020-03-23 19:14:01', '中国|华东|江苏省|苏州市|移动', '183.209.117.134', 'Windows 7', 'Chrome');
INSERT INTO `tb_login_log` VALUES (984, '系统测试人员', '2020-03-24 00:53:44', '中国|华东|安徽省|0|移动', '120.242.253.28', 'Mac OS X', 'Chrome');
INSERT INTO `tb_login_log` VALUES (985, '系统测试人员', '2020-03-24 00:56:03', '中国|华东|江西省|南昌市|电信', '59.63.204.200', 'Android Mobile', 'Chrome Mobile');
INSERT INTO `tb_login_log` VALUES (986, '系统测试人员', '2020-03-24 00:56:29', '中国|华东|安徽省|0|移动', '120.242.253.28', 'Windows XP', 'Chrome');
INSERT INTO `tb_login_log` VALUES (987, 'zhangyukang', '2020-03-24 07:47:34', '中国|0|0|0|移动', '117.136.125.48', 'Android Mobile', 'Chrome Mobile');
INSERT INTO `tb_login_log` VALUES (988, 'zhangyukang', '2020-03-24 08:30:57', '中国|华东|江西省|抚州市|移动', '117.162.170.0', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (989, '系统测试人员', '2020-03-24 09:01:40', '中国|华东|江西省|抚州市|移动', '117.162.170.0', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (990, '系统测试人员', '2020-03-24 09:12:52', '中国|华南|广东省|湛江市|移动', '120.238.221.101', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (991, '系统测试人员', '2020-03-24 09:13:50', '中国|华南|广东省|广州市|电信', '219.135.155.76', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (992, '系统测试人员', '2020-03-24 09:18:47', '中国|华南|广东省|湛江市|移动', '120.238.221.101', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (993, '系统测试人员', '2020-03-24 09:23:14', '中国|华南|广东省|湛江市|移动', '120.238.221.101', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (994, '系统测试人员', '2020-03-24 09:23:27', '中国|华南|广东省|湛江市|移动', '120.238.221.101', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (995, '系统测试人员', '2020-03-24 09:28:25', '中国|华北|天津市|天津市|教育网', '121.193.162.106', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (1003, '9c07a0', '2020-03-24 10:24:42', '中国|华东|江西省|抚州市|移动', '117.162.170.0', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (1005, '系统测试人员', '2020-03-24 11:16:55', '中国|华南|广东省|湛江市|移动', '120.238.221.101', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1006, 'zhangyukang', '2020-03-24 11:41:24', '中国|华东|江西省|抚州市|移动', '117.162.170.0', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (1007, '系统测试人员', '2020-03-24 11:48:16', '中国|华东|上海市|上海市|联通', '58.247.98.202', 'Mac OS X', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1008, '系统测试人员', '2020-03-24 12:10:23', '中国|华中|湖南省|长沙市|电信', '113.220.212.193', 'Windows 7', 'Chrome');
INSERT INTO `tb_login_log` VALUES (1011, '系统测试人员', '2020-03-24 13:18:34', '中国|华中|湖南省|长沙市|电信', '113.220.212.193', 'Windows 7', 'Chrome');
INSERT INTO `tb_login_log` VALUES (1014, 'zhangyukang', '2020-03-24 16:23:35', '中国|华东|江西省|抚州市|移动', '117.162.170.0', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (1019, 'zhangyukang', '2020-03-24 21:11:48', '中国|华东|江西省|抚州市|移动', '117.162.170.0', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (1020, '系统测试人员', '2020-03-24 21:53:49', '中国|华南|广东省|深圳市|电信', '121.35.1.81', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (1023, '系统测试人员', '2020-03-25 09:21:28', '中国|华南|广东省|广州市|电信', '59.41.160.49', 'Android Mobile', 'Chrome Mobile');
INSERT INTO `tb_login_log` VALUES (1024, 'zhangyukang', '2020-03-25 11:02:26', '中国|华东|江西省|抚州市|移动', '117.162.170.0', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (1025, '系统测试人员', '2020-03-25 11:20:34', '中国|华东|福建省|厦门市|移动', '183.251.93.95', 'Mac OS X', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1026, 'zhangyukang', '2020-03-25 11:25:47', '中国|华东|江西省|抚州市|移动', '117.162.170.0', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (1027, '系统测试人员', '2020-03-25 11:34:25', '中国|华东|江西省|南昌市|联通', '171.34.46.214', 'Windows 7', 'Firefox 7');
INSERT INTO `tb_login_log` VALUES (1028, 'zhangyukang', '2020-03-25 13:02:58', '中国|华东|江西省|抚州市|移动', '117.162.170.0', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (1030, '系统测试人员', '2020-03-25 16:11:18', '中国|华南|广东省|广州市|电信', '59.41.160.49', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1031, 'zhangyukang', '2020-03-25 19:01:33', '中国|华东|江西省|抚州市|移动', '117.162.170.0', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (1032, '系统测试人员', '2020-03-26 01:55:51', '中国|华北|北京市|北京市|鹏博士', '117.100.150.198', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1033, 'zhangyukang', '2020-03-26 07:29:31', '中国|华东|江西省|抚州市|移动', '117.162.171.145', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (1034, '系统测试人员', '2020-03-26 12:57:16', '中国|华南|广东省|湛江市|移动', '120.238.221.101', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1035, 'zhangyukang', '2020-03-26 13:39:51', '中国|华东|江西省|抚州市|移动', '117.162.171.145', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (1036, '系统测试人员', '2020-03-26 14:20:04', '中国|华中|河南省|郑州市|联通', '219.157.202.111', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1037, '系统测试人员', '2020-03-26 16:06:08', '中国|华东|浙江省|杭州市|移动', '112.17.99.4', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (1038, '系统测试人员', '2020-03-26 16:13:49', '中国|华东|浙江省|杭州市|移动', '112.17.99.4', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (1039, '系统测试人员', '2020-03-26 22:43:03', '中国|华北|内蒙古自治区|呼和浩特市|电信', '121.56.30.216', 'Windows 10', 'Firefox 7');
INSERT INTO `tb_login_log` VALUES (1040, '系统测试人员', '2020-03-27 16:28:45', '中国|华北|北京市|北京市|0', '43.243.12.8', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1041, '系统测试人员', '2020-03-27 17:25:20', '中国|华中|河南省|洛阳市|联通', '115.50.60.52', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1042, 'zhangyukang', '2020-03-27 17:41:26', '中国|华东|江西省|抚州市|移动', '117.162.171.145', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (1043, 'zhangyukang', '2020-03-27 20:40:59', '中国|华东|江西省|抚州市|移动', '117.162.171.145', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (1044, 'zhangyukang', '2020-03-27 22:37:39', '中国|华东|江西省|抚州市|移动', '117.162.171.145', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (1045, 'zhangyukang', '2020-03-27 23:01:41', '中国|华东|江西省|抚州市|移动', '117.162.171.145', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (1046, '系统测试人员', '2020-03-27 23:02:00', '中国|0|0|0|移动', '117.136.109.178', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (1047, 'zhangyukang', '2020-03-27 23:10:14', '中国|华东|江西省|抚州市|移动', '117.162.171.145', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (1048, '系统测试人员', '2020-03-27 23:12:23', '中国|东北|辽宁省|0|移动', '223.104.177.27', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1049, 'zhangyukang', '2020-03-27 23:17:55', '中国|华东|江西省|抚州市|移动', '117.162.171.145', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (1050, 'zhangyukang', '2020-03-27 23:23:02', '中国|华东|江西省|抚州市|移动', '117.162.171.145', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (1051, '系统测试人员', '2020-03-27 23:56:57', '中国|东北|辽宁省|0|移动', '223.104.177.27', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1052, '系统测试人员', '2020-03-28 01:35:34', '中国|华中|河南省|郑州市|电信', '1.193.82.155', 'Windows 7', 'Chrome');
INSERT INTO `tb_login_log` VALUES (1053, '系统测试人员', '2020-03-28 09:02:01', '中国|华北|北京市|北京市|电信', '115.35.22.96', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1054, '系统测试人员', '2020-03-28 09:05:21', '中国|华北|北京市|北京市|电信', '115.35.22.96', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1057, 'zhangyukang', '2020-03-28 12:03:38', '中国|华东|江西省|抚州市|移动', '117.162.171.145', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (1058, '系统测试人员', '2020-03-28 12:17:19', '中国|华东|山东省|枣庄市|联通', '112.248.44.250', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1059, '系统测试人员', '2020-03-28 12:17:49', '中国|华东|江西省|抚州市|移动', '117.162.171.145', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (1060, 'zhangyukang', '2020-03-28 14:25:19', '中国|华东|江西省|抚州市|移动', '117.162.171.145', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (1061, 'zhangyukang', '2020-03-28 14:39:04', '中国|华东|江西省|抚州市|移动', '117.162.171.145', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (1062, '系统测试人员', '2020-03-28 15:33:40', '中国|华南|广东省|广州市|电信', '113.119.8.40', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1063, '系统测试人员', '2020-03-28 16:34:45', '中国|华中|湖北省|武汉市|湖北广电', '43.227.139.213', 'Mac OS X (iPhone)', 'Apple WebKit');
INSERT INTO `tb_login_log` VALUES (1064, 'zhangyukang', '2020-03-28 18:05:51', '中国|华东|江西省|抚州市|移动', '117.162.171.145', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (1066, '系统测试人员', '2020-03-28 21:02:56', '中国|华东|上海市|上海市|联通', '112.65.61.128', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (1067, '系统测试人员', '2020-03-29 01:09:01', '中国|华东|江苏省|南京市|电信', '49.92.88.34', 'Mac OS X (iPhone)', 'Mobile Safari');
INSERT INTO `tb_login_log` VALUES (1068, '系统测试人员', '2020-03-29 04:36:20', '中国|华中|湖北省|孝感市|移动', '117.152.166.171', 'Mac OS X (iPhone)', 'Apple WebKit');
INSERT INTO `tb_login_log` VALUES (1069, 'zhangyukang', '2020-03-29 09:00:18', '中国|华东|江西省|抚州市|移动', '117.162.171.189', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (1070, '系统测试人员', '2020-03-29 09:49:24', '中国|西南|贵州省|贵阳市|电信', '220.172.30.124', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1071, '系统测试人员', '2020-03-29 09:59:49', '中国|华南|广东省|广州市|电信', '113.119.8.18', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1072, 'zhangyukang', '2020-03-29 10:02:11', '中国|华东|江西省|抚州市|移动', '117.162.171.189', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (1073, '系统测试人员', '2020-03-29 11:10:02', '中国|华南|广东省|深圳市|电信', '116.25.118.232', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1074, '系统测试人员', '2020-03-29 11:14:17', '中国|华南|广东省|深圳市|移动', '117.136.79.160', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1075, '系统测试人员', '2020-03-29 11:14:34', '中国|华南|广东省|深圳市|电信', '116.25.118.232', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1076, '系统测试人员', '2020-03-29 11:16:50', '中国|华南|广东省|深圳市|电信', '116.25.118.232', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1077, 'zhangyukang', '2020-03-29 11:34:50', '中国|华东|江西省|抚州市|移动', '117.162.171.189', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (1079, '系统测试人员', '2020-03-29 18:25:23', '中国|华南|广东省|深圳市|电信', '113.87.130.100', 'Windows 7', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1080, '系统测试人员', '2020-03-29 18:34:12', '中国|华南|广东省|深圳市|电信', '113.87.130.100', 'Windows 7', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1081, '系统测试人员', '2020-03-29 19:58:08', '中国|华中|湖北省|武汉市|电信', '171.83.23.208', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1085, '系统测试人员', '2020-03-29 21:54:04', '中国|华北|北京市|北京市|联通', '221.218.142.67', 'Mac OS X (iPhone)', 'Mobile Safari');
INSERT INTO `tb_login_log` VALUES (1086, '系统测试人员', '2020-03-30 02:43:36', '中国|华南|广东省|广州市|电信', '121.33.61.122', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1087, '系统测试人员', '2020-03-30 09:37:07', '中国|华东|福建省|福州市|电信', '117.25.21.219', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1088, 'zhangyukang', '2020-03-30 10:02:46', '中国|华东|江西省|抚州市|移动', '117.162.171.189', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (1089, '系统测试人员', '2020-03-30 10:18:44', '中国|西北|陕西省|西安市|电信', '117.36.75.166', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (1090, '系统测试人员', '2020-03-30 10:58:37', '中国|华北|北京市|北京市|联通', '221.222.221.152', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1091, '系统测试人员', '2020-03-30 11:07:08', '中国|华南|广东省|0|移动', '223.104.64.72', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (1092, '系统测试人员', '2020-03-30 12:31:40', '中国|华南|广东省|深圳市|电信', '14.155.115.223', 'Windows 7', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1093, '系统测试人员', '2020-03-30 12:44:39', '中国|华南|广东省|深圳市|电信', '14.155.115.223', 'Windows 7', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1094, '系统测试人员', '2020-03-30 13:25:31', '中国|华南|广东省|肇庆市|电信', '14.209.104.31', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (1095, '系统测试人员', '2020-03-30 16:10:13', '中国|华北|河北省|廊坊市|联通', '101.30.71.182', 'Mac OS X', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1096, '系统测试人员', '2020-03-30 16:21:43', '中国|华中|河南省|新乡市|联通', '123.15.128.36', 'Windows 7', 'Firefox 7');
INSERT INTO `tb_login_log` VALUES (1097, '系统测试人员', '2020-03-30 16:31:58', '中国|东北|吉林省|白山市|电信', '222.169.177.148', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (1098, '系统测试人员', '2020-03-30 16:53:28', '中国|华东|江西省|抚州市|移动', '117.162.171.189', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (1099, 'zhangyukang', '2020-03-30 16:53:52', '中国|华东|江西省|抚州市|移动', '117.162.171.189', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (1100, '系统测试人员', '2020-03-30 18:06:47', '中国|华东|山东省|济南市|联通', '112.232.91.104', 'Windows 7', 'Chrome');
INSERT INTO `tb_login_log` VALUES (1103, '系统测试人员', '2020-03-31 02:23:58', '中国|华南|广西壮族自治区|梧州市|联通', '182.90.85.146', 'Windows 10', 'Microsoft Edge');
INSERT INTO `tb_login_log` VALUES (1104, 'zhangyukang', '2020-03-31 08:41:42', '中国|华东|江西省|抚州市|移动', '117.162.171.189', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (1105, 'zhangyukang', '2020-03-31 09:02:14', '中国|华东|江西省|抚州市|移动', '117.162.171.189', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (1106, '系统测试人员', '2020-03-31 09:26:26', '中国|华东|江西省|抚州市|移动', '117.162.171.189', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (1107, '系统测试人员', '2020-03-31 10:24:13', '中国|华中|河南省|信阳市|移动', '223.90.126.56', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1108, 'zhangyukang', '2020-03-31 10:31:13', '中国|华东|江西省|抚州市|移动', '117.162.171.189', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (1109, '系统测试人员', '2020-03-31 15:16:53', '中国|华东|上海市|上海市|电信', '180.167.249.246', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1110, '系统测试人员', '2020-03-31 16:16:42', '中国|华中|河南省|郑州市|移动', '117.159.4.107', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1113, '系统测试人员', '2020-03-31 18:23:58', '中国|华东|江西省|抚州市|移动', '117.162.171.189', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (1114, '系统测试人员', '2020-03-31 22:31:05', '中国|华中|湖南省|衡阳市|联通', '110.52.128.0', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (1116, '系统测试人员', '2020-04-01 10:03:57', '中国|华南|广东省|东莞市|联通', '27.37.169.181', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (1131, '系统测试人员', '2020-04-01 17:38:03', '中国|华中|湖南省|0|移动', '120.228.234.247', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1132, 'zhangyukang', '2020-04-01 18:19:54', '中国|华东|江西省|抚州市|移动', '117.162.170.188', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (1133, '系统测试人员', '2020-04-01 19:22:45', '中国|华北|天津市|天津市|教育网', '121.193.162.106', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (1134, '系统测试人员', '2020-04-01 22:19:54', '中国|0|0|0|移动', '117.136.109.131', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (1135, 'zhangyukang', '2020-04-01 23:14:24', '中国|华东|江西省|抚州市|移动', '117.162.170.188', 'Android Mobile', 'Chrome Mobile');
INSERT INTO `tb_login_log` VALUES (1137, '系统测试人员', '2020-04-02 08:57:56', '中国|华东|江西省|抚州市|移动', '117.162.170.188', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (1138, '系统测试人员', '2020-04-02 10:51:40', '中国|华东|江苏省|盐城市|电信', '121.234.60.174', 'Windows 7', 'Chrome');
INSERT INTO `tb_login_log` VALUES (1140, '系统测试人员', '2020-04-02 15:26:06', '中国|华中|湖南省|长沙市|联通', '119.39.248.15', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1141, '系统测试人员', '2020-04-02 17:33:02', '中国|华中|湖南省|岳阳市|电信', '223.157.246.96', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (1142, '系统测试人员', '2020-04-02 18:14:31', '中国|华东|江西省|九江市|电信', '182.111.11.223', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1143, '系统测试人员', '2020-04-02 19:18:07', '中国|华中|湖南省|长沙市|联通', '119.39.248.74', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1146, '系统测试人员', '2020-04-02 21:49:12', '中国|华东|江苏省|南京市|电信', '180.109.22.211', 'Linux', 'Chrome');
INSERT INTO `tb_login_log` VALUES (1147, 'zhangyukang', '2020-04-03 09:33:14', '中国|华东|江西省|抚州市|移动', '117.162.170.188', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (1148, '系统测试人员', '2020-04-03 10:05:46', '中国|华东|江西省|抚州市|移动', '117.162.170.188', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (1149, '系统测试人员', '2020-04-03 10:08:02', '中国|华东|江西省|抚州市|移动', '117.162.170.188', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (1150, '系统测试人员', '2020-04-03 11:12:44', '中国|华东|江西省|抚州市|移动', '117.162.170.188', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (1151, '系统测试人员', '2020-04-03 11:33:41', '中国|华东|江西省|抚州市|移动', '117.162.170.188', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (1152, 'zhangyukang', '2020-04-03 11:34:34', '中国|华东|江西省|抚州市|移动', '117.162.170.188', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (1153, '系统测试人员', '2020-04-03 13:30:55', '中国|华东|上海市|上海市|电信', '222.72.35.134', 'Mac OS X', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1154, '系统测试人员', '2020-04-03 13:49:21', '中国|华东|上海市|上海市|电信', '222.72.35.134', 'Mac OS X', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1155, '系统测试人员', '2020-04-03 14:03:39', '中国|华南|广东省|0|移动', '120.231.15.88', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (1156, '系统测试人员', '2020-04-03 14:31:37', '中国|华东|福建省|厦门市|电信', '117.28.135.230', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1157, '系统测试人员', '2020-04-03 15:16:08', '中国|华东|安徽省|0|移动', '112.30.57.134', 'Windows 10', 'Firefox 7');
INSERT INTO `tb_login_log` VALUES (1158, '系统测试人员', '2020-04-03 15:29:13', '中国|华中|湖南省|长沙市|电信', '222.240.106.144', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1159, '系统测试人员', '2020-04-03 15:31:05', '中国|华中|湖南省|长沙市|电信', '222.240.106.144', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1160, '系统测试人员', '2020-04-03 15:50:16', '中国|东北|辽宁省|0|联通', '116.132.15.250', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1161, '系统测试人员', '2020-04-03 16:12:47', '中国|华中|河南省|郑州市|电信', '171.9.204.52', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (1162, '系统测试人员', '2020-04-03 16:25:44', '中国|华中|河南省|南阳市|联通', '219.155.177.94', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (1163, '系统测试人员', '2020-04-03 16:47:31', '中国|华中|河南省|南阳市|联通', '219.155.177.94', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (1164, '系统测试人员', '2020-04-03 16:49:14', '中国|华中|河南省|南阳市|联通', '219.155.177.94', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (1168, '系统测试人员', '2020-04-03 21:33:02', '中国|华北|北京市|北京市|联通', '123.122.164.122', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (1169, '系统测试人员', '2020-04-03 21:59:33', '中国|西北|陕西省|西安市|移动', '117.136.51.40', 'Android 1.x', 'Chrome Mobile');
INSERT INTO `tb_login_log` VALUES (1170, '系统测试人员', '2020-04-03 22:00:11', '中国|西北|陕西省|西安市|移动', '117.136.51.40', 'Android 1.x', 'Chrome Mobile');
INSERT INTO `tb_login_log` VALUES (1171, '系统测试人员', '2020-04-04 10:54:15', '中国|华中|河南省|周口市|联通', '123.13.107.6', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1172, '系统测试人员', '2020-04-04 13:12:15', '中国|华东|江苏省|连云港市|移动', '183.206.79.128', 'Android 1.x', 'Chrome Mobile');
INSERT INTO `tb_login_log` VALUES (1173, '系统测试人员', '2020-04-04 14:48:49', '中国|华中|河南省|周口市|移动', '223.91.4.79', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1174, 'zhangyukang', '2020-04-04 15:27:59', '中国|华东|江西省|抚州市|移动', '117.162.170.2', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1175, 'zhangyukang', '2020-04-04 15:41:55', '中国|华东|江西省|抚州市|移动', '117.162.170.2', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1176, '系统测试人员', '2020-04-04 15:51:53', '中国|华东|江西省|抚州市|移动', '117.162.170.2', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1177, '系统测试人员', '2020-04-04 16:23:56', '中国|华东|江西省|抚州市|移动', '117.162.170.2', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1178, '系统测试人员', '2020-04-04 16:25:04', '中国|华中|河南省|南阳市|联通', '219.155.182.68', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (1179, '系统测试人员', '2020-04-04 16:43:05', '中国|华东|福建省|厦门市|移动', '183.251.22.122', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1180, '系统测试人员', '2020-04-04 16:45:40', '中国|华东|福建省|厦门市|移动', '183.251.22.122', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1181, '系统测试人员', '2020-04-04 16:53:03', '中国|华东|福建省|厦门市|移动', '183.251.22.122', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1182, '系统测试人员', '2020-04-04 18:19:10', '中国|华北|河北省|保定市|联通', '120.3.154.175', 'Mac OS X', 'Safari');
INSERT INTO `tb_login_log` VALUES (1183, 'zhangyukang', '2020-04-04 18:55:52', '中国|华东|江西省|抚州市|移动', '117.162.170.2', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1184, '系统测试人员', '2020-04-04 18:58:34', '中国|华南|广西壮族自治区|贺州市|移动', '111.58.148.185', 'Windows 10', 'Firefox 7');
INSERT INTO `tb_login_log` VALUES (1185, '系统测试人员', '2020-04-04 19:22:18', '中国|华东|江苏省|常州市|移动', '183.210.196.108', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1186, '系统测试人员', '2020-04-04 19:40:57', '中国|华北|河北省|保定市|联通', '120.3.154.175', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (1187, '系统测试人员', '2020-04-04 20:28:52', '中国|华东|浙江省|杭州市|电信', '60.176.91.68', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1189, '系统测试人员', '2020-04-04 20:48:45', '日本|0|0|0|亚马逊', '13.231.208.228', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (1190, '系统测试人员', '2020-04-05 08:41:32', '中国|西南|重庆市|重庆市|电信', '106.91.82.90', 'Mac OS X', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1192, '系统测试人员', '2020-04-05 10:09:42', '中国|西南|四川省|成都市|电信', '202.98.97.232', 'Linux', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1194, '系统测试人员', '2020-04-05 14:19:37', '中国|华北|北京市|北京市|鹏博士', '117.100.126.52', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1195, '系统测试人员', '2020-04-05 14:21:30', '中国|华中|河南省|南阳市|联通', '219.155.182.68', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (1196, '系统测试人员', '2020-04-05 14:22:21', '中国|华北|北京市|北京市|鹏博士', '117.100.126.52', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1197, 'zhangyukang', '2020-04-05 14:31:08', '中国|华东|江西省|抚州市|移动', '117.162.170.2', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1198, '系统测试人员', '2020-04-05 14:48:00', '中国|华中|河南省|南阳市|联通', '219.155.182.68', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (1199, '系统测试人员', '2020-04-05 14:58:23', '中国|华中|河南省|信阳市|电信', '123.101.149.24', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1200, '系统测试人员', '2020-04-05 15:28:14', '中国|华东|江西省|抚州市|移动', '117.162.170.2', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1201, '系统测试人员', '2020-04-05 16:53:19', '中国|华中|湖北省|武汉市|电信', '27.18.54.250', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (1202, '系统测试人员', '2020-04-05 18:08:18', '中国|华北|河北省|保定市|联通', '120.3.154.175', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (1203, '系统测试人员', '2020-04-05 18:09:22', '中国|华北|河北省|保定市|联通', '120.3.154.175', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (1204, '系统测试人员', '2020-04-05 19:02:54', '中国|华东|山东省|烟台市|联通', '39.73.160.120', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (1205, '系统测试人员', '2020-04-05 20:46:16', '中国|华中|河南省|平顶山市|移动', '120.216.161.31', 'Android 1.x', 'Chrome Mobile');
INSERT INTO `tb_login_log` VALUES (1206, '系统测试人员', '2020-04-05 22:26:43', '中国|华北|河北省|保定市|联通', '120.3.68.26', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1207, '系统测试人员', '2020-04-05 23:04:12', '中国|西南|贵州省|0|移动', '117.188.164.207', 'Windows 10', 'Firefox 7');
INSERT INTO `tb_login_log` VALUES (1209, '系统测试人员', '2020-04-06 09:25:39', '中国|华东|江苏省|南京市|电信', '202.60.135.145', 'Mac OS X', 'Safari');
INSERT INTO `tb_login_log` VALUES (1211, '系统测试人员', '2020-04-06 10:37:44', '中国|华东|江西省|抚州市|移动', '117.162.170.2', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1212, '系统测试人员', '2020-04-06 11:42:28', '中国|华北|北京市|北京市|移动', '223.72.65.17', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (1213, '系统测试人员', '2020-04-06 11:53:06', '中国|华南|广东省|深圳市|电信', '113.87.130.41', 'Windows 7', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1214, '系统测试人员', '2020-04-06 15:00:35', '中国|华东|安徽省|合肥市|电信', '61.190.36.234', 'Windows 7', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1215, '系统测试人员', '2020-04-06 15:01:16', '中国|华东|安徽省|合肥市|电信', '61.190.36.234', 'Windows 7', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1216, '系统测试人员', '2020-04-06 15:03:21', '中国|华东|安徽省|合肥市|电信', '61.190.36.234', 'Windows 7', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1217, '系统测试人员', '2020-04-06 15:07:46', '中国|华南|广东省|广州市|电信', '59.42.110.131', 'Windows 7', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1218, '系统测试人员', '2020-04-06 15:25:08', '中国|华东|江苏省|常州市|电信', '114.228.32.231', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1219, '系统测试人员', '2020-04-06 20:13:18', '中国|华中|河南省|许昌市|移动', '223.90.243.161', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (1220, '系统测试人员', '2020-04-06 20:17:37', '中国|华中|河南省|许昌市|移动', '223.90.243.161', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (1221, '系统测试人员', '2020-04-06 20:21:43', '中国|华中|河南省|许昌市|移动', '223.90.243.161', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (1222, '系统测试人员', '2020-04-06 20:25:49', '中国|华中|河南省|南阳市|联通', '219.155.176.69', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (1223, '系统测试人员', '2020-04-06 21:48:07', '中国|华北|北京市|北京市|联通', '114.252.117.171', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1224, '系统测试人员', '2020-04-06 22:00:43', '中国|华中|河南省|南阳市|联通', '219.155.176.69', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (1225, '系统测试人员', '2020-04-07 00:33:25', '中国|华中|湖南省|岳阳市|电信', '58.44.24.49', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (1226, '系统测试人员', '2020-04-07 01:04:34', '中国|西南|贵州省|贵阳市|电信', '1.204.231.101', 'Android 1.x', 'Chrome Mobile');
INSERT INTO `tb_login_log` VALUES (1227, '系统测试人员', '2020-04-07 01:51:43', '中国|华东|上海市|上海市|移动', '183.192.12.113', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1228, '系统测试人员', '2020-04-07 08:53:41', '中国|华东|江西省|抚州市|移动', '117.162.170.229', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1229, '系统测试人员', '2020-04-07 09:38:26', '中国|华中|湖北省|咸宁市|电信', '121.61.15.206', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1231, '系统测试人员', '2020-04-07 10:20:30', '中国|华中|河南省|驻马店市|移动', '39.162.140.0', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1233, '系统测试人员', '2020-04-07 10:45:47', '中国|华东|福建省|龙岩市|移动', '183.251.118.12', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (1235, '系统测试人员', '2020-04-07 14:22:43', '内网IP|0|0|0|内网IP', '103.123.214.3', 'Windows 7', 'Chrome');
INSERT INTO `tb_login_log` VALUES (1236, '系统测试人员', '2020-04-07 14:37:24', '中国|华中|湖北省|襄樊市|电信', '27.27.17.50', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (1237, '系统测试人员', '2020-04-07 14:55:12', '中国|华东|浙江省|杭州市|移动', '218.205.57.7', 'Windows 7', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1238, '系统测试人员', '2020-04-07 14:59:06', '中国|华南|广西壮族自治区|梧州市|电信', '180.139.114.177', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (1239, '系统测试人员', '2020-04-07 15:13:51', '中国|华东|浙江省|宁波市|电信', '115.214.71.20', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1240, '系统测试人员', '2020-04-07 15:27:04', '中国|华东|浙江省|宁波市|电信', '115.214.71.20', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1241, '系统测试人员', '2020-04-07 15:52:29', '中国|华东|江西省|南昌市|联通', '171.34.46.214', 'Windows 7', 'Firefox 7');
INSERT INTO `tb_login_log` VALUES (1242, '系统测试人员', '2020-04-07 18:08:11', '中国|西南|四川省|泸州市|电信', '125.65.158.134', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (1245, '系统测试人员', '2020-04-07 19:39:41', '中国|华东|浙江省|宁波市|电信', '115.214.71.163', 'Mac OS X (iPhone)', 'Mobile Safari');
INSERT INTO `tb_login_log` VALUES (1246, '系统测试人员', '2020-04-07 21:46:39', '中国|华东|江西省|抚州市|移动', '117.162.170.229', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1247, '系统测试人员', '2020-04-07 22:10:13', '中国|华东|江西省|抚州市|移动', '117.162.170.229', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1248, '系统测试人员', '2020-04-07 22:18:32', '中国|华北|山西省|运城市|联通', '60.222.194.6', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1249, '系统测试人员', '2020-04-07 23:05:43', '中国|西南|四川省|成都市|移动', '117.176.157.170', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (1250, '系统测试人员', '2020-04-08 00:22:55', '中国|华中|湖北省|武汉市|电信', '119.103.103.214', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1251, 'zhangyukang', '2020-04-08 08:31:10', '中国|华东|江西省|抚州市|移动', '117.162.170.229', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1252, '系统测试人员', '2020-04-08 09:26:06', '中国|西南|重庆市|重庆市|联通', '113.204.47.195', 'Mac OS X', 'Chrome');
INSERT INTO `tb_login_log` VALUES (1253, '系统测试人员', '2020-04-08 09:48:41', '中国|华南|广东省|珠海市|移动', '120.239.197.178', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1254, '系统测试人员', '2020-04-08 09:56:00', '乌克兰|0|0|0|0', '5.183.176.69', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1256, '系统测试人员', '2020-04-08 10:36:30', '中国|华东|江西省|抚州市|移动', '117.162.170.229', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1257, '系统测试人员', '2020-04-08 11:15:39', '中国|华北|北京市|北京市|电信', '60.247.68.115', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1258, '系统测试人员', '2020-04-08 12:04:40', '中国|东北|辽宁省|沈阳市|联通', '218.24.123.105', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (1259, '系统测试人员', '2020-04-08 12:13:10', '中国|东北|辽宁省|沈阳市|联通', '218.24.123.105', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (1260, '系统测试人员', '2020-04-08 13:05:28', '中国|华北|北京市|北京市|联通', '61.49.154.84', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1261, '系统测试人员', '2020-04-08 13:07:23', '中国|华东|江西省|抚州市|移动', '117.162.170.229', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1262, '系统测试人员', '2020-04-08 15:07:44', '中国|华中|湖北省|武汉市|电信', '27.18.54.250', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (1263, '系统测试人员', '2020-04-08 15:24:23', '中国|华北|北京市|北京市|电信', '115.171.244.232', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (1264, '系统测试人员', '2020-04-08 15:44:45', '中国|华北|北京市|北京市|电信', '115.171.244.232', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (1265, '系统测试人员', '2020-04-08 16:20:40', '中国|华南|广东省|深圳市|电信', '219.133.170.76', 'Windows 7', 'Chrome');
INSERT INTO `tb_login_log` VALUES (1266, '系统测试人员', '2020-04-08 17:21:53', '中国|华南|广东省|深圳市|电信', '113.104.203.193', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (1267, '系统测试人员', '2020-04-08 17:24:52', '中国|华南|广东省|深圳市|电信', '113.104.203.193', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (1268, 'zhangyukang', '2020-04-08 18:59:55', '中国|华东|江西省|抚州市|移动', '117.162.170.229', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1269, '系统测试人员', '2020-04-08 20:56:39', '中国|华东|江西省|萍乡市|移动', '117.170.133.78', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1270, 'zhangyukang', '2020-04-09 08:32:20', '中国|华东|江西省|抚州市|移动', '117.162.170.229', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1271, '系统测试人员', '2020-04-09 09:29:09', '马来西亚|0|0|0|阿里巴巴', '149.129.32.51', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1272, '系统测试人员', '2020-04-09 09:48:37', '南非|0|0|0|0', '45.220.88.106', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1273, '系统测试人员', '2020-04-09 10:59:17', '中国|华南|广东省|广州市|电信', '183.6.136.187', 'Windows 7', 'Chrome');
INSERT INTO `tb_login_log` VALUES (1274, '系统测试人员', '2020-04-09 13:50:37', '中国|华中|河南省|信阳市|联通', '182.117.11.74', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1276, '系统测试人员', '2020-04-09 17:53:12', '中国|华中|湖北省|武汉市|电信', '27.18.54.250', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (1277, '系统测试人员', '2020-04-09 19:32:01', '罗马尼亚|0|0|0|0', '193.254.234.214', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1278, 'zhangyukang', '2020-04-09 20:38:07', '中国|华东|江西省|抚州市|移动', '117.162.170.229', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1279, '系统测试人员', '2020-04-09 21:08:43', '中国|华东|江西省|抚州市|移动', '117.162.170.229', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1280, '系统测试人员', '2020-04-09 21:42:45', '中国|华东|江西省|萍乡市|移动', '117.170.133.78', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1281, '系统测试人员', '2020-04-09 21:57:42', '中国|华北|北京市|北京市|歌华', '101.241.16.147', 'Mac OS X', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1282, '系统测试人员', '2020-04-10 10:54:25', '中国|华东|山东省|日照市|电信', '182.37.82.126', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1283, '系统测试人员', '2020-04-10 11:02:19', '中国|华北|内蒙古自治区|通辽市|联通', '116.115.203.65', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (1284, '系统测试人员', '2020-04-10 11:19:35', '中国|华北|内蒙古自治区|通辽市|联通', '116.115.203.65', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (1285, '系统测试人员', '2020-04-10 11:19:45', '中国|华北|内蒙古自治区|通辽市|联通', '116.115.203.65', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (1286, 'zhangyukang', '2020-04-10 12:09:51', '中国|华东|江西省|抚州市|移动', '117.162.171.110', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1287, '系统测试人员', '2020-04-10 14:03:52', '中国|华北|内蒙古自治区|通辽市|联通', '116.115.203.65', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (1288, '系统测试人员', '2020-04-10 16:40:33', '中国|西北|甘肃省|定西市|移动', '117.157.167.234', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1289, '系统测试人员', '2020-04-10 17:06:32', '中国|华北|内蒙古自治区|通辽市|联通', '116.115.203.65', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (1291, '系统测试人员', '2020-04-10 18:14:41', '中国|华东|江西省|抚州市|移动', '117.162.171.110', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1292, '系统测试人员', '2020-04-10 19:26:07', '中国|西北|陕西省|宝鸡市|移动', '111.19.66.125', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1293, '系统测试人员', '2020-04-10 19:57:36', '中国|华中|河南省|许昌市|移动', '223.90.198.57', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (1294, '系统测试人员', '2020-04-10 21:09:15', '中国|华南|广东省|0|移动', '120.230.146.216', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (1295, '系统测试人员', '2020-04-10 22:21:31', '中国|华东|山东省|德州市|联通', '124.135.175.2', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1296, '系统测试人员', '2020-04-11 00:45:19', '中国|华中|湖南省|衡阳市|电信', '223.146.149.53', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1297, '系统测试人员', '2020-04-11 09:09:20', '中国|华东|浙江省|杭州市|电信', '125.119.0.97', 'Windows 7', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1300, '系统测试人员', '2020-04-11 11:26:44', '中国|华南|广东省|深圳市|电信', '113.104.191.213', 'Windows 10', 'Chrome');
INSERT INTO `tb_login_log` VALUES (1301, '系统测试人员', '2020-04-11 14:17:58', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1302, 'zhangyukang', '2020-04-11 14:18:11', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1303, '系统测试人员', '2020-04-14 10:10:01', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1304, '系统测试人员', '2020-04-14 10:10:39', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1305, '系统测试人员', '2020-04-14 10:11:27', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1306, '系统测试人员', '2020-04-14 10:12:00', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1307, '系统测试人员', '2020-04-14 10:13:12', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1308, '系统测试人员', '2020-04-14 10:14:01', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1309, '系统测试人员', '2020-04-14 10:16:32', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1310, 'zhangyukang', '2020-04-14 10:19:26', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1311, 'zhangyukang', '2020-04-14 12:59:44', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1312, '系统测试人员', '2020-04-14 13:38:46', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1313, '系统测试人员', '2020-04-15 20:13:54', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1314, 'zhangyukang', '2020-04-15 20:14:22', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1315, '系统测试人员', '2020-04-15 20:24:46', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1316, 'zhangyukang', '2020-04-15 20:25:27', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1317, 'zhangyukang', '2020-04-15 20:54:23', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1318, 'zhangyukang', '2020-04-15 21:21:29', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1319, '系统测试人员', '2020-04-15 21:35:33', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Mac OS X (iPhone)', 'Mobile Safari');
INSERT INTO `tb_login_log` VALUES (1320, '系统测试人员', '2020-04-15 21:39:18', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1321, 'zhangyukang', '2020-04-16 08:30:43', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1322, 'zhangyukang', '2020-04-16 10:32:47', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1323, 'zhangyukang', '2020-04-16 12:34:31', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1324, 'zhangyukang', '2020-04-17 12:57:19', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1325, '系统测试人员', '2020-04-17 14:04:58', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1326, 'zhangyukang', '2020-04-17 17:06:04', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1327, '系统测试人员', '2020-04-17 18:02:28', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1328, 'zhangyukang', '2020-04-17 18:25:50', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1329, '系统测试人员', '2020-04-17 19:52:34', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1330, '系统测试人员', '2020-04-17 19:54:12', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1331, '系统测试人员', '2020-04-17 19:55:55', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1332, '系统测试人员', '2020-04-17 19:59:32', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1333, '系统测试人员', '2020-04-17 20:01:51', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1334, '系统测试人员', '2020-04-17 20:10:04', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1335, '系统测试人员', '2020-04-17 20:11:11', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1336, '系统测试人员', '2020-04-17 20:14:09', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1337, '系统测试人员', '2020-04-17 20:15:10', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1338, '系统测试人员', '2020-04-17 20:17:11', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1339, '系统测试人员', '2020-04-17 20:23:07', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1340, '系统测试人员', '2020-04-17 20:25:13', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1341, 'zhangyukang', '2020-04-17 20:25:29', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1342, '系统测试人员', '2020-04-17 20:26:29', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1343, '系统测试人员', '2020-04-17 20:35:16', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1344, 'zhangyukang', '2020-04-17 20:38:32', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1345, '系统测试人员', '2020-04-17 20:39:03', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1346, '系统测试人员', '2020-04-18 09:02:25', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1347, 'zhangyukang', '2020-04-18 09:17:07', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1348, '系统测试人员', '2020-04-18 09:58:04', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1349, '系统测试人员', '2020-04-18 11:58:34', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1350, 'zhangyukang', '2020-04-18 12:27:48', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1351, '系统测试人员', '2020-04-18 17:15:22', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1352, 'zhangyukang', '2020-04-18 17:15:44', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1353, 'zhangyukang', '2020-04-20 16:14:34', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1354, '系统测试人员', '2020-04-20 16:15:30', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1355, '系统测试人员', '2020-04-20 16:16:41', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1356, '系统测试人员', '2020-04-20 16:17:45', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1357, '系统测试人员', '2020-04-20 16:18:27', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1358, '系统测试人员', '2020-04-20 16:19:04', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1359, '系统测试人员', '2020-04-20 16:19:39', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1360, '系统测试人员', '2020-04-20 16:21:06', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1361, '系统测试人员', '2020-04-20 16:22:00', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1362, 'zhangyukang', '2020-04-20 16:26:43', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1363, '系统测试人员', '2020-04-20 16:27:25', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1364, 'zhangyukang', '2020-04-20 16:28:14', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1365, '系统测试人员', '2020-04-20 16:29:50', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1366, 'zhangyukang', '2020-04-20 16:34:39', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1367, '系统测试人员', '2020-04-20 16:36:41', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1368, '系统测试人员', '2020-04-20 16:37:16', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1369, 'zhangyukang', '2020-04-20 16:39:40', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1370, 'zhangyukang', '2020-04-20 16:42:41', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1371, '系统测试人员', '2020-04-20 16:43:36', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1372, 'zhangyukang', '2020-04-20 16:46:13', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1373, 'zhangyukang', '2020-04-20 16:47:57', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1374, '系统测试人员', '2020-04-20 16:48:28', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1375, 'zhangyukang', '2020-04-20 16:49:40', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1376, '系统测试人员', '2020-04-20 16:50:32', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1377, 'zhangyukang', '2020-04-20 16:52:18', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1378, '系统测试人员', '2020-04-20 16:55:21', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1379, 'zhangyukang', '2020-04-20 16:55:51', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1380, '系统测试人员', '2020-04-20 16:58:10', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1381, 'zhangyukang', '2020-04-20 16:58:47', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1382, '系统测试人员', '2020-04-20 17:02:06', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1383, 'zhangyukang', '2020-04-20 17:05:32', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1384, '系统测试人员', '2020-04-20 17:05:58', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1385, '系统测试人员', '2020-04-20 17:09:15', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1386, 'zhangyukang', '2020-04-20 17:09:30', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1387, '系统测试人员', '2020-04-20 17:11:00', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1388, 'zhangyukang', '2020-04-20 17:12:10', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1389, '系统测试人员', '2020-04-20 17:12:47', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1390, 'zhangyukang', '2020-04-20 17:19:03', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1391, '系统测试人员', '2020-04-20 17:19:54', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1392, 'zhangyukang', '2020-04-20 17:20:46', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1393, '系统测试人员', '2020-04-20 18:49:42', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1394, '系统测试人员', '2020-04-21 10:24:13', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1395, 'zhangyukang', '2020-04-21 10:24:34', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1396, '系统测试人员', '2020-04-21 10:25:33', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1397, 'zhangyukang', '2020-04-21 10:26:31', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1398, '系统测试人员', '2020-04-21 10:26:41', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1399, 'zhangyukang', '2020-04-21 10:33:32', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1400, '系统测试人员', '2020-04-21 10:34:50', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1401, '系统测试人员', '2020-04-21 10:35:04', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1402, 'zhangyukang', '2020-04-21 12:05:46', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1403, '系统测试人员', '2020-04-23 09:40:14', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1404, 'zhangyukang', '2020-04-23 09:41:10', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1405, '系统测试人员', '2020-04-23 11:23:20', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1406, '系统测试人员', '2020-04-25 10:25:38', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1407, 'zhangyukang', '2020-04-25 10:51:37', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1408, '系统测试人员', '2020-04-25 13:30:34', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1409, 'zhangyukang', '2020-04-25 13:31:03', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1410, 'zhangyukang', '2020-04-25 13:31:33', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1411, '系统测试人员', '2020-04-25 13:31:52', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1412, 'zhangyukang', '2020-04-25 13:32:29', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1413, '系统测试人员', '2020-04-25 13:33:18', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1414, 'zhangyukang', '2020-04-25 16:53:25', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1415, '系统测试人员', '2020-04-26 09:40:27', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1416, 'zhangyukang', '2020-04-26 09:40:50', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1417, '系统测试人员', '2020-04-26 11:31:35', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1418, 'zhangyukang', '2020-04-26 11:32:28', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1419, '系统测试人员', '2020-04-26 16:43:53', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1420, 'zhangyukang', '2020-04-26 16:45:15', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1421, '系统测试人员', '2020-04-27 08:43:58', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1422, 'zhangyukang', '2020-04-27 09:40:12', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1423, '系统测试人员', '2020-04-27 09:45:42', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1424, '系统测试人员', '2020-04-27 09:47:30', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1425, 'zhangyukang', '2020-04-27 09:47:48', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1426, '系统测试人员', '2020-04-27 09:50:02', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1427, 'zhangyukang', '2020-04-27 09:52:59', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1428, '系统测试人员', '2020-04-27 09:53:30', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1429, 'zhangyukang', '2020-04-27 09:54:09', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1430, '系统测试人员', '2020-04-27 09:54:40', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1431, 'zhangyukang', '2020-04-27 09:55:06', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1432, '系统测试人员', '2020-04-27 09:55:33', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1433, 'zhangyukang', '2020-04-27 09:57:44', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1434, '系统测试人员', '2020-04-27 10:11:03', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1435, 'zhangyukang', '2020-04-27 11:01:07', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1436, '系统测试人员', '2020-04-27 11:04:55', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1437, '系统测试人员', '2020-04-27 11:23:40', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1438, '系统测试人员', '2020-04-27 11:32:05', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1439, 'zhangyukang', '2020-04-27 11:32:46', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1440, 'zhangyukang', '2020-04-27 12:46:08', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1441, '系统测试人员', '2020-04-27 12:46:28', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1443, 'zhangyukang', '2020-04-27 16:55:48', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1444, '系统测试人员', '2020-04-27 17:01:42', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1445, '系统测试人员', '2020-04-27 17:03:39', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1446, 'zhangyukang', '2020-04-27 17:06:02', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1447, '系统测试人员', '2020-04-27 17:10:19', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1448, 'zhangyukang', '2020-04-27 17:24:54', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1449, '系统测试人员', '2020-04-27 17:26:51', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1450, 'zhangyukang', '2020-04-27 17:37:50', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1451, '系统测试人员', '2020-04-27 17:38:41', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1452, '系统测试人员', '2020-04-27 21:28:21', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1453, '系统测试人员', '2020-04-27 21:28:48', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1454, 'zhangyukang', '2020-04-27 21:29:05', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1455, 'zhangyukang', '2020-04-28 08:41:06', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1456, 'zhangyukang', '2020-04-28 10:41:26', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1457, '系统测试人员', '2020-04-28 12:36:10', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1458, 'zhangyukang', '2020-04-28 12:48:46', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1459, '系统测试人员', '2020-04-28 13:15:16', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1460, 'zhangyukang', '2020-04-28 16:08:54', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1461, 'zhangyukang', '2020-04-29 08:25:55', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1462, 'zhangyukang', '2020-04-29 11:23:52', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1463, '系统测试人员', '2020-04-29 11:54:51', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1464, '系统测试人员', '2020-04-29 11:56:07', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1465, 'zhangyukang', '2020-04-29 12:07:15', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1466, '系统测试人员', '2020-04-29 17:04:29', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1467, '系统测试人员', '2020-04-29 17:08:36', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1468, '系统测试人员', '2020-04-29 17:11:57', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1469, '系统测试人员', '2020-04-29 17:14:28', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1470, '系统测试人员', '2020-04-29 17:15:16', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1471, '系统测试人员', '2020-04-29 17:19:18', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1472, '系统测试人员', '2020-04-29 17:20:47', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1473, '系统测试人员', '2020-04-29 17:23:32', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1474, '系统测试人员', '2020-04-29 17:25:04', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1475, '系统测试人员', '2020-04-29 17:25:29', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1476, '系统测试人员', '2020-04-29 17:26:37', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1477, '系统测试人员', '2020-04-29 17:28:10', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1478, '系统测试人员', '2020-04-29 17:28:42', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1479, '系统测试人员', '2020-04-29 17:29:37', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1480, '系统测试人员', '2020-04-29 17:30:43', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1481, '系统测试人员', '2020-04-29 21:03:15', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1482, 'zhangyukang', '2020-04-29 21:59:49', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1483, 'zhangyukang', '2020-04-30 08:56:22', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1484, '系统测试人员', '2020-04-30 09:14:16', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1485, 'zhangyukang', '2020-04-30 09:43:51', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1486, '系统测试人员', '2020-04-30 11:44:13', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1487, 'zhangyukang', '2020-04-30 11:45:38', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1488, 'zhangyukang', '2020-04-30 13:45:51', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1489, 'zhangyukang', '2020-04-30 18:23:04', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1490, 'zhangyukang', '2020-04-30 19:07:22', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1491, '系统测试人员', '2020-04-30 19:07:38', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1492, 'zhangyukang', '2020-05-01 12:57:32', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1493, 'zhangyukang', '2020-05-01 19:44:09', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1494, 'zhangyukang', '2020-05-05 19:51:42', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1495, 'zhangyukang', '2020-05-05 21:24:17', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1496, 'zhangyukang', '2020-05-06 09:35:47', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1497, '系统测试人员', '2020-05-06 10:42:12', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1498, 'zhangyukang', '2020-05-06 10:54:27', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1499, 'zhangyukang', '2020-05-07 10:00:22', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1500, 'zhangyukang', '2020-05-07 12:01:04', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1501, '系统测试人员', '2020-05-07 12:14:56', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1502, 'zhangyukang', '2020-05-07 12:17:21', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1503, 'zhangyukang', '2020-05-07 14:31:15', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1504, 'zhangyukang', '2020-05-07 19:31:06', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1505, '系统测试人员', '2020-05-07 20:00:21', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1506, 'zhangyukang', '2020-05-09 17:14:04', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1507, 'zhangyukang', '2020-05-09 19:15:08', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1508, 'zhangyukang', '2020-05-10 08:59:12', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1509, 'zhangyukang', '2020-05-10 10:07:21', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1510, 'zhangyukang', '2020-05-10 14:10:05', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1511, '系统测试人员', '2020-05-10 18:41:49', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1512, 'zhangyukang', '2020-05-10 19:13:59', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1513, 'zhangyukang', '2020-05-10 19:15:01', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1514, 'zhangyukang', '2020-05-11 09:15:34', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1515, 'zhangyukang', '2020-05-13 09:16:43', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1516, '系统测试人员', '2020-05-13 09:56:43', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1517, 'zhangyukang', '2020-05-13 22:26:13', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1518, 'zhangyukang', '2020-05-14 20:09:52', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1519, '系统测试人员', '2020-05-14 20:21:56', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1520, 'zhangyukang', '2020-05-14 20:22:16', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1521, '系统测试人员', '2020-05-14 20:22:44', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1522, 'zhangyukang', '2020-05-14 20:35:51', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1523, 'zhangyukang', '2020-05-14 21:00:37', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1524, '系统测试人员', '2020-05-14 21:01:02', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1525, '系统测试人员', '2020-05-14 21:01:21', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1526, '系统测试人员', '2020-05-14 21:02:52', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1527, '系统测试人员', '2020-05-14 21:03:52', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1528, '系统测试人员', '2020-05-14 21:05:48', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1529, 'zhangyukang', '2020-05-16 09:49:07', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Unknown', 'Downloading Tool');
INSERT INTO `tb_login_log` VALUES (1530, 'zhangyukang', '2020-05-16 10:49:49', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Unknown', 'Downloading Tool');
INSERT INTO `tb_login_log` VALUES (1531, '系统测试人员', '2020-05-16 11:49:51', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1533, 'zhangyukang', '2020-05-16 16:24:16', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1534, '系统测试人员', '2020-05-16 16:36:57', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1535, 'zhangyukang', '2020-05-16 17:43:32', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1536, '系统测试人员', '2020-05-16 18:35:33', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1537, 'zhangyukang', '2020-05-16 19:41:01', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1538, '系统测试人员', '2020-05-18 09:09:07', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1539, 'zhangyukang', '2020-05-18 09:10:33', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1540, '系统测试人员', '2020-05-18 09:21:31', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1541, 'zhangyukang', '2020-05-18 09:33:01', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1542, '系统测试人员', '2020-05-18 09:49:22', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1543, 'zhangyukang', '2020-05-18 09:49:42', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1544, '系统测试人员', '2020-05-18 09:51:39', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1545, '系统测试人员', '2020-05-18 10:10:08', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1546, '系统测试人员', '2020-05-18 12:11:16', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1547, 'zhangyukang', '2020-05-18 14:11:58', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1548, '系统测试人员', '2020-05-19 19:19:05', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1549, 'zhangyukang', '2020-05-23 15:42:44', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1550, 'zhangyukang', '2020-05-24 19:34:05', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1551, 'zhangyukang', '2020-05-25 10:15:48', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1552, 'zhangyukang', '2020-05-25 15:44:14', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1553, 'zhangyukang', '2020-05-26 09:08:02', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1554, '系统测试人员', '2020-05-29 12:00:05', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1555, 'zhangyukang', '2020-05-29 12:04:33', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1556, '系统测试人员', '2020-05-29 12:12:23', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1557, 'zhangyukang', '2020-05-29 12:13:26', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1558, 'zhangyukang', '2020-05-29 12:16:44', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1559, 'zhangyukang', '2020-05-29 12:17:10', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1560, '系统测试人员', '2020-05-29 12:17:30', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1561, '系统测试人员', '2020-05-29 13:01:56', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1562, '系统测试人员', '2020-05-29 14:25:44', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1563, 'zhangyukang', '2020-05-29 14:34:46', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1564, 'zhangyukang', '2020-05-29 16:56:12', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1565, 'zhangyukang', '2020-05-29 18:16:18', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1566, '系统测试人员', '2020-05-29 18:25:38', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1567, '系统测试人员', '2020-05-29 20:00:29', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1568, 'zhangyukang', '2020-05-29 20:13:02', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1569, 'zhangyukang', '2020-05-29 20:18:37', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1570, '系统测试人员', '2020-05-29 20:20:08', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1571, 'zhangyukang', '2020-05-29 20:20:22', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1572, '系统测试人员', '2020-05-29 20:21:23', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1573, 'zhangyukang', '2020-05-29 20:21:38', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1574, '系统测试人员', '2020-05-29 20:22:51', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1575, '系统测试人员', '2020-06-13 22:44:15', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1576, '系统测试人员', '2020-06-29 20:28:01', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1577, '系统测试人员', '2020-08-17 19:44:12', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1578, '系统测试人员', '2020-08-17 19:50:46', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1579, 'admin', '2020-08-19 14:25:49', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1580, 'admin', '2020-08-19 17:40:44', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1581, 'jack', '2020-08-19 17:41:30', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1582, 'admin', '2020-08-19 17:42:45', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1583, 'jack', '2020-08-19 17:43:23', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1584, 'admin', '2020-08-19 17:58:20', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1585, 'jack', '2020-08-19 18:32:43', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1586, 'admin', '2020-08-19 19:31:10', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');
INSERT INTO `tb_login_log` VALUES (1587, 'admin', '2020-09-09 20:20:54', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 8');

-- ----------------------------
-- Table structure for tb_menu
-- ----------------------------
DROP TABLE IF EXISTS `tb_menu`;
CREATE TABLE `tb_menu`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单/按钮ID',
  `parent_id` bigint(20) NULL DEFAULT NULL COMMENT '上级菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜单/按钮名称',
  `url` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单URL',
  `perms` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '权限标识',
  `icon` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图标',
  `type` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '类型 0菜单 1按钮',
  `order_num` bigint(20) NULL DEFAULT NULL COMMENT '排序',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `modified_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `available` int(11) NULL DEFAULT 1 COMMENT '0：不可用，1：可用',
  `open` int(1) NULL DEFAULT 1 COMMENT '0:不展开，1：展开',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 344 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '菜单表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_menu
-- ----------------------------
INSERT INTO `tb_menu` VALUES (1, 0, '系统管理', '', NULL, 'el-icon-setting', '0', 1, '2020-03-07 17:41:30', '2020-08-19 17:57:20', 1, 0);
INSERT INTO `tb_menu` VALUES (4, 1, '菜单权限', '/menus', NULL, 'el-icon-help', '0', 3, '2020-03-07 18:57:42', '2020-03-20 11:50:46', 1, 0);
INSERT INTO `tb_menu` VALUES (5, 0, '日志管理', '/logs', NULL, 'el-icon-camera', '0', 6, '2020-03-07 18:58:18', '2020-05-07 19:35:19', 1, 0);
INSERT INTO `tb_menu` VALUES (226, 1, '用户管理', '/users', 'users', 'el-icon-user', '0', 2, '2020-03-10 05:27:54', '2020-04-23 20:04:36', 1, 0);
INSERT INTO `tb_menu` VALUES (229, 312, '物资管理', '', 'el-icon-date', 'el-icon-date', '0', 1, '2020-03-10 05:34:08', '2020-04-30 18:29:20', 1, 1);
INSERT INTO `tb_menu` VALUES (230, 229, '物资入库', '/inStocks', 'el-icon-date', 'el-icon-date', '0', 1, '2020-03-10 05:34:28', '2020-08-19 18:40:25', 1, 0);
INSERT INTO `tb_menu` VALUES (234, 226, '用户添加', '', 'user:add', 'el-icon-plus', '1', 1, '2020-03-10 05:50:44', '2020-03-10 07:51:56', 1, 0);
INSERT INTO `tb_menu` VALUES (235, 1, '角色管理', '/roles', '', 'el-icon-postcard', '0', 3, '2020-03-10 05:51:28', '2020-05-16 16:37:58', 1, 0);
INSERT INTO `tb_menu` VALUES (239, 226, '用户删除', '', 'user:delete', 'el-icon-picture', '1', 1, '2020-03-10 06:05:30', '2020-03-10 08:10:19', 1, 0);
INSERT INTO `tb_menu` VALUES (240, 226, '用户编辑', '', 'user:edit', 'el-icon-video-camera-solid', '1', 1, '2020-03-10 06:06:30', '2020-03-10 07:52:28', 1, 0);
INSERT INTO `tb_menu` VALUES (241, 235, '角色编辑', '', 'role:edit', 'el-icon-s-promotion', '1', 2, '2020-03-10 06:11:03', '2020-03-11 11:40:19', 1, 0);
INSERT INTO `tb_menu` VALUES (242, 235, '角色删除', '', 'role:delete', 'el-icon-s-marketing', '1', 3, '2020-03-10 06:15:29', '2020-03-11 11:43:36', 1, 0);
INSERT INTO `tb_menu` VALUES (247, 4, '添加菜单', '', 'menu:add', 'el-icon-s-opportunity', '1', 1, '2020-03-10 07:55:10', '2020-04-27 09:59:43', 1, 0);
INSERT INTO `tb_menu` VALUES (249, 4, '修改菜单', '', 'menu:update', 'el-icon-share', '1', 2, '2020-03-10 07:56:55', '2020-03-15 13:29:29', 1, 0);
INSERT INTO `tb_menu` VALUES (250, 4, '删除菜单', '', 'menu:delete', 'el-icon-folder-opened', '1', 3, '2020-03-10 07:57:38', '2020-03-15 13:29:41', 1, 0);
INSERT INTO `tb_menu` VALUES (251, 235, '分配权限', '', 'role:authority', 'el-icon-document-add', '1', 1, '2020-03-10 08:13:22', '2020-03-11 11:39:30', 1, 0);
INSERT INTO `tb_menu` VALUES (253, 1, '系统首页', '/welcome', 'welcome:view', 'el-icon-star-off', '0', 1, '2020-03-10 08:46:44', '2020-05-29 20:43:12', 1, 0);
INSERT INTO `tb_menu` VALUES (254, 226, '分配角色', '', 'user:assign', 'el-icon-s-tools', '1', 3, '2020-03-11 01:32:29', '2020-04-27 10:58:30', 1, 0);
INSERT INTO `tb_menu` VALUES (255, 235, '添加角色', '', 'role:add', 'el-icon-help', '1', 1, '2020-03-11 01:34:18', '2020-03-11 01:34:18', 1, 0);
INSERT INTO `tb_menu` VALUES (256, 226, '禁用用户', '', 'user:status', 'el-icon-circle-close', '1', 1, '2020-03-11 06:50:04', '2020-03-14 05:05:49', 1, 0);
INSERT INTO `tb_menu` VALUES (258, 226, '用户更新', '', 'user:update', 'el-icon-refresh', '1', 1, '2020-03-11 08:26:54', '2020-03-11 08:26:54', 1, 0);
INSERT INTO `tb_menu` VALUES (259, 235, '角色更新', '', 'role:update', 'el-icon-refresh-left', '1', 1, '2020-03-11 11:45:20', '2020-03-11 11:45:20', 1, 0);
INSERT INTO `tb_menu` VALUES (260, 235, '状态更新', '', 'role:status', 'el-icon-refresh', '1', 1, '2020-03-14 05:07:02', '2020-03-14 05:07:24', 1, 0);
INSERT INTO `tb_menu` VALUES (261, 1, '部门管理', '/departments', '', 'el-icon-s-home', '0', 3, '2020-03-15 06:05:48', '2020-03-22 22:53:42', 1, 0);
INSERT INTO `tb_menu` VALUES (262, 261, '添加部门', '', 'department:add', 'el-icon-plus', '1', 1, '2020-03-15 11:57:42', '2020-03-21 12:37:21', 1, 0);
INSERT INTO `tb_menu` VALUES (263, 261, '编辑院系', '', 'department:edit', 'el-icon-edit', '1', 1, '2020-03-15 11:59:52', '2020-03-15 12:16:36', 1, 0);
INSERT INTO `tb_menu` VALUES (264, 261, '更新院系', '', 'department:update', 'el-icon-refresh', '1', 1, '2020-03-15 12:02:34', '2020-03-15 12:16:32', 1, 0);
INSERT INTO `tb_menu` VALUES (265, 261, '删除院系', NULL, 'department:delete', 'el-icon-delete', '1', 1, '2020-03-15 12:03:21', '2020-03-15 12:03:21', 1, 0);
INSERT INTO `tb_menu` VALUES (267, 229, '物资资料', '/products', '', 'el-icon-goods', '0', 2, '2020-03-16 09:01:02', '2020-04-30 19:11:56', 1, 0);
INSERT INTO `tb_menu` VALUES (268, 229, '物资类别', '/productCategorys', '', 'el-icon-star-off', '0', 2, '2020-03-16 09:01:48', '2020-03-22 22:45:40', 1, 0);
INSERT INTO `tb_menu` VALUES (269, 311, '物资来源', '/suppliers', '', 'el-icon-coordinate', '0', 5, '2020-03-16 12:35:10', '2020-04-11 13:56:16', 1, 0);
INSERT INTO `tb_menu` VALUES (270, 229, '物资发放', '/outStocks', '', 'el-icon-goods', '0', 5, '2020-03-16 13:55:49', '2020-05-10 14:46:53', 1, 1);
INSERT INTO `tb_menu` VALUES (271, 5, '登入日志', '/loginLog', 'login:log', 'el-icon-date', '0', 1, '2020-03-20 10:31:12', '2020-04-04 20:01:02', 1, 0);
INSERT INTO `tb_menu` VALUES (272, 303, '疫情辟谣', '/rumors', NULL, 'el-icon-help', '0', 5, '2020-03-20 19:29:40', '2020-05-01 12:41:01', 1, 0);
INSERT INTO `tb_menu` VALUES (273, 303, '全国疫情', '/map', 'map:view', 'el-icon-s-opportunity', '0', 1, '2020-03-20 11:32:02', '2020-03-20 11:32:02', 1, 1);
INSERT INTO `tb_menu` VALUES (274, 267, '添加物资', '', 'product:add', 'el-icon-s-opportunity', '1', 1, '2020-03-21 02:04:24', '2020-03-21 02:04:24', 1, 0);
INSERT INTO `tb_menu` VALUES (276, 267, '上传图片', NULL, 'upload:image', 'el-icon-finished', '1', 2, '2020-03-21 02:05:21', '2020-03-21 02:05:21', 1, 0);
INSERT INTO `tb_menu` VALUES (277, 267, '更新物资', NULL, 'product:update', 'el-icon-folder', '1', 3, '2020-03-21 02:05:56', '2020-03-21 02:05:56', 1, 0);
INSERT INTO `tb_menu` VALUES (278, 267, '编辑物资', NULL, 'product:edit', 'el-icon-edit', '1', 1, '2020-03-21 02:06:23', '2020-03-21 02:06:23', 1, 0);
INSERT INTO `tb_menu` VALUES (279, 269, '删除来源', '', 'supplier:delete', 'el-icon-document-delete', '1', 1, '2020-03-21 02:17:29', '2020-03-21 12:32:22', 1, 0);
INSERT INTO `tb_menu` VALUES (280, 269, '更新来源', '', 'supplier:update', 'el-icon-paperclip', '1', 1, '2020-03-21 02:18:34', '2020-03-21 12:36:41', 1, 0);
INSERT INTO `tb_menu` VALUES (281, 269, '添加来源', NULL, 'supplier:add', 'el-icon-document-add', '1', 1, '2020-03-21 02:19:02', '2020-03-21 02:19:02', 1, 1);
INSERT INTO `tb_menu` VALUES (282, 269, '编辑来源', NULL, 'supplier:edit', 'el-icon-scissors', '1', 2, '2020-03-21 02:19:36', '2020-03-21 02:19:36', 1, 1);
INSERT INTO `tb_menu` VALUES (283, 268, '添加类别', '', 'productCategory:add', ' el-icon-folder-add', '1', 1, '2020-03-21 02:26:12', '2020-03-21 02:44:22', 1, 0);
INSERT INTO `tb_menu` VALUES (284, 268, '删除类别', NULL, 'productCategory:delete', 'el-icon-delete', '1', 1, '2020-03-21 02:27:05', '2020-03-21 02:28:49', 1, 0);
INSERT INTO `tb_menu` VALUES (285, 268, '编辑类别', NULL, 'productCategory:edit', 'el-icon-scissors', '1', 2, '2020-03-21 02:27:42', '2020-03-21 02:27:42', 1, 0);
INSERT INTO `tb_menu` VALUES (286, 268, '更新类别', NULL, 'productCategory:update', ' el-icon-coordinate', '1', 1, '2020-03-21 02:28:17', '2020-03-21 02:28:17', 1, 0);
INSERT INTO `tb_menu` VALUES (295, 0, '其他管理', '', '', 'el-icon-s-marketing', '0', 5, '2020-03-22 01:21:56', '2020-05-16 16:54:43', 1, 0);
INSERT INTO `tb_menu` VALUES (296, 295, 'swagger文档', '/swagger', NULL, 'el-icon-document', '0', 2, '2020-03-22 01:22:48', '2020-05-07 19:43:42', 1, 0);
INSERT INTO `tb_menu` VALUES (297, 295, '监控管理', '', '', 'el-icon-warning', '0', 1, '2020-03-22 02:47:10', '2020-05-16 16:54:39', 1, 0);
INSERT INTO `tb_menu` VALUES (298, 297, 'SQL监控', '/druid', NULL, 'el-icon-view', '0', 1, '2020-03-22 02:48:05', '2020-03-22 02:49:50', 1, 0);
INSERT INTO `tb_menu` VALUES (299, 271, '删除日志', '', 'loginLog:delete', 'el-icon-delete', '1', 1, '2020-03-22 21:55:44', '2020-03-22 21:55:44', 1, 0);
INSERT INTO `tb_menu` VALUES (300, 271, '批量删除', '', 'loginLog:batchDelete', 'el-icon-delete-solid', '1', 1, '2020-03-22 22:19:26', '2020-03-22 22:19:26', 1, 0);
INSERT INTO `tb_menu` VALUES (301, 4, '编辑菜单', '', 'menu:edit', 'el-icon-edit', '1', 1, '2020-03-22 23:12:25', '2020-03-22 23:12:25', 1, 0);
INSERT INTO `tb_menu` VALUES (303, 0, '健康报备', '', '', 'el-icon-platform-eleme', '0', 3, '2020-03-24 10:11:53', '2020-05-16 11:53:36', 1, 0);
INSERT INTO `tb_menu` VALUES (304, 303, '健康打卡', '/health', '', 'el-icon-s-cooperation', '0', 1, '2020-03-24 10:12:57', '2020-05-06 09:37:51', 1, 0);
INSERT INTO `tb_menu` VALUES (305, 303, '查看情况', NULL, NULL, 'el-icon-c-scale-to-original', '0', 2, '2020-03-24 10:13:49', '2020-03-24 10:16:44', 1, 1);
INSERT INTO `tb_menu` VALUES (307, 5, '操作日志', '/logs', '', 'el-icon-edit', '0', 1, '2020-04-04 19:04:53', '2020-05-16 16:39:18', 1, 1);
INSERT INTO `tb_menu` VALUES (308, 307, '删除日志', '', 'log:delete', 'el-icon-circle-close', '1', 1, '2020-04-04 19:59:20', '2020-04-04 19:59:20', 1, 1);
INSERT INTO `tb_menu` VALUES (309, 307, '批量删除', NULL, 'log:batchDelete', 'el-icon-document-delete', '1', 2, '2020-04-04 19:59:59', '2020-04-04 19:59:59', 1, 0);
INSERT INTO `tb_menu` VALUES (310, 311, '物资去处', '/consumers', '', 'el-icon-edit', '0', 1, '2020-04-05 10:08:21', '2020-04-05 10:08:21', 1, 0);
INSERT INTO `tb_menu` VALUES (311, 312, '物资流向', NULL, NULL, 'el-icon-edit', '0', 3, '2020-04-05 10:16:59', '2020-04-30 18:40:43', 1, 0);
INSERT INTO `tb_menu` VALUES (312, 0, '业务管理', NULL, NULL, 'el-icon-s-goods', '0', 2, '2020-04-05 10:19:07', '2020-08-19 17:57:27', 1, 1);
INSERT INTO `tb_menu` VALUES (316, 229, '物资库存', '/stocks', '', 'el-icon-tickets', '0', 5, '2020-04-16 08:45:08', '2020-05-16 16:56:53', 1, 0);
INSERT INTO `tb_menu` VALUES (317, 226, '导出表格', '', 'user:export', 'el-icon-edit', '1', 1, '2020-04-17 18:02:05', '2020-04-17 18:02:05', 1, 0);
INSERT INTO `tb_menu` VALUES (318, 295, '图标管理', '/icons', '', 'el-icon-star-off', '0', 2, '2020-04-21 12:06:33', '2020-05-16 17:07:35', 1, 1);
INSERT INTO `tb_menu` VALUES (319, 1, '公告管理', '/notices', '', 'el-icon-s-flag', '0', 4, '2020-04-21 12:07:46', '2020-05-29 12:05:22', 0, 0);
INSERT INTO `tb_menu` VALUES (320, 319, '公告发布', '/notices/add', '', 'el-icon-edit', '1', 1, '2020-04-21 12:26:56', '2020-04-21 12:26:56', 1, 1);
INSERT INTO `tb_menu` VALUES (321, 1, '附件管理', '/attachments', '', 'el-icon-picture-outline', '0', 2, '2020-04-25 10:52:17', '2020-04-25 10:52:17', 1, 1);
INSERT INTO `tb_menu` VALUES (322, 310, '添加去处', '', 'consumer:add', 'el-icon-plus', '1', 2, '2020-04-27 16:57:04', '2020-04-27 16:58:21', 1, 1);
INSERT INTO `tb_menu` VALUES (323, 310, '删除去处', NULL, 'consumer:delete', 'el-icon-delete', '1', 1, '2020-04-27 16:57:42', '2020-04-27 16:57:42', 1, 0);
INSERT INTO `tb_menu` VALUES (324, 310, '编辑去处', '', 'consumer:edit', 'el-icon-edit', '1', 1, '2020-04-27 16:59:17', '2020-04-27 16:59:17', 1, 0);
INSERT INTO `tb_menu` VALUES (325, 310, '更新去处', NULL, 'consumer:update', 'el-icon-star-off', '1', 1, '2020-04-27 17:00:18', '2020-04-27 17:00:18', 1, 1);
INSERT INTO `tb_menu` VALUES (326, 230, '添加入库', '', 'inStock:in', 'el-icon-plus', '1', 3, '2020-04-27 17:07:04', '2020-08-19 17:57:15', 1, 1);
INSERT INTO `tb_menu` VALUES (328, 230, '入库明细', NULL, 'inStock:detail', 'el-icon-zoom-in', '1', 2, '2020-04-27 17:08:25', '2020-04-27 17:08:25', 1, 0);
INSERT INTO `tb_menu` VALUES (329, 4, '导出菜单', NULL, 'menu:export', 'el-icon-edit', '1', 1, '2020-04-27 17:26:40', '2020-04-27 17:26:40', 1, 0);
INSERT INTO `tb_menu` VALUES (331, 267, '删除物资', NULL, 'product:delete', 'el-icon-delete', '1', 1, '2020-04-30 18:27:02', '2020-04-30 19:05:31', 1, 0);
INSERT INTO `tb_menu` VALUES (332, 267, '回收物资', '', 'product:remove', 'el-icon-remove', '1', 1, '2020-04-30 18:56:48', '2020-04-30 18:56:48', 1, 1);
INSERT INTO `tb_menu` VALUES (333, 267, '物资审核', NULL, 'product:publish', 'el-icon-edit', '1', 1, '2020-04-30 18:58:38', '2020-04-30 19:05:42', 1, 0);
INSERT INTO `tb_menu` VALUES (336, 267, '物资还原', NULL, 'product:back', 'el-icon-top-left', '1', 1, '2020-04-30 19:06:22', '2020-04-30 19:06:22', 1, 0);
INSERT INTO `tb_menu` VALUES (337, 230, '入库回收', '', 'inStock:remove', 'el-icon-remove', '1', 3, '2020-04-30 19:12:56', '2020-08-19 17:57:55', 1, 1);
INSERT INTO `tb_menu` VALUES (338, 230, '入库审核', NULL, 'inStock:publish', 'el-icon-edit', '1', 2, '2020-04-30 19:13:32', '2020-08-19 17:57:32', 1, 0);
INSERT INTO `tb_menu` VALUES (339, 230, '删除记录', NULL, 'inStock:delete', 'el-icon-delete', '1', 4, '2020-04-30 19:14:03', '2020-08-19 17:57:42', 1, 0);
INSERT INTO `tb_menu` VALUES (340, 230, '入库还原', '', 'inStock:back', 'el-icon-d-arrow-left', '1', 3, '2020-04-30 19:17:27', '2020-08-19 17:57:49', 1, 0);
INSERT INTO `tb_menu` VALUES (341, 295, '个人博客', '/blog', '', 'el-icon-view', '0', 1, '2020-05-07 19:34:31', '2020-05-07 19:34:31', 1, 0);
INSERT INTO `tb_menu` VALUES (343, 304, '健康上报', '', 'health:report', 'el-icon-edit', '1', 1, '2020-05-14 20:21:09', '2020-05-14 20:21:09', 1, 0);

-- ----------------------------
-- Table structure for tb_role
-- ----------------------------
DROP TABLE IF EXISTS `tb_role`;
CREATE TABLE `tb_role`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色名称',
  `remark` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色描述',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `modified_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `status` int(1) NULL DEFAULT 1 COMMENT '是否可用,0:不可用，1：可用',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 144 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_role
-- ----------------------------
INSERT INTO `tb_role` VALUES (0, 'admin33', '拥有系统的最高权限.', '2019-06-14 00:00:00', '2020-04-27 21:29:29', 1);
INSERT INTO `tb_role` VALUES (77, 'Redis监控员', '负责Redis模块', '2019-06-14 20:49:22', '2019-11-11 16:46:57', 1);
INSERT INTO `tb_role` VALUES (78, '系统监控员', '负责整个系统监控模块', '2019-06-14 00:00:00', '2020-05-29 17:14:02', 1);
INSERT INTO `tb_role` VALUES (79, '跑批人员', '负责任务调度跑批模块', '2019-06-14 20:51:02', '2019-11-16 10:42:54', 1);
INSERT INTO `tb_role` VALUES (80, '开发人员', '拥有代码生成模块的权限', '2019-06-14 20:51:26', '2019-11-11 16:47:05', 1);
INSERT INTO `tb_role` VALUES (125, '测试用户', '测试用户', '2019-11-15 18:59:19', '2019-11-15 18:59:19', 1);
INSERT INTO `tb_role` VALUES (126, 'admin333', '美国校队队长', '2019-11-22 00:00:00', '2020-05-29 17:04:38', 1);
INSERT INTO `tb_role` VALUES (127, '鹿晗', '铁血硬汉', '2019-11-22 15:57:32', '2019-11-22 15:57:32', 1);
INSERT INTO `tb_role` VALUES (128, '乔碧萝', '美落天仙', '2019-11-22 15:58:00', '2019-11-22 15:58:00', 1);
INSERT INTO `tb_role` VALUES (135, '用户添加人员', '只拥有用户添加的权限', '2020-03-11 02:39:57', '2020-03-11 02:39:57', 1);
INSERT INTO `tb_role` VALUES (136, '进货员', '采购口罩的帅哥，拥有采购商品的权限', '2020-03-11 00:00:00', '2020-03-11 03:12:38', 1);
INSERT INTO `tb_role` VALUES (137, 'linux运维人员', '负责产品的运维。', '2020-03-11 03:13:29', '2020-03-11 03:13:29', 1);
INSERT INTO `tb_role` VALUES (138, '测试员工', '登入测试系统的员工，无删除，无修改权限', '2020-03-14 04:57:52', '2020-03-14 04:57:52', 1);
INSERT INTO `tb_role` VALUES (139, '辅导员老师', '可以查看学生健康报备的详细情况', '2020-03-15 05:15:31', '2020-03-15 05:15:31', 1);
INSERT INTO `tb_role` VALUES (140, '部门主任', '系主任，管理院系。', '2020-03-15 00:00:00', '2020-05-16 18:33:28', 1);
INSERT INTO `tb_role` VALUES (141, '物资入库操作员', '角色拥有物资管理入库的权限', '2020-03-24 00:00:00', '2020-03-24 10:23:36', 1);
INSERT INTO `tb_role` VALUES (143, '超级管理员', '拥有系统的最高权限', '2020-04-21 10:34:12', '2020-04-21 10:34:12', 1);

-- ----------------------------
-- Table structure for tb_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `tb_role_menu`;
CREATE TABLE `tb_role_menu`  (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单/按钮ID'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色菜单关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_role_menu
-- ----------------------------
INSERT INTO `tb_role_menu` VALUES (125, 253);
INSERT INTO `tb_role_menu` VALUES (125, 226);
INSERT INTO `tb_role_menu` VALUES (125, 234);
INSERT INTO `tb_role_menu` VALUES (125, 239);
INSERT INTO `tb_role_menu` VALUES (125, 240);
INSERT INTO `tb_role_menu` VALUES (125, 256);
INSERT INTO `tb_role_menu` VALUES (125, 258);
INSERT INTO `tb_role_menu` VALUES (125, 317);
INSERT INTO `tb_role_menu` VALUES (125, 254);
INSERT INTO `tb_role_menu` VALUES (125, 321);
INSERT INTO `tb_role_menu` VALUES (125, 4);
INSERT INTO `tb_role_menu` VALUES (125, 247);
INSERT INTO `tb_role_menu` VALUES (125, 301);
INSERT INTO `tb_role_menu` VALUES (125, 329);
INSERT INTO `tb_role_menu` VALUES (125, 249);
INSERT INTO `tb_role_menu` VALUES (125, 250);
INSERT INTO `tb_role_menu` VALUES (125, 235);
INSERT INTO `tb_role_menu` VALUES (125, 251);
INSERT INTO `tb_role_menu` VALUES (125, 255);
INSERT INTO `tb_role_menu` VALUES (125, 259);
INSERT INTO `tb_role_menu` VALUES (125, 260);
INSERT INTO `tb_role_menu` VALUES (125, 241);
INSERT INTO `tb_role_menu` VALUES (125, 242);
INSERT INTO `tb_role_menu` VALUES (125, 261);
INSERT INTO `tb_role_menu` VALUES (125, 262);
INSERT INTO `tb_role_menu` VALUES (125, 263);
INSERT INTO `tb_role_menu` VALUES (125, 264);
INSERT INTO `tb_role_menu` VALUES (125, 265);
INSERT INTO `tb_role_menu` VALUES (125, 320);
INSERT INTO `tb_role_menu` VALUES (125, 312);
INSERT INTO `tb_role_menu` VALUES (125, 229);
INSERT INTO `tb_role_menu` VALUES (125, 230);
INSERT INTO `tb_role_menu` VALUES (125, 326);
INSERT INTO `tb_role_menu` VALUES (125, 337);
INSERT INTO `tb_role_menu` VALUES (125, 338);
INSERT INTO `tb_role_menu` VALUES (125, 339);
INSERT INTO `tb_role_menu` VALUES (125, 340);
INSERT INTO `tb_role_menu` VALUES (125, 328);
INSERT INTO `tb_role_menu` VALUES (125, 267);
INSERT INTO `tb_role_menu` VALUES (125, 274);
INSERT INTO `tb_role_menu` VALUES (125, 278);
INSERT INTO `tb_role_menu` VALUES (125, 331);
INSERT INTO `tb_role_menu` VALUES (125, 332);
INSERT INTO `tb_role_menu` VALUES (125, 333);
INSERT INTO `tb_role_menu` VALUES (125, 336);
INSERT INTO `tb_role_menu` VALUES (125, 276);
INSERT INTO `tb_role_menu` VALUES (125, 277);
INSERT INTO `tb_role_menu` VALUES (125, 268);
INSERT INTO `tb_role_menu` VALUES (125, 283);
INSERT INTO `tb_role_menu` VALUES (125, 284);
INSERT INTO `tb_role_menu` VALUES (125, 286);
INSERT INTO `tb_role_menu` VALUES (125, 285);
INSERT INTO `tb_role_menu` VALUES (125, 270);
INSERT INTO `tb_role_menu` VALUES (125, 316);
INSERT INTO `tb_role_menu` VALUES (125, 311);
INSERT INTO `tb_role_menu` VALUES (125, 310);
INSERT INTO `tb_role_menu` VALUES (125, 323);
INSERT INTO `tb_role_menu` VALUES (125, 324);
INSERT INTO `tb_role_menu` VALUES (125, 325);
INSERT INTO `tb_role_menu` VALUES (125, 322);
INSERT INTO `tb_role_menu` VALUES (125, 269);
INSERT INTO `tb_role_menu` VALUES (125, 279);
INSERT INTO `tb_role_menu` VALUES (125, 280);
INSERT INTO `tb_role_menu` VALUES (125, 281);
INSERT INTO `tb_role_menu` VALUES (125, 282);
INSERT INTO `tb_role_menu` VALUES (125, 303);
INSERT INTO `tb_role_menu` VALUES (125, 273);
INSERT INTO `tb_role_menu` VALUES (125, 304);
INSERT INTO `tb_role_menu` VALUES (125, 343);
INSERT INTO `tb_role_menu` VALUES (125, 305);
INSERT INTO `tb_role_menu` VALUES (125, 272);
INSERT INTO `tb_role_menu` VALUES (125, 295);
INSERT INTO `tb_role_menu` VALUES (125, 297);
INSERT INTO `tb_role_menu` VALUES (125, 298);
INSERT INTO `tb_role_menu` VALUES (125, 341);
INSERT INTO `tb_role_menu` VALUES (125, 296);
INSERT INTO `tb_role_menu` VALUES (125, 318);
INSERT INTO `tb_role_menu` VALUES (125, 5);
INSERT INTO `tb_role_menu` VALUES (125, 271);
INSERT INTO `tb_role_menu` VALUES (125, 299);
INSERT INTO `tb_role_menu` VALUES (125, 300);
INSERT INTO `tb_role_menu` VALUES (125, 307);
INSERT INTO `tb_role_menu` VALUES (125, 308);
INSERT INTO `tb_role_menu` VALUES (125, 309);
INSERT INTO `tb_role_menu` VALUES (125, 1);
INSERT INTO `tb_role_menu` VALUES (77, 321);
INSERT INTO `tb_role_menu` VALUES (77, 1);
INSERT INTO `tb_role_menu` VALUES (0, 253);
INSERT INTO `tb_role_menu` VALUES (0, 234);
INSERT INTO `tb_role_menu` VALUES (0, 240);
INSERT INTO `tb_role_menu` VALUES (0, 256);
INSERT INTO `tb_role_menu` VALUES (0, 258);
INSERT INTO `tb_role_menu` VALUES (0, 317);
INSERT INTO `tb_role_menu` VALUES (0, 254);
INSERT INTO `tb_role_menu` VALUES (0, 321);
INSERT INTO `tb_role_menu` VALUES (0, 4);
INSERT INTO `tb_role_menu` VALUES (0, 247);
INSERT INTO `tb_role_menu` VALUES (0, 301);
INSERT INTO `tb_role_menu` VALUES (0, 329);
INSERT INTO `tb_role_menu` VALUES (0, 249);
INSERT INTO `tb_role_menu` VALUES (0, 250);
INSERT INTO `tb_role_menu` VALUES (0, 235);
INSERT INTO `tb_role_menu` VALUES (0, 251);
INSERT INTO `tb_role_menu` VALUES (0, 255);
INSERT INTO `tb_role_menu` VALUES (0, 259);
INSERT INTO `tb_role_menu` VALUES (0, 260);
INSERT INTO `tb_role_menu` VALUES (0, 241);
INSERT INTO `tb_role_menu` VALUES (0, 242);
INSERT INTO `tb_role_menu` VALUES (0, 261);
INSERT INTO `tb_role_menu` VALUES (0, 262);
INSERT INTO `tb_role_menu` VALUES (0, 263);
INSERT INTO `tb_role_menu` VALUES (0, 264);
INSERT INTO `tb_role_menu` VALUES (0, 265);
INSERT INTO `tb_role_menu` VALUES (0, 320);
INSERT INTO `tb_role_menu` VALUES (0, 312);
INSERT INTO `tb_role_menu` VALUES (0, 229);
INSERT INTO `tb_role_menu` VALUES (0, 230);
INSERT INTO `tb_role_menu` VALUES (0, 326);
INSERT INTO `tb_role_menu` VALUES (0, 337);
INSERT INTO `tb_role_menu` VALUES (0, 338);
INSERT INTO `tb_role_menu` VALUES (0, 339);
INSERT INTO `tb_role_menu` VALUES (0, 340);
INSERT INTO `tb_role_menu` VALUES (0, 328);
INSERT INTO `tb_role_menu` VALUES (0, 267);
INSERT INTO `tb_role_menu` VALUES (0, 274);
INSERT INTO `tb_role_menu` VALUES (0, 278);
INSERT INTO `tb_role_menu` VALUES (0, 331);
INSERT INTO `tb_role_menu` VALUES (0, 332);
INSERT INTO `tb_role_menu` VALUES (0, 333);
INSERT INTO `tb_role_menu` VALUES (0, 336);
INSERT INTO `tb_role_menu` VALUES (0, 276);
INSERT INTO `tb_role_menu` VALUES (0, 277);
INSERT INTO `tb_role_menu` VALUES (0, 268);
INSERT INTO `tb_role_menu` VALUES (0, 283);
INSERT INTO `tb_role_menu` VALUES (0, 284);
INSERT INTO `tb_role_menu` VALUES (0, 286);
INSERT INTO `tb_role_menu` VALUES (0, 285);
INSERT INTO `tb_role_menu` VALUES (0, 270);
INSERT INTO `tb_role_menu` VALUES (0, 316);
INSERT INTO `tb_role_menu` VALUES (0, 311);
INSERT INTO `tb_role_menu` VALUES (0, 310);
INSERT INTO `tb_role_menu` VALUES (0, 323);
INSERT INTO `tb_role_menu` VALUES (0, 324);
INSERT INTO `tb_role_menu` VALUES (0, 325);
INSERT INTO `tb_role_menu` VALUES (0, 322);
INSERT INTO `tb_role_menu` VALUES (0, 269);
INSERT INTO `tb_role_menu` VALUES (0, 279);
INSERT INTO `tb_role_menu` VALUES (0, 280);
INSERT INTO `tb_role_menu` VALUES (0, 281);
INSERT INTO `tb_role_menu` VALUES (0, 282);
INSERT INTO `tb_role_menu` VALUES (0, 303);
INSERT INTO `tb_role_menu` VALUES (0, 273);
INSERT INTO `tb_role_menu` VALUES (0, 304);
INSERT INTO `tb_role_menu` VALUES (0, 343);
INSERT INTO `tb_role_menu` VALUES (0, 305);
INSERT INTO `tb_role_menu` VALUES (0, 272);
INSERT INTO `tb_role_menu` VALUES (0, 295);
INSERT INTO `tb_role_menu` VALUES (0, 297);
INSERT INTO `tb_role_menu` VALUES (0, 298);
INSERT INTO `tb_role_menu` VALUES (0, 341);
INSERT INTO `tb_role_menu` VALUES (0, 296);
INSERT INTO `tb_role_menu` VALUES (0, 318);
INSERT INTO `tb_role_menu` VALUES (0, 5);
INSERT INTO `tb_role_menu` VALUES (0, 271);
INSERT INTO `tb_role_menu` VALUES (0, 299);
INSERT INTO `tb_role_menu` VALUES (0, 300);
INSERT INTO `tb_role_menu` VALUES (0, 307);
INSERT INTO `tb_role_menu` VALUES (0, 308);
INSERT INTO `tb_role_menu` VALUES (0, 309);
INSERT INTO `tb_role_menu` VALUES (0, 1);
INSERT INTO `tb_role_menu` VALUES (0, 226);

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `nickname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `avatar` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '头像',
  `phone_number` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `status` int(1) NOT NULL COMMENT '状态 0锁定 1有效',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `modified_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `sex` int(1) NULL DEFAULT NULL COMMENT '性别 0男 1女 2保密',
  `salt` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '盐',
  `type` int(11) NOT NULL DEFAULT 1 COMMENT '0:超级管理员，1：系统用户',
  `password` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `birth` date NULL DEFAULT NULL,
  `department_id` bigint(20) NULL DEFAULT 1 COMMENT '部门id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 197 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES (5, 'admin', '小章鱼', 'Jana@126.com', 'http://thirdqq.qlogo.cn/g?b=oidb&k=icTYjyV5afABvE1v4ge9SLg&s=100&t=1584195695', '17744444444', 1, '2019-06-14 21:12:16', '2020-03-19 04:20:40', 0, 'cfbf6d34-d3e4-4653-86f0-e33d4595d52b', 0, 'd7b9c28cac022955cff27947eafce0ad', '2020-03-27', 1);
INSERT INTO `tb_user` VALUES (196, 'jack', 'testetst', 'test@qq.com', 'http://badidol.com/uploads/images/avatars/201910/24/18_1571921832_HG9E55x9NY.jpg', '15045414141', 1, '2020-08-19 17:41:20', '2020-08-19 17:41:20', 1, '303191e1-4082-4d2d-8976-5a93426a', 1, '49bdaf7293cc9bd6fc9f50c3b03b7d6d', '2020-08-17', 12);

-- ----------------------------
-- Table structure for tb_user_role
-- ----------------------------
DROP TABLE IF EXISTS `tb_user_role`;
CREATE TABLE `tb_user_role`  (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户角色关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_user_role
-- ----------------------------
INSERT INTO `tb_user_role` VALUES (194, 125);
INSERT INTO `tb_user_role` VALUES (196, 0);

SET FOREIGN_KEY_CHECKS = 1;
