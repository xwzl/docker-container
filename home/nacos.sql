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

 Date: 21/03/2022 17:07:02
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
) ENGINE=InnoDB AUTO_INCREMENT=1034 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin COMMENT='config_info';

-- ----------------------------
-- Records of config_info
-- ----------------------------
BEGIN;
INSERT INTO `config_info` VALUES (1, 'transport.type', 'SEATA_GROUP', 'TCP', 'b136ef5f6a01d816991fe3cf7a6ac763', '2022-03-21 02:47:46', '2022-03-21 02:56:02', 'nacos', '0:0:0:0:0:0:0:1', '', 'test', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (2, 'transport.server', 'SEATA_GROUP', 'NIO', 'b6d9dfc0fb54277321cebc0fff55df2f', '2022-03-21 02:47:46', '2022-03-21 02:56:02', 'nacos', '0:0:0:0:0:0:0:1', '', 'test', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (3, 'transport.heartbeat', 'SEATA_GROUP', 'true', 'b326b5062b2f0e69046810717534cb09', '2022-03-21 02:47:46', '2022-03-21 02:56:02', 'nacos', '0:0:0:0:0:0:0:1', '', 'test', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (4, 'transport.enableTmClientBatchSendRequest', 'SEATA_GROUP', 'false', '68934a3e9455fa72420237eb05902327', '2022-03-21 02:47:46', '2022-03-21 02:56:02', 'nacos', '0:0:0:0:0:0:0:1', '', 'test', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (5, 'transport.enableRmClientBatchSendRequest', 'SEATA_GROUP', 'true', 'b326b5062b2f0e69046810717534cb09', '2022-03-21 02:47:47', '2022-03-21 02:56:03', 'nacos', '0:0:0:0:0:0:0:1', '', 'test', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (6, 'transport.enableTcServerBatchSendResponse', 'SEATA_GROUP', 'false', '68934a3e9455fa72420237eb05902327', '2022-03-21 02:47:47', '2022-03-21 02:56:03', 'nacos', '0:0:0:0:0:0:0:1', '', 'test', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (7, 'transport.rpcRmRequestTimeout', 'SEATA_GROUP', '30000', '5ecc613150de01b7e6824594426f24f4', '2022-03-21 02:47:47', '2022-03-21 02:56:03', 'nacos', '0:0:0:0:0:0:0:1', '', 'test', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (8, 'transport.rpcTmRequestTimeout', 'SEATA_GROUP', '30000', '5ecc613150de01b7e6824594426f24f4', '2022-03-21 02:47:47', '2022-03-21 02:56:04', 'nacos', '0:0:0:0:0:0:0:1', '', 'test', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (9, 'transport.rpcTcRequestTimeout', 'SEATA_GROUP', '30000', '5ecc613150de01b7e6824594426f24f4', '2022-03-21 02:47:47', '2022-03-21 02:56:04', 'nacos', '0:0:0:0:0:0:0:1', '', 'test', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (10, 'transport.threadFactory.bossThreadPrefix', 'SEATA_GROUP', 'NettyBoss', '0f8db59a3b7f2823f38a70c308361836', '2022-03-21 02:47:48', '2022-03-21 02:56:04', 'nacos', '0:0:0:0:0:0:0:1', '', 'test', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (11, 'transport.threadFactory.workerThreadPrefix', 'SEATA_GROUP', 'NettyServerNIOWorker', 'a78ec7ef5d1631754c4e72ae8a3e9205', '2022-03-21 02:47:48', '2022-03-21 02:56:04', 'nacos', '0:0:0:0:0:0:0:1', '', 'test', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (12, 'transport.threadFactory.serverExecutorThreadPrefix', 'SEATA_GROUP', 'NettyServerBizHandler', '11a36309f3d9df84fa8b59cf071fa2da', '2022-03-21 02:47:48', '2022-03-21 02:56:05', 'nacos', '0:0:0:0:0:0:0:1', '', 'test', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (13, 'transport.threadFactory.shareBossWorker', 'SEATA_GROUP', 'false', '68934a3e9455fa72420237eb05902327', '2022-03-21 02:47:49', '2022-03-21 02:56:05', 'nacos', '0:0:0:0:0:0:0:1', '', 'test', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (14, 'transport.threadFactory.clientSelectorThreadPrefix', 'SEATA_GROUP', 'NettyClientSelector', 'cd7ec5a06541e75f5a7913752322c3af', '2022-03-21 02:47:49', '2022-03-21 02:56:06', 'nacos', '0:0:0:0:0:0:0:1', '', 'test', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (15, 'transport.threadFactory.clientSelectorThreadSize', 'SEATA_GROUP', '1', 'c4ca4238a0b923820dcc509a6f75849b', '2022-03-21 02:47:49', '2022-03-21 02:56:06', 'nacos', '0:0:0:0:0:0:0:1', '', 'test', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (16, 'transport.threadFactory.clientWorkerThreadPrefix', 'SEATA_GROUP', 'NettyClientWorkerThread', '61cf4e69a56354cf72f46dc86414a57e', '2022-03-21 02:47:49', '2022-03-21 02:56:07', 'nacos', '0:0:0:0:0:0:0:1', '', 'test', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (17, 'transport.threadFactory.bossThreadSize', 'SEATA_GROUP', '1', 'c4ca4238a0b923820dcc509a6f75849b', '2022-03-21 02:47:50', '2022-03-21 02:56:07', 'nacos', '0:0:0:0:0:0:0:1', '', 'test', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (18, 'transport.threadFactory.workerThreadSize', 'SEATA_GROUP', 'default', 'c21f969b5f03d33d43e04f8f136e7682', '2022-03-21 02:47:50', '2022-03-21 02:56:07', 'nacos', '0:0:0:0:0:0:0:1', '', 'test', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (19, 'transport.shutdown.wait', 'SEATA_GROUP', '3', 'eccbc87e4b5ce2fe28308fd9f2a7baf3', '2022-03-21 02:47:50', '2022-03-21 02:56:07', 'nacos', '0:0:0:0:0:0:0:1', '', 'test', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (20, 'transport.serialization', 'SEATA_GROUP', 'seata', 'b943081c423b9a5416a706524ee05d40', '2022-03-21 02:47:50', '2022-03-21 02:56:08', 'nacos', '0:0:0:0:0:0:0:1', '', 'test', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (21, 'transport.compressor', 'SEATA_GROUP', 'none', '334c4a4c42fdb79d7ebc3e73b517e6f8', '2022-03-21 02:47:50', '2022-03-21 02:56:08', 'nacos', '0:0:0:0:0:0:0:1', '', 'test', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (22, 'service.vgroupMapping.default_tx_group', 'SEATA_GROUP', 'default', 'c21f969b5f03d33d43e04f8f136e7682', '2022-03-21 02:47:51', '2022-03-21 02:56:08', 'nacos', '0:0:0:0:0:0:0:1', '', 'test', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (23, 'service.default.grouplist', 'SEATA_GROUP', '127.0.0.1:8091', 'c32ce0d3e264525dcdada751f98143a3', '2022-03-21 02:47:51', '2022-03-21 02:56:08', 'nacos', '0:0:0:0:0:0:0:1', '', 'test', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (24, 'service.enableDegrade', 'SEATA_GROUP', 'false', '68934a3e9455fa72420237eb05902327', '2022-03-21 02:47:51', '2022-03-21 02:56:09', 'nacos', '0:0:0:0:0:0:0:1', '', 'test', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (25, 'service.disableGlobalTransaction', 'SEATA_GROUP', 'false', '68934a3e9455fa72420237eb05902327', '2022-03-21 02:47:51', '2022-03-21 02:56:09', 'nacos', '0:0:0:0:0:0:0:1', '', 'test', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (26, 'client.rm.asyncCommitBufferLimit', 'SEATA_GROUP', '10000', 'b7a782741f667201b54880c925faec4b', '2022-03-21 02:47:51', '2022-03-21 02:56:09', 'nacos', '0:0:0:0:0:0:0:1', '', 'test', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (27, 'client.rm.lock.retryInterval', 'SEATA_GROUP', '10', 'd3d9446802a44259755d38e6d163e820', '2022-03-21 02:47:52', '2022-03-21 02:56:09', 'nacos', '0:0:0:0:0:0:0:1', '', 'test', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (28, 'client.rm.lock.retryTimes', 'SEATA_GROUP', '30', '34173cb38f07f89ddbebc2ac9128303f', '2022-03-21 02:47:52', '2022-03-21 02:56:10', 'nacos', '0:0:0:0:0:0:0:1', '', 'test', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (29, 'client.rm.lock.retryPolicyBranchRollbackOnConflict', 'SEATA_GROUP', 'true', 'b326b5062b2f0e69046810717534cb09', '2022-03-21 02:47:52', '2022-03-21 02:56:10', 'nacos', '0:0:0:0:0:0:0:1', '', 'test', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (30, 'client.rm.reportRetryCount', 'SEATA_GROUP', '5', 'e4da3b7fbbce2345d7772b0674a318d5', '2022-03-21 02:47:52', '2022-03-21 02:56:10', 'nacos', '0:0:0:0:0:0:0:1', '', 'test', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (31, 'client.rm.tableMetaCheckEnable', 'SEATA_GROUP', 'false', '68934a3e9455fa72420237eb05902327', '2022-03-21 02:47:52', '2022-03-21 02:56:11', 'nacos', '0:0:0:0:0:0:0:1', '', 'test', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (32, 'client.rm.tableMetaCheckerInterval', 'SEATA_GROUP', '60000', '2b4226dd7ed6eb2d419b881f3ae9c97c', '2022-03-21 02:47:53', '2022-03-21 02:56:11', 'nacos', '0:0:0:0:0:0:0:1', '', 'test', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (33, 'client.rm.sqlParserType', 'SEATA_GROUP', 'druid', '3d650fb8a5df01600281d48c47c9fa60', '2022-03-21 02:47:53', '2022-03-21 02:56:12', 'nacos', '0:0:0:0:0:0:0:1', '', 'test', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (34, 'client.rm.reportSuccessEnable', 'SEATA_GROUP', 'false', '68934a3e9455fa72420237eb05902327', '2022-03-21 02:47:53', '2022-03-21 02:56:11', 'nacos', '0:0:0:0:0:0:0:1', '', 'test', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (35, 'client.rm.sagaBranchRegisterEnable', 'SEATA_GROUP', 'false', '68934a3e9455fa72420237eb05902327', '2022-03-21 02:47:53', '2022-03-21 02:56:12', 'nacos', '0:0:0:0:0:0:0:1', '', 'test', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (36, 'client.rm.sagaJsonParser', 'SEATA_GROUP', 'fastjson', 'd00d3dbc0834f08411c7b6c4c39e9f00', '2022-03-21 02:47:53', '2022-03-21 02:56:12', 'nacos', '0:0:0:0:0:0:0:1', '', 'test', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (37, 'client.rm.tccActionInterceptorOrder', 'SEATA_GROUP', '-2147482648', 'f056d9efa5dae3872f9da035c83bcde8', '2022-03-21 02:47:53', '2022-03-21 02:56:12', 'nacos', '0:0:0:0:0:0:0:1', '', 'test', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (39, 'client.tm.commitRetryCount', 'SEATA_GROUP', '5', 'e4da3b7fbbce2345d7772b0674a318d5', '2022-03-21 02:47:54', '2022-03-21 02:56:13', 'nacos', '0:0:0:0:0:0:0:1', '', 'test', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (40, 'client.tm.rollbackRetryCount', 'SEATA_GROUP', '5', 'e4da3b7fbbce2345d7772b0674a318d5', '2022-03-21 02:47:54', '2022-03-21 02:56:13', 'nacos', '0:0:0:0:0:0:0:1', '', 'test', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (41, 'client.tm.defaultGlobalTransactionTimeout', 'SEATA_GROUP', '60000', '2b4226dd7ed6eb2d419b881f3ae9c97c', '2022-03-21 02:47:54', '2022-03-21 02:56:13', 'nacos', '0:0:0:0:0:0:0:1', '', 'test', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (42, 'client.tm.degradeCheck', 'SEATA_GROUP', 'false', '68934a3e9455fa72420237eb05902327', '2022-03-21 02:47:55', '2022-03-21 02:56:13', 'nacos', '0:0:0:0:0:0:0:1', '', 'test', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (43, 'client.tm.degradeCheckAllowTimes', 'SEATA_GROUP', '10', 'd3d9446802a44259755d38e6d163e820', '2022-03-21 02:47:55', '2022-03-21 02:56:14', 'nacos', '0:0:0:0:0:0:0:1', '', 'test', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (44, 'client.tm.degradeCheckPeriod', 'SEATA_GROUP', '2000', '08f90c1a417155361a5c4b8d297e0d78', '2022-03-21 02:47:55', '2022-03-21 02:56:14', 'nacos', '0:0:0:0:0:0:0:1', '', 'test', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (45, 'client.tm.interceptorOrder', 'SEATA_GROUP', '-2147482648', 'f056d9efa5dae3872f9da035c83bcde8', '2022-03-21 02:47:55', '2022-03-21 02:56:14', 'nacos', '0:0:0:0:0:0:0:1', '', 'test', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (46, 'client.undo.dataValidation', 'SEATA_GROUP', 'true', 'b326b5062b2f0e69046810717534cb09', '2022-03-21 02:47:55', '2022-03-21 02:56:14', 'nacos', '0:0:0:0:0:0:0:1', '', 'test', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (47, 'client.undo.logSerialization', 'SEATA_GROUP', 'jackson', 'b41779690b83f182acc67d6388c7bac9', '2022-03-21 02:47:55', '2022-03-21 02:56:15', 'nacos', '0:0:0:0:0:0:0:1', '', 'test', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (48, 'client.undo.onlyCareUpdateColumns', 'SEATA_GROUP', 'true', 'b326b5062b2f0e69046810717534cb09', '2022-03-21 02:47:55', '2022-03-21 02:56:15', 'nacos', '0:0:0:0:0:0:0:1', '', 'test', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (49, 'server.undo.logSaveDays', 'SEATA_GROUP', '7', '8f14e45fceea167a5a36dedd4bea2543', '2022-03-21 02:47:56', '2022-03-21 02:56:15', 'nacos', '0:0:0:0:0:0:0:1', '', 'test', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (50, 'server.undo.logDeletePeriod', 'SEATA_GROUP', '86400000', 'f4c122804fe9076cb2710f55c3c6e346', '2022-03-21 02:47:56', '2022-03-21 02:56:15', 'nacos', '0:0:0:0:0:0:0:1', '', 'test', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (51, 'client.undo.logTable', 'SEATA_GROUP', 'undo_log', '2842d229c24afe9e61437135e8306614', '2022-03-21 02:47:56', '2022-03-21 02:56:15', 'nacos', '0:0:0:0:0:0:0:1', '', 'test', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (52, 'client.undo.compress.enable', 'SEATA_GROUP', 'true', 'b326b5062b2f0e69046810717534cb09', '2022-03-21 02:47:56', '2022-03-21 02:56:16', 'nacos', '0:0:0:0:0:0:0:1', '', 'test', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (53, 'client.undo.compress.type', 'SEATA_GROUP', 'zip', 'adcdbd79a8d84175c229b192aadc02f2', '2022-03-21 02:47:56', '2022-03-21 02:56:16', 'nacos', '0:0:0:0:0:0:0:1', '', 'test', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (54, 'client.undo.compress.threshold', 'SEATA_GROUP', '64k', 'bd44a6458bdbff0b5cac721ba361f035', '2022-03-21 02:47:56', '2022-03-21 02:56:16', 'nacos', '0:0:0:0:0:0:0:1', '', 'test', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (55, 'tcc.fence.logTableName', 'SEATA_GROUP', 'tcc_fence_log', 'db229b665c7cfd5abc03971d4ed284c6', '2022-03-21 02:47:57', '2022-03-21 02:56:16', 'nacos', '0:0:0:0:0:0:0:1', '', 'test', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (56, 'tcc.fence.cleanPeriod', 'SEATA_GROUP', '1h', '7c68645d71b803bf0ba2f22519f73e08', '2022-03-21 02:47:57', '2022-03-21 02:56:16', 'nacos', '0:0:0:0:0:0:0:1', '', 'test', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (57, 'log.exceptionRate', 'SEATA_GROUP', '100', 'f899139df5e1059396431415e770c6dd', '2022-03-21 02:47:57', '2022-03-21 02:56:17', 'nacos', '0:0:0:0:0:0:0:1', '', 'test', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (58, 'store.mode', 'SEATA_GROUP', 'nacos', '3c3e94100815e3fcbe948b1e5fb3037a', '2022-03-21 02:47:57', '2022-03-21 02:56:17', 'nacos', '0:0:0:0:0:0:0:1', '', 'test', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (59, 'store.lock.mode', 'SEATA_GROUP', 'file', '8c7dd922ad47494fc02c388e12c00eac', '2022-03-21 02:47:57', '2022-03-21 02:56:17', 'nacos', '0:0:0:0:0:0:0:1', '', 'test', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (60, 'store.session.mode', 'SEATA_GROUP', 'file', '8c7dd922ad47494fc02c388e12c00eac', '2022-03-21 02:47:57', '2022-03-21 02:56:17', 'nacos', '0:0:0:0:0:0:0:1', '', 'test', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (61, 'store.file.dir', 'SEATA_GROUP', 'file_store/data', '6a8dec07c44c33a8a9247cba5710bbb2', '2022-03-21 02:47:57', '2022-03-21 02:56:17', 'nacos', '0:0:0:0:0:0:0:1', '', 'test', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (62, 'store.file.maxBranchSessionSize', 'SEATA_GROUP', '16384', 'c76fe1d8e08462434d800487585be217', '2022-03-21 02:47:58', '2022-03-21 02:56:18', 'nacos', '0:0:0:0:0:0:0:1', '', 'test', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (63, 'store.file.maxGlobalSessionSize', 'SEATA_GROUP', '512', '10a7cdd970fe135cf4f7bb55c0e3b59f', '2022-03-21 02:47:58', '2022-03-21 02:56:18', 'nacos', '0:0:0:0:0:0:0:1', '', 'test', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (64, 'store.file.fileWriteBufferCacheSize', 'SEATA_GROUP', '16384', 'c76fe1d8e08462434d800487585be217', '2022-03-21 02:47:58', '2022-03-21 02:56:18', 'nacos', '0:0:0:0:0:0:0:1', '', 'test', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (65, 'store.file.flushDiskMode', 'SEATA_GROUP', 'async', '0df93e34273b367bb63bad28c94c78d5', '2022-03-21 02:47:58', '2022-03-21 02:56:18', 'nacos', '0:0:0:0:0:0:0:1', '', 'test', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (66, 'store.file.sessionReloadReadSize', 'SEATA_GROUP', '100', 'f899139df5e1059396431415e770c6dd', '2022-03-21 02:47:58', '2022-03-21 02:56:19', 'nacos', '0:0:0:0:0:0:0:1', '', 'test', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (67, 'store.db.datasource', 'SEATA_GROUP', 'druid', '3d650fb8a5df01600281d48c47c9fa60', '2022-03-21 02:47:58', '2022-03-21 02:56:19', 'nacos', '0:0:0:0:0:0:0:1', '', 'test', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (68, 'store.db.dbType', 'SEATA_GROUP', 'mysql', '81c3b080dad537de7e10e0987a4bf52e', '2022-03-21 02:47:58', '2022-03-21 02:56:19', 'nacos', '0:0:0:0:0:0:0:1', '', 'test', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (69, 'store.db.driverClassName', 'SEATA_GROUP', 'com.mysql.cj.jdbc.Driver', '33763409bb7f4838bde4fae9540433e4', '2022-03-21 02:47:59', '2022-03-21 02:56:19', 'nacos', '0:0:0:0:0:0:0:1', '', 'test', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (70, 'store.db.url', 'SEATA_GROUP', 'jdbc:mysql://127.0.0.1:3306/seata?useUnicode=true&rewriteBatchedStatements=true', '030ea5ff5c2ef043adf9826c70570b0b', '2022-03-21 02:47:59', '2022-03-21 02:56:20', 'nacos', '0:0:0:0:0:0:0:1', '', 'test', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (71, 'store.db.user', 'SEATA_GROUP', 'root', '63a9f0ea7bb98050796b649e85481845', '2022-03-21 02:47:59', '2022-03-21 02:56:20', 'nacos', '0:0:0:0:0:0:0:1', '', 'test', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (72, 'store.db.password', 'SEATA_GROUP', 'root', '63a9f0ea7bb98050796b649e85481845', '2022-03-21 02:47:59', '2022-03-21 02:56:20', 'nacos', '0:0:0:0:0:0:0:1', '', 'test', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (73, 'store.db.minConn', 'SEATA_GROUP', '5', 'e4da3b7fbbce2345d7772b0674a318d5', '2022-03-21 02:47:59', '2022-03-21 02:56:20', 'nacos', '0:0:0:0:0:0:0:1', '', 'test', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (74, 'store.db.maxConn', 'SEATA_GROUP', '30', '34173cb38f07f89ddbebc2ac9128303f', '2022-03-21 02:47:59', '2022-03-21 02:56:20', 'nacos', '0:0:0:0:0:0:0:1', '', 'test', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (75, 'store.db.globalTable', 'SEATA_GROUP', 'global_table', '8b28fb6bb4c4f984df2709381f8eba2b', '2022-03-21 02:48:00', '2022-03-21 02:56:21', 'nacos', '0:0:0:0:0:0:0:1', '', 'test', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (76, 'store.db.branchTable', 'SEATA_GROUP', 'branch_table', '54bcdac38cf62e103fe115bcf46a660c', '2022-03-21 02:48:00', '2022-03-21 02:56:21', 'nacos', '0:0:0:0:0:0:0:1', '', 'test', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (77, 'store.db.distributedLockTable', 'SEATA_GROUP', 'distributed_lock', '26146b7a3a4907101617cb0f19bf613f', '2022-03-21 02:48:00', '2022-03-21 02:56:21', 'nacos', '0:0:0:0:0:0:0:1', '', 'test', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (78, 'store.db.queryLimit', 'SEATA_GROUP', '100', 'f899139df5e1059396431415e770c6dd', '2022-03-21 02:48:00', '2022-03-21 02:56:21', 'nacos', '0:0:0:0:0:0:0:1', '', 'test', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (79, 'store.db.lockTable', 'SEATA_GROUP', 'lock_table', '55e0cae3b6dc6696b768db90098b8f2f', '2022-03-21 02:48:00', '2022-03-21 02:56:22', 'nacos', '0:0:0:0:0:0:0:1', '', 'test', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (80, 'store.db.maxWait', 'SEATA_GROUP', '5000', 'a35fe7f7fe8217b4369a0af4244d1fca', '2022-03-21 02:48:00', '2022-03-21 02:56:22', 'nacos', '0:0:0:0:0:0:0:1', '', 'test', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (81, 'store.redis.mode', 'SEATA_GROUP', 'single', 'dd5c07036f2975ff4bce568b6511d3bc', '2022-03-21 02:48:00', '2022-03-21 02:56:22', 'nacos', '0:0:0:0:0:0:0:1', '', 'test', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (82, 'store.redis.single.host', 'SEATA_GROUP', '127.0.0.1', 'f528764d624db129b32c21fbca0cb8d6', '2022-03-21 02:48:01', '2022-03-21 02:56:22', 'nacos', '0:0:0:0:0:0:0:1', '', 'test', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (83, 'store.redis.single.port', 'SEATA_GROUP', '6379', '92c3b916311a5517d9290576e3ea37ad', '2022-03-21 02:48:01', '2022-03-21 02:56:23', 'nacos', '0:0:0:0:0:0:0:1', '', 'test', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (84, 'store.redis.maxConn', 'SEATA_GROUP', '10', 'd3d9446802a44259755d38e6d163e820', '2022-03-21 02:48:01', '2022-03-21 02:56:23', 'nacos', '0:0:0:0:0:0:0:1', '', 'test', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (85, 'store.redis.minConn', 'SEATA_GROUP', '1', 'c4ca4238a0b923820dcc509a6f75849b', '2022-03-21 02:48:01', '2022-03-21 02:56:23', 'nacos', '0:0:0:0:0:0:0:1', '', 'test', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (86, 'store.redis.maxTotal', 'SEATA_GROUP', '100', 'f899139df5e1059396431415e770c6dd', '2022-03-21 02:48:01', '2022-03-21 02:56:23', 'nacos', '0:0:0:0:0:0:0:1', '', 'test', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (87, 'store.redis.database', 'SEATA_GROUP', '0', 'cfcd208495d565ef66e7dff9f98764da', '2022-03-21 02:48:02', '2022-03-21 02:56:23', 'nacos', '0:0:0:0:0:0:0:1', '', 'test', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (88, 'store.redis.queryLimit', 'SEATA_GROUP', '100', 'f899139df5e1059396431415e770c6dd', '2022-03-21 02:48:02', '2022-03-21 02:56:23', 'nacos', '0:0:0:0:0:0:0:1', '', 'test', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (89, 'server.recovery.committingRetryPeriod', 'SEATA_GROUP', '1000', 'a9b7ba70783b617e9998dc4dd82eb3c5', '2022-03-21 02:48:02', '2022-03-21 02:56:24', 'nacos', '0:0:0:0:0:0:0:1', '', 'test', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (90, 'server.recovery.asynCommittingRetryPeriod', 'SEATA_GROUP', '1000', 'a9b7ba70783b617e9998dc4dd82eb3c5', '2022-03-21 02:48:02', '2022-03-21 02:56:24', 'nacos', '0:0:0:0:0:0:0:1', '', 'test', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (91, 'server.recovery.rollbackingRetryPeriod', 'SEATA_GROUP', '1000', 'a9b7ba70783b617e9998dc4dd82eb3c5', '2022-03-21 02:48:02', '2022-03-21 02:56:24', 'nacos', '0:0:0:0:0:0:0:1', '', 'test', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (92, 'server.recovery.timeoutRetryPeriod', 'SEATA_GROUP', '1000', 'a9b7ba70783b617e9998dc4dd82eb3c5', '2022-03-21 02:48:03', '2022-03-21 02:56:25', 'nacos', '0:0:0:0:0:0:0:1', '', 'test', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (93, 'server.maxCommitRetryTimeout', 'SEATA_GROUP', '-1', '6bb61e3b7bce0931da574d19d1d82c88', '2022-03-21 02:48:03', '2022-03-21 02:56:25', 'nacos', '0:0:0:0:0:0:0:1', '', 'test', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (94, 'server.maxRollbackRetryTimeout', 'SEATA_GROUP', '-1', '6bb61e3b7bce0931da574d19d1d82c88', '2022-03-21 02:48:03', '2022-03-21 02:56:25', 'nacos', '0:0:0:0:0:0:0:1', '', 'test', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (95, 'server.rollbackRetryTimeoutUnlockEnable', 'SEATA_GROUP', 'false', '68934a3e9455fa72420237eb05902327', '2022-03-21 02:48:03', '2022-03-21 02:56:25', 'nacos', '0:0:0:0:0:0:0:1', '', 'test', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (96, 'server.distributedLockExpireTime', 'SEATA_GROUP', '10000', 'b7a782741f667201b54880c925faec4b', '2022-03-21 02:48:03', '2022-03-21 02:56:26', 'nacos', '0:0:0:0:0:0:0:1', '', 'test', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (97, 'server.session.branchAsyncQueueSize', 'SEATA_GROUP', '5000', 'a35fe7f7fe8217b4369a0af4244d1fca', '2022-03-21 02:48:03', '2022-03-21 02:56:26', 'nacos', '0:0:0:0:0:0:0:1', '', 'test', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (98, 'server.session.enableBranchAsyncRemove', 'SEATA_GROUP', 'true', 'b326b5062b2f0e69046810717534cb09', '2022-03-21 02:48:04', '2022-03-21 02:56:26', 'nacos', '0:0:0:0:0:0:0:1', '', 'test', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (99, 'metrics.enabled', 'SEATA_GROUP', 'false', '68934a3e9455fa72420237eb05902327', '2022-03-21 02:48:04', '2022-03-21 02:56:27', 'nacos', '0:0:0:0:0:0:0:1', '', 'test', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (100, 'metrics.registryType', 'SEATA_GROUP', 'compact', '7cf74ca49c304df8150205fc915cd465', '2022-03-21 02:48:04', '2022-03-21 02:56:27', 'nacos', '0:0:0:0:0:0:0:1', '', 'test', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (101, 'metrics.exporterList', 'SEATA_GROUP', 'prometheus', 'e4f00638b8a10e6994e67af2f832d51c', '2022-03-21 02:48:04', '2022-03-21 02:56:27', 'nacos', '0:0:0:0:0:0:0:1', '', 'test', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (102, 'metrics.exporterPrometheusPort', 'SEATA_GROUP', '9898', '7b9dc501afe4ee11c56a4831e20cee71', '2022-03-21 02:48:04', '2022-03-21 02:56:27', 'nacos', '0:0:0:0:0:0:0:1', '', 'test', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (522, 'transport.type', 'SEATA_GROUP', 'TCP', 'b136ef5f6a01d816991fe3cf7a6ac763', '2022-03-21 02:57:00', '2022-03-21 02:57:00', 'nacos', '0:0:0:0:0:0:0:1', '', 'c59b1e25-6e0f-4ca8-94ce-e90d6c4fc7f6', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (523, 'transport.server', 'SEATA_GROUP', 'NIO', 'b6d9dfc0fb54277321cebc0fff55df2f', '2022-03-21 02:57:00', '2022-03-21 02:57:00', 'nacos', '0:0:0:0:0:0:0:1', '', 'c59b1e25-6e0f-4ca8-94ce-e90d6c4fc7f6', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (524, 'transport.heartbeat', 'SEATA_GROUP', 'true', 'b326b5062b2f0e69046810717534cb09', '2022-03-21 02:57:00', '2022-03-21 02:57:00', 'nacos', '0:0:0:0:0:0:0:1', '', 'c59b1e25-6e0f-4ca8-94ce-e90d6c4fc7f6', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (525, 'transport.enableTmClientBatchSendRequest', 'SEATA_GROUP', 'false', '68934a3e9455fa72420237eb05902327', '2022-03-21 02:57:01', '2022-03-21 02:57:01', 'nacos', '0:0:0:0:0:0:0:1', '', 'c59b1e25-6e0f-4ca8-94ce-e90d6c4fc7f6', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (526, 'transport.enableRmClientBatchSendRequest', 'SEATA_GROUP', 'true', 'b326b5062b2f0e69046810717534cb09', '2022-03-21 02:57:01', '2022-03-21 02:57:01', 'nacos', '0:0:0:0:0:0:0:1', '', 'c59b1e25-6e0f-4ca8-94ce-e90d6c4fc7f6', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (527, 'transport.enableTcServerBatchSendResponse', 'SEATA_GROUP', 'false', '68934a3e9455fa72420237eb05902327', '2022-03-21 02:57:01', '2022-03-21 02:57:01', 'nacos', '0:0:0:0:0:0:0:1', '', 'c59b1e25-6e0f-4ca8-94ce-e90d6c4fc7f6', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (528, 'transport.rpcRmRequestTimeout', 'SEATA_GROUP', '30000', '5ecc613150de01b7e6824594426f24f4', '2022-03-21 02:57:02', '2022-03-21 02:57:02', 'nacos', '0:0:0:0:0:0:0:1', '', 'c59b1e25-6e0f-4ca8-94ce-e90d6c4fc7f6', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (529, 'transport.rpcTmRequestTimeout', 'SEATA_GROUP', '30000', '5ecc613150de01b7e6824594426f24f4', '2022-03-21 02:57:02', '2022-03-21 02:57:02', 'nacos', '0:0:0:0:0:0:0:1', '', 'c59b1e25-6e0f-4ca8-94ce-e90d6c4fc7f6', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (530, 'transport.rpcTcRequestTimeout', 'SEATA_GROUP', '30000', '5ecc613150de01b7e6824594426f24f4', '2022-03-21 02:57:02', '2022-03-21 02:57:02', 'nacos', '0:0:0:0:0:0:0:1', '', 'c59b1e25-6e0f-4ca8-94ce-e90d6c4fc7f6', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (531, 'transport.threadFactory.bossThreadPrefix', 'SEATA_GROUP', 'NettyBoss', '0f8db59a3b7f2823f38a70c308361836', '2022-03-21 02:57:02', '2022-03-21 02:57:02', 'nacos', '0:0:0:0:0:0:0:1', '', 'c59b1e25-6e0f-4ca8-94ce-e90d6c4fc7f6', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (532, 'transport.threadFactory.workerThreadPrefix', 'SEATA_GROUP', 'NettyServerNIOWorker', 'a78ec7ef5d1631754c4e72ae8a3e9205', '2022-03-21 02:57:03', '2022-03-21 02:57:03', 'nacos', '0:0:0:0:0:0:0:1', '', 'c59b1e25-6e0f-4ca8-94ce-e90d6c4fc7f6', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (533, 'transport.threadFactory.serverExecutorThreadPrefix', 'SEATA_GROUP', 'NettyServerBizHandler', '11a36309f3d9df84fa8b59cf071fa2da', '2022-03-21 02:57:03', '2022-03-21 02:57:03', 'nacos', '0:0:0:0:0:0:0:1', '', 'c59b1e25-6e0f-4ca8-94ce-e90d6c4fc7f6', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (534, 'transport.threadFactory.shareBossWorker', 'SEATA_GROUP', 'false', '68934a3e9455fa72420237eb05902327', '2022-03-21 02:57:04', '2022-03-21 02:57:04', 'nacos', '0:0:0:0:0:0:0:1', '', 'c59b1e25-6e0f-4ca8-94ce-e90d6c4fc7f6', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (535, 'transport.threadFactory.clientSelectorThreadPrefix', 'SEATA_GROUP', 'NettyClientSelector', 'cd7ec5a06541e75f5a7913752322c3af', '2022-03-21 02:57:04', '2022-03-21 02:57:04', 'nacos', '0:0:0:0:0:0:0:1', '', 'c59b1e25-6e0f-4ca8-94ce-e90d6c4fc7f6', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (536, 'transport.threadFactory.clientSelectorThreadSize', 'SEATA_GROUP', '1', 'c4ca4238a0b923820dcc509a6f75849b', '2022-03-21 02:57:05', '2022-03-21 02:57:05', 'nacos', '0:0:0:0:0:0:0:1', '', 'c59b1e25-6e0f-4ca8-94ce-e90d6c4fc7f6', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (537, 'transport.threadFactory.clientWorkerThreadPrefix', 'SEATA_GROUP', 'NettyClientWorkerThread', '61cf4e69a56354cf72f46dc86414a57e', '2022-03-21 02:57:05', '2022-03-21 02:57:05', 'nacos', '0:0:0:0:0:0:0:1', '', 'c59b1e25-6e0f-4ca8-94ce-e90d6c4fc7f6', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (538, 'transport.threadFactory.bossThreadSize', 'SEATA_GROUP', '1', 'c4ca4238a0b923820dcc509a6f75849b', '2022-03-21 02:57:05', '2022-03-21 02:57:05', 'nacos', '0:0:0:0:0:0:0:1', '', 'c59b1e25-6e0f-4ca8-94ce-e90d6c4fc7f6', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (539, 'transport.threadFactory.workerThreadSize', 'SEATA_GROUP', 'default', 'c21f969b5f03d33d43e04f8f136e7682', '2022-03-21 02:57:06', '2022-03-21 02:57:06', 'nacos', '0:0:0:0:0:0:0:1', '', 'c59b1e25-6e0f-4ca8-94ce-e90d6c4fc7f6', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (540, 'transport.shutdown.wait', 'SEATA_GROUP', '3', 'eccbc87e4b5ce2fe28308fd9f2a7baf3', '2022-03-21 02:57:06', '2022-03-21 02:57:06', 'nacos', '0:0:0:0:0:0:0:1', '', 'c59b1e25-6e0f-4ca8-94ce-e90d6c4fc7f6', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (541, 'transport.serialization', 'SEATA_GROUP', 'seata', 'b943081c423b9a5416a706524ee05d40', '2022-03-21 02:57:06', '2022-03-21 02:57:06', 'nacos', '0:0:0:0:0:0:0:1', '', 'c59b1e25-6e0f-4ca8-94ce-e90d6c4fc7f6', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (542, 'transport.compressor', 'SEATA_GROUP', 'none', '334c4a4c42fdb79d7ebc3e73b517e6f8', '2022-03-21 02:57:06', '2022-03-21 02:57:06', 'nacos', '0:0:0:0:0:0:0:1', '', 'c59b1e25-6e0f-4ca8-94ce-e90d6c4fc7f6', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (543, 'service.vgroupMapping.default_tx_group', 'SEATA_GROUP', 'default', 'c21f969b5f03d33d43e04f8f136e7682', '2022-03-21 02:57:06', '2022-03-21 02:57:06', 'nacos', '0:0:0:0:0:0:0:1', '', 'c59b1e25-6e0f-4ca8-94ce-e90d6c4fc7f6', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (544, 'service.default.grouplist', 'SEATA_GROUP', '127.0.0.1:8091', 'c32ce0d3e264525dcdada751f98143a3', '2022-03-21 02:57:07', '2022-03-21 02:57:07', 'nacos', '0:0:0:0:0:0:0:1', '', 'c59b1e25-6e0f-4ca8-94ce-e90d6c4fc7f6', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (545, 'service.enableDegrade', 'SEATA_GROUP', 'false', '68934a3e9455fa72420237eb05902327', '2022-03-21 02:57:07', '2022-03-21 02:57:07', 'nacos', '0:0:0:0:0:0:0:1', '', 'c59b1e25-6e0f-4ca8-94ce-e90d6c4fc7f6', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (546, 'service.disableGlobalTransaction', 'SEATA_GROUP', 'false', '68934a3e9455fa72420237eb05902327', '2022-03-21 02:57:07', '2022-03-21 02:57:07', 'nacos', '0:0:0:0:0:0:0:1', '', 'c59b1e25-6e0f-4ca8-94ce-e90d6c4fc7f6', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (547, 'client.rm.asyncCommitBufferLimit', 'SEATA_GROUP', '10000', 'b7a782741f667201b54880c925faec4b', '2022-03-21 02:57:07', '2022-03-21 02:57:07', 'nacos', '0:0:0:0:0:0:0:1', '', 'c59b1e25-6e0f-4ca8-94ce-e90d6c4fc7f6', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (548, 'client.rm.lock.retryInterval', 'SEATA_GROUP', '10', 'd3d9446802a44259755d38e6d163e820', '2022-03-21 02:57:08', '2022-03-21 02:57:08', 'nacos', '0:0:0:0:0:0:0:1', '', 'c59b1e25-6e0f-4ca8-94ce-e90d6c4fc7f6', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (549, 'client.rm.lock.retryTimes', 'SEATA_GROUP', '30', '34173cb38f07f89ddbebc2ac9128303f', '2022-03-21 02:57:08', '2022-03-21 02:57:08', 'nacos', '0:0:0:0:0:0:0:1', '', 'c59b1e25-6e0f-4ca8-94ce-e90d6c4fc7f6', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (550, 'client.rm.lock.retryPolicyBranchRollbackOnConflict', 'SEATA_GROUP', 'true', 'b326b5062b2f0e69046810717534cb09', '2022-03-21 02:57:08', '2022-03-21 02:57:08', 'nacos', '0:0:0:0:0:0:0:1', '', 'c59b1e25-6e0f-4ca8-94ce-e90d6c4fc7f6', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (551, 'client.rm.reportRetryCount', 'SEATA_GROUP', '5', 'e4da3b7fbbce2345d7772b0674a318d5', '2022-03-21 02:57:08', '2022-03-21 02:57:08', 'nacos', '0:0:0:0:0:0:0:1', '', 'c59b1e25-6e0f-4ca8-94ce-e90d6c4fc7f6', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (552, 'client.rm.tableMetaCheckEnable', 'SEATA_GROUP', 'false', '68934a3e9455fa72420237eb05902327', '2022-03-21 02:57:09', '2022-03-21 02:57:09', 'nacos', '0:0:0:0:0:0:0:1', '', 'c59b1e25-6e0f-4ca8-94ce-e90d6c4fc7f6', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (553, 'client.rm.tableMetaCheckerInterval', 'SEATA_GROUP', '60000', '2b4226dd7ed6eb2d419b881f3ae9c97c', '2022-03-21 02:57:09', '2022-03-21 02:57:09', 'nacos', '0:0:0:0:0:0:0:1', '', 'c59b1e25-6e0f-4ca8-94ce-e90d6c4fc7f6', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (554, 'client.rm.sqlParserType', 'SEATA_GROUP', 'druid', '3d650fb8a5df01600281d48c47c9fa60', '2022-03-21 02:57:09', '2022-03-21 02:57:11', 'nacos', '0:0:0:0:0:0:0:1', '', 'c59b1e25-6e0f-4ca8-94ce-e90d6c4fc7f6', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (555, 'client.rm.reportSuccessEnable', 'SEATA_GROUP', 'false', '68934a3e9455fa72420237eb05902327', '2022-03-21 02:57:10', '2022-03-21 02:57:10', 'nacos', '0:0:0:0:0:0:0:1', '', 'c59b1e25-6e0f-4ca8-94ce-e90d6c4fc7f6', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (556, 'client.rm.sagaBranchRegisterEnable', 'SEATA_GROUP', 'false', '68934a3e9455fa72420237eb05902327', '2022-03-21 02:57:10', '2022-03-21 02:57:10', 'nacos', '0:0:0:0:0:0:0:1', '', 'c59b1e25-6e0f-4ca8-94ce-e90d6c4fc7f6', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (557, 'client.rm.sagaJsonParser', 'SEATA_GROUP', 'fastjson', 'd00d3dbc0834f08411c7b6c4c39e9f00', '2022-03-21 02:57:10', '2022-03-21 02:57:10', 'nacos', '0:0:0:0:0:0:0:1', '', 'c59b1e25-6e0f-4ca8-94ce-e90d6c4fc7f6', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (558, 'client.rm.tccActionInterceptorOrder', 'SEATA_GROUP', '-2147482648', 'f056d9efa5dae3872f9da035c83bcde8', '2022-03-21 02:57:10', '2022-03-21 02:57:10', 'nacos', '0:0:0:0:0:0:0:1', '', 'c59b1e25-6e0f-4ca8-94ce-e90d6c4fc7f6', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (560, 'client.tm.commitRetryCount', 'SEATA_GROUP', '5', 'e4da3b7fbbce2345d7772b0674a318d5', '2022-03-21 02:57:11', '2022-03-21 02:57:11', 'nacos', '0:0:0:0:0:0:0:1', '', 'c59b1e25-6e0f-4ca8-94ce-e90d6c4fc7f6', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (561, 'client.tm.rollbackRetryCount', 'SEATA_GROUP', '5', 'e4da3b7fbbce2345d7772b0674a318d5', '2022-03-21 02:57:11', '2022-03-21 02:57:11', 'nacos', '0:0:0:0:0:0:0:1', '', 'c59b1e25-6e0f-4ca8-94ce-e90d6c4fc7f6', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (562, 'client.tm.defaultGlobalTransactionTimeout', 'SEATA_GROUP', '60000', '2b4226dd7ed6eb2d419b881f3ae9c97c', '2022-03-21 02:57:11', '2022-03-21 02:57:11', 'nacos', '0:0:0:0:0:0:0:1', '', 'c59b1e25-6e0f-4ca8-94ce-e90d6c4fc7f6', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (563, 'client.tm.degradeCheck', 'SEATA_GROUP', 'false', '68934a3e9455fa72420237eb05902327', '2022-03-21 02:57:12', '2022-03-21 02:57:12', 'nacos', '0:0:0:0:0:0:0:1', '', 'c59b1e25-6e0f-4ca8-94ce-e90d6c4fc7f6', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (564, 'client.tm.degradeCheckAllowTimes', 'SEATA_GROUP', '10', 'd3d9446802a44259755d38e6d163e820', '2022-03-21 02:57:12', '2022-03-21 02:57:12', 'nacos', '0:0:0:0:0:0:0:1', '', 'c59b1e25-6e0f-4ca8-94ce-e90d6c4fc7f6', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (565, 'client.tm.degradeCheckPeriod', 'SEATA_GROUP', '2000', '08f90c1a417155361a5c4b8d297e0d78', '2022-03-21 02:57:12', '2022-03-21 02:57:12', 'nacos', '0:0:0:0:0:0:0:1', '', 'c59b1e25-6e0f-4ca8-94ce-e90d6c4fc7f6', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (566, 'client.tm.interceptorOrder', 'SEATA_GROUP', '-2147482648', 'f056d9efa5dae3872f9da035c83bcde8', '2022-03-21 02:57:12', '2022-03-21 02:57:12', 'nacos', '0:0:0:0:0:0:0:1', '', 'c59b1e25-6e0f-4ca8-94ce-e90d6c4fc7f6', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (567, 'client.undo.dataValidation', 'SEATA_GROUP', 'true', 'b326b5062b2f0e69046810717534cb09', '2022-03-21 02:57:13', '2022-03-21 02:57:13', 'nacos', '0:0:0:0:0:0:0:1', '', 'c59b1e25-6e0f-4ca8-94ce-e90d6c4fc7f6', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (568, 'client.undo.logSerialization', 'SEATA_GROUP', 'jackson', 'b41779690b83f182acc67d6388c7bac9', '2022-03-21 02:57:13', '2022-03-21 02:57:13', 'nacos', '0:0:0:0:0:0:0:1', '', 'c59b1e25-6e0f-4ca8-94ce-e90d6c4fc7f6', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (569, 'client.undo.onlyCareUpdateColumns', 'SEATA_GROUP', 'true', 'b326b5062b2f0e69046810717534cb09', '2022-03-21 02:57:13', '2022-03-21 02:57:13', 'nacos', '0:0:0:0:0:0:0:1', '', 'c59b1e25-6e0f-4ca8-94ce-e90d6c4fc7f6', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (570, 'server.undo.logSaveDays', 'SEATA_GROUP', '7', '8f14e45fceea167a5a36dedd4bea2543', '2022-03-21 02:57:13', '2022-03-21 02:57:13', 'nacos', '0:0:0:0:0:0:0:1', '', 'c59b1e25-6e0f-4ca8-94ce-e90d6c4fc7f6', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (571, 'server.undo.logDeletePeriod', 'SEATA_GROUP', '86400000', 'f4c122804fe9076cb2710f55c3c6e346', '2022-03-21 02:57:14', '2022-03-21 02:57:14', 'nacos', '0:0:0:0:0:0:0:1', '', 'c59b1e25-6e0f-4ca8-94ce-e90d6c4fc7f6', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (572, 'client.undo.logTable', 'SEATA_GROUP', 'undo_log', '2842d229c24afe9e61437135e8306614', '2022-03-21 02:57:14', '2022-03-21 02:57:14', 'nacos', '0:0:0:0:0:0:0:1', '', 'c59b1e25-6e0f-4ca8-94ce-e90d6c4fc7f6', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (573, 'client.undo.compress.enable', 'SEATA_GROUP', 'true', 'b326b5062b2f0e69046810717534cb09', '2022-03-21 02:57:14', '2022-03-21 02:57:14', 'nacos', '0:0:0:0:0:0:0:1', '', 'c59b1e25-6e0f-4ca8-94ce-e90d6c4fc7f6', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (574, 'client.undo.compress.type', 'SEATA_GROUP', 'zip', 'adcdbd79a8d84175c229b192aadc02f2', '2022-03-21 02:57:14', '2022-03-21 02:57:14', 'nacos', '0:0:0:0:0:0:0:1', '', 'c59b1e25-6e0f-4ca8-94ce-e90d6c4fc7f6', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (575, 'client.undo.compress.threshold', 'SEATA_GROUP', '64k', 'bd44a6458bdbff0b5cac721ba361f035', '2022-03-21 02:57:15', '2022-03-21 02:57:15', 'nacos', '0:0:0:0:0:0:0:1', '', 'c59b1e25-6e0f-4ca8-94ce-e90d6c4fc7f6', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (576, 'tcc.fence.logTableName', 'SEATA_GROUP', 'tcc_fence_log', 'db229b665c7cfd5abc03971d4ed284c6', '2022-03-21 02:57:15', '2022-03-21 02:57:15', 'nacos', '0:0:0:0:0:0:0:1', '', 'c59b1e25-6e0f-4ca8-94ce-e90d6c4fc7f6', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (577, 'tcc.fence.cleanPeriod', 'SEATA_GROUP', '1h', '7c68645d71b803bf0ba2f22519f73e08', '2022-03-21 02:57:15', '2022-03-21 02:57:15', 'nacos', '0:0:0:0:0:0:0:1', '', 'c59b1e25-6e0f-4ca8-94ce-e90d6c4fc7f6', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (578, 'log.exceptionRate', 'SEATA_GROUP', '100', 'f899139df5e1059396431415e770c6dd', '2022-03-21 02:57:15', '2022-03-21 02:57:15', 'nacos', '0:0:0:0:0:0:0:1', '', 'c59b1e25-6e0f-4ca8-94ce-e90d6c4fc7f6', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (579, 'store.mode', 'SEATA_GROUP', 'nacos', '3c3e94100815e3fcbe948b1e5fb3037a', '2022-03-21 02:57:15', '2022-03-21 02:57:15', 'nacos', '0:0:0:0:0:0:0:1', '', 'c59b1e25-6e0f-4ca8-94ce-e90d6c4fc7f6', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (580, 'store.lock.mode', 'SEATA_GROUP', 'file', '8c7dd922ad47494fc02c388e12c00eac', '2022-03-21 02:57:15', '2022-03-21 02:57:15', 'nacos', '0:0:0:0:0:0:0:1', '', 'c59b1e25-6e0f-4ca8-94ce-e90d6c4fc7f6', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (581, 'store.session.mode', 'SEATA_GROUP', 'file', '8c7dd922ad47494fc02c388e12c00eac', '2022-03-21 02:57:16', '2022-03-21 02:57:16', 'nacos', '0:0:0:0:0:0:0:1', '', 'c59b1e25-6e0f-4ca8-94ce-e90d6c4fc7f6', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (582, 'store.file.dir', 'SEATA_GROUP', 'file_store/data', '6a8dec07c44c33a8a9247cba5710bbb2', '2022-03-21 02:57:16', '2022-03-21 02:57:16', 'nacos', '0:0:0:0:0:0:0:1', '', 'c59b1e25-6e0f-4ca8-94ce-e90d6c4fc7f6', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (583, 'store.file.maxBranchSessionSize', 'SEATA_GROUP', '16384', 'c76fe1d8e08462434d800487585be217', '2022-03-21 02:57:16', '2022-03-21 02:57:16', 'nacos', '0:0:0:0:0:0:0:1', '', 'c59b1e25-6e0f-4ca8-94ce-e90d6c4fc7f6', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (584, 'store.file.maxGlobalSessionSize', 'SEATA_GROUP', '512', '10a7cdd970fe135cf4f7bb55c0e3b59f', '2022-03-21 02:57:16', '2022-03-21 02:57:16', 'nacos', '0:0:0:0:0:0:0:1', '', 'c59b1e25-6e0f-4ca8-94ce-e90d6c4fc7f6', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (585, 'store.file.fileWriteBufferCacheSize', 'SEATA_GROUP', '16384', 'c76fe1d8e08462434d800487585be217', '2022-03-21 02:57:17', '2022-03-21 02:57:17', 'nacos', '0:0:0:0:0:0:0:1', '', 'c59b1e25-6e0f-4ca8-94ce-e90d6c4fc7f6', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (586, 'store.file.flushDiskMode', 'SEATA_GROUP', 'async', '0df93e34273b367bb63bad28c94c78d5', '2022-03-21 02:57:17', '2022-03-21 02:57:17', 'nacos', '0:0:0:0:0:0:0:1', '', 'c59b1e25-6e0f-4ca8-94ce-e90d6c4fc7f6', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (587, 'store.file.sessionReloadReadSize', 'SEATA_GROUP', '100', 'f899139df5e1059396431415e770c6dd', '2022-03-21 02:57:17', '2022-03-21 02:57:17', 'nacos', '0:0:0:0:0:0:0:1', '', 'c59b1e25-6e0f-4ca8-94ce-e90d6c4fc7f6', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (588, 'store.db.datasource', 'SEATA_GROUP', 'druid', '3d650fb8a5df01600281d48c47c9fa60', '2022-03-21 02:57:17', '2022-03-21 02:57:17', 'nacos', '0:0:0:0:0:0:0:1', '', 'c59b1e25-6e0f-4ca8-94ce-e90d6c4fc7f6', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (589, 'store.db.dbType', 'SEATA_GROUP', 'mysql', '81c3b080dad537de7e10e0987a4bf52e', '2022-03-21 02:57:18', '2022-03-21 02:57:18', 'nacos', '0:0:0:0:0:0:0:1', '', 'c59b1e25-6e0f-4ca8-94ce-e90d6c4fc7f6', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (590, 'store.db.driverClassName', 'SEATA_GROUP', 'com.mysql.cj.jdbc.Driver', '33763409bb7f4838bde4fae9540433e4', '2022-03-21 02:57:18', '2022-03-21 02:57:18', 'nacos', '0:0:0:0:0:0:0:1', '', 'c59b1e25-6e0f-4ca8-94ce-e90d6c4fc7f6', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (591, 'store.db.url', 'SEATA_GROUP', 'jdbc:mysql://127.0.0.1:3306/seata?useUnicode=true&rewriteBatchedStatements=true', '030ea5ff5c2ef043adf9826c70570b0b', '2022-03-21 02:57:18', '2022-03-21 02:57:18', 'nacos', '0:0:0:0:0:0:0:1', '', 'c59b1e25-6e0f-4ca8-94ce-e90d6c4fc7f6', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (592, 'store.db.user', 'SEATA_GROUP', 'root', '63a9f0ea7bb98050796b649e85481845', '2022-03-21 02:57:19', '2022-03-21 02:57:19', 'nacos', '0:0:0:0:0:0:0:1', '', 'c59b1e25-6e0f-4ca8-94ce-e90d6c4fc7f6', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (593, 'store.db.password', 'SEATA_GROUP', 'root', '63a9f0ea7bb98050796b649e85481845', '2022-03-21 02:57:19', '2022-03-21 02:57:19', 'nacos', '0:0:0:0:0:0:0:1', '', 'c59b1e25-6e0f-4ca8-94ce-e90d6c4fc7f6', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (594, 'store.db.minConn', 'SEATA_GROUP', '5', 'e4da3b7fbbce2345d7772b0674a318d5', '2022-03-21 02:57:19', '2022-03-21 02:57:19', 'nacos', '0:0:0:0:0:0:0:1', '', 'c59b1e25-6e0f-4ca8-94ce-e90d6c4fc7f6', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (595, 'store.db.maxConn', 'SEATA_GROUP', '30', '34173cb38f07f89ddbebc2ac9128303f', '2022-03-21 02:57:19', '2022-03-21 02:57:19', 'nacos', '0:0:0:0:0:0:0:1', '', 'c59b1e25-6e0f-4ca8-94ce-e90d6c4fc7f6', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (596, 'store.db.globalTable', 'SEATA_GROUP', 'global_table', '8b28fb6bb4c4f984df2709381f8eba2b', '2022-03-21 02:57:19', '2022-03-21 02:57:19', 'nacos', '0:0:0:0:0:0:0:1', '', 'c59b1e25-6e0f-4ca8-94ce-e90d6c4fc7f6', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (597, 'store.db.branchTable', 'SEATA_GROUP', 'branch_table', '54bcdac38cf62e103fe115bcf46a660c', '2022-03-21 02:57:20', '2022-03-21 02:57:20', 'nacos', '0:0:0:0:0:0:0:1', '', 'c59b1e25-6e0f-4ca8-94ce-e90d6c4fc7f6', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (598, 'store.db.distributedLockTable', 'SEATA_GROUP', 'distributed_lock', '26146b7a3a4907101617cb0f19bf613f', '2022-03-21 02:57:20', '2022-03-21 02:57:20', 'nacos', '0:0:0:0:0:0:0:1', '', 'c59b1e25-6e0f-4ca8-94ce-e90d6c4fc7f6', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (599, 'store.db.queryLimit', 'SEATA_GROUP', '100', 'f899139df5e1059396431415e770c6dd', '2022-03-21 02:57:20', '2022-03-21 02:57:20', 'nacos', '0:0:0:0:0:0:0:1', '', 'c59b1e25-6e0f-4ca8-94ce-e90d6c4fc7f6', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (600, 'store.db.lockTable', 'SEATA_GROUP', 'lock_table', '55e0cae3b6dc6696b768db90098b8f2f', '2022-03-21 02:57:21', '2022-03-21 02:57:21', 'nacos', '0:0:0:0:0:0:0:1', '', 'c59b1e25-6e0f-4ca8-94ce-e90d6c4fc7f6', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (601, 'store.db.maxWait', 'SEATA_GROUP', '5000', 'a35fe7f7fe8217b4369a0af4244d1fca', '2022-03-21 02:57:21', '2022-03-21 02:57:21', 'nacos', '0:0:0:0:0:0:0:1', '', 'c59b1e25-6e0f-4ca8-94ce-e90d6c4fc7f6', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (602, 'store.redis.mode', 'SEATA_GROUP', 'single', 'dd5c07036f2975ff4bce568b6511d3bc', '2022-03-21 02:57:21', '2022-03-21 02:57:21', 'nacos', '0:0:0:0:0:0:0:1', '', 'c59b1e25-6e0f-4ca8-94ce-e90d6c4fc7f6', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (603, 'store.redis.single.host', 'SEATA_GROUP', '127.0.0.1', 'f528764d624db129b32c21fbca0cb8d6', '2022-03-21 02:57:21', '2022-03-21 02:57:21', 'nacos', '0:0:0:0:0:0:0:1', '', 'c59b1e25-6e0f-4ca8-94ce-e90d6c4fc7f6', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (604, 'store.redis.single.port', 'SEATA_GROUP', '6379', '92c3b916311a5517d9290576e3ea37ad', '2022-03-21 02:57:22', '2022-03-21 02:57:22', 'nacos', '0:0:0:0:0:0:0:1', '', 'c59b1e25-6e0f-4ca8-94ce-e90d6c4fc7f6', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (605, 'store.redis.maxConn', 'SEATA_GROUP', '10', 'd3d9446802a44259755d38e6d163e820', '2022-03-21 02:57:22', '2022-03-21 02:57:22', 'nacos', '0:0:0:0:0:0:0:1', '', 'c59b1e25-6e0f-4ca8-94ce-e90d6c4fc7f6', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (606, 'store.redis.minConn', 'SEATA_GROUP', '1', 'c4ca4238a0b923820dcc509a6f75849b', '2022-03-21 02:57:22', '2022-03-21 02:57:22', 'nacos', '0:0:0:0:0:0:0:1', '', 'c59b1e25-6e0f-4ca8-94ce-e90d6c4fc7f6', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (607, 'store.redis.maxTotal', 'SEATA_GROUP', '100', 'f899139df5e1059396431415e770c6dd', '2022-03-21 02:57:22', '2022-03-21 02:57:22', 'nacos', '0:0:0:0:0:0:0:1', '', 'c59b1e25-6e0f-4ca8-94ce-e90d6c4fc7f6', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (608, 'store.redis.database', 'SEATA_GROUP', '0', 'cfcd208495d565ef66e7dff9f98764da', '2022-03-21 02:57:22', '2022-03-21 02:57:22', 'nacos', '0:0:0:0:0:0:0:1', '', 'c59b1e25-6e0f-4ca8-94ce-e90d6c4fc7f6', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (609, 'store.redis.queryLimit', 'SEATA_GROUP', '100', 'f899139df5e1059396431415e770c6dd', '2022-03-21 02:57:23', '2022-03-21 02:57:23', 'nacos', '0:0:0:0:0:0:0:1', '', 'c59b1e25-6e0f-4ca8-94ce-e90d6c4fc7f6', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (610, 'server.recovery.committingRetryPeriod', 'SEATA_GROUP', '1000', 'a9b7ba70783b617e9998dc4dd82eb3c5', '2022-03-21 02:57:23', '2022-03-21 02:57:23', 'nacos', '0:0:0:0:0:0:0:1', '', 'c59b1e25-6e0f-4ca8-94ce-e90d6c4fc7f6', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (611, 'server.recovery.asynCommittingRetryPeriod', 'SEATA_GROUP', '1000', 'a9b7ba70783b617e9998dc4dd82eb3c5', '2022-03-21 02:57:23', '2022-03-21 02:57:23', 'nacos', '0:0:0:0:0:0:0:1', '', 'c59b1e25-6e0f-4ca8-94ce-e90d6c4fc7f6', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (612, 'server.recovery.rollbackingRetryPeriod', 'SEATA_GROUP', '1000', 'a9b7ba70783b617e9998dc4dd82eb3c5', '2022-03-21 02:57:24', '2022-03-21 02:57:24', 'nacos', '0:0:0:0:0:0:0:1', '', 'c59b1e25-6e0f-4ca8-94ce-e90d6c4fc7f6', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (613, 'server.recovery.timeoutRetryPeriod', 'SEATA_GROUP', '1000', 'a9b7ba70783b617e9998dc4dd82eb3c5', '2022-03-21 02:57:24', '2022-03-21 02:57:24', 'nacos', '0:0:0:0:0:0:0:1', '', 'c59b1e25-6e0f-4ca8-94ce-e90d6c4fc7f6', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (614, 'server.maxCommitRetryTimeout', 'SEATA_GROUP', '-1', '6bb61e3b7bce0931da574d19d1d82c88', '2022-03-21 02:57:24', '2022-03-21 02:57:24', 'nacos', '0:0:0:0:0:0:0:1', '', 'c59b1e25-6e0f-4ca8-94ce-e90d6c4fc7f6', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (615, 'server.maxRollbackRetryTimeout', 'SEATA_GROUP', '-1', '6bb61e3b7bce0931da574d19d1d82c88', '2022-03-21 02:57:24', '2022-03-21 02:57:24', 'nacos', '0:0:0:0:0:0:0:1', '', 'c59b1e25-6e0f-4ca8-94ce-e90d6c4fc7f6', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (616, 'server.rollbackRetryTimeoutUnlockEnable', 'SEATA_GROUP', 'false', '68934a3e9455fa72420237eb05902327', '2022-03-21 02:57:25', '2022-03-21 02:57:25', 'nacos', '0:0:0:0:0:0:0:1', '', 'c59b1e25-6e0f-4ca8-94ce-e90d6c4fc7f6', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (617, 'server.distributedLockExpireTime', 'SEATA_GROUP', '10000', 'b7a782741f667201b54880c925faec4b', '2022-03-21 02:57:25', '2022-03-21 02:57:25', 'nacos', '0:0:0:0:0:0:0:1', '', 'c59b1e25-6e0f-4ca8-94ce-e90d6c4fc7f6', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (618, 'server.session.branchAsyncQueueSize', 'SEATA_GROUP', '5000', 'a35fe7f7fe8217b4369a0af4244d1fca', '2022-03-21 02:57:25', '2022-03-21 02:57:25', 'nacos', '0:0:0:0:0:0:0:1', '', 'c59b1e25-6e0f-4ca8-94ce-e90d6c4fc7f6', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (619, 'server.session.enableBranchAsyncRemove', 'SEATA_GROUP', 'true', 'b326b5062b2f0e69046810717534cb09', '2022-03-21 02:57:26', '2022-03-21 02:57:26', 'nacos', '0:0:0:0:0:0:0:1', '', 'c59b1e25-6e0f-4ca8-94ce-e90d6c4fc7f6', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (620, 'metrics.enabled', 'SEATA_GROUP', 'false', '68934a3e9455fa72420237eb05902327', '2022-03-21 02:57:26', '2022-03-21 02:57:26', 'nacos', '0:0:0:0:0:0:0:1', '', 'c59b1e25-6e0f-4ca8-94ce-e90d6c4fc7f6', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (621, 'metrics.registryType', 'SEATA_GROUP', 'compact', '7cf74ca49c304df8150205fc915cd465', '2022-03-21 02:57:26', '2022-03-21 02:57:26', 'nacos', '0:0:0:0:0:0:0:1', '', 'c59b1e25-6e0f-4ca8-94ce-e90d6c4fc7f6', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (622, 'metrics.exporterList', 'SEATA_GROUP', 'prometheus', 'e4f00638b8a10e6994e67af2f832d51c', '2022-03-21 02:57:27', '2022-03-21 02:57:27', 'nacos', '0:0:0:0:0:0:0:1', '', 'c59b1e25-6e0f-4ca8-94ce-e90d6c4fc7f6', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (623, 'metrics.exporterPrometheusPort', 'SEATA_GROUP', '9898', '7b9dc501afe4ee11c56a4831e20cee71', '2022-03-21 02:57:27', '2022-03-21 02:57:27', 'nacos', '0:0:0:0:0:0:0:1', '', 'c59b1e25-6e0f-4ca8-94ce-e90d6c4fc7f6', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (624, 'transport.type', 'SEATA_GROUP', 'TCP', 'b136ef5f6a01d816991fe3cf7a6ac763', '2022-03-21 03:05:03', '2022-03-21 08:22:30', 'nacos', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (625, 'transport.server', 'SEATA_GROUP', 'NIO', 'b6d9dfc0fb54277321cebc0fff55df2f', '2022-03-21 03:05:04', '2022-03-21 08:22:30', 'nacos', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (626, 'transport.heartbeat', 'SEATA_GROUP', 'true', 'b326b5062b2f0e69046810717534cb09', '2022-03-21 03:05:04', '2022-03-21 08:22:31', 'nacos', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (627, 'transport.enableTmClientBatchSendRequest', 'SEATA_GROUP', 'false', '68934a3e9455fa72420237eb05902327', '2022-03-21 03:05:04', '2022-03-21 08:22:31', 'nacos', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (628, 'transport.enableRmClientBatchSendRequest', 'SEATA_GROUP', 'true', 'b326b5062b2f0e69046810717534cb09', '2022-03-21 03:05:04', '2022-03-21 08:22:31', 'nacos', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (629, 'transport.enableTcServerBatchSendResponse', 'SEATA_GROUP', 'false', '68934a3e9455fa72420237eb05902327', '2022-03-21 03:05:05', '2022-03-21 08:22:31', 'nacos', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (630, 'transport.rpcRmRequestTimeout', 'SEATA_GROUP', '30000', '5ecc613150de01b7e6824594426f24f4', '2022-03-21 03:05:05', '2022-03-21 08:22:31', 'nacos', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (631, 'transport.rpcTmRequestTimeout', 'SEATA_GROUP', '30000', '5ecc613150de01b7e6824594426f24f4', '2022-03-21 03:05:05', '2022-03-21 08:22:31', 'nacos', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (632, 'transport.rpcTcRequestTimeout', 'SEATA_GROUP', '30000', '5ecc613150de01b7e6824594426f24f4', '2022-03-21 03:05:05', '2022-03-21 08:22:31', 'nacos', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (633, 'transport.threadFactory.bossThreadPrefix', 'SEATA_GROUP', 'NettyBoss', '0f8db59a3b7f2823f38a70c308361836', '2022-03-21 03:05:06', '2022-03-21 08:22:32', 'nacos', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (634, 'transport.threadFactory.workerThreadPrefix', 'SEATA_GROUP', 'NettyServerNIOWorker', 'a78ec7ef5d1631754c4e72ae8a3e9205', '2022-03-21 03:05:06', '2022-03-21 08:22:32', 'nacos', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (635, 'transport.threadFactory.serverExecutorThreadPrefix', 'SEATA_GROUP', 'NettyServerBizHandler', '11a36309f3d9df84fa8b59cf071fa2da', '2022-03-21 03:05:07', '2022-03-21 08:22:32', 'nacos', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (636, 'transport.threadFactory.shareBossWorker', 'SEATA_GROUP', 'false', '68934a3e9455fa72420237eb05902327', '2022-03-21 03:05:07', '2022-03-21 08:22:32', 'nacos', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (637, 'transport.threadFactory.clientSelectorThreadPrefix', 'SEATA_GROUP', 'NettyClientSelector', 'cd7ec5a06541e75f5a7913752322c3af', '2022-03-21 03:05:08', '2022-03-21 08:22:32', 'nacos', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (638, 'transport.threadFactory.clientSelectorThreadSize', 'SEATA_GROUP', '1', 'c4ca4238a0b923820dcc509a6f75849b', '2022-03-21 03:05:08', '2022-03-21 08:22:33', 'nacos', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (639, 'transport.threadFactory.clientWorkerThreadPrefix', 'SEATA_GROUP', 'NettyClientWorkerThread', '61cf4e69a56354cf72f46dc86414a57e', '2022-03-21 03:05:08', '2022-03-21 08:22:33', 'nacos', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (640, 'transport.threadFactory.bossThreadSize', 'SEATA_GROUP', '1', 'c4ca4238a0b923820dcc509a6f75849b', '2022-03-21 03:05:09', '2022-03-21 08:22:33', 'nacos', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (641, 'transport.threadFactory.workerThreadSize', 'SEATA_GROUP', 'default', 'c21f969b5f03d33d43e04f8f136e7682', '2022-03-21 03:05:09', '2022-03-21 08:22:33', 'nacos', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (642, 'transport.shutdown.wait', 'SEATA_GROUP', '3', 'eccbc87e4b5ce2fe28308fd9f2a7baf3', '2022-03-21 03:05:09', '2022-03-21 08:22:33', 'nacos', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (643, 'transport.serialization', 'SEATA_GROUP', 'seata', 'b943081c423b9a5416a706524ee05d40', '2022-03-21 03:05:09', '2022-03-21 08:22:33', 'nacos', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (644, 'transport.compressor', 'SEATA_GROUP', 'none', '334c4a4c42fdb79d7ebc3e73b517e6f8', '2022-03-21 03:05:10', '2022-03-21 08:22:34', 'nacos', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (645, 'service.vgroupMapping.default_tx_group', 'SEATA_GROUP', 'default', 'c21f969b5f03d33d43e04f8f136e7682', '2022-03-21 03:05:10', '2022-03-21 03:05:10', 'nacos', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (646, 'service.default.grouplist', 'SEATA_GROUP', '127.0.0.1:8091', 'c32ce0d3e264525dcdada751f98143a3', '2022-03-21 03:05:10', '2022-03-21 08:22:34', 'nacos', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (647, 'service.enableDegrade', 'SEATA_GROUP', 'false', '68934a3e9455fa72420237eb05902327', '2022-03-21 03:05:10', '2022-03-21 08:22:34', 'nacos', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (648, 'service.disableGlobalTransaction', 'SEATA_GROUP', 'false', '68934a3e9455fa72420237eb05902327', '2022-03-21 03:05:11', '2022-03-21 08:22:34', 'nacos', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (649, 'client.rm.asyncCommitBufferLimit', 'SEATA_GROUP', '10000', 'b7a782741f667201b54880c925faec4b', '2022-03-21 03:05:11', '2022-03-21 08:22:34', 'nacos', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (650, 'client.rm.lock.retryInterval', 'SEATA_GROUP', '10', 'd3d9446802a44259755d38e6d163e820', '2022-03-21 03:05:11', '2022-03-21 08:22:34', 'nacos', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (651, 'client.rm.lock.retryTimes', 'SEATA_GROUP', '30', '34173cb38f07f89ddbebc2ac9128303f', '2022-03-21 03:05:11', '2022-03-21 08:22:34', 'nacos', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (652, 'client.rm.lock.retryPolicyBranchRollbackOnConflict', 'SEATA_GROUP', 'true', 'b326b5062b2f0e69046810717534cb09', '2022-03-21 03:05:12', '2022-03-21 08:22:35', 'nacos', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (653, 'client.rm.reportRetryCount', 'SEATA_GROUP', '5', 'e4da3b7fbbce2345d7772b0674a318d5', '2022-03-21 03:05:12', '2022-03-21 08:22:35', 'nacos', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (654, 'client.rm.tableMetaCheckEnable', 'SEATA_GROUP', 'false', '68934a3e9455fa72420237eb05902327', '2022-03-21 03:05:12', '2022-03-21 08:22:35', 'nacos', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (655, 'client.rm.tableMetaCheckerInterval', 'SEATA_GROUP', '60000', '2b4226dd7ed6eb2d419b881f3ae9c97c', '2022-03-21 03:05:12', '2022-03-21 08:22:35', 'nacos', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (656, 'client.rm.sqlParserType', 'SEATA_GROUP', 'druid', '3d650fb8a5df01600281d48c47c9fa60', '2022-03-21 03:05:13', '2022-03-21 08:22:36', 'nacos', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (657, 'client.rm.reportSuccessEnable', 'SEATA_GROUP', 'false', '68934a3e9455fa72420237eb05902327', '2022-03-21 03:05:13', '2022-03-21 08:22:35', 'nacos', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (658, 'client.rm.sagaBranchRegisterEnable', 'SEATA_GROUP', 'false', '68934a3e9455fa72420237eb05902327', '2022-03-21 03:05:13', '2022-03-21 08:22:36', 'nacos', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (659, 'client.rm.sagaJsonParser', 'SEATA_GROUP', 'fastjson', 'd00d3dbc0834f08411c7b6c4c39e9f00', '2022-03-21 03:05:13', '2022-03-21 08:22:36', 'nacos', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (660, 'client.rm.tccActionInterceptorOrder', 'SEATA_GROUP', '-2147482648', 'f056d9efa5dae3872f9da035c83bcde8', '2022-03-21 03:05:14', '2022-03-21 08:22:36', 'nacos', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (662, 'client.tm.commitRetryCount', 'SEATA_GROUP', '5', 'e4da3b7fbbce2345d7772b0674a318d5', '2022-03-21 03:05:14', '2022-03-21 08:22:36', 'nacos', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (663, 'client.tm.rollbackRetryCount', 'SEATA_GROUP', '5', 'e4da3b7fbbce2345d7772b0674a318d5', '2022-03-21 03:05:14', '2022-03-21 08:22:36', 'nacos', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (664, 'client.tm.defaultGlobalTransactionTimeout', 'SEATA_GROUP', '60000', '2b4226dd7ed6eb2d419b881f3ae9c97c', '2022-03-21 03:05:15', '2022-03-21 08:22:37', 'nacos', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (665, 'client.tm.degradeCheck', 'SEATA_GROUP', 'false', '68934a3e9455fa72420237eb05902327', '2022-03-21 03:05:15', '2022-03-21 08:22:37', 'nacos', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (666, 'client.tm.degradeCheckAllowTimes', 'SEATA_GROUP', '10', 'd3d9446802a44259755d38e6d163e820', '2022-03-21 03:05:15', '2022-03-21 08:22:37', 'nacos', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (667, 'client.tm.degradeCheckPeriod', 'SEATA_GROUP', '2000', '08f90c1a417155361a5c4b8d297e0d78', '2022-03-21 03:05:15', '2022-03-21 08:22:37', 'nacos', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (668, 'client.tm.interceptorOrder', 'SEATA_GROUP', '-2147482648', 'f056d9efa5dae3872f9da035c83bcde8', '2022-03-21 03:05:16', '2022-03-21 08:22:37', 'nacos', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (669, 'client.undo.dataValidation', 'SEATA_GROUP', 'true', 'b326b5062b2f0e69046810717534cb09', '2022-03-21 03:05:16', '2022-03-21 08:22:37', 'nacos', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (670, 'client.undo.logSerialization', 'SEATA_GROUP', 'jackson', 'b41779690b83f182acc67d6388c7bac9', '2022-03-21 03:05:16', '2022-03-21 08:22:38', 'nacos', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (671, 'client.undo.onlyCareUpdateColumns', 'SEATA_GROUP', 'true', 'b326b5062b2f0e69046810717534cb09', '2022-03-21 03:05:16', '2022-03-21 08:22:38', 'nacos', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (672, 'server.undo.logSaveDays', 'SEATA_GROUP', '7', '8f14e45fceea167a5a36dedd4bea2543', '2022-03-21 03:05:17', '2022-03-21 08:22:38', 'nacos', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (673, 'server.undo.logDeletePeriod', 'SEATA_GROUP', '86400000', 'f4c122804fe9076cb2710f55c3c6e346', '2022-03-21 03:05:17', '2022-03-21 08:22:38', 'nacos', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (674, 'client.undo.logTable', 'SEATA_GROUP', 'undo_log', '2842d229c24afe9e61437135e8306614', '2022-03-21 03:05:17', '2022-03-21 08:22:38', 'nacos', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (675, 'client.undo.compress.enable', 'SEATA_GROUP', 'true', 'b326b5062b2f0e69046810717534cb09', '2022-03-21 03:05:17', '2022-03-21 08:22:38', 'nacos', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (676, 'client.undo.compress.type', 'SEATA_GROUP', 'zip', 'adcdbd79a8d84175c229b192aadc02f2', '2022-03-21 03:05:17', '2022-03-21 08:22:38', 'nacos', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (677, 'client.undo.compress.threshold', 'SEATA_GROUP', '64k', 'bd44a6458bdbff0b5cac721ba361f035', '2022-03-21 03:05:18', '2022-03-21 08:22:38', 'nacos', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (678, 'tcc.fence.logTableName', 'SEATA_GROUP', 'tcc_fence_log', 'db229b665c7cfd5abc03971d4ed284c6', '2022-03-21 03:05:18', '2022-03-21 08:22:39', 'nacos', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (679, 'tcc.fence.cleanPeriod', 'SEATA_GROUP', '1h', '7c68645d71b803bf0ba2f22519f73e08', '2022-03-21 03:05:18', '2022-03-21 08:22:39', 'nacos', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (680, 'log.exceptionRate', 'SEATA_GROUP', '100', 'f899139df5e1059396431415e770c6dd', '2022-03-21 03:05:18', '2022-03-21 08:22:39', 'nacos', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (681, 'store.mode', 'SEATA_GROUP', 'nacos', '3c3e94100815e3fcbe948b1e5fb3037a', '2022-03-21 03:05:18', '2022-03-21 08:22:39', 'nacos', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (682, 'store.lock.mode', 'SEATA_GROUP', 'file', '8c7dd922ad47494fc02c388e12c00eac', '2022-03-21 03:05:19', '2022-03-21 08:22:39', 'nacos', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (683, 'store.session.mode', 'SEATA_GROUP', 'file', '8c7dd922ad47494fc02c388e12c00eac', '2022-03-21 03:05:19', '2022-03-21 08:22:39', 'nacos', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (684, 'store.file.dir', 'SEATA_GROUP', 'file_store/data', '6a8dec07c44c33a8a9247cba5710bbb2', '2022-03-21 03:05:19', '2022-03-21 08:22:39', 'nacos', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (685, 'store.file.maxBranchSessionSize', 'SEATA_GROUP', '16384', 'c76fe1d8e08462434d800487585be217', '2022-03-21 03:05:19', '2022-03-21 08:22:39', 'nacos', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (686, 'store.file.maxGlobalSessionSize', 'SEATA_GROUP', '512', '10a7cdd970fe135cf4f7bb55c0e3b59f', '2022-03-21 03:05:20', '2022-03-21 08:22:39', 'nacos', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (687, 'store.file.fileWriteBufferCacheSize', 'SEATA_GROUP', '16384', 'c76fe1d8e08462434d800487585be217', '2022-03-21 03:05:20', '2022-03-21 08:22:40', 'nacos', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (688, 'store.file.flushDiskMode', 'SEATA_GROUP', 'async', '0df93e34273b367bb63bad28c94c78d5', '2022-03-21 03:05:20', '2022-03-21 08:22:40', 'nacos', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (689, 'store.file.sessionReloadReadSize', 'SEATA_GROUP', '100', 'f899139df5e1059396431415e770c6dd', '2022-03-21 03:05:20', '2022-03-21 08:22:40', 'nacos', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (690, 'store.db.datasource', 'SEATA_GROUP', 'druid', '3d650fb8a5df01600281d48c47c9fa60', '2022-03-21 03:05:20', '2022-03-21 08:22:40', 'nacos', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (691, 'store.db.dbType', 'SEATA_GROUP', 'mysql', '81c3b080dad537de7e10e0987a4bf52e', '2022-03-21 03:05:21', '2022-03-21 08:22:40', 'nacos', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (692, 'store.db.driverClassName', 'SEATA_GROUP', 'com.mysql.cj.jdbc.Driver', '33763409bb7f4838bde4fae9540433e4', '2022-03-21 03:05:21', '2022-03-21 08:22:40', 'nacos', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (693, 'store.db.url', 'SEATA_GROUP', 'jdbc:mysql://127.0.0.1:3306/seata?useUnicode=true&rewriteBatchedStatements=true', '030ea5ff5c2ef043adf9826c70570b0b', '2022-03-21 03:05:21', '2022-03-21 08:22:41', 'nacos', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (694, 'store.db.user', 'SEATA_GROUP', 'root', '63a9f0ea7bb98050796b649e85481845', '2022-03-21 03:05:22', '2022-03-21 08:22:41', 'nacos', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (695, 'store.db.password', 'SEATA_GROUP', 'root', '63a9f0ea7bb98050796b649e85481845', '2022-03-21 03:05:22', '2022-03-21 08:22:41', 'nacos', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (696, 'store.db.minConn', 'SEATA_GROUP', '5', 'e4da3b7fbbce2345d7772b0674a318d5', '2022-03-21 03:05:22', '2022-03-21 08:22:41', 'nacos', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (697, 'store.db.maxConn', 'SEATA_GROUP', '30', '34173cb38f07f89ddbebc2ac9128303f', '2022-03-21 03:05:22', '2022-03-21 08:22:41', 'nacos', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (698, 'store.db.globalTable', 'SEATA_GROUP', 'global_table', '8b28fb6bb4c4f984df2709381f8eba2b', '2022-03-21 03:05:22', '2022-03-21 08:22:41', 'nacos', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (699, 'store.db.branchTable', 'SEATA_GROUP', 'branch_table', '54bcdac38cf62e103fe115bcf46a660c', '2022-03-21 03:05:23', '2022-03-21 08:22:41', 'nacos', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (700, 'store.db.distributedLockTable', 'SEATA_GROUP', 'distributed_lock', '26146b7a3a4907101617cb0f19bf613f', '2022-03-21 03:05:23', '2022-03-21 08:22:41', 'nacos', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (701, 'store.db.queryLimit', 'SEATA_GROUP', '100', 'f899139df5e1059396431415e770c6dd', '2022-03-21 03:05:23', '2022-03-21 08:22:41', 'nacos', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (702, 'store.db.lockTable', 'SEATA_GROUP', 'lock_table', '55e0cae3b6dc6696b768db90098b8f2f', '2022-03-21 03:05:23', '2022-03-21 08:22:42', 'nacos', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (703, 'store.db.maxWait', 'SEATA_GROUP', '5000', 'a35fe7f7fe8217b4369a0af4244d1fca', '2022-03-21 03:05:23', '2022-03-21 08:22:42', 'nacos', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (704, 'store.redis.mode', 'SEATA_GROUP', 'single', 'dd5c07036f2975ff4bce568b6511d3bc', '2022-03-21 03:05:24', '2022-03-21 08:22:42', 'nacos', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (705, 'store.redis.single.host', 'SEATA_GROUP', '127.0.0.1', 'f528764d624db129b32c21fbca0cb8d6', '2022-03-21 03:05:24', '2022-03-21 08:22:42', 'nacos', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (706, 'store.redis.single.port', 'SEATA_GROUP', '6379', '92c3b916311a5517d9290576e3ea37ad', '2022-03-21 03:05:24', '2022-03-21 08:22:42', 'nacos', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (707, 'store.redis.maxConn', 'SEATA_GROUP', '10', 'd3d9446802a44259755d38e6d163e820', '2022-03-21 03:05:24', '2022-03-21 08:22:42', 'nacos', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (708, 'store.redis.minConn', 'SEATA_GROUP', '1', 'c4ca4238a0b923820dcc509a6f75849b', '2022-03-21 03:05:24', '2022-03-21 08:22:42', 'nacos', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (709, 'store.redis.maxTotal', 'SEATA_GROUP', '100', 'f899139df5e1059396431415e770c6dd', '2022-03-21 03:05:25', '2022-03-21 08:22:42', 'nacos', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (710, 'store.redis.database', 'SEATA_GROUP', '0', 'cfcd208495d565ef66e7dff9f98764da', '2022-03-21 03:05:25', '2022-03-21 08:22:42', 'nacos', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (711, 'store.redis.queryLimit', 'SEATA_GROUP', '100', 'f899139df5e1059396431415e770c6dd', '2022-03-21 03:05:25', '2022-03-21 08:22:43', 'nacos', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (712, 'server.recovery.committingRetryPeriod', 'SEATA_GROUP', '1000', 'a9b7ba70783b617e9998dc4dd82eb3c5', '2022-03-21 03:05:25', '2022-03-21 08:22:43', 'nacos', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (713, 'server.recovery.asynCommittingRetryPeriod', 'SEATA_GROUP', '1000', 'a9b7ba70783b617e9998dc4dd82eb3c5', '2022-03-21 03:05:26', '2022-03-21 08:22:43', 'nacos', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (714, 'server.recovery.rollbackingRetryPeriod', 'SEATA_GROUP', '1000', 'a9b7ba70783b617e9998dc4dd82eb3c5', '2022-03-21 03:05:26', '2022-03-21 08:22:43', 'nacos', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (715, 'server.recovery.timeoutRetryPeriod', 'SEATA_GROUP', '1000', 'a9b7ba70783b617e9998dc4dd82eb3c5', '2022-03-21 03:05:26', '2022-03-21 08:22:43', 'nacos', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (716, 'server.maxCommitRetryTimeout', 'SEATA_GROUP', '-1', '6bb61e3b7bce0931da574d19d1d82c88', '2022-03-21 03:05:26', '2022-03-21 08:22:43', 'nacos', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (717, 'server.maxRollbackRetryTimeout', 'SEATA_GROUP', '-1', '6bb61e3b7bce0931da574d19d1d82c88', '2022-03-21 03:05:27', '2022-03-21 08:22:44', 'nacos', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (718, 'server.rollbackRetryTimeoutUnlockEnable', 'SEATA_GROUP', 'false', '68934a3e9455fa72420237eb05902327', '2022-03-21 03:05:27', '2022-03-21 08:22:44', 'nacos', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (719, 'server.distributedLockExpireTime', 'SEATA_GROUP', '10000', 'b7a782741f667201b54880c925faec4b', '2022-03-21 03:05:27', '2022-03-21 08:22:44', 'nacos', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (720, 'server.session.branchAsyncQueueSize', 'SEATA_GROUP', '5000', 'a35fe7f7fe8217b4369a0af4244d1fca', '2022-03-21 03:05:28', '2022-03-21 08:22:44', 'nacos', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (721, 'server.session.enableBranchAsyncRemove', 'SEATA_GROUP', 'true', 'b326b5062b2f0e69046810717534cb09', '2022-03-21 03:05:28', '2022-03-21 08:22:44', 'nacos', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (722, 'metrics.enabled', 'SEATA_GROUP', 'false', '68934a3e9455fa72420237eb05902327', '2022-03-21 03:05:28', '2022-03-21 08:22:44', 'nacos', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (723, 'metrics.registryType', 'SEATA_GROUP', 'compact', '7cf74ca49c304df8150205fc915cd465', '2022-03-21 03:05:28', '2022-03-21 08:22:44', 'nacos', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (724, 'metrics.exporterList', 'SEATA_GROUP', 'prometheus', 'e4f00638b8a10e6994e67af2f832d51c', '2022-03-21 03:05:28', '2022-03-21 08:22:45', 'nacos', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (725, 'metrics.exporterPrometheusPort', 'SEATA_GROUP', '9898', '7b9dc501afe4ee11c56a4831e20cee71', '2022-03-21 03:05:29', '2022-03-21 08:22:45', 'nacos', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (747, 'service.vgroupMapping.my_test_tx_group', 'SEATA_GROUP', 'default', 'c21f969b5f03d33d43e04f8f136e7682', '2022-03-21 03:06:55', '2022-03-21 08:22:34', 'nacos', '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
INSERT INTO `config_info` VALUES (829, 'registry.preferred-networks', 'SEATA_GROUP', '127.0.0.1', 'f528764d624db129b32c21fbca0cb8d6', '2022-03-21 06:22:55', '2022-03-21 06:22:55', NULL, '0:0:0:0:0:0:0:1', '', 'seata', NULL, NULL, NULL, 'text', NULL, '');
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
) ENGINE=InnoDB AUTO_INCREMENT=1035 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin COMMENT='多租户改造';

-- ----------------------------
-- Records of his_config_info
-- ----------------------------
BEGIN;
INSERT INTO `his_config_info` VALUES (624, 933, 'transport.type', 'SEATA_GROUP', '', 'TCP', 'b136ef5f6a01d816991fe3cf7a6ac763', '2010-05-05 00:00:00', '2022-03-21 08:22:30', 'nacos', '0:0:0:0:0:0:0:1', 'U', 'seata', '');
INSERT INTO `his_config_info` VALUES (625, 934, 'transport.server', 'SEATA_GROUP', '', 'NIO', 'b6d9dfc0fb54277321cebc0fff55df2f', '2010-05-05 00:00:00', '2022-03-21 08:22:30', 'nacos', '0:0:0:0:0:0:0:1', 'U', 'seata', '');
INSERT INTO `his_config_info` VALUES (626, 935, 'transport.heartbeat', 'SEATA_GROUP', '', 'true', 'b326b5062b2f0e69046810717534cb09', '2010-05-05 00:00:00', '2022-03-21 08:22:31', 'nacos', '0:0:0:0:0:0:0:1', 'U', 'seata', '');
INSERT INTO `his_config_info` VALUES (627, 936, 'transport.enableTmClientBatchSendRequest', 'SEATA_GROUP', '', 'false', '68934a3e9455fa72420237eb05902327', '2010-05-05 00:00:00', '2022-03-21 08:22:31', 'nacos', '0:0:0:0:0:0:0:1', 'U', 'seata', '');
INSERT INTO `his_config_info` VALUES (628, 937, 'transport.enableRmClientBatchSendRequest', 'SEATA_GROUP', '', 'true', 'b326b5062b2f0e69046810717534cb09', '2010-05-05 00:00:00', '2022-03-21 08:22:31', 'nacos', '0:0:0:0:0:0:0:1', 'U', 'seata', '');
INSERT INTO `his_config_info` VALUES (629, 938, 'transport.enableTcServerBatchSendResponse', 'SEATA_GROUP', '', 'false', '68934a3e9455fa72420237eb05902327', '2010-05-05 00:00:00', '2022-03-21 08:22:31', 'nacos', '0:0:0:0:0:0:0:1', 'U', 'seata', '');
INSERT INTO `his_config_info` VALUES (630, 939, 'transport.rpcRmRequestTimeout', 'SEATA_GROUP', '', '30000', '5ecc613150de01b7e6824594426f24f4', '2010-05-05 00:00:00', '2022-03-21 08:22:31', 'nacos', '0:0:0:0:0:0:0:1', 'U', 'seata', '');
INSERT INTO `his_config_info` VALUES (631, 940, 'transport.rpcTmRequestTimeout', 'SEATA_GROUP', '', '30000', '5ecc613150de01b7e6824594426f24f4', '2010-05-05 00:00:00', '2022-03-21 08:22:31', 'nacos', '0:0:0:0:0:0:0:1', 'U', 'seata', '');
INSERT INTO `his_config_info` VALUES (632, 941, 'transport.rpcTcRequestTimeout', 'SEATA_GROUP', '', '30000', '5ecc613150de01b7e6824594426f24f4', '2010-05-05 00:00:00', '2022-03-21 08:22:31', 'nacos', '0:0:0:0:0:0:0:1', 'U', 'seata', '');
INSERT INTO `his_config_info` VALUES (633, 942, 'transport.threadFactory.bossThreadPrefix', 'SEATA_GROUP', '', 'NettyBoss', '0f8db59a3b7f2823f38a70c308361836', '2010-05-05 00:00:00', '2022-03-21 08:22:32', 'nacos', '0:0:0:0:0:0:0:1', 'U', 'seata', '');
INSERT INTO `his_config_info` VALUES (634, 943, 'transport.threadFactory.workerThreadPrefix', 'SEATA_GROUP', '', 'NettyServerNIOWorker', 'a78ec7ef5d1631754c4e72ae8a3e9205', '2010-05-05 00:00:00', '2022-03-21 08:22:32', 'nacos', '0:0:0:0:0:0:0:1', 'U', 'seata', '');
INSERT INTO `his_config_info` VALUES (635, 944, 'transport.threadFactory.serverExecutorThreadPrefix', 'SEATA_GROUP', '', 'NettyServerBizHandler', '11a36309f3d9df84fa8b59cf071fa2da', '2010-05-05 00:00:00', '2022-03-21 08:22:32', 'nacos', '0:0:0:0:0:0:0:1', 'U', 'seata', '');
INSERT INTO `his_config_info` VALUES (636, 945, 'transport.threadFactory.shareBossWorker', 'SEATA_GROUP', '', 'false', '68934a3e9455fa72420237eb05902327', '2010-05-05 00:00:00', '2022-03-21 08:22:32', 'nacos', '0:0:0:0:0:0:0:1', 'U', 'seata', '');
INSERT INTO `his_config_info` VALUES (637, 946, 'transport.threadFactory.clientSelectorThreadPrefix', 'SEATA_GROUP', '', 'NettyClientSelector', 'cd7ec5a06541e75f5a7913752322c3af', '2010-05-05 00:00:00', '2022-03-21 08:22:32', 'nacos', '0:0:0:0:0:0:0:1', 'U', 'seata', '');
INSERT INTO `his_config_info` VALUES (638, 947, 'transport.threadFactory.clientSelectorThreadSize', 'SEATA_GROUP', '', '1', 'c4ca4238a0b923820dcc509a6f75849b', '2010-05-05 00:00:00', '2022-03-21 08:22:33', 'nacos', '0:0:0:0:0:0:0:1', 'U', 'seata', '');
INSERT INTO `his_config_info` VALUES (639, 948, 'transport.threadFactory.clientWorkerThreadPrefix', 'SEATA_GROUP', '', 'NettyClientWorkerThread', '61cf4e69a56354cf72f46dc86414a57e', '2010-05-05 00:00:00', '2022-03-21 08:22:33', 'nacos', '0:0:0:0:0:0:0:1', 'U', 'seata', '');
INSERT INTO `his_config_info` VALUES (640, 949, 'transport.threadFactory.bossThreadSize', 'SEATA_GROUP', '', '1', 'c4ca4238a0b923820dcc509a6f75849b', '2010-05-05 00:00:00', '2022-03-21 08:22:33', 'nacos', '0:0:0:0:0:0:0:1', 'U', 'seata', '');
INSERT INTO `his_config_info` VALUES (641, 950, 'transport.threadFactory.workerThreadSize', 'SEATA_GROUP', '', 'default', 'c21f969b5f03d33d43e04f8f136e7682', '2010-05-05 00:00:00', '2022-03-21 08:22:33', 'nacos', '0:0:0:0:0:0:0:1', 'U', 'seata', '');
INSERT INTO `his_config_info` VALUES (642, 951, 'transport.shutdown.wait', 'SEATA_GROUP', '', '3', 'eccbc87e4b5ce2fe28308fd9f2a7baf3', '2010-05-05 00:00:00', '2022-03-21 08:22:33', 'nacos', '0:0:0:0:0:0:0:1', 'U', 'seata', '');
INSERT INTO `his_config_info` VALUES (643, 952, 'transport.serialization', 'SEATA_GROUP', '', 'seata', 'b943081c423b9a5416a706524ee05d40', '2010-05-05 00:00:00', '2022-03-21 08:22:33', 'nacos', '0:0:0:0:0:0:0:1', 'U', 'seata', '');
INSERT INTO `his_config_info` VALUES (644, 953, 'transport.compressor', 'SEATA_GROUP', '', 'none', '334c4a4c42fdb79d7ebc3e73b517e6f8', '2010-05-05 00:00:00', '2022-03-21 08:22:34', 'nacos', '0:0:0:0:0:0:0:1', 'U', 'seata', '');
INSERT INTO `his_config_info` VALUES (747, 954, 'service.vgroupMapping.my_test_tx_group', 'SEATA_GROUP', '', 'default', 'c21f969b5f03d33d43e04f8f136e7682', '2010-05-05 00:00:00', '2022-03-21 08:22:34', 'nacos', '0:0:0:0:0:0:0:1', 'U', 'seata', '');
INSERT INTO `his_config_info` VALUES (646, 955, 'service.default.grouplist', 'SEATA_GROUP', '', '127.0.0.1:8091', 'c32ce0d3e264525dcdada751f98143a3', '2010-05-05 00:00:00', '2022-03-21 08:22:34', 'nacos', '0:0:0:0:0:0:0:1', 'U', 'seata', '');
INSERT INTO `his_config_info` VALUES (647, 956, 'service.enableDegrade', 'SEATA_GROUP', '', 'false', '68934a3e9455fa72420237eb05902327', '2010-05-05 00:00:00', '2022-03-21 08:22:34', 'nacos', '0:0:0:0:0:0:0:1', 'U', 'seata', '');
INSERT INTO `his_config_info` VALUES (648, 957, 'service.disableGlobalTransaction', 'SEATA_GROUP', '', 'false', '68934a3e9455fa72420237eb05902327', '2010-05-05 00:00:00', '2022-03-21 08:22:34', 'nacos', '0:0:0:0:0:0:0:1', 'U', 'seata', '');
INSERT INTO `his_config_info` VALUES (649, 958, 'client.rm.asyncCommitBufferLimit', 'SEATA_GROUP', '', '10000', 'b7a782741f667201b54880c925faec4b', '2010-05-05 00:00:00', '2022-03-21 08:22:34', 'nacos', '0:0:0:0:0:0:0:1', 'U', 'seata', '');
INSERT INTO `his_config_info` VALUES (650, 959, 'client.rm.lock.retryInterval', 'SEATA_GROUP', '', '10', 'd3d9446802a44259755d38e6d163e820', '2010-05-05 00:00:00', '2022-03-21 08:22:34', 'nacos', '0:0:0:0:0:0:0:1', 'U', 'seata', '');
INSERT INTO `his_config_info` VALUES (651, 960, 'client.rm.lock.retryTimes', 'SEATA_GROUP', '', '30', '34173cb38f07f89ddbebc2ac9128303f', '2010-05-05 00:00:00', '2022-03-21 08:22:34', 'nacos', '0:0:0:0:0:0:0:1', 'U', 'seata', '');
INSERT INTO `his_config_info` VALUES (652, 961, 'client.rm.lock.retryPolicyBranchRollbackOnConflict', 'SEATA_GROUP', '', 'true', 'b326b5062b2f0e69046810717534cb09', '2010-05-05 00:00:00', '2022-03-21 08:22:35', 'nacos', '0:0:0:0:0:0:0:1', 'U', 'seata', '');
INSERT INTO `his_config_info` VALUES (653, 962, 'client.rm.reportRetryCount', 'SEATA_GROUP', '', '5', 'e4da3b7fbbce2345d7772b0674a318d5', '2010-05-05 00:00:00', '2022-03-21 08:22:35', 'nacos', '0:0:0:0:0:0:0:1', 'U', 'seata', '');
INSERT INTO `his_config_info` VALUES (654, 963, 'client.rm.tableMetaCheckEnable', 'SEATA_GROUP', '', 'false', '68934a3e9455fa72420237eb05902327', '2010-05-05 00:00:00', '2022-03-21 08:22:35', 'nacos', '0:0:0:0:0:0:0:1', 'U', 'seata', '');
INSERT INTO `his_config_info` VALUES (655, 964, 'client.rm.tableMetaCheckerInterval', 'SEATA_GROUP', '', '60000', '2b4226dd7ed6eb2d419b881f3ae9c97c', '2010-05-05 00:00:00', '2022-03-21 08:22:35', 'nacos', '0:0:0:0:0:0:0:1', 'U', 'seata', '');
INSERT INTO `his_config_info` VALUES (656, 965, 'client.rm.sqlParserType', 'SEATA_GROUP', '', 'druid', '3d650fb8a5df01600281d48c47c9fa60', '2010-05-05 00:00:00', '2022-03-21 08:22:35', 'nacos', '0:0:0:0:0:0:0:1', 'U', 'seata', '');
INSERT INTO `his_config_info` VALUES (657, 966, 'client.rm.reportSuccessEnable', 'SEATA_GROUP', '', 'false', '68934a3e9455fa72420237eb05902327', '2010-05-05 00:00:00', '2022-03-21 08:22:35', 'nacos', '0:0:0:0:0:0:0:1', 'U', 'seata', '');
INSERT INTO `his_config_info` VALUES (658, 967, 'client.rm.sagaBranchRegisterEnable', 'SEATA_GROUP', '', 'false', '68934a3e9455fa72420237eb05902327', '2010-05-05 00:00:00', '2022-03-21 08:22:36', 'nacos', '0:0:0:0:0:0:0:1', 'U', 'seata', '');
INSERT INTO `his_config_info` VALUES (659, 968, 'client.rm.sagaJsonParser', 'SEATA_GROUP', '', 'fastjson', 'd00d3dbc0834f08411c7b6c4c39e9f00', '2010-05-05 00:00:00', '2022-03-21 08:22:36', 'nacos', '0:0:0:0:0:0:0:1', 'U', 'seata', '');
INSERT INTO `his_config_info` VALUES (660, 969, 'client.rm.tccActionInterceptorOrder', 'SEATA_GROUP', '', '-2147482648', 'f056d9efa5dae3872f9da035c83bcde8', '2010-05-05 00:00:00', '2022-03-21 08:22:36', 'nacos', '0:0:0:0:0:0:0:1', 'U', 'seata', '');
INSERT INTO `his_config_info` VALUES (656, 970, 'client.rm.sqlParserType', 'SEATA_GROUP', '', 'druid', '3d650fb8a5df01600281d48c47c9fa60', '2010-05-05 00:00:00', '2022-03-21 08:22:36', 'nacos', '0:0:0:0:0:0:0:1', 'U', 'seata', '');
INSERT INTO `his_config_info` VALUES (662, 971, 'client.tm.commitRetryCount', 'SEATA_GROUP', '', '5', 'e4da3b7fbbce2345d7772b0674a318d5', '2010-05-05 00:00:00', '2022-03-21 08:22:36', 'nacos', '0:0:0:0:0:0:0:1', 'U', 'seata', '');
INSERT INTO `his_config_info` VALUES (663, 972, 'client.tm.rollbackRetryCount', 'SEATA_GROUP', '', '5', 'e4da3b7fbbce2345d7772b0674a318d5', '2010-05-05 00:00:00', '2022-03-21 08:22:36', 'nacos', '0:0:0:0:0:0:0:1', 'U', 'seata', '');
INSERT INTO `his_config_info` VALUES (664, 973, 'client.tm.defaultGlobalTransactionTimeout', 'SEATA_GROUP', '', '60000', '2b4226dd7ed6eb2d419b881f3ae9c97c', '2010-05-05 00:00:00', '2022-03-21 08:22:37', 'nacos', '0:0:0:0:0:0:0:1', 'U', 'seata', '');
INSERT INTO `his_config_info` VALUES (665, 974, 'client.tm.degradeCheck', 'SEATA_GROUP', '', 'false', '68934a3e9455fa72420237eb05902327', '2010-05-05 00:00:00', '2022-03-21 08:22:37', 'nacos', '0:0:0:0:0:0:0:1', 'U', 'seata', '');
INSERT INTO `his_config_info` VALUES (666, 975, 'client.tm.degradeCheckAllowTimes', 'SEATA_GROUP', '', '10', 'd3d9446802a44259755d38e6d163e820', '2010-05-05 00:00:00', '2022-03-21 08:22:37', 'nacos', '0:0:0:0:0:0:0:1', 'U', 'seata', '');
INSERT INTO `his_config_info` VALUES (667, 976, 'client.tm.degradeCheckPeriod', 'SEATA_GROUP', '', '2000', '08f90c1a417155361a5c4b8d297e0d78', '2010-05-05 00:00:00', '2022-03-21 08:22:37', 'nacos', '0:0:0:0:0:0:0:1', 'U', 'seata', '');
INSERT INTO `his_config_info` VALUES (668, 977, 'client.tm.interceptorOrder', 'SEATA_GROUP', '', '-2147482648', 'f056d9efa5dae3872f9da035c83bcde8', '2010-05-05 00:00:00', '2022-03-21 08:22:37', 'nacos', '0:0:0:0:0:0:0:1', 'U', 'seata', '');
INSERT INTO `his_config_info` VALUES (669, 978, 'client.undo.dataValidation', 'SEATA_GROUP', '', 'true', 'b326b5062b2f0e69046810717534cb09', '2010-05-05 00:00:00', '2022-03-21 08:22:37', 'nacos', '0:0:0:0:0:0:0:1', 'U', 'seata', '');
INSERT INTO `his_config_info` VALUES (670, 979, 'client.undo.logSerialization', 'SEATA_GROUP', '', 'jackson', 'b41779690b83f182acc67d6388c7bac9', '2010-05-05 00:00:00', '2022-03-21 08:22:38', 'nacos', '0:0:0:0:0:0:0:1', 'U', 'seata', '');
INSERT INTO `his_config_info` VALUES (671, 980, 'client.undo.onlyCareUpdateColumns', 'SEATA_GROUP', '', 'true', 'b326b5062b2f0e69046810717534cb09', '2010-05-05 00:00:00', '2022-03-21 08:22:38', 'nacos', '0:0:0:0:0:0:0:1', 'U', 'seata', '');
INSERT INTO `his_config_info` VALUES (672, 981, 'server.undo.logSaveDays', 'SEATA_GROUP', '', '7', '8f14e45fceea167a5a36dedd4bea2543', '2010-05-05 00:00:00', '2022-03-21 08:22:38', 'nacos', '0:0:0:0:0:0:0:1', 'U', 'seata', '');
INSERT INTO `his_config_info` VALUES (673, 982, 'server.undo.logDeletePeriod', 'SEATA_GROUP', '', '86400000', 'f4c122804fe9076cb2710f55c3c6e346', '2010-05-05 00:00:00', '2022-03-21 08:22:38', 'nacos', '0:0:0:0:0:0:0:1', 'U', 'seata', '');
INSERT INTO `his_config_info` VALUES (674, 983, 'client.undo.logTable', 'SEATA_GROUP', '', 'undo_log', '2842d229c24afe9e61437135e8306614', '2010-05-05 00:00:00', '2022-03-21 08:22:38', 'nacos', '0:0:0:0:0:0:0:1', 'U', 'seata', '');
INSERT INTO `his_config_info` VALUES (675, 984, 'client.undo.compress.enable', 'SEATA_GROUP', '', 'true', 'b326b5062b2f0e69046810717534cb09', '2010-05-05 00:00:00', '2022-03-21 08:22:38', 'nacos', '0:0:0:0:0:0:0:1', 'U', 'seata', '');
INSERT INTO `his_config_info` VALUES (676, 985, 'client.undo.compress.type', 'SEATA_GROUP', '', 'zip', 'adcdbd79a8d84175c229b192aadc02f2', '2010-05-05 00:00:00', '2022-03-21 08:22:38', 'nacos', '0:0:0:0:0:0:0:1', 'U', 'seata', '');
INSERT INTO `his_config_info` VALUES (677, 986, 'client.undo.compress.threshold', 'SEATA_GROUP', '', '64k', 'bd44a6458bdbff0b5cac721ba361f035', '2010-05-05 00:00:00', '2022-03-21 08:22:38', 'nacos', '0:0:0:0:0:0:0:1', 'U', 'seata', '');
INSERT INTO `his_config_info` VALUES (678, 987, 'tcc.fence.logTableName', 'SEATA_GROUP', '', 'tcc_fence_log', 'db229b665c7cfd5abc03971d4ed284c6', '2010-05-05 00:00:00', '2022-03-21 08:22:39', 'nacos', '0:0:0:0:0:0:0:1', 'U', 'seata', '');
INSERT INTO `his_config_info` VALUES (679, 988, 'tcc.fence.cleanPeriod', 'SEATA_GROUP', '', '1h', '7c68645d71b803bf0ba2f22519f73e08', '2010-05-05 00:00:00', '2022-03-21 08:22:39', 'nacos', '0:0:0:0:0:0:0:1', 'U', 'seata', '');
INSERT INTO `his_config_info` VALUES (680, 989, 'log.exceptionRate', 'SEATA_GROUP', '', '100', 'f899139df5e1059396431415e770c6dd', '2010-05-05 00:00:00', '2022-03-21 08:22:39', 'nacos', '0:0:0:0:0:0:0:1', 'U', 'seata', '');
INSERT INTO `his_config_info` VALUES (681, 990, 'store.mode', 'SEATA_GROUP', '', 'nacos', '3c3e94100815e3fcbe948b1e5fb3037a', '2010-05-05 00:00:00', '2022-03-21 08:22:39', 'nacos', '0:0:0:0:0:0:0:1', 'U', 'seata', '');
INSERT INTO `his_config_info` VALUES (682, 991, 'store.lock.mode', 'SEATA_GROUP', '', 'file', '8c7dd922ad47494fc02c388e12c00eac', '2010-05-05 00:00:00', '2022-03-21 08:22:39', 'nacos', '0:0:0:0:0:0:0:1', 'U', 'seata', '');
INSERT INTO `his_config_info` VALUES (683, 992, 'store.session.mode', 'SEATA_GROUP', '', 'file', '8c7dd922ad47494fc02c388e12c00eac', '2010-05-05 00:00:00', '2022-03-21 08:22:39', 'nacos', '0:0:0:0:0:0:0:1', 'U', 'seata', '');
INSERT INTO `his_config_info` VALUES (684, 993, 'store.file.dir', 'SEATA_GROUP', '', 'file_store/data', '6a8dec07c44c33a8a9247cba5710bbb2', '2010-05-05 00:00:00', '2022-03-21 08:22:39', 'nacos', '0:0:0:0:0:0:0:1', 'U', 'seata', '');
INSERT INTO `his_config_info` VALUES (685, 994, 'store.file.maxBranchSessionSize', 'SEATA_GROUP', '', '16384', 'c76fe1d8e08462434d800487585be217', '2010-05-05 00:00:00', '2022-03-21 08:22:39', 'nacos', '0:0:0:0:0:0:0:1', 'U', 'seata', '');
INSERT INTO `his_config_info` VALUES (686, 995, 'store.file.maxGlobalSessionSize', 'SEATA_GROUP', '', '512', '10a7cdd970fe135cf4f7bb55c0e3b59f', '2010-05-05 00:00:00', '2022-03-21 08:22:39', 'nacos', '0:0:0:0:0:0:0:1', 'U', 'seata', '');
INSERT INTO `his_config_info` VALUES (687, 996, 'store.file.fileWriteBufferCacheSize', 'SEATA_GROUP', '', '16384', 'c76fe1d8e08462434d800487585be217', '2010-05-05 00:00:00', '2022-03-21 08:22:40', 'nacos', '0:0:0:0:0:0:0:1', 'U', 'seata', '');
INSERT INTO `his_config_info` VALUES (688, 997, 'store.file.flushDiskMode', 'SEATA_GROUP', '', 'async', '0df93e34273b367bb63bad28c94c78d5', '2010-05-05 00:00:00', '2022-03-21 08:22:40', 'nacos', '0:0:0:0:0:0:0:1', 'U', 'seata', '');
INSERT INTO `his_config_info` VALUES (689, 998, 'store.file.sessionReloadReadSize', 'SEATA_GROUP', '', '100', 'f899139df5e1059396431415e770c6dd', '2010-05-05 00:00:00', '2022-03-21 08:22:40', 'nacos', '0:0:0:0:0:0:0:1', 'U', 'seata', '');
INSERT INTO `his_config_info` VALUES (690, 999, 'store.db.datasource', 'SEATA_GROUP', '', 'druid', '3d650fb8a5df01600281d48c47c9fa60', '2010-05-05 00:00:00', '2022-03-21 08:22:40', 'nacos', '0:0:0:0:0:0:0:1', 'U', 'seata', '');
INSERT INTO `his_config_info` VALUES (691, 1000, 'store.db.dbType', 'SEATA_GROUP', '', 'mysql', '81c3b080dad537de7e10e0987a4bf52e', '2010-05-05 00:00:00', '2022-03-21 08:22:40', 'nacos', '0:0:0:0:0:0:0:1', 'U', 'seata', '');
INSERT INTO `his_config_info` VALUES (692, 1001, 'store.db.driverClassName', 'SEATA_GROUP', '', 'com.mysql.cj.jdbc.Driver', '33763409bb7f4838bde4fae9540433e4', '2010-05-05 00:00:00', '2022-03-21 08:22:40', 'nacos', '0:0:0:0:0:0:0:1', 'U', 'seata', '');
INSERT INTO `his_config_info` VALUES (693, 1002, 'store.db.url', 'SEATA_GROUP', '', 'jdbc:mysql://127.0.0.1:3306/seata?useUnicode=true&rewriteBatchedStatements=true', '030ea5ff5c2ef043adf9826c70570b0b', '2010-05-05 00:00:00', '2022-03-21 08:22:41', 'nacos', '0:0:0:0:0:0:0:1', 'U', 'seata', '');
INSERT INTO `his_config_info` VALUES (694, 1003, 'store.db.user', 'SEATA_GROUP', '', 'root', '63a9f0ea7bb98050796b649e85481845', '2010-05-05 00:00:00', '2022-03-21 08:22:41', 'nacos', '0:0:0:0:0:0:0:1', 'U', 'seata', '');
INSERT INTO `his_config_info` VALUES (695, 1004, 'store.db.password', 'SEATA_GROUP', '', 'root', '63a9f0ea7bb98050796b649e85481845', '2010-05-05 00:00:00', '2022-03-21 08:22:41', 'nacos', '0:0:0:0:0:0:0:1', 'U', 'seata', '');
INSERT INTO `his_config_info` VALUES (696, 1005, 'store.db.minConn', 'SEATA_GROUP', '', '5', 'e4da3b7fbbce2345d7772b0674a318d5', '2010-05-05 00:00:00', '2022-03-21 08:22:41', 'nacos', '0:0:0:0:0:0:0:1', 'U', 'seata', '');
INSERT INTO `his_config_info` VALUES (697, 1006, 'store.db.maxConn', 'SEATA_GROUP', '', '30', '34173cb38f07f89ddbebc2ac9128303f', '2010-05-05 00:00:00', '2022-03-21 08:22:41', 'nacos', '0:0:0:0:0:0:0:1', 'U', 'seata', '');
INSERT INTO `his_config_info` VALUES (698, 1007, 'store.db.globalTable', 'SEATA_GROUP', '', 'global_table', '8b28fb6bb4c4f984df2709381f8eba2b', '2010-05-05 00:00:00', '2022-03-21 08:22:41', 'nacos', '0:0:0:0:0:0:0:1', 'U', 'seata', '');
INSERT INTO `his_config_info` VALUES (699, 1008, 'store.db.branchTable', 'SEATA_GROUP', '', 'branch_table', '54bcdac38cf62e103fe115bcf46a660c', '2010-05-05 00:00:00', '2022-03-21 08:22:41', 'nacos', '0:0:0:0:0:0:0:1', 'U', 'seata', '');
INSERT INTO `his_config_info` VALUES (700, 1009, 'store.db.distributedLockTable', 'SEATA_GROUP', '', 'distributed_lock', '26146b7a3a4907101617cb0f19bf613f', '2010-05-05 00:00:00', '2022-03-21 08:22:41', 'nacos', '0:0:0:0:0:0:0:1', 'U', 'seata', '');
INSERT INTO `his_config_info` VALUES (701, 1010, 'store.db.queryLimit', 'SEATA_GROUP', '', '100', 'f899139df5e1059396431415e770c6dd', '2010-05-05 00:00:00', '2022-03-21 08:22:41', 'nacos', '0:0:0:0:0:0:0:1', 'U', 'seata', '');
INSERT INTO `his_config_info` VALUES (702, 1011, 'store.db.lockTable', 'SEATA_GROUP', '', 'lock_table', '55e0cae3b6dc6696b768db90098b8f2f', '2010-05-05 00:00:00', '2022-03-21 08:22:42', 'nacos', '0:0:0:0:0:0:0:1', 'U', 'seata', '');
INSERT INTO `his_config_info` VALUES (703, 1012, 'store.db.maxWait', 'SEATA_GROUP', '', '5000', 'a35fe7f7fe8217b4369a0af4244d1fca', '2010-05-05 00:00:00', '2022-03-21 08:22:42', 'nacos', '0:0:0:0:0:0:0:1', 'U', 'seata', '');
INSERT INTO `his_config_info` VALUES (704, 1013, 'store.redis.mode', 'SEATA_GROUP', '', 'single', 'dd5c07036f2975ff4bce568b6511d3bc', '2010-05-05 00:00:00', '2022-03-21 08:22:42', 'nacos', '0:0:0:0:0:0:0:1', 'U', 'seata', '');
INSERT INTO `his_config_info` VALUES (705, 1014, 'store.redis.single.host', 'SEATA_GROUP', '', '127.0.0.1', 'f528764d624db129b32c21fbca0cb8d6', '2010-05-05 00:00:00', '2022-03-21 08:22:42', 'nacos', '0:0:0:0:0:0:0:1', 'U', 'seata', '');
INSERT INTO `his_config_info` VALUES (706, 1015, 'store.redis.single.port', 'SEATA_GROUP', '', '6379', '92c3b916311a5517d9290576e3ea37ad', '2010-05-05 00:00:00', '2022-03-21 08:22:42', 'nacos', '0:0:0:0:0:0:0:1', 'U', 'seata', '');
INSERT INTO `his_config_info` VALUES (707, 1016, 'store.redis.maxConn', 'SEATA_GROUP', '', '10', 'd3d9446802a44259755d38e6d163e820', '2010-05-05 00:00:00', '2022-03-21 08:22:42', 'nacos', '0:0:0:0:0:0:0:1', 'U', 'seata', '');
INSERT INTO `his_config_info` VALUES (708, 1017, 'store.redis.minConn', 'SEATA_GROUP', '', '1', 'c4ca4238a0b923820dcc509a6f75849b', '2010-05-05 00:00:00', '2022-03-21 08:22:42', 'nacos', '0:0:0:0:0:0:0:1', 'U', 'seata', '');
INSERT INTO `his_config_info` VALUES (709, 1018, 'store.redis.maxTotal', 'SEATA_GROUP', '', '100', 'f899139df5e1059396431415e770c6dd', '2010-05-05 00:00:00', '2022-03-21 08:22:42', 'nacos', '0:0:0:0:0:0:0:1', 'U', 'seata', '');
INSERT INTO `his_config_info` VALUES (710, 1019, 'store.redis.database', 'SEATA_GROUP', '', '0', 'cfcd208495d565ef66e7dff9f98764da', '2010-05-05 00:00:00', '2022-03-21 08:22:42', 'nacos', '0:0:0:0:0:0:0:1', 'U', 'seata', '');
INSERT INTO `his_config_info` VALUES (711, 1020, 'store.redis.queryLimit', 'SEATA_GROUP', '', '100', 'f899139df5e1059396431415e770c6dd', '2010-05-05 00:00:00', '2022-03-21 08:22:43', 'nacos', '0:0:0:0:0:0:0:1', 'U', 'seata', '');
INSERT INTO `his_config_info` VALUES (712, 1021, 'server.recovery.committingRetryPeriod', 'SEATA_GROUP', '', '1000', 'a9b7ba70783b617e9998dc4dd82eb3c5', '2010-05-05 00:00:00', '2022-03-21 08:22:43', 'nacos', '0:0:0:0:0:0:0:1', 'U', 'seata', '');
INSERT INTO `his_config_info` VALUES (713, 1022, 'server.recovery.asynCommittingRetryPeriod', 'SEATA_GROUP', '', '1000', 'a9b7ba70783b617e9998dc4dd82eb3c5', '2010-05-05 00:00:00', '2022-03-21 08:22:43', 'nacos', '0:0:0:0:0:0:0:1', 'U', 'seata', '');
INSERT INTO `his_config_info` VALUES (714, 1023, 'server.recovery.rollbackingRetryPeriod', 'SEATA_GROUP', '', '1000', 'a9b7ba70783b617e9998dc4dd82eb3c5', '2010-05-05 00:00:00', '2022-03-21 08:22:43', 'nacos', '0:0:0:0:0:0:0:1', 'U', 'seata', '');
INSERT INTO `his_config_info` VALUES (715, 1024, 'server.recovery.timeoutRetryPeriod', 'SEATA_GROUP', '', '1000', 'a9b7ba70783b617e9998dc4dd82eb3c5', '2010-05-05 00:00:00', '2022-03-21 08:22:43', 'nacos', '0:0:0:0:0:0:0:1', 'U', 'seata', '');
INSERT INTO `his_config_info` VALUES (716, 1025, 'server.maxCommitRetryTimeout', 'SEATA_GROUP', '', '-1', '6bb61e3b7bce0931da574d19d1d82c88', '2010-05-05 00:00:00', '2022-03-21 08:22:43', 'nacos', '0:0:0:0:0:0:0:1', 'U', 'seata', '');
INSERT INTO `his_config_info` VALUES (717, 1026, 'server.maxRollbackRetryTimeout', 'SEATA_GROUP', '', '-1', '6bb61e3b7bce0931da574d19d1d82c88', '2010-05-05 00:00:00', '2022-03-21 08:22:44', 'nacos', '0:0:0:0:0:0:0:1', 'U', 'seata', '');
INSERT INTO `his_config_info` VALUES (718, 1027, 'server.rollbackRetryTimeoutUnlockEnable', 'SEATA_GROUP', '', 'false', '68934a3e9455fa72420237eb05902327', '2010-05-05 00:00:00', '2022-03-21 08:22:44', 'nacos', '0:0:0:0:0:0:0:1', 'U', 'seata', '');
INSERT INTO `his_config_info` VALUES (719, 1028, 'server.distributedLockExpireTime', 'SEATA_GROUP', '', '10000', 'b7a782741f667201b54880c925faec4b', '2010-05-05 00:00:00', '2022-03-21 08:22:44', 'nacos', '0:0:0:0:0:0:0:1', 'U', 'seata', '');
INSERT INTO `his_config_info` VALUES (720, 1029, 'server.session.branchAsyncQueueSize', 'SEATA_GROUP', '', '5000', 'a35fe7f7fe8217b4369a0af4244d1fca', '2010-05-05 00:00:00', '2022-03-21 08:22:44', 'nacos', '0:0:0:0:0:0:0:1', 'U', 'seata', '');
INSERT INTO `his_config_info` VALUES (721, 1030, 'server.session.enableBranchAsyncRemove', 'SEATA_GROUP', '', 'true', 'b326b5062b2f0e69046810717534cb09', '2010-05-05 00:00:00', '2022-03-21 08:22:44', 'nacos', '0:0:0:0:0:0:0:1', 'U', 'seata', '');
INSERT INTO `his_config_info` VALUES (722, 1031, 'metrics.enabled', 'SEATA_GROUP', '', 'false', '68934a3e9455fa72420237eb05902327', '2010-05-05 00:00:00', '2022-03-21 08:22:44', 'nacos', '0:0:0:0:0:0:0:1', 'U', 'seata', '');
INSERT INTO `his_config_info` VALUES (723, 1032, 'metrics.registryType', 'SEATA_GROUP', '', 'compact', '7cf74ca49c304df8150205fc915cd465', '2010-05-05 00:00:00', '2022-03-21 08:22:44', 'nacos', '0:0:0:0:0:0:0:1', 'U', 'seata', '');
INSERT INTO `his_config_info` VALUES (724, 1033, 'metrics.exporterList', 'SEATA_GROUP', '', 'prometheus', 'e4f00638b8a10e6994e67af2f832d51c', '2010-05-05 00:00:00', '2022-03-21 08:22:45', 'nacos', '0:0:0:0:0:0:0:1', 'U', 'seata', '');
INSERT INTO `his_config_info` VALUES (725, 1034, 'metrics.exporterPrometheusPort', 'SEATA_GROUP', '', '9898', '7b9dc501afe4ee11c56a4831e20cee71', '2010-05-05 00:00:00', '2022-03-21 08:22:45', 'nacos', '0:0:0:0:0:0:0:1', 'U', 'seata', '');
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin COMMENT='tenant_info';

-- ----------------------------
-- Records of tenant_info
-- ----------------------------
BEGIN;
INSERT INTO `tenant_info` VALUES (1, '1', 'c59b1e25-6e0f-4ca8-94ce-e90d6c4fc7f6', 'test', '测试', 'nacos', 1647830844859, 1647830844859);
INSERT INTO `tenant_info` VALUES (2, '1', 'seata', 'seata', 'seata', 'nacos', 1647831885725, 1647831885725);
INSERT INTO `tenant_info` VALUES (4, '1', 'seata-server', 'seata-server', 'seata-server', 'nacos', 1647838712942, 1647838712942);
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



/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 80025
 Source Host           : localhost:3306
 Source Schema         : seata

 Target Server Type    : MySQL
 Target Server Version : 80025
 File Encoding         : 65001

 Date: 21/03/2022 17:08:20
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for branch_table
-- ----------------------------
DROP TABLE IF EXISTS `branch_table`;
CREATE TABLE `branch_table` (
                                `branch_id` bigint NOT NULL,
                                `xid` varchar(128) NOT NULL,
                                `transaction_id` bigint DEFAULT NULL,
                                `resource_group_id` varchar(32) DEFAULT NULL,
                                `resource_id` varchar(256) DEFAULT NULL,
                                `branch_type` varchar(8) DEFAULT NULL,
                                `status` tinyint DEFAULT NULL,
                                `client_id` varchar(64) DEFAULT NULL,
                                `application_data` varchar(2000) DEFAULT NULL,
                                `gmt_create` datetime(6) DEFAULT NULL,
                                `gmt_modified` datetime(6) DEFAULT NULL,
                                PRIMARY KEY (`branch_id`),
                                KEY `idx_xid` (`xid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of branch_table
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for distributed_lock
-- ----------------------------
DROP TABLE IF EXISTS `distributed_lock`;
CREATE TABLE `distributed_lock` (
                                    `lock_key` char(20) NOT NULL,
                                    `lock_value` varchar(20) NOT NULL,
                                    `expire` bigint DEFAULT NULL,
                                    PRIMARY KEY (`lock_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of distributed_lock
-- ----------------------------
BEGIN;
INSERT INTO `distributed_lock` VALUES ('HandleAllSession', ' ', 0);
COMMIT;

-- ----------------------------
-- Table structure for global_table
-- ----------------------------
DROP TABLE IF EXISTS `global_table`;
CREATE TABLE `global_table` (
                                `xid` varchar(128) NOT NULL,
                                `transaction_id` bigint DEFAULT NULL,
                                `status` tinyint NOT NULL,
                                `application_id` varchar(32) DEFAULT NULL,
                                `transaction_service_group` varchar(32) DEFAULT NULL,
                                `transaction_name` varchar(128) DEFAULT NULL,
                                `timeout` int DEFAULT NULL,
                                `begin_time` bigint DEFAULT NULL,
                                `application_data` varchar(2000) DEFAULT NULL,
                                `gmt_create` datetime DEFAULT NULL,
                                `gmt_modified` datetime DEFAULT NULL,
                                PRIMARY KEY (`xid`),
                                KEY `idx_status_gmt_modified` (`status`,`gmt_modified`),
                                KEY `idx_transaction_id` (`transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of global_table
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for lock_table
-- ----------------------------
DROP TABLE IF EXISTS `lock_table`;
CREATE TABLE `lock_table` (
                              `row_key` varchar(128) NOT NULL,
                              `xid` varchar(128) DEFAULT NULL,
                              `transaction_id` bigint DEFAULT NULL,
                              `branch_id` bigint NOT NULL,
                              `resource_id` varchar(256) DEFAULT NULL,
                              `table_name` varchar(32) DEFAULT NULL,
                              `pk` varchar(36) DEFAULT NULL,
                              `status` tinyint NOT NULL DEFAULT '0' COMMENT '0:locked ,1:rollbacking',
                              `gmt_create` datetime DEFAULT NULL,
                              `gmt_modified` datetime DEFAULT NULL,
                              PRIMARY KEY (`row_key`),
                              KEY `idx_status` (`status`),
                              KEY `idx_branch_id` (`branch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of lock_table
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for undo_log
-- ----------------------------
DROP TABLE IF EXISTS `undo_log`;
CREATE TABLE `undo_log` (
                            `branch_id` bigint NOT NULL COMMENT 'branch transaction id',
                            `xid` varchar(128) NOT NULL COMMENT 'global transaction id',
                            `context` varchar(128) NOT NULL COMMENT 'undo_log context,such as serialization',
                            `rollback_info` longblob NOT NULL COMMENT 'rollback info',
                            `log_status` int NOT NULL COMMENT '0:normal status,1:defense status',
                            `log_created` datetime(6) NOT NULL COMMENT 'create datetime',
                            `log_modified` datetime(6) NOT NULL COMMENT 'modify datetime',
                            UNIQUE KEY `ux_undo_log` (`xid`,`branch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='AT transaction mode undo table';

-- ----------------------------
-- Records of undo_log
-- ----------------------------
BEGIN;
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;


/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 80025
 Source Host           : localhost:3306
 Source Schema         : seata_account

 Target Server Type    : MySQL
 Target Server Version : 80025
 File Encoding         : 65001

 Date: 21/03/2022 17:08:26
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for account_tbl
-- ----------------------------
DROP TABLE IF EXISTS `account_tbl`;
CREATE TABLE `account_tbl` (
                               `id` int NOT NULL AUTO_INCREMENT,
                               `user_id` varchar(255) DEFAULT NULL,
                               `money` int DEFAULT '0',
                               PRIMARY KEY (`id`),
                               UNIQUE KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of account_tbl
-- ----------------------------
BEGIN;
INSERT INTO `account_tbl` VALUES (1, '1', 990);
COMMIT;

-- ----------------------------
-- Table structure for undo_log
-- ----------------------------
DROP TABLE IF EXISTS `undo_log`;
CREATE TABLE `undo_log` (
                            `id` bigint NOT NULL AUTO_INCREMENT,
                            `branch_id` bigint NOT NULL,
                            `xid` varchar(100) NOT NULL,
                            `context` varchar(128) NOT NULL,
                            `rollback_info` longblob NOT NULL,
                            `log_status` int NOT NULL,
                            `log_created` datetime NOT NULL,
                            `log_modified` datetime NOT NULL,
                            PRIMARY KEY (`id`),
                            UNIQUE KEY `ux_undo_log` (`xid`,`branch_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of undo_log
-- ----------------------------
BEGIN;
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;

/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 80025
 Source Host           : localhost:3306
 Source Schema         : seata_order

 Target Server Type    : MySQL
 Target Server Version : 80025
 File Encoding         : 65001

 Date: 21/03/2022 17:08:33
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for order_tbl
-- ----------------------------
DROP TABLE IF EXISTS `order_tbl`;
CREATE TABLE `order_tbl` (
                             `id` int NOT NULL AUTO_INCREMENT,
                             `user_id` varchar(255) DEFAULT NULL,
                             `commodity_code` varchar(255) DEFAULT NULL,
                             `count` int DEFAULT '0',
                             `money` int DEFAULT '0',
                             `status` int DEFAULT NULL,
                             PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of order_tbl
-- ----------------------------
BEGIN;
INSERT INTO `order_tbl` VALUES (4, '1', '2001', 2, 10, 1);
INSERT INTO `order_tbl` VALUES (5, '1', '2001', 2, 10, 1);
COMMIT;

-- ----------------------------
-- Table structure for undo_log
-- ----------------------------
DROP TABLE IF EXISTS `undo_log`;
CREATE TABLE `undo_log` (
                            `id` bigint NOT NULL AUTO_INCREMENT,
                            `branch_id` bigint NOT NULL,
                            `xid` varchar(100) NOT NULL,
                            `context` varchar(128) NOT NULL,
                            `rollback_info` longblob NOT NULL,
                            `log_status` int NOT NULL,
                            `log_created` datetime NOT NULL,
                            `log_modified` datetime NOT NULL,
                            PRIMARY KEY (`id`),
                            UNIQUE KEY `ux_undo_log` (`xid`,`branch_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of undo_log
-- ----------------------------
BEGIN;
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;


/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 80025
 Source Host           : localhost:3306
 Source Schema         : seata_storage

 Target Server Type    : MySQL
 Target Server Version : 80025
 File Encoding         : 65001

 Date: 21/03/2022 17:08:40
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for storage_tbl
-- ----------------------------
DROP TABLE IF EXISTS `storage_tbl`;
CREATE TABLE `storage_tbl` (
                               `id` int NOT NULL AUTO_INCREMENT,
                               `commodity_code` varchar(255) DEFAULT NULL,
                               `count` int DEFAULT '0',
                               PRIMARY KEY (`id`),
                               UNIQUE KEY `commodity_code` (`commodity_code`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of storage_tbl
-- ----------------------------
BEGIN;
INSERT INTO `storage_tbl` VALUES (1, '2001', 998);
COMMIT;

-- ----------------------------
-- Table structure for undo_log
-- ----------------------------
DROP TABLE IF EXISTS `undo_log`;
CREATE TABLE `undo_log` (
                            `id` bigint NOT NULL AUTO_INCREMENT,
                            `branch_id` bigint NOT NULL,
                            `xid` varchar(100) NOT NULL,
                            `context` varchar(128) NOT NULL,
                            `rollback_info` longblob NOT NULL,
                            `log_status` int NOT NULL,
                            `log_created` datetime NOT NULL,
                            `log_modified` datetime NOT NULL,
                            PRIMARY KEY (`id`),
                            UNIQUE KEY `ux_undo_log` (`xid`,`branch_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of undo_log
-- ----------------------------
BEGIN;
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
