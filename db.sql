/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - sheuquyanglaofuwu
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`sheuquyanglaofuwu` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `sheuquyanglaofuwu`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'fuwu_types','服务类型',1,'服务类型1',NULL,NULL,'2022-03-15 21:02:28'),(2,'fuwu_types','服务类型',2,'服务类型2',NULL,NULL,'2022-03-15 21:02:28'),(3,'fuwu_types','服务类型',3,'服务类型3',NULL,NULL,'2022-03-15 21:02:28'),(4,'fuwushenqing_yesno_types','审核状态',1,'审核中',NULL,NULL,'2022-03-15 21:02:28'),(5,'fuwushenqing_yesno_types','审核状态',2,'通过',NULL,NULL,'2022-03-15 21:02:28'),(6,'fuwushenqing_yesno_types','审核状态',3,'拒绝',NULL,NULL,'2022-03-15 21:02:28'),(7,'sex_types','性别',1,'男',NULL,NULL,'2022-03-15 21:02:28'),(8,'sex_types','性别',2,'女',NULL,NULL,'2022-03-15 21:02:28'),(9,'yonghushenhe_yesno_types','审核状态',1,'审核中',NULL,NULL,'2022-03-15 21:02:28'),(10,'yonghushenhe_yesno_types','审核状态',2,'同意',NULL,NULL,'2022-03-15 21:02:28'),(11,'yonghushenhe_yesno_types','审核状态',3,'拒绝',NULL,NULL,'2022-03-15 21:02:28'),(12,'news_types','公告类型',1,'公告类型1',NULL,NULL,'2022-03-15 21:02:28'),(13,'news_types','公告类型',2,'公告类型2',NULL,NULL,'2022-03-15 21:02:28'),(14,'news_types','公告类型',3,'公告类型3',NULL,NULL,'2022-03-15 21:02:28'),(15,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2022-03-15 21:02:28'),(16,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2022-03-15 21:02:28');

/*Table structure for table `fuwu` */

DROP TABLE IF EXISTS `fuwu`;

CREATE TABLE `fuwu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `fuwu_bianhao` varchar(200) DEFAULT NULL COMMENT '服务编号 Search111',
  `fuwu_name` varchar(200) DEFAULT NULL COMMENT '服务名称 Search111',
  `fuwu_photo` varchar(200) DEFAULT NULL COMMENT '服务封面',
  `fuwu_types` int(200) DEFAULT NULL COMMENT '服务类型 Search111',
  `fuwu_content` text COMMENT '详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='服务信息';

/*Data for the table `fuwu` */

insert  into `fuwu`(`id`,`fuwu_bianhao`,`fuwu_name`,`fuwu_photo`,`fuwu_types`,`fuwu_content`,`create_time`) values (1,'服务编号1','服务名称1','http://localhost:8080/sheuquyanglaofuwu/upload/1647350789453.jpeg',1,'<p>详情1</p>','2022-03-15 21:03:16'),(2,'服务编号2','服务名称2','http://localhost:8080/sheuquyanglaofuwu/upload/1647350781858.jpeg',2,'<p>详情2</p>','2022-03-15 21:03:16'),(3,'服务编号3','服务名称3','http://localhost:8080/sheuquyanglaofuwu/upload/1647350773530.jpeg',1,'<p>详情3</p>','2022-03-15 21:03:16'),(4,'服务编号4','服务名称4','http://localhost:8080/sheuquyanglaofuwu/upload/1647350760216.jpeg',1,'<p>详情4</p>','2022-03-15 21:03:16'),(5,'服务编号5','服务名称5','http://localhost:8080/sheuquyanglaofuwu/upload/1647350753328.jpeg',2,'<p>详情5</p>','2022-03-15 21:03:16');

/*Table structure for table `fuwushenqing` */

DROP TABLE IF EXISTS `fuwushenqing`;

CREATE TABLE `fuwushenqing` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `fuwu_id` int(11) DEFAULT NULL COMMENT '服务',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `fuwushenqing_yesno_types` int(11) DEFAULT NULL COMMENT '审核状态',
  `fuwushenqing_yesno_text` text COMMENT '审核结果',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='服务申请';

/*Data for the table `fuwushenqing` */

insert  into `fuwushenqing`(`id`,`fuwu_id`,`yonghu_id`,`fuwushenqing_yesno_types`,`fuwushenqing_yesno_text`,`create_time`) values (1,1,2,1,NULL,'2022-03-15 21:03:16'),(2,2,1,1,NULL,'2022-03-15 21:03:16'),(5,3,3,2,'通过','2022-03-15 21:03:16'),(6,3,1,1,'','2022-03-16 09:28:31');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'公告标题1',2,'http://localhost:8080/sheuquyanglaofuwu/upload/news1.jpg','2022-03-15 21:03:16','公告详情1','2022-03-15 21:03:16'),(2,'公告标题2',1,'http://localhost:8080/sheuquyanglaofuwu/upload/news2.jpg','2022-03-15 21:03:16','公告详情2','2022-03-15 21:03:16'),(3,'公告标题3',2,'http://localhost:8080/sheuquyanglaofuwu/upload/news3.jpg','2022-03-15 21:03:16','公告详情3','2022-03-15 21:03:16'),(4,'公告标题4',2,'http://localhost:8080/sheuquyanglaofuwu/upload/news4.jpg','2022-03-15 21:03:16','公告详情4','2022-03-15 21:03:16'),(5,'公告标题5',1,'http://localhost:8080/sheuquyanglaofuwu/upload/news5.jpg','2022-03-15 21:03:16','公告详情5','2022-03-15 21:03:16');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','5rhenin8lpsfug2dpoi2di29a0hywvaw','2022-03-15 20:57:36','2022-03-16 10:29:36'),(2,1,'a1','yonghu','用户','cj6vewd610mhayjhvqjp8f4mp3bvk2xm','2022-03-16 09:28:18','2022-03-16 10:28:19');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2022-05-01 00:00:00');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号 ',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `yonghu_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_photo`,`sex_types`,`yonghu_phone`,`yonghu_id_number`,`yonghu_email`,`yonghu_delete`,`create_time`) values (1,'a1','123456','名称1111','http://localhost:8080/sheuquyanglaofuwu/upload/1647394140513.jpeg',1,'17703786901','410882199911211111','11@11.com',1,'2022-03-15 21:03:16'),(2,'a2','123456','用户姓名2','http://localhost:8080/sheuquyanglaofuwu/upload/yonghu2.jpg',1,'17703786902','410224199610232002','2@qq.com',1,'2022-03-15 21:03:16'),(3,'a3','123456','用户姓名3','http://localhost:8080/sheuquyanglaofuwu/upload/yonghu3.jpg',1,'17703786903','410224199610232003','3@qq.com',1,'2022-03-15 21:03:16');

/*Table structure for table `yonghushenhe` */

DROP TABLE IF EXISTS `yonghushenhe`;

CREATE TABLE `yonghushenhe` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `yonghushenhe_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghushenhe_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111 ',
  `yonghushenhe_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `yonghushenhe_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号 ',
  `yonghushenhe_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `yonghushenhe_yesno_types` int(11) DEFAULT NULL COMMENT '审核状态',
  `yonghushenhe_yesno_text` text COMMENT '审核结果',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='用户信息修改审核';

/*Data for the table `yonghushenhe` */

insert  into `yonghushenhe`(`id`,`yonghu_id`,`yonghushenhe_name`,`yonghushenhe_photo`,`sex_types`,`yonghushenhe_phone`,`yonghushenhe_id_number`,`yonghushenhe_email`,`yonghushenhe_yesno_types`,`yonghushenhe_yesno_text`,`create_time`) values (1,3,'用户姓名11','http://localhost:8080/sheuquyanglaofuwu/upload/1647350170573.jpg',1,'17703786901','410224199610232001','1@qq.com',1,NULL,'2022-03-15 21:03:16'),(2,2,'用户姓名22','http://localhost:8080/sheuquyanglaofuwu/upload/1647350158105.jpg',1,'17703786902','410224199610232002','2@qq.com',2,'12312','2022-03-15 21:03:16'),(4,1,'名称1111','http://localhost:8080/sheuquyanglaofuwu/upload/1647394140513.jpeg',1,'13311441511','410882199911211111','11@11.com',2,'同意','2022-03-16 09:29:23');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
