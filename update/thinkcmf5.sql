/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50717
 Source Host           : localhost
 Source Database       : thinkcmf5

 Target Server Type    : MySQL
 Target Server Version : 50717
 File Encoding         : utf-8

 Date: 04/22/2017 13:34:21 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `cmf_admin_menu`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_admin_menu`;
CREATE TABLE `cmf_admin_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父菜单id',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '菜单类型;1:有界面可访问菜单,2:无界面可访问菜单,0:只作为菜单',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '状态;1:显示,0:不显示',
  `list_order` float unsigned NOT NULL DEFAULT '10000' COMMENT '排序ID',
  `app` varchar(15) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '应用名',
  `controller` varchar(30) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '控制器名',
  `action` varchar(30) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '操作名称',
  `param` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '额外参数',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '菜单名称',
  `icon` varchar(20) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '菜单图标',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `parentid` (`parent_id`),
  KEY `model` (`controller`)
) ENGINE=InnoDB AUTO_INCREMENT=296 DEFAULT CHARSET=utf8mb4 COMMENT='后台菜单表';

-- ----------------------------
--  Records of `cmf_admin_menu`
-- ----------------------------
BEGIN;
INSERT INTO `cmf_admin_menu` VALUES ('7', '269', '1', '1', '0', 'portal', 'AdminArticle', 'index', '', '文章管理', '', ''), ('8', '7', '1', '0', '0', 'portal', 'AdminPost', 'listorders', '', '文章排序', '', ''), ('9', '7', '1', '0', '0', 'portal', 'AdminPost', 'top', '', '文章置顶', '', ''), ('10', '7', '1', '0', '0', 'portal', 'AdminPost', 'recommend', '', '文章推荐', '', ''), ('11', '7', '1', '0', '1000', 'portal', 'AdminPost', 'move', '', '批量移动', '', ''), ('12', '7', '1', '0', '1000', 'portal', 'AdminPost', 'check', '', '文章审核', '', ''), ('13', '7', '1', '0', '1000', 'portal', 'AdminPost', 'delete', '', '删除文章', '', ''), ('14', '7', '1', '0', '1000', 'portal', 'AdminPost', 'edit', '', '编辑文章', '', ''), ('15', '14', '1', '0', '0', 'portal', 'AdminPost', 'edit_post', '', '提交编辑', '', ''), ('16', '7', '1', '0', '1000', 'portal', 'AdminPost', 'add', '', '添加文章', '', ''), ('17', '16', '1', '0', '0', 'portal', 'AdminPost', 'add_post', '', '提交添加', '', ''), ('18', '269', '1', '1', '10', 'portal', 'AdminCategory', 'index', '', '分类管理', '', ''), ('19', '18', '1', '0', '0', 'portal', 'AdminTerm', 'listorders', '', '文章分类排序', '', ''), ('20', '18', '1', '0', '1000', 'portal', 'AdminTerm', 'delete', '', '删除分类', '', ''), ('21', '18', '1', '0', '1000', 'portal', 'AdminTerm', 'edit', '', '编辑分类', '', ''), ('22', '21', '1', '0', '0', 'portal', 'AdminTerm', 'edit_post', '', '提交编辑', '', ''), ('23', '18', '1', '0', '1000', 'portal', 'AdminTerm', 'add', '', '添加分类', '', ''), ('24', '23', '1', '0', '0', 'portal', 'AdminTerm', 'add_post', '', '提交添加', '', ''), ('25', '269', '1', '1', '20', 'portal', 'AdminPage', 'index', '', '页面管理', '', ''), ('26', '25', '1', '0', '0', 'portal', 'AdminPage', 'listorders', '', '页面排序', '', ''), ('27', '25', '2', '0', '1000', 'portal', 'AdminPage', 'delete', '', '删除页面', '', ''), ('28', '25', '1', '0', '1000', 'portal', 'AdminPage', 'edit', '', '编辑页面', '', ''), ('29', '28', '1', '0', '0', 'portal', 'AdminPage', 'edit_post', '', '提交编辑', '', ''), ('30', '25', '1', '0', '1000', 'portal', 'AdminPage', 'add', '', '添加页面', '', ''), ('31', '30', '1', '0', '0', 'portal', 'AdminPage', 'add_post', '', '提交添加', '', ''), ('47', '181', '1', '1', '40', 'admin', 'Plugin', 'index', '', '插件列表', 'cloud', ''), ('48', '47', '2', '0', '0', 'admin', 'Plugin', 'toggle', '', '插件启用切换', '', ''), ('49', '47', '1', '0', '0', 'admin', 'Plugin', 'setting', '', '插件设置', '', ''), ('50', '49', '1', '0', '0', 'admin', 'Plugin', 'setting_post', '', '插件设置提交', '', ''), ('51', '47', '2', '0', '0', 'admin', 'Plugin', 'install', '', '插件安装', '', ''), ('52', '47', '2', '0', '0', 'admin', 'Plugin', 'uninstall', '', '插件卸载', '', ''), ('62', '53', '1', '1', '0', 'admin', 'Slidecat', 'index', '', '幻灯片分类', '', ''), ('63', '62', '1', '0', '1000', 'admin', 'Slidecat', 'delete', '', '删除分类', '', ''), ('64', '62', '1', '0', '1000', 'admin', 'Slidecat', 'edit', '', '编辑分类', '', ''), ('65', '64', '1', '0', '0', 'admin', 'Slidecat', 'edit_post', '', '提交编辑', '', ''), ('66', '62', '1', '0', '1000', 'admin', 'Slidecat', 'add', '', '添加分类', '', ''), ('67', '66', '1', '0', '0', 'admin', 'Slidecat', 'add_post', '', '提交添加', '', ''), ('87', '109', '1', '1', '1000', 'admin', 'Nav', 'index', '', '导航管理', '', ''), ('88', '87', '1', '0', '0', 'admin', 'Nav', 'listorders', '', '前台导航排序', '', ''), ('89', '87', '2', '0', '1000', 'admin', 'Nav', 'delete', '', '删除菜单', '', ''), ('90', '87', '1', '0', '1000', 'admin', 'Nav', 'edit', '', '编辑菜单', '', ''), ('91', '90', '1', '0', '0', 'admin', 'Nav', 'edit_post', '', '提交编辑', '', ''), ('92', '87', '1', '0', '1000', 'admin', 'Nav', 'add', '', '添加菜单', '', ''), ('93', '92', '1', '0', '0', 'admin', 'Nav', 'add_post', '', '提交添加', '', ''), ('100', '109', '1', '0', '0', 'admin', 'Menu', 'index', '', '后台菜单', 'list', ''), ('101', '100', '1', '0', '0', 'admin', 'Menu', 'add', '', '添加菜单', '', ''), ('102', '101', '1', '0', '0', 'admin', 'Menu', 'add_post', '', '提交添加', '', ''), ('103', '100', '1', '0', '0', 'admin', 'Menu', 'listorders', '', '后台菜单排序', '', ''), ('104', '100', '1', '0', '1000', 'admin', 'Menu', 'export_menu', '', '菜单备份', '', ''), ('105', '100', '1', '0', '1000', 'admin', 'Menu', 'edit', '', '编辑菜单', '', ''), ('106', '105', '1', '0', '0', 'admin', 'Menu', 'edit_post', '', '提交编辑', '', ''), ('107', '100', '2', '0', '1000', 'admin', 'Menu', 'delete', '', '删除菜单', '', ''), ('108', '100', '1', '0', '1000', 'admin', 'Menu', 'lists', '', '所有菜单', '', ''), ('109', '0', '0', '1', '0', 'admin', 'Setting', 'default', '', '设置', 'cogs', ''), ('113', '109', '1', '0', '0', 'admin', 'Setting', 'password', '', '修改密码', '', ''), ('114', '113', '1', '0', '0', 'admin', 'Setting', 'password_post', '', '提交修改', '', ''), ('115', '109', '1', '1', '0', 'admin', 'Setting', 'site', '', '网站信息', '', ''), ('116', '115', '1', '0', '0', 'admin', 'Setting', 'site_post', '', '提交修改', '', ''), ('117', '115', '1', '0', '0', 'admin', 'Route', 'index', '', '路由列表', '', ''), ('118', '115', '1', '0', '0', 'admin', 'Route', 'add', '', '路由添加', '', ''), ('119', '118', '1', '0', '0', 'admin', 'Route', 'add_post', '', '路由添加提交', '', ''), ('120', '115', '1', '0', '0', 'admin', 'Route', 'edit', '', '路由编辑', '', ''), ('121', '120', '1', '0', '0', 'admin', 'Route', 'edit_post', '', '路由编辑提交', '', ''), ('122', '115', '1', '0', '0', 'admin', 'Route', 'delete', '', '路由删除', '', ''), ('123', '115', '1', '0', '0', 'admin', 'Route', 'ban', '', '路由禁止', '', ''), ('124', '115', '1', '0', '0', 'admin', 'Route', 'open', '', '路由启用', '', ''), ('125', '115', '1', '0', '0', 'admin', 'Route', 'listorders', '', '路由排序', '', ''), ('127', '109', '1', '1', '0', 'admin', 'Mailer', 'index', '', '邮箱配置', '', ''), ('128', '127', '1', '0', '0', 'admin', 'Mailer', 'index_post', '', '提交配置', '', ''), ('129', '127', '1', '0', '0', 'admin', 'Mailer', 'active', '', '注册邮件模板', '', ''), ('130', '129', '1', '0', '0', 'admin', 'Mailer', 'active_post', '', '提交模板', '', ''), ('131', '109', '1', '0', '1', 'admin', 'Setting', 'clearcache', '', '清除缓存', '', ''), ('140', '243', '1', '1', '0', 'admin', 'rbac', 'index', '', '角色管理', '', ''), ('141', '140', '1', '0', '1000', 'admin', 'rbac', 'member', '', '成员管理', '', ''), ('142', '140', '1', '0', '1000', 'admin', 'rbac', 'authorize', '', '权限设置', '', ''), ('143', '142', '1', '0', '0', 'admin', 'rbac', 'authorize_post', '', '提交设置', '', ''), ('144', '140', '1', '0', '1000', 'admin', 'rbac', 'roleedit', '', '编辑角色', '', ''), ('145', '144', '1', '0', '0', 'admin', 'rbac', 'roleedit_post', '', '提交编辑', '', ''), ('146', '140', '1', '1', '1000', 'admin', 'rbac', 'roledelete', '', '删除角色', '', ''), ('147', '140', '1', '1', '1000', 'admin', 'Rbac', 'roleadd', '', '添加角色', '', ''), ('148', '147', '1', '0', '0', 'admin', 'Rbac', 'roleadd_post', '', '提交添加', '', ''), ('155', '47', '2', '0', '0', 'admin', 'Plugin', 'update', '', '插件更新', '', ''), ('156', '109', '1', '0', '0', 'admin', 'Storage', 'index', '', '文件存储', '', ''), ('157', '156', '1', '0', '0', 'admin', 'Storage', 'setting_post', '', '文件存储设置提交', '', ''), ('166', '127', '1', '0', '0', 'admin', 'Mailer', 'test', '', '测试邮件', '', ''), ('167', '109', '1', '1', '0', 'admin', 'Setting', 'upload', '', '上传设置', '', ''), ('168', '167', '1', '0', '0', 'admin', 'Setting', 'upload_post', '', '上传设置提交', '', ''), ('169', '7', '1', '0', '0', 'portal', 'AdminPost', 'copy', '', '文章批量复制', '', ''), ('174', '100', '1', '0', '0', 'admin', 'Menu', 'backup_menu', '', '备份菜单', '', ''), ('175', '100', '1', '0', '0', 'admin', 'Menu', 'export_menu_lang', '', '导出后台菜单多语言包', '', ''), ('176', '100', '1', '0', '0', 'admin', 'Menu', 'restore_menu', '', '还原菜单', '', ''), ('177', '100', '1', '0', '0', 'admin', 'Menu', 'getactions', '', '导入新菜单', '', ''), ('178', '109', '1', '1', '0', 'admin', 'Theme', 'index', '', '模板管理', '', ''), ('179', '109', '1', '1', '0', 'admin', 'Link', 'index', '', '友情链接', '', ''), ('180', '269', '1', '0', '30', 'portal', 'AdminTag', 'index', '', '文章标签', '', ''), ('181', '0', '0', '1', '40', 'admin', 'Plugin', 'default', '', '插件管理', 'cloud', ''), ('182', '181', '1', '1', '0', 'admin', 'Hook', 'index', '', '钩子管理', '', ''), ('183', '179', '1', '0', '10000', 'admin', 'Link', 'add', '', '添加友情链接', '', '添加友情链接'), ('184', '179', '2', '0', '10000', 'admin', 'Link', 'addPost', '', '添加友情链接提交保存', '', '添加友情链接提交保存'), ('185', '179', '1', '0', '10000', 'admin', 'Link', 'edit', '', '编辑友情链接', '', '编辑友情链接'), ('186', '179', '2', '0', '10000', 'admin', 'Link', 'editPost', '', '编辑友情链接提交保存', '', '编辑友情链接提交保存'), ('187', '179', '2', '0', '10000', 'admin', 'Link', 'delete', '', '删除友情链接', '', '删除友情链接'), ('188', '179', '2', '0', '10000', 'admin', 'Link', 'listOrder', '', '友情链接排序', '', '友情链接排序'), ('189', '179', '2', '0', '10000', 'admin', 'Link', 'toggle', '', '友情链接显示隐藏', '', '友情链接显示隐藏'), ('190', '127', '2', '0', '10000', 'admin', 'Mailer', 'indexPost', '', '邮箱配置提交保存', '', '邮箱配置提交保存'), ('191', '127', '2', '0', '10000', 'admin', 'Mailer', 'activePost', '', '会员注册邮件模板提交', '', '会员注册邮件模板提交'), ('193', '87', '2', '0', '10000', 'admin', 'Nav', 'addPost', '', '添加导航提交保存', '', '添加导航提交保存'), ('194', '87', '2', '0', '10000', 'admin', 'Nav', 'editPost', '', '编辑导航提交保存', '', '编辑导航提交保存'), ('195', '87', '1', '0', '10000', 'admin', 'NavMenu', 'index', '', '导航菜单', '', '导航菜单'), ('196', '195', '1', '0', '10000', 'admin', 'NavMenu', 'add', '', '添加导航菜单', '', '添加导航菜单'), ('197', '195', '2', '0', '10000', 'admin', 'NavMenu', 'addPost', '', '添加导航菜单提交保存', '', '添加导航菜单提交保存'), ('198', '195', '1', '0', '10000', 'admin', 'NavMenu', 'edit', '', '编辑导航菜单', '', '编辑导航菜单'), ('199', '195', '2', '0', '10000', 'admin', 'NavMenu', 'editPost', '', '编辑导航菜单提交保存', '', '编辑导航菜单提交保存'), ('200', '195', '2', '0', '10000', 'admin', 'NavMenu', 'delete', '', '删除导航菜单', '', '删除导航菜单'), ('201', '195', '2', '0', '10000', 'admin', 'NavMenu', 'listOrder', '', '导航菜单排序', '', '导航菜单排序'), ('202', '47', '2', '0', '10000', 'admin', 'Plugin', 'settingPost', '', '插件设置提交', '', '插件设置提交'), ('203', '182', '1', '0', '10000', 'admin', 'Hook', 'plugins', '', '钩子插件管理', '', '钩子插件管理'), ('204', '182', '2', '0', '10000', 'admin', 'Hook', 'pluginToggle', '', '钩子插件启用禁用', '', '钩子插件启用禁用'), ('205', '182', '2', '0', '10000', 'admin', 'Hook', 'pluginListOrder', '', '钩子插件排序', '', '钩子插件排序'), ('206', '100', '2', '0', '10000', 'admin', 'Menu', 'addPost', '', '后台菜单添加提交保存', '', '后台菜单添加提交保存'), ('207', '100', '2', '0', '10000', 'admin', 'Menu', 'editPost', '', '后台菜单编辑提交保存', '', '后台菜单编辑提交保存'), ('208', '100', '2', '0', '10000', 'admin', 'Menu', 'listOrder', '', '后台菜单排序', '', '后台菜单排序'), ('209', '0', '1', '0', '10000', 'admin', 'Recycle', 'index', '', '回收站', '', '回收站'), ('210', '209', '2', '0', '10000', 'admin', 'Recycle', 'restore', '', '回收站还原', '', '回收站还原'), ('211', '209', '2', '0', '10000', 'admin', 'Recycle', 'delete', '', '回收站彻底删除', '', '回收站彻底删除'), ('212', '115', '2', '0', '10000', 'admin', 'Setting', 'sitePost', '', '网站信息设置提交', '', '网站信息设置提交'), ('213', '113', '2', '0', '10000', 'admin', 'Setting', 'passwordPost', '', '密码修改提交', '', '密码修改提交'), ('214', '167', '2', '0', '10000', 'admin', 'Setting', 'uploadPost', '', '上传设置提交', '', '上传设置提交'), ('215', '109', '1', '1', '10000', 'admin', 'Slide', 'index', '', '幻灯片管理', '', '幻灯片管理'), ('216', '178', '1', '0', '10000', 'admin', 'Theme', 'install', '', '安装模板', '', '安装模板'), ('217', '178', '2', '0', '10000', 'admin', 'Theme', 'uninstall', '', '卸载模板', '', '卸载模板'), ('218', '178', '2', '0', '10000', 'admin', 'Theme', 'installTheme', '', '模板安装', '', '模板安装'), ('219', '178', '2', '0', '10000', 'admin', 'Theme', 'update', '', '模板更新', '', '模板更新'), ('220', '178', '2', '0', '10000', 'admin', 'Theme', 'active', '', '启用模板', '', '启用模板'), ('221', '178', '1', '0', '10000', 'admin', 'Theme', 'files', '', '模板文件列表', '', '启用模板'), ('222', '178', '1', '0', '10000', 'admin', 'Theme', 'fileSetting', '', '模板文件设置', '', '模板文件设置'), ('223', '178', '1', '0', '10000', 'admin', 'Theme', 'fileArrayData', '', '模板文件数组数据列表', '', '模板文件数组数据列表'), ('224', '178', '2', '0', '10000', 'admin', 'Theme', 'fileArrayDataEdit', '', '模板文件数组数据添加编辑', '', '模板文件数组数据添加编辑'), ('225', '178', '2', '0', '10000', 'admin', 'Theme', 'fileArrayDataDelete', '', '模板文件数组数据删除', '', '模板文件数组数据删除'), ('226', '178', '2', '0', '10000', 'admin', 'Theme', 'settingPost', '', '模板文件编辑提交保存', '', '模板文件编辑提交保存'), ('227', '178', '1', '0', '10000', 'admin', 'Theme', 'dataSource', '', '模板文件设置数据源', '', '模板文件设置数据源'), ('231', '215', '1', '0', '10000', 'admin', 'Slide', 'add', '', '添加幻灯片', '', '添加幻灯片'), ('232', '215', '2', '0', '10000', 'admin', 'Slide', 'addPost', '', '添加幻灯片提交', '', '添加幻灯片提交'), ('233', '215', '1', '0', '10000', 'admin', 'Slide', 'edit', '', '编辑幻灯片', '', '编辑幻灯片'), ('234', '215', '2', '0', '10000', 'admin', 'Slide', 'editPost', '', '编辑幻灯片提交', '', '编辑幻灯片提交'), ('235', '215', '2', '0', '10000', 'admin', 'Slide', 'delete', '', '删除幻灯片', '', '删除幻灯片'), ('242', '0', '0', '1', '10', 'user', 'AdminIndex', 'default', '', '用户管理', 'group', '用户管理'), ('243', '242', '0', '1', '10000', 'admin', 'User', 'default', '', '管理组', '', '管理组'), ('244', '242', '0', '1', '10000', 'user', 'AdminIndex', 'default1', '', '用户组', '', '用户组'), ('245', '243', '1', '1', '10000', 'admin', 'User', 'index', '', '管理员管理', '', '管理员管理'), ('246', '244', '1', '1', '10000', 'user', 'AdminIndex', 'index', '', '本站用户', '', '本站用户'), ('247', '245', '1', '0', '10000', 'admin', 'User', 'add', '', '管理员添加', '', '管理员添加'), ('248', '245', '2', '0', '10000', 'admin', 'User', 'addPost', '', '管理员添加提交', '', '管理员添加提交'), ('249', '245', '1', '0', '10000', 'admin', 'User', 'edit', '', '管理员编辑', '', '管理员编辑'), ('250', '245', '2', '0', '10000', 'admin', 'User', 'editPost', '', '管理员编辑提交', '', '管理员编辑提交'), ('251', '245', '1', '0', '10000', 'admin', 'User', 'userInfo', '', '管理员个人信息修改', '', '管理员个人信息修改'), ('252', '245', '2', '0', '10000', 'admin', 'User', 'userInfoPost', '', '管理员个人信息修改提交', '', '管理员个人信息修改提交'), ('253', '245', '2', '0', '10000', 'admin', 'User', 'delete', '', '管理员删除', '', '管理员删除'), ('254', '245', '2', '0', '10000', 'admin', 'User', 'ban', '', '停用管理员', '', '停用管理员'), ('255', '245', '2', '0', '10000', 'admin', 'User', 'cancelBan', '', '启用管理员', '', '启用管理员'), ('256', '246', '2', '0', '10000', 'user', 'AdminIndex', 'ban', '', '本站用户拉黑', '', '本站用户拉黑'), ('257', '246', '2', '0', '10000', 'user', 'AdminIndex', 'cancelBan', '', '本站用户启用', '', '本站用户启用'), ('258', '244', '1', '1', '10000', 'user', 'AdminOauth', 'index', '', '第三方用户', '', '第三方用户'), ('259', '258', '2', '1', '10000', 'user', 'AdminOauth', 'delete', '', '删除第三方用户绑定', '', '删除第三方用户绑定'), ('260', '215', '1', '0', '10000', 'admin', 'SlideItem', 'index', '', '幻灯片页面列表', '', '幻灯片页面列表'), ('261', '260', '1', '0', '10000', 'admin', 'SlideItem', 'add', '', '幻灯片页面添加', '', '幻灯片页面添加'), ('262', '260', '2', '0', '10000', 'admin', 'SlideItem', 'addPost', '', '幻灯片页面添加提交', '', '幻灯片页面添加提交'), ('263', '260', '1', '0', '10000', 'admin', 'SlideItem', 'edit', '', '幻灯片页面编辑', '', '幻灯片页面编辑'), ('264', '260', '2', '0', '10000', 'admin', 'SlideItem', 'editPost', '', '幻灯片页面编辑提交', '', '幻灯片页面编辑提交'), ('265', '260', '2', '0', '10000', 'admin', 'SlideItem', 'delete', '', '幻灯片页面删除', '', '幻灯片页面删除'), ('266', '260', '2', '0', '10000', 'admin', 'SlideItem', 'ban', '', '幻灯片页面隐藏', '', '幻灯片页面隐藏'), ('267', '260', '2', '0', '10000', 'admin', 'SlideItem', 'cancelBan', '', '幻灯片页面显示', '', '幻灯片页面显示'), ('268', '260', '2', '0', '10000', 'admin', 'SlideItem', 'listOrder', '', '幻灯片页面排序', '', '幻灯片页面排序'), ('269', '0', '0', '1', '10000', 'portal', 'AdminIndex', 'default', '', '门户管理', 'th', '门户管理'), ('270', '7', '1', '0', '10000', 'portal', 'AdminArticle', 'add', '', '添加文章', '', '添加文章'), ('271', '7', '2', '0', '10000', 'portal', 'AdminArticle', 'addPost', '', '添加文章提交', '', '添加文章提交'), ('272', '7', '1', '0', '10000', 'portal', 'AdminArticle', 'edit', '', '编辑文章', '', '编辑文章'), ('273', '7', '2', '0', '10000', 'portal', 'AdminArticle', 'editPost', '', '编辑文章提交', '', '编辑文章提交'), ('274', '7', '2', '0', '10000', 'portal', 'AdminArticle', 'delete', '', '文章删除', '', '文章删除'), ('275', '7', '2', '0', '10000', 'portal', 'AdminArticle', 'publish', '', '文章发布', '', '文章发布'), ('276', '7', '2', '0', '10000', 'portal', 'AdminArticle', 'top', '', '文章置顶', '', '文章置顶'), ('277', '7', '2', '0', '10000', 'portal', 'AdminArticle', 'recommend', '', '文章推荐', '', '文章推荐'), ('278', '18', '1', '0', '10000', 'portal', 'AdminCategory', 'add', '', '添加文章分类', '', '添加文章分类'), ('279', '18', '2', '0', '10000', 'portal', 'AdminCategory', 'addPost', '', '添加文章分类提交', '', '添加文章分类提交'), ('280', '18', '1', '0', '10000', 'portal', 'AdminCategory', 'edit', '', '编辑文章分类', '', '编辑文章分类'), ('281', '18', '2', '0', '10000', 'portal', 'AdminCategory', 'editPost', '', '编辑文章分类提交', '', '编辑文章分类提交'), ('282', '18', '1', '0', '10000', 'portal', 'AdminCategory', 'select', '', '文章分类选择对话框', '', '文章分类选择对话框'), ('283', '18', '2', '0', '10000', 'portal', 'AdminCategory', 'delete', '', '删除文章分类', '', '删除文章分类'), ('284', '25', '2', '0', '10000', 'portal', 'AdminPage', 'addPost', '', '添加页面提交', '', '添加页面提交'), ('285', '25', '2', '0', '10000', 'portal', 'AdminPage', 'editPost', '', '编辑页面提交', '', '编辑页面提交'), ('286', '180', '1', '0', '10000', 'portal', 'AdminTag', 'add', '', '添加文章标签', '', '添加文章标签'), ('287', '180', '2', '0', '10000', 'portal', 'AdminTag', 'addPost', '', '添加文章标签提交', '', '添加文章标签提交'), ('288', '180', '2', '0', '10000', 'portal', 'AdminTag', 'upStatus', '', '更新标签状态', '', '更新标签状态'), ('289', '180', '2', '0', '10000', 'portal', 'AdminTag', 'delete', '', '删除文章标签', '', '删除文章标签'), ('293', '0', '1', '0', '10000', 'asset', 'AdminAsset', 'index', '', '资源管理', 'file', '资源管理列表'), ('294', '293', '2', '0', '10000', 'asset', 'AdminAsset', 'delete', '', '删除文件', '', '删除文件'), ('295', '7', '2', '0', '10000', 'portal', 'AdminArticle', 'listOrder', '', '文章排序', '', '文章排序');
COMMIT;

-- ----------------------------
--  Table structure for `cmf_asset`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_asset`;
CREATE TABLE `cmf_asset` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `file_size` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小,单位B',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上传时间',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态;1:可用,0:不可用',
  `download_times` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '下载次数',
  `file_key` varchar(64) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '文件惟一码',
  `filename` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '文件名',
  `file_path` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '文件路径,相对于upload目录,可以为url',
  `file_md5` varchar(32) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '文件md5值',
  `file_sha1` varchar(40) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `suffix` varchar(10) NOT NULL DEFAULT '' COMMENT '文件后缀名,不包括点',
  `more` text COMMENT '其它详细信息,JSON格式',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COMMENT='资源表';

-- ----------------------------
--  Records of `cmf_asset`
-- ----------------------------
BEGIN;
INSERT INTO `cmf_asset` VALUES ('1', '1', '2632', '1492389953', '1', '0', 'dc49beb5f5c0ed6172634bc171d1a3e9d50a465e020a0865a13b1e9ad5ba8fbd', '77933a7e3335836f5d1f010666b55587.png', '20170417/77933a7e3335836f5d1f010666b55587.png', 'dc49beb5f5c0ed6172634bc171d1a3e9', '49c3abe888f744025946be20a98947cd73929619', 'png', null), ('2', '1', '52585', '1492389953', '1', '0', 'b5b7a334ce7789241c019bfe9c1c53c8006e70b32eec072ebb2b36de506c0a21', '7e42d569f09bd9d1b9f88b38405824b3.png', '20170417/7e42d569f09bd9d1b9f88b38405824b3.png', 'b5b7a334ce7789241c019bfe9c1c53c8', '72ba852158ac923822a30be69968f9fa60b0fcdd', 'png', null), ('3', '1', '426909', '1492390396', '1', '0', '73e86ecb54c8d087e5917c6ed1752bc90ff64970e87f0a378838f624211b608d', '1678c4217c13796caa1e0365cac47aaa.jpg', '20170417/1678c4217c13796caa1e0365cac47aaa.jpg', '73e86ecb54c8d087e5917c6ed1752bc9', '8f2a4389d3238242f0dbecdeb847f0f98b5079dc', 'jpg', null), ('4', '1', '8488', '1492390515', '1', '0', 'e8f5e3c12a5995871ebd1a2bd8063e84b52a3edf5c4a07e2aea463d677f3b3c6', '0d6c0f4aa52b878c0651539af0dff943.png', '20170417/0d6c0f4aa52b878c0651539af0dff943.png', 'e8f5e3c12a5995871ebd1a2bd8063e84', 'e6976d0a8f2bc5f798c7e5ddd584bfdcd2bb713f', 'png', null), ('5', '1', '49923', '1492746080', '1', '0', '448edb9a84f0063c5ca633cb84cfb711dbdf14c9064de278c1024aa439afc360', '06af3b80fe656d737f45c45c0bab890e.zip', '20170421/06af3b80fe656d737f45c45c0bab890e.zip', '448edb9a84f0063c5ca633cb84cfb711', '5eb39f929f344ff1a7fcf53c3fafc17a3541cb47', 'zip', null);
COMMIT;

-- ----------------------------
--  Table structure for `cmf_auth_access`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_auth_access`;
CREATE TABLE `cmf_auth_access` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(10) unsigned NOT NULL COMMENT '角色',
  `rule_name` varchar(100) NOT NULL DEFAULT '' COMMENT '规则唯一英文标识,全小写',
  `type` varchar(30) NOT NULL DEFAULT '' COMMENT '权限规则分类,请加应用前缀,如admin_',
  PRIMARY KEY (`id`),
  KEY `role_id` (`role_id`),
  KEY `rule_name` (`rule_name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2396 DEFAULT CHARSET=utf8 COMMENT='权限授权表';

-- ----------------------------
--  Records of `cmf_auth_access`
-- ----------------------------
BEGIN;
INSERT INTO `cmf_auth_access` VALUES ('2205', '2', 'admin/setting/default', 'admin_url'), ('2206', '2', 'admin/menu/index', 'admin_url'), ('2207', '2', 'admin/menu/add', 'admin_url'), ('2208', '2', 'admin/menu/add_post', 'admin_url'), ('2209', '2', 'admin/menu/listorders', 'admin_url'), ('2210', '2', 'admin/menu/backup_menu', 'admin_url'), ('2211', '2', 'admin/menu/export_menu_lang', 'admin_url'), ('2212', '2', 'admin/menu/restore_menu', 'admin_url'), ('2213', '2', 'admin/menu/getactions', 'admin_url'), ('2214', '2', 'admin/menu/export_menu', 'admin_url'), ('2215', '2', 'admin/menu/edit', 'admin_url'), ('2216', '2', 'admin/menu/edit_post', 'admin_url'), ('2217', '2', 'admin/menu/delete', 'admin_url'), ('2218', '2', 'admin/menu/lists', 'admin_url'), ('2219', '2', 'admin/menu/addpost', 'admin_url'), ('2220', '2', 'admin/menu/editpost', 'admin_url'), ('2221', '2', 'admin/menu/listorder', 'admin_url'), ('2222', '2', 'admin/setting/password', 'admin_url'), ('2223', '2', 'admin/setting/password_post', 'admin_url'), ('2224', '2', 'admin/setting/passwordpost', 'admin_url'), ('2225', '2', 'admin/setting/site', 'admin_url'), ('2226', '2', 'admin/setting/site_post', 'admin_url'), ('2227', '2', 'admin/route/index', 'admin_url'), ('2228', '2', 'admin/route/add', 'admin_url'), ('2229', '2', 'admin/route/add_post', 'admin_url'), ('2230', '2', 'admin/route/edit', 'admin_url'), ('2231', '2', 'admin/route/edit_post', 'admin_url'), ('2232', '2', 'admin/route/delete', 'admin_url'), ('2233', '2', 'admin/route/ban', 'admin_url'), ('2234', '2', 'admin/route/open', 'admin_url'), ('2235', '2', 'admin/route/listorders', 'admin_url'), ('2236', '2', 'admin/setting/sitepost', 'admin_url'), ('2237', '2', 'admin/mailer/index', 'admin_url'), ('2238', '2', 'admin/mailer/index_post', 'admin_url'), ('2239', '2', 'admin/mailer/active', 'admin_url'), ('2240', '2', 'admin/mailer/active_post', 'admin_url'), ('2241', '2', 'admin/mailer/test', 'admin_url'), ('2242', '2', 'admin/mailer/indexpost', 'admin_url'), ('2243', '2', 'admin/mailer/activepost', 'admin_url'), ('2244', '2', 'admin/storage/index', 'admin_url'), ('2245', '2', 'admin/storage/setting_post', 'admin_url'), ('2246', '2', 'admin/setting/upload', 'admin_url'), ('2247', '2', 'admin/setting/upload_post', 'admin_url'), ('2248', '2', 'admin/setting/uploadpost', 'admin_url'), ('2249', '2', 'admin/theme/index', 'admin_url'), ('2250', '2', 'admin/theme/install', 'admin_url'), ('2251', '2', 'admin/theme/uninstall', 'admin_url'), ('2252', '2', 'admin/theme/installtheme', 'admin_url'), ('2253', '2', 'admin/theme/update', 'admin_url'), ('2254', '2', 'admin/theme/active', 'admin_url'), ('2255', '2', 'admin/theme/files', 'admin_url'), ('2256', '2', 'admin/theme/filesetting', 'admin_url'), ('2257', '2', 'admin/theme/filearraydata', 'admin_url'), ('2258', '2', 'admin/theme/filearraydataedit', 'admin_url'), ('2259', '2', 'admin/theme/filearraydatadelete', 'admin_url'), ('2260', '2', 'admin/theme/settingpost', 'admin_url'), ('2261', '2', 'admin/theme/datasource', 'admin_url'), ('2262', '2', 'admin/link/index', 'admin_url'), ('2263', '2', 'admin/link/add', 'admin_url'), ('2264', '2', 'admin/link/addpost', 'admin_url'), ('2265', '2', 'admin/link/edit', 'admin_url'), ('2266', '2', 'admin/link/editpost', 'admin_url'), ('2267', '2', 'admin/link/delete', 'admin_url'), ('2268', '2', 'admin/link/listorder', 'admin_url'), ('2269', '2', 'admin/link/toggle', 'admin_url'), ('2270', '2', 'admin/setting/clearcache', 'admin_url'), ('2271', '2', 'admin/nav/index', 'admin_url'), ('2272', '2', 'admin/nav/listorders', 'admin_url'), ('2273', '2', 'admin/nav/delete', 'admin_url'), ('2274', '2', 'admin/nav/edit', 'admin_url'), ('2275', '2', 'admin/nav/edit_post', 'admin_url'), ('2276', '2', 'admin/nav/add', 'admin_url'), ('2277', '2', 'admin/nav/add_post', 'admin_url'), ('2278', '2', 'admin/nav/addpost', 'admin_url'), ('2279', '2', 'admin/nav/editpost', 'admin_url'), ('2280', '2', 'admin/navmenu/index', 'admin_url'), ('2281', '2', 'admin/navmenu/add', 'admin_url'), ('2282', '2', 'admin/navmenu/addpost', 'admin_url'), ('2283', '2', 'admin/navmenu/edit', 'admin_url'), ('2284', '2', 'admin/navmenu/editpost', 'admin_url'), ('2285', '2', 'admin/navmenu/delete', 'admin_url'), ('2286', '2', 'admin/navmenu/listorder', 'admin_url'), ('2287', '2', 'admin/slide/index', 'admin_url'), ('2288', '2', 'admin/slideitem/index', 'admin_url'), ('2289', '2', 'admin/slideitem/add', 'admin_url'), ('2290', '2', 'admin/slideitem/addpost', 'admin_url'), ('2291', '2', 'admin/slideitem/edit', 'admin_url'), ('2292', '2', 'admin/slideitem/editpost', 'admin_url'), ('2293', '2', 'admin/slideitem/delete', 'admin_url'), ('2294', '2', 'admin/slideitem/ban', 'admin_url'), ('2295', '2', 'admin/slideitem/cancelban', 'admin_url'), ('2296', '2', 'admin/slideitem/listorder', 'admin_url'), ('2297', '2', 'admin/slide/add', 'admin_url'), ('2298', '2', 'admin/slide/addpost', 'admin_url'), ('2299', '2', 'admin/slide/edit', 'admin_url'), ('2300', '2', 'admin/slide/editpost', 'admin_url'), ('2301', '2', 'admin/slide/delete', 'admin_url'), ('2302', '2', 'user/adminindex/default', 'admin_url'), ('2303', '2', 'admin/user/default', 'admin_url'), ('2304', '2', 'admin/rbac/index', 'admin_url'), ('2305', '2', 'admin/rbac/member', 'admin_url'), ('2306', '2', 'admin/rbac/authorize', 'admin_url'), ('2307', '2', 'admin/rbac/authorize_post', 'admin_url'), ('2308', '2', 'admin/rbac/roleedit', 'admin_url'), ('2309', '2', 'admin/rbac/roleedit_post', 'admin_url'), ('2310', '2', 'admin/rbac/roledelete', 'admin_url'), ('2311', '2', 'admin/rbac/roleadd', 'admin_url'), ('2312', '2', 'admin/rbac/roleadd_post', 'admin_url'), ('2313', '2', 'admin/user/index', 'admin_url'), ('2314', '2', 'admin/user/add', 'admin_url'), ('2315', '2', 'admin/user/addpost', 'admin_url'), ('2316', '2', 'admin/user/edit', 'admin_url'), ('2317', '2', 'admin/user/editpost', 'admin_url'), ('2318', '2', 'admin/user/userinfo', 'admin_url'), ('2319', '2', 'admin/user/userinfopost', 'admin_url'), ('2320', '2', 'admin/user/delete', 'admin_url'), ('2321', '2', 'admin/user/ban', 'admin_url'), ('2322', '2', 'admin/user/cancelban', 'admin_url'), ('2323', '2', 'user/adminindex/default1', 'admin_url'), ('2324', '2', 'user/adminoauth/index', 'admin_url'), ('2325', '2', 'user/adminoauth/delete', 'admin_url'), ('2326', '2', 'user/adminindex/index', 'admin_url'), ('2327', '2', 'user/adminindex/ban', 'admin_url'), ('2328', '2', 'user/adminindex/cancelban', 'admin_url'), ('2329', '2', 'admin/plugin/default', 'admin_url'), ('2330', '2', 'admin/hook/index', 'admin_url'), ('2331', '2', 'admin/hook/plugins', 'admin_url'), ('2332', '2', 'admin/hook/plugintoggle', 'admin_url'), ('2333', '2', 'admin/hook/pluginlistorder', 'admin_url'), ('2334', '2', 'admin/plugin/index', 'admin_url'), ('2335', '2', 'admin/plugin/toggle', 'admin_url'), ('2336', '2', 'admin/plugin/setting', 'admin_url'), ('2337', '2', 'admin/plugin/setting_post', 'admin_url'), ('2338', '2', 'admin/plugin/install', 'admin_url'), ('2339', '2', 'admin/plugin/uninstall', 'admin_url'), ('2340', '2', 'admin/plugin/update', 'admin_url'), ('2341', '2', 'admin/plugin/settingpost', 'admin_url'), ('2342', '2', 'portal/adminindex/default', 'admin_url'), ('2343', '2', 'portal/adminarticle/index', 'admin_url'), ('2344', '2', 'portal/adminpost/listorders', 'admin_url'), ('2345', '2', 'portal/adminpost/top', 'admin_url'), ('2346', '2', 'portal/adminpost/recommend', 'admin_url'), ('2347', '2', 'portal/adminpost/copy', 'admin_url'), ('2348', '2', 'portal/adminpost/move', 'admin_url'), ('2349', '2', 'portal/adminpost/check', 'admin_url'), ('2350', '2', 'portal/adminpost/delete', 'admin_url'), ('2351', '2', 'portal/adminpost/edit', 'admin_url'), ('2352', '2', 'portal/adminpost/edit_post', 'admin_url'), ('2353', '2', 'portal/adminpost/add', 'admin_url'), ('2354', '2', 'portal/adminpost/add_post', 'admin_url'), ('2355', '2', 'portal/adminarticle/add', 'admin_url'), ('2356', '2', 'portal/adminarticle/addpost', 'admin_url'), ('2357', '2', 'portal/adminarticle/edit', 'admin_url'), ('2358', '2', 'portal/adminarticle/editpost', 'admin_url'), ('2359', '2', 'portal/adminarticle/delete', 'admin_url'), ('2360', '2', 'portal/adminarticle/publish', 'admin_url'), ('2361', '2', 'portal/adminarticle/top', 'admin_url'), ('2362', '2', 'portal/adminarticle/recommend', 'admin_url'), ('2363', '2', 'portal/adminarticle/listorder', 'admin_url'), ('2364', '2', 'portal/admincategory/index', 'admin_url'), ('2365', '2', 'portal/adminterm/listorders', 'admin_url'), ('2366', '2', 'portal/adminterm/delete', 'admin_url'), ('2367', '2', 'portal/adminterm/edit', 'admin_url'), ('2368', '2', 'portal/adminterm/edit_post', 'admin_url'), ('2369', '2', 'portal/adminterm/add', 'admin_url'), ('2370', '2', 'portal/adminterm/add_post', 'admin_url'), ('2371', '2', 'portal/admincategory/add', 'admin_url'), ('2372', '2', 'portal/admincategory/addpost', 'admin_url'), ('2373', '2', 'portal/admincategory/edit', 'admin_url'), ('2374', '2', 'portal/admincategory/editpost', 'admin_url'), ('2375', '2', 'portal/admincategory/select', 'admin_url'), ('2376', '2', 'portal/admincategory/delete', 'admin_url'), ('2377', '2', 'portal/adminpage/index', 'admin_url'), ('2378', '2', 'portal/adminpage/listorders', 'admin_url'), ('2379', '2', 'portal/adminpage/delete', 'admin_url'), ('2380', '2', 'portal/adminpage/edit', 'admin_url'), ('2381', '2', 'portal/adminpage/edit_post', 'admin_url'), ('2382', '2', 'portal/adminpage/add', 'admin_url'), ('2383', '2', 'portal/adminpage/add_post', 'admin_url'), ('2384', '2', 'portal/adminpage/addpost', 'admin_url'), ('2385', '2', 'portal/adminpage/editpost', 'admin_url'), ('2386', '2', 'portal/admintag/index', 'admin_url'), ('2387', '2', 'portal/admintag/add', 'admin_url'), ('2388', '2', 'portal/admintag/addpost', 'admin_url'), ('2389', '2', 'portal/admintag/upstatus', 'admin_url'), ('2390', '2', 'portal/admintag/delete', 'admin_url'), ('2391', '2', 'asset/adminasset/index', 'admin_url'), ('2392', '2', 'asset/adminasset/delete', 'admin_url'), ('2393', '2', 'admin/recycle/index', 'admin_url'), ('2394', '2', 'admin/recycle/restore', 'admin_url'), ('2395', '2', 'admin/recycle/delete', 'admin_url');
COMMIT;

-- ----------------------------
--  Table structure for `cmf_auth_rule`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_auth_rule`;
CREATE TABLE `cmf_auth_rule` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '规则id,自增主键',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '是否有效(0:无效,1:有效)',
  `app` varchar(15) NOT NULL COMMENT '规则所属module',
  `type` varchar(30) NOT NULL DEFAULT '' COMMENT '权限规则分类，请加应用前缀,如admin_',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '规则唯一英文标识,全小写',
  `param` varchar(100) NOT NULL DEFAULT '' COMMENT '额外url参数',
  `title` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '规则描述',
  `condition` varchar(200) NOT NULL DEFAULT '' COMMENT '规则附加条件',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`) USING BTREE,
  KEY `module` (`app`,`status`,`type`)
) ENGINE=InnoDB AUTO_INCREMENT=142 DEFAULT CHARSET=utf8mb4 COMMENT='权限规则表';

-- ----------------------------
--  Records of `cmf_auth_rule`
-- ----------------------------
BEGIN;
INSERT INTO `cmf_auth_rule` VALUES ('1', '1', 'admin', 'admin_url', 'admin/Hook/index', '', '钩子管理', ''), ('2', '1', 'admin', 'admin_url', 'admin/Hook/plugins', '', '钩子插件管理', ''), ('3', '1', 'admin', 'admin_url', 'admin/Hook/pluginToggle', '', '钩子插件启用禁用', ''), ('4', '1', 'admin', 'admin_url', 'admin/Hook/pluginListOrder', '', '钩子插件排序', ''), ('5', '1', 'admin', 'admin_url', 'admin/Link/index', '', '友情链接', ''), ('6', '1', 'admin', 'admin_url', 'admin/Link/add', '', '添加友情链接', ''), ('7', '1', 'admin', 'admin_url', 'admin/Link/addPost', '', '添加友情链接提交保存', ''), ('8', '1', 'admin', 'admin_url', 'admin/Link/edit', '', '编辑友情链接', ''), ('9', '1', 'admin', 'admin_url', 'admin/Link/editPost', '', '编辑友情链接提交保存', ''), ('10', '1', 'admin', 'admin_url', 'admin/Link/delete', '', '删除友情链接', ''), ('11', '1', 'admin', 'admin_url', 'admin/Link/listOrder', '', '友情链接排序', ''), ('12', '1', 'admin', 'admin_url', 'admin/Link/toggle', '', '友情链接显示隐藏', ''), ('13', '1', 'admin', 'admin_url', 'admin/Mailer/index', '', '邮箱配置', ''), ('14', '1', 'admin', 'admin_url', 'admin/Mailer/indexPost', '', '邮箱配置提交保存', ''), ('15', '1', 'admin', 'admin_url', 'admin/Mailer/active', '', '注册邮件模板', ''), ('16', '1', 'admin', 'admin_url', 'admin/Mailer/activePost', '', '会员注册邮件模板提交', ''), ('17', '1', 'admin', 'admin_url', 'admin/Mailer/test', '', '测试邮件', ''), ('18', '1', 'admin', 'admin_url', 'admin/Menu/index', '', '后台菜单', ''), ('19', '1', 'admin', 'admin_url', 'admin/Menu/lists', '', '所有菜单', ''), ('20', '1', 'admin', 'admin_url', 'admin/Menu/add', '', '添加菜单', ''), ('21', '1', 'admin', 'admin_url', 'admin/Menu/addPost', '', '后台菜单添加提交保存', ''), ('22', '1', 'admin', 'admin_url', 'admin/Menu/edit', '', '编辑菜单', ''), ('23', '1', 'admin', 'admin_url', 'admin/Menu/editPost', '', '后台菜单编辑提交保存', ''), ('24', '1', 'admin', 'admin_url', 'admin/Menu/delete', '', '删除菜单', ''), ('25', '1', 'admin', 'admin_url', 'admin/Menu/listOrder', '', '后台菜单排序', ''), ('26', '1', 'admin', 'admin_url', 'admin/Menu/getActions', '', '导入新菜单', ''), ('27', '1', 'admin', 'admin_url', 'admin/Nav/index', '', '导航管理', ''), ('28', '1', 'admin', 'admin_url', 'admin/Nav/add', '', '添加菜单', ''), ('29', '1', 'admin', 'admin_url', 'admin/Nav/addPost', '', '添加导航提交保存', ''), ('30', '1', 'admin', 'admin_url', 'admin/Nav/edit', '', '编辑菜单', ''), ('31', '1', 'admin', 'admin_url', 'admin/Nav/editPost', '', '编辑导航提交保存', ''), ('32', '1', 'admin', 'admin_url', 'admin/Nav/delete', '', '删除菜单', ''), ('33', '1', 'admin', 'admin_url', 'admin/NavMenu/index', '', '导航菜单', ''), ('34', '1', 'admin', 'admin_url', 'admin/NavMenu/add', '', '添加导航菜单', ''), ('35', '1', 'admin', 'admin_url', 'admin/NavMenu/addPost', '', '添加导航菜单提交保存', ''), ('36', '1', 'admin', 'admin_url', 'admin/NavMenu/edit', '', '编辑导航菜单', ''), ('37', '1', 'admin', 'admin_url', 'admin/NavMenu/editPost', '', '编辑导航菜单提交保存', ''), ('38', '1', 'admin', 'admin_url', 'admin/NavMenu/delete', '', '删除导航菜单', ''), ('39', '1', 'admin', 'admin_url', 'admin/NavMenu/listOrder', '', '导航菜单排序', ''), ('40', '1', 'admin', 'admin_url', 'admin/Plugin/default', '', '插件管理', ''), ('41', '1', 'admin', 'admin_url', 'admin/Plugin/index', '', '插件列表', ''), ('42', '1', 'admin', 'admin_url', 'admin/Plugin/toggle', '', '插件启用切换', ''), ('43', '1', 'admin', 'admin_url', 'admin/Plugin/setting', '', '插件设置', ''), ('44', '1', 'admin', 'admin_url', 'admin/Plugin/settingPost', '', '插件设置提交', ''), ('45', '1', 'admin', 'admin_url', 'admin/Plugin/install', '', '插件安装', ''), ('46', '1', 'admin', 'admin_url', 'admin/Plugin/update', '', '插件更新', ''), ('47', '1', 'admin', 'admin_url', 'admin/Plugin/uninstall', '', '插件卸载', ''), ('48', '1', 'admin', 'admin_url', 'admin/Recycle/index', '', '回收站', ''), ('49', '1', 'admin', 'admin_url', 'admin/Recycle/restore', '', '回收站还原', ''), ('50', '1', 'admin', 'admin_url', 'admin/Recycle/delete', '', '回收站彻底删除', ''), ('51', '1', 'admin', 'admin_url', 'admin/Setting/default', '', '设置', ''), ('52', '1', 'admin', 'admin_url', 'admin/Setting/site', '', '网站信息', ''), ('53', '1', 'admin', 'admin_url', 'admin/Setting/sitePost', '', '网站信息设置提交', ''), ('54', '1', 'admin', 'admin_url', 'admin/Setting/password', '', '修改密码', ''), ('55', '1', 'admin', 'admin_url', 'admin/Setting/passwordPost', '', '密码修改提交', ''), ('56', '1', 'admin', 'admin_url', 'admin/Setting/upload', '', '上传设置', ''), ('57', '1', 'admin', 'admin_url', 'admin/Setting/uploadPost', '', '上传设置提交', ''), ('58', '1', 'admin', 'admin_url', 'admin/Setting/clearCache', '', '清除缓存', ''), ('59', '1', 'admin', 'admin_url', 'admin/Slide/index', '', '幻灯片管理', ''), ('60', '1', 'admin', 'admin_url', 'admin/Slide/add', '', '添加幻灯片', ''), ('61', '1', 'admin', 'admin_url', 'admin/Slide/addPost', '', '添加幻灯片提交', ''), ('62', '1', 'admin', 'admin_url', 'admin/Slide/edit', '', '编辑幻灯片', ''), ('63', '1', 'admin', 'admin_url', 'admin/Slide/editPost', '', '编辑幻灯片提交', ''), ('64', '1', 'admin', 'admin_url', 'admin/Slide/delete', '', '删除幻灯片', ''), ('65', '1', 'admin', 'admin_url', 'admin/Theme/index', '', '模板管理', ''), ('66', '1', 'admin', 'admin_url', 'admin/Theme/install', '', '安装模板', ''), ('67', '1', 'admin', 'admin_url', 'admin/Theme/uninstall', '', '卸载模板', ''), ('68', '1', 'admin', 'admin_url', 'admin/Theme/installTheme', '', '模板安装', ''), ('69', '1', 'admin', 'admin_url', 'admin/Theme/update', '', '模板更新', ''), ('70', '1', 'admin', 'admin_url', 'admin/Theme/active', '', '启用模板', ''), ('71', '1', 'admin', 'admin_url', 'admin/Theme/files', '', '模板文件列表', ''), ('72', '1', 'admin', 'admin_url', 'admin/Theme/fileSetting', '', '模板文件设置', ''), ('73', '1', 'admin', 'admin_url', 'admin/Theme/fileArrayData', '', '模板文件数组数据列表', ''), ('74', '1', 'admin', 'admin_url', 'admin/Theme/fileArrayDataEdit', '', '模板文件数组数据添加编辑', ''), ('75', '1', 'admin', 'admin_url', 'admin/Theme/fileArrayDataDelete', '', '模板文件数组数据删除', ''), ('76', '1', 'admin', 'admin_url', 'admin/Theme/settingPost', '', '模板文件编辑提交保存', ''), ('77', '1', 'admin', 'admin_url', 'admin/Theme/dataSource', '', '模板文件设置数据源', ''), ('78', '1', 'admin', 'admin_url', 'admin/User/default', '', '管理组', ''), ('79', '1', 'admin', 'admin_url', 'admin/User/index', '', '管理员管理', ''), ('80', '1', 'admin', 'admin_url', 'admin/User/add', '', '管理员添加', ''), ('81', '1', 'admin', 'admin_url', 'admin/User/addPost', '', '管理员添加提交', ''), ('82', '1', 'admin', 'admin_url', 'admin/User/edit', '', '管理员编辑', ''), ('83', '1', 'admin', 'admin_url', 'admin/User/editPost', '', '管理员编辑提交', ''), ('84', '1', 'admin', 'admin_url', 'admin/User/userInfo', '', '管理员个人信息修改', ''), ('85', '1', 'admin', 'admin_url', 'admin/User/userInfoPost', '', '管理员个人信息修改提交', ''), ('86', '1', 'admin', 'admin_url', 'admin/User/delete', '', '管理员删除', ''), ('87', '1', 'admin', 'admin_url', 'admin/User/ban', '', '停用管理员', ''), ('88', '1', 'admin', 'admin_url', 'admin/User/cancelBan', '', '启用管理员', ''), ('89', '1', 'user', 'admin_url', 'user/AdminIndex/default', '', '用户管理', ''), ('90', '1', 'user', 'admin_url', 'user/AdminIndex/default1', '', '用户组', ''), ('91', '1', 'user', 'admin_url', 'user/AdminIndex/index', '', '本站用户', ''), ('92', '1', 'user', 'admin_url', 'user/AdminIndex/ban', '', '本站用户拉黑', ''), ('93', '1', 'user', 'admin_url', 'user/AdminIndex/cancelBan', '', '本站用户启用', ''), ('94', '1', 'user', 'admin_url', 'user/AdminOauth/index', '', '第三方用户', ''), ('95', '1', 'user', 'admin_url', 'user/AdminOauth/delete', '', '删除第三方用户绑定', ''), ('96', '1', 'admin', 'admin_url', 'admin/SlideItem/index', '', '幻灯片页面列表', ''), ('97', '1', 'admin', 'admin_url', 'admin/SlideItem/add', '', '幻灯片页面添加', ''), ('98', '1', 'admin', 'admin_url', 'admin/SlideItem/addPost', '', '幻灯片页面添加提交', ''), ('99', '1', 'admin', 'admin_url', 'admin/SlideItem/edit', '', '幻灯片页面编辑', ''), ('100', '1', 'admin', 'admin_url', 'admin/SlideItem/editPost', '', '幻灯片页面编辑提交', ''), ('101', '1', 'admin', 'admin_url', 'admin/SlideItem/delete', '', '幻灯片页面删除', ''), ('102', '1', 'admin', 'admin_url', 'admin/SlideItem/ban', '', '幻灯片页面隐藏', ''), ('103', '1', 'admin', 'admin_url', 'admin/SlideItem/cancelBan', '', '幻灯片页面显示', ''), ('104', '1', 'admin', 'admin_url', 'admin/SlideItem/listOrder', '', '幻灯片页面排序', ''), ('105', '1', 'portal', 'admin_url', 'portal/AdminArticle/index', '', '文章管理', ''), ('106', '1', 'portal', 'admin_url', 'portal/AdminArticle/add', '', '添加文章', ''), ('107', '1', 'portal', 'admin_url', 'portal/AdminArticle/addPost', '', '添加文章提交', ''), ('108', '1', 'portal', 'admin_url', 'portal/AdminArticle/edit', '', '编辑文章', ''), ('109', '1', 'portal', 'admin_url', 'portal/AdminArticle/editPost', '', '编辑文章提交', ''), ('110', '1', 'portal', 'admin_url', 'portal/AdminArticle/delete', '', '文章删除', ''), ('111', '1', 'portal', 'admin_url', 'portal/AdminArticle/publish', '', '文章发布', ''), ('112', '1', 'portal', 'admin_url', 'portal/AdminArticle/top', '', '文章置顶', ''), ('113', '1', 'portal', 'admin_url', 'portal/AdminArticle/recommend', '', '文章推荐', ''), ('114', '1', 'portal', 'admin_url', 'portal/AdminCategory/index', '', '分类管理', ''), ('115', '1', 'portal', 'admin_url', 'portal/AdminCategory/add', '', '添加文章分类', ''), ('116', '1', 'portal', 'admin_url', 'portal/AdminCategory/addPost', '', '添加文章分类提交', ''), ('117', '1', 'portal', 'admin_url', 'portal/AdminCategory/edit', '', '编辑文章分类', ''), ('118', '1', 'portal', 'admin_url', 'portal/AdminCategory/editPost', '', '编辑文章分类提交', ''), ('119', '1', 'portal', 'admin_url', 'portal/AdminCategory/select', '', '文章分类选择对话框', ''), ('120', '1', 'portal', 'admin_url', 'portal/AdminCategory/delete', '', '删除文章分类', ''), ('121', '1', 'portal', 'admin_url', 'portal/AdminIndex/default', '', '门户管理', ''), ('122', '1', 'portal', 'admin_url', 'portal/AdminPage/index', '', '页面管理', ''), ('123', '1', 'portal', 'admin_url', 'portal/AdminPage/add', '', '添加页面', ''), ('124', '1', 'portal', 'admin_url', 'portal/AdminPage/addPost', '', '添加页面提交', ''), ('125', '1', 'portal', 'admin_url', 'portal/AdminPage/edit', '', '编辑页面', ''), ('126', '1', 'portal', 'admin_url', 'portal/AdminPage/editPost', '', '编辑页面提交', ''), ('127', '1', 'portal', 'admin_url', 'portal/AdminPage/delete', '', '删除页面', ''), ('128', '1', 'portal', 'admin_url', 'portal/AdminTag/index', '', '文章标签', ''), ('129', '1', 'portal', 'admin_url', 'portal/AdminTag/add', '', '添加文章标签', ''), ('130', '1', 'portal', 'admin_url', 'portal/AdminTag/addPost', '', '添加文章标签提交', ''), ('131', '1', 'portal', 'admin_url', 'portal/AdminTag/upStatus', '', '更新标签状态', ''), ('132', '1', 'portal', 'admin_url', 'portal/AdminTag/delete', '', '删除文章标签', ''), ('136', '1', 'admin', 'admin_url', 'admin/Default/default', 'ss', 'admin', ''), ('137', '1', 'asset', 'admin_url', 'asset/AdminIndex/index', '', '资源管理', ''), ('138', '1', 'asset', 'admin_url', 'asset/AdminIndex/delete', '', '删除文件', ''), ('139', '1', 'asset', 'admin_url', 'asset/AdminAsset/index', '', '资源管理', ''), ('140', '1', 'asset', 'admin_url', 'asset/AdminAsset/delete', '', '删除文件', ''), ('141', '1', 'portal', 'admin_url', 'portal/AdminArticle/listOrder', '', '文章排序', '');
COMMIT;

-- ----------------------------
--  Table structure for `cmf_comment`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_comment`;
CREATE TABLE `cmf_comment` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '被回复的评论id',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '发表评论的用户id',
  `to_user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '被评论的用户id',
  `object_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '评论内容 id',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '评论时间',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:已审核,0:未审核',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '评论类型；1实名评论',
  `table_name` varchar(64) NOT NULL DEFAULT '' COMMENT '评论内容所在表，不带表前缀',
  `full_name` varchar(50) NOT NULL DEFAULT '' COMMENT '评论者昵称',
  `email` varchar(255) NOT NULL DEFAULT '' COMMENT '评论者邮箱',
  `path` varchar(255) NOT NULL DEFAULT '' COMMENT '层级关系',
  `url` text COMMENT '原文地址',
  `content` text COMMENT '评论内容',
  `more` text COMMENT '扩展属性',
  PRIMARY KEY (`id`),
  KEY `comment_post_ID` (`object_id`),
  KEY `comment_approved_date_gmt` (`status`),
  KEY `comment_parent` (`parent_id`),
  KEY `table_id_status` (`table_name`,`object_id`,`status`),
  KEY `createtime` (`create_time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='评论表';

-- ----------------------------
--  Table structure for `cmf_hook`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_hook`;
CREATE TABLE `cmf_hook` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '钩子类型(1:系统钩子;2:应用钩子;3:模板钩子)',
  `once` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否只允许一个插件运行(0:多个;1:一个)',
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '钩子名称',
  `hook` varchar(20) NOT NULL DEFAULT '' COMMENT '钩子',
  `app` varchar(15) NOT NULL DEFAULT '' COMMENT '应用名(只有应用钩子才用)',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COMMENT='系统钩子表';

-- ----------------------------
--  Records of `cmf_hook`
-- ----------------------------
BEGIN;
INSERT INTO `cmf_hook` VALUES ('1', '1', '0', '应用初始化', 'app_init', 'cmf', '应用初始化'), ('2', '1', '0', '应用开始标签位', 'app_begin', 'cmf', '应用开始标签位'), ('3', '1', '0', '模块初始化标签位', 'module_init', 'cmf', '模块初始化标签位'), ('4', '1', '0', '控制器开始标签位', 'action_begin', 'cmf', '控制器开始标签位'), ('5', '1', '0', '视图输出过滤标签位', 'view_filter', 'cmf', '视图输出过滤标签位'), ('6', '1', '0', '应用结束标签位', 'app_end', 'cmf', '应用结束标签位'), ('7', '1', '0', '日志write方法标签位', 'log_write', 'cmf', '日志write方法标签位'), ('8', '1', '0', '输出结束标签位', 'response_end', 'cmf', '输出结束标签位');
COMMIT;

-- ----------------------------
--  Table structure for `cmf_hook_plugin`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_hook_plugin`;
CREATE TABLE `cmf_hook_plugin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态(0:禁用,1:启用)',
  `hook` varchar(20) NOT NULL DEFAULT '' COMMENT '钩子名',
  `plugin` varchar(30) NOT NULL DEFAULT '' COMMENT '插件',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='系统钩子插件表';

-- ----------------------------
--  Records of `cmf_hook_plugin`
-- ----------------------------
BEGIN;
INSERT INTO `cmf_hook_plugin` VALUES ('1', '10', '1', 'footer', 'Demo');
COMMIT;

-- ----------------------------
--  Table structure for `cmf_link`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_link`;
CREATE TABLE `cmf_link` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态;1:显示;0:不显示',
  `rating` int(11) NOT NULL DEFAULT '0' COMMENT '友情链接评级',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '友情链接描述',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '友情链接地址',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '友情链接名称',
  `image` varchar(100) NOT NULL DEFAULT '' COMMENT '友情链接图标',
  `target` varchar(10) NOT NULL DEFAULT '' COMMENT '友情链接打开方式',
  `rel` varchar(50) NOT NULL DEFAULT '' COMMENT '链接与网站的关系',
  PRIMARY KEY (`id`),
  KEY `link_visible` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='友情链接表';

-- ----------------------------
--  Records of `cmf_link`
-- ----------------------------
BEGIN;
INSERT INTO `cmf_link` VALUES ('1', '1', '1', '8', 'thinkcmf官网', 'http://www.thinkcmf.com', 'ThinkCMF', '', '_blank', '');
COMMIT;

-- ----------------------------
--  Table structure for `cmf_nav`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_nav`;
CREATE TABLE `cmf_nav` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `is_main` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '是否为主导航;1:是;0:不是',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '导航位置名称',
  `remark` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='前台导航位置表';

-- ----------------------------
--  Records of `cmf_nav`
-- ----------------------------
BEGIN;
INSERT INTO `cmf_nav` VALUES ('1', '1', '主导航', '主导航');
COMMIT;

-- ----------------------------
--  Table structure for `cmf_nav_menu`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_nav_menu`;
CREATE TABLE `cmf_nav_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nav_id` int(11) NOT NULL COMMENT '导航 id',
  `parent_id` int(11) NOT NULL COMMENT '父 id',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态;1:显示;0:隐藏',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '菜单名称',
  `target` varchar(10) NOT NULL DEFAULT '' COMMENT '打开方式',
  `href` varchar(100) NOT NULL DEFAULT '' COMMENT '链接',
  `icon` varchar(20) NOT NULL DEFAULT '' COMMENT '图标',
  `path` varchar(255) NOT NULL DEFAULT '' COMMENT '层级关系',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COMMENT='前台导航菜单表';

-- ----------------------------
--  Records of `cmf_nav_menu`
-- ----------------------------
BEGIN;
INSERT INTO `cmf_nav_menu` VALUES ('1', '1', '0', '1', '0', '首页', '', 'home', '', '0-1'), ('2', '1', '0', '1', '0', '列表演示', '', '{\"action\":\"portal\\/List\\/index\",\"param\":{\"id\":1}}', 'icon', '0-2'), ('9', '1', '0', '1', '0', '页面演示', '', '{\"action\":\"portal\\/Page\\/index\",\"param\":{\"id\":13}}', '', ''), ('10', '1', '0', '1', '10000', '联系我们', '', '{\"action\":\"portal\\/Page\\/index\",\"param\":{\"id\":14}}', '', ''), ('12', '1', '0', '1', '10000', '发现', '', '{\"action\":\"portal\\/List\\/index\",\"param\":{\"id\":6}}', '', '');
COMMIT;

-- ----------------------------
--  Table structure for `cmf_option`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_option`;
CREATE TABLE `cmf_option` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `autoload` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '是否自动加载;1:自动加载;0:不自动加载',
  `option_name` varchar(64) NOT NULL DEFAULT '' COMMENT '配置名',
  `option_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '配置值',
  PRIMARY KEY (`id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='全站配置表';

-- ----------------------------
--  Records of `cmf_option`
-- ----------------------------
BEGIN;
INSERT INTO `cmf_option` VALUES ('1', '1', 'smtp_setting', '{\"from\":\"zxxjjforever@163.com\",\"from_name\":\"\\u8001\\u732b\",\"host\":\"smtp.163.com\",\">smtp_secure\":\"ssl\",\"port\":\"25\",\"username\":\"zxxjjforever@163.com\",\"password\":\"111111\",\"smtp_secure\":\"\"}'), ('2', '1', 'email_template_user_activation', '{\"subject\":\"dd\",\"template\":\"<p>ddd<\\/p>\"}'), ('3', '1', 'upload_setting', '{\"image\":{\"upload_max_filesize\":\"10240\",\"extensions\":\"jpg,jpeg,png,gif,bmp4\"},\"video\":{\"upload_max_filesize\":\"10240\",\"extensions\":\"mp4,avi,wmv,rm,rmvb,mkv\"},\"audio\":{\"upload_max_filesize\":\"10240\",\"extensions\":\"mp3,wma,wav\"},\"file\":{\"upload_max_filesize\":\"10240\",\"extensions\":\"txt,pdf,doc,docx,xls,xlsx,ppt,pptx,zip,rar\"}}'), ('4', '1', 'site_info', '{\"site_name\":\" ThinkCMF\",\"site_admin_url_password\":\"\",\"site_icp\":\"\\u5565\\u65f6\\u56de\",\"site_admin_email\":\"\\u7a7a\\u95f4\\u514b\\u9686\\u5c31\\u79bb\\u5f00\",\"site_analytics\":\"\\u7a7a\\u95f4\\u514b\\u9686\\u5c31\\u79bb\\u5f00\",\"site_copyright\":\"\\u53ea\\u662f\\u6682\\u65f6\",\"site_seo_title\":\"\\u53ea\\u662f\\u6682\\u65f6\",\"site_seo_keywords\":\"\\u5361\\u7f57\\u62c9\\u63a5\\u53e3\\u4e86\\u89e3\",\"site_seo_description\":\"llkj\",\"urlmode\":\"1\",\"html_suffix\":\"\",\"comment_time_interval\":\"60\"}'), ('5', '1', 'cmf_settings', '{\"banned_usernames\":\"\"}'), ('6', '1', 'cdn_settings', '{\"cdn_static_root\":\"\"}');
COMMIT;

-- ----------------------------
--  Table structure for `cmf_plugin`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_plugin`;
CREATE TABLE `cmf_plugin` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '插件类型;1:网站;8:微信',
  `has_admin` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否有后台管理,0:没有;1:有',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态;1:开启;0:禁用',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '插件安装时间',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '插件标识名,英文字母(惟一)',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '插件名称',
  `hooks` varchar(255) NOT NULL DEFAULT '' COMMENT '实现的钩子;以“,”分隔',
  `author` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '插件作者',
  `version` varchar(20) NOT NULL DEFAULT '' COMMENT '插件版本号',
  `description` varchar(255) NOT NULL COMMENT '插件描述',
  `config` text COMMENT '插件配置',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='插件表';

-- ----------------------------
--  Table structure for `cmf_portal_category`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_portal_category`;
CREATE TABLE `cmf_portal_category` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类id',
  `parent_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '分类父id',
  `post_count` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '分类文章数',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:发布,0:不发布',
  `delete_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '删除时间',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '分类名称',
  `description` varchar(255) NOT NULL COMMENT '分类描述',
  `path` varchar(255) NOT NULL DEFAULT '' COMMENT '分类层级关系路径',
  `seo_title` varchar(100) NOT NULL DEFAULT '',
  `seo_keywords` varchar(255) NOT NULL DEFAULT '',
  `seo_description` varchar(255) NOT NULL DEFAULT '',
  `list_tpl` varchar(50) NOT NULL DEFAULT '' COMMENT '分类列表模板',
  `one_tpl` varchar(50) NOT NULL DEFAULT '' COMMENT '分类文章页模板',
  `more` text COMMENT '扩展属性',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COMMENT='portal应用 文章分类表';

-- ----------------------------
--  Records of `cmf_portal_category`
-- ----------------------------
BEGIN;
INSERT INTO `cmf_portal_category` VALUES ('1', '0', '0', '1', '0', '10000', '列表演示', '列表演示', '0-1', 'erq', 'qrew', 'qwer', 'list', 'article', null), ('2', '0', '0', '1', '0', '10000', '瀑布流', '瀑布流', '0-2', '', '', '', 'list', 'article', null), ('6', '0', '0', '1', '0', '10000', '发现', '发现', '0-6', '发现', '地', '地', 'list', 'article', null);
COMMIT;

-- ----------------------------
--  Table structure for `cmf_portal_category_post`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_portal_category_post`;
CREATE TABLE `cmf_portal_category_post` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '文章id',
  `category_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '分类id',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:发布;0:不发布',
  PRIMARY KEY (`id`),
  KEY `term_taxonomy_id` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8 COMMENT='portal应用 分类文章对应表';

-- ----------------------------
--  Records of `cmf_portal_category_post`
-- ----------------------------
BEGIN;
INSERT INTO `cmf_portal_category_post` VALUES ('10', '17', '1', '10000', '1'), ('41', '16', '1', '10000', '1'), ('42', '16', '2', '10000', '1'), ('43', '16', '6', '10000', '1'), ('44', '18', '1', '10000', '1'), ('45', '18', '2', '10000', '1'), ('48', '19', '1', '10000', '1'), ('49', '19', '2', '10000', '1'), ('56', '20', '1', '10000', '1'), ('57', '20', '2', '10000', '1'), ('58', '20', '6', '10000', '1'), ('68', '21', '1', '10000', '1'), ('83', '22', '1', '10000', '1'), ('84', '22', '2', '10000', '1'), ('85', '22', '6', '10000', '1'), ('86', '4', '1', '10000', '1'), ('87', '5', '1', '10000', '1'), ('88', '5', '2', '10000', '1'), ('89', '5', '6', '10000', '1'), ('91', '6', '6', '10000', '1');
COMMIT;

-- ----------------------------
--  Table structure for `cmf_portal_post`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_portal_post`;
CREATE TABLE `cmf_portal_post` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '父级id',
  `post_type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '类型,1:文章;2:页面',
  `post_format` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '内容格式;1:html;2:md',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '发表者用户id',
  `post_status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态;1:已发布;0:未发布;',
  `comment_status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '评论状态;1:允许;0:不允许',
  `is_top` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否置顶;1:置顶;0:不置顶',
  `recommended` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否推荐;1:推荐;0:不推荐',
  `post_hits` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '查看数',
  `post_like` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '点赞数',
  `comment_count` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '评论数',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `published_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '发布时间',
  `delete_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '删除时间',
  `post_title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'post标题',
  `post_keywords` varchar(150) NOT NULL DEFAULT '' COMMENT 'seo keywords',
  `post_excerpt` varchar(500) NOT NULL COMMENT 'post摘要',
  `post_source` varchar(150) NOT NULL DEFAULT '' COMMENT '转载文章的来源',
  `post_content` text COMMENT '文章内容',
  `post_content_filtered` text COMMENT '处理过的文章内容',
  `more` text COMMENT '扩展属性,如缩略图;格式为json',
  PRIMARY KEY (`id`),
  KEY `type_status_date` (`post_type`,`post_status`,`create_time`,`id`),
  KEY `post_parent` (`parent_id`),
  KEY `post_author` (`user_id`),
  KEY `post_date` (`create_time`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='portal应用 文章表';

-- ----------------------------
--  Records of `cmf_portal_post`
-- ----------------------------
BEGIN;
INSERT INTO `cmf_portal_post` VALUES ('1', '0', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '1488176000', '1487928493', 'tesat磊', '磊test', 'test', 'testdd', '&lt;p&gt;ddddddddddddd在磊城标城磊大&lt;br/&gt;&lt;/p&gt;', null, null), ('2', '0', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '1488176000', '1487928552', 'dddd', 'dddd', 'ddd', 'dd', '&lt;p&gt;ddd在&lt;/p&gt;', null, null), ('3', '0', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '1491024596', '1491024623', 'ddd', '', '', '', null, null, null), ('4', '0', '1', '1', '1', '1', '1', '1', '0', '13', '8', '0', '0', '1492673358', '1492652760', '0', 'dddd空间克隆就离开', '', '', '', null, null, '{\"thumbnail\":\"\",\"template\":\"\"}'), ('5', '0', '1', '1', '1', '1', '1', '0', '0', '11', '0', '0', '0', '1492673362', '1492652820', '0', 'ddd', 'dd', '', '', null, null, '{\"thumbnail\":\"\",\"template\":\"\"}'), ('6', '0', '1', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '1492696827', '1492652760', '0', 'adsf', '', '', '', null, null, '{\"thumbnail\":\"\",\"template\":\"\"}'), ('7', '0', '1', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '1492652781', '0', '磊', '', '', '', null, null, null), ('8', '0', '1', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '1492652781', '0', 'ddd', '', '', '', null, null, null), ('9', '0', '1', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '1492652781', '0', 'ddd', '', '', '', null, null, null), ('10', '0', '1', '1', '1', '0', '1', '1', '0', '0', '0', '0', '0', '0', '1492250260', '0', 'ddd', '', '', '', null, null, null), ('11', '0', '1', '1', '1', '0', '1', '1', '0', '0', '0', '0', '0', '0', '1492250260', '0', 'ddd', 'dd', '', 'dd', null, null, null), ('12', '0', '1', '1', '1', '0', '1', '1', '0', '0', '0', '0', '0', '0', '1492250260', '0', 'dddd', 'ddd', 'dd', 'dd', '&lt;p&gt;ddd&lt;/p&gt;', null, null), ('13', '0', '2', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '1492663628', '1487750100', '0', '页面演示', 'dd', 'dd', '', '&lt;p&gt;dd&lt;/p&gt;', null, '{\"thumbnail\":\"20170417\\/7e42d569f09bd9d1b9f88b38405824b3.png\",\"template\":\"page\"}'), ('14', '0', '2', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '1491471360', '0', '联系我们', '联系我们', '联系我们', '', '&lt;p&gt;联系我们&lt;/p&gt;', null, '{\"template\":\"contact\",\"thumbnail\":\"\"}'), ('15', '0', '2', '1', '1', '3', '1', '0', '0', '0', '0', '0', '0', '0', '1492052520', '1492052608', 'test', '在 夺', '发水电费', '', '&lt;p&gt;发水电费&lt;/p&gt;', null, '{\"template\":\"contact\",\"thumb\":\"20170411\\/638dfcac5df61a10f49c78d046953995.png\"}'), ('16', '0', '1', '1', '1', '1', '1', '0', '0', '3', '0', '0', '0', '1492307774', '1492652833', '0', 'fasd', 'fads', 'fsad', 'fsd', '&lt;p&gt;fasd&lt;br/&gt;&lt;/p&gt;', null, '{\"thumbnail\":\"\",\"template\":\"\"}'), ('17', '0', '1', '1', '1', '1', '1', '0', '0', '1', '1', '0', '1492296249', '1492296249', '1492652788', '0', 'FADS', 'FAS', 'FSD', 'FAS', '&lt;p&gt;FS&lt;/p&gt;', null, '{\"thumbnail\":\"\",\"template\":\"\"}'), ('18', '0', '1', '1', '1', '1', '1', '1', '0', '0', '0', '0', '1492307807', '1492307807', '1492482862', '1492482941', 'asdf', 'fasdf', 'fasd', 'asdf', '&lt;p&gt;fasd&lt;/p&gt;', null, '{\"thumbnail\":\"\",\"template\":\"article\"}'), ('19', '0', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '1492307840', '1492388783', '1492307820', '1492390684', 'fadsf又', 'fds', 'fasd', 'fasd', '&lt;p&gt;afsd&lt;/p&gt;', null, '{\"thumbnail\":\"20170411\\/638dfcac5df61a10f49c78d046953995.png\",\"template\":\"article\"}'), ('20', '0', '1', '1', '1', '1', '1', '1', '0', '1', '0', '0', '1492388901', '1492389090', '1492482862', '1492482894', 'fasd', 'fadsf', 'fasd', 'asdf', '&lt;p&gt;fdas&lt;/p&gt;', null, '{\"thumbnail\":\"\",\"template\":\"article\"}'), ('21', '0', '1', '1', '1', '1', '1', '0', '0', '9', '4', '0', '1492389312', '1492390454', '1492652788', '0', 'fa\'d\'s\'f', '', '', '', null, null, '{\"thumbnail\":\"\",\"template\":\"\",\"photos\":[{\"url\":\"20170417\\/7e42d569f09bd9d1b9f88b38405824b3.png\",\"alt\":\"logo-1080*1080.png\"}]}'), ('22', '0', '1', '1', '1', '1', '1', '1', '1', '39', '4', '0', '1492390521', '1492652844', '1492652820', '0', 'fad', 'fads', 'fasd', 'fasd', '&lt;p&gt;fsda&lt;/p&gt;', null, '{\"thumbnail\":\"20170417\\/7e42d569f09bd9d1b9f88b38405824b3.png\",\"template\":\"article\",\"photos\":[{\"url\":\"20170417\\/0d6c0f4aa52b878c0651539af0dff943.png\",\"alt\":\"logo-(2) copy 2.png\"},{\"url\":\"20170417\\/77933a7e3335836f5d1f010666b55587.png\",\"alt\":\"logo-28*28.png\"},{\"url\":\"20170417\\/7e42d569f09bd9d1b9f88b38405824b3.png\",\"alt\":\"logo-1080*1080.png\"}]}'), ('23', '0', '2', '1', '1', '3', '1', '0', '0', '0', '0', '0', '1492655583', '1492655583', '1492655520', '1492657246', '', '', '', '', null, null, null), ('24', '0', '2', '1', '1', '3', '1', '0', '0', '0', '0', '0', '1492655586', '1492655586', '1492655580', '1492657245', '', '', '', '', null, null, null), ('25', '0', '2', '1', '1', '3', '1', '0', '0', '0', '0', '0', '1492655589', '1492655589', '1492655580', '1492657243', '', '', '', '', null, null, null), ('26', '0', '2', '1', '1', '3', '1', '0', '0', '0', '0', '0', '1492655640', '1492655640', '1492655580', '1492657242', '', '', '', '', null, null, null), ('27', '0', '2', '1', '1', '3', '1', '0', '0', '0', '0', '0', '1492656958', '1492656958', '1492656900', '1492657240', '', '', '', '', null, null, null), ('28', '0', '2', '1', '1', '1', '1', '0', '0', '0', '0', '0', '1492663784', '1492663784', '1492663740', '0', 'fasdf', 'fasdf', 'fasdf', '', '&lt;p&gt;fasdf&lt;/p&gt;', null, '{\"thumbnail\":\"20170417\\/7e42d569f09bd9d1b9f88b38405824b3.png\",\"template\":\"page\"}'), ('29', '0', '2', '1', '1', '1', '1', '0', '0', '0', '0', '0', '1492663847', '1492663847', '1492663800', '0', 'asdf', 'afsd', 'asdf', '', '&lt;p&gt;asdf&lt;/p&gt;', null, '{\"thumbnail\":\"20170417\\/7e42d569f09bd9d1b9f88b38405824b3.png\",\"template\":\"page\"}'), ('30', '0', '2', '1', '1', '1', '1', '0', '0', '0', '0', '0', '1492663874', '1492839015', '1492761300', '0', 'fasdf', 'fasd', 'fasd', '', '&lt;p&gt;fsadf&lt;/p&gt;', null, '{\"thumbnail\":\"20170417\\/7e42d569f09bd9d1b9f88b38405824b3.png\",\"template\":\"contact\"}');
COMMIT;

-- ----------------------------
--  Table structure for `cmf_portal_tag`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_portal_tag`;
CREATE TABLE `cmf_portal_tag` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类id',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:发布,0:不发布',
  `recommended` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否推荐;1:推荐;0:不推荐',
  `post_count` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '标签文章数',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '标签名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='portal应用 文章标签表';

-- ----------------------------
--  Records of `cmf_portal_tag`
-- ----------------------------
BEGIN;
INSERT INTO `cmf_portal_tag` VALUES ('1', '1', '0', '0', 'tes'), ('3', '0', '0', '0', 'safads');
COMMIT;

-- ----------------------------
--  Table structure for `cmf_portal_tag_post`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_portal_tag_post`;
CREATE TABLE `cmf_portal_tag_post` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tag_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '标签 id',
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '文章 id',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:发布;0:不发布',
  PRIMARY KEY (`id`),
  KEY `term_taxonomy_id` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='portal应用 标签文章对应表';

-- ----------------------------
--  Table structure for `cmf_recycle_bin`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_recycle_bin`;
CREATE TABLE `cmf_recycle_bin` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `object_id` int(11) DEFAULT '0' COMMENT '删除内容 id',
  `create_time` int(10) unsigned DEFAULT '0' COMMENT '创建时间',
  `table_name` varchar(60) DEFAULT '' COMMENT '删除内容所在表名',
  `name` varchar(255) DEFAULT '' COMMENT '删除内容名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COMMENT=' 回收站';

-- ----------------------------
--  Records of `cmf_recycle_bin`
-- ----------------------------
BEGIN;
INSERT INTO `cmf_recycle_bin` VALUES ('1', '6', '1490923089', 'portal_category', 'asf'), ('2', '7', '1490923091', 'portal_category', 'ddd'), ('3', '8', '1490923093', 'portal_category', 'testddd'), ('4', '2', '1490923104', 'portal_category', '瀑布流'), ('5', '3', '1491024623', 'portal_post', 'ddd'), ('6', '5', '1491889946', 'portal_category', 'test3'), ('7', '4', '1491959031', 'portal_category', 'test2'), ('8', '3', '1491959033', 'portal_category', 'test'), ('9', '15', '1492052608', 'portal_post', 'test'), ('10', '19', '1492390684', 'portal_post', 'fadsf又'), ('11', '20', '1492482894', 'portal_post', 'fasd'), ('12', '18', '1492482941', 'portal_post', 'asdf'), ('13', '27', '1492657240', 'portal_post', ''), ('14', '26', '1492657242', 'portal_post', ''), ('15', '25', '1492657243', 'portal_post', ''), ('16', '24', '1492657245', 'portal_post', ''), ('17', '23', '1492657246', 'portal_post', '');
COMMIT;

-- ----------------------------
--  Table structure for `cmf_role`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_role`;
CREATE TABLE `cmf_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父角色ID',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '状态;0:禁用;1:正常',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `list_order` float NOT NULL DEFAULT '0' COMMENT '排序',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '角色名称',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`),
  KEY `parentId` (`parent_id`),
  KEY `status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='角色表';

-- ----------------------------
--  Records of `cmf_role`
-- ----------------------------
BEGIN;
INSERT INTO `cmf_role` VALUES ('1', '0', '1', '1329633709', '1329633709', '0', '超级管理员', '拥有网站最高管理员权限！'), ('2', '0', '1', '1329633709', '1329633709', '0', '普通管理员', '权限由最高管理员分配！');
COMMIT;

-- ----------------------------
--  Table structure for `cmf_role_user`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_role_user`;
CREATE TABLE `cmf_role_user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '角色 id',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  PRIMARY KEY (`id`),
  KEY `group_id` (`role_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户角色对应表';

-- ----------------------------
--  Records of `cmf_role_user`
-- ----------------------------
BEGIN;
INSERT INTO `cmf_role_user` VALUES ('3', '2', '3');
COMMIT;

-- ----------------------------
--  Table structure for `cmf_route`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_route`;
CREATE TABLE `cmf_route` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '路由id',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态;1:启用,0:不启用',
  `full_url` varchar(255) NOT NULL DEFAULT '' COMMENT '完整url',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '实际显示的url',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COMMENT='url路由表';

-- ----------------------------
--  Records of `cmf_route`
-- ----------------------------
BEGIN;
INSERT INTO `cmf_route` VALUES ('3', '0', '1', '秀梅', '大'), ('4', '0', '0', '', '');
COMMIT;

-- ----------------------------
--  Table structure for `cmf_slide`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_slide`;
CREATE TABLE `cmf_slide` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:显示,0不显示',
  `delete_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '删除时间',
  `name` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '幻灯片分类',
  `remark` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '分类备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='幻灯片表';

-- ----------------------------
--  Records of `cmf_slide`
-- ----------------------------
BEGIN;
INSERT INTO `cmf_slide` VALUES ('1', '1', '0', '首页幻灯片', '');
COMMIT;

-- ----------------------------
--  Table structure for `cmf_slide_item`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_slide_item`;
CREATE TABLE `cmf_slide_item` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `slide_id` int(11) NOT NULL DEFAULT '0' COMMENT '幻灯片id',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:显示;0:隐藏',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '幻灯片名称',
  `image` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '幻灯片图片',
  `url` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '幻灯片链接',
  `target` varchar(10) NOT NULL DEFAULT '' COMMENT '友情链接打开方式',
  `description` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '幻灯片描述',
  `content` text CHARACTER SET utf8 COMMENT '幻灯片内容',
  `more` text COMMENT '链接打开方式',
  PRIMARY KEY (`id`),
  KEY `slide_cid` (`slide_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='幻灯片子项表';

-- ----------------------------
--  Table structure for `cmf_theme`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_theme`;
CREATE TABLE `cmf_theme` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '安装时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后升级时间',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '模板状态,1:正在使用;0:未使用',
  `is_compiled` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否为已编译模板',
  `theme` varchar(20) NOT NULL DEFAULT '' COMMENT '主题目录名，用于主题的维一标识',
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '主题名称',
  `version` varchar(20) NOT NULL DEFAULT '' COMMENT '主题版本号',
  `demo_url` varchar(50) NOT NULL DEFAULT '' COMMENT '演示地址，带协议',
  `thumbnail` varchar(100) NOT NULL DEFAULT '' COMMENT '缩略图',
  `author` varchar(20) NOT NULL DEFAULT '' COMMENT '主题作者',
  `author_url` varchar(50) NOT NULL DEFAULT '' COMMENT '作者网站链接',
  `lang` varchar(10) NOT NULL DEFAULT '' COMMENT '支持语言',
  `keywords` varchar(50) NOT NULL DEFAULT '' COMMENT '主题关键字',
  `description` varchar(100) NOT NULL DEFAULT '' COMMENT '主题描述',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `cmf_theme`
-- ----------------------------
BEGIN;
INSERT INTO `cmf_theme` VALUES ('14', '0', '0', '0', '0', 'simpleboot3', 'simpleboot3', '1.0.2', 'http://demo.thinkcmf.com', '', 'ThinkCMF', 'http://www.thinkcmf.com', 'zh-cn', 'ThinkCMF模板', 'ThinkCMF默认模板');
COMMIT;

-- ----------------------------
--  Table structure for `cmf_theme_file`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_theme_file`;
CREATE TABLE `cmf_theme_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_public` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否公共的模板文件',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `theme` varchar(20) NOT NULL DEFAULT '' COMMENT '模板名称',
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '模板文件名',
  `action` varchar(50) NOT NULL DEFAULT '' COMMENT '操作',
  `file` varchar(50) NOT NULL DEFAULT '' COMMENT '模板文件，相对于模板根目录，如Portal/index.html',
  `description` varchar(100) NOT NULL DEFAULT '' COMMENT '模板文件描述',
  `more` text COMMENT '模板更多配置,用户自己后台设置的',
  `config_more` text COMMENT '模板更多配置,来源模板的配置文件',
  `draft_more` text COMMENT '模板更多配置,用户临时保存的配置',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=83 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `cmf_theme_file`
-- ----------------------------
BEGIN;
INSERT INTO `cmf_theme_file` VALUES ('80', '0', '4', 'simpleboot3', '单页面', 'portal/Page/index', 'portal/page', '单页面模板文件', '{\"widgets\":{\"hottest_articles\":{\"title\":\"\\u70ed\\u95e8\\u6587\\u7ae0\",\"display\":\"1\",\"vars\":{\"hottest_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}},\"last_articles\":{\"title\":\"\\u6700\\u65b0\\u53d1\\u5e03\",\"display\":\"1\",\"vars\":{\"last_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}', '{\"widgets\":{\"hottest_articles\":{\"title\":\"\\u70ed\\u95e8\\u6587\\u7ae0\",\"display\":\"1\",\"vars\":{\"hottest_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}},\"last_articles\":{\"title\":\"\\u6700\\u65b0\\u53d1\\u5e03\",\"display\":\"1\",\"vars\":{\"last_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}', null), ('81', '1', '8', 'simpleboot3', '导航条', 'portal/Public/nav', 'public/nav', '导航条模板文件', '{\"vars\":{\"company_name\":{\"title\":\"\\u516c\\u53f8\\u540d\\u79f0\",\"name\":\"company_name\",\"value\":\"ThinkCMF\",\"type\":\"text\",\"tip\":\"\",\"rule\":[]}}}', '{\"vars\":{\"company_name\":{\"title\":\"\\u516c\\u53f8\\u540d\\u79f0\",\"name\":\"company_name\",\"value\":\"ThinkCMF\",\"type\":\"text\",\"tip\":\"\",\"rule\":[]}}}', null), ('76', '0', '4', 'simpleboot3', '文章页', 'portal/Article/index', 'portal/article', '文章页模板文件', '{\"vars\":{\"hot_articles_category_id\":{\"title\":\"Hot Articles\\u5206\\u7c7bID\",\"name\":\"hot_articles_category_id\",\"value\":\"1\",\"type\":\"text\",\"tip\":\"\",\"rule\":[]}}}', '{\"vars\":{\"hot_articles_category_id\":{\"title\":\"Hot Articles\\u5206\\u7c7bID\",\"name\":\"hot_articles_category_id\",\"value\":\"1\",\"type\":\"text\",\"tip\":\"\",\"rule\":[]}}}', null), ('77', '0', '4', 'simpleboot3', '联系我们页', 'portal/Page/index', 'portal/contact', '联系我们页模板文件', '{\"vars\":{\"baidu_map_info_window_text\":{\"title\":\"\\u767e\\u5ea6\\u5730\\u56fe\\u6807\\u6ce8\\u6587\\u5b57\",\"name\":\"baidu_map_info_window_text\",\"value\":\"ThinkCMF<br\\/><span class=\'\'>\\u5730\\u5740\\uff1a\\u4e0a\\u6d77\\u5e02\\u5f90\\u6c47\\u533a\\u659c\\u571f\\u8def2601\\u53f7<\\/span>\",\"type\":\"text\",\"tip\":\"\\u767e\\u5ea6\\u5730\\u56fe\\u6807\\u6ce8\\u6587\\u5b57,\\u652f\\u6301\\u7b80\\u5355html\\u4ee3\\u7801\",\"rule\":[]}}}', '{\"vars\":{\"baidu_map_info_window_text\":{\"title\":\"\\u767e\\u5ea6\\u5730\\u56fe\\u6807\\u6ce8\\u6587\\u5b57\",\"name\":\"baidu_map_info_window_text\",\"value\":\"ThinkCMF<br\\/><span class=\'\'>\\u5730\\u5740\\uff1a\\u4e0a\\u6d77\\u5e02\\u5f90\\u6c47\\u533a\\u659c\\u571f\\u8def2601\\u53f7<\\/span>\",\"type\":\"text\",\"tip\":\"\\u767e\\u5ea6\\u5730\\u56fe\\u6807\\u6ce8\\u6587\\u5b57,\\u652f\\u6301\\u7b80\\u5355html\\u4ee3\\u7801\",\"rule\":[]}}}', null), ('78', '0', '6', 'simpleboot3', '首页', 'portal/Index/index', 'portal/index', '首页模板文件', '{\"vars\":{\"top_slide\":{\"title\":\"\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"value\":\"1\",\"type\":\"text\",\"dataSource\":{\"api\":\"admin\\/Slide\\/index\",\"multi\":false},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"tip\":\"\",\"rule\":{\"require\":true},\"valueText\":\"\\u9996\\u9875\\u5e7b\\u706f\\u7247\"}},\"widgets\":{\"features\":{\"title\":\"\\u5feb\\u901f\\u4e86\\u89e3ThinkCMF\",\"display\":1,\"vars\":{\"sub_title\":{\"title\":\"\\u526f\\u6807\\u9898\",\"value\":\"Quickly understand the ThinkCMF\",\"type\":\"text\",\"placeholder\":\"\\u8bf7\\u8f93\\u5165\\u526f\\u6807\\u9898\",\"tip\":\"\",\"rule\":{\"require\":true}},\"features\":{\"title\":\"\\u7279\\u6027\\u4ecb\\u7ecd\",\"value\":[{\"title\":\"MVC\\u5206\\u5c42\\u6a21\\u5f0f\",\"icon\":\"bars\",\"content\":\"\\u4f7f\\u7528MVC\\u5e94\\u7528\\u7a0b\\u5e8f\\u88ab\\u5206\\u6210\\u4e09\\u4e2a\\u6838\\u5fc3\\u90e8\\u4ef6\\uff1a\\u6a21\\u578b\\uff08M\\uff09\\u3001\\u89c6\\u56fe\\uff08V\\uff09\\u3001\\u63a7\\u5236\\u5668\\uff08C\\uff09\\uff0c\\u4ed6\\u4e0d\\u662f\\u4e00\\u4e2a\\u65b0\\u7684\\u6982\\u5ff5\\uff0c\\u53ea\\u662fThinkCMF\\u5c06\\u5176\\u53d1\\u6325\\u5230\\u4e86\\u6781\\u81f4\\u3002\"},{\"title\":\"\\u7528\\u6237\\u7ba1\\u7406\",\"icon\":\"group\",\"content\":\"ThinkCMF\\u5185\\u7f6e\\u4e86\\u7075\\u6d3b\\u7684\\u7528\\u6237\\u7ba1\\u7406\\u65b9\\u5f0f\\uff0c\\u5e76\\u53ef\\u76f4\\u63a5\\u4e0e\\u7b2c\\u4e09\\u65b9\\u7ad9\\u70b9\\u8fdb\\u884c\\u4e92\\u8054\\u4e92\\u901a\\uff0c\\u5982\\u679c\\u4f60\\u613f\\u610f\\u751a\\u81f3\\u53ef\\u4ee5\\u5bf9\\u5355\\u4e2a\\u7528\\u6237\\u6216\\u7fa4\\u4f53\\u7528\\u6237\\u7684\\u884c\\u4e3a\\u8fdb\\u884c\\u8bb0\\u5f55\\u53ca\\u5206\\u4eab\\uff0c\\u4e3a\\u60a8\\u7684\\u8fd0\\u8425\\u51b3\\u7b56\\u63d0\\u4f9b\\u6709\\u6548\\u53c2\\u8003\\u6570\\u636e\\u3002\"},{\"title\":\"\\u4e91\\u7aef\\u90e8\\u7f72\",\"icon\":\"cloud\",\"content\":\"\\u901a\\u8fc7\\u9a71\\u52a8\\u7684\\u65b9\\u5f0f\\u53ef\\u4ee5\\u8f7b\\u677e\\u652f\\u6301\\u4e91\\u5e73\\u53f0\\u7684\\u90e8\\u7f72\\uff0c\\u8ba9\\u4f60\\u7684\\u7f51\\u7ad9\\u65e0\\u7f1d\\u8fc1\\u79fb\\uff0c\\u5185\\u7f6e\\u5df2\\u7ecf\\u652f\\u6301SAE\\u3001BAE\\uff0c\\u6b63\\u5f0f\\u7248\\u5c06\\u5bf9\\u4e91\\u7aef\\u90e8\\u7f72\\u8fdb\\u884c\\u8fdb\\u4e00\\u6b65\\u4f18\\u5316\\u3002\"},{\"title\":\"\\u5b89\\u5168\\u7b56\\u7565\",\"icon\":\"heart\",\"content\":\"\\u63d0\\u4f9b\\u7684\\u7a33\\u5065\\u7684\\u5b89\\u5168\\u7b56\\u7565\\uff0c\\u5305\\u62ec\\u5907\\u4efd\\u6062\\u590d\\uff0c\\u5bb9\\u9519\\uff0c\\u9632\\u6cbb\\u6076\\u610f\\u653b\\u51fb\\u767b\\u9646\\uff0c\\u7f51\\u9875\\u9632\\u7be1\\u6539\\u7b49\\u591a\\u9879\\u5b89\\u5168\\u7ba1\\u7406\\u529f\\u80fd\\uff0c\\u4fdd\\u8bc1\\u7cfb\\u7edf\\u5b89\\u5168\\uff0c\\u53ef\\u9760\\uff0c\\u7a33\\u5b9a\\u7684\\u8fd0\\u884c\\u3002\"},{\"title\":\"\\u5e94\\u7528\\u6a21\\u5757\\u5316\",\"icon\":\"cubes\",\"content\":\"\\u63d0\\u51fa\\u5168\\u65b0\\u7684\\u5e94\\u7528\\u6a21\\u5f0f\\u8fdb\\u884c\\u6269\\u5c55\\uff0c\\u4e0d\\u7ba1\\u662f\\u4f60\\u5f00\\u53d1\\u4e00\\u4e2a\\u5c0f\\u529f\\u80fd\\u8fd8\\u662f\\u4e00\\u4e2a\\u5168\\u65b0\\u7684\\u7ad9\\u70b9\\uff0c\\u5728ThinkCMF\\u4e2d\\u4f60\\u53ea\\u662f\\u589e\\u52a0\\u4e86\\u4e00\\u4e2aAPP\\uff0c\\u6bcf\\u4e2a\\u72ec\\u7acb\\u8fd0\\u884c\\u4e92\\u4e0d\\u5f71\\u54cd\\uff0c\\u4fbf\\u4e8e\\u7075\\u6d3b\\u6269\\u5c55\\u548c\\u4e8c\\u6b21\\u5f00\\u53d1\\u3002\"},{\"title\":\"\\u514d\\u8d39\\u5f00\\u6e90\",\"icon\":\"certificate\",\"content\":\"\\u4ee3\\u7801\\u9075\\u5faaApache2\\u5f00\\u6e90\\u534f\\u8bae\\uff0c\\u514d\\u8d39\\u4f7f\\u7528\\uff0c\\u5bf9\\u5546\\u4e1a\\u7528\\u6237\\u4e5f\\u65e0\\u4efb\\u4f55\\u9650\\u5236\\u3002\"}],\"type\":\"array\",\"item\":{\"title\":{\"title\":\"\\u6807\\u9898\",\"value\":\"\",\"type\":\"text\"},\"icon\":{\"title\":\"\\u56fe\\u6807\",\"value\":\"\",\"type\":\"text\"},\"content\":{\"title\":\"\\u63cf\\u8ff0\",\"value\":\"\",\"type\":\"textarea\"}},\"tip\":\"\"}}},\"last_news\":{\"title\":\"\\u6700\\u65b0\\u8d44\\u8baf\",\"display\":1,\"vars\":{\"last_news_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"1,2,6\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true},\"valueText\":\"\\u5217\\u8868\\u6f14\\u793a,\\u7011\\u5e03\\u6d41,\\u53d1\\u73b0\"}}}}}', '{\"vars\":{\"top_slide\":{\"title\":\"\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"admin\\/Slide\\/index\",\"multi\":false},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"tip\":\"\",\"rule\":{\"require\":true}}},\"widgets\":{\"features\":{\"title\":\"\\u5feb\\u901f\\u4e86\\u89e3ThinkCMF\",\"display\":\"1\",\"vars\":{\"sub_title\":{\"title\":\"\\u526f\\u6807\\u9898\",\"value\":\"Quickly understand the ThinkCMF\",\"type\":\"text\",\"placeholder\":\"\\u8bf7\\u8f93\\u5165\\u526f\\u6807\\u9898\",\"tip\":\"\",\"rule\":{\"require\":true}},\"features\":{\"title\":\"\\u7279\\u6027\\u4ecb\\u7ecd\",\"value\":[{\"title\":\"MVC\\u5206\\u5c42\\u6a21\\u5f0f\",\"icon\":\"bars\",\"content\":\"\\u4f7f\\u7528MVC\\u5e94\\u7528\\u7a0b\\u5e8f\\u88ab\\u5206\\u6210\\u4e09\\u4e2a\\u6838\\u5fc3\\u90e8\\u4ef6\\uff1a\\u6a21\\u578b\\uff08M\\uff09\\u3001\\u89c6\\u56fe\\uff08V\\uff09\\u3001\\u63a7\\u5236\\u5668\\uff08C\\uff09\\uff0c\\u4ed6\\u4e0d\\u662f\\u4e00\\u4e2a\\u65b0\\u7684\\u6982\\u5ff5\\uff0c\\u53ea\\u662fThinkCMF\\u5c06\\u5176\\u53d1\\u6325\\u5230\\u4e86\\u6781\\u81f4\\u3002\"},{\"title\":\"\\u7528\\u6237\\u7ba1\\u7406\",\"icon\":\"group\",\"content\":\"ThinkCMF\\u5185\\u7f6e\\u4e86\\u7075\\u6d3b\\u7684\\u7528\\u6237\\u7ba1\\u7406\\u65b9\\u5f0f\\uff0c\\u5e76\\u53ef\\u76f4\\u63a5\\u4e0e\\u7b2c\\u4e09\\u65b9\\u7ad9\\u70b9\\u8fdb\\u884c\\u4e92\\u8054\\u4e92\\u901a\\uff0c\\u5982\\u679c\\u4f60\\u613f\\u610f\\u751a\\u81f3\\u53ef\\u4ee5\\u5bf9\\u5355\\u4e2a\\u7528\\u6237\\u6216\\u7fa4\\u4f53\\u7528\\u6237\\u7684\\u884c\\u4e3a\\u8fdb\\u884c\\u8bb0\\u5f55\\u53ca\\u5206\\u4eab\\uff0c\\u4e3a\\u60a8\\u7684\\u8fd0\\u8425\\u51b3\\u7b56\\u63d0\\u4f9b\\u6709\\u6548\\u53c2\\u8003\\u6570\\u636e\\u3002\"},{\"title\":\"\\u4e91\\u7aef\\u90e8\\u7f72\",\"icon\":\"cloud\",\"content\":\"\\u901a\\u8fc7\\u9a71\\u52a8\\u7684\\u65b9\\u5f0f\\u53ef\\u4ee5\\u8f7b\\u677e\\u652f\\u6301\\u4e91\\u5e73\\u53f0\\u7684\\u90e8\\u7f72\\uff0c\\u8ba9\\u4f60\\u7684\\u7f51\\u7ad9\\u65e0\\u7f1d\\u8fc1\\u79fb\\uff0c\\u5185\\u7f6e\\u5df2\\u7ecf\\u652f\\u6301SAE\\u3001BAE\\uff0c\\u6b63\\u5f0f\\u7248\\u5c06\\u5bf9\\u4e91\\u7aef\\u90e8\\u7f72\\u8fdb\\u884c\\u8fdb\\u4e00\\u6b65\\u4f18\\u5316\\u3002\"},{\"title\":\"\\u5b89\\u5168\\u7b56\\u7565\",\"icon\":\"heart\",\"content\":\"\\u63d0\\u4f9b\\u7684\\u7a33\\u5065\\u7684\\u5b89\\u5168\\u7b56\\u7565\\uff0c\\u5305\\u62ec\\u5907\\u4efd\\u6062\\u590d\\uff0c\\u5bb9\\u9519\\uff0c\\u9632\\u6cbb\\u6076\\u610f\\u653b\\u51fb\\u767b\\u9646\\uff0c\\u7f51\\u9875\\u9632\\u7be1\\u6539\\u7b49\\u591a\\u9879\\u5b89\\u5168\\u7ba1\\u7406\\u529f\\u80fd\\uff0c\\u4fdd\\u8bc1\\u7cfb\\u7edf\\u5b89\\u5168\\uff0c\\u53ef\\u9760\\uff0c\\u7a33\\u5b9a\\u7684\\u8fd0\\u884c\\u3002\"},{\"title\":\"\\u5e94\\u7528\\u6a21\\u5757\\u5316\",\"icon\":\"cubes\",\"content\":\"\\u63d0\\u51fa\\u5168\\u65b0\\u7684\\u5e94\\u7528\\u6a21\\u5f0f\\u8fdb\\u884c\\u6269\\u5c55\\uff0c\\u4e0d\\u7ba1\\u662f\\u4f60\\u5f00\\u53d1\\u4e00\\u4e2a\\u5c0f\\u529f\\u80fd\\u8fd8\\u662f\\u4e00\\u4e2a\\u5168\\u65b0\\u7684\\u7ad9\\u70b9\\uff0c\\u5728ThinkCMF\\u4e2d\\u4f60\\u53ea\\u662f\\u589e\\u52a0\\u4e86\\u4e00\\u4e2aAPP\\uff0c\\u6bcf\\u4e2a\\u72ec\\u7acb\\u8fd0\\u884c\\u4e92\\u4e0d\\u5f71\\u54cd\\uff0c\\u4fbf\\u4e8e\\u7075\\u6d3b\\u6269\\u5c55\\u548c\\u4e8c\\u6b21\\u5f00\\u53d1\\u3002\"},{\"title\":\"\\u514d\\u8d39\\u5f00\\u6e90\",\"icon\":\"certificate\",\"content\":\"\\u4ee3\\u7801\\u9075\\u5faaApache2\\u5f00\\u6e90\\u534f\\u8bae\\uff0c\\u514d\\u8d39\\u4f7f\\u7528\\uff0c\\u5bf9\\u5546\\u4e1a\\u7528\\u6237\\u4e5f\\u65e0\\u4efb\\u4f55\\u9650\\u5236\\u3002\"}],\"type\":\"array\",\"item\":{\"title\":{\"title\":\"\\u6807\\u9898\",\"value\":\"\",\"type\":\"text\"},\"icon\":{\"title\":\"\\u56fe\\u6807\",\"value\":\"\",\"type\":\"text\"},\"content\":{\"title\":\"\\u63cf\\u8ff0\",\"value\":\"\",\"type\":\"textarea\"}},\"tip\":\"\"}}},\"last_news\":{\"title\":\"\\u6700\\u65b0\\u8d44\\u8baf\",\"display\":\"1\",\"vars\":{\"last_news_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}', null), ('82', '0', '6', 'simpleboot3', '搜索页面', 'portal/search/index', 'portal/search', '搜索模板文件', '{\"vars\":{\"varName1\":{\"title\":\"\\u70ed\\u95e8\\u641c\\u7d22\",\"value\":\"1\",\"type\":\"text\",\"tip\":\"\\u8fd9\\u662f\\u4e00\\u4e2atext\",\"rule\":{\"require\":true}}}}', '{\"vars\":{\"varName1\":{\"title\":\"\\u70ed\\u95e8\\u641c\\u7d22\",\"value\":\"1\",\"type\":\"text\",\"tip\":\"\\u8fd9\\u662f\\u4e00\\u4e2atext\",\"rule\":{\"require\":true}}}}', null), ('79', '0', '5', 'simpleboot3', '文章列表页', 'portal/List/index', 'portal/list', '文章列表模板文件', '{\"vars\":[],\"widgets\":{\"hottest_articles\":{\"title\":\"\\u70ed\\u95e8\\u6587\\u7ae0\",\"display\":1,\"vars\":{\"hottest_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"1,2,6\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true},\"valueText\":\"\\u5217\\u8868\\u6f14\\u793a,\\u7011\\u5e03\\u6d41,\\u53d1\\u73b0\"}}},\"last_articles\":{\"title\":\"\\u6700\\u65b0\\u53d1\\u5e03\",\"display\":1,\"vars\":{\"last_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"1,2,6\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true},\"valueText\":\"\\u5217\\u8868\\u6f14\\u793a,\\u7011\\u5e03\\u6d41,\\u53d1\\u73b0\"}}}}}', '{\"vars\":[],\"widgets\":{\"hottest_articles\":{\"title\":\"\\u70ed\\u95e8\\u6587\\u7ae0\",\"display\":\"1\",\"vars\":{\"hottest_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}},\"last_articles\":{\"title\":\"\\u6700\\u65b0\\u53d1\\u5e03\",\"display\":\"1\",\"vars\":{\"last_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}', null);
COMMIT;

-- ----------------------------
--  Table structure for `cmf_third_party_user`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_third_party_user`;
CREATE TABLE `cmf_third_party_user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '本站用户id',
  `last_login_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后登录时间',
  `expire_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'access_token过期时间',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '绑定时间',
  `login_times` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '登录次数',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态;1:正常;0:禁用',
  `nickname` varchar(50) NOT NULL DEFAULT '' COMMENT '用户昵称',
  `third_party` varchar(20) NOT NULL DEFAULT '' COMMENT '第三方惟一码',
  `app_id` varchar(64) NOT NULL DEFAULT '' COMMENT '第三方应用 id',
  `last_login_ip` varchar(15) NOT NULL DEFAULT '' COMMENT '最后登录ip',
  `access_token` varchar(512) NOT NULL DEFAULT '' COMMENT '第三方授权码',
  `openid` varchar(40) NOT NULL DEFAULT '' COMMENT '第三方用户id',
  `union_id` varchar(64) NOT NULL DEFAULT '' COMMENT '第三方用户多个产品中的惟一 id,(如:微信平台)',
  `more` text COMMENT '扩展信息',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='第三方用户表';

-- ----------------------------
--  Table structure for `cmf_user`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_user`;
CREATE TABLE `cmf_user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '用户类型;1:admin;2:会员',
  `sex` tinyint(2) NOT NULL DEFAULT '0' COMMENT '性别;0:保密,1:男,2:女',
  `birthday` int(11) NOT NULL DEFAULT '0' COMMENT '生日',
  `last_login_time` int(11) NOT NULL DEFAULT '0' COMMENT '最后登录时间',
  `score` int(11) NOT NULL DEFAULT '0' COMMENT '用户积分',
  `coin` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '金币',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '注册时间',
  `user_status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '用户状态;0:禁用,1:正常,2:未验证',
  `user_login` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '用户名',
  `user_pass` varchar(64) NOT NULL DEFAULT '' COMMENT '登录密码;cmf_password加密',
  `user_nickname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '用户昵称',
  `user_email` varchar(100) NOT NULL DEFAULT '' COMMENT '用户登录邮箱',
  `user_url` varchar(100) NOT NULL DEFAULT '' COMMENT '用户个人网址',
  `avatar` varchar(255) NOT NULL DEFAULT '' COMMENT '用户头像',
  `signature` varchar(255) NOT NULL DEFAULT '' COMMENT '个性签名',
  `last_login_ip` varchar(15) NOT NULL DEFAULT '' COMMENT '最后登录ip',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '' COMMENT '激活码',
  `mobile` varchar(20) NOT NULL DEFAULT '' COMMENT '用户手机号',
  PRIMARY KEY (`id`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nickname`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COMMENT='用户表';

-- ----------------------------
--  Records of `cmf_user`
-- ----------------------------
BEGIN;
INSERT INTO `cmf_user` VALUES ('1', '1', '1', '1476460800', '1492746061', '0', '0', '1472092080', '1', 'admin', '###806c01b52809c23d49935a0c014a0b27', 'admin', 'zxxjjforever@163.com', '44422u11', '', 'ddd4444411', '127.0.0.1', '', ''), ('3', '1', '0', '0', '1477299995', '0', '0', '1476572010', '1', 'test', '###f6707a0f4ddae0d8a0c09cd0c827459a', '', 'test@1.com', '', '', '', '127.0.0.1', '', ''), ('4', '2', '0', '0', '1477805939', '0', '0', '1477805939', '0', 'dd_11_com', '###f6707a0f4ddae0d8a0c09cd0c827459a', 'ddd', 'dd@11.com', '', '', '', '127.0.0.1', '', ''), ('6', '2', '0', '0', '0', '0', '0', '1484223267', '0', '', '###f6707a0f4ddae0d8a0c09cd0c827459a', '', '', '', '', '', '', '', '15121002429');
COMMIT;

-- ----------------------------
--  Table structure for `cmf_user_action_log`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_user_action_log`;
CREATE TABLE `cmf_user_action_log` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '访问次数',
  `last_visit_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后访问时间',
  `object` varchar(100) NOT NULL DEFAULT '' COMMENT '访问对象的id,格式:不带前缀的表名+id;如posts1表示xx_posts表里id为1的记录',
  `action` varchar(50) NOT NULL DEFAULT '' COMMENT '操作名称;格式:应用名+控制器+操作名,也可自己定义格式只要不发生冲突且惟一;',
  `ip` varchar(15) NOT NULL DEFAULT '' COMMENT '用户ip',
  PRIMARY KEY (`id`),
  KEY `user_object_action` (`user_id`,`object`,`action`),
  KEY `user_object_action_ip` (`user_id`,`object`,`action`,`ip`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COMMENT='访问记录表';

-- ----------------------------
--  Records of `cmf_user_action_log`
-- ----------------------------
BEGIN;
INSERT INTO `cmf_user_action_log` VALUES ('1', '1', '4', '1477695966', 'posts27', 'Portal-Article-do_like', '127.0.0.1'), ('2', '1', '2', '1477695972', 'posts28', 'Portal-Article-do_like', '127.0.0.1'), ('3', '1', '1', '1477696080', 'posts34', 'Portal-Article-do_like', '127.0.0.1'), ('4', '1', '2', '1478421167', 'posts54', 'Portal-Article-do_like', '127.0.0.1'), ('5', '1', '1', '1478421053', 'posts22', 'Portal-Article-do_like', '127.0.0.1'), ('6', '1', '2', '1478421205', 'posts59', 'Portal-Article-do_like', '127.0.0.1'), ('7', '1', '3', '1478421210', 'posts63', 'Portal-Article-do_like', '127.0.0.1');
COMMIT;

-- ----------------------------
--  Table structure for `cmf_user_favorite`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_user_favorite`;
CREATE TABLE `cmf_user_favorite` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户 id',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '收藏内容的标题',
  `url` varchar(255) CHARACTER SET utf8 DEFAULT '' COMMENT '收藏内容的原文地址，不带域名',
  `description` varchar(500) CHARACTER SET utf8 DEFAULT '' COMMENT '收藏内容的描述',
  `table_name` varchar(64) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '收藏实体以前所在表,不带前缀',
  `object_id` int(10) unsigned DEFAULT '0' COMMENT '收藏内容原来的主键id',
  `create_time` int(10) unsigned DEFAULT '0' COMMENT '收藏时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='用户收藏表';

-- ----------------------------
--  Records of `cmf_user_favorite`
-- ----------------------------
BEGIN;
INSERT INTO `cmf_user_favorite` VALUES ('2', '1', 'fad', 'http://cmf5.im/portal/list/index/id/1.html', 'fasd', 'PortalPost', '22', '1492484205'), ('3', '1', 'fa\'d\'s\'f', 'http://cmf5.im/portal/list/index/id/1.html', '', 'PortalPost', '21', '1492485717');
COMMIT;

-- ----------------------------
--  Table structure for `cmf_user_login_attempt`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_user_login_attempt`;
CREATE TABLE `cmf_user_login_attempt` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `login_attempts` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '尝试次数',
  `attempt_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '尝试登录时间',
  `locked_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '锁定时间',
  `ip` varchar(15) NOT NULL DEFAULT '' COMMENT '用户 ip',
  `account` varchar(100) NOT NULL DEFAULT '' COMMENT '用户账号,手机号,邮箱或用户名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='用户登录尝试表';

-- ----------------------------
--  Table structure for `cmf_user_token`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_user_token`;
CREATE TABLE `cmf_user_token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户id',
  `expire_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT ' 过期时间',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `token` varchar(64) NOT NULL DEFAULT '' COMMENT 'token',
  `device_type` varchar(10) NOT NULL DEFAULT '' COMMENT '设备类型;mobile,android,iphone,ipad,web,pc,mac,wxapp',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='用户客户端登录 token 表';

-- ----------------------------
--  Records of `cmf_user_token`
-- ----------------------------
BEGIN;
INSERT INTO `cmf_user_token` VALUES ('1', '14', '1502525900', '1486973900', 'f02ff1bff6cdccb1244418cb7aa15e84e9d3bafe92e79b7a51c20eec1bc36777', 'wxapp'), ('2', '7', '1502525992', '1486973992', 'b7b9ce821a8d11873a311c71de1ab86cd2afe745e7e0bec340d74a8c524a1b63', 'wxapp');
COMMIT;

-- ----------------------------
--  Table structure for `cmf_verification_code`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_verification_code`;
CREATE TABLE `cmf_verification_code` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '表id',
  `count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '当天已经发送成功的次数',
  `send_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后发送成功时间',
  `expire_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '验证码过期时间',
  `code` varchar(8) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '最后发送成功的验证码',
  `account` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '手机号或者邮箱',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COMMENT='手机邮箱数字验证码表';

-- ----------------------------
--  Records of `cmf_verification_code`
-- ----------------------------
BEGIN;
INSERT INTO `cmf_verification_code` VALUES ('1', '1', '1491472229', '1491474029', '752196', 'zxxjjforever@163.com'), ('2', '1', '1483952558', '1483954357', '', '1320014087@qq.com'), ('3', '1', '1483952603', '1483954403', '', 'morton@anyi.hk'), ('4', '2', '1491472272', '1491474072', '369673', '15121002429');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
