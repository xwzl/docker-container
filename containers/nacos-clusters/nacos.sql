/*
 Navicat Premium Data Transfer

 Source Server         : 192.168.1.10
 Source Server Type    : MySQL
 Source Server Version : 80026
 Source Host           : 192.168.1.10:3306
 Source Schema         : nacos

 Target Server Type    : MySQL
 Target Server Version : 80026
 File Encoding         : 65001

 Date: 20/09/2021 22:46:56
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for config_info
-- ----------------------------
DROP TABLE IF EXISTS `config_info`;
CREATE TABLE `config_info`  (
                                `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
                                `data_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'data_id',
                                `group_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
                                `content` longtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'content',
                                `md5` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'md5',
                                `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                                `gmt_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
                                `src_user` text CHARACTER SET utf8 COLLATE utf8_bin NULL COMMENT 'source user',
                                `src_ip` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'source ip',
                                `app_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
                                `tenant_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '租户字段',
                                `c_desc` varchar(256) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
                                `c_use` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
                                `effect` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
                                `type` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
                                `c_schema` text CHARACTER SET utf8 COLLATE utf8_bin NULL,
                                PRIMARY KEY (`id`) USING BTREE,
                                UNIQUE INDEX `uk_configinfo_datagrouptenant`(`data_id`, `group_id`, `tenant_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = 'config_info' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of config_info
-- ----------------------------
INSERT INTO `config_info` VALUES (1, 'transport.type', 'SEATA_GROUP', 'TCP', 'b136ef5f6a01d816991fe3cf7a6ac763', '2021-09-20 00:41:08', '2021-09-20 09:10:32', '', '172.20.0.1', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (2, 'transport.server', 'SEATA_GROUP', 'NIO', 'b6d9dfc0fb54277321cebc0fff55df2f', '2021-09-20 00:41:08', '2021-09-20 09:10:33', '', '172.20.0.1', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (3, 'transport.heartbeat', 'SEATA_GROUP', 'true', 'b326b5062b2f0e69046810717534cb09', '2021-09-20 00:41:08', '2021-09-20 09:10:33', '', '172.20.0.1', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (4, 'transport.enableClientBatchSendRequest', 'SEATA_GROUP', 'false', '68934a3e9455fa72420237eb05902327', '2021-09-20 00:41:08', '2021-09-20 09:10:33', '', '172.20.0.1', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (5, 'transport.threadFactory.bossThreadPrefix', 'SEATA_GROUP', 'NettyBoss', '0f8db59a3b7f2823f38a70c308361836', '2021-09-20 00:41:09', '2021-09-20 09:10:33', '', '172.20.0.1', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (6, 'transport.threadFactory.workerThreadPrefix', 'SEATA_GROUP', 'NettyServerNIOWorker', 'a78ec7ef5d1631754c4e72ae8a3e9205', '2021-09-20 00:41:09', '2021-09-20 09:10:33', '', '172.20.0.1', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (7, 'transport.threadFactory.serverExecutorThreadPrefix', 'SEATA_GROUP', 'NettyServerBizHandler', '11a36309f3d9df84fa8b59cf071fa2da', '2021-09-20 00:41:09', '2021-09-20 09:10:34', '', '172.20.0.1', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (8, 'transport.threadFactory.shareBossWorker', 'SEATA_GROUP', 'false', '68934a3e9455fa72420237eb05902327', '2021-09-20 00:41:09', '2021-09-20 09:10:34', '', '172.20.0.1', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (9, 'transport.threadFactory.clientSelectorThreadPrefix', 'SEATA_GROUP', 'NettyClientSelector', 'cd7ec5a06541e75f5a7913752322c3af', '2021-09-20 00:41:09', '2021-09-20 09:10:34', '', '172.20.0.1', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (10, 'transport.threadFactory.clientSelectorThreadSize', 'SEATA_GROUP', '1', 'c4ca4238a0b923820dcc509a6f75849b', '2021-09-20 00:41:09', '2021-09-20 09:10:34', '', '172.20.0.1', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (11, 'transport.threadFactory.clientWorkerThreadPrefix', 'SEATA_GROUP', 'NettyClientWorkerThread', '61cf4e69a56354cf72f46dc86414a57e', '2021-09-20 00:41:10', '2021-09-20 09:10:34', '', '172.20.0.1', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (12, 'transport.threadFactory.bossThreadSize', 'SEATA_GROUP', '1', 'c4ca4238a0b923820dcc509a6f75849b', '2021-09-20 00:41:10', '2021-09-20 09:10:35', '', '172.20.0.1', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (13, 'transport.threadFactory.workerThreadSize', 'SEATA_GROUP', 'default', 'c21f969b5f03d33d43e04f8f136e7682', '2021-09-20 00:41:10', '2021-09-20 09:10:35', '', '172.20.0.1', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (14, 'transport.shutdown.wait', 'SEATA_GROUP', '3', 'eccbc87e4b5ce2fe28308fd9f2a7baf3', '2021-09-20 00:41:10', '2021-09-20 09:10:35', '', '172.20.0.1', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (15, 'service.vgroupMapping.my_test_tx_group', 'SEATA_GROUP', 'default', 'c21f969b5f03d33d43e04f8f136e7682', '2021-09-20 00:41:10', '2021-09-20 09:10:35', '', '172.20.0.1', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (16, 'service.default.grouplist', 'SEATA_GROUP', '127.0.0.1:8091', 'c32ce0d3e264525dcdada751f98143a3', '2021-09-20 00:41:10', '2021-09-20 09:10:35', '', '172.20.0.1', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (17, 'service.enableDegrade', 'SEATA_GROUP', 'false', '68934a3e9455fa72420237eb05902327', '2021-09-20 00:41:10', '2021-09-20 09:10:36', '', '172.20.0.1', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (18, 'service.disableGlobalTransaction', 'SEATA_GROUP', 'false', '68934a3e9455fa72420237eb05902327', '2021-09-20 00:41:11', '2021-09-20 09:10:36', '', '172.20.0.1', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (19, 'client.rm.asyncCommitBufferLimit', 'SEATA_GROUP', '10000', 'b7a782741f667201b54880c925faec4b', '2021-09-20 00:41:11', '2021-09-20 09:10:36', '', '172.20.0.1', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (20, 'client.rm.lock.retryInterval', 'SEATA_GROUP', '10', 'd3d9446802a44259755d38e6d163e820', '2021-09-20 00:41:11', '2021-09-20 09:10:36', '', '172.20.0.1', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (21, 'client.rm.lock.retryTimes', 'SEATA_GROUP', '30', '34173cb38f07f89ddbebc2ac9128303f', '2021-09-20 00:41:11', '2021-09-20 09:10:36', '', '172.20.0.1', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (22, 'client.rm.lock.retryPolicyBranchRollbackOnConflict', 'SEATA_GROUP', 'true', 'b326b5062b2f0e69046810717534cb09', '2021-09-20 00:41:11', '2021-09-20 09:10:37', '', '172.20.0.1', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (23, 'client.rm.reportRetryCount', 'SEATA_GROUP', '5', 'e4da3b7fbbce2345d7772b0674a318d5', '2021-09-20 00:41:11', '2021-09-20 09:10:37', '', '172.20.0.1', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (24, 'client.rm.tableMetaCheckEnable', 'SEATA_GROUP', 'false', '68934a3e9455fa72420237eb05902327', '2021-09-20 00:41:12', '2021-09-20 09:10:37', '', '172.20.0.1', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (25, 'client.rm.tableMetaCheckerInterval', 'SEATA_GROUP', '60000', '2b4226dd7ed6eb2d419b881f3ae9c97c', '2021-09-20 00:41:12', '2021-09-20 09:10:37', '', '172.20.0.1', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (26, 'client.rm.sqlParserType', 'SEATA_GROUP', 'druid', '3d650fb8a5df01600281d48c47c9fa60', '2021-09-20 00:41:12', '2021-09-20 09:10:37', '', '172.20.0.1', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (27, 'client.rm.reportSuccessEnable', 'SEATA_GROUP', 'false', '68934a3e9455fa72420237eb05902327', '2021-09-20 00:41:12', '2021-09-20 09:10:38', '', '172.20.0.1', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (28, 'client.rm.sagaBranchRegisterEnable', 'SEATA_GROUP', 'false', '68934a3e9455fa72420237eb05902327', '2021-09-20 00:41:12', '2021-09-20 09:10:38', '', '172.20.0.1', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (29, 'client.tm.commitRetryCount', 'SEATA_GROUP', '5', 'e4da3b7fbbce2345d7772b0674a318d5', '2021-09-20 00:41:12', '2021-09-20 09:10:38', '', '172.20.0.1', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (30, 'client.tm.rollbackRetryCount', 'SEATA_GROUP', '5', 'e4da3b7fbbce2345d7772b0674a318d5', '2021-09-20 00:41:13', '2021-09-20 09:10:38', '', '172.20.0.1', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (31, 'client.tm.defaultGlobalTransactionTimeout', 'SEATA_GROUP', '60000', '2b4226dd7ed6eb2d419b881f3ae9c97c', '2021-09-20 00:41:13', '2021-09-20 09:10:38', '', '172.20.0.1', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (32, 'client.tm.degradeCheck', 'SEATA_GROUP', 'false', '68934a3e9455fa72420237eb05902327', '2021-09-20 00:41:13', '2021-09-20 09:10:38', '', '172.20.0.1', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (33, 'client.tm.degradeCheckAllowTimes', 'SEATA_GROUP', '10', 'd3d9446802a44259755d38e6d163e820', '2021-09-20 00:41:13', '2021-09-20 09:10:39', '', '172.20.0.1', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (34, 'client.tm.degradeCheckPeriod', 'SEATA_GROUP', '2000', '08f90c1a417155361a5c4b8d297e0d78', '2021-09-20 00:41:13', '2021-09-20 09:10:39', '', '172.20.0.1', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (35, 'store.mode', 'SEATA_GROUP', 'db', 'd77d5e503ad1439f585ac494268b351b', '2021-09-20 00:41:13', '2021-09-20 09:10:39', '', '172.20.0.1', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (36, 'store.file.dir', 'SEATA_GROUP', 'file_store/data', '6a8dec07c44c33a8a9247cba5710bbb2', '2021-09-20 00:41:14', '2021-09-20 09:10:39', '', '172.20.0.1', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (37, 'store.file.maxBranchSessionSize', 'SEATA_GROUP', '16384', 'c76fe1d8e08462434d800487585be217', '2021-09-20 00:41:14', '2021-09-20 09:10:40', '', '172.20.0.1', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (38, 'store.file.maxGlobalSessionSize', 'SEATA_GROUP', '512', '10a7cdd970fe135cf4f7bb55c0e3b59f', '2021-09-20 00:41:14', '2021-09-20 09:10:40', '', '172.20.0.1', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (39, 'store.file.fileWriteBufferCacheSize', 'SEATA_GROUP', '16384', 'c76fe1d8e08462434d800487585be217', '2021-09-20 00:41:14', '2021-09-20 09:10:40', '', '172.20.0.1', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (40, 'store.file.flushDiskMode', 'SEATA_GROUP', 'async', '0df93e34273b367bb63bad28c94c78d5', '2021-09-20 00:41:14', '2021-09-20 09:10:40', '', '172.20.0.1', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (41, 'store.file.sessionReloadReadSize', 'SEATA_GROUP', '100', 'f899139df5e1059396431415e770c6dd', '2021-09-20 00:41:14', '2021-09-20 09:10:40', '', '172.20.0.1', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (42, 'store.db.datasource', 'SEATA_GROUP', 'druid', '3d650fb8a5df01600281d48c47c9fa60', '2021-09-20 00:41:15', '2021-09-20 09:10:41', '', '172.20.0.1', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (43, 'store.db.dbType', 'SEATA_GROUP', 'mysql', '81c3b080dad537de7e10e0987a4bf52e', '2021-09-20 00:41:15', '2021-09-20 09:10:41', '', '172.20.0.1', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (44, 'store.db.driverClassName', 'SEATA_GROUP', 'com.mysql.cj.jdbc.Driver', '33763409bb7f4838bde4fae9540433e4', '2021-09-20 00:41:15', '2021-09-20 09:10:41', '', '172.20.0.1', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (45, 'store.db.url', 'SEATA_GROUP', 'jdbc:mysql://192.168.1.10:3306/seata?useUnicode=true&rewriteBatchedStatements=true', '6f25b34a9d1f912bcd08c7ae5d06678d', '2021-09-20 00:41:15', '2021-09-20 09:43:54', 'nacos', '172.20.0.1', '', 'seata', '', '', '', 'text', '');
INSERT INTO `config_info` VALUES (46, 'store.db.user', 'SEATA_GROUP', 'root', '63a9f0ea7bb98050796b649e85481845', '2021-09-20 00:41:15', '2021-09-20 09:10:41', '', '172.20.0.1', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (47, 'store.db.password', 'SEATA_GROUP', 'root', '63a9f0ea7bb98050796b649e85481845', '2021-09-20 00:41:15', '2021-09-20 09:10:42', '', '172.20.0.1', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (48, 'store.db.minConn', 'SEATA_GROUP', '5', 'e4da3b7fbbce2345d7772b0674a318d5', '2021-09-20 00:41:16', '2021-09-20 09:10:42', '', '172.20.0.1', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (49, 'store.db.maxConn', 'SEATA_GROUP', '30', '34173cb38f07f89ddbebc2ac9128303f', '2021-09-20 00:41:16', '2021-09-20 09:10:42', '', '172.20.0.1', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (50, 'store.db.globalTable', 'SEATA_GROUP', 'global_table', '8b28fb6bb4c4f984df2709381f8eba2b', '2021-09-20 00:41:16', '2021-09-20 09:10:42', '', '172.20.0.1', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (51, 'store.db.branchTable', 'SEATA_GROUP', 'branch_table', '54bcdac38cf62e103fe115bcf46a660c', '2021-09-20 00:41:16', '2021-09-20 09:10:42', '', '172.20.0.1', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (52, 'store.db.queryLimit', 'SEATA_GROUP', '100', 'f899139df5e1059396431415e770c6dd', '2021-09-20 00:41:16', '2021-09-20 09:10:43', '', '172.20.0.1', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (53, 'store.db.lockTable', 'SEATA_GROUP', 'lock_table', '55e0cae3b6dc6696b768db90098b8f2f', '2021-09-20 00:41:16', '2021-09-20 09:10:43', '', '172.20.0.1', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (54, 'store.db.maxWait', 'SEATA_GROUP', '5000', 'a35fe7f7fe8217b4369a0af4244d1fca', '2021-09-20 00:41:17', '2021-09-20 09:10:43', '', '172.20.0.1', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (55, 'store.redis.mode', 'SEATA_GROUP', 'single', 'dd5c07036f2975ff4bce568b6511d3bc', '2021-09-20 00:41:17', '2021-09-20 09:10:43', '', '172.20.0.1', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (56, 'store.redis.single.host', 'SEATA_GROUP', '127.0.0.1', 'f528764d624db129b32c21fbca0cb8d6', '2021-09-20 00:41:17', '2021-09-20 09:10:44', '', '172.20.0.1', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (57, 'store.redis.single.port', 'SEATA_GROUP', '6379', '92c3b916311a5517d9290576e3ea37ad', '2021-09-20 00:41:17', '2021-09-20 09:10:44', '', '172.20.0.1', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (58, 'store.redis.maxConn', 'SEATA_GROUP', '10', 'd3d9446802a44259755d38e6d163e820', '2021-09-20 00:41:18', '2021-09-20 09:10:45', '', '172.20.0.1', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (59, 'store.redis.minConn', 'SEATA_GROUP', '1', 'c4ca4238a0b923820dcc509a6f75849b', '2021-09-20 00:41:18', '2021-09-20 09:10:45', '', '172.20.0.1', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (60, 'store.redis.maxTotal', 'SEATA_GROUP', '100', 'f899139df5e1059396431415e770c6dd', '2021-09-20 00:41:18', '2021-09-20 09:10:45', '', '172.20.0.1', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (61, 'store.redis.database', 'SEATA_GROUP', '0', 'cfcd208495d565ef66e7dff9f98764da', '2021-09-20 00:41:18', '2021-09-20 09:10:45', '', '172.20.0.1', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (62, 'store.redis.queryLimit', 'SEATA_GROUP', '100', 'f899139df5e1059396431415e770c6dd', '2021-09-20 00:41:18', '2021-09-20 09:10:46', '', '172.20.0.1', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (63, 'server.recovery.committingRetryPeriod', 'SEATA_GROUP', '1000', 'a9b7ba70783b617e9998dc4dd82eb3c5', '2021-09-20 00:41:18', '2021-09-20 09:10:46', '', '172.20.0.1', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (64, 'server.recovery.asynCommittingRetryPeriod', 'SEATA_GROUP', '1000', 'a9b7ba70783b617e9998dc4dd82eb3c5', '2021-09-20 00:41:19', '2021-09-20 09:10:46', '', '172.20.0.1', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (65, 'server.recovery.rollbackingRetryPeriod', 'SEATA_GROUP', '1000', 'a9b7ba70783b617e9998dc4dd82eb3c5', '2021-09-20 00:41:19', '2021-09-20 09:10:46', '', '172.20.0.1', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (66, 'server.recovery.timeoutRetryPeriod', 'SEATA_GROUP', '1000', 'a9b7ba70783b617e9998dc4dd82eb3c5', '2021-09-20 00:41:19', '2021-09-20 09:10:46', '', '172.20.0.1', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (67, 'server.maxCommitRetryTimeout', 'SEATA_GROUP', '-1', '6bb61e3b7bce0931da574d19d1d82c88', '2021-09-20 00:41:19', '2021-09-20 09:10:47', '', '172.20.0.1', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (68, 'server.maxRollbackRetryTimeout', 'SEATA_GROUP', '-1', '6bb61e3b7bce0931da574d19d1d82c88', '2021-09-20 00:41:19', '2021-09-20 09:10:47', '', '172.20.0.1', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (69, 'server.rollbackRetryTimeoutUnlockEnable', 'SEATA_GROUP', 'false', '68934a3e9455fa72420237eb05902327', '2021-09-20 00:41:19', '2021-09-20 09:10:47', '', '172.20.0.1', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (70, 'client.undo.dataValidation', 'SEATA_GROUP', 'true', 'b326b5062b2f0e69046810717534cb09', '2021-09-20 00:41:19', '2021-09-20 09:10:47', '', '172.20.0.1', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (71, 'client.undo.logSerialization', 'SEATA_GROUP', 'jackson', 'b41779690b83f182acc67d6388c7bac9', '2021-09-20 00:41:20', '2021-09-20 09:10:47', '', '172.20.0.1', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (72, 'client.undo.onlyCareUpdateColumns', 'SEATA_GROUP', 'true', 'b326b5062b2f0e69046810717534cb09', '2021-09-20 00:41:20', '2021-09-20 09:10:48', '', '172.20.0.1', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (73, 'server.undo.logSaveDays', 'SEATA_GROUP', '7', '8f14e45fceea167a5a36dedd4bea2543', '2021-09-20 00:41:20', '2021-09-20 09:10:48', '', '172.20.0.1', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (74, 'server.undo.logDeletePeriod', 'SEATA_GROUP', '86400000', 'f4c122804fe9076cb2710f55c3c6e346', '2021-09-20 00:41:20', '2021-09-20 09:10:48', '', '172.20.0.1', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (75, 'client.undo.logTable', 'SEATA_GROUP', 'undo_log', '2842d229c24afe9e61437135e8306614', '2021-09-20 00:41:20', '2021-09-20 09:10:48', '', '172.20.0.1', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (76, 'client.undo.compress.enable', 'SEATA_GROUP', 'true', 'b326b5062b2f0e69046810717534cb09', '2021-09-20 00:41:20', '2021-09-20 09:10:48', '', '172.20.0.1', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (77, 'client.undo.compress.type', 'SEATA_GROUP', 'zip', 'adcdbd79a8d84175c229b192aadc02f2', '2021-09-20 00:41:21', '2021-09-20 09:10:49', '', '172.20.0.1', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (78, 'client.undo.compress.threshold', 'SEATA_GROUP', '64k', 'bd44a6458bdbff0b5cac721ba361f035', '2021-09-20 00:41:21', '2021-09-20 09:10:49', '', '172.20.0.1', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (79, 'log.exceptionRate', 'SEATA_GROUP', '100', 'f899139df5e1059396431415e770c6dd', '2021-09-20 00:41:21', '2021-09-20 09:10:49', '', '172.20.0.1', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (80, 'transport.serialization', 'SEATA_GROUP', 'seata', 'b943081c423b9a5416a706524ee05d40', '2021-09-20 00:41:21', '2021-09-20 09:10:49', '', '172.20.0.1', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (81, 'transport.compressor', 'SEATA_GROUP', 'none', '334c4a4c42fdb79d7ebc3e73b517e6f8', '2021-09-20 00:41:21', '2021-09-20 09:10:49', '', '172.20.0.1', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (82, 'metrics.enabled', 'SEATA_GROUP', 'false', '68934a3e9455fa72420237eb05902327', '2021-09-20 00:41:21', '2021-09-20 09:10:50', '', '172.20.0.1', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (83, 'metrics.registryType', 'SEATA_GROUP', 'compact', '7cf74ca49c304df8150205fc915cd465', '2021-09-20 00:41:22', '2021-09-20 09:10:50', '', '172.20.0.1', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (84, 'metrics.exporterList', 'SEATA_GROUP', 'prometheus', 'e4f00638b8a10e6994e67af2f832d51c', '2021-09-20 00:41:22', '2021-09-20 09:10:50', '', '172.20.0.1', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (85, 'metrics.exporterPrometheusPort', 'SEATA_GROUP', '9898', '7b9dc501afe4ee11c56a4831e20cee71', '2021-09-20 00:41:22', '2021-09-20 09:10:50', '', '172.20.0.1', '', 'seata', NULL, NULL, NULL, 'text', NULL);

-- ----------------------------
-- Table structure for config_info_aggr
-- ----------------------------
DROP TABLE IF EXISTS `config_info_aggr`;
CREATE TABLE `config_info_aggr`  (
                                     `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
                                     `data_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'data_id',
                                     `group_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'group_id',
                                     `datum_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'datum_id',
                                     `content` longtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '内容',
                                     `gmt_modified` datetime NOT NULL COMMENT '修改时间',
                                     `app_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
                                     `tenant_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '租户字段',
                                     PRIMARY KEY (`id`) USING BTREE,
                                     UNIQUE INDEX `uk_configinfoaggr_datagrouptenantdatum`(`data_id`, `group_id`, `tenant_id`, `datum_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '增加租户字段' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of config_info_aggr
-- ----------------------------

-- ----------------------------
-- Table structure for config_info_beta
-- ----------------------------
DROP TABLE IF EXISTS `config_info_beta`;
CREATE TABLE `config_info_beta`  (
                                     `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
                                     `data_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'data_id',
                                     `group_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'group_id',
                                     `app_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'app_name',
                                     `content` longtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'content',
                                     `beta_ips` varchar(1024) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'betaIps',
                                     `md5` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'md5',
                                     `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                                     `gmt_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
                                     `src_user` text CHARACTER SET utf8 COLLATE utf8_bin NULL COMMENT 'source user',
                                     `src_ip` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'source ip',
                                     `tenant_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '租户字段',
                                     PRIMARY KEY (`id`) USING BTREE,
                                     UNIQUE INDEX `uk_configinfobeta_datagrouptenant`(`data_id`, `group_id`, `tenant_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = 'config_info_beta' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of config_info_beta
-- ----------------------------

-- ----------------------------
-- Table structure for config_info_tag
-- ----------------------------
DROP TABLE IF EXISTS `config_info_tag`;
CREATE TABLE `config_info_tag`  (
                                    `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
                                    `data_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'data_id',
                                    `group_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'group_id',
                                    `tenant_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT 'tenant_id',
                                    `tag_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'tag_id',
                                    `app_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'app_name',
                                    `content` longtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'content',
                                    `md5` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'md5',
                                    `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                                    `gmt_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
                                    `src_user` text CHARACTER SET utf8 COLLATE utf8_bin NULL COMMENT 'source user',
                                    `src_ip` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'source ip',
                                    PRIMARY KEY (`id`) USING BTREE,
                                    UNIQUE INDEX `uk_configinfotag_datagrouptenanttag`(`data_id`, `group_id`, `tenant_id`, `tag_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = 'config_info_tag' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of config_info_tag
-- ----------------------------

-- ----------------------------
-- Table structure for config_tags_relation
-- ----------------------------
DROP TABLE IF EXISTS `config_tags_relation`;
CREATE TABLE `config_tags_relation`  (
                                         `id` bigint NOT NULL COMMENT 'id',
                                         `tag_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'tag_name',
                                         `tag_type` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'tag_type',
                                         `data_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'data_id',
                                         `group_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'group_id',
                                         `tenant_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT 'tenant_id',
                                         `nid` bigint NOT NULL AUTO_INCREMENT,
                                         PRIMARY KEY (`nid`) USING BTREE,
                                         UNIQUE INDEX `uk_configtagrelation_configidtag`(`id`, `tag_name`, `tag_type`) USING BTREE,
                                         INDEX `idx_tenant_id`(`tenant_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = 'config_tag_relation' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of config_tags_relation
-- ----------------------------

-- ----------------------------
-- Table structure for group_capacity
-- ----------------------------
DROP TABLE IF EXISTS `group_capacity`;
CREATE TABLE `group_capacity`  (
                                   `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键ID',
                                   `group_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT 'Group ID，空字符表示整个集群',
                                   `quota` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '配额，0表示使用默认值',
                                   `usage` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '使用量',
                                   `max_size` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '单个配置大小上限，单位为字节，0表示使用默认值',
                                   `max_aggr_count` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '聚合子配置最大个数，，0表示使用默认值',
                                   `max_aggr_size` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '单个聚合数据的子配置大小上限，单位为字节，0表示使用默认值',
                                   `max_history_count` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '最大变更历史数量',
                                   `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                                   `gmt_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
                                   PRIMARY KEY (`id`) USING BTREE,
                                   UNIQUE INDEX `uk_group_id`(`group_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '集群、各Group容量信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of group_capacity
-- ----------------------------

-- ----------------------------
-- Table structure for his_config_info
-- ----------------------------
DROP TABLE IF EXISTS `his_config_info`;
CREATE TABLE `his_config_info`  (
                                    `id` bigint UNSIGNED NOT NULL,
                                    `nid` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
                                    `data_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
                                    `group_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
                                    `app_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'app_name',
                                    `content` longtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
                                    `md5` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
                                    `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
                                    `gmt_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
                                    `src_user` text CHARACTER SET utf8 COLLATE utf8_bin NULL,
                                    `src_ip` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
                                    `op_type` char(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
                                    `tenant_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '租户字段',
                                    PRIMARY KEY (`nid`) USING BTREE,
                                    INDEX `idx_gmt_create`(`gmt_create`) USING BTREE,
                                    INDEX `idx_gmt_modified`(`gmt_modified`) USING BTREE,
                                    INDEX `idx_did`(`data_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '多租户改造' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of his_config_info
-- ----------------------------
INSERT INTO `his_config_info` VALUES (0, 1, 'transport.type', 'SEATA_GROUP', '', 'TCP', 'b136ef5f6a01d816991fe3cf7a6ac763', '2021-09-20 13:41:07', '2021-09-20 00:41:08', '', '172.27.0.1', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 2, 'transport.server', 'SEATA_GROUP', '', 'NIO', 'b6d9dfc0fb54277321cebc0fff55df2f', '2021-09-20 13:41:07', '2021-09-20 00:41:08', '', '172.27.0.1', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 3, 'transport.heartbeat', 'SEATA_GROUP', '', 'true', 'b326b5062b2f0e69046810717534cb09', '2021-09-20 13:41:08', '2021-09-20 00:41:08', '', '172.27.0.1', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 4, 'transport.enableClientBatchSendRequest', 'SEATA_GROUP', '', 'false', '68934a3e9455fa72420237eb05902327', '2021-09-20 13:41:08', '2021-09-20 00:41:08', '', '172.27.0.1', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 5, 'transport.threadFactory.bossThreadPrefix', 'SEATA_GROUP', '', 'NettyBoss', '0f8db59a3b7f2823f38a70c308361836', '2021-09-20 13:41:08', '2021-09-20 00:41:09', '', '172.27.0.1', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 6, 'transport.threadFactory.workerThreadPrefix', 'SEATA_GROUP', '', 'NettyServerNIOWorker', 'a78ec7ef5d1631754c4e72ae8a3e9205', '2021-09-20 13:41:08', '2021-09-20 00:41:09', '', '172.27.0.1', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 7, 'transport.threadFactory.serverExecutorThreadPrefix', 'SEATA_GROUP', '', 'NettyServerBizHandler', '11a36309f3d9df84fa8b59cf071fa2da', '2021-09-20 13:41:08', '2021-09-20 00:41:09', '', '172.27.0.1', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 8, 'transport.threadFactory.shareBossWorker', 'SEATA_GROUP', '', 'false', '68934a3e9455fa72420237eb05902327', '2021-09-20 13:41:09', '2021-09-20 00:41:09', '', '172.27.0.1', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 9, 'transport.threadFactory.clientSelectorThreadPrefix', 'SEATA_GROUP', '', 'NettyClientSelector', 'cd7ec5a06541e75f5a7913752322c3af', '2021-09-20 13:41:09', '2021-09-20 00:41:09', '', '172.27.0.1', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 10, 'transport.threadFactory.clientSelectorThreadSize', 'SEATA_GROUP', '', '1', 'c4ca4238a0b923820dcc509a6f75849b', '2021-09-20 13:41:09', '2021-09-20 00:41:09', '', '172.27.0.1', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 11, 'transport.threadFactory.clientWorkerThreadPrefix', 'SEATA_GROUP', '', 'NettyClientWorkerThread', '61cf4e69a56354cf72f46dc86414a57e', '2021-09-20 13:41:09', '2021-09-20 00:41:10', '', '172.27.0.1', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 12, 'transport.threadFactory.bossThreadSize', 'SEATA_GROUP', '', '1', 'c4ca4238a0b923820dcc509a6f75849b', '2021-09-20 13:41:09', '2021-09-20 00:41:10', '', '172.27.0.1', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 13, 'transport.threadFactory.workerThreadSize', 'SEATA_GROUP', '', 'default', 'c21f969b5f03d33d43e04f8f136e7682', '2021-09-20 13:41:09', '2021-09-20 00:41:10', '', '172.27.0.1', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 14, 'transport.shutdown.wait', 'SEATA_GROUP', '', '3', 'eccbc87e4b5ce2fe28308fd9f2a7baf3', '2021-09-20 13:41:10', '2021-09-20 00:41:10', '', '172.27.0.1', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 15, 'service.vgroupMapping.my_test_tx_group', 'SEATA_GROUP', '', 'default', 'c21f969b5f03d33d43e04f8f136e7682', '2021-09-20 13:41:10', '2021-09-20 00:41:10', '', '172.27.0.1', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 16, 'service.default.grouplist', 'SEATA_GROUP', '', '127.0.0.1:8091', 'c32ce0d3e264525dcdada751f98143a3', '2021-09-20 13:41:10', '2021-09-20 00:41:10', '', '172.27.0.1', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 17, 'service.enableDegrade', 'SEATA_GROUP', '', 'false', '68934a3e9455fa72420237eb05902327', '2021-09-20 13:41:10', '2021-09-20 00:41:10', '', '172.27.0.1', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 18, 'service.disableGlobalTransaction', 'SEATA_GROUP', '', 'false', '68934a3e9455fa72420237eb05902327', '2021-09-20 13:41:10', '2021-09-20 00:41:11', '', '172.27.0.1', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 19, 'client.rm.asyncCommitBufferLimit', 'SEATA_GROUP', '', '10000', 'b7a782741f667201b54880c925faec4b', '2021-09-20 13:41:10', '2021-09-20 00:41:11', '', '172.27.0.1', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 20, 'client.rm.lock.retryInterval', 'SEATA_GROUP', '', '10', 'd3d9446802a44259755d38e6d163e820', '2021-09-20 13:41:10', '2021-09-20 00:41:11', '', '172.27.0.1', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 21, 'client.rm.lock.retryTimes', 'SEATA_GROUP', '', '30', '34173cb38f07f89ddbebc2ac9128303f', '2021-09-20 13:41:11', '2021-09-20 00:41:11', '', '172.27.0.1', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 22, 'client.rm.lock.retryPolicyBranchRollbackOnConflict', 'SEATA_GROUP', '', 'true', 'b326b5062b2f0e69046810717534cb09', '2021-09-20 13:41:11', '2021-09-20 00:41:11', '', '172.27.0.1', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 23, 'client.rm.reportRetryCount', 'SEATA_GROUP', '', '5', 'e4da3b7fbbce2345d7772b0674a318d5', '2021-09-20 13:41:11', '2021-09-20 00:41:11', '', '172.27.0.1', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 24, 'client.rm.tableMetaCheckEnable', 'SEATA_GROUP', '', 'false', '68934a3e9455fa72420237eb05902327', '2021-09-20 13:41:11', '2021-09-20 00:41:12', '', '172.27.0.1', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 25, 'client.rm.tableMetaCheckerInterval', 'SEATA_GROUP', '', '60000', '2b4226dd7ed6eb2d419b881f3ae9c97c', '2021-09-20 13:41:11', '2021-09-20 00:41:12', '', '172.27.0.1', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 26, 'client.rm.sqlParserType', 'SEATA_GROUP', '', 'druid', '3d650fb8a5df01600281d48c47c9fa60', '2021-09-20 13:41:11', '2021-09-20 00:41:12', '', '172.27.0.1', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 27, 'client.rm.reportSuccessEnable', 'SEATA_GROUP', '', 'false', '68934a3e9455fa72420237eb05902327', '2021-09-20 13:41:12', '2021-09-20 00:41:12', '', '172.27.0.1', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 28, 'client.rm.sagaBranchRegisterEnable', 'SEATA_GROUP', '', 'false', '68934a3e9455fa72420237eb05902327', '2021-09-20 13:41:12', '2021-09-20 00:41:12', '', '172.27.0.1', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 29, 'client.tm.commitRetryCount', 'SEATA_GROUP', '', '5', 'e4da3b7fbbce2345d7772b0674a318d5', '2021-09-20 13:41:12', '2021-09-20 00:41:12', '', '172.27.0.1', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 30, 'client.tm.rollbackRetryCount', 'SEATA_GROUP', '', '5', 'e4da3b7fbbce2345d7772b0674a318d5', '2021-09-20 13:41:12', '2021-09-20 00:41:13', '', '172.27.0.1', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 31, 'client.tm.defaultGlobalTransactionTimeout', 'SEATA_GROUP', '', '60000', '2b4226dd7ed6eb2d419b881f3ae9c97c', '2021-09-20 13:41:12', '2021-09-20 00:41:13', '', '172.27.0.1', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 32, 'client.tm.degradeCheck', 'SEATA_GROUP', '', 'false', '68934a3e9455fa72420237eb05902327', '2021-09-20 13:41:12', '2021-09-20 00:41:13', '', '172.27.0.1', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 33, 'client.tm.degradeCheckAllowTimes', 'SEATA_GROUP', '', '10', 'd3d9446802a44259755d38e6d163e820', '2021-09-20 13:41:13', '2021-09-20 00:41:13', '', '172.27.0.1', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 34, 'client.tm.degradeCheckPeriod', 'SEATA_GROUP', '', '2000', '08f90c1a417155361a5c4b8d297e0d78', '2021-09-20 13:41:13', '2021-09-20 00:41:13', '', '172.27.0.1', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 35, 'store.mode', 'SEATA_GROUP', '', 'db', 'd77d5e503ad1439f585ac494268b351b', '2021-09-20 13:41:13', '2021-09-20 00:41:13', '', '172.27.0.1', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 36, 'store.file.dir', 'SEATA_GROUP', '', 'file_store/data', '6a8dec07c44c33a8a9247cba5710bbb2', '2021-09-20 13:41:13', '2021-09-20 00:41:14', '', '172.27.0.1', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 37, 'store.file.maxBranchSessionSize', 'SEATA_GROUP', '', '16384', 'c76fe1d8e08462434d800487585be217', '2021-09-20 13:41:13', '2021-09-20 00:41:14', '', '172.27.0.1', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 38, 'store.file.maxGlobalSessionSize', 'SEATA_GROUP', '', '512', '10a7cdd970fe135cf4f7bb55c0e3b59f', '2021-09-20 13:41:13', '2021-09-20 00:41:14', '', '172.27.0.1', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 39, 'store.file.fileWriteBufferCacheSize', 'SEATA_GROUP', '', '16384', 'c76fe1d8e08462434d800487585be217', '2021-09-20 13:41:14', '2021-09-20 00:41:14', '', '172.27.0.1', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 40, 'store.file.flushDiskMode', 'SEATA_GROUP', '', 'async', '0df93e34273b367bb63bad28c94c78d5', '2021-09-20 13:41:14', '2021-09-20 00:41:14', '', '172.27.0.1', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 41, 'store.file.sessionReloadReadSize', 'SEATA_GROUP', '', '100', 'f899139df5e1059396431415e770c6dd', '2021-09-20 13:41:14', '2021-09-20 00:41:14', '', '172.27.0.1', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 42, 'store.db.datasource', 'SEATA_GROUP', '', 'druid', '3d650fb8a5df01600281d48c47c9fa60', '2021-09-20 13:41:14', '2021-09-20 00:41:15', '', '172.27.0.1', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 43, 'store.db.dbType', 'SEATA_GROUP', '', 'mysql', '81c3b080dad537de7e10e0987a4bf52e', '2021-09-20 13:41:14', '2021-09-20 00:41:15', '', '172.27.0.1', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 44, 'store.db.driverClassName', 'SEATA_GROUP', '', 'com.mysql.cj.jdbc.Driver', '33763409bb7f4838bde4fae9540433e4', '2021-09-20 13:41:14', '2021-09-20 00:41:15', '', '172.27.0.1', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 45, 'store.db.url', 'SEATA_GROUP', '', 'jdbc:mysql://127.0.0.1:3306/seata?useUnicode=true&rewriteBatchedStatements=true', '030ea5ff5c2ef043adf9826c70570b0b', '2021-09-20 13:41:15', '2021-09-20 00:41:15', '', '172.27.0.1', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 46, 'store.db.user', 'SEATA_GROUP', '', 'root', '63a9f0ea7bb98050796b649e85481845', '2021-09-20 13:41:15', '2021-09-20 00:41:15', '', '172.27.0.1', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 47, 'store.db.password', 'SEATA_GROUP', '', 'root', '63a9f0ea7bb98050796b649e85481845', '2021-09-20 13:41:15', '2021-09-20 00:41:15', '', '172.27.0.1', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 48, 'store.db.minConn', 'SEATA_GROUP', '', '5', 'e4da3b7fbbce2345d7772b0674a318d5', '2021-09-20 13:41:15', '2021-09-20 00:41:16', '', '172.27.0.1', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 49, 'store.db.maxConn', 'SEATA_GROUP', '', '30', '34173cb38f07f89ddbebc2ac9128303f', '2021-09-20 13:41:15', '2021-09-20 00:41:16', '', '172.27.0.1', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 50, 'store.db.globalTable', 'SEATA_GROUP', '', 'global_table', '8b28fb6bb4c4f984df2709381f8eba2b', '2021-09-20 13:41:15', '2021-09-20 00:41:16', '', '172.27.0.1', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 51, 'store.db.branchTable', 'SEATA_GROUP', '', 'branch_table', '54bcdac38cf62e103fe115bcf46a660c', '2021-09-20 13:41:16', '2021-09-20 00:41:16', '', '172.27.0.1', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 52, 'store.db.queryLimit', 'SEATA_GROUP', '', '100', 'f899139df5e1059396431415e770c6dd', '2021-09-20 13:41:16', '2021-09-20 00:41:16', '', '172.27.0.1', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 53, 'store.db.lockTable', 'SEATA_GROUP', '', 'lock_table', '55e0cae3b6dc6696b768db90098b8f2f', '2021-09-20 13:41:16', '2021-09-20 00:41:16', '', '172.27.0.1', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 54, 'store.db.maxWait', 'SEATA_GROUP', '', '5000', 'a35fe7f7fe8217b4369a0af4244d1fca', '2021-09-20 13:41:16', '2021-09-20 00:41:17', '', '172.27.0.1', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 55, 'store.redis.mode', 'SEATA_GROUP', '', 'single', 'dd5c07036f2975ff4bce568b6511d3bc', '2021-09-20 13:41:16', '2021-09-20 00:41:17', '', '172.27.0.1', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 56, 'store.redis.single.host', 'SEATA_GROUP', '', '127.0.0.1', 'f528764d624db129b32c21fbca0cb8d6', '2021-09-20 13:41:16', '2021-09-20 00:41:17', '', '172.27.0.1', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 57, 'store.redis.single.port', 'SEATA_GROUP', '', '6379', '92c3b916311a5517d9290576e3ea37ad', '2021-09-20 13:41:17', '2021-09-20 00:41:17', '', '172.27.0.1', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 58, 'store.redis.maxConn', 'SEATA_GROUP', '', '10', 'd3d9446802a44259755d38e6d163e820', '2021-09-20 13:41:17', '2021-09-20 00:41:18', '', '172.27.0.1', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 59, 'store.redis.minConn', 'SEATA_GROUP', '', '1', 'c4ca4238a0b923820dcc509a6f75849b', '2021-09-20 13:41:17', '2021-09-20 00:41:18', '', '172.27.0.1', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 60, 'store.redis.maxTotal', 'SEATA_GROUP', '', '100', 'f899139df5e1059396431415e770c6dd', '2021-09-20 13:41:17', '2021-09-20 00:41:18', '', '172.27.0.1', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 61, 'store.redis.database', 'SEATA_GROUP', '', '0', 'cfcd208495d565ef66e7dff9f98764da', '2021-09-20 13:41:17', '2021-09-20 00:41:18', '', '172.27.0.1', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 62, 'store.redis.queryLimit', 'SEATA_GROUP', '', '100', 'f899139df5e1059396431415e770c6dd', '2021-09-20 13:41:18', '2021-09-20 00:41:18', '', '172.27.0.1', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 63, 'server.recovery.committingRetryPeriod', 'SEATA_GROUP', '', '1000', 'a9b7ba70783b617e9998dc4dd82eb3c5', '2021-09-20 13:41:18', '2021-09-20 00:41:18', '', '172.27.0.1', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 64, 'server.recovery.asynCommittingRetryPeriod', 'SEATA_GROUP', '', '1000', 'a9b7ba70783b617e9998dc4dd82eb3c5', '2021-09-20 13:41:18', '2021-09-20 00:41:19', '', '172.27.0.1', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 65, 'server.recovery.rollbackingRetryPeriod', 'SEATA_GROUP', '', '1000', 'a9b7ba70783b617e9998dc4dd82eb3c5', '2021-09-20 13:41:18', '2021-09-20 00:41:19', '', '172.27.0.1', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 66, 'server.recovery.timeoutRetryPeriod', 'SEATA_GROUP', '', '1000', 'a9b7ba70783b617e9998dc4dd82eb3c5', '2021-09-20 13:41:18', '2021-09-20 00:41:19', '', '172.27.0.1', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 67, 'server.maxCommitRetryTimeout', 'SEATA_GROUP', '', '-1', '6bb61e3b7bce0931da574d19d1d82c88', '2021-09-20 13:41:19', '2021-09-20 00:41:19', '', '172.27.0.1', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 68, 'server.maxRollbackRetryTimeout', 'SEATA_GROUP', '', '-1', '6bb61e3b7bce0931da574d19d1d82c88', '2021-09-20 13:41:19', '2021-09-20 00:41:19', '', '172.27.0.1', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 69, 'server.rollbackRetryTimeoutUnlockEnable', 'SEATA_GROUP', '', 'false', '68934a3e9455fa72420237eb05902327', '2021-09-20 13:41:19', '2021-09-20 00:41:19', '', '172.27.0.1', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 70, 'client.undo.dataValidation', 'SEATA_GROUP', '', 'true', 'b326b5062b2f0e69046810717534cb09', '2021-09-20 13:41:19', '2021-09-20 00:41:19', '', '172.27.0.1', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 71, 'client.undo.logSerialization', 'SEATA_GROUP', '', 'jackson', 'b41779690b83f182acc67d6388c7bac9', '2021-09-20 13:41:19', '2021-09-20 00:41:20', '', '172.27.0.1', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 72, 'client.undo.onlyCareUpdateColumns', 'SEATA_GROUP', '', 'true', 'b326b5062b2f0e69046810717534cb09', '2021-09-20 13:41:19', '2021-09-20 00:41:20', '', '172.27.0.1', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 73, 'server.undo.logSaveDays', 'SEATA_GROUP', '', '7', '8f14e45fceea167a5a36dedd4bea2543', '2021-09-20 13:41:19', '2021-09-20 00:41:20', '', '172.27.0.1', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 74, 'server.undo.logDeletePeriod', 'SEATA_GROUP', '', '86400000', 'f4c122804fe9076cb2710f55c3c6e346', '2021-09-20 13:41:20', '2021-09-20 00:41:20', '', '172.27.0.1', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 75, 'client.undo.logTable', 'SEATA_GROUP', '', 'undo_log', '2842d229c24afe9e61437135e8306614', '2021-09-20 13:41:20', '2021-09-20 00:41:20', '', '172.27.0.1', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 76, 'client.undo.compress.enable', 'SEATA_GROUP', '', 'true', 'b326b5062b2f0e69046810717534cb09', '2021-09-20 13:41:20', '2021-09-20 00:41:20', '', '172.27.0.1', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 77, 'client.undo.compress.type', 'SEATA_GROUP', '', 'zip', 'adcdbd79a8d84175c229b192aadc02f2', '2021-09-20 13:41:20', '2021-09-20 00:41:21', '', '172.27.0.1', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 78, 'client.undo.compress.threshold', 'SEATA_GROUP', '', '64k', 'bd44a6458bdbff0b5cac721ba361f035', '2021-09-20 13:41:20', '2021-09-20 00:41:21', '', '172.27.0.1', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 79, 'log.exceptionRate', 'SEATA_GROUP', '', '100', 'f899139df5e1059396431415e770c6dd', '2021-09-20 13:41:20', '2021-09-20 00:41:21', '', '172.27.0.1', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 80, 'transport.serialization', 'SEATA_GROUP', '', 'seata', 'b943081c423b9a5416a706524ee05d40', '2021-09-20 13:41:21', '2021-09-20 00:41:21', '', '172.27.0.1', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 81, 'transport.compressor', 'SEATA_GROUP', '', 'none', '334c4a4c42fdb79d7ebc3e73b517e6f8', '2021-09-20 13:41:21', '2021-09-20 00:41:21', '', '172.27.0.1', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 82, 'metrics.enabled', 'SEATA_GROUP', '', 'false', '68934a3e9455fa72420237eb05902327', '2021-09-20 13:41:21', '2021-09-20 00:41:21', '', '172.27.0.1', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 83, 'metrics.registryType', 'SEATA_GROUP', '', 'compact', '7cf74ca49c304df8150205fc915cd465', '2021-09-20 13:41:21', '2021-09-20 00:41:22', '', '172.27.0.1', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 84, 'metrics.exporterList', 'SEATA_GROUP', '', 'prometheus', 'e4f00638b8a10e6994e67af2f832d51c', '2021-09-20 13:41:21', '2021-09-20 00:41:22', '', '172.27.0.1', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 85, 'metrics.exporterPrometheusPort', 'SEATA_GROUP', '', '9898', '7b9dc501afe4ee11c56a4831e20cee71', '2021-09-20 13:41:21', '2021-09-20 00:41:22', '', '172.27.0.1', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 86, 'transport.type', 'SEATA_GROUP', '', 'TCP', 'b136ef5f6a01d816991fe3cf7a6ac763', '2021-09-20 21:58:10', '2021-09-20 08:58:11', '', '172.18.0.1', 'I', '');
INSERT INTO `his_config_info` VALUES (0, 87, 'transport.server', 'SEATA_GROUP', '', 'NIO', 'b6d9dfc0fb54277321cebc0fff55df2f', '2021-09-20 21:58:10', '2021-09-20 08:58:11', '', '172.18.0.1', 'I', '');
INSERT INTO `his_config_info` VALUES (1, 88, 'transport.type', 'SEATA_GROUP', '', 'TCP', 'b136ef5f6a01d816991fe3cf7a6ac763', '2021-09-20 21:58:23', '2021-09-20 08:58:23', '', '172.18.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (2, 89, 'transport.server', 'SEATA_GROUP', '', 'NIO', 'b6d9dfc0fb54277321cebc0fff55df2f', '2021-09-20 21:58:23', '2021-09-20 08:58:24', '', '172.18.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (3, 90, 'transport.heartbeat', 'SEATA_GROUP', '', 'true', 'b326b5062b2f0e69046810717534cb09', '2021-09-20 21:58:23', '2021-09-20 08:58:24', '', '172.18.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (4, 91, 'transport.enableClientBatchSendRequest', 'SEATA_GROUP', '', 'false', '68934a3e9455fa72420237eb05902327', '2021-09-20 21:58:23', '2021-09-20 08:58:24', '', '172.18.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (5, 92, 'transport.threadFactory.bossThreadPrefix', 'SEATA_GROUP', '', 'NettyBoss', '0f8db59a3b7f2823f38a70c308361836', '2021-09-20 21:58:24', '2021-09-20 08:58:24', '', '172.18.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (6, 93, 'transport.threadFactory.workerThreadPrefix', 'SEATA_GROUP', '', 'NettyServerNIOWorker', 'a78ec7ef5d1631754c4e72ae8a3e9205', '2021-09-20 21:58:24', '2021-09-20 08:58:24', '', '172.18.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (7, 94, 'transport.threadFactory.serverExecutorThreadPrefix', 'SEATA_GROUP', '', 'NettyServerBizHandler', '11a36309f3d9df84fa8b59cf071fa2da', '2021-09-20 21:58:24', '2021-09-20 08:58:25', '', '172.18.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (8, 95, 'transport.threadFactory.shareBossWorker', 'SEATA_GROUP', '', 'false', '68934a3e9455fa72420237eb05902327', '2021-09-20 21:58:24', '2021-09-20 08:58:25', '', '172.18.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (9, 96, 'transport.threadFactory.clientSelectorThreadPrefix', 'SEATA_GROUP', '', 'NettyClientSelector', 'cd7ec5a06541e75f5a7913752322c3af', '2021-09-20 21:58:24', '2021-09-20 08:58:25', '', '172.18.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (10, 97, 'transport.threadFactory.clientSelectorThreadSize', 'SEATA_GROUP', '', '1', 'c4ca4238a0b923820dcc509a6f75849b', '2021-09-20 21:58:25', '2021-09-20 08:58:25', '', '172.18.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (11, 98, 'transport.threadFactory.clientWorkerThreadPrefix', 'SEATA_GROUP', '', 'NettyClientWorkerThread', '61cf4e69a56354cf72f46dc86414a57e', '2021-09-20 21:58:25', '2021-09-20 08:58:25', '', '172.18.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (12, 99, 'transport.threadFactory.bossThreadSize', 'SEATA_GROUP', '', '1', 'c4ca4238a0b923820dcc509a6f75849b', '2021-09-20 21:58:25', '2021-09-20 08:58:26', '', '172.18.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (13, 100, 'transport.threadFactory.workerThreadSize', 'SEATA_GROUP', '', 'default', 'c21f969b5f03d33d43e04f8f136e7682', '2021-09-20 21:58:25', '2021-09-20 08:58:26', '', '172.18.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (14, 101, 'transport.shutdown.wait', 'SEATA_GROUP', '', '3', 'eccbc87e4b5ce2fe28308fd9f2a7baf3', '2021-09-20 21:58:26', '2021-09-20 08:58:26', '', '172.18.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (15, 102, 'service.vgroupMapping.my_test_tx_group', 'SEATA_GROUP', '', 'default', 'c21f969b5f03d33d43e04f8f136e7682', '2021-09-20 21:58:26', '2021-09-20 08:58:27', '', '172.18.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (16, 103, 'service.default.grouplist', 'SEATA_GROUP', '', '127.0.0.1:8091', 'c32ce0d3e264525dcdada751f98143a3', '2021-09-20 21:58:26', '2021-09-20 08:58:27', '', '172.18.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (17, 104, 'service.enableDegrade', 'SEATA_GROUP', '', 'false', '68934a3e9455fa72420237eb05902327', '2021-09-20 21:58:27', '2021-09-20 08:58:27', '', '172.18.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (18, 105, 'service.disableGlobalTransaction', 'SEATA_GROUP', '', 'false', '68934a3e9455fa72420237eb05902327', '2021-09-20 21:58:27', '2021-09-20 08:58:27', '', '172.18.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (19, 106, 'client.rm.asyncCommitBufferLimit', 'SEATA_GROUP', '', '10000', 'b7a782741f667201b54880c925faec4b', '2021-09-20 21:58:27', '2021-09-20 08:58:27', '', '172.18.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (20, 107, 'client.rm.lock.retryInterval', 'SEATA_GROUP', '', '10', 'd3d9446802a44259755d38e6d163e820', '2021-09-20 21:58:27', '2021-09-20 08:58:28', '', '172.18.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (21, 108, 'client.rm.lock.retryTimes', 'SEATA_GROUP', '', '30', '34173cb38f07f89ddbebc2ac9128303f', '2021-09-20 21:58:27', '2021-09-20 08:58:28', '', '172.18.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (22, 109, 'client.rm.lock.retryPolicyBranchRollbackOnConflict', 'SEATA_GROUP', '', 'true', 'b326b5062b2f0e69046810717534cb09', '2021-09-20 21:58:27', '2021-09-20 08:58:28', '', '172.18.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (23, 110, 'client.rm.reportRetryCount', 'SEATA_GROUP', '', '5', 'e4da3b7fbbce2345d7772b0674a318d5', '2021-09-20 21:58:28', '2021-09-20 08:58:28', '', '172.18.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (24, 111, 'client.rm.tableMetaCheckEnable', 'SEATA_GROUP', '', 'false', '68934a3e9455fa72420237eb05902327', '2021-09-20 21:58:28', '2021-09-20 08:58:28', '', '172.18.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (25, 112, 'client.rm.tableMetaCheckerInterval', 'SEATA_GROUP', '', '60000', '2b4226dd7ed6eb2d419b881f3ae9c97c', '2021-09-20 21:58:28', '2021-09-20 08:58:29', '', '172.18.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (26, 113, 'client.rm.sqlParserType', 'SEATA_GROUP', '', 'druid', '3d650fb8a5df01600281d48c47c9fa60', '2021-09-20 21:58:28', '2021-09-20 08:58:29', '', '172.18.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (27, 114, 'client.rm.reportSuccessEnable', 'SEATA_GROUP', '', 'false', '68934a3e9455fa72420237eb05902327', '2021-09-20 21:58:28', '2021-09-20 08:58:29', '', '172.18.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (28, 115, 'client.rm.sagaBranchRegisterEnable', 'SEATA_GROUP', '', 'false', '68934a3e9455fa72420237eb05902327', '2021-09-20 21:58:29', '2021-09-20 08:58:30', '', '172.18.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (29, 116, 'client.tm.commitRetryCount', 'SEATA_GROUP', '', '5', 'e4da3b7fbbce2345d7772b0674a318d5', '2021-09-20 21:58:29', '2021-09-20 08:58:30', '', '172.18.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (30, 117, 'client.tm.rollbackRetryCount', 'SEATA_GROUP', '', '5', 'e4da3b7fbbce2345d7772b0674a318d5', '2021-09-20 21:58:29', '2021-09-20 08:58:30', '', '172.18.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (31, 118, 'client.tm.defaultGlobalTransactionTimeout', 'SEATA_GROUP', '', '60000', '2b4226dd7ed6eb2d419b881f3ae9c97c', '2021-09-20 21:58:30', '2021-09-20 08:58:30', '', '172.18.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (32, 119, 'client.tm.degradeCheck', 'SEATA_GROUP', '', 'false', '68934a3e9455fa72420237eb05902327', '2021-09-20 21:58:30', '2021-09-20 08:58:30', '', '172.18.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (33, 120, 'client.tm.degradeCheckAllowTimes', 'SEATA_GROUP', '', '10', 'd3d9446802a44259755d38e6d163e820', '2021-09-20 21:58:30', '2021-09-20 08:58:31', '', '172.18.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (34, 121, 'client.tm.degradeCheckPeriod', 'SEATA_GROUP', '', '2000', '08f90c1a417155361a5c4b8d297e0d78', '2021-09-20 21:58:30', '2021-09-20 08:58:31', '', '172.18.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (35, 122, 'store.mode', 'SEATA_GROUP', '', 'db', 'd77d5e503ad1439f585ac494268b351b', '2021-09-20 21:58:30', '2021-09-20 08:58:31', '', '172.18.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (36, 123, 'store.file.dir', 'SEATA_GROUP', '', 'file_store/data', '6a8dec07c44c33a8a9247cba5710bbb2', '2021-09-20 21:58:31', '2021-09-20 08:58:31', '', '172.18.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (37, 124, 'store.file.maxBranchSessionSize', 'SEATA_GROUP', '', '16384', 'c76fe1d8e08462434d800487585be217', '2021-09-20 21:58:31', '2021-09-20 08:58:31', '', '172.18.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (38, 125, 'store.file.maxGlobalSessionSize', 'SEATA_GROUP', '', '512', '10a7cdd970fe135cf4f7bb55c0e3b59f', '2021-09-20 21:58:31', '2021-09-20 08:58:32', '', '172.18.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (39, 126, 'store.file.fileWriteBufferCacheSize', 'SEATA_GROUP', '', '16384', 'c76fe1d8e08462434d800487585be217', '2021-09-20 21:58:31', '2021-09-20 08:58:32', '', '172.18.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (40, 127, 'store.file.flushDiskMode', 'SEATA_GROUP', '', 'async', '0df93e34273b367bb63bad28c94c78d5', '2021-09-20 21:58:31', '2021-09-20 08:58:32', '', '172.18.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (41, 128, 'store.file.sessionReloadReadSize', 'SEATA_GROUP', '', '100', 'f899139df5e1059396431415e770c6dd', '2021-09-20 21:58:32', '2021-09-20 08:58:32', '', '172.18.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (42, 129, 'store.db.datasource', 'SEATA_GROUP', '', 'druid', '3d650fb8a5df01600281d48c47c9fa60', '2021-09-20 21:58:32', '2021-09-20 08:58:32', '', '172.18.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (43, 130, 'store.db.dbType', 'SEATA_GROUP', '', 'mysql', '81c3b080dad537de7e10e0987a4bf52e', '2021-09-20 21:58:32', '2021-09-20 08:58:32', '', '172.18.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (44, 131, 'store.db.driverClassName', 'SEATA_GROUP', '', 'com.mysql.cj.jdbc.Driver', '33763409bb7f4838bde4fae9540433e4', '2021-09-20 21:58:32', '2021-09-20 08:58:33', '', '172.18.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (45, 132, 'store.db.url', 'SEATA_GROUP', '', 'jdbc:mysql://127.0.0.1:3306/seata?useUnicode=true&rewriteBatchedStatements=true', '030ea5ff5c2ef043adf9826c70570b0b', '2021-09-20 21:58:32', '2021-09-20 08:58:33', '', '172.18.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (46, 133, 'store.db.user', 'SEATA_GROUP', '', 'root', '63a9f0ea7bb98050796b649e85481845', '2021-09-20 21:58:33', '2021-09-20 08:58:33', '', '172.18.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (47, 134, 'store.db.password', 'SEATA_GROUP', '', 'root', '63a9f0ea7bb98050796b649e85481845', '2021-09-20 21:58:33', '2021-09-20 08:58:33', '', '172.18.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (48, 135, 'store.db.minConn', 'SEATA_GROUP', '', '5', 'e4da3b7fbbce2345d7772b0674a318d5', '2021-09-20 21:58:33', '2021-09-20 08:58:33', '', '172.18.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (49, 136, 'store.db.maxConn', 'SEATA_GROUP', '', '30', '34173cb38f07f89ddbebc2ac9128303f', '2021-09-20 21:58:33', '2021-09-20 08:58:34', '', '172.18.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (50, 137, 'store.db.globalTable', 'SEATA_GROUP', '', 'global_table', '8b28fb6bb4c4f984df2709381f8eba2b', '2021-09-20 21:58:33', '2021-09-20 08:58:34', '', '172.18.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (51, 138, 'store.db.branchTable', 'SEATA_GROUP', '', 'branch_table', '54bcdac38cf62e103fe115bcf46a660c', '2021-09-20 21:58:34', '2021-09-20 08:58:34', '', '172.18.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (52, 139, 'store.db.queryLimit', 'SEATA_GROUP', '', '100', 'f899139df5e1059396431415e770c6dd', '2021-09-20 21:58:34', '2021-09-20 08:58:34', '', '172.18.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (53, 140, 'store.db.lockTable', 'SEATA_GROUP', '', 'lock_table', '55e0cae3b6dc6696b768db90098b8f2f', '2021-09-20 21:58:34', '2021-09-20 08:58:34', '', '172.18.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (54, 141, 'store.db.maxWait', 'SEATA_GROUP', '', '5000', 'a35fe7f7fe8217b4369a0af4244d1fca', '2021-09-20 21:58:34', '2021-09-20 08:58:35', '', '172.18.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (55, 142, 'store.redis.mode', 'SEATA_GROUP', '', 'single', 'dd5c07036f2975ff4bce568b6511d3bc', '2021-09-20 21:58:34', '2021-09-20 08:58:35', '', '172.18.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (56, 143, 'store.redis.single.host', 'SEATA_GROUP', '', '127.0.0.1', 'f528764d624db129b32c21fbca0cb8d6', '2021-09-20 21:58:35', '2021-09-20 08:58:35', '', '172.18.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (57, 144, 'store.redis.single.port', 'SEATA_GROUP', '', '6379', '92c3b916311a5517d9290576e3ea37ad', '2021-09-20 21:58:35', '2021-09-20 08:58:35', '', '172.18.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (58, 145, 'store.redis.maxConn', 'SEATA_GROUP', '', '10', 'd3d9446802a44259755d38e6d163e820', '2021-09-20 21:58:35', '2021-09-20 08:58:36', '', '172.18.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (59, 146, 'store.redis.minConn', 'SEATA_GROUP', '', '1', 'c4ca4238a0b923820dcc509a6f75849b', '2021-09-20 21:58:35', '2021-09-20 08:58:36', '', '172.18.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (60, 147, 'store.redis.maxTotal', 'SEATA_GROUP', '', '100', 'f899139df5e1059396431415e770c6dd', '2021-09-20 21:58:36', '2021-09-20 08:58:36', '', '172.18.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (61, 148, 'store.redis.database', 'SEATA_GROUP', '', '0', 'cfcd208495d565ef66e7dff9f98764da', '2021-09-20 21:58:36', '2021-09-20 08:58:36', '', '172.18.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (62, 149, 'store.redis.queryLimit', 'SEATA_GROUP', '', '100', 'f899139df5e1059396431415e770c6dd', '2021-09-20 21:58:36', '2021-09-20 08:58:37', '', '172.18.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (63, 150, 'server.recovery.committingRetryPeriod', 'SEATA_GROUP', '', '1000', 'a9b7ba70783b617e9998dc4dd82eb3c5', '2021-09-20 21:58:36', '2021-09-20 08:58:37', '', '172.18.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (64, 151, 'server.recovery.asynCommittingRetryPeriod', 'SEATA_GROUP', '', '1000', 'a9b7ba70783b617e9998dc4dd82eb3c5', '2021-09-20 21:58:37', '2021-09-20 08:58:37', '', '172.18.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (65, 152, 'server.recovery.rollbackingRetryPeriod', 'SEATA_GROUP', '', '1000', 'a9b7ba70783b617e9998dc4dd82eb3c5', '2021-09-20 21:58:37', '2021-09-20 08:58:37', '', '172.18.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (66, 153, 'server.recovery.timeoutRetryPeriod', 'SEATA_GROUP', '', '1000', 'a9b7ba70783b617e9998dc4dd82eb3c5', '2021-09-20 21:58:37', '2021-09-20 08:58:37', '', '172.18.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (67, 154, 'server.maxCommitRetryTimeout', 'SEATA_GROUP', '', '-1', '6bb61e3b7bce0931da574d19d1d82c88', '2021-09-20 21:58:37', '2021-09-20 08:58:38', '', '172.18.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (68, 155, 'server.maxRollbackRetryTimeout', 'SEATA_GROUP', '', '-1', '6bb61e3b7bce0931da574d19d1d82c88', '2021-09-20 21:58:37', '2021-09-20 08:58:38', '', '172.18.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (69, 156, 'server.rollbackRetryTimeoutUnlockEnable', 'SEATA_GROUP', '', 'false', '68934a3e9455fa72420237eb05902327', '2021-09-20 21:58:37', '2021-09-20 08:58:38', '', '172.18.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (70, 157, 'client.undo.dataValidation', 'SEATA_GROUP', '', 'true', 'b326b5062b2f0e69046810717534cb09', '2021-09-20 21:58:38', '2021-09-20 08:58:38', '', '172.18.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (71, 158, 'client.undo.logSerialization', 'SEATA_GROUP', '', 'jackson', 'b41779690b83f182acc67d6388c7bac9', '2021-09-20 21:58:38', '2021-09-20 08:58:38', '', '172.18.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (72, 159, 'client.undo.onlyCareUpdateColumns', 'SEATA_GROUP', '', 'true', 'b326b5062b2f0e69046810717534cb09', '2021-09-20 21:58:38', '2021-09-20 08:58:39', '', '172.18.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (73, 160, 'server.undo.logSaveDays', 'SEATA_GROUP', '', '7', '8f14e45fceea167a5a36dedd4bea2543', '2021-09-20 21:58:38', '2021-09-20 08:58:39', '', '172.18.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (74, 161, 'server.undo.logDeletePeriod', 'SEATA_GROUP', '', '86400000', 'f4c122804fe9076cb2710f55c3c6e346', '2021-09-20 21:58:38', '2021-09-20 08:58:39', '', '172.18.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (75, 162, 'client.undo.logTable', 'SEATA_GROUP', '', 'undo_log', '2842d229c24afe9e61437135e8306614', '2021-09-20 21:58:39', '2021-09-20 08:58:39', '', '172.18.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (76, 163, 'client.undo.compress.enable', 'SEATA_GROUP', '', 'true', 'b326b5062b2f0e69046810717534cb09', '2021-09-20 21:58:39', '2021-09-20 08:58:39', '', '172.18.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (77, 164, 'client.undo.compress.type', 'SEATA_GROUP', '', 'zip', 'adcdbd79a8d84175c229b192aadc02f2', '2021-09-20 21:58:39', '2021-09-20 08:58:39', '', '172.18.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (78, 165, 'client.undo.compress.threshold', 'SEATA_GROUP', '', '64k', 'bd44a6458bdbff0b5cac721ba361f035', '2021-09-20 21:58:39', '2021-09-20 08:58:40', '', '172.18.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (79, 166, 'log.exceptionRate', 'SEATA_GROUP', '', '100', 'f899139df5e1059396431415e770c6dd', '2021-09-20 21:58:39', '2021-09-20 08:58:40', '', '172.18.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (80, 167, 'transport.serialization', 'SEATA_GROUP', '', 'seata', 'b943081c423b9a5416a706524ee05d40', '2021-09-20 21:58:40', '2021-09-20 08:58:40', '', '172.18.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (81, 168, 'transport.compressor', 'SEATA_GROUP', '', 'none', '334c4a4c42fdb79d7ebc3e73b517e6f8', '2021-09-20 21:58:40', '2021-09-20 08:58:40', '', '172.18.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (82, 169, 'metrics.enabled', 'SEATA_GROUP', '', 'false', '68934a3e9455fa72420237eb05902327', '2021-09-20 21:58:40', '2021-09-20 08:58:40', '', '172.18.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (83, 170, 'metrics.registryType', 'SEATA_GROUP', '', 'compact', '7cf74ca49c304df8150205fc915cd465', '2021-09-20 21:58:40', '2021-09-20 08:58:41', '', '172.18.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (86, 171, 'transport.type', 'SEATA_GROUP', '', 'TCP', 'b136ef5f6a01d816991fe3cf7a6ac763', '2021-09-20 21:58:40', '2021-09-20 08:58:41', NULL, '172.18.0.1', 'D', '');
INSERT INTO `his_config_info` VALUES (87, 172, 'transport.server', 'SEATA_GROUP', '', 'NIO', 'b6d9dfc0fb54277321cebc0fff55df2f', '2021-09-20 21:58:40', '2021-09-20 08:58:41', NULL, '172.18.0.1', 'D', '');
INSERT INTO `his_config_info` VALUES (84, 173, 'metrics.exporterList', 'SEATA_GROUP', '', 'prometheus', 'e4f00638b8a10e6994e67af2f832d51c', '2021-09-20 21:58:40', '2021-09-20 08:58:41', '', '172.18.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (85, 174, 'metrics.exporterPrometheusPort', 'SEATA_GROUP', '', '9898', '7b9dc501afe4ee11c56a4831e20cee71', '2021-09-20 21:58:40', '2021-09-20 08:58:41', '', '172.18.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (1, 175, 'transport.type', 'SEATA_GROUP', '', 'TCP', 'b136ef5f6a01d816991fe3cf7a6ac763', '2021-09-20 22:10:32', '2021-09-20 09:10:32', '', '172.20.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (2, 176, 'transport.server', 'SEATA_GROUP', '', 'NIO', 'b6d9dfc0fb54277321cebc0fff55df2f', '2021-09-20 22:10:32', '2021-09-20 09:10:33', '', '172.20.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (3, 177, 'transport.heartbeat', 'SEATA_GROUP', '', 'true', 'b326b5062b2f0e69046810717534cb09', '2021-09-20 22:10:32', '2021-09-20 09:10:33', '', '172.20.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (4, 178, 'transport.enableClientBatchSendRequest', 'SEATA_GROUP', '', 'false', '68934a3e9455fa72420237eb05902327', '2021-09-20 22:10:33', '2021-09-20 09:10:33', '', '172.20.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (5, 179, 'transport.threadFactory.bossThreadPrefix', 'SEATA_GROUP', '', 'NettyBoss', '0f8db59a3b7f2823f38a70c308361836', '2021-09-20 22:10:33', '2021-09-20 09:10:33', '', '172.20.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (6, 180, 'transport.threadFactory.workerThreadPrefix', 'SEATA_GROUP', '', 'NettyServerNIOWorker', 'a78ec7ef5d1631754c4e72ae8a3e9205', '2021-09-20 22:10:33', '2021-09-20 09:10:33', '', '172.20.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (7, 181, 'transport.threadFactory.serverExecutorThreadPrefix', 'SEATA_GROUP', '', 'NettyServerBizHandler', '11a36309f3d9df84fa8b59cf071fa2da', '2021-09-20 22:10:33', '2021-09-20 09:10:34', '', '172.20.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (8, 182, 'transport.threadFactory.shareBossWorker', 'SEATA_GROUP', '', 'false', '68934a3e9455fa72420237eb05902327', '2021-09-20 22:10:33', '2021-09-20 09:10:34', '', '172.20.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (9, 183, 'transport.threadFactory.clientSelectorThreadPrefix', 'SEATA_GROUP', '', 'NettyClientSelector', 'cd7ec5a06541e75f5a7913752322c3af', '2021-09-20 22:10:34', '2021-09-20 09:10:34', '', '172.20.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (10, 184, 'transport.threadFactory.clientSelectorThreadSize', 'SEATA_GROUP', '', '1', 'c4ca4238a0b923820dcc509a6f75849b', '2021-09-20 22:10:34', '2021-09-20 09:10:34', '', '172.20.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (11, 185, 'transport.threadFactory.clientWorkerThreadPrefix', 'SEATA_GROUP', '', 'NettyClientWorkerThread', '61cf4e69a56354cf72f46dc86414a57e', '2021-09-20 22:10:34', '2021-09-20 09:10:34', '', '172.20.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (12, 186, 'transport.threadFactory.bossThreadSize', 'SEATA_GROUP', '', '1', 'c4ca4238a0b923820dcc509a6f75849b', '2021-09-20 22:10:34', '2021-09-20 09:10:35', '', '172.20.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (13, 187, 'transport.threadFactory.workerThreadSize', 'SEATA_GROUP', '', 'default', 'c21f969b5f03d33d43e04f8f136e7682', '2021-09-20 22:10:34', '2021-09-20 09:10:35', '', '172.20.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (14, 188, 'transport.shutdown.wait', 'SEATA_GROUP', '', '3', 'eccbc87e4b5ce2fe28308fd9f2a7baf3', '2021-09-20 22:10:34', '2021-09-20 09:10:35', '', '172.20.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (15, 189, 'service.vgroupMapping.my_test_tx_group', 'SEATA_GROUP', '', 'default', 'c21f969b5f03d33d43e04f8f136e7682', '2021-09-20 22:10:35', '2021-09-20 09:10:35', '', '172.20.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (16, 190, 'service.default.grouplist', 'SEATA_GROUP', '', '127.0.0.1:8091', 'c32ce0d3e264525dcdada751f98143a3', '2021-09-20 22:10:35', '2021-09-20 09:10:35', '', '172.20.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (17, 191, 'service.enableDegrade', 'SEATA_GROUP', '', 'false', '68934a3e9455fa72420237eb05902327', '2021-09-20 22:10:35', '2021-09-20 09:10:36', '', '172.20.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (18, 192, 'service.disableGlobalTransaction', 'SEATA_GROUP', '', 'false', '68934a3e9455fa72420237eb05902327', '2021-09-20 22:10:35', '2021-09-20 09:10:36', '', '172.20.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (19, 193, 'client.rm.asyncCommitBufferLimit', 'SEATA_GROUP', '', '10000', 'b7a782741f667201b54880c925faec4b', '2021-09-20 22:10:35', '2021-09-20 09:10:36', '', '172.20.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (20, 194, 'client.rm.lock.retryInterval', 'SEATA_GROUP', '', '10', 'd3d9446802a44259755d38e6d163e820', '2021-09-20 22:10:36', '2021-09-20 09:10:36', '', '172.20.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (21, 195, 'client.rm.lock.retryTimes', 'SEATA_GROUP', '', '30', '34173cb38f07f89ddbebc2ac9128303f', '2021-09-20 22:10:36', '2021-09-20 09:10:36', '', '172.20.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (22, 196, 'client.rm.lock.retryPolicyBranchRollbackOnConflict', 'SEATA_GROUP', '', 'true', 'b326b5062b2f0e69046810717534cb09', '2021-09-20 22:10:36', '2021-09-20 09:10:37', '', '172.20.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (23, 197, 'client.rm.reportRetryCount', 'SEATA_GROUP', '', '5', 'e4da3b7fbbce2345d7772b0674a318d5', '2021-09-20 22:10:36', '2021-09-20 09:10:37', '', '172.20.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (24, 198, 'client.rm.tableMetaCheckEnable', 'SEATA_GROUP', '', 'false', '68934a3e9455fa72420237eb05902327', '2021-09-20 22:10:36', '2021-09-20 09:10:37', '', '172.20.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (25, 199, 'client.rm.tableMetaCheckerInterval', 'SEATA_GROUP', '', '60000', '2b4226dd7ed6eb2d419b881f3ae9c97c', '2021-09-20 22:10:37', '2021-09-20 09:10:37', '', '172.20.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (26, 200, 'client.rm.sqlParserType', 'SEATA_GROUP', '', 'druid', '3d650fb8a5df01600281d48c47c9fa60', '2021-09-20 22:10:37', '2021-09-20 09:10:37', '', '172.20.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (27, 201, 'client.rm.reportSuccessEnable', 'SEATA_GROUP', '', 'false', '68934a3e9455fa72420237eb05902327', '2021-09-20 22:10:37', '2021-09-20 09:10:38', '', '172.20.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (28, 202, 'client.rm.sagaBranchRegisterEnable', 'SEATA_GROUP', '', 'false', '68934a3e9455fa72420237eb05902327', '2021-09-20 22:10:37', '2021-09-20 09:10:38', '', '172.20.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (29, 203, 'client.tm.commitRetryCount', 'SEATA_GROUP', '', '5', 'e4da3b7fbbce2345d7772b0674a318d5', '2021-09-20 22:10:37', '2021-09-20 09:10:38', '', '172.20.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (30, 204, 'client.tm.rollbackRetryCount', 'SEATA_GROUP', '', '5', 'e4da3b7fbbce2345d7772b0674a318d5', '2021-09-20 22:10:38', '2021-09-20 09:10:38', '', '172.20.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (31, 205, 'client.tm.defaultGlobalTransactionTimeout', 'SEATA_GROUP', '', '60000', '2b4226dd7ed6eb2d419b881f3ae9c97c', '2021-09-20 22:10:38', '2021-09-20 09:10:38', '', '172.20.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (32, 206, 'client.tm.degradeCheck', 'SEATA_GROUP', '', 'false', '68934a3e9455fa72420237eb05902327', '2021-09-20 22:10:38', '2021-09-20 09:10:38', '', '172.20.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (33, 207, 'client.tm.degradeCheckAllowTimes', 'SEATA_GROUP', '', '10', 'd3d9446802a44259755d38e6d163e820', '2021-09-20 22:10:38', '2021-09-20 09:10:39', '', '172.20.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (34, 208, 'client.tm.degradeCheckPeriod', 'SEATA_GROUP', '', '2000', '08f90c1a417155361a5c4b8d297e0d78', '2021-09-20 22:10:38', '2021-09-20 09:10:39', '', '172.20.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (35, 209, 'store.mode', 'SEATA_GROUP', '', 'db', 'd77d5e503ad1439f585ac494268b351b', '2021-09-20 22:10:39', '2021-09-20 09:10:39', '', '172.20.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (36, 210, 'store.file.dir', 'SEATA_GROUP', '', 'file_store/data', '6a8dec07c44c33a8a9247cba5710bbb2', '2021-09-20 22:10:39', '2021-09-20 09:10:39', '', '172.20.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (37, 211, 'store.file.maxBranchSessionSize', 'SEATA_GROUP', '', '16384', 'c76fe1d8e08462434d800487585be217', '2021-09-20 22:10:39', '2021-09-20 09:10:40', '', '172.20.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (38, 212, 'store.file.maxGlobalSessionSize', 'SEATA_GROUP', '', '512', '10a7cdd970fe135cf4f7bb55c0e3b59f', '2021-09-20 22:10:39', '2021-09-20 09:10:40', '', '172.20.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (39, 213, 'store.file.fileWriteBufferCacheSize', 'SEATA_GROUP', '', '16384', 'c76fe1d8e08462434d800487585be217', '2021-09-20 22:10:40', '2021-09-20 09:10:40', '', '172.20.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (40, 214, 'store.file.flushDiskMode', 'SEATA_GROUP', '', 'async', '0df93e34273b367bb63bad28c94c78d5', '2021-09-20 22:10:40', '2021-09-20 09:10:40', '', '172.20.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (41, 215, 'store.file.sessionReloadReadSize', 'SEATA_GROUP', '', '100', 'f899139df5e1059396431415e770c6dd', '2021-09-20 22:10:40', '2021-09-20 09:10:40', '', '172.20.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (42, 216, 'store.db.datasource', 'SEATA_GROUP', '', 'druid', '3d650fb8a5df01600281d48c47c9fa60', '2021-09-20 22:10:40', '2021-09-20 09:10:41', '', '172.20.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (43, 217, 'store.db.dbType', 'SEATA_GROUP', '', 'mysql', '81c3b080dad537de7e10e0987a4bf52e', '2021-09-20 22:10:40', '2021-09-20 09:10:41', '', '172.20.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (44, 218, 'store.db.driverClassName', 'SEATA_GROUP', '', 'com.mysql.cj.jdbc.Driver', '33763409bb7f4838bde4fae9540433e4', '2021-09-20 22:10:41', '2021-09-20 09:10:41', '', '172.20.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (45, 219, 'store.db.url', 'SEATA_GROUP', '', 'jdbc:mysql://127.0.0.1:3306/seata?useUnicode=true&rewriteBatchedStatements=true', '030ea5ff5c2ef043adf9826c70570b0b', '2021-09-20 22:10:41', '2021-09-20 09:10:41', '', '172.20.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (46, 220, 'store.db.user', 'SEATA_GROUP', '', 'root', '63a9f0ea7bb98050796b649e85481845', '2021-09-20 22:10:41', '2021-09-20 09:10:41', '', '172.20.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (47, 221, 'store.db.password', 'SEATA_GROUP', '', 'root', '63a9f0ea7bb98050796b649e85481845', '2021-09-20 22:10:41', '2021-09-20 09:10:42', '', '172.20.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (48, 222, 'store.db.minConn', 'SEATA_GROUP', '', '5', 'e4da3b7fbbce2345d7772b0674a318d5', '2021-09-20 22:10:41', '2021-09-20 09:10:42', '', '172.20.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (49, 223, 'store.db.maxConn', 'SEATA_GROUP', '', '30', '34173cb38f07f89ddbebc2ac9128303f', '2021-09-20 22:10:42', '2021-09-20 09:10:42', '', '172.20.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (50, 224, 'store.db.globalTable', 'SEATA_GROUP', '', 'global_table', '8b28fb6bb4c4f984df2709381f8eba2b', '2021-09-20 22:10:42', '2021-09-20 09:10:42', '', '172.20.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (51, 225, 'store.db.branchTable', 'SEATA_GROUP', '', 'branch_table', '54bcdac38cf62e103fe115bcf46a660c', '2021-09-20 22:10:42', '2021-09-20 09:10:42', '', '172.20.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (52, 226, 'store.db.queryLimit', 'SEATA_GROUP', '', '100', 'f899139df5e1059396431415e770c6dd', '2021-09-20 22:10:42', '2021-09-20 09:10:43', '', '172.20.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (53, 227, 'store.db.lockTable', 'SEATA_GROUP', '', 'lock_table', '55e0cae3b6dc6696b768db90098b8f2f', '2021-09-20 22:10:42', '2021-09-20 09:10:43', '', '172.20.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (54, 228, 'store.db.maxWait', 'SEATA_GROUP', '', '5000', 'a35fe7f7fe8217b4369a0af4244d1fca', '2021-09-20 22:10:43', '2021-09-20 09:10:43', '', '172.20.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (55, 229, 'store.redis.mode', 'SEATA_GROUP', '', 'single', 'dd5c07036f2975ff4bce568b6511d3bc', '2021-09-20 22:10:43', '2021-09-20 09:10:43', '', '172.20.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (56, 230, 'store.redis.single.host', 'SEATA_GROUP', '', '127.0.0.1', 'f528764d624db129b32c21fbca0cb8d6', '2021-09-20 22:10:43', '2021-09-20 09:10:44', '', '172.20.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (57, 231, 'store.redis.single.port', 'SEATA_GROUP', '', '6379', '92c3b916311a5517d9290576e3ea37ad', '2021-09-20 22:10:44', '2021-09-20 09:10:44', '', '172.20.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (58, 232, 'store.redis.maxConn', 'SEATA_GROUP', '', '10', 'd3d9446802a44259755d38e6d163e820', '2021-09-20 22:10:44', '2021-09-20 09:10:45', '', '172.20.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (59, 233, 'store.redis.minConn', 'SEATA_GROUP', '', '1', 'c4ca4238a0b923820dcc509a6f75849b', '2021-09-20 22:10:44', '2021-09-20 09:10:45', '', '172.20.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (60, 234, 'store.redis.maxTotal', 'SEATA_GROUP', '', '100', 'f899139df5e1059396431415e770c6dd', '2021-09-20 22:10:45', '2021-09-20 09:10:45', '', '172.20.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (61, 235, 'store.redis.database', 'SEATA_GROUP', '', '0', 'cfcd208495d565ef66e7dff9f98764da', '2021-09-20 22:10:45', '2021-09-20 09:10:45', '', '172.20.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (62, 236, 'store.redis.queryLimit', 'SEATA_GROUP', '', '100', 'f899139df5e1059396431415e770c6dd', '2021-09-20 22:10:45', '2021-09-20 09:10:46', '', '172.20.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (63, 237, 'server.recovery.committingRetryPeriod', 'SEATA_GROUP', '', '1000', 'a9b7ba70783b617e9998dc4dd82eb3c5', '2021-09-20 22:10:45', '2021-09-20 09:10:46', '', '172.20.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (64, 238, 'server.recovery.asynCommittingRetryPeriod', 'SEATA_GROUP', '', '1000', 'a9b7ba70783b617e9998dc4dd82eb3c5', '2021-09-20 22:10:46', '2021-09-20 09:10:46', '', '172.20.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (65, 239, 'server.recovery.rollbackingRetryPeriod', 'SEATA_GROUP', '', '1000', 'a9b7ba70783b617e9998dc4dd82eb3c5', '2021-09-20 22:10:46', '2021-09-20 09:10:46', '', '172.20.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (66, 240, 'server.recovery.timeoutRetryPeriod', 'SEATA_GROUP', '', '1000', 'a9b7ba70783b617e9998dc4dd82eb3c5', '2021-09-20 22:10:46', '2021-09-20 09:10:46', '', '172.20.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (67, 241, 'server.maxCommitRetryTimeout', 'SEATA_GROUP', '', '-1', '6bb61e3b7bce0931da574d19d1d82c88', '2021-09-20 22:10:46', '2021-09-20 09:10:47', '', '172.20.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (68, 242, 'server.maxRollbackRetryTimeout', 'SEATA_GROUP', '', '-1', '6bb61e3b7bce0931da574d19d1d82c88', '2021-09-20 22:10:46', '2021-09-20 09:10:47', '', '172.20.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (69, 243, 'server.rollbackRetryTimeoutUnlockEnable', 'SEATA_GROUP', '', 'false', '68934a3e9455fa72420237eb05902327', '2021-09-20 22:10:47', '2021-09-20 09:10:47', '', '172.20.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (70, 244, 'client.undo.dataValidation', 'SEATA_GROUP', '', 'true', 'b326b5062b2f0e69046810717534cb09', '2021-09-20 22:10:47', '2021-09-20 09:10:47', '', '172.20.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (71, 245, 'client.undo.logSerialization', 'SEATA_GROUP', '', 'jackson', 'b41779690b83f182acc67d6388c7bac9', '2021-09-20 22:10:47', '2021-09-20 09:10:47', '', '172.20.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (72, 246, 'client.undo.onlyCareUpdateColumns', 'SEATA_GROUP', '', 'true', 'b326b5062b2f0e69046810717534cb09', '2021-09-20 22:10:47', '2021-09-20 09:10:48', '', '172.20.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (73, 247, 'server.undo.logSaveDays', 'SEATA_GROUP', '', '7', '8f14e45fceea167a5a36dedd4bea2543', '2021-09-20 22:10:47', '2021-09-20 09:10:48', '', '172.20.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (74, 248, 'server.undo.logDeletePeriod', 'SEATA_GROUP', '', '86400000', 'f4c122804fe9076cb2710f55c3c6e346', '2021-09-20 22:10:48', '2021-09-20 09:10:48', '', '172.20.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (75, 249, 'client.undo.logTable', 'SEATA_GROUP', '', 'undo_log', '2842d229c24afe9e61437135e8306614', '2021-09-20 22:10:48', '2021-09-20 09:10:48', '', '172.20.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (76, 250, 'client.undo.compress.enable', 'SEATA_GROUP', '', 'true', 'b326b5062b2f0e69046810717534cb09', '2021-09-20 22:10:48', '2021-09-20 09:10:48', '', '172.20.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (77, 251, 'client.undo.compress.type', 'SEATA_GROUP', '', 'zip', 'adcdbd79a8d84175c229b192aadc02f2', '2021-09-20 22:10:48', '2021-09-20 09:10:49', '', '172.20.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (78, 252, 'client.undo.compress.threshold', 'SEATA_GROUP', '', '64k', 'bd44a6458bdbff0b5cac721ba361f035', '2021-09-20 22:10:48', '2021-09-20 09:10:49', '', '172.20.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (79, 253, 'log.exceptionRate', 'SEATA_GROUP', '', '100', 'f899139df5e1059396431415e770c6dd', '2021-09-20 22:10:48', '2021-09-20 09:10:49', '', '172.20.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (80, 254, 'transport.serialization', 'SEATA_GROUP', '', 'seata', 'b943081c423b9a5416a706524ee05d40', '2021-09-20 22:10:49', '2021-09-20 09:10:49', '', '172.20.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (81, 255, 'transport.compressor', 'SEATA_GROUP', '', 'none', '334c4a4c42fdb79d7ebc3e73b517e6f8', '2021-09-20 22:10:49', '2021-09-20 09:10:49', '', '172.20.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (82, 256, 'metrics.enabled', 'SEATA_GROUP', '', 'false', '68934a3e9455fa72420237eb05902327', '2021-09-20 22:10:49', '2021-09-20 09:10:50', '', '172.20.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (83, 257, 'metrics.registryType', 'SEATA_GROUP', '', 'compact', '7cf74ca49c304df8150205fc915cd465', '2021-09-20 22:10:49', '2021-09-20 09:10:50', '', '172.20.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (84, 258, 'metrics.exporterList', 'SEATA_GROUP', '', 'prometheus', 'e4f00638b8a10e6994e67af2f832d51c', '2021-09-20 22:10:49', '2021-09-20 09:10:50', '', '172.20.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (85, 259, 'metrics.exporterPrometheusPort', 'SEATA_GROUP', '', '9898', '7b9dc501afe4ee11c56a4831e20cee71', '2021-09-20 22:10:50', '2021-09-20 09:10:50', '', '172.20.0.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (45, 260, 'store.db.url', 'SEATA_GROUP', '', 'jdbc:mysql://127.0.0.1:3306/seata?useUnicode=true&rewriteBatchedStatements=true', '030ea5ff5c2ef043adf9826c70570b0b', '2021-09-20 22:43:53', '2021-09-20 09:43:54', 'nacos', '172.20.0.1', 'U', 'seata');

-- ----------------------------
-- Table structure for permissions
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions`  (
                                `role` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                                `resource` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                                `action` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                                UNIQUE INDEX `uk_role_permission`(`role`, `resource`, `action`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of permissions
-- ----------------------------

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles`  (
                          `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                          `role` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                          UNIQUE INDEX `idx_user_role`(`username`, `role`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES ('nacos', 'ROLE_ADMIN');

-- ----------------------------
-- Table structure for tenant_capacity
-- ----------------------------
DROP TABLE IF EXISTS `tenant_capacity`;
CREATE TABLE `tenant_capacity`  (
                                    `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键ID',
                                    `tenant_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT 'Tenant ID',
                                    `quota` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '配额，0表示使用默认值',
                                    `usage` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '使用量',
                                    `max_size` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '单个配置大小上限，单位为字节，0表示使用默认值',
                                    `max_aggr_count` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '聚合子配置最大个数',
                                    `max_aggr_size` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '单个聚合数据的子配置大小上限，单位为字节，0表示使用默认值',
                                    `max_history_count` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '最大变更历史数量',
                                    `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                                    `gmt_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
                                    PRIMARY KEY (`id`) USING BTREE,
                                    UNIQUE INDEX `uk_tenant_id`(`tenant_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '租户容量信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tenant_capacity
-- ----------------------------

-- ----------------------------
-- Table structure for tenant_info
-- ----------------------------
DROP TABLE IF EXISTS `tenant_info`;
CREATE TABLE `tenant_info`  (
                                `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
                                `kp` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'kp',
                                `tenant_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT 'tenant_id',
                                `tenant_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT 'tenant_name',
                                `tenant_desc` varchar(256) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'tenant_desc',
                                `create_source` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'create_source',
                                `gmt_create` bigint NOT NULL COMMENT '创建时间',
                                `gmt_modified` bigint NOT NULL COMMENT '修改时间',
                                PRIMARY KEY (`id`) USING BTREE,
                                UNIQUE INDEX `uk_tenant_info_kptenantid`(`kp`, `tenant_id`) USING BTREE,
                                INDEX `idx_tenant_id`(`tenant_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = 'tenant_info' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tenant_info
-- ----------------------------
INSERT INTO `tenant_info` VALUES (1, '1', 'test', 'test', 'test', 'nacos', 1632116412956, 1632116412956);
INSERT INTO `tenant_info` VALUES (2, '1', 'seata-server', 'seata-server', 'seata-server', 'nacos', 1632116427580, 1632116427580);
INSERT INTO `tenant_info` VALUES (3, '1', 'seata', 'seata', 'seata', 'nacos', 1632116438850, 1632116438850);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
                          `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                          `password` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                          `enabled` tinyint(1) NOT NULL,
                          PRIMARY KEY (`username`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('nacos', '$2a$10$EuWPZHzz32dJN7jexM34MOeYirDdFAZm2kuWj7VEOJhhZkDrxfvUu', 1);

SET FOREIGN_KEY_CHECKS = 1;



CREATE DATABASE IF NOT EXISTS seata_account DEFAULT CHARACTER SET utf8mb4 DEFAULT COLLATE utf8mb4_general_ci;
USE seata_account;

CREATE TABLE `account_tbl` (
                               `id` int(11) NOT NULL AUTO_INCREMENT,
                               `user_id` varchar(255) DEFAULT NULL,
                               `money` int(11) DEFAULT '0',
                               PRIMARY KEY (`id`),
                               UNIQUE KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

INSERT INTO `seata_account`.`account_tbl` (`id`, `user_id`, `money`) VALUES (1, '1', 990);

CREATE TABLE `undo_log` (
                            `id` bigint(20) NOT NULL AUTO_INCREMENT,
                            `branch_id` bigint(20) NOT NULL,
                            `xid` varchar(100) NOT NULL,
                            `context` varchar(128) NOT NULL,
                            `rollback_info` longblob NOT NULL,
                            `log_status` int(11) NOT NULL,
                            `log_created` datetime NOT NULL,
                            `log_modified` datetime NOT NULL,
                            PRIMARY KEY (`id`),
                            UNIQUE KEY `ux_undo_log` (`xid`,`branch_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

CREATE DATABASE IF NOT EXISTS seata_storage DEFAULT CHARACTER SET utf8mb4 DEFAULT COLLATE utf8mb4_general_ci;
USE seata_storage;
CREATE TABLE `storage_tbl` (
                               `id` int(11) NOT NULL AUTO_INCREMENT,
                               `commodity_code` varchar(255) DEFAULT NULL,
                               `count` int(11) DEFAULT '0',
                               PRIMARY KEY (`id`),
                               UNIQUE KEY `commodity_code` (`commodity_code`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

INSERT INTO `seata_storage`.`storage_tbl` (`id`, `commodity_code`, `count`) VALUES (1, '2001', 997);

CREATE TABLE `undo_log` (
                            `id` bigint(20) NOT NULL AUTO_INCREMENT,
                            `branch_id` bigint(20) NOT NULL,
                            `xid` varchar(100) NOT NULL,
                            `context` varchar(128) NOT NULL,
                            `rollback_info` longblob NOT NULL,
                            `log_status` int(11) NOT NULL,
                            `log_created` datetime NOT NULL,
                            `log_modified` datetime NOT NULL,
                            PRIMARY KEY (`id`),
                            UNIQUE KEY `ux_undo_log` (`xid`,`branch_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

CREATE DATABASE IF NOT EXISTS seata_order DEFAULT CHARACTER SET utf8mb4 DEFAULT COLLATE utf8mb4_general_ci;
USE seata_order;
CREATE TABLE `order_tbl` (
                             `id` int(11) NOT NULL AUTO_INCREMENT,
                             `user_id` varchar(255) DEFAULT NULL,
                             `commodity_code` varchar(255) DEFAULT NULL,
                             `count` int(11) DEFAULT '0',
                             `money` int(11) DEFAULT '0',
                             `status` int(11) DEFAULT NULL,
                             PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

CREATE TABLE `undo_log` (
                            `id` bigint(20) NOT NULL AUTO_INCREMENT,
                            `branch_id` bigint(20) NOT NULL,
                            `xid` varchar(100) NOT NULL,
                            `context` varchar(128) NOT NULL,
                            `rollback_info` longblob NOT NULL,
                            `log_status` int(11) NOT NULL,
                            `log_created` datetime NOT NULL,
                            `log_modified` datetime NOT NULL,
                            PRIMARY KEY (`id`),
                            UNIQUE KEY `ux_undo_log` (`xid`,`branch_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;




CREATE DATABASE IF NOT EXISTS seata DEFAULT CHARACTER SET utf8mb4 DEFAULT COLLATE utf8mb4_general_ci;
USE seata;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

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
                                KEY `idx_gmt_modified_status` (`gmt_modified`,`status`),
                                KEY `idx_transaction_id` (`transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

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
                              `gmt_create` datetime DEFAULT NULL,
                              `gmt_modified` datetime DEFAULT NULL,
                              PRIMARY KEY (`row_key`),
                              KEY `idx_branch_id` (`branch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

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
