/*
Navicat MySQL Data Transfer

Source Server         : shengtai
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : snake

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2019-11-12 22:32:29
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for snake_articles
-- ----------------------------
DROP TABLE IF EXISTS `snake_articles`;
CREATE TABLE `snake_articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '文章id',
  `title` varchar(155) NOT NULL COMMENT '文章标题',
  `description` varchar(255) NOT NULL COMMENT '文章描述',
  `keywords` varchar(155) NOT NULL COMMENT '文章关键字',
  `thumbnail` varchar(255) NOT NULL COMMENT '文章缩略图',
  `content` text NOT NULL COMMENT '文章内容',
  `add_time` datetime NOT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of snake_articles
-- ----------------------------
INSERT INTO `snake_articles` VALUES ('2', '文章标题', '文章描述', '关键字1,关键字2,关键字3', '/upload/20170916/1e915c70dbb9d3e8a07bede7b64e4cff.png', '<p><img src=\"/upload/image/20170916/1505555254.png\" title=\"1505555254.png\" alt=\"QQ截图20170916174651.png\"/></p><p>测试文章内容</p><p>测试内容</p>', '2017-09-16 17:47:44');

-- ----------------------------
-- Table structure for snake_article_list
-- ----------------------------
DROP TABLE IF EXISTS `snake_article_list`;
CREATE TABLE `snake_article_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '车间展示',
  `title` varchar(50) DEFAULT NULL COMMENT '标题',
  `alt` varchar(50) DEFAULT NULL COMMENT '关键字',
  `edit_time` int(10) DEFAULT '0' COMMENT '编辑时间',
  `url` varchar(100) DEFAULT NULL COMMENT '图片',
  `content` text COMMENT '是否开启',
  `type` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1办公家私,2空调',
  `classlist` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1推荐回收 2分类回收 3最新回收 4热门回收',
  `detail_map` varchar(100) DEFAULT NULL COMMENT '详情图',
  `status` tinyint(1) DEFAULT '1' COMMENT '1开启 0关闭',
  `sort` int(5) DEFAULT '1' COMMENT '排序',
  `click` int(11) DEFAULT '0' COMMENT '点击次数',
  `add_time` int(10) DEFAULT '0' COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=70 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of snake_article_list
-- ----------------------------
INSERT INTO `snake_article_list` VALUES ('42', '高档木皮办公桌', '高档木皮办公桌回收', '1573478381', '/upload/20191111/f360f2e33a3d29423b765f899afb5040.jpg', '', '1', '1', '/upload/20191111/911f9188c59f2d0c7dd4a27e92e35b88.jpg', '1', '1', '1111', '1573477905');
INSERT INTO `snake_article_list` VALUES ('43', '高档新款办公桌', '高档新款办公桌回收', '1573478447', '/upload/20191111/f1488ee9dcee27c1f2bc6afcadca2e1c.png', null, '1', '1', '/upload/20191111/f14cad9d7d354a6241ed7fb619d4d605.png', '1', '2', '1111', '1573478447');
INSERT INTO `snake_article_list` VALUES ('44', '皮沙发', '沙发回收', '1573479148', '/upload/20191111/b24e82dee634fa0d1579e5db15bcd683.jpg', null, '1', '1', '/upload/20191111/1dbc0c4702643625231ac169c3abb165.jpg', '1', '3', '1112', '1573478518');
INSERT INTO `snake_article_list` VALUES ('50', '贴木皮1.6米办公桌回收', '贴木皮1.6米办公桌回收', '1573479916', '/upload/20191111/afef4ca48c49dcbf68b1c48d66dcf2f3.jpg', null, '1', '2', '/upload/20191111/2077362a71db057dcb0717540f801b71.jpg', '1', '5', '3333', '1573479323');
INSERT INTO `snake_article_list` VALUES ('45', '贴木皮 油漆大班桌 2.2米', '贴木皮 油漆大班桌 2.2米回收', '1573478584', '/upload/20191111/124ce08a9594dc73394687e00cb978ce.jpg', null, '1', '1', '/upload/20191111/a3357bec0e0e36acc387a72f0746a170.jpg', '1', '4', '1114', '1573478584');
INSERT INTO `snake_article_list` VALUES ('46', '木皮2.8米大班桌', '木皮2.8米大班桌回收', '1573478655', '/upload/20191111/ffcdb654a1e93f2a4ed79d6420024f7f.png', null, '1', '1', '/upload/20191111/54dff49515a8e7e720e4c62bfdf4f226.png', '1', '5', '1111', '1573478655');
INSERT INTO `snake_article_list` VALUES ('47', '高档木皮办公桌', '高档木皮办公桌回收', '1573478804', '/upload/20191111/9ea573a0d5c1c0f1c5073daab58b42e3.png', null, '1', '1', '/upload/20191111/102eae5120ecdce2818b81a1f2dc2b03.png', '1', '5', '1123', '1573478804');
INSERT INTO `snake_article_list` VALUES ('48', '大班台老板桌办公桌写字回收', '大班台老板桌办公桌写字回收', '1573479904', '/upload/20191111/58ba1e9e9f3133b5b934a8854bc139e2.jpg', null, '1', '1', '/upload/20191111/d511ea9b10004436ea93da0b25aaa1ba.jpg', '1', '6', '1111', '1573478873');
INSERT INTO `snake_article_list` VALUES ('49', '时尚办公桌回收', '时尚办公桌回收', '1573479910', '/upload/20191111/d705c3b3f3e7a06f422a663807717797.jpg', null, '1', '1', '/upload/20191111/823960b91d5fe0f1122c39076444309e.jpg', '1', '7', '2222', '1573478921');
INSERT INTO `snake_article_list` VALUES ('51', '贴木皮办公桌1.2米1.4米现回收', '贴木皮办公桌1.2米1.4米现回收', '1573479928', '/upload/20191111/1591d26789d3bc7251346bab15cb30af.jpg', null, '1', '2', '/upload/20191111/6229c61a1cc434d93c716a79044b266c.jpg', '1', '1', '3212', '1573479359');
INSERT INTO `snake_article_list` VALUES ('52', '时尚现代办公桌回收', '时尚现代办公桌回收', '1573479935', '/upload/20191111/7f60105794d7413b37bbda32167ff60a.jpg', '', '1', '2', '/upload/20191111/5ab21eeb96e57fce534b9bd20b4aae09.jpg', '1', '4', '1234', '1573479402');
INSERT INTO `snake_article_list` VALUES ('53', '时尚办公桌回收', '时尚办公桌回收', '1573479944', '/upload/20191111/ad961edac50455b1c966b87937958a52.png', null, '1', '2', '/upload/20191111/169d0b0f46eba61a5e01d5eed3af47ca.png', '1', '5', '1231', '1573479443');
INSERT INTO `snake_article_list` VALUES ('54', '屏风卡座800*500回收', '屏风卡座800*500回收', '1573479950', '/upload/20191111/2dea52188ba41fff600fe78d61e400cc.png', null, '1', '2', '/upload/20191111/aeef690a672a315dfe4afc87587762a5.png', '1', '5', '2123', '1573479500');
INSERT INTO `snake_article_list` VALUES ('55', '空凋设备回收', '空凋设备回收', '1573480381', '/upload/20191111/cf646fc2d9f78462c749d6a15c559868.jpg', null, '2', '2', '/upload/20191111/8f8cdc39f4aa6e8a348d6b2291df6e10.jpg', '1', '6', '1312', '1573479761');
INSERT INTO `snake_article_list` VALUES ('56', '整厂设备回收', '整厂设备', '1573480408', '/upload/20191111/4068de608fcb89a7865470dec8f95984.jpg', null, '2', '2', '/upload/20191111/87ee3a4f40fb7f728610002a43006037.jpg', '1', '2', '1213', '1573479803');
INSERT INTO `snake_article_list` VALUES ('57', '整厂设备回收', '整厂设备', '1573480431', '/upload/20191111/49a182bf97d6d908c8ee643f7b96121f.jpg', null, '2', '2', '/upload/20191111/b186e4724d044225229d95689f268736.jpg', '1', '1', '1212', '1573479870');
INSERT INTO `snake_article_list` VALUES ('58', '整厂设备回收', '整厂设备回收', '1573481029', '/upload/20191111/982363b4dfab8ea5c25bbcbf6cc54b93.jpg', '<p>飒飒</p>', '2', '2', '/upload/20191111/d1317d3d3074a430e0f45dace4e746ee.jpg', '1', '3', '1213', '1573481029');
INSERT INTO `snake_article_list` VALUES ('59', '整厂设备回收', '整厂设备回收', '1573481060', '/upload/20191111/efa5bf9a656e85f7a68879d7d3b84089.jpg', '<p>大叔大婶多撒阿萨德</p>', '2', '2', '/upload/20191111/10ed559f6434de97aedc14fb78d2b19c.jpg', '1', '5', '2131', '1573481060');
INSERT INTO `snake_article_list` VALUES ('60', '电脑配件回收', '电脑配件回收', '1573481265', '/upload/20191111/e3ad29a111903c57ae0b20983c5589c3.jpg', null, '3', '2', '/upload/20191111/8d780234a5a6c3da8959652d436798fd.jpg', '1', '1', '2123', '1573481265');
INSERT INTO `snake_article_list` VALUES ('61', '高价文化办公设备回收', '高价文化办公设备回收', '1573481304', '/upload/20191111/507d7df29619f70f5488b0e354e32b45.jpg', null, '3', '2', '/upload/20191111/0992eed91f7f53ac4c1a5eb423d8b1f8.jpg', '1', '2', '2123', '1573481304');
INSERT INTO `snake_article_list` VALUES ('62', '专业笔记本电脑回收', '专业笔记本电脑回收', '1573481347', '/upload/20191111/f437eee546d98152849b545cfda90f5a.jpg', null, '3', '2', '/upload/20191111/86d58bdf1bd5b5e29420ffa8158c8146.jpg', '1', '1', '3424', '1573481347');
INSERT INTO `snake_article_list` VALUES ('63', '二手电脑回收', '二手电脑回收', '1573481449', '/upload/20191111/1f2c39ac0cb5ddf23cbb0fe04aefa9c6.jpg', null, '3', '2', '/upload/20191111/c98e7c0765296cd85ace2e7426e1ef3e.jpg', '1', '6', '1213', '1573481383');
INSERT INTO `snake_article_list` VALUES ('65', '厨房设备设备回收西餐设备咖啡机设', '厨房设备设备回收西餐设备咖啡机设', '1573481588', '/upload/20191111/12674e3f55990248aa19d17c21a6d22a.jpg', '', '4', '2', '/upload/20191111/efb3b67cb5f40efd1bd05bb16a16ef1b.jpg', '1', '1', '1232', '1573481588');
INSERT INTO `snake_article_list` VALUES ('64', '设备回收，办公用品回收', '设备回收，办公用品回收', '1573481422', '/upload/20191111/8ee97b72a7f439532c200722d7d86b5a.jpg', null, '3', '2', '/upload/20191111/614c958ac7fdc8de1dc7c95b1681fa34.jpg', '1', '7', '5434', '1573481422');
INSERT INTO `snake_article_list` VALUES ('66', '专业酒店设备回收，酒店二手设备', '专业酒店设备回收，酒店二手设备', '1573481671', '/upload/20191111/bae0d96e1876282e993bbbaaba5e5bed.jpg', null, '4', '2', '/upload/20191111/5d2b37e2cdf5455bb0003e7f08e63169.jpg', '1', '1', '3131', '1573481671');
INSERT INTO `snake_article_list` VALUES ('67', '专业酒店设备回收，酒店二手设备', '专业酒店设备回收，酒店二手设备', '1573481724', '/upload/20191111/ff79ab5e8246020eb0a94095ab3503cc.jpg', null, '4', '2', '/upload/20191111/b35a1b1d75a23659a962ac63f978f3ad.jpg', '1', '3', '231', '1573481724');
INSERT INTO `snake_article_list` VALUES ('68', '宾馆物资回收，酒店物资回收', '宾馆物资回收，酒店物资回收', '1573481770', '/upload/20191111/c39c6a74843f071b389db6bc688bbcfc.jpg', '', '4', '2', '/upload/20191111/98d96fc40d9615bdbbfe4f77a835e4d9.jpg', '1', '4', '3123', '1573481770');
INSERT INTO `snake_article_list` VALUES ('69', '厨具回收，饭店后厨设备回', '厨具回收，饭店后厨设备回', '1573482005', '/upload/20191111/3dd17266e8926ff287e340fc071094fa.jpg', '', '4', '2', '/upload/20191111/82958211f3374362f14cac977a84062c.jpg', '1', '6', '2131', '1573482005');

-- ----------------------------
-- Table structure for snake_carousel_map
-- ----------------------------
DROP TABLE IF EXISTS `snake_carousel_map`;
CREATE TABLE `snake_carousel_map` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `title` varchar(50) DEFAULT NULL COMMENT '轮播图标题',
  `url` varchar(100) DEFAULT NULL COMMENT '图片地址',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1开启 0关闭',
  `sort` int(5) NOT NULL DEFAULT '1' COMMENT '排序',
  `alt` varchar(50) DEFAULT NULL COMMENT '别名',
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1办公家司 2空调',
  `edit_time` int(10) DEFAULT '0' COMMENT '编辑时间',
  `add_time` int(10) DEFAULT '0' COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of snake_carousel_map
-- ----------------------------
INSERT INTO `snake_carousel_map` VALUES ('6', '办公家私回收|红木家私回收|空调电脑回收|酒店设备回收|工厂设备回收', '/upload/20191111/2207fd9baa657c1252a56f1563a1cb11.jpg', '1', '1', '办公家私回收|红木家私回收|空调电脑回收|酒店设备回收|工厂设备回收', '1', '1573482140', '1573027987');
INSERT INTO `snake_carousel_map` VALUES ('5', '办公家私回收|红木家私回收|空调电脑回收|酒店设备回收|工厂设备回收', '/upload/20191111/ecd0e3e6aa766f6717c0c8b2d7e23232.jpg', '1', '2', '办公家私回收|红木家私回收|空调电脑回收|酒店设备回收|工厂设备回收', '2', '1573482147', '1573027987');
INSERT INTO `snake_carousel_map` VALUES ('7', '办公家私回收|红木家私回收|空调电脑回收|酒店设备回收|工厂设备回收', '/upload/20191111/a8bbcd9c036cbc33ffe64a7c8df4d8e0.jpg', '1', '3', '办公家私回收|红木家私回收|空调电脑回收|酒店设备回收|工厂设备回收', '3', '1573482153', '1573027987');
INSERT INTO `snake_carousel_map` VALUES ('8', '办公家私回收|红木家私回收|空调电脑回收|酒店设备回收|工厂设备回收', '/upload/20191111/7a179483cb10d63947cea0c8e866153d.jpg', '1', '4', '办公家私回收|红木家私回收|空调电脑回收|酒店设备回收|工厂设备回收', '4', '1573482158', '1573027987');

-- ----------------------------
-- Table structure for snake_node
-- ----------------------------
DROP TABLE IF EXISTS `snake_node`;
CREATE TABLE `snake_node` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `node_name` varchar(155) NOT NULL DEFAULT '' COMMENT '节点名称',
  `control_name` varchar(155) NOT NULL DEFAULT '' COMMENT '控制器名',
  `action_name` varchar(155) NOT NULL COMMENT '方法名',
  `is_menu` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否是菜单项 1不是 2是',
  `type_id` int(11) NOT NULL COMMENT '父级节点id',
  `style` varchar(155) DEFAULT '' COMMENT '菜单样式',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of snake_node
-- ----------------------------
INSERT INTO `snake_node` VALUES ('1', '用户管理', '#', '#', '2', '0', 'fa fa-users');
INSERT INTO `snake_node` VALUES ('2', '管理员管理', 'user', 'index', '2', '1', '');
INSERT INTO `snake_node` VALUES ('3', '添加管理员', 'user', 'useradd', '1', '2', '');
INSERT INTO `snake_node` VALUES ('4', '编辑管理员', 'user', 'useredit', '1', '2', '');
INSERT INTO `snake_node` VALUES ('5', '删除管理员', 'user', 'userdel', '1', '2', '');
INSERT INTO `snake_node` VALUES ('6', '角色管理', 'role', 'index', '2', '1', '');
INSERT INTO `snake_node` VALUES ('7', '添加角色', 'role', 'roleadd', '1', '6', '');
INSERT INTO `snake_node` VALUES ('8', '编辑角色', 'role', 'roleedit', '1', '6', '');
INSERT INTO `snake_node` VALUES ('9', '删除角色', 'role', 'roledel', '1', '6', '');
INSERT INTO `snake_node` VALUES ('10', '分配权限', 'role', 'giveaccess', '1', '6', '');
INSERT INTO `snake_node` VALUES ('11', '系统管理', '#', '#', '1', '0', 'fa fa-desktop');
INSERT INTO `snake_node` VALUES ('12', '数据备份/还原', 'data', 'index', '2', '11', '');
INSERT INTO `snake_node` VALUES ('13', '备份数据', 'data', 'importdata', '1', '12', '');
INSERT INTO `snake_node` VALUES ('14', '还原数据', 'data', 'backdata', '1', '12', '');
INSERT INTO `snake_node` VALUES ('15', '节点管理', 'node', 'index', '2', '1', '');
INSERT INTO `snake_node` VALUES ('16', '添加节点', 'node', 'nodeadd', '1', '15', '');
INSERT INTO `snake_node` VALUES ('17', '编辑节点', 'node', 'nodeedit', '1', '15', '');
INSERT INTO `snake_node` VALUES ('18', '删除节点', 'node', 'nodedel', '1', '15', '');
INSERT INTO `snake_node` VALUES ('19', '文章管理', 'articles', 'index', '1', '0', 'fa fa-book');
INSERT INTO `snake_node` VALUES ('20', '文章列表', 'articles', 'index', '2', '19', '');
INSERT INTO `snake_node` VALUES ('21', '添加文章', 'articles', 'articleadd', '1', '19', '');
INSERT INTO `snake_node` VALUES ('22', '编辑文章', 'articles', 'articleedit', '1', '19', '');
INSERT INTO `snake_node` VALUES ('23', '删除文章', 'articles', 'articledel', '1', '19', '');
INSERT INTO `snake_node` VALUES ('24', '上传图片', 'articles', 'uploadImg', '1', '19', '');
INSERT INTO `snake_node` VALUES ('25', '文件上传', '#', '#', '1', '0', '');
INSERT INTO `snake_node` VALUES ('26', '编辑信息', 'profile', 'index', '1', '25', '');
INSERT INTO `snake_node` VALUES ('27', '编辑头像', 'profile', 'headedit', '1', '25', '');
INSERT INTO `snake_node` VALUES ('28', '上传头像', 'profile', 'uploadheade', '1', '25', '');
INSERT INTO `snake_node` VALUES ('30', '轮播图', '#', '#', '2', '0', 'fa fa-book');
INSERT INTO `snake_node` VALUES ('31', '轮播图列表', 'home', 'index_carousel', '2', '30', '');
INSERT INTO `snake_node` VALUES ('32', '添加轮播图', 'home', 'carousel_add', '2', '30', '');
INSERT INTO `snake_node` VALUES ('33', '修改轮播图', 'home', 'carousel_edit', '1', '30', '');
INSERT INTO `snake_node` VALUES ('34', '详情', '#', '#', '2', '0', 'fa fa-book');
INSERT INTO `snake_node` VALUES ('35', '详情列表', 'home', 'second_hand', '2', '34', '');
INSERT INTO `snake_node` VALUES ('36', '添加详情', 'home', 'second_hand_add', '2', '34', '');
INSERT INTO `snake_node` VALUES ('37', '系统', '#', '#', '2', '0', 'fa fa-book');
INSERT INTO `snake_node` VALUES ('38', '公司信息', 'home', 'personal', '2', '37', '');

-- ----------------------------
-- Table structure for snake_personal
-- ----------------------------
DROP TABLE IF EXISTS `snake_personal`;
CREATE TABLE `snake_personal` (
  `id` int(2) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `alt` varchar(200) NOT NULL COMMENT '关键字',
  `icon` varchar(100) NOT NULL COMMENT '图标',
  `copyright` varchar(200) NOT NULL COMMENT '版权',
  `address` text NOT NULL COMMENT '公司地址信息',
  `left_img` varchar(100) NOT NULL COMMENT '左浮动图',
  `right_img` varchar(100) NOT NULL COMMENT '右浮动图',
  `process` text NOT NULL COMMENT '回收流程',
  `onwe` text NOT NULL COMMENT '关于我们',
  `contact` text NOT NULL COMMENT '联系我们',
  `hotline` varchar(255) NOT NULL COMMENT '回收热线',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of snake_personal
-- ----------------------------
INSERT INTO `snake_personal` VALUES ('1', '深圳办公家私回收公司|深圳电子设备回收公司|深圳工厂设备回收公司|深圳酒店设备回收|深圳|红木家具回收公司|深圳酒店设备回收公司', '深圳办公家私回收公司|深圳电子设备回收公司|深圳工厂设备回收公司|深圳酒店设备回收|深圳|红木家具回收公司|深圳酒店设备回收公司', '/upload/20191106/95993c9c9891f93b91fc0d2037a1462d.jpg', '版权所有   粤ICP备18058276号-1', '<p><span style=\"color: rgb(0, 0, 0);\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;地址/路线&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span></p><p><span style=\"font-family: 微软雅黑;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;公司：深圳市兴泰办公家具有限公&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span></p><p><span style=\"font-family: 微软雅黑;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;地址：深圳市罗湖区深圳市罗湖区清水河街道清水河二路深业物流配送中心清水河酒店用品城&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span></p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;服务热线&nbsp;&nbsp;<span style=\"font-family: 微软雅黑;\">全国客服电话：</span><span style=\"font-size: 36px;\">13927473976</span></p><p><span style=\"font-family: 微软雅黑;\"></span></p>', '/upload/20191111/cab41dfcc07b68afdd06da10e55c3041.png', '/upload/20191111/61c2f49338537905fee7aa32aee0116e.png', '<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 20px 0px 5px; border: none; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; line-height: 25px; letter-spacing: 1px; color: rgb(69, 176, 53); font-family: &quot;Microsoft Yahei&quot;;\"><span style=\"font-size: 18px; color: rgb(0, 0, 0);\"><img src=\"/static/upload/image/20191111/1573454531.png\" title=\"图解1.png\" alt=\"图解1.png\"/></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 20px 0px 5px; border: none; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; line-height: 25px; letter-spacing: 1px; color: rgb(69, 176, 53); font-family: &quot;Microsoft Yahei&quot;;\"><span style=\"font-size: 18px; color: rgb(0, 0, 0);\"><br/></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 20px 0px 5px; border: none; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; line-height: 25px; letter-spacing: 1px; color: rgb(69, 176, 53); font-family: &quot;Microsoft Yahei&quot;;\"><span style=\"font-size: 18px; color: rgb(0, 0, 0);\"><br/></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 20px 0px 5px; border: none; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; line-height: 25px; letter-spacing: 1px; color: rgb(69, 176, 53); font-family: &quot;Microsoft Yahei&quot;;\"><span style=\"font-size: 18px; color: rgb(0, 0, 0);\"><br/></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 20px 0px 5px; border: none; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; line-height: 25px; letter-spacing: 1px; color: rgb(69, 176, 53); font-family: &quot;Microsoft Yahei&quot;;\"><span style=\"font-size: 18px; color: rgb(0, 0, 0);\">深圳兴泰办公家私回收网回收流程：</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 20px 0px 5px; border: none; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; line-height: 25px; letter-spacing: 1px; color: rgb(69, 176, 53); font-family: &quot;Microsoft Yahei&quot;;\"><span style=\"font-size: 18px; color: rgb(0, 0, 0);\"><br/></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 20px 0px 5px; border: none; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; line-height: 25px; letter-spacing: 1px; color: rgb(69, 176, 53); font-family: &quot;Microsoft Yahei&quot;;\"><span style=\"font-size: 16px; color: rgb(0, 0, 0);\"><strong>→ 专人服务：</strong></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 20px 0px 5px; border: none; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; line-height: 25px; letter-spacing: 1px; color: rgb(69, 176, 53); font-family: &quot;Microsoft Yahei&quot;;\"><span style=\"color: rgb(0, 0, 0);\">我们在城市里的不同区域分布了回收点，根据客户的位置，安排就近回收点的工作人员进行联系，承诺迅速响应，并给出合理估价。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 20px 0px 5px; border: none; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; line-height: 25px; letter-spacing: 1px; color: rgb(69, 176, 53); font-family: &quot;Microsoft Yahei&quot;;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 20px 0px 5px; border: none; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; line-height: 25px; letter-spacing: 1px; color: rgb(69, 176, 53); font-family: &quot;Microsoft Yahei&quot;;\"><span style=\"color: rgb(0, 0, 0);\"><strong><span style=\"color: rgb(0, 0, 0); font-size: 16px;\"><strong>→&nbsp;</strong>上门回收：</span></strong></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 20px 0px 5px; border: none; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; line-height: 25px; letter-spacing: 1px; color: rgb(69, 176, 53); font-family: &quot;Microsoft Yahei&quot;;\"><span style=\"color: rgb(0, 0, 0);\">价格确定后，我们将会与客户签订回收协议，并安排专业的拆卸师傅根据您安排的时间上门回收，最大限度减少对客户公司的影响。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 20px 0px 5px; border: none; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; line-height: 25px; letter-spacing: 1px; color: rgb(69, 176, 53); font-family: &quot;Microsoft Yahei&quot;;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 20px 0px 5px; border: none; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; line-height: 25px; letter-spacing: 1px; color: rgb(69, 176, 53); font-family: &quot;Microsoft Yahei&quot;;\"><span style=\"font-size: 16px; color: rgb(0, 0, 0);\"><strong><strong>→&nbsp;</strong>现场结款：</strong></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 20px 0px 5px; border: none; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; line-height: 25px; letter-spacing: 1px; color: rgb(69, 176, 53); font-family: &quot;Microsoft Yahei&quot;;\"><span style=\"color: rgb(0, 0, 0);\">我们承诺现场结款，绝不拖欠。拆卸师傅将家具等处理完毕后，当即根据回收协议上约定的金额将回收款支付给客户。</span></p><p><br/></p>', '<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: 宋体; font-size: 12px; white-space: normal; background-color: rgb(246, 246, 246);\"><span style=\"font-size: 16px;\"><strong><span style=\"background-color: rgb(255, 255, 255); color: rgb(0, 0, 0);\">深圳市<span style=\"font-family: 微软雅黑;\">兴泰</span>办公家具有限公司</span>是注册的正规公司，成立于2010年，位于深圳市罗湖区清水河酒店用品城。本公司经过多年的努力，成为办公家私行业的新星企业，在深圳地区展开新旧办公家私销售、二手办公家私收购、电子设备回收、废旧物资的收购与处理等多项业务。长年致力于酒楼用品、酒楼设备、办公用品、红木家具、欧式家私的收购与销售服务。服务于深圳及深圳周边（深圳境内2小时必达），我们拥有一流的服务团队为顾客提供上门服务。提供新旧置换、新品定做、无忧搬家、送货上门安装一条龙服务。让顾客朋友们足不出户实现交易，欢迎广大顾客朋友们来实际体验。</strong><br/><strong>我们格守信誉第一，服务至上，诚信为本的经营理念为大家服务</strong></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: 宋体; font-size: 12px; white-space: normal; background-color: rgb(246, 246, 246);\"><span style=\"font-size: 16px;\"><strong><span style=\"font-size: 14px;\">　 我们主要销售回收产品有</span></strong><br/><strong><span style=\"font-size: 14px;\">1、办公家具系列：办公屏风、卡座、高档书柜、文件柜、电脑桌椅、大班台、会议桌、文员办公桌椅、真皮沙发、茶几、大班椅、会议椅、公司前台、铁木床等。</span></strong><br/><strong><span style=\"font-size: 14px;\">2、电脑主机、显示器、彩电、冰箱、空调、洗衣机、打印机、传真机、复印机、打卡机、数码相机、VCD、家庭影院等。</span></strong><br/><strong><span style=\"font-size: 14px;\">3、酒楼厨具设备系列：大型冻柜、炉灶、中央空调、不锈钢制品、雪柜、蒸柜、打荷台、工作台、洗手盆、炉头、制冰机、陈列柜、雪糕柜、面包烤箱、打蛋机、蛋糕柜、快餐台等</span></strong><br/><strong><span style=\"font-size: 14px;\">4、空调制冷设备：家用空调、商用空调、中央空调；</span></strong><br/><strong><span style=\"font-size: 14px;\">5、各种商场货架、陈列架、角铁床、百变货架、玻璃展柜、售货柜台等</span></strong></span></p><p><br/></p>', '<h2 style=\"margin: 15px 0px; padding: 0px 0px 0px 5px; border: none; white-space: normal; background-color: rgb(255, 255, 255); color: rgb(69, 176, 53); font-family: &quot;Microsoft Yahei&quot;;\"><span style=\"color: rgb(0, 0, 0);\"></span><span style=\"font-size: 16px; color: rgb(0, 0, 0);\"><span style=\"font-size: 16px; font-family: 宋体; background-color: rgb(246, 246, 246);\">深圳市兴泰办公家具有限公司</span><br/><span style=\"font-size: 16px; font-family: 宋体; background-color: rgb(246, 246, 246);\">联系人：李先生</span><br/><span style=\"font-size: 16px; font-family: 宋体; background-color: rgb(246, 246, 246);\">手机：15889454049</span><br/><span style=\"font-size: 16px; font-family: 宋体; background-color: rgb(246, 246, 246);\">联系人：倪小姐 13480792948</span><br/><span style=\"font-size: 16px; font-family: 宋体; background-color: rgb(246, 246, 246);\">网址：http://www.szstjjd.com</span><br/><span style=\"font-size: 16px; font-family: 宋体; background-color: rgb(246, 246, 246);\">地址：深圳市罗湖区深圳市罗湖区清水河街道清水河二路深业物流配送中心清水河酒店用品城</span><br/></span></h2><p><span style=\"font-size: 16px; color: rgb(0, 0, 0);\"><span style=\"font-size: 16px; font-family: 宋体; background-color: rgb(246, 246, 246);\"><img width=\"530\" height=\"340\" src=\"http://api.map.baidu.com/staticimage?center=114.119465,22.586377&zoom=18&width=530&height=340&markers=114.119528,22.58631\"/></span></span></p><p><span style=\"font-family: 宋体; background-color: rgb(246, 246, 246); font-size: 16px; color: rgb(0, 0, 0);\"><br/></span></p><p><span style=\"font-size: 16px; color: rgb(0, 0, 0);\">附近公交/地铁</span></p><p><span style=\"font-size: 16px; color: rgb(0, 0, 0);\">公交：青湖山庄(8路; 58路; 58路大站快车; 61路; 85路; 222路; 381路; 385路; m105路; m123路; m194路; m463路; n6路; 高峰专线29号)<br/>深业车城(m482路)<br/>腾邦大厦(m140路; m482路)</span></p><p><span style=\"font-size: 16px; color: rgb(0, 0, 0);\">地铁：</span></p><p><br/></p>', '深圳兴泰办公家私回收               李先生:13927473976');

-- ----------------------------
-- Table structure for snake_role
-- ----------------------------
DROP TABLE IF EXISTS `snake_role`;
CREATE TABLE `snake_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `role_name` varchar(155) NOT NULL COMMENT '角色名称',
  `rule` varchar(255) DEFAULT '' COMMENT '权限节点数据',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of snake_role
-- ----------------------------
INSERT INTO `snake_role` VALUES ('1', '超级管理员', '*');
INSERT INTO `snake_role` VALUES ('2', '系统维护员', '25,26,27,28,30,31,32,33,34,35,36,37,38');

-- ----------------------------
-- Table structure for snake_user
-- ----------------------------
DROP TABLE IF EXISTS `snake_user`;
CREATE TABLE `snake_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '用户名',
  `password` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '密码',
  `head` varchar(255) COLLATE utf8_bin DEFAULT '' COMMENT '头像',
  `login_times` int(11) NOT NULL DEFAULT '0' COMMENT '登陆次数',
  `last_login_ip` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '最后登录IP',
  `last_login_time` int(11) NOT NULL DEFAULT '0' COMMENT '最后登录时间',
  `real_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '真实姓名',
  `status` int(1) NOT NULL DEFAULT '0' COMMENT '状态',
  `role_id` int(11) NOT NULL DEFAULT '1' COMMENT '用户角色id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of snake_user
-- ----------------------------
INSERT INTO `snake_user` VALUES ('1', 'admin', 'a9ddd2e7bdff202e3e9bca32765e9ba0', '/static/admin/images/profile_small.jpg', '57', '127.0.0.1', '1573476942', 'admin', '1', '1');
INSERT INTO `snake_user` VALUES ('2', 'root', '68cd329b746ad1610fd908a5519b780a', '/upload/head/yH4aoRIGTtpDOL6fYV8SrxK27ghBQb9v.jpeg', '3', '127.0.0.1', '1573096505', '舅舅', '1', '2');
