/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50716
Source Host           : 127.0.0.1:3306
Source Database       : common-user

Target Server Type    : MYSQL
Target Server Version : 50716
File Encoding         : 65001

Date: 2019-03-25 11:19:29
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for clientdetails
-- ----------------------------
DROP TABLE IF EXISTS `clientdetails`;
CREATE TABLE `clientdetails` (
  `appId` varchar(48) NOT NULL,
  `resourceIds` varchar(256) DEFAULT NULL,
  `appSecret` varchar(256) DEFAULT NULL,
  `scope` varchar(256) DEFAULT NULL,
  `grantTypes` varchar(256) DEFAULT NULL,
  `redirectUrl` varchar(256) DEFAULT NULL,
  `authorities` varchar(256) DEFAULT NULL,
  `access_token_validity` int(11) DEFAULT NULL,
  `refresh_token_validity` int(11) DEFAULT NULL,
  `additionalInformation` varchar(4096) DEFAULT NULL,
  `autoApproveScopes` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`appId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of clientdetails
-- ----------------------------

-- ----------------------------
-- Table structure for oauth_access_token
-- ----------------------------
DROP TABLE IF EXISTS `oauth_access_token`;
CREATE TABLE `oauth_access_token` (
  `token_id` varchar(256) DEFAULT NULL,
  `token` blob,
  `authentication_id` varchar(48) NOT NULL,
  `user_name` varchar(256) DEFAULT NULL,
  `client_id` varchar(256) DEFAULT NULL,
  `authentication` blob,
  `refresh_token` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`authentication_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oauth_access_token
-- ----------------------------

-- ----------------------------
-- Table structure for oauth_approvals
-- ----------------------------
DROP TABLE IF EXISTS `oauth_approvals`;
CREATE TABLE `oauth_approvals` (
  `userId` varchar(256) DEFAULT NULL,
  `clientId` varchar(256) DEFAULT NULL,
  `scope` varchar(256) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `expiresAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lastModifiedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oauth_approvals
-- ----------------------------

-- ----------------------------
-- Table structure for oauth_client_details
-- ----------------------------
DROP TABLE IF EXISTS `oauth_client_details`;
CREATE TABLE `oauth_client_details` (
  `client_id` varchar(48) NOT NULL,
  `resource_ids` varchar(256) DEFAULT NULL,
  `client_secret` varchar(256) DEFAULT NULL,
  `scope` varchar(256) DEFAULT NULL,
  `authorized_grant_types` varchar(256) DEFAULT NULL,
  `web_server_redirect_uri` varchar(256) DEFAULT NULL,
  `authorities` varchar(256) DEFAULT NULL,
  `access_token_validity` int(11) DEFAULT NULL,
  `refresh_token_validity` int(11) DEFAULT NULL,
  `additional_information` varchar(4096) DEFAULT NULL,
  `autoapprove` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oauth_client_details
-- ----------------------------
INSERT INTO `oauth_client_details` VALUES ('app', null, 'app', 'app', 'authorization_code,password,refresh_token,client_credentials,Implicit,device_code,code', 'http://aichibazhang.com', null, null, null, null, null);
INSERT INTO `oauth_client_details` VALUES ('webApp', null, 'webApp', 'app', 'authorization_code,password,refresh_token,client_credentials,Implicit,device_code', null, '', null, null, null, null);

-- ----------------------------
-- Table structure for oauth_client_token
-- ----------------------------
DROP TABLE IF EXISTS `oauth_client_token`;
CREATE TABLE `oauth_client_token` (
  `token_id` varchar(256) DEFAULT NULL,
  `token` blob,
  `authentication_id` varchar(48) NOT NULL,
  `user_name` varchar(256) DEFAULT NULL,
  `client_id` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`authentication_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oauth_client_token
-- ----------------------------

-- ----------------------------
-- Table structure for oauth_code
-- ----------------------------
DROP TABLE IF EXISTS `oauth_code`;
CREATE TABLE `oauth_code` (
  `code` varchar(256) DEFAULT NULL,
  `authentication` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oauth_code
-- ----------------------------

-- ----------------------------
-- Table structure for oauth_refresh_token
-- ----------------------------
DROP TABLE IF EXISTS `oauth_refresh_token`;
CREATE TABLE `oauth_refresh_token` (
  `token_id` varchar(256) DEFAULT NULL,
  `token` blob,
  `authentication` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oauth_refresh_token
-- ----------------------------

-- ----------------------------
-- Table structure for privilege
-- ----------------------------
DROP TABLE IF EXISTS `privilege`;
CREATE TABLE `privilege` (
  `roleId` int(11) NOT NULL COMMENT '角色',
  `restId` int(11) NOT NULL COMMENT '权限',
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of privilege
-- ----------------------------
INSERT INTO `privilege` VALUES ('1', '1', '2018-12-06 14:50:24');
INSERT INTO `privilege` VALUES ('1', '2', '2018-12-06 14:50:52');
INSERT INTO `privilege` VALUES ('1', '3', '2018-12-06 14:50:54');
INSERT INTO `privilege` VALUES ('1', '4', '2018-12-06 14:50:56');
INSERT INTO `privilege` VALUES ('1', '5', '2018-12-06 14:50:57');
INSERT INTO `privilege` VALUES ('1', '6', '2018-12-06 14:50:59');
INSERT INTO `privilege` VALUES ('1', '7', '2018-12-06 14:51:00');
INSERT INTO `privilege` VALUES ('1', '8', '2018-12-06 14:51:02');
INSERT INTO `privilege` VALUES ('1', '9', '2018-12-06 14:51:05');
INSERT INTO `privilege` VALUES ('2', '6', '2018-12-06 14:53:15');
INSERT INTO `privilege` VALUES ('2', '9', '2018-12-06 14:54:33');
INSERT INTO `privilege` VALUES ('2', '4', '2018-12-06 14:54:53');
INSERT INTO `privilege` VALUES ('3', '2', '2018-12-06 14:55:24');
INSERT INTO `privilege` VALUES ('3', '3', '2018-12-06 14:55:34');
INSERT INTO `privilege` VALUES ('3', '4', '2018-12-06 14:55:44');
INSERT INTO `privilege` VALUES ('3', '5', '2018-12-06 14:56:54');
INSERT INTO `privilege` VALUES ('4', '1', '2018-12-06 15:01:59');
INSERT INTO `privilege` VALUES ('4', '6', '2018-12-06 15:02:02');
INSERT INTO `privilege` VALUES ('4', '7', '2018-12-06 15:02:03');
INSERT INTO `privilege` VALUES ('4', '8', '2018-12-06 15:02:05');
INSERT INTO `privilege` VALUES ('4', '4', '2018-12-06 15:03:38');
INSERT INTO `privilege` VALUES ('1', '10', '2018-12-17 15:52:48');
INSERT INTO `privilege` VALUES ('3', '10', '2018-12-17 15:52:52');
INSERT INTO `privilege` VALUES ('4', '10', '2018-12-17 15:52:55');

-- ----------------------------
-- Table structure for rest
-- ----------------------------
DROP TABLE IF EXISTS `rest`;
CREATE TABLE `rest` (
  `restId` int(11) NOT NULL AUTO_INCREMENT COMMENT '接口id',
  `code` varchar(255) NOT NULL COMMENT '权限编号',
  `url` varchar(255) NOT NULL COMMENT '接口地址',
  `des` varchar(255) NOT NULL COMMENT '接口描述',
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `createBy` varchar(255) NOT NULL COMMENT '创建人',
  PRIMARY KEY (`restId`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COMMENT='后端接口权限表';

-- ----------------------------
-- Records of rest
-- ----------------------------
INSERT INTO `rest` VALUES ('1', 'assign/add', '/assign/addAssign', '新建派单', '2018-12-06 14:31:15', 'admin');
INSERT INTO `rest` VALUES ('2', 'company/get', '/company/getUser', '获取公司运维人员', '2018-12-06 14:32:50', 'admin');
INSERT INTO `rest` VALUES ('3', 'evaluation/add', '/evaluation/addEvaluation', '维修评价', '2018-12-06 14:59:22', 'admin');
INSERT INTO `rest` VALUES ('4', 'evaluation/get', '/evaluation/getEvaluation', '获取维修详情', '2018-12-06 14:33:23', 'admin');
INSERT INTO `rest` VALUES ('5', 'fault/add', '/fault/addFault', '创建故障单', '2018-12-06 14:33:59', 'admin');
INSERT INTO `rest` VALUES ('6', 'project/getUser', '/project/getUser', '获取现场管理人员', '2018-12-06 14:34:33', 'admin');
INSERT INTO `rest` VALUES ('7', 'repair/add', '/repair/addRepair', '创建维修单', '2018-12-06 14:34:58', 'admin');
INSERT INTO `rest` VALUES ('8', 'repair/update', '/repair/updateRepair', '更新维修结果', '2018-12-06 14:35:30', 'admin');
INSERT INTO `rest` VALUES ('9', 'suggest/add', '/suggest/addSuggest', '批示', '2018-12-06 14:36:09', 'admin');
INSERT INTO `rest` VALUES ('10', 'system', 'system', '系统权限', '2018-12-17 15:54:13', 'admin');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `value` varchar(50) NOT NULL COMMENT '描述',
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', '公司高层', 'super', '2019-01-04 09:46:35');
INSERT INTO `role` VALUES ('2', '公司管理人员', 'company_manager', '2019-01-05 12:36:27');
INSERT INTO `role` VALUES ('3', '项目管理人员', 'project_manager', '2019-01-04 09:46:55');
INSERT INTO `role` VALUES ('4', '项目运维人员', 'worker', '2018-12-06 11:43:54');

-- ----------------------------
-- Table structure for role_routes
-- ----------------------------
DROP TABLE IF EXISTS `role_routes`;
CREATE TABLE `role_routes` (
  `roleId` int(11) NOT NULL COMMENT '角色id',
  `routesId` int(11) NOT NULL COMMENT '路由id',
  `routeId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of role_routes
-- ----------------------------
INSERT INTO `role_routes` VALUES ('1', '1', '1');
INSERT INTO `role_routes` VALUES ('1', '2', '1');
INSERT INTO `role_routes` VALUES ('1', '5', '1');
INSERT INTO `role_routes` VALUES ('1', '7', '2');
INSERT INTO `role_routes` VALUES ('1', '8', '3');
INSERT INTO `role_routes` VALUES ('1', '9', '3');

-- ----------------------------
-- Table structure for route
-- ----------------------------
DROP TABLE IF EXISTS `route`;
CREATE TABLE `route` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `path` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL COMMENT '图标',
  `name` varchar(255) NOT NULL COMMENT '名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='前端路由控制表';

-- ----------------------------
-- Records of route
-- ----------------------------
INSERT INTO `route` VALUES ('1', '/repairs', 'profile', 'repair');
INSERT INTO `route` VALUES ('2', '/UsersManage', 'dashboard', 'usersManage');
INSERT INTO `route` VALUES ('3', '/personnel', 'form', 'personnel');

-- ----------------------------
-- Table structure for routes
-- ----------------------------
DROP TABLE IF EXISTS `routes`;
CREATE TABLE `routes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `path` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `component` varchar(255) NOT NULL,
  `hideChildrenInMenu` tinyint(4) NOT NULL,
  `parentRoutesId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of routes
-- ----------------------------
INSERT INTO `routes` VALUES ('1', '/repairs/repairList', 'repairList', './Repair/RepairList', '1', null);
INSERT INTO `routes` VALUES ('2', '/repairs/Mybaoxiu', 'mybaoxiu', './Repair/Mybaoxiu', '1', null);
INSERT INTO `routes` VALUES ('3', '/repairs/repairList/info', 'info', './Repair/RepairEdit', '0', '1');
INSERT INTO `routes` VALUES ('4', '/repairs/Mybaoxiu/info', 'info', './Repair/RepairEdit', '0', '2');
INSERT INTO `routes` VALUES ('5', '/repairs/gongdan', 'gongdan', './Repair/gongdan', '1', null);
INSERT INTO `routes` VALUES ('6', '/repairs/gongdan/info', 'info', './Repair/RepairEdit', '0', '5');
INSERT INTO `routes` VALUES ('7', '/usersManage/usersMan', 'UsersMan', './UsersManage/UsersMan', '0', null);
INSERT INTO `routes` VALUES ('8', '/personnel/personnelxx', 'personnelxx', './Personnel/personnelxx', '0', null);
INSERT INTO `routes` VALUES ('9', '/personnel/zhiban', 'zhiban', './Personnel/zhiban', '1', null);
INSERT INTO `routes` VALUES ('10', '/personnel/zhiban/paiban', 'paiban', './Personnel/paiban', '0', '9');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户编号',
  `name` varchar(20) NOT NULL COMMENT '用户名字',
  `username` varchar(255) NOT NULL COMMENT '账户名',
  `password` varchar(255) NOT NULL COMMENT '密码',
  `personalId` int(11) NOT NULL COMMENT '人员id',
  `status` tinyint(1) NOT NULL COMMENT '当前账号是否可用',
  `createTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `path` varchar(255) DEFAULT NULL COMMENT '用户头像',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '韩冬冬', 'hdd', '$2a$10$jMfM0wdANESzg7OKGhtwuuV8y4sMBg/CTqIA7cyhsGKBXKHkyO7Ta', '1', '1', '2019-01-19 20:14:42', 'C:\\\\Users\\\\Shinelon\\\\Desktop\\\\img\\\\default.png');
INSERT INTO `user` VALUES ('2', '公司运维管理人员', 'ceshi', '$2a$10$rgM6gmp2h/JGBOM/bVSB/Og88X9Q/4aUxDlO8uT4d/mLgvlLX6zmm', '5', '1', '2019-01-19 20:14:18', 'C:\\\\Users\\\\Shinelon\\\\Desktop\\\\img\\\\default.png');
INSERT INTO `user` VALUES ('3', '项目运维管理人员', 'ceshi2', '$2a$10$ExiwHY8HvfPPoD2fRyTkQuoEg0LGB.hx62TGT8S3fwiHCiAMAqHRq', '5', '1', '2019-01-19 20:14:30', 'C:\\\\Users\\\\Shinelon\\\\Desktop\\\\img\\\\default.png');
INSERT INTO `user` VALUES ('4', '现场运维', 'ceshi3', '$2a$10$ExiwHY8HvfPPoD2fRyTkQuoEg0LGB.hx62TGT8S3fwiHCiAMAqHRq', '5', '1', '2019-01-19 20:14:30', 'C:\\\\Users\\\\Shinelon\\\\Desktop\\\\img\\\\default.png');
INSERT INTO `user` VALUES ('20', '测试修改', 'guanliyuan6', '$2a$10$BnGXE1qHp20NG0uUxrwRi.3g5kRp0frSjADLZAzpBsVA1E/USY2Ty', '2', '1', '2019-01-19 20:14:30', 'C:\\\\Users\\\\Shinelon\\\\Desktop\\\\img\\\\default.png');

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `userId` int(11) NOT NULL COMMENT '用户id',
  `roleId` int(11) NOT NULL COMMENT '角色id',
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `createBy` varchar(255) DEFAULT NULL COMMENT '创建人',
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES ('1', '1', '2019-01-04 10:53:13', 'super');
INSERT INTO `user_role` VALUES ('2', '2', '2019-01-17 10:37:15', 'super');
INSERT INTO `user_role` VALUES ('3', '3', '2019-01-04 10:53:19', 'super');
INSERT INTO `user_role` VALUES ('4', '4', '2019-01-19 14:25:51', 'super');
INSERT INTO `user_role` VALUES ('20', '1', '2019-01-10 11:34:26', 'super');
