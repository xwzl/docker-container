/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 80025
 Source Host           : localhost:3306
 Source Schema         : nacos

 Target Server Type    : MySQL
 Target Server Version : 80025
 File Encoding         : 65001

 Date: 23/03/2022 17:40:20
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for config_info
-- ----------------------------
DROP TABLE IF EXISTS `config_info`;
CREATE TABLE `config_info` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
  `data_id` varchar(255) COLLATE utf8_bin NOT NULL COMMENT 'data_id',
  `group_id` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `content` longtext COLLATE utf8_bin NOT NULL COMMENT 'content',
  `md5` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT 'md5',
  `gmt_create` datetime NOT NULL DEFAULT '2010-05-05 00:00:00' COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL DEFAULT '2010-05-05 00:00:00' COMMENT '修改时间',
  `src_user` text COLLATE utf8_bin COMMENT 'source user',
  `src_ip` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT 'source ip',
  `app_name` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `tenant_id` varchar(128) COLLATE utf8_bin DEFAULT '' COMMENT '租户字段',
  `c_desc` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `c_use` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `effect` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `type` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `c_schema` text COLLATE utf8_bin,
  `encrypted_data_key` text COLLATE utf8_bin NOT NULL COMMENT '秘钥',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_configinfo_datagrouptenant` (`data_id`,`group_id`,`tenant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin COMMENT='config_info';

-- ----------------------------
-- Records of config_info
-- ----------------------------
BEGIN;
INSERT INTO `config_info` VALUES (1, 'transport.type', 'SEATA_GROUP', 'TCP', 'b136ef5f6a01d816991fe3cf7a6ac763', '2022-03-23 08:21:54', '2022-03-23 08:21:54', '', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (2, 'transport.server', 'SEATA_GROUP', 'NIO', 'b6d9dfc0fb54277321cebc0fff55df2f', '2022-03-23 08:21:54', '2022-03-23 08:21:54', '', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (3, 'transport.heartbeat', 'SEATA_GROUP', 'true', 'b326b5062b2f0e69046810717534cb09', '2022-03-23 08:21:55', '2022-03-23 08:21:55', '', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (4, 'transport.enableTmClientBatchSendRequest', 'SEATA_GROUP', 'false', '68934a3e9455fa72420237eb05902327', '2022-03-23 08:21:55', '2022-03-23 08:21:55', '', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (5, 'transport.enableRmClientBatchSendRequest', 'SEATA_GROUP', 'true', 'b326b5062b2f0e69046810717534cb09', '2022-03-23 08:21:55', '2022-03-23 08:21:55', '', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (6, 'transport.enableTcServerBatchSendResponse', 'SEATA_GROUP', 'false', '68934a3e9455fa72420237eb05902327', '2022-03-23 08:21:55', '2022-03-23 08:21:55', '', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (7, 'transport.rpcRmRequestTimeout', 'SEATA_GROUP', '30000', '5ecc613150de01b7e6824594426f24f4', '2022-03-23 08:21:55', '2022-03-23 08:21:55', '', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (8, 'transport.rpcTmRequestTimeout', 'SEATA_GROUP', '30000', '5ecc613150de01b7e6824594426f24f4', '2022-03-23 08:21:55', '2022-03-23 08:21:55', '', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (9, 'transport.rpcTcRequestTimeout', 'SEATA_GROUP', '30000', '5ecc613150de01b7e6824594426f24f4', '2022-03-23 08:21:55', '2022-03-23 08:21:55', '', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (10, 'transport.threadFactory.bossThreadPrefix', 'SEATA_GROUP', 'NettyBoss', '0f8db59a3b7f2823f38a70c308361836', '2022-03-23 08:21:55', '2022-03-23 08:21:55', '', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (11, 'transport.threadFactory.workerThreadPrefix', 'SEATA_GROUP', 'NettyServerNIOWorker', 'a78ec7ef5d1631754c4e72ae8a3e9205', '2022-03-23 08:21:56', '2022-03-23 08:21:56', '', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (12, 'transport.threadFactory.serverExecutorThreadPrefix', 'SEATA_GROUP', 'NettyServerBizHandler', '11a36309f3d9df84fa8b59cf071fa2da', '2022-03-23 08:21:56', '2022-03-23 08:21:56', '', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (13, 'transport.threadFactory.shareBossWorker', 'SEATA_GROUP', 'false', '68934a3e9455fa72420237eb05902327', '2022-03-23 08:21:56', '2022-03-23 08:21:56', '', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (14, 'transport.threadFactory.clientSelectorThreadPrefix', 'SEATA_GROUP', 'NettyClientSelector', 'cd7ec5a06541e75f5a7913752322c3af', '2022-03-23 08:21:56', '2022-03-23 08:21:56', '', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (15, 'transport.threadFactory.clientSelectorThreadSize', 'SEATA_GROUP', '1', 'c4ca4238a0b923820dcc509a6f75849b', '2022-03-23 08:21:56', '2022-03-23 08:21:56', '', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (16, 'transport.threadFactory.clientWorkerThreadPrefix', 'SEATA_GROUP', 'NettyClientWorkerThread', '61cf4e69a56354cf72f46dc86414a57e', '2022-03-23 08:21:56', '2022-03-23 08:21:56', '', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (17, 'transport.threadFactory.bossThreadSize', 'SEATA_GROUP', '1', 'c4ca4238a0b923820dcc509a6f75849b', '2022-03-23 08:21:56', '2022-03-23 08:21:56', '', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (18, 'transport.threadFactory.workerThreadSize', 'SEATA_GROUP', 'default', 'c21f969b5f03d33d43e04f8f136e7682', '2022-03-23 08:21:57', '2022-03-23 08:21:57', '', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (19, 'transport.shutdown.wait', 'SEATA_GROUP', '3', 'eccbc87e4b5ce2fe28308fd9f2a7baf3', '2022-03-23 08:21:57', '2022-03-23 08:21:57', '', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (20, 'transport.serialization', 'SEATA_GROUP', 'seata', 'b943081c423b9a5416a706524ee05d40', '2022-03-23 08:21:57', '2022-03-23 08:21:57', '', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (21, 'transport.compressor', 'SEATA_GROUP', 'none', '334c4a4c42fdb79d7ebc3e73b517e6f8', '2022-03-23 08:21:57', '2022-03-23 08:21:57', '', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (22, 'service.vgroupMapping.my_test_tx_group', 'SEATA_GROUP', 'default', 'c21f969b5f03d33d43e04f8f136e7682', '2022-03-23 08:21:57', '2022-03-23 08:21:57', '', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (23, 'service.default.grouplist', 'SEATA_GROUP', '127.0.0.1:8091', 'c32ce0d3e264525dcdada751f98143a3', '2022-03-23 08:21:57', '2022-03-23 08:21:57', '', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (24, 'service.enableDegrade', 'SEATA_GROUP', 'false', '68934a3e9455fa72420237eb05902327', '2022-03-23 08:21:57', '2022-03-23 08:21:57', '', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (25, 'service.disableGlobalTransaction', 'SEATA_GROUP', 'false', '68934a3e9455fa72420237eb05902327', '2022-03-23 08:21:57', '2022-03-23 08:21:57', '', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (26, 'client.rm.asyncCommitBufferLimit', 'SEATA_GROUP', '10000', 'b7a782741f667201b54880c925faec4b', '2022-03-23 08:21:57', '2022-03-23 08:21:57', '', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (27, 'client.rm.lock.retryInterval', 'SEATA_GROUP', '10', 'd3d9446802a44259755d38e6d163e820', '2022-03-23 08:21:57', '2022-03-23 08:21:57', '', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (28, 'client.rm.lock.retryTimes', 'SEATA_GROUP', '30', '34173cb38f07f89ddbebc2ac9128303f', '2022-03-23 08:21:58', '2022-03-23 08:21:58', '', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (29, 'client.rm.lock.retryPolicyBranchRollbackOnConflict', 'SEATA_GROUP', 'true', 'b326b5062b2f0e69046810717534cb09', '2022-03-23 08:21:58', '2022-03-23 08:21:58', '', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (30, 'client.rm.reportRetryCount', 'SEATA_GROUP', '5', 'e4da3b7fbbce2345d7772b0674a318d5', '2022-03-23 08:21:58', '2022-03-23 08:21:58', '', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (31, 'client.rm.tableMetaCheckEnable', 'SEATA_GROUP', 'false', '68934a3e9455fa72420237eb05902327', '2022-03-23 08:21:58', '2022-03-23 08:21:58', '', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (32, 'client.rm.tableMetaCheckerInterval', 'SEATA_GROUP', '60000', '2b4226dd7ed6eb2d419b881f3ae9c97c', '2022-03-23 08:21:58', '2022-03-23 08:21:58', '', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (33, 'client.rm.sqlParserType', 'SEATA_GROUP', 'druid', '3d650fb8a5df01600281d48c47c9fa60', '2022-03-23 08:21:58', '2022-03-23 08:21:59', '', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (34, 'client.rm.reportSuccessEnable', 'SEATA_GROUP', 'false', '68934a3e9455fa72420237eb05902327', '2022-03-23 08:21:58', '2022-03-23 08:21:58', '', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (35, 'client.rm.sagaBranchRegisterEnable', 'SEATA_GROUP', 'false', '68934a3e9455fa72420237eb05902327', '2022-03-23 08:21:58', '2022-03-23 08:21:58', '', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (36, 'client.rm.sagaJsonParser', 'SEATA_GROUP', 'fastjson', 'd00d3dbc0834f08411c7b6c4c39e9f00', '2022-03-23 08:21:58', '2022-03-23 08:21:58', '', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (37, 'client.rm.tccActionInterceptorOrder', 'SEATA_GROUP', '-2147482648', 'f056d9efa5dae3872f9da035c83bcde8', '2022-03-23 08:21:59', '2022-03-23 08:21:59', '', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (39, 'client.tm.commitRetryCount', 'SEATA_GROUP', '5', 'e4da3b7fbbce2345d7772b0674a318d5', '2022-03-23 08:21:59', '2022-03-23 08:21:59', '', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (40, 'client.tm.rollbackRetryCount', 'SEATA_GROUP', '5', 'e4da3b7fbbce2345d7772b0674a318d5', '2022-03-23 08:21:59', '2022-03-23 08:21:59', '', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (41, 'client.tm.defaultGlobalTransactionTimeout', 'SEATA_GROUP', '60000', '2b4226dd7ed6eb2d419b881f3ae9c97c', '2022-03-23 08:21:59', '2022-03-23 08:21:59', '', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (42, 'client.tm.degradeCheck', 'SEATA_GROUP', 'false', '68934a3e9455fa72420237eb05902327', '2022-03-23 08:21:59', '2022-03-23 08:21:59', '', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (43, 'client.tm.degradeCheckAllowTimes', 'SEATA_GROUP', '10', 'd3d9446802a44259755d38e6d163e820', '2022-03-23 08:21:59', '2022-03-23 08:21:59', '', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (44, 'client.tm.degradeCheckPeriod', 'SEATA_GROUP', '2000', '08f90c1a417155361a5c4b8d297e0d78', '2022-03-23 08:21:59', '2022-03-23 08:21:59', '', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (45, 'client.tm.interceptorOrder', 'SEATA_GROUP', '-2147482648', 'f056d9efa5dae3872f9da035c83bcde8', '2022-03-23 08:22:00', '2022-03-23 08:22:00', '', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (46, 'client.undo.dataValidation', 'SEATA_GROUP', 'true', 'b326b5062b2f0e69046810717534cb09', '2022-03-23 08:22:00', '2022-03-23 08:22:00', '', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (47, 'client.undo.logSerialization', 'SEATA_GROUP', 'jackson', 'b41779690b83f182acc67d6388c7bac9', '2022-03-23 08:22:00', '2022-03-23 08:22:00', '', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (48, 'client.undo.onlyCareUpdateColumns', 'SEATA_GROUP', 'true', 'b326b5062b2f0e69046810717534cb09', '2022-03-23 08:22:00', '2022-03-23 08:22:00', '', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (49, 'server.undo.logSaveDays', 'SEATA_GROUP', '7', '8f14e45fceea167a5a36dedd4bea2543', '2022-03-23 08:22:00', '2022-03-23 08:22:00', '', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (50, 'server.undo.logDeletePeriod', 'SEATA_GROUP', '86400000', 'f4c122804fe9076cb2710f55c3c6e346', '2022-03-23 08:22:00', '2022-03-23 08:22:00', '', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (51, 'client.undo.logTable', 'SEATA_GROUP', 'undo_log', '2842d229c24afe9e61437135e8306614', '2022-03-23 08:22:00', '2022-03-23 08:22:00', '', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (52, 'client.undo.compress.enable', 'SEATA_GROUP', 'true', 'b326b5062b2f0e69046810717534cb09', '2022-03-23 08:22:00', '2022-03-23 08:22:00', '', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (53, 'client.undo.compress.type', 'SEATA_GROUP', 'zip', 'adcdbd79a8d84175c229b192aadc02f2', '2022-03-23 08:22:00', '2022-03-23 08:22:00', '', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (54, 'client.undo.compress.threshold', 'SEATA_GROUP', '64k', 'bd44a6458bdbff0b5cac721ba361f035', '2022-03-23 08:22:01', '2022-03-23 08:22:01', '', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (55, 'tcc.fence.logTableName', 'SEATA_GROUP', 'tcc_fence_log', 'db229b665c7cfd5abc03971d4ed284c6', '2022-03-23 08:22:01', '2022-03-23 08:22:01', '', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (56, 'tcc.fence.cleanPeriod', 'SEATA_GROUP', '1h', '7c68645d71b803bf0ba2f22519f73e08', '2022-03-23 08:22:01', '2022-03-23 08:22:01', '', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (57, 'log.exceptionRate', 'SEATA_GROUP', '100', 'f899139df5e1059396431415e770c6dd', '2022-03-23 08:22:01', '2022-03-23 08:22:01', '', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (58, 'store.mode', 'SEATA_GROUP', 'nacos', '3c3e94100815e3fcbe948b1e5fb3037a', '2022-03-23 08:22:01', '2022-03-23 08:22:01', '', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (59, 'store.lock.mode', 'SEATA_GROUP', 'file', '8c7dd922ad47494fc02c388e12c00eac', '2022-03-23 08:22:01', '2022-03-23 08:22:01', '', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (60, 'store.session.mode', 'SEATA_GROUP', 'file', '8c7dd922ad47494fc02c388e12c00eac', '2022-03-23 08:22:01', '2022-03-23 08:22:01', '', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (61, 'store.file.dir', 'SEATA_GROUP', 'file_store/data', '6a8dec07c44c33a8a9247cba5710bbb2', '2022-03-23 08:22:01', '2022-03-23 08:22:01', '', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (62, 'store.file.maxBranchSessionSize', 'SEATA_GROUP', '16384', 'c76fe1d8e08462434d800487585be217', '2022-03-23 08:22:01', '2022-03-23 08:22:01', '', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (63, 'store.file.maxGlobalSessionSize', 'SEATA_GROUP', '512', '10a7cdd970fe135cf4f7bb55c0e3b59f', '2022-03-23 08:22:01', '2022-03-23 08:22:01', '', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (64, 'store.file.fileWriteBufferCacheSize', 'SEATA_GROUP', '16384', 'c76fe1d8e08462434d800487585be217', '2022-03-23 08:22:01', '2022-03-23 08:22:01', '', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (65, 'store.file.flushDiskMode', 'SEATA_GROUP', 'async', '0df93e34273b367bb63bad28c94c78d5', '2022-03-23 08:22:02', '2022-03-23 08:22:02', '', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (66, 'store.file.sessionReloadReadSize', 'SEATA_GROUP', '100', 'f899139df5e1059396431415e770c6dd', '2022-03-23 08:22:02', '2022-03-23 08:22:02', '', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (67, 'store.db.datasource', 'SEATA_GROUP', 'druid', '3d650fb8a5df01600281d48c47c9fa60', '2022-03-23 08:22:02', '2022-03-23 08:22:02', '', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (68, 'store.db.dbType', 'SEATA_GROUP', 'mysql', '81c3b080dad537de7e10e0987a4bf52e', '2022-03-23 08:22:02', '2022-03-23 08:22:02', '', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (69, 'store.db.driverClassName', 'SEATA_GROUP', 'com.mysql.cj.jdbc.Driver', '33763409bb7f4838bde4fae9540433e4', '2022-03-23 08:22:02', '2022-03-23 08:22:02', '', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (70, 'store.db.url', 'SEATA_GROUP', 'jdbc:mysql://127.0.0.1:3306/seata?useUnicode=true&rewriteBatchedStatements=true', '030ea5ff5c2ef043adf9826c70570b0b', '2022-03-23 08:22:02', '2022-03-23 08:22:02', '', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (71, 'store.db.user', 'SEATA_GROUP', 'root', '63a9f0ea7bb98050796b649e85481845', '2022-03-23 08:22:02', '2022-03-23 08:22:02', '', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (72, 'store.db.password', 'SEATA_GROUP', 'root', '63a9f0ea7bb98050796b649e85481845', '2022-03-23 08:22:02', '2022-03-23 08:22:02', '', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (73, 'store.db.minConn', 'SEATA_GROUP', '5', 'e4da3b7fbbce2345d7772b0674a318d5', '2022-03-23 08:22:02', '2022-03-23 08:22:02', '', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (74, 'store.db.maxConn', 'SEATA_GROUP', '30', '34173cb38f07f89ddbebc2ac9128303f', '2022-03-23 08:22:02', '2022-03-23 08:22:02', '', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (75, 'store.db.globalTable', 'SEATA_GROUP', 'global_table', '8b28fb6bb4c4f984df2709381f8eba2b', '2022-03-23 08:22:03', '2022-03-23 08:22:03', '', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (76, 'store.db.branchTable', 'SEATA_GROUP', 'branch_table', '54bcdac38cf62e103fe115bcf46a660c', '2022-03-23 08:22:03', '2022-03-23 08:22:03', '', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (77, 'store.db.distributedLockTable', 'SEATA_GROUP', 'distributed_lock', '26146b7a3a4907101617cb0f19bf613f', '2022-03-23 08:22:03', '2022-03-23 08:22:03', '', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (78, 'store.db.queryLimit', 'SEATA_GROUP', '100', 'f899139df5e1059396431415e770c6dd', '2022-03-23 08:22:03', '2022-03-23 08:22:03', '', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (79, 'store.db.lockTable', 'SEATA_GROUP', 'lock_table', '55e0cae3b6dc6696b768db90098b8f2f', '2022-03-23 08:22:03', '2022-03-23 08:22:03', '', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (80, 'store.db.maxWait', 'SEATA_GROUP', '5000', 'a35fe7f7fe8217b4369a0af4244d1fca', '2022-03-23 08:22:03', '2022-03-23 08:22:03', '', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (81, 'store.redis.mode', 'SEATA_GROUP', 'single', 'dd5c07036f2975ff4bce568b6511d3bc', '2022-03-23 08:22:03', '2022-03-23 08:22:03', '', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (82, 'store.redis.single.host', 'SEATA_GROUP', '127.0.0.1', 'f528764d624db129b32c21fbca0cb8d6', '2022-03-23 08:22:03', '2022-03-23 08:22:03', '', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (83, 'store.redis.single.port', 'SEATA_GROUP', '6379', '92c3b916311a5517d9290576e3ea37ad', '2022-03-23 08:22:03', '2022-03-23 08:22:03', '', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (84, 'store.redis.maxConn', 'SEATA_GROUP', '10', 'd3d9446802a44259755d38e6d163e820', '2022-03-23 08:22:03', '2022-03-23 08:22:03', '', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (85, 'store.redis.minConn', 'SEATA_GROUP', '1', 'c4ca4238a0b923820dcc509a6f75849b', '2022-03-23 08:22:04', '2022-03-23 08:22:04', '', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (86, 'store.redis.maxTotal', 'SEATA_GROUP', '100', 'f899139df5e1059396431415e770c6dd', '2022-03-23 08:22:04', '2022-03-23 08:22:04', '', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (87, 'store.redis.database', 'SEATA_GROUP', '0', 'cfcd208495d565ef66e7dff9f98764da', '2022-03-23 08:22:04', '2022-03-23 08:22:04', '', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (88, 'store.redis.queryLimit', 'SEATA_GROUP', '100', 'f899139df5e1059396431415e770c6dd', '2022-03-23 08:22:04', '2022-03-23 08:22:04', '', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (89, 'server.recovery.committingRetryPeriod', 'SEATA_GROUP', '1000', 'a9b7ba70783b617e9998dc4dd82eb3c5', '2022-03-23 08:22:04', '2022-03-23 08:22:04', '', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (90, 'server.recovery.asynCommittingRetryPeriod', 'SEATA_GROUP', '1000', 'a9b7ba70783b617e9998dc4dd82eb3c5', '2022-03-23 08:22:04', '2022-03-23 08:22:04', '', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (91, 'server.recovery.rollbackingRetryPeriod', 'SEATA_GROUP', '1000', 'a9b7ba70783b617e9998dc4dd82eb3c5', '2022-03-23 08:22:04', '2022-03-23 08:22:04', '', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (92, 'server.recovery.timeoutRetryPeriod', 'SEATA_GROUP', '1000', 'a9b7ba70783b617e9998dc4dd82eb3c5', '2022-03-23 08:22:04', '2022-03-23 08:22:04', '', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (93, 'server.maxCommitRetryTimeout', 'SEATA_GROUP', '-1', '6bb61e3b7bce0931da574d19d1d82c88', '2022-03-23 08:22:04', '2022-03-23 08:22:04', '', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (94, 'server.maxRollbackRetryTimeout', 'SEATA_GROUP', '-1', '6bb61e3b7bce0931da574d19d1d82c88', '2022-03-23 08:22:04', '2022-03-23 08:22:04', '', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (95, 'server.rollbackRetryTimeoutUnlockEnable', 'SEATA_GROUP', 'false', '68934a3e9455fa72420237eb05902327', '2022-03-23 08:22:05', '2022-03-23 08:22:05', '', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (96, 'server.distributedLockExpireTime', 'SEATA_GROUP', '10000', 'b7a782741f667201b54880c925faec4b', '2022-03-23 08:22:05', '2022-03-23 08:22:05', '', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (97, 'server.session.branchAsyncQueueSize', 'SEATA_GROUP', '5000', 'a35fe7f7fe8217b4369a0af4244d1fca', '2022-03-23 08:22:05', '2022-03-23 08:22:05', '', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (98, 'server.session.enableBranchAsyncRemove', 'SEATA_GROUP', 'true', 'b326b5062b2f0e69046810717534cb09', '2022-03-23 08:22:05', '2022-03-23 08:22:05', '', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (99, 'metrics.enabled', 'SEATA_GROUP', 'false', '68934a3e9455fa72420237eb05902327', '2022-03-23 08:22:05', '2022-03-23 08:22:05', '', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (100, 'metrics.registryType', 'SEATA_GROUP', 'compact', '7cf74ca49c304df8150205fc915cd465', '2022-03-23 08:22:05', '2022-03-23 08:22:05', '', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (101, 'metrics.exporterList', 'SEATA_GROUP', 'prometheus', 'e4f00638b8a10e6994e67af2f832d51c', '2022-03-23 08:22:05', '2022-03-23 08:22:05', '', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (102, 'metrics.exporterPrometheusPort', 'SEATA_GROUP', '9898', '7b9dc501afe4ee11c56a4831e20cee71', '2022-03-23 08:22:05', '2022-03-23 08:22:05', '', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (103, 'spring-cloud-order-degrade-rules', 'SENTINEL_GROUP', '[]', 'd751713988987e9331980363e24189ce', '2022-03-23 09:07:43', '2022-03-23 09:19:21', NULL, '127.0.0.1', '', '', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (106, 'spring-cloud-order-flow-rules', 'SENTINEL_GROUP', '[{\"clusterConfig\":{\"acquireRefuseStrategy\":0,\"clientOfflineTime\":2000,\"fallbackToLocalWhenFail\":true,\"resourceTimeout\":2000,\"resourceTimeoutStrategy\":0,\"sampleCount\":10,\"strategy\":0,\"thresholdType\":0,\"windowIntervalMs\":1000},\"clusterMode\":false,\"controlBehavior\":0,\"count\":1.0,\"grade\":1,\"limitApp\":\"default\",\"maxQueueingTimeMs\":500,\"resource\":\"GET:http://spring-cloud-inventory/inventory/mockWithTryException\",\"strategy\":0,\"warmUpPeriodSec\":10}]', '9b601b3cc7406808dfec6bbb4d96b832', '2022-03-23 09:10:58', '2022-03-23 09:28:14', NULL, '127.0.0.1', '', '', NULL, NULL, NULL, 'text', NULL, '');
COMMIT;

-- ----------------------------
-- Table structure for config_info_aggr
-- ----------------------------
DROP TABLE IF EXISTS `config_info_aggr`;
CREATE TABLE `config_info_aggr` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
  `data_id` varchar(255) COLLATE utf8_bin NOT NULL COMMENT 'data_id',
  `group_id` varchar(255) COLLATE utf8_bin NOT NULL COMMENT 'group_id',
  `datum_id` varchar(255) COLLATE utf8_bin NOT NULL COMMENT 'datum_id',
  `content` longtext COLLATE utf8_bin NOT NULL COMMENT '内容',
  `gmt_modified` datetime NOT NULL COMMENT '修改时间',
  `app_name` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `tenant_id` varchar(128) COLLATE utf8_bin DEFAULT '' COMMENT '租户字段',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_configinfoaggr_datagrouptenantdatum` (`data_id`,`group_id`,`tenant_id`,`datum_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin COMMENT='增加租户字段';

-- ----------------------------
-- Records of config_info_aggr
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for config_info_beta
-- ----------------------------
DROP TABLE IF EXISTS `config_info_beta`;
CREATE TABLE `config_info_beta` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
  `data_id` varchar(255) COLLATE utf8_bin NOT NULL COMMENT 'data_id',
  `group_id` varchar(128) COLLATE utf8_bin NOT NULL COMMENT 'group_id',
  `app_name` varchar(128) COLLATE utf8_bin DEFAULT NULL COMMENT 'app_name',
  `content` longtext COLLATE utf8_bin NOT NULL COMMENT 'content',
  `beta_ips` varchar(1024) COLLATE utf8_bin DEFAULT NULL COMMENT 'betaIps',
  `md5` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT 'md5',
  `gmt_create` datetime NOT NULL DEFAULT '2010-05-05 00:00:00' COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL DEFAULT '2010-05-05 00:00:00' COMMENT '修改时间',
  `src_user` text COLLATE utf8_bin COMMENT 'source user',
  `src_ip` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT 'source ip',
  `tenant_id` varchar(128) COLLATE utf8_bin DEFAULT '' COMMENT '租户字段',
  `encrypted_data_key` text COLLATE utf8_bin NOT NULL COMMENT '秘钥',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_configinfobeta_datagrouptenant` (`data_id`,`group_id`,`tenant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin COMMENT='config_info_beta';

-- ----------------------------
-- Records of config_info_beta
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for config_info_tag
-- ----------------------------
DROP TABLE IF EXISTS `config_info_tag`;
CREATE TABLE `config_info_tag` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
  `data_id` varchar(255) COLLATE utf8_bin NOT NULL COMMENT 'data_id',
  `group_id` varchar(128) COLLATE utf8_bin NOT NULL COMMENT 'group_id',
  `tenant_id` varchar(128) COLLATE utf8_bin DEFAULT '' COMMENT 'tenant_id',
  `tag_id` varchar(128) COLLATE utf8_bin NOT NULL COMMENT 'tag_id',
  `app_name` varchar(128) COLLATE utf8_bin DEFAULT NULL COMMENT 'app_name',
  `content` longtext COLLATE utf8_bin NOT NULL COMMENT 'content',
  `md5` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT 'md5',
  `gmt_create` datetime NOT NULL DEFAULT '2010-05-05 00:00:00' COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL DEFAULT '2010-05-05 00:00:00' COMMENT '修改时间',
  `src_user` text COLLATE utf8_bin COMMENT 'source user',
  `src_ip` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT 'source ip',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_configinfotag_datagrouptenanttag` (`data_id`,`group_id`,`tenant_id`,`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin COMMENT='config_info_tag';

-- ----------------------------
-- Records of config_info_tag
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for config_tags_relation
-- ----------------------------
DROP TABLE IF EXISTS `config_tags_relation`;
CREATE TABLE `config_tags_relation` (
  `id` bigint NOT NULL COMMENT 'id',
  `tag_name` varchar(128) COLLATE utf8_bin NOT NULL COMMENT 'tag_name',
  `tag_type` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT 'tag_type',
  `data_id` varchar(255) COLLATE utf8_bin NOT NULL COMMENT 'data_id',
  `group_id` varchar(128) COLLATE utf8_bin NOT NULL COMMENT 'group_id',
  `tenant_id` varchar(128) COLLATE utf8_bin DEFAULT '' COMMENT 'tenant_id',
  `nid` bigint NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`nid`),
  UNIQUE KEY `uk_configtagrelation_configidtag` (`id`,`tag_name`,`tag_type`),
  KEY `idx_tenant_id` (`tenant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin COMMENT='config_tag_relation';

-- ----------------------------
-- Records of config_tags_relation
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for group_capacity
-- ----------------------------
DROP TABLE IF EXISTS `group_capacity`;
CREATE TABLE `group_capacity` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `group_id` varchar(128) COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT 'Group ID，空字符表示整个集群',
  `quota` int unsigned NOT NULL DEFAULT '0' COMMENT '配额，0表示使用默认值',
  `usage` int unsigned NOT NULL DEFAULT '0' COMMENT '使用量',
  `max_size` int unsigned NOT NULL DEFAULT '0' COMMENT '单个配置大小上限，单位为字节，0表示使用默认值',
  `max_aggr_count` int unsigned NOT NULL DEFAULT '0' COMMENT '聚合子配置最大个数，，0表示使用默认值',
  `max_aggr_size` int unsigned NOT NULL DEFAULT '0' COMMENT '单个聚合数据的子配置大小上限，单位为字节，0表示使用默认值',
  `max_history_count` int unsigned NOT NULL DEFAULT '0' COMMENT '最大变更历史数量',
  `gmt_create` datetime NOT NULL DEFAULT '2010-05-05 00:00:00' COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL DEFAULT '2010-05-05 00:00:00' COMMENT '修改时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin COMMENT='集群、各Group容量信息表';

-- ----------------------------
-- Records of group_capacity
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for his_config_info
-- ----------------------------
DROP TABLE IF EXISTS `his_config_info`;
CREATE TABLE `his_config_info` (
  `id` bigint unsigned NOT NULL,
  `nid` bigint unsigned NOT NULL AUTO_INCREMENT,
  `data_id` varchar(255) COLLATE utf8_bin NOT NULL,
  `group_id` varchar(128) COLLATE utf8_bin NOT NULL,
  `app_name` varchar(128) COLLATE utf8_bin DEFAULT NULL COMMENT 'app_name',
  `content` longtext COLLATE utf8_bin NOT NULL,
  `md5` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `gmt_create` datetime NOT NULL DEFAULT '2010-05-05 00:00:00',
  `gmt_modified` datetime NOT NULL DEFAULT '2010-05-05 00:00:00',
  `src_user` text COLLATE utf8_bin,
  `src_ip` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `op_type` char(10) COLLATE utf8_bin DEFAULT NULL,
  `tenant_id` varchar(128) COLLATE utf8_bin DEFAULT '' COMMENT '租户字段',
  `encrypted_data_key` text COLLATE utf8_bin NOT NULL COMMENT '秘钥',
  PRIMARY KEY (`nid`),
  KEY `idx_gmt_create` (`gmt_create`),
  KEY `idx_gmt_modified` (`gmt_modified`),
  KEY `idx_did` (`data_id`)
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin COMMENT='多租户改造';

-- ----------------------------
-- Records of his_config_info
-- ----------------------------
BEGIN;
INSERT INTO `his_config_info` VALUES (0, 1, 'transport.type', 'SEATA_GROUP', '', 'TCP', 'b136ef5f6a01d816991fe3cf7a6ac763', '2010-05-05 00:00:00', '2022-03-23 08:21:54', '', '0:0:0:0:0:0:0:1', 'I', 'seata', '');
INSERT INTO `his_config_info` VALUES (0, 2, 'transport.server', 'SEATA_GROUP', '', 'NIO', 'b6d9dfc0fb54277321cebc0fff55df2f', '2010-05-05 00:00:00', '2022-03-23 08:21:54', '', '0:0:0:0:0:0:0:1', 'I', 'seata', '');
INSERT INTO `his_config_info` VALUES (0, 3, 'transport.heartbeat', 'SEATA_GROUP', '', 'true', 'b326b5062b2f0e69046810717534cb09', '2010-05-05 00:00:00', '2022-03-23 08:21:55', '', '0:0:0:0:0:0:0:1', 'I', 'seata', '');
INSERT INTO `his_config_info` VALUES (0, 4, 'transport.enableTmClientBatchSendRequest', 'SEATA_GROUP', '', 'false', '68934a3e9455fa72420237eb05902327', '2010-05-05 00:00:00', '2022-03-23 08:21:55', '', '0:0:0:0:0:0:0:1', 'I', 'seata', '');
INSERT INTO `his_config_info` VALUES (0, 5, 'transport.enableRmClientBatchSendRequest', 'SEATA_GROUP', '', 'true', 'b326b5062b2f0e69046810717534cb09', '2010-05-05 00:00:00', '2022-03-23 08:21:55', '', '0:0:0:0:0:0:0:1', 'I', 'seata', '');
INSERT INTO `his_config_info` VALUES (0, 6, 'transport.enableTcServerBatchSendResponse', 'SEATA_GROUP', '', 'false', '68934a3e9455fa72420237eb05902327', '2010-05-05 00:00:00', '2022-03-23 08:21:55', '', '0:0:0:0:0:0:0:1', 'I', 'seata', '');
INSERT INTO `his_config_info` VALUES (0, 7, 'transport.rpcRmRequestTimeout', 'SEATA_GROUP', '', '30000', '5ecc613150de01b7e6824594426f24f4', '2010-05-05 00:00:00', '2022-03-23 08:21:55', '', '0:0:0:0:0:0:0:1', 'I', 'seata', '');
INSERT INTO `his_config_info` VALUES (0, 8, 'transport.rpcTmRequestTimeout', 'SEATA_GROUP', '', '30000', '5ecc613150de01b7e6824594426f24f4', '2010-05-05 00:00:00', '2022-03-23 08:21:55', '', '0:0:0:0:0:0:0:1', 'I', 'seata', '');
INSERT INTO `his_config_info` VALUES (0, 9, 'transport.rpcTcRequestTimeout', 'SEATA_GROUP', '', '30000', '5ecc613150de01b7e6824594426f24f4', '2010-05-05 00:00:00', '2022-03-23 08:21:55', '', '0:0:0:0:0:0:0:1', 'I', 'seata', '');
INSERT INTO `his_config_info` VALUES (0, 10, 'transport.threadFactory.bossThreadPrefix', 'SEATA_GROUP', '', 'NettyBoss', '0f8db59a3b7f2823f38a70c308361836', '2010-05-05 00:00:00', '2022-03-23 08:21:55', '', '0:0:0:0:0:0:0:1', 'I', 'seata', '');
INSERT INTO `his_config_info` VALUES (0, 11, 'transport.threadFactory.workerThreadPrefix', 'SEATA_GROUP', '', 'NettyServerNIOWorker', 'a78ec7ef5d1631754c4e72ae8a3e9205', '2010-05-05 00:00:00', '2022-03-23 08:21:56', '', '0:0:0:0:0:0:0:1', 'I', 'seata', '');
INSERT INTO `his_config_info` VALUES (0, 12, 'transport.threadFactory.serverExecutorThreadPrefix', 'SEATA_GROUP', '', 'NettyServerBizHandler', '11a36309f3d9df84fa8b59cf071fa2da', '2010-05-05 00:00:00', '2022-03-23 08:21:56', '', '0:0:0:0:0:0:0:1', 'I', 'seata', '');
INSERT INTO `his_config_info` VALUES (0, 13, 'transport.threadFactory.shareBossWorker', 'SEATA_GROUP', '', 'false', '68934a3e9455fa72420237eb05902327', '2010-05-05 00:00:00', '2022-03-23 08:21:56', '', '0:0:0:0:0:0:0:1', 'I', 'seata', '');
INSERT INTO `his_config_info` VALUES (0, 14, 'transport.threadFactory.clientSelectorThreadPrefix', 'SEATA_GROUP', '', 'NettyClientSelector', 'cd7ec5a06541e75f5a7913752322c3af', '2010-05-05 00:00:00', '2022-03-23 08:21:56', '', '0:0:0:0:0:0:0:1', 'I', 'seata', '');
INSERT INTO `his_config_info` VALUES (0, 15, 'transport.threadFactory.clientSelectorThreadSize', 'SEATA_GROUP', '', '1', 'c4ca4238a0b923820dcc509a6f75849b', '2010-05-05 00:00:00', '2022-03-23 08:21:56', '', '0:0:0:0:0:0:0:1', 'I', 'seata', '');
INSERT INTO `his_config_info` VALUES (0, 16, 'transport.threadFactory.clientWorkerThreadPrefix', 'SEATA_GROUP', '', 'NettyClientWorkerThread', '61cf4e69a56354cf72f46dc86414a57e', '2010-05-05 00:00:00', '2022-03-23 08:21:56', '', '0:0:0:0:0:0:0:1', 'I', 'seata', '');
INSERT INTO `his_config_info` VALUES (0, 17, 'transport.threadFactory.bossThreadSize', 'SEATA_GROUP', '', '1', 'c4ca4238a0b923820dcc509a6f75849b', '2010-05-05 00:00:00', '2022-03-23 08:21:56', '', '0:0:0:0:0:0:0:1', 'I', 'seata', '');
INSERT INTO `his_config_info` VALUES (0, 18, 'transport.threadFactory.workerThreadSize', 'SEATA_GROUP', '', 'default', 'c21f969b5f03d33d43e04f8f136e7682', '2010-05-05 00:00:00', '2022-03-23 08:21:57', '', '0:0:0:0:0:0:0:1', 'I', 'seata', '');
INSERT INTO `his_config_info` VALUES (0, 19, 'transport.shutdown.wait', 'SEATA_GROUP', '', '3', 'eccbc87e4b5ce2fe28308fd9f2a7baf3', '2010-05-05 00:00:00', '2022-03-23 08:21:57', '', '0:0:0:0:0:0:0:1', 'I', 'seata', '');
INSERT INTO `his_config_info` VALUES (0, 20, 'transport.serialization', 'SEATA_GROUP', '', 'seata', 'b943081c423b9a5416a706524ee05d40', '2010-05-05 00:00:00', '2022-03-23 08:21:57', '', '0:0:0:0:0:0:0:1', 'I', 'seata', '');
INSERT INTO `his_config_info` VALUES (0, 21, 'transport.compressor', 'SEATA_GROUP', '', 'none', '334c4a4c42fdb79d7ebc3e73b517e6f8', '2010-05-05 00:00:00', '2022-03-23 08:21:57', '', '0:0:0:0:0:0:0:1', 'I', 'seata', '');
INSERT INTO `his_config_info` VALUES (0, 22, 'service.vgroupMapping.my_test_tx_group', 'SEATA_GROUP', '', 'default', 'c21f969b5f03d33d43e04f8f136e7682', '2010-05-05 00:00:00', '2022-03-23 08:21:57', '', '0:0:0:0:0:0:0:1', 'I', 'seata', '');
INSERT INTO `his_config_info` VALUES (0, 23, 'service.default.grouplist', 'SEATA_GROUP', '', '127.0.0.1:8091', 'c32ce0d3e264525dcdada751f98143a3', '2010-05-05 00:00:00', '2022-03-23 08:21:57', '', '0:0:0:0:0:0:0:1', 'I', 'seata', '');
INSERT INTO `his_config_info` VALUES (0, 24, 'service.enableDegrade', 'SEATA_GROUP', '', 'false', '68934a3e9455fa72420237eb05902327', '2010-05-05 00:00:00', '2022-03-23 08:21:57', '', '0:0:0:0:0:0:0:1', 'I', 'seata', '');
INSERT INTO `his_config_info` VALUES (0, 25, 'service.disableGlobalTransaction', 'SEATA_GROUP', '', 'false', '68934a3e9455fa72420237eb05902327', '2010-05-05 00:00:00', '2022-03-23 08:21:57', '', '0:0:0:0:0:0:0:1', 'I', 'seata', '');
INSERT INTO `his_config_info` VALUES (0, 26, 'client.rm.asyncCommitBufferLimit', 'SEATA_GROUP', '', '10000', 'b7a782741f667201b54880c925faec4b', '2010-05-05 00:00:00', '2022-03-23 08:21:57', '', '0:0:0:0:0:0:0:1', 'I', 'seata', '');
INSERT INTO `his_config_info` VALUES (0, 27, 'client.rm.lock.retryInterval', 'SEATA_GROUP', '', '10', 'd3d9446802a44259755d38e6d163e820', '2010-05-05 00:00:00', '2022-03-23 08:21:57', '', '0:0:0:0:0:0:0:1', 'I', 'seata', '');
INSERT INTO `his_config_info` VALUES (0, 28, 'client.rm.lock.retryTimes', 'SEATA_GROUP', '', '30', '34173cb38f07f89ddbebc2ac9128303f', '2010-05-05 00:00:00', '2022-03-23 08:21:58', '', '0:0:0:0:0:0:0:1', 'I', 'seata', '');
INSERT INTO `his_config_info` VALUES (0, 29, 'client.rm.lock.retryPolicyBranchRollbackOnConflict', 'SEATA_GROUP', '', 'true', 'b326b5062b2f0e69046810717534cb09', '2010-05-05 00:00:00', '2022-03-23 08:21:58', '', '0:0:0:0:0:0:0:1', 'I', 'seata', '');
INSERT INTO `his_config_info` VALUES (0, 30, 'client.rm.reportRetryCount', 'SEATA_GROUP', '', '5', 'e4da3b7fbbce2345d7772b0674a318d5', '2010-05-05 00:00:00', '2022-03-23 08:21:58', '', '0:0:0:0:0:0:0:1', 'I', 'seata', '');
INSERT INTO `his_config_info` VALUES (0, 31, 'client.rm.tableMetaCheckEnable', 'SEATA_GROUP', '', 'false', '68934a3e9455fa72420237eb05902327', '2010-05-05 00:00:00', '2022-03-23 08:21:58', '', '0:0:0:0:0:0:0:1', 'I', 'seata', '');
INSERT INTO `his_config_info` VALUES (0, 32, 'client.rm.tableMetaCheckerInterval', 'SEATA_GROUP', '', '60000', '2b4226dd7ed6eb2d419b881f3ae9c97c', '2010-05-05 00:00:00', '2022-03-23 08:21:58', '', '0:0:0:0:0:0:0:1', 'I', 'seata', '');
INSERT INTO `his_config_info` VALUES (0, 33, 'client.rm.sqlParserType', 'SEATA_GROUP', '', 'druid', '3d650fb8a5df01600281d48c47c9fa60', '2010-05-05 00:00:00', '2022-03-23 08:21:58', '', '0:0:0:0:0:0:0:1', 'I', 'seata', '');
INSERT INTO `his_config_info` VALUES (0, 34, 'client.rm.reportSuccessEnable', 'SEATA_GROUP', '', 'false', '68934a3e9455fa72420237eb05902327', '2010-05-05 00:00:00', '2022-03-23 08:21:58', '', '0:0:0:0:0:0:0:1', 'I', 'seata', '');
INSERT INTO `his_config_info` VALUES (0, 35, 'client.rm.sagaBranchRegisterEnable', 'SEATA_GROUP', '', 'false', '68934a3e9455fa72420237eb05902327', '2010-05-05 00:00:00', '2022-03-23 08:21:58', '', '0:0:0:0:0:0:0:1', 'I', 'seata', '');
INSERT INTO `his_config_info` VALUES (0, 36, 'client.rm.sagaJsonParser', 'SEATA_GROUP', '', 'fastjson', 'd00d3dbc0834f08411c7b6c4c39e9f00', '2010-05-05 00:00:00', '2022-03-23 08:21:58', '', '0:0:0:0:0:0:0:1', 'I', 'seata', '');
INSERT INTO `his_config_info` VALUES (0, 37, 'client.rm.tccActionInterceptorOrder', 'SEATA_GROUP', '', '-2147482648', 'f056d9efa5dae3872f9da035c83bcde8', '2010-05-05 00:00:00', '2022-03-23 08:21:59', '', '0:0:0:0:0:0:0:1', 'I', 'seata', '');
INSERT INTO `his_config_info` VALUES (33, 38, 'client.rm.sqlParserType', 'SEATA_GROUP', '', 'druid', '3d650fb8a5df01600281d48c47c9fa60', '2010-05-05 00:00:00', '2022-03-23 08:21:59', '', '0:0:0:0:0:0:0:1', 'U', 'seata', '');
INSERT INTO `his_config_info` VALUES (0, 39, 'client.tm.commitRetryCount', 'SEATA_GROUP', '', '5', 'e4da3b7fbbce2345d7772b0674a318d5', '2010-05-05 00:00:00', '2022-03-23 08:21:59', '', '0:0:0:0:0:0:0:1', 'I', 'seata', '');
INSERT INTO `his_config_info` VALUES (0, 40, 'client.tm.rollbackRetryCount', 'SEATA_GROUP', '', '5', 'e4da3b7fbbce2345d7772b0674a318d5', '2010-05-05 00:00:00', '2022-03-23 08:21:59', '', '0:0:0:0:0:0:0:1', 'I', 'seata', '');
INSERT INTO `his_config_info` VALUES (0, 41, 'client.tm.defaultGlobalTransactionTimeout', 'SEATA_GROUP', '', '60000', '2b4226dd7ed6eb2d419b881f3ae9c97c', '2010-05-05 00:00:00', '2022-03-23 08:21:59', '', '0:0:0:0:0:0:0:1', 'I', 'seata', '');
INSERT INTO `his_config_info` VALUES (0, 42, 'client.tm.degradeCheck', 'SEATA_GROUP', '', 'false', '68934a3e9455fa72420237eb05902327', '2010-05-05 00:00:00', '2022-03-23 08:21:59', '', '0:0:0:0:0:0:0:1', 'I', 'seata', '');
INSERT INTO `his_config_info` VALUES (0, 43, 'client.tm.degradeCheckAllowTimes', 'SEATA_GROUP', '', '10', 'd3d9446802a44259755d38e6d163e820', '2010-05-05 00:00:00', '2022-03-23 08:21:59', '', '0:0:0:0:0:0:0:1', 'I', 'seata', '');
INSERT INTO `his_config_info` VALUES (0, 44, 'client.tm.degradeCheckPeriod', 'SEATA_GROUP', '', '2000', '08f90c1a417155361a5c4b8d297e0d78', '2010-05-05 00:00:00', '2022-03-23 08:21:59', '', '0:0:0:0:0:0:0:1', 'I', 'seata', '');
INSERT INTO `his_config_info` VALUES (0, 45, 'client.tm.interceptorOrder', 'SEATA_GROUP', '', '-2147482648', 'f056d9efa5dae3872f9da035c83bcde8', '2010-05-05 00:00:00', '2022-03-23 08:22:00', '', '0:0:0:0:0:0:0:1', 'I', 'seata', '');
INSERT INTO `his_config_info` VALUES (0, 46, 'client.undo.dataValidation', 'SEATA_GROUP', '', 'true', 'b326b5062b2f0e69046810717534cb09', '2010-05-05 00:00:00', '2022-03-23 08:22:00', '', '0:0:0:0:0:0:0:1', 'I', 'seata', '');
INSERT INTO `his_config_info` VALUES (0, 47, 'client.undo.logSerialization', 'SEATA_GROUP', '', 'jackson', 'b41779690b83f182acc67d6388c7bac9', '2010-05-05 00:00:00', '2022-03-23 08:22:00', '', '0:0:0:0:0:0:0:1', 'I', 'seata', '');
INSERT INTO `his_config_info` VALUES (0, 48, 'client.undo.onlyCareUpdateColumns', 'SEATA_GROUP', '', 'true', 'b326b5062b2f0e69046810717534cb09', '2010-05-05 00:00:00', '2022-03-23 08:22:00', '', '0:0:0:0:0:0:0:1', 'I', 'seata', '');
INSERT INTO `his_config_info` VALUES (0, 49, 'server.undo.logSaveDays', 'SEATA_GROUP', '', '7', '8f14e45fceea167a5a36dedd4bea2543', '2010-05-05 00:00:00', '2022-03-23 08:22:00', '', '0:0:0:0:0:0:0:1', 'I', 'seata', '');
INSERT INTO `his_config_info` VALUES (0, 50, 'server.undo.logDeletePeriod', 'SEATA_GROUP', '', '86400000', 'f4c122804fe9076cb2710f55c3c6e346', '2010-05-05 00:00:00', '2022-03-23 08:22:00', '', '0:0:0:0:0:0:0:1', 'I', 'seata', '');
INSERT INTO `his_config_info` VALUES (0, 51, 'client.undo.logTable', 'SEATA_GROUP', '', 'undo_log', '2842d229c24afe9e61437135e8306614', '2010-05-05 00:00:00', '2022-03-23 08:22:00', '', '0:0:0:0:0:0:0:1', 'I', 'seata', '');
INSERT INTO `his_config_info` VALUES (0, 52, 'client.undo.compress.enable', 'SEATA_GROUP', '', 'true', 'b326b5062b2f0e69046810717534cb09', '2010-05-05 00:00:00', '2022-03-23 08:22:00', '', '0:0:0:0:0:0:0:1', 'I', 'seata', '');
INSERT INTO `his_config_info` VALUES (0, 53, 'client.undo.compress.type', 'SEATA_GROUP', '', 'zip', 'adcdbd79a8d84175c229b192aadc02f2', '2010-05-05 00:00:00', '2022-03-23 08:22:00', '', '0:0:0:0:0:0:0:1', 'I', 'seata', '');
INSERT INTO `his_config_info` VALUES (0, 54, 'client.undo.compress.threshold', 'SEATA_GROUP', '', '64k', 'bd44a6458bdbff0b5cac721ba361f035', '2010-05-05 00:00:00', '2022-03-23 08:22:01', '', '0:0:0:0:0:0:0:1', 'I', 'seata', '');
INSERT INTO `his_config_info` VALUES (0, 55, 'tcc.fence.logTableName', 'SEATA_GROUP', '', 'tcc_fence_log', 'db229b665c7cfd5abc03971d4ed284c6', '2010-05-05 00:00:00', '2022-03-23 08:22:01', '', '0:0:0:0:0:0:0:1', 'I', 'seata', '');
INSERT INTO `his_config_info` VALUES (0, 56, 'tcc.fence.cleanPeriod', 'SEATA_GROUP', '', '1h', '7c68645d71b803bf0ba2f22519f73e08', '2010-05-05 00:00:00', '2022-03-23 08:22:01', '', '0:0:0:0:0:0:0:1', 'I', 'seata', '');
INSERT INTO `his_config_info` VALUES (0, 57, 'log.exceptionRate', 'SEATA_GROUP', '', '100', 'f899139df5e1059396431415e770c6dd', '2010-05-05 00:00:00', '2022-03-23 08:22:01', '', '0:0:0:0:0:0:0:1', 'I', 'seata', '');
INSERT INTO `his_config_info` VALUES (0, 58, 'store.mode', 'SEATA_GROUP', '', 'nacos', '3c3e94100815e3fcbe948b1e5fb3037a', '2010-05-05 00:00:00', '2022-03-23 08:22:01', '', '0:0:0:0:0:0:0:1', 'I', 'seata', '');
INSERT INTO `his_config_info` VALUES (0, 59, 'store.lock.mode', 'SEATA_GROUP', '', 'file', '8c7dd922ad47494fc02c388e12c00eac', '2010-05-05 00:00:00', '2022-03-23 08:22:01', '', '0:0:0:0:0:0:0:1', 'I', 'seata', '');
INSERT INTO `his_config_info` VALUES (0, 60, 'store.session.mode', 'SEATA_GROUP', '', 'file', '8c7dd922ad47494fc02c388e12c00eac', '2010-05-05 00:00:00', '2022-03-23 08:22:01', '', '0:0:0:0:0:0:0:1', 'I', 'seata', '');
INSERT INTO `his_config_info` VALUES (0, 61, 'store.file.dir', 'SEATA_GROUP', '', 'file_store/data', '6a8dec07c44c33a8a9247cba5710bbb2', '2010-05-05 00:00:00', '2022-03-23 08:22:01', '', '0:0:0:0:0:0:0:1', 'I', 'seata', '');
INSERT INTO `his_config_info` VALUES (0, 62, 'store.file.maxBranchSessionSize', 'SEATA_GROUP', '', '16384', 'c76fe1d8e08462434d800487585be217', '2010-05-05 00:00:00', '2022-03-23 08:22:01', '', '0:0:0:0:0:0:0:1', 'I', 'seata', '');
INSERT INTO `his_config_info` VALUES (0, 63, 'store.file.maxGlobalSessionSize', 'SEATA_GROUP', '', '512', '10a7cdd970fe135cf4f7bb55c0e3b59f', '2010-05-05 00:00:00', '2022-03-23 08:22:01', '', '0:0:0:0:0:0:0:1', 'I', 'seata', '');
INSERT INTO `his_config_info` VALUES (0, 64, 'store.file.fileWriteBufferCacheSize', 'SEATA_GROUP', '', '16384', 'c76fe1d8e08462434d800487585be217', '2010-05-05 00:00:00', '2022-03-23 08:22:01', '', '0:0:0:0:0:0:0:1', 'I', 'seata', '');
INSERT INTO `his_config_info` VALUES (0, 65, 'store.file.flushDiskMode', 'SEATA_GROUP', '', 'async', '0df93e34273b367bb63bad28c94c78d5', '2010-05-05 00:00:00', '2022-03-23 08:22:02', '', '0:0:0:0:0:0:0:1', 'I', 'seata', '');
INSERT INTO `his_config_info` VALUES (0, 66, 'store.file.sessionReloadReadSize', 'SEATA_GROUP', '', '100', 'f899139df5e1059396431415e770c6dd', '2010-05-05 00:00:00', '2022-03-23 08:22:02', '', '0:0:0:0:0:0:0:1', 'I', 'seata', '');
INSERT INTO `his_config_info` VALUES (0, 67, 'store.db.datasource', 'SEATA_GROUP', '', 'druid', '3d650fb8a5df01600281d48c47c9fa60', '2010-05-05 00:00:00', '2022-03-23 08:22:02', '', '0:0:0:0:0:0:0:1', 'I', 'seata', '');
INSERT INTO `his_config_info` VALUES (0, 68, 'store.db.dbType', 'SEATA_GROUP', '', 'mysql', '81c3b080dad537de7e10e0987a4bf52e', '2010-05-05 00:00:00', '2022-03-23 08:22:02', '', '0:0:0:0:0:0:0:1', 'I', 'seata', '');
INSERT INTO `his_config_info` VALUES (0, 69, 'store.db.driverClassName', 'SEATA_GROUP', '', 'com.mysql.cj.jdbc.Driver', '33763409bb7f4838bde4fae9540433e4', '2010-05-05 00:00:00', '2022-03-23 08:22:02', '', '0:0:0:0:0:0:0:1', 'I', 'seata', '');
INSERT INTO `his_config_info` VALUES (0, 70, 'store.db.url', 'SEATA_GROUP', '', 'jdbc:mysql://127.0.0.1:3306/seata?useUnicode=true&rewriteBatchedStatements=true', '030ea5ff5c2ef043adf9826c70570b0b', '2010-05-05 00:00:00', '2022-03-23 08:22:02', '', '0:0:0:0:0:0:0:1', 'I', 'seata', '');
INSERT INTO `his_config_info` VALUES (0, 71, 'store.db.user', 'SEATA_GROUP', '', 'root', '63a9f0ea7bb98050796b649e85481845', '2010-05-05 00:00:00', '2022-03-23 08:22:02', '', '0:0:0:0:0:0:0:1', 'I', 'seata', '');
INSERT INTO `his_config_info` VALUES (0, 72, 'store.db.password', 'SEATA_GROUP', '', 'root', '63a9f0ea7bb98050796b649e85481845', '2010-05-05 00:00:00', '2022-03-23 08:22:02', '', '0:0:0:0:0:0:0:1', 'I', 'seata', '');
INSERT INTO `his_config_info` VALUES (0, 73, 'store.db.minConn', 'SEATA_GROUP', '', '5', 'e4da3b7fbbce2345d7772b0674a318d5', '2010-05-05 00:00:00', '2022-03-23 08:22:02', '', '0:0:0:0:0:0:0:1', 'I', 'seata', '');
INSERT INTO `his_config_info` VALUES (0, 74, 'store.db.maxConn', 'SEATA_GROUP', '', '30', '34173cb38f07f89ddbebc2ac9128303f', '2010-05-05 00:00:00', '2022-03-23 08:22:02', '', '0:0:0:0:0:0:0:1', 'I', 'seata', '');
INSERT INTO `his_config_info` VALUES (0, 75, 'store.db.globalTable', 'SEATA_GROUP', '', 'global_table', '8b28fb6bb4c4f984df2709381f8eba2b', '2010-05-05 00:00:00', '2022-03-23 08:22:03', '', '0:0:0:0:0:0:0:1', 'I', 'seata', '');
INSERT INTO `his_config_info` VALUES (0, 76, 'store.db.branchTable', 'SEATA_GROUP', '', 'branch_table', '54bcdac38cf62e103fe115bcf46a660c', '2010-05-05 00:00:00', '2022-03-23 08:22:03', '', '0:0:0:0:0:0:0:1', 'I', 'seata', '');
INSERT INTO `his_config_info` VALUES (0, 77, 'store.db.distributedLockTable', 'SEATA_GROUP', '', 'distributed_lock', '26146b7a3a4907101617cb0f19bf613f', '2010-05-05 00:00:00', '2022-03-23 08:22:03', '', '0:0:0:0:0:0:0:1', 'I', 'seata', '');
INSERT INTO `his_config_info` VALUES (0, 78, 'store.db.queryLimit', 'SEATA_GROUP', '', '100', 'f899139df5e1059396431415e770c6dd', '2010-05-05 00:00:00', '2022-03-23 08:22:03', '', '0:0:0:0:0:0:0:1', 'I', 'seata', '');
INSERT INTO `his_config_info` VALUES (0, 79, 'store.db.lockTable', 'SEATA_GROUP', '', 'lock_table', '55e0cae3b6dc6696b768db90098b8f2f', '2010-05-05 00:00:00', '2022-03-23 08:22:03', '', '0:0:0:0:0:0:0:1', 'I', 'seata', '');
INSERT INTO `his_config_info` VALUES (0, 80, 'store.db.maxWait', 'SEATA_GROUP', '', '5000', 'a35fe7f7fe8217b4369a0af4244d1fca', '2010-05-05 00:00:00', '2022-03-23 08:22:03', '', '0:0:0:0:0:0:0:1', 'I', 'seata', '');
INSERT INTO `his_config_info` VALUES (0, 81, 'store.redis.mode', 'SEATA_GROUP', '', 'single', 'dd5c07036f2975ff4bce568b6511d3bc', '2010-05-05 00:00:00', '2022-03-23 08:22:03', '', '0:0:0:0:0:0:0:1', 'I', 'seata', '');
INSERT INTO `his_config_info` VALUES (0, 82, 'store.redis.single.host', 'SEATA_GROUP', '', '127.0.0.1', 'f528764d624db129b32c21fbca0cb8d6', '2010-05-05 00:00:00', '2022-03-23 08:22:03', '', '0:0:0:0:0:0:0:1', 'I', 'seata', '');
INSERT INTO `his_config_info` VALUES (0, 83, 'store.redis.single.port', 'SEATA_GROUP', '', '6379', '92c3b916311a5517d9290576e3ea37ad', '2010-05-05 00:00:00', '2022-03-23 08:22:03', '', '0:0:0:0:0:0:0:1', 'I', 'seata', '');
INSERT INTO `his_config_info` VALUES (0, 84, 'store.redis.maxConn', 'SEATA_GROUP', '', '10', 'd3d9446802a44259755d38e6d163e820', '2010-05-05 00:00:00', '2022-03-23 08:22:03', '', '0:0:0:0:0:0:0:1', 'I', 'seata', '');
INSERT INTO `his_config_info` VALUES (0, 85, 'store.redis.minConn', 'SEATA_GROUP', '', '1', 'c4ca4238a0b923820dcc509a6f75849b', '2010-05-05 00:00:00', '2022-03-23 08:22:04', '', '0:0:0:0:0:0:0:1', 'I', 'seata', '');
INSERT INTO `his_config_info` VALUES (0, 86, 'store.redis.maxTotal', 'SEATA_GROUP', '', '100', 'f899139df5e1059396431415e770c6dd', '2010-05-05 00:00:00', '2022-03-23 08:22:04', '', '0:0:0:0:0:0:0:1', 'I', 'seata', '');
INSERT INTO `his_config_info` VALUES (0, 87, 'store.redis.database', 'SEATA_GROUP', '', '0', 'cfcd208495d565ef66e7dff9f98764da', '2010-05-05 00:00:00', '2022-03-23 08:22:04', '', '0:0:0:0:0:0:0:1', 'I', 'seata', '');
INSERT INTO `his_config_info` VALUES (0, 88, 'store.redis.queryLimit', 'SEATA_GROUP', '', '100', 'f899139df5e1059396431415e770c6dd', '2010-05-05 00:00:00', '2022-03-23 08:22:04', '', '0:0:0:0:0:0:0:1', 'I', 'seata', '');
INSERT INTO `his_config_info` VALUES (0, 89, 'server.recovery.committingRetryPeriod', 'SEATA_GROUP', '', '1000', 'a9b7ba70783b617e9998dc4dd82eb3c5', '2010-05-05 00:00:00', '2022-03-23 08:22:04', '', '0:0:0:0:0:0:0:1', 'I', 'seata', '');
INSERT INTO `his_config_info` VALUES (0, 90, 'server.recovery.asynCommittingRetryPeriod', 'SEATA_GROUP', '', '1000', 'a9b7ba70783b617e9998dc4dd82eb3c5', '2010-05-05 00:00:00', '2022-03-23 08:22:04', '', '0:0:0:0:0:0:0:1', 'I', 'seata', '');
INSERT INTO `his_config_info` VALUES (0, 91, 'server.recovery.rollbackingRetryPeriod', 'SEATA_GROUP', '', '1000', 'a9b7ba70783b617e9998dc4dd82eb3c5', '2010-05-05 00:00:00', '2022-03-23 08:22:04', '', '0:0:0:0:0:0:0:1', 'I', 'seata', '');
INSERT INTO `his_config_info` VALUES (0, 92, 'server.recovery.timeoutRetryPeriod', 'SEATA_GROUP', '', '1000', 'a9b7ba70783b617e9998dc4dd82eb3c5', '2010-05-05 00:00:00', '2022-03-23 08:22:04', '', '0:0:0:0:0:0:0:1', 'I', 'seata', '');
INSERT INTO `his_config_info` VALUES (0, 93, 'server.maxCommitRetryTimeout', 'SEATA_GROUP', '', '-1', '6bb61e3b7bce0931da574d19d1d82c88', '2010-05-05 00:00:00', '2022-03-23 08:22:04', '', '0:0:0:0:0:0:0:1', 'I', 'seata', '');
INSERT INTO `his_config_info` VALUES (0, 94, 'server.maxRollbackRetryTimeout', 'SEATA_GROUP', '', '-1', '6bb61e3b7bce0931da574d19d1d82c88', '2010-05-05 00:00:00', '2022-03-23 08:22:04', '', '0:0:0:0:0:0:0:1', 'I', 'seata', '');
INSERT INTO `his_config_info` VALUES (0, 95, 'server.rollbackRetryTimeoutUnlockEnable', 'SEATA_GROUP', '', 'false', '68934a3e9455fa72420237eb05902327', '2010-05-05 00:00:00', '2022-03-23 08:22:05', '', '0:0:0:0:0:0:0:1', 'I', 'seata', '');
INSERT INTO `his_config_info` VALUES (0, 96, 'server.distributedLockExpireTime', 'SEATA_GROUP', '', '10000', 'b7a782741f667201b54880c925faec4b', '2010-05-05 00:00:00', '2022-03-23 08:22:05', '', '0:0:0:0:0:0:0:1', 'I', 'seata', '');
INSERT INTO `his_config_info` VALUES (0, 97, 'server.session.branchAsyncQueueSize', 'SEATA_GROUP', '', '5000', 'a35fe7f7fe8217b4369a0af4244d1fca', '2010-05-05 00:00:00', '2022-03-23 08:22:05', '', '0:0:0:0:0:0:0:1', 'I', 'seata', '');
INSERT INTO `his_config_info` VALUES (0, 98, 'server.session.enableBranchAsyncRemove', 'SEATA_GROUP', '', 'true', 'b326b5062b2f0e69046810717534cb09', '2010-05-05 00:00:00', '2022-03-23 08:22:05', '', '0:0:0:0:0:0:0:1', 'I', 'seata', '');
INSERT INTO `his_config_info` VALUES (0, 99, 'metrics.enabled', 'SEATA_GROUP', '', 'false', '68934a3e9455fa72420237eb05902327', '2010-05-05 00:00:00', '2022-03-23 08:22:05', '', '0:0:0:0:0:0:0:1', 'I', 'seata', '');
INSERT INTO `his_config_info` VALUES (0, 100, 'metrics.registryType', 'SEATA_GROUP', '', 'compact', '7cf74ca49c304df8150205fc915cd465', '2010-05-05 00:00:00', '2022-03-23 08:22:05', '', '0:0:0:0:0:0:0:1', 'I', 'seata', '');
INSERT INTO `his_config_info` VALUES (0, 101, 'metrics.exporterList', 'SEATA_GROUP', '', 'prometheus', 'e4f00638b8a10e6994e67af2f832d51c', '2010-05-05 00:00:00', '2022-03-23 08:22:05', '', '0:0:0:0:0:0:0:1', 'I', 'seata', '');
INSERT INTO `his_config_info` VALUES (0, 102, 'metrics.exporterPrometheusPort', 'SEATA_GROUP', '', '9898', '7b9dc501afe4ee11c56a4831e20cee71', '2010-05-05 00:00:00', '2022-03-23 08:22:05', '', '0:0:0:0:0:0:0:1', 'I', 'seata', '');
INSERT INTO `his_config_info` VALUES (0, 103, 'spring-cloud-order-degrade-rules', 'SENTINEL_GROUP', '', '[{\"count\":0.5,\"grade\":1,\"limitApp\":\"default\",\"minRequestAmount\":2,\"resource\":\"GET:http://spring-cloud-inventory/inventory/mockWithTryException\",\"slowRatioThreshold\":1.0,\"statIntervalMs\":1000,\"timeWindow\":10}]', '2456676f6b703422c190f8c5a77040f3', '2010-05-05 00:00:00', '2022-03-23 09:07:43', NULL, '127.0.0.1', 'I', '', '');
INSERT INTO `his_config_info` VALUES (103, 104, 'spring-cloud-order-degrade-rules', 'SENTINEL_GROUP', '', '[{\"count\":0.5,\"grade\":1,\"limitApp\":\"default\",\"minRequestAmount\":2,\"resource\":\"GET:http://spring-cloud-inventory/inventory/mockWithTryException\",\"slowRatioThreshold\":1.0,\"statIntervalMs\":1000,\"timeWindow\":10}]', '2456676f6b703422c190f8c5a77040f3', '2010-05-05 00:00:00', '2022-03-23 09:08:18', NULL, '127.0.0.1', 'U', '', '');
INSERT INTO `his_config_info` VALUES (103, 105, 'spring-cloud-order-degrade-rules', 'SENTINEL_GROUP', '', '[{\"count\":0.1,\"grade\":1,\"limitApp\":\"default\",\"minRequestAmount\":1,\"resource\":\"GET:http://spring-cloud-inventory/inventory/mockWithTryException\",\"slowRatioThreshold\":1.0,\"statIntervalMs\":1000,\"timeWindow\":10}]', 'a483ed7cdf7d53bc2cf0472e17f4ad8f', '2010-05-05 00:00:00', '2022-03-23 09:10:34', NULL, '127.0.0.1', 'U', '', '');
INSERT INTO `his_config_info` VALUES (0, 106, 'spring-cloud-order-flow-rules', 'SENTINEL_GROUP', '', '[{\"clusterConfig\":{\"acquireRefuseStrategy\":0,\"clientOfflineTime\":2000,\"fallbackToLocalWhenFail\":true,\"resourceTimeout\":2000,\"resourceTimeoutStrategy\":0,\"sampleCount\":10,\"strategy\":0,\"thresholdType\":0,\"windowIntervalMs\":1000},\"clusterMode\":false,\"controlBehavior\":0,\"count\":1.0,\"grade\":1,\"limitApp\":\"default\",\"maxQueueingTimeMs\":500,\"resource\":\"GET:http://spring-cloud-inventory/inventory/mockWithTryException\",\"strategy\":0,\"warmUpPeriodSec\":10}]', '9b601b3cc7406808dfec6bbb4d96b832', '2010-05-05 00:00:00', '2022-03-23 09:10:58', NULL, '127.0.0.1', 'I', '', '');
INSERT INTO `his_config_info` VALUES (106, 107, 'spring-cloud-order-flow-rules', 'SENTINEL_GROUP', '', '[{\"clusterConfig\":{\"acquireRefuseStrategy\":0,\"clientOfflineTime\":2000,\"fallbackToLocalWhenFail\":true,\"resourceTimeout\":2000,\"resourceTimeoutStrategy\":0,\"sampleCount\":10,\"strategy\":0,\"thresholdType\":0,\"windowIntervalMs\":1000},\"clusterMode\":false,\"controlBehavior\":0,\"count\":1.0,\"grade\":1,\"limitApp\":\"default\",\"maxQueueingTimeMs\":500,\"resource\":\"GET:http://spring-cloud-inventory/inventory/mockWithTryException\",\"strategy\":0,\"warmUpPeriodSec\":10}]', '9b601b3cc7406808dfec6bbb4d96b832', '2010-05-05 00:00:00', '2022-03-23 09:11:47', NULL, '127.0.0.1', 'U', '', '');
INSERT INTO `his_config_info` VALUES (103, 108, 'spring-cloud-order-degrade-rules', 'SENTINEL_GROUP', '', '[]', 'd751713988987e9331980363e24189ce', '2010-05-05 00:00:00', '2022-03-23 09:12:24', NULL, '127.0.0.1', 'U', '', '');
INSERT INTO `his_config_info` VALUES (106, 109, 'spring-cloud-order-flow-rules', 'SENTINEL_GROUP', '', '[{\"clusterConfig\":{\"acquireRefuseStrategy\":0,\"clientOfflineTime\":2000,\"fallbackToLocalWhenFail\":true,\"resourceTimeout\":2000,\"resourceTimeoutStrategy\":0,\"sampleCount\":10,\"strategy\":0,\"thresholdType\":0,\"windowIntervalMs\":1000},\"clusterMode\":false,\"controlBehavior\":0,\"count\":1.0,\"grade\":1,\"limitApp\":\"default\",\"maxQueueingTimeMs\":500,\"resource\":\"GET:http://spring-cloud-inventory/inventory/mockWithTryException\",\"strategy\":0,\"warmUpPeriodSec\":10},{\"clusterConfig\":{\"acquireRefuseStrategy\":0,\"clientOfflineTime\":2000,\"fallbackToLocalWhenFail\":true,\"resourceTimeout\":2000,\"resourceTimeoutStrategy\":0,\"sampleCount\":10,\"strategy\":0,\"thresholdType\":0,\"windowIntervalMs\":1000},\"clusterMode\":false,\"controlBehavior\":0,\"count\":1.0,\"grade\":1,\"limitApp\":\"default\",\"maxQueueingTimeMs\":500,\"resource\":\"/order/mockInventoryWithTryException\",\"strategy\":0,\"warmUpPeriodSec\":10}]', 'f139d9d7263bb15c78cc651313a36096', '2010-05-05 00:00:00', '2022-03-23 09:12:35', NULL, '127.0.0.1', 'U', '', '');
INSERT INTO `his_config_info` VALUES (106, 110, 'spring-cloud-order-flow-rules', 'SENTINEL_GROUP', '', '[{\"clusterConfig\":{\"acquireRefuseStrategy\":0,\"clientOfflineTime\":2000,\"fallbackToLocalWhenFail\":true,\"resourceTimeout\":2000,\"resourceTimeoutStrategy\":0,\"sampleCount\":10,\"strategy\":0,\"thresholdType\":0,\"windowIntervalMs\":1000},\"clusterMode\":false,\"controlBehavior\":0,\"count\":1.0,\"grade\":1,\"limitApp\":\"default\",\"maxQueueingTimeMs\":500,\"resource\":\"/order/mockInventoryWithTryException\",\"strategy\":0,\"warmUpPeriodSec\":10}]', '78a6f72f411100f67e073c3f819f7311', '2010-05-05 00:00:00', '2022-03-23 09:12:37', NULL, '127.0.0.1', 'U', '', '');
INSERT INTO `his_config_info` VALUES (106, 111, 'spring-cloud-order-flow-rules', 'SENTINEL_GROUP', '', '[{\"clusterConfig\":{\"acquireRefuseStrategy\":0,\"clientOfflineTime\":2000,\"fallbackToLocalWhenFail\":true,\"resourceTimeout\":2000,\"resourceTimeoutStrategy\":0,\"sampleCount\":10,\"strategy\":0,\"thresholdType\":0,\"windowIntervalMs\":1000},\"clusterMode\":false,\"controlBehavior\":0,\"count\":1.0,\"grade\":1,\"limitApp\":\"default\",\"maxQueueingTimeMs\":500,\"resource\":\"GET:http://spring-cloud-inventory/inventory/mockWithTryException\",\"strategy\":0,\"warmUpPeriodSec\":10}]', '9b601b3cc7406808dfec6bbb4d96b832', '2010-05-05 00:00:00', '2022-03-23 09:12:59', NULL, '127.0.0.1', 'U', '', '');
INSERT INTO `his_config_info` VALUES (103, 112, 'spring-cloud-order-degrade-rules', 'SENTINEL_GROUP', '', '[{\"count\":1.0,\"grade\":2,\"limitApp\":\"default\",\"minRequestAmount\":1,\"resource\":\"/order/mockInventoryWithTryException\",\"slowRatioThreshold\":1.0,\"statIntervalMs\":1000,\"timeWindow\":10}]', 'aed5a8a6084283f07978d7f784df8453', '2010-05-05 00:00:00', '2022-03-23 09:19:17', NULL, '127.0.0.1', 'U', '', '');
INSERT INTO `his_config_info` VALUES (103, 113, 'spring-cloud-order-degrade-rules', 'SENTINEL_GROUP', '', '[]', 'd751713988987e9331980363e24189ce', '2010-05-05 00:00:00', '2022-03-23 09:19:21', NULL, '127.0.0.1', 'U', '', '');
INSERT INTO `his_config_info` VALUES (106, 114, 'spring-cloud-order-flow-rules', 'SENTINEL_GROUP', '', '[]', 'd751713988987e9331980363e24189ce', '2010-05-05 00:00:00', '2022-03-23 09:19:35', NULL, '127.0.0.1', 'U', '', '');
INSERT INTO `his_config_info` VALUES (106, 115, 'spring-cloud-order-flow-rules', 'SENTINEL_GROUP', '', '[{\"clusterConfig\":{\"acquireRefuseStrategy\":0,\"clientOfflineTime\":2000,\"fallbackToLocalWhenFail\":true,\"resourceTimeout\":2000,\"resourceTimeoutStrategy\":0,\"sampleCount\":10,\"strategy\":0,\"thresholdType\":0,\"windowIntervalMs\":1000},\"clusterMode\":false,\"controlBehavior\":0,\"count\":1.0,\"grade\":1,\"limitApp\":\"default\",\"maxQueueingTimeMs\":500,\"resource\":\"/order/mockInventoryWithTryException\",\"strategy\":0,\"warmUpPeriodSec\":10}]', '78a6f72f411100f67e073c3f819f7311', '2010-05-05 00:00:00', '2022-03-23 09:27:02', NULL, '127.0.0.1', 'U', '', '');
INSERT INTO `his_config_info` VALUES (106, 116, 'spring-cloud-order-flow-rules', 'SENTINEL_GROUP', '', '[{\"clusterConfig\":{\"acquireRefuseStrategy\":0,\"clientOfflineTime\":2000,\"fallbackToLocalWhenFail\":true,\"resourceTimeout\":2000,\"resourceTimeoutStrategy\":0,\"sampleCount\":10,\"strategy\":0,\"thresholdType\":0,\"windowIntervalMs\":1000},\"clusterMode\":false,\"controlBehavior\":0,\"count\":1.0,\"grade\":1,\"limitApp\":\"default\",\"maxQueueingTimeMs\":500,\"resource\":\"/order/mockInventoryWithTryException\",\"strategy\":0,\"warmUpPeriodSec\":10},{\"clusterConfig\":{\"acquireRefuseStrategy\":0,\"clientOfflineTime\":2000,\"fallbackToLocalWhenFail\":true,\"resourceTimeout\":2000,\"resourceTimeoutStrategy\":0,\"sampleCount\":10,\"strategy\":0,\"thresholdType\":0,\"windowIntervalMs\":1000},\"clusterMode\":false,\"controlBehavior\":0,\"count\":1.0,\"grade\":1,\"limitApp\":\"default\",\"maxQueueingTimeMs\":500,\"resource\":\"GET:http://spring-cloud-inventory/inventory/mockWithTryException\",\"strategy\":0,\"warmUpPeriodSec\":10}]', '7e48a8b5b9c20482d1b2f6921057dd2a', '2010-05-05 00:00:00', '2022-03-23 09:27:13', NULL, '127.0.0.1', 'U', '', '');
INSERT INTO `his_config_info` VALUES (106, 117, 'spring-cloud-order-flow-rules', 'SENTINEL_GROUP', '', '[{\"clusterConfig\":{\"acquireRefuseStrategy\":0,\"clientOfflineTime\":2000,\"fallbackToLocalWhenFail\":true,\"resourceTimeout\":2000,\"resourceTimeoutStrategy\":0,\"sampleCount\":10,\"strategy\":0,\"thresholdType\":0,\"windowIntervalMs\":1000},\"clusterMode\":false,\"controlBehavior\":0,\"count\":1.0,\"grade\":1,\"limitApp\":\"default\",\"maxQueueingTimeMs\":500,\"resource\":\"GET:http://spring-cloud-inventory/inventory/mockWithTryException\",\"strategy\":0,\"warmUpPeriodSec\":10}]', '9b601b3cc7406808dfec6bbb4d96b832', '2010-05-05 00:00:00', '2022-03-23 09:27:33', NULL, '127.0.0.1', 'U', '', '');
INSERT INTO `his_config_info` VALUES (106, 118, 'spring-cloud-order-flow-rules', 'SENTINEL_GROUP', '', '[]', 'd751713988987e9331980363e24189ce', '2010-05-05 00:00:00', '2022-03-23 09:28:14', NULL, '127.0.0.1', 'U', '', '');
COMMIT;

-- ----------------------------
-- Table structure for permissions
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions` (
  `role` varchar(50) COLLATE utf8_bin NOT NULL,
  `resource` varchar(512) COLLATE utf8_bin NOT NULL,
  `action` varchar(8) COLLATE utf8_bin NOT NULL,
  UNIQUE KEY `uk_role_permission` (`role`,`resource`,`action`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;

-- ----------------------------
-- Records of permissions
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `username` varchar(50) COLLATE utf8_bin NOT NULL,
  `role` varchar(50) COLLATE utf8_bin NOT NULL,
  UNIQUE KEY `uk_username_role` (`username`,`role`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;

-- ----------------------------
-- Records of roles
-- ----------------------------
BEGIN;
INSERT INTO `roles` VALUES ('nacos', 'ROLE_ADMIN');
COMMIT;

-- ----------------------------
-- Table structure for tenant_capacity
-- ----------------------------
DROP TABLE IF EXISTS `tenant_capacity`;
CREATE TABLE `tenant_capacity` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `tenant_id` varchar(128) COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT 'Tenant ID',
  `quota` int unsigned NOT NULL DEFAULT '0' COMMENT '配额，0表示使用默认值',
  `usage` int unsigned NOT NULL DEFAULT '0' COMMENT '使用量',
  `max_size` int unsigned NOT NULL DEFAULT '0' COMMENT '单个配置大小上限，单位为字节，0表示使用默认值',
  `max_aggr_count` int unsigned NOT NULL DEFAULT '0' COMMENT '聚合子配置最大个数',
  `max_aggr_size` int unsigned NOT NULL DEFAULT '0' COMMENT '单个聚合数据的子配置大小上限，单位为字节，0表示使用默认值',
  `max_history_count` int unsigned NOT NULL DEFAULT '0' COMMENT '最大变更历史数量',
  `gmt_create` datetime NOT NULL DEFAULT '2010-05-05 00:00:00' COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL DEFAULT '2010-05-05 00:00:00' COMMENT '修改时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_tenant_id` (`tenant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin COMMENT='租户容量信息表';

-- ----------------------------
-- Records of tenant_capacity
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for tenant_info
-- ----------------------------
DROP TABLE IF EXISTS `tenant_info`;
CREATE TABLE `tenant_info` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
  `kp` varchar(128) COLLATE utf8_bin NOT NULL COMMENT 'kp',
  `tenant_id` varchar(128) COLLATE utf8_bin DEFAULT '' COMMENT 'tenant_id',
  `tenant_name` varchar(128) COLLATE utf8_bin DEFAULT '' COMMENT 'tenant_name',
  `tenant_desc` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'tenant_desc',
  `create_source` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT 'create_source',
  `gmt_create` bigint NOT NULL COMMENT '创建时间',
  `gmt_modified` bigint NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_tenant_info_kptenantid` (`kp`,`tenant_id`),
  KEY `idx_tenant_id` (`tenant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin COMMENT='tenant_info';

-- ----------------------------
-- Records of tenant_info
-- ----------------------------
BEGIN;
INSERT INTO `tenant_info` VALUES (1, '1', 'seata', 'seata', 'seata', 'nacos', 1648023688790, 1648023688790);
INSERT INTO `tenant_info` VALUES (2, '1', 'seata-server', 'seata-server', 'seata-server', 'nacos', 1648023699561, 1648023699561);
COMMIT;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `username` varchar(50) COLLATE utf8_bin NOT NULL,
  `password` varchar(500) COLLATE utf8_bin NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
INSERT INTO `users` VALUES ('nacos', '$2a$10$EuWPZHzz32dJN7jexM34MOeYirDdFAZm2kuWj7VEOJhhZkDrxfvUu', 1);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
