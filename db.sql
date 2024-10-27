/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - dbtutechan
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`dbtutechan` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `dbtutechan`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(20) NOT NULL COMMENT '创建用户',
  `address_name` varchar(200) NOT NULL COMMENT '收货人 ',
  `address_phone` varchar(200) NOT NULL COMMENT '电话 ',
  `address_dizhi` varchar(200) NOT NULL COMMENT '地址 ',
  `isdefault_types` int(11) NOT NULL COMMENT '是否默认地址 ',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='收货地址';

/*Data for the table `address` */

insert  into `address`(`id`,`yonghu_id`,`address_name`,`address_phone`,`address_dizhi`,`isdefault_types`,`insert_time`,`update_time`,`create_time`) values (1,2,'收货人1','17703786901','地址1',1,'2023-04-15 17:15:54','2023-04-15 17:15:54','2023-04-15 17:15:54'),(2,1,'收货人2','17703786902','地址2',1,'2023-04-15 17:15:54','2023-04-15 17:15:54','2023-04-15 17:15:54'),(3,1,'收货人3','17703786903','地址3',1,'2023-04-15 17:15:54','2023-04-15 17:15:54','2023-04-15 17:15:54'),(4,1,'收货人4','17703786904','地址4',1,'2023-04-15 17:15:54','2023-04-15 17:15:54','2023-04-15 17:15:54'),(5,2,'收货人5','17703786905','地址5',1,'2023-04-15 17:15:54','2023-04-15 17:15:54','2023-04-15 17:15:54'),(6,3,'收货人6','17703786906','地址6',1,'2023-04-15 17:15:54','2023-04-15 17:15:54','2023-04-15 17:15:54'),(7,1,'收货人7','17703786907','地址7',1,'2023-04-15 17:15:54','2023-04-15 17:15:54','2023-04-15 17:15:54'),(8,1,'收货人8','17703786908','地址8',1,'2023-04-15 17:15:54','2023-04-15 17:15:54','2023-04-15 17:15:54'),(9,3,'收货人9','17703786909','地址9',1,'2023-04-15 17:15:54','2023-04-15 17:15:54','2023-04-15 17:15:54'),(10,3,'收货人10','17703786910','地址10',1,'2023-04-15 17:15:54','2023-04-15 17:15:54','2023-04-15 17:15:54'),(11,3,'收货人11','17703786911','地址11',1,'2023-04-15 17:15:54','2023-04-15 17:15:54','2023-04-15 17:15:54'),(12,2,'收货人12','17703786912','地址12',1,'2023-04-15 17:15:54','2023-04-15 17:15:54','2023-04-15 17:15:54'),(13,2,'收货人13','17703786913','地址13',1,'2023-04-15 17:15:54','2023-04-15 17:15:54','2023-04-15 17:15:54'),(14,1,'收货人14','17703786914','地址14',1,'2023-04-15 17:15:54','2023-04-15 17:15:54','2023-04-15 17:15:54'),(15,4,'张三','17788888888','地址1`1',2,'2023-04-15 17:38:12','2023-04-15 17:38:11','2023-04-15 17:38:12');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '所属用户',
  `shangpin_id` int(11) DEFAULT NULL COMMENT '商品',
  `buy_number` int(11) DEFAULT NULL COMMENT '购买数量',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='购物车';

/*Data for the table `cart` */

insert  into `cart`(`id`,`yonghu_id`,`shangpin_id`,`buy_number`,`create_time`,`update_time`,`insert_time`) values (3,1,12,2,'2023-04-15 17:39:09',NULL,'2023-04-15 17:39:09');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1很多时候公司单号','upload/config1.jpg'),(2,'轮播图2','upload/config2.jpg'),(3,'轮播图3','upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'sex_types','性别类型',1,'男',NULL,NULL,'2023-04-15 17:14:27'),(2,'sex_types','性别类型',2,'女',NULL,NULL,'2023-04-15 17:14:28'),(3,'huiyuandengji_types','会员等级类型',1,'青铜会员',NULL,'0.98','2023-04-15 17:14:28'),(4,'huiyuandengji_types','会员等级类型',2,'白银会员',NULL,'0.96','2023-04-15 17:14:28'),(5,'huiyuandengji_types','会员等级类型',3,'黄金会员',NULL,'0.95','2023-04-15 17:14:28'),(6,'jinyong_types','账户状态',1,'启用',NULL,NULL,'2023-04-15 17:14:28'),(7,'jinyong_types','账户状态',2,'禁用',NULL,NULL,'2023-04-15 17:14:28'),(8,'bangfu_types','帮扶产品',1,'是',NULL,NULL,'2023-04-15 17:14:28'),(9,'bangfu_types','帮扶产品',2,'否',NULL,NULL,'2023-04-15 17:14:28'),(10,'shangxia_types','上下架',1,'上架',NULL,NULL,'2023-04-15 17:14:28'),(11,'shangxia_types','上下架',2,'下架',NULL,NULL,'2023-04-15 17:14:28'),(12,'shangpin_types','商品类型',1,'商品类型1',NULL,NULL,'2023-04-15 17:14:28'),(13,'shangpin_types','商品类型',2,'商品类型2',NULL,NULL,'2023-04-15 17:14:28'),(14,'shangpin_erji_types','二级类型',1,'二级类型1',1,NULL,'2023-04-15 17:14:28'),(15,'shangpin_erji_types','二级类型',2,'二级类型2',1,NULL,'2023-04-15 17:14:28'),(16,'shangpin_erji_types','二级类型',3,'二级类型3',2,NULL,'2023-04-15 17:14:28'),(17,'shangpin_erji_types','二级类型',4,'二级类型4',2,NULL,'2023-04-15 17:14:28'),(18,'shangpin_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2023-04-15 17:14:28'),(19,'shangpin_collection_types','收藏表类型',2,'赞',NULL,NULL,'2023-04-15 17:14:28'),(20,'shangpin_collection_types','收藏表类型',3,'踩',NULL,NULL,'2023-04-15 17:14:28'),(21,'shangpin_order_types','订单类型',101,'已支付',NULL,NULL,'2023-04-15 17:14:28'),(22,'shangpin_order_types','订单类型',102,'已退款',NULL,NULL,'2023-04-15 17:14:28'),(23,'shangpin_order_types','订单类型',103,'已发货',NULL,NULL,'2023-04-15 17:14:28'),(24,'shangpin_order_types','订单类型',104,'已收货',NULL,NULL,'2023-04-15 17:14:28'),(25,'shangpin_order_types','订单类型',105,'已评价',NULL,NULL,'2023-04-15 17:14:28'),(26,'shangpin_order_payment_types','订单支付类型',1,'余额',NULL,NULL,'2023-04-15 17:14:28'),(27,'shangpin_order_payment_types','订单支付类型',2,'积分',NULL,NULL,'2023-04-15 17:14:28'),(28,'isdefault_types','是否默认地址',1,'否',NULL,NULL,'2023-04-15 17:14:28'),(29,'isdefault_types','是否默认地址',2,'是',NULL,NULL,'2023-04-15 17:14:28'),(30,'shangpin_chat_types','数据类型',1,'问题',NULL,NULL,'2023-04-15 17:14:28'),(31,'shangpin_chat_types','数据类型',2,'回复',NULL,NULL,'2023-04-15 17:14:29'),(32,'zhuangtai_types','状态',1,'未回复',NULL,NULL,'2023-04-15 17:14:29'),(33,'zhuangtai_types','状态',2,'已回复',NULL,NULL,'2023-04-15 17:14:29'),(34,'news_types','新闻类型',1,'新闻类型1',NULL,NULL,'2023-04-15 17:14:29'),(35,'news_types','新闻类型',2,'新闻类型2',NULL,NULL,'2023-04-15 17:14:29'),(36,'gonggao_types','公告类型',1,'公告类型1',NULL,NULL,'2023-04-15 17:14:29'),(37,'gonggao_types','公告类型',2,'公告类型2',NULL,NULL,'2023-04-15 17:14:29'),(38,'shangpin_erji_types','二级类型',5,'二级类型6',2,'','2023-04-15 17:43:59'),(39,'shangpin_bangfushenqing_types','帮扶申请类型',1,'申请类型1',NULL,NULL,'2023-04-21 14:26:14'),(40,'shangpin_bangfushenqing_types','帮扶申请类型',2,'申请类型2',NULL,NULL,'2023-04-21 14:26:14'),(41,'shangpin_bangfushenqing_types','帮扶申请类型',3,'申请类型3',NULL,NULL,'2023-04-21 14:26:14'),(42,'shangpin_bangfushenqing_types','帮扶申请类型',4,'申请类型4',NULL,NULL,'2023-04-21 14:26:14'),(43,'shangpin_bangfushenqing_yesno_types','申请状态',1,'待审核',NULL,NULL,'2023-04-21 14:26:14'),(44,'shangpin_bangfushenqing_yesno_types','申请状态',2,'同意',NULL,NULL,'2023-04-21 14:26:14'),(45,'shangpin_bangfushenqing_yesno_types','申请状态',3,'拒绝',NULL,NULL,'2023-04-21 14:26:14');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int(11) NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `gonggao_content` longtext COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_photo`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (1,'公告名称1','upload/gonggao1.jpg',1,'2023-04-15 17:15:54','公告详情1','2023-04-15 17:15:54'),(2,'公告名称2','upload/gonggao2.jpg',2,'2023-04-15 17:15:54','公告详情2','2023-04-15 17:15:54'),(3,'公告名称3','upload/gonggao3.jpg',2,'2023-04-15 17:15:54','公告详情3','2023-04-15 17:15:54'),(4,'公告名称4','upload/gonggao4.jpg',2,'2023-04-15 17:15:54','公告详情4','2023-04-15 17:15:54'),(5,'公告名称5','upload/gonggao5.jpg',1,'2023-04-15 17:15:54','公告详情5','2023-04-15 17:15:54'),(6,'公告名称6','upload/gonggao6.jpg',2,'2023-04-15 17:15:54','公告详情6','2023-04-15 17:15:54'),(7,'公告名称7','upload/gonggao7.jpg',1,'2023-04-15 17:15:54','公告详情7','2023-04-15 17:15:54'),(8,'公告名称8','upload/gonggao8.jpg',1,'2023-04-15 17:15:54','公告详情8','2023-04-15 17:15:54'),(9,'公告名称9','upload/gonggao9.jpg',2,'2023-04-15 17:15:54','公告详情9','2023-04-15 17:15:54'),(10,'公告名称10','upload/gonggao10.jpg',1,'2023-04-15 17:15:54','公告详情10','2023-04-15 17:15:54'),(11,'公告名称11','upload/gonggao11.jpg',1,'2023-04-15 17:15:54','公告详情11','2023-04-15 17:15:54'),(12,'公告名称12','upload/gonggao12.jpg',1,'2023-04-15 17:15:54','公告详情12','2023-04-15 17:15:54'),(13,'公告名称13','upload/gonggao13.jpg',1,'2023-04-15 17:15:54','公告详情13','2023-04-15 17:15:54'),(14,'公告名称14','upload/gonggao14.jpg',2,'2023-04-15 17:15:54','<p>公告详情14过大广东省格式的</p>','2023-04-15 17:15:54');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `news_name` varchar(200) DEFAULT NULL COMMENT '新闻名称 Search111  ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '新闻图片 ',
  `news_types` int(11) NOT NULL COMMENT '新闻类型 Search111  ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `news_content` longtext COMMENT '新闻详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='新闻信息';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_photo`,`news_types`,`insert_time`,`news_content`,`create_time`) values (1,'新闻名称1','upload/news1.jpg',2,'2023-04-15 17:15:54','新闻详情1','2023-04-15 17:15:54'),(2,'新闻名称2','upload/news2.jpg',2,'2023-04-15 17:15:54','新闻详情2','2023-04-15 17:15:54'),(3,'新闻名称3','upload/news3.jpg',1,'2023-04-15 17:15:54','新闻详情3','2023-04-15 17:15:54'),(4,'新闻名称4','upload/news4.jpg',2,'2023-04-15 17:15:54','新闻详情4','2023-04-15 17:15:54'),(5,'新闻名称5','upload/news5.jpg',1,'2023-04-15 17:15:54','新闻详情5','2023-04-15 17:15:54'),(6,'新闻名称6','upload/news6.jpg',1,'2023-04-15 17:15:54','新闻详情6','2023-04-15 17:15:54'),(7,'新闻名称7','upload/news7.jpg',2,'2023-04-15 17:15:54','新闻详情7','2023-04-15 17:15:54'),(8,'新闻名称8','upload/news8.jpg',1,'2023-04-15 17:15:54','新闻详情8','2023-04-15 17:15:54'),(9,'新闻名称9','upload/news9.jpg',2,'2023-04-15 17:15:54','新闻详情9','2023-04-15 17:15:54'),(10,'新闻名称10','upload/news10.jpg',2,'2023-04-15 17:15:54','新闻详情10','2023-04-15 17:15:54'),(11,'新闻名称11','upload/news11.jpg',2,'2023-04-15 17:15:54','新闻详情11','2023-04-15 17:15:54'),(12,'新闻名称12','upload/news12.jpg',2,'2023-04-15 17:15:54','新闻详情12','2023-04-15 17:15:54'),(13,'新闻名称13','upload/news13.jpg',1,'2023-04-15 17:15:54','新闻详情13','2023-04-15 17:15:54'),(14,'新闻名称14','upload/news14.jpg',1,'2023-04-15 17:15:54','<p>新闻详情14红烧豆腐任何第三方</p>','2023-04-15 17:15:54');

/*Table structure for table `nonghu` */

DROP TABLE IF EXISTS `nonghu`;

CREATE TABLE `nonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `nonghu_uuid_number` varchar(200) DEFAULT NULL COMMENT '农户编号 Search111 ',
  `nonghu_name` varchar(200) DEFAULT NULL COMMENT '农户姓名 Search111 ',
  `nonghu_phone` varchar(200) DEFAULT NULL COMMENT '农户手机号',
  `nonghu_id_number` varchar(200) DEFAULT NULL COMMENT '农户身份证号',
  `nonghu_photo` varchar(200) DEFAULT NULL COMMENT '农户照片',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `nonghu_email` varchar(200) DEFAULT NULL COMMENT '农户邮箱',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `jinyong_types` int(11) DEFAULT NULL COMMENT '账户状态 Search111 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='农户';

/*Data for the table `nonghu` */

insert  into `nonghu`(`id`,`username`,`password`,`nonghu_uuid_number`,`nonghu_name`,`nonghu_phone`,`nonghu_id_number`,`nonghu_photo`,`sex_types`,`nonghu_email`,`new_money`,`jinyong_types`,`create_time`) values (1,'a1','123456','1681550154626','农户姓名1','17703786901','410224199010102001','upload/nonghu1.jpg',2,'1@qq.com','572.43',1,'2023-04-15 17:15:54'),(2,'a2','123456','1681550154602','农户姓名2','17703786902','410224199010102002','upload/nonghu2.jpg',2,'2@qq.com','928.64',1,'2023-04-15 17:15:54'),(3,'a3','123456','1681550154545','农户姓名3','17703786903','410224199010102003','upload/nonghu3.jpg',1,'3@qq.com','371.18',1,'2023-04-15 17:15:54');

/*Table structure for table `shangpin` */

DROP TABLE IF EXISTS `shangpin`;

CREATE TABLE `shangpin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `nonghu_id` int(11) DEFAULT NULL COMMENT '农户',
  `shangpin_name` varchar(200) DEFAULT NULL COMMENT '商品名称  Search111 ',
  `shangpin_uuid_number` varchar(200) DEFAULT NULL COMMENT '商品编号',
  `shangpin_photo` varchar(200) DEFAULT NULL COMMENT '商品照片',
  `shangpin_address` varchar(200) DEFAULT NULL COMMENT '原产地  Search111 ',
  `zan_number` int(11) DEFAULT NULL COMMENT '赞',
  `cai_number` int(11) DEFAULT NULL COMMENT '踩',
  `shangpin_types` int(11) DEFAULT NULL COMMENT '商品类型 Search111',
  `shangpin_erji_types` int(11) DEFAULT NULL COMMENT '二级类型 Search111',
  `bangfu_types` int(11) DEFAULT NULL COMMENT '帮扶产品 Search111',
  `shangpin_kucun_number` int(11) DEFAULT NULL COMMENT '商品库存',
  `shangpin_price` int(11) DEFAULT NULL COMMENT '购买获得积分',
  `shangpin_old_money` decimal(10,2) DEFAULT NULL COMMENT '商品原价 ',
  `shangpin_new_money` decimal(10,2) DEFAULT NULL COMMENT '现价/积分 ',
  `shangpin_cangku` varchar(200) DEFAULT NULL COMMENT '所属仓库 Search111',
  `shangpin_clicknum` int(11) DEFAULT NULL COMMENT '商品热度',
  `shangpin_content` longtext COMMENT '商品介绍',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架 ',
  `shangpin_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='商品';

/*Data for the table `shangpin` */

insert  into `shangpin`(`id`,`nonghu_id`,`shangpin_name`,`shangpin_uuid_number`,`shangpin_photo`,`shangpin_address`,`zan_number`,`cai_number`,`shangpin_types`,`shangpin_erji_types`,`bangfu_types`,`shangpin_kucun_number`,`shangpin_price`,`shangpin_old_money`,`shangpin_new_money`,`shangpin_cangku`,`shangpin_clicknum`,`shangpin_content`,`shangxia_types`,`shangpin_delete`,`insert_time`,`create_time`) values (1,1,'商品名称1','1681550154632','upload/shangpin1.jpg','原产地1',168,246,1,1,1,101,69,'899.30','164.03','所属仓库1',198,'商品介绍1',1,1,'2023-04-15 17:15:54','2023-04-15 17:15:54'),(2,3,'商品名称2','1681550154553','upload/shangpin2.jpg','原产地2',277,191,1,1,1,102,300,'980.02','297.97','所属仓库2',348,'商品介绍2',1,1,'2023-04-15 17:15:54','2023-04-15 17:15:54'),(3,1,'商品名称3','1681550154603','upload/shangpin3.jpg','原产地3',495,74,1,1,2,103,73,'846.55','420.03','所属仓库3',136,'商品介绍3',1,1,'2023-04-15 17:15:54','2023-04-15 17:15:54'),(4,2,'商品名称4','1681550154590','upload/shangpin4.jpg','原产地4',72,361,1,1,2,102,489,'519.66','369.75','所属仓库4',31,'商品介绍4',1,1,'2023-04-15 17:15:54','2023-04-15 17:15:54'),(5,1,'商品名称5','1681550154594','upload/shangpin5.jpg','原产地5',398,96,1,2,1,103,431,'597.64','166.18','所属仓库5',417,'商品介绍5',1,1,'2023-04-15 17:15:54','2023-04-15 17:15:54'),(6,2,'商品名称6','1681550154567','upload/shangpin6.jpg','原产地6',482,128,1,2,1,106,411,'513.08','32.53','所属仓库6',316,'商品介绍6',1,1,'2023-04-15 17:15:54','2023-04-15 17:15:54'),(7,3,'商品名称7','1681550154561','upload/shangpin7.jpg','原产地7',425,158,1,2,2,107,341,'589.92','325.85','所属仓库7',289,'商品介绍7',1,1,'2023-04-15 17:15:54','2023-04-15 17:15:54'),(8,1,'商品名称8','1681550154611','upload/shangpin8.jpg','原产地8',164,429,1,2,2,108,462,'871.05','195.10','所属仓库8',187,'商品介绍8',1,1,'2023-04-15 17:15:54','2023-04-15 17:15:54'),(9,3,'商品名称9','1681550154545','upload/shangpin9.jpg','原产地9',26,339,2,3,1,109,423,'890.02','399.78','所属仓库9',61,'商品介绍9',1,1,'2023-04-15 17:15:54','2023-04-15 17:15:54'),(10,3,'商品名称10','1681550154575','upload/shangpin10.jpg','原产地10',54,421,2,3,1,1008,241,'644.84','471.76','所属仓库10',378,'商品介绍10',1,1,'2023-04-15 17:15:54','2023-04-15 17:15:54'),(11,1,'商品名称11','1681550154554','upload/shangpin11.jpg','原产地11',127,28,2,4,2,994,201,'873.62','223.97','所属仓库11',372,'商品介绍11',1,1,'2023-04-15 17:15:54','2023-04-15 17:15:54'),(12,1,'商品名称12','1681550154570','upload/shangpin12.jpg','原产地12',245,2,2,4,1,1012,10,'575.20','490.94','所属仓库12',98,'商品介绍12',1,1,'2023-04-15 17:15:54','2023-04-15 17:15:54'),(13,3,'商品名称13','1681550154624','upload/shangpin13.jpg','原产地13',347,306,2,4,1,1013,36,'966.21','365.81','所属仓库13',365,'商品介绍13',1,1,'2023-04-15 17:15:54','2023-04-15 17:15:54'),(14,3,'商品名称14','1681550154604','upload/shangpin14.jpg','原产地14',413,171,2,4,1,1014,223,'647.06','107.79','所属仓库14',254,'商品介绍14',1,1,'2023-04-15 17:15:54','2023-04-15 17:15:54'),(15,1,'商品1111','1681551865329','/upload/1681551874977.jpg','产地111',1,1,1,1,2,888,30,'300.00','200.00','仓库1111',1,'<p>过大个搭嘎第三个合适的话</p>',1,1,'2023-04-15 17:45:02','2023-04-15 17:45:02'),(16,1,'商品111','1682058895417','/upload/1682058900114.jpg','产地111',1,1,1,1,2,99,99,'22.00','11.00','仓库111',1,'<p>给大哥大哥</p>',1,1,'2023-04-21 14:35:21','2023-04-21 14:35:21'),(17,3,'商品999','1682059086255','/upload/1682059099220.jpg','产词典1111',1,1,2,5,1,888,888,'777.00','666.00','仓库1111',1,'<p>个第三个第三个</p>',1,1,'2023-04-21 14:38:40','2023-04-21 14:38:40');

/*Table structure for table `shangpin_bangfushenqing` */

DROP TABLE IF EXISTS `shangpin_bangfushenqing`;

CREATE TABLE `shangpin_bangfushenqing` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `shangpin_id` int(11) DEFAULT NULL COMMENT '商品',
  `shangpin_bangfushenqing_uuid_number` varchar(200) DEFAULT NULL COMMENT '帮扶申请编号',
  `shangpin_bangfushenqing_name` varchar(200) DEFAULT NULL COMMENT '申请标题  Search111 ',
  `shangpin_bangfushenqing_types` int(11) DEFAULT NULL COMMENT '帮扶申请类型 Search111',
  `shangpin_bangfushenqing_file` varchar(200) DEFAULT NULL COMMENT '附件',
  `shangpin_bangfushenqing_content` longtext COMMENT '申请缘由',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '申请时间',
  `shangpin_bangfushenqing_yesno_types` int(11) DEFAULT NULL COMMENT '申请状态 Search111',
  `shangpin_bangfushenqing_yesno_text` longtext COMMENT '审核附件',
  `shangpin_bangfushenqing_shenhe_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='帮扶申请';

/*Data for the table `shangpin_bangfushenqing` */

insert  into `shangpin_bangfushenqing`(`id`,`shangpin_id`,`shangpin_bangfushenqing_uuid_number`,`shangpin_bangfushenqing_name`,`shangpin_bangfushenqing_types`,`shangpin_bangfushenqing_file`,`shangpin_bangfushenqing_content`,`insert_time`,`shangpin_bangfushenqing_yesno_types`,`shangpin_bangfushenqing_yesno_text`,`shangpin_bangfushenqing_shenhe_time`,`create_time`) values (1,16,'1682058948137','申请1111',4,'/upload/1682058958530.doc','<p>高大上勾搭勾搭</p>','2023-04-21 14:36:00',2,'呵呵哈哈哈','2023-04-21 14:36:45','2023-04-21 14:36:00'),(2,17,'1682059139225','申请22222',3,'/upload/1682059148167.doc','<p>第三个收到货</p>','2023-04-21 14:39:10',2,'好几家','2023-04-21 14:40:31','2023-04-21 14:39:10');

/*Table structure for table `shangpin_chat` */

DROP TABLE IF EXISTS `shangpin_chat`;

CREATE TABLE `shangpin_chat` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '提问人',
  `nonghu_id` int(11) DEFAULT NULL COMMENT '回答人',
  `shangpin_chat_issue_text` longtext COMMENT '问题',
  `issue_time` timestamp NULL DEFAULT NULL COMMENT '问题时间',
  `shangpin_chat_reply_text` longtext COMMENT '回复',
  `reply_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `zhuangtai_types` int(255) DEFAULT NULL COMMENT '状态',
  `shangpin_chat_types` int(11) DEFAULT NULL COMMENT '数据类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '提问时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='用户咨询';

/*Data for the table `shangpin_chat` */

insert  into `shangpin_chat`(`id`,`yonghu_id`,`nonghu_id`,`shangpin_chat_issue_text`,`issue_time`,`shangpin_chat_reply_text`,`reply_time`,`zhuangtai_types`,`shangpin_chat_types`,`insert_time`,`create_time`) values (1,3,3,'问题1','2023-04-15 17:15:54','回复1','2023-04-15 17:15:54',1,2,'2023-04-15 17:15:54','2023-04-15 17:15:54'),(2,1,1,'问题2','2023-04-15 17:15:54','回复2','2023-04-15 17:15:54',1,2,'2023-04-15 17:15:54','2023-04-15 17:15:54'),(3,1,2,'问题3','2023-04-15 17:15:54','回复3','2023-04-15 17:15:54',1,1,'2023-04-15 17:15:54','2023-04-15 17:15:54'),(4,1,1,'问题4','2023-04-15 17:15:54','回复4','2023-04-15 17:15:54',2,1,'2023-04-15 17:15:54','2023-04-15 17:15:54'),(5,1,3,'问题5','2023-04-15 17:15:54','回复5','2023-04-15 17:15:54',2,1,'2023-04-15 17:15:54','2023-04-15 17:15:54'),(6,3,2,'问题6','2023-04-15 17:15:54','回复6','2023-04-15 17:15:54',2,1,'2023-04-15 17:15:54','2023-04-15 17:15:54'),(7,1,1,'问题7','2023-04-15 17:15:54','回复7','2023-04-15 17:15:54',2,2,'2023-04-15 17:15:54','2023-04-15 17:15:54'),(8,2,2,'问题8','2023-04-15 17:15:54','回复8','2023-04-15 17:15:54',2,1,'2023-04-15 17:15:54','2023-04-15 17:15:54'),(9,2,2,'问题9','2023-04-15 17:15:54','回复9','2023-04-15 17:15:54',1,1,'2023-04-15 17:15:54','2023-04-15 17:15:54'),(10,3,3,'问题10','2023-04-15 17:15:54','回复10','2023-04-15 17:15:54',2,2,'2023-04-15 17:15:54','2023-04-15 17:15:54'),(11,1,2,'问题11','2023-04-15 17:15:54','回复11','2023-04-15 17:15:54',2,2,'2023-04-15 17:15:54','2023-04-15 17:15:54'),(12,3,1,'问题12','2023-04-15 17:15:54','回复12','2023-04-15 17:15:54',2,2,'2023-04-15 17:15:54','2023-04-15 17:15:54'),(13,2,2,'问题13','2023-04-15 17:15:54','回复13','2023-04-15 17:15:54',2,2,'2023-04-15 17:15:54','2023-04-15 17:15:54'),(14,1,1,'问题14','2023-04-15 17:15:54','回复14','2023-04-15 17:15:54',1,1,'2023-04-15 17:15:54','2023-04-15 17:15:54'),(15,4,1,'的是个哈哈公司的合格','2023-04-15 17:38:23',NULL,NULL,2,1,'2023-04-15 17:38:24','2023-04-15 17:38:24'),(16,4,1,NULL,NULL,'坎坎坷坷扩','2023-04-15 17:38:38',NULL,2,'2023-04-15 17:38:38','2023-04-15 17:38:38'),(17,4,1,NULL,NULL,'公司兑换商店和','2023-04-15 17:38:41',NULL,2,'2023-04-15 17:38:41','2023-04-15 17:38:41'),(18,4,1,NULL,NULL,'勾搭勾搭上','2023-04-15 17:38:44',NULL,2,'2023-04-15 17:38:44','2023-04-15 17:38:44');

/*Table structure for table `shangpin_collection` */

DROP TABLE IF EXISTS `shangpin_collection`;

CREATE TABLE `shangpin_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shangpin_id` int(11) DEFAULT NULL COMMENT '商品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `shangpin_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='商品收藏';

/*Data for the table `shangpin_collection` */

insert  into `shangpin_collection`(`id`,`shangpin_id`,`yonghu_id`,`shangpin_collection_types`,`insert_time`,`create_time`) values (1,1,3,1,'2023-04-15 17:15:54','2023-04-15 17:15:54'),(2,2,1,1,'2023-04-15 17:15:54','2023-04-15 17:15:54'),(3,3,3,1,'2023-04-15 17:15:54','2023-04-15 17:15:54'),(4,4,3,1,'2023-04-15 17:15:54','2023-04-15 17:15:54'),(5,5,1,1,'2023-04-15 17:15:54','2023-04-15 17:15:54'),(6,6,1,1,'2023-04-15 17:15:54','2023-04-15 17:15:54'),(7,7,3,1,'2023-04-15 17:15:54','2023-04-15 17:15:54'),(8,8,2,1,'2023-04-15 17:15:54','2023-04-15 17:15:54'),(9,9,1,1,'2023-04-15 17:15:54','2023-04-15 17:15:54'),(10,10,1,1,'2023-04-15 17:15:54','2023-04-15 17:15:54'),(11,11,2,1,'2023-04-15 17:15:54','2023-04-15 17:15:54'),(12,12,1,1,'2023-04-15 17:15:54','2023-04-15 17:15:54'),(13,13,2,1,'2023-04-15 17:15:54','2023-04-15 17:15:54'),(14,14,1,1,'2023-04-15 17:15:54','2023-04-15 17:15:54'),(15,11,1,1,'2023-04-15 17:23:36','2023-04-15 17:23:36'),(16,10,4,2,'2023-04-15 17:37:49','2023-04-15 17:37:49'),(17,10,4,1,'2023-04-15 17:40:49','2023-04-15 17:40:49'),(18,14,4,1,'2023-04-15 17:40:53','2023-04-15 17:40:53');

/*Table structure for table `shangpin_commentback` */

DROP TABLE IF EXISTS `shangpin_commentback`;

CREATE TABLE `shangpin_commentback` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shangpin_id` int(11) DEFAULT NULL COMMENT '商品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `shangpin_commentback_text` longtext COMMENT '评价内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='商品评价';

/*Data for the table `shangpin_commentback` */

insert  into `shangpin_commentback`(`id`,`shangpin_id`,`yonghu_id`,`shangpin_commentback_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,1,'评价内容1','2023-04-15 17:15:54','回复信息1','2023-04-15 17:15:54','2023-04-15 17:15:54'),(2,2,2,'评价内容2','2023-04-15 17:15:54','回复信息2','2023-04-15 17:15:54','2023-04-15 17:15:54'),(3,3,3,'评价内容3','2023-04-15 17:15:54','回复信息3','2023-04-15 17:15:54','2023-04-15 17:15:54'),(4,4,2,'评价内容4','2023-04-15 17:15:54','回复信息4','2023-04-15 17:15:54','2023-04-15 17:15:54'),(5,5,3,'评价内容5','2023-04-15 17:15:54','回复信息5','2023-04-15 17:15:54','2023-04-15 17:15:54'),(6,6,1,'评价内容6','2023-04-15 17:15:54','回复信息6','2023-04-15 17:15:54','2023-04-15 17:15:54'),(7,7,2,'评价内容7','2023-04-15 17:15:54','回复信息7','2023-04-15 17:15:54','2023-04-15 17:15:54'),(8,8,3,'评价内容8','2023-04-15 17:15:54','回复信息8','2023-04-15 17:15:54','2023-04-15 17:15:54'),(9,9,3,'评价内容9','2023-04-15 17:15:54','回复信息9','2023-04-15 17:15:54','2023-04-15 17:15:54'),(10,10,1,'评价内容10','2023-04-15 17:15:54','回复信息10','2023-04-15 17:15:54','2023-04-15 17:15:54'),(11,11,2,'评价内容11','2023-04-15 17:15:54','回复信息11','2023-04-15 17:15:54','2023-04-15 17:15:54'),(12,12,1,'评价内容12','2023-04-15 17:15:54','回复信息12','2023-04-15 17:15:54','2023-04-15 17:15:54'),(13,13,3,'评价内容13','2023-04-15 17:15:54','回复信息13','2023-04-15 17:15:54','2023-04-15 17:15:54'),(14,14,3,'评价内容14','2023-04-15 17:15:54','回复信息14','2023-04-15 17:15:54','2023-04-15 17:15:54'),(15,10,4,'更多的是谁','2023-04-15 17:45:37','好几家','2023-04-15 17:45:46','2023-04-15 17:45:37');

/*Table structure for table `shangpin_order` */

DROP TABLE IF EXISTS `shangpin_order`;

CREATE TABLE `shangpin_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shangpin_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单编号 Search111 ',
  `address_id` int(11) DEFAULT NULL COMMENT '收货地址 ',
  `shangpin_id` int(11) DEFAULT NULL COMMENT '商品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `buy_number` int(11) DEFAULT NULL COMMENT '购买数量',
  `shangpin_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格',
  `shangpin_order_courier_name` varchar(200) DEFAULT NULL COMMENT '快递公司',
  `shangpin_order_courier_number` varchar(200) DEFAULT NULL COMMENT '快递单号',
  `shangpin_order_types` int(11) DEFAULT NULL COMMENT '订单类型 Search111 ',
  `shangpin_order_payment_types` int(11) DEFAULT NULL COMMENT '支付类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='商品订单';

/*Data for the table `shangpin_order` */

insert  into `shangpin_order`(`id`,`shangpin_order_uuid_number`,`address_id`,`shangpin_id`,`yonghu_id`,`buy_number`,`shangpin_order_true_price`,`shangpin_order_courier_name`,`shangpin_order_courier_number`,`shangpin_order_types`,`shangpin_order_payment_types`,`insert_time`,`create_time`) values (1,'1681551582956',15,4,4,1,'362.36',NULL,NULL,101,1,'2023-04-15 17:39:43','2023-04-15 17:39:43'),(2,'1681551601694',15,11,4,7,'1536.43',NULL,NULL,101,1,'2023-04-15 17:40:02','2023-04-15 17:40:02'),(3,'1681551626007',15,11,4,3,'671.91',NULL,NULL,101,2,'2023-04-15 17:40:26','2023-04-15 17:40:26'),(4,'1681551678635',15,11,4,7,'1536.43',NULL,NULL,101,1,'2023-04-15 17:41:19','2023-04-15 17:41:19'),(5,'1681551678635',15,4,4,1,'362.36',NULL,NULL,101,1,'2023-04-15 17:41:19','2023-04-15 17:41:19'),(6,'1681551678635',15,5,4,2,'325.71',NULL,NULL,101,1,'2023-04-15 17:41:19','2023-04-15 17:41:19'),(7,'1681551678635',15,10,4,2,'924.65','顺丰','21415311',105,1,'2023-04-15 17:41:19','2023-04-15 17:41:19');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '员工id',
  `username` varchar(100) NOT NULL COMMENT '员工名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','ayai9xg5mjkpt43h2h18h1bur6ye2oc6','2023-04-15 17:22:46','2023-04-21 15:39:30'),(2,1,'a1','yonghu','用户','pt2m8kdrnybqm7gmh52vyzzt0whvz6xg','2023-04-15 17:23:29','2023-04-15 18:38:54'),(3,4,'a5','yonghu','用户','ee9djmbu66bn3d5wkrvdmay66ijyftv2','2023-04-15 17:37:21','2023-04-15 18:45:29'),(4,1,'a1','nonghu','农户','yo7iyye6ntaxo0k9sczdz7hjmzua216k','2023-04-15 17:38:28','2023-04-21 15:35:32'),(5,3,'a3','nonghu','农户','uae0bb1lwnhnzyrmvfkbwbrumo12z6bd','2023-04-21 14:38:51','2023-04-21 15:38:52');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '员工名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-04-15 17:14:27');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_uuid_number` varchar(200) DEFAULT NULL COMMENT '用户编号 Search111 ',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '用户邮箱',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `yonghu_sum_jifen` decimal(10,2) DEFAULT NULL COMMENT '总积分',
  `yonghu_new_jifen` decimal(10,2) DEFAULT NULL COMMENT '现积分',
  `huiyuandengji_types` int(11) DEFAULT NULL COMMENT '会员等级',
  `jinyong_types` int(11) DEFAULT NULL COMMENT '账户状态 Search111 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_uuid_number`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`new_money`,`yonghu_sum_jifen`,`yonghu_new_jifen`,`huiyuandengji_types`,`jinyong_types`,`create_time`) values (1,'a1','123456','1681550154607','用户姓名1','17703786901','410224199010102001','upload/yonghu1.jpg',1,'1@qq.com','453.76','681.16','443.03',1,1,'2023-04-15 17:15:54'),(2,'a2','123456','1681550154576','用户姓名2','17703786902','410224199010102002','upload/yonghu2.jpg',1,'2@qq.com','184.95','742.53','298.95',1,1,'2023-04-15 17:15:54'),(3,'a3','123456','1681550154592','用户姓名3','17703786903','410224199010102003','upload/yonghu3.jpg',1,'4@qq.com','420.58','546.76','323.95',1,1,'2023-04-15 17:15:54'),(4,'a5','123456','1681551436293','张5','17788886666','444222111555555555','upload/1681551454130.jpg',2,'5@qq.com','94951.07','5136.00','4464.09',1,2,'2023-04-15 17:37:16');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
