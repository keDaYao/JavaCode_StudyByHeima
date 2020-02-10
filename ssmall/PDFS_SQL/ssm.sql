# Host: localhost  (Version 5.7.20-log)
# Date: 2020-02-10 16:49:38
# Generator: MySQL-Front 5.4  (Build 4.153) - http://www.mysqlfront.de/

/*!40101 SET NAMES utf8 */;

#
# Structure for table "member"
#

CREATE TABLE `member` (
  `id` varchar(32) NOT NULL,
  `NAME` varchar(20) DEFAULT NULL,
  `nickname` varchar(20) DEFAULT NULL,
  `phoneNum` varchar(20) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `productNum` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "member"
#

INSERT INTO `member` VALUES ('11','张三','小三','18888888888','zs@163.com'),('E61D65F673D54F68B0861025C69773DB','张三','小三','18888888888','zs@163.com');

#
# Structure for table "order_traveller"
#

CREATE TABLE `order_traveller` (
  `orderId` varchar(32) DEFAULT NULL,
  `travellerId` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "order_traveller"
#

INSERT INTO `order_traveller` VALUES ('1','111'),('2','222'),('3081770BC3984EF092D9E99760FDABDE','EE7A71FB6945483FBF91543DBE851960'),('55F9AF582D5A4DB28FB4EC3199385762','EE7A71FB6945483FBF91543DBE851960'),('5DC6A48DD4E94592AE904930EA866AFA','3FE27DF2A4E44A6DBC5D0FE4651D3D3E'),('96CC8BD43C734CC2ACBFF09501B4DD5D','EE7A71FB6945483FBF91543DBE851960'),('A0657832D93E4B10AE88A2D4B70B1A28','3FE27DF2A4E44A6DBC5D0FE4651D3D3E'),('CA005CF1BE3C4EF68F88ABC7DF30E976','EE7A71FB6945483FBF91543DBE851960'),('E4DD4C45EED84870ABA83574A801083E','EE7A71FB6945483FBF91543DBE851960'),('0E7231DC797C486290E8713CA3C6ECCC','3FE27DF2A4E44A6DBC5D0FE4651D3D3E'),('2FF351C4AC744E2092DCF08CFD314420','3FE27DF2A4E44A6DBC5D0FE4651D3D3E'),('3081770BC3984EF092D9E99760FDABDE','EE7A71FB6945483FBF91543DBE851960'),('55F9AF582D5A4DB28FB4EC3199385762','EE7A71FB6945483FBF91543DBE851960'),('5DC6A48DD4E94592AE904930EA866AFA','3FE27DF2A4E44A6DBC5D0FE4651D3D3E'),('96CC8BD43C734CC2ACBFF09501B4DD5D','EE7A71FB6945483FBF91543DBE851960'),('A0657832D93E4B10AE88A2D4B70B1A28','3FE27DF2A4E44A6DBC5D0FE4651D3D3E'),('CA005CF1BE3C4EF68F88ABC7DF30E976','EE7A71FB6945483FBF91543DBE851960'),('E4DD4C45EED84870ABA83574A801083E','EE7A71FB6945483FBF91543DBE851960');

#
# Structure for table "orders"
#

CREATE TABLE `orders` (
  `id` varchar(32) NOT NULL,
  `orderNum` varchar(20) DEFAULT NULL,
  `orderTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `peopleCount` int(11) DEFAULT NULL,
  `orderDesc` varchar(500) DEFAULT NULL,
  `payType` int(11) DEFAULT NULL,
  `orderStatus` int(11) DEFAULT NULL,
  `productId` varchar(32) DEFAULT NULL,
  `memberId` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderNum` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "orders"
#

INSERT INTO `orders` VALUES ('0E7231DC797C486290E8713CA3C6ECCC','12345','2020-02-08 22:24:12',2,'没什么',0,1,'676C5BD1D35E429A8C2E114939C5685A','E61D65F673D54F68B0861025C69773DB'),('1','54321','2020-02-08 21:42:49',2,'没什么',0,1,'1','11'),('2','98765','2020-02-08 21:42:50',2,'没什么',0,1,'3','22'),('2FF351C4AC744E2092DCF08CFD314420','67890','2020-02-08 22:24:12',2,'没什么',0,1,'12B7ABF2A4C544568B0A7C69F36BF8B7','E61D65F673D54F68B0861025C69773DB'),('3','67890','2020-02-08 21:42:51',2,'没什么',0,1,'4','33'),('3081770BC3984EF092D9E99760FDABDE','55555','2020-02-08 22:24:12',2,'没什么',0,1,'9F71F01CB448476DAFB309AA6DF9497F','E61D65F673D54F68B0861025C69773DB'),('4','11111','2020-02-08 21:42:52',2,'没什么',0,1,'5','44'),('5','22222','2020-02-08 21:42:53',2,'没什么',0,1,'6','55'),('55F9AF582D5A4DB28FB4EC3199385762','33333','2020-02-08 22:24:12',2,'没什么',0,1,'9F71F01CB448476DAFB309AA6DF9497F','E61D65F673D54F68B0861025C69773DB'),('5DC6A48DD4E94592AE904930EA866AFA','54321','2020-02-08 22:24:12',2,'没什么',0,1,'676C5BD1D35E429A8C2E114939C5685A','E61D65F673D54F68B0861025C69773DB'),('6','33333','2020-02-08 21:42:53',2,'没什么',0,1,'7','66'),('7','44444','2020-02-08 21:42:54',2,'没什么',0,1,'8','77'),('8','55555','2020-02-08 21:42:57',2,'没什么',0,1,'2','88'),('96CC8BD43C734CC2ACBFF09501B4DD5D','22222','2020-02-08 22:24:12',2,'没什么',0,1,'12B7ABF2A4C544568B0A7C69F36BF8B7','E61D65F673D54F68B0861025C69773DB'),('A0657832D93E4B10AE88A2D4B70B1A28','98765','2020-02-08 22:24:12',2,'没什么',0,1,'12B7ABF2A4C544568B0A7C69F36BF8B7','E61D65F673D54F68B0861025C69773DB'),('CA005CF1BE3C4EF68F88ABC7DF30E976','44444','2020-02-08 22:24:12',2,'没什么',0,1,'9F71F01CB448476DAFB309AA6DF9497F','E61D65F673D54F68B0861025C69773DB'),('E4DD4C45EED84870ABA83574A801083E','11111','2020-02-08 22:24:12',2,'没什么',0,1,'12B7ABF2A4C544568B0A7C69F36BF8B7','E61D65F673D54F68B0861025C69773DB');

#
# Structure for table "permission"
#

CREATE TABLE `permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permissionName` varchar(50) DEFAULT NULL,
  `url` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

#
# Data for table "permission"
#

INSERT INTO `permission` VALUES (1,'user findAll','/user/findAll.do'),(2,'user findById','/user/findById.do'),(3,'温恩无若','沃尔沃二'),(4,'那里123','这里123');

#
# Structure for table "product"
#

CREATE TABLE `product` (
  `id` varchar(50) NOT NULL,
  `productNum` varchar(50) NOT NULL,
  `productName` varchar(50) DEFAULT NULL,
  `cityName` varchar(50) DEFAULT NULL,
  `DepartureTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `productPrice` double DEFAULT NULL,
  `productDesc` varchar(500) DEFAULT NULL,
  `productStatus` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `productNum` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "product"
#

INSERT INTO `product` VALUES ('1','-001','111','北11京','2020-02-08 21:41:31',120110,'不错1111的旅行',1),('12B7ABF2A4C544568B0A7C69F36BF8B7','itcast-003','上海五日游','上海','2020-02-08 22:30:45',1800,'魔都我来了',0),('2','345','3454','3454','2020-02-08 21:41:42',3454,'354',0),('3','1231443534543543534','35345345345','35345345','2020-02-08 21:41:44',345345,'345',0),('4','-001','111','北11京','2020-02-08 21:41:47',120110,'不错1111的旅行',1),('5','itcast-002','北京三日游','北京','2020-02-08 21:41:48',1200,'不错的旅行',1),('6','itcast-002','北京三日游','北京','2020-02-08 21:41:49',1200,'不错的旅行',1),('676C5BD1D35E429A8C2E114939C5685A','itcast-002','北京三日游','北京','2020-02-08 22:30:45',1200,'不错的旅行',1),('7','itcast-003','上海五日游','上海','2020-02-08 21:41:51',1800,'魔都我来了',0),('8','itcast-001','北京三日游','北京','2020-02-08 21:41:52',1200,'不错的旅行',1),('9','0001','山东ooo','山东','2020-02-08 21:41:54',12,'123',1),('9F71F01CB448476DAFB309AA6DF9497F','itcast-001','北京三日游','北京','2020-02-08 22:30:45',1200,'不错的旅行',1);

#
# Structure for table "role"
#

CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roleName` varchar(20) DEFAULT NULL,
  `roleDesc` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2224 DEFAULT CHARSET=utf8;

#
# Data for table "role"
#

INSERT INTO `role` VALUES (1111,'ADMIN','VIP'),(2222,'USER','VIP'),(2223,'234','234');

#
# Structure for table "role_permission"
#

CREATE TABLE `role_permission` (
  `permissionId` varchar(32) NOT NULL,
  `roleId` varchar(32) NOT NULL,
  PRIMARY KEY (`permissionId`,`roleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "role_permission"
#

INSERT INTO `role_permission` VALUES ('1','1111'),('1','2222'),('2','1111'),('3','1111');

#
# Structure for table "syslog"
#

CREATE TABLE `syslog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `visitTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `username` varchar(50) DEFAULT NULL,
  `ip` varchar(30) DEFAULT NULL,
  `url` varchar(50) DEFAULT NULL,
  `executionTime` int(11) DEFAULT NULL,
  `method` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

#
# Data for table "syslog"
#

INSERT INTO `syslog` VALUES (1,'2020-02-10 15:25:13','tom','0:0:0:0:0:0:0:1','/product/findAll.do',119,'[类名] com.qingtai.ssm.controller.ProductController[方法名] findAll'),(2,'2020-02-10 15:27:49','tom','0:0:0:0:0:0:0:1','/user/findAll.do',19,'[类名] com.qingtai.ssm.controller.UserController[方法名] findAll'),(3,'2020-02-10 15:27:53','tom','0:0:0:0:0:0:0:1','/role/findAll.do',20,'[类名] com.qingtai.ssm.controller.RoleController[方法名] findAll'),(4,'2020-02-10 15:28:44','tom','0:0:0:0:0:0:0:1','/role/findAll.do',12,'[类名] com.qingtai.ssm.controller.RoleController[方法名] findAll'),(5,'2020-02-10 15:29:27','tom','0:0:0:0:0:0:0:1','/product/findAll.do',10,'[类名] com.qingtai.ssm.controller.ProductController[方法名] findAll'),(6,'2020-02-10 15:29:56','tom','0:0:0:0:0:0:0:1','/user/findAll.do',5,'[类名] com.qingtai.ssm.controller.UserController[方法名] findAll'),(7,'2020-02-10 15:30:28','tom','0:0:0:0:0:0:0:1','/user/findAll.do',4,'[类名] com.qingtai.ssm.controller.UserController[方法名] findAll'),(8,'2020-02-10 15:30:43','tom','0:0:0:0:0:0:0:1','/user/save.do',116,'[类名] com.qingtai.ssm.controller.UserController[方法名] save'),(9,'2020-02-10 15:30:44','tom','0:0:0:0:0:0:0:1','/user/findAll.do',3,'[类名] com.qingtai.ssm.controller.UserController[方法名] findAll'),(10,'2020-02-10 15:30:49','tom','0:0:0:0:0:0:0:1','/user/findById.do',6,'[类名] com.qingtai.ssm.controller.UserController[方法名] findById'),(11,'2020-02-10 15:30:50','tom','0:0:0:0:0:0:0:1','/user/findAll.do',3,'[类名] com.qingtai.ssm.controller.UserController[方法名] findAll'),(12,'2020-02-10 15:30:52','tom','0:0:0:0:0:0:0:1','/user/findUserByIdAndAllRole.do',15,'[类名] com.qingtai.ssm.controller.UserController[方法名] findUserByIdAndAllRole'),(13,'2020-02-10 15:30:56','tom','0:0:0:0:0:0:0:1','/user/addRoleToUser.do',13,'[类名] com.qingtai.ssm.controller.UserController[方法名] addRoleToUser'),(14,'2020-02-10 15:30:56','tom','0:0:0:0:0:0:0:1','/user/findAll.do',3,'[类名] com.qingtai.ssm.controller.UserController[方法名] findAll'),(15,'2020-02-10 15:30:59','tom','0:0:0:0:0:0:0:1','/role/findAll.do',10,'[类名] com.qingtai.ssm.controller.RoleController[方法名] findAll'),(16,'2020-02-10 15:31:02','tom','0:0:0:0:0:0:0:1','/permission/findAll.do',18,'[类名] com.qingtai.ssm.controller.PermissionController[方法名] findAll'),(17,'2020-02-10 15:31:07','tom','0:0:0:0:0:0:0:1','/permission/findAll.do',7,'[类名] com.qingtai.ssm.controller.PermissionController[方法名] findAll'),(18,'2020-02-10 15:31:14','all','0:0:0:0:0:0:0:1','/user/findAll.do',4,'[类名] com.qingtai.ssm.controller.UserController[方法名] findAll'),(19,'2020-02-10 15:31:26','all','0:0:0:0:0:0:0:1','/orders/findAll.do',0,'[类名] com.qingtai.ssm.controller.OrdersContrller[方法名] findAll'),(20,'2020-02-10 15:31:33','all','0:0:0:0:0:0:0:1','/user/findAll.do',4,'[类名] com.qingtai.ssm.controller.UserController[方法名] findAll'),(21,'2020-02-10 15:31:35','all','0:0:0:0:0:0:0:1','/product/findAll.do',12,'[类名] com.qingtai.ssm.controller.ProductController[方法名] findAll'),(22,'2020-02-10 16:09:01','tom','0:0:0:0:0:0:0:1','/product/findAll.do',126,'[类名] com.qingtai.ssm.controller.ProductController[方法名] findAll'),(23,'2020-02-10 16:09:04','tom','0:0:0:0:0:0:0:1','/sysLog/findAll.do',17,'[类名] com.qingtai.ssm.controller.SysLogController[方法名] findAll'),(24,'2020-02-10 16:16:20','tom','0:0:0:0:0:0:0:1','/sysLog/findAll.do',6,'[类名] com.qingtai.ssm.controller.SysLogController[方法名] findAll'),(25,'2020-02-10 16:16:30','tom','0:0:0:0:0:0:0:1','/sysLog/findAll.do',13,'[类名] com.qingtai.ssm.controller.SysLogController[方法名] findAll'),(26,'2020-02-10 16:24:22','tom','0:0:0:0:0:0:0:1','/user/findAll.do',13,'[类名] com.qingtai.ssm.controller.UserController[方法名] findAll'),(27,'2020-02-10 16:24:24','tom','0:0:0:0:0:0:0:1','/role/findAll.do',13,'[类名] com.qingtai.ssm.controller.RoleController[方法名] findAll'),(28,'2020-02-10 16:24:26','tom','0:0:0:0:0:0:0:1','/permission/findAll.do',9,'[类名] com.qingtai.ssm.controller.PermissionController[方法名] findAll'),(29,'2020-02-10 16:24:28','tom','0:0:0:0:0:0:0:1','/sysLog/findAll.do',15,'[类名] com.qingtai.ssm.controller.SysLogController[方法名] findAll'),(30,'2020-02-10 16:37:00','tom','0:0:0:0:0:0:0:1','/user/findAll.do',45,'[类名] com.qingtai.ssm.controller.UserController[方法名] findAll'),(31,'2020-02-10 16:37:02','tom','0:0:0:0:0:0:0:1','/role/findAll.do',21,'[类名] com.qingtai.ssm.controller.RoleController[方法名] findAll'),(32,'2020-02-10 16:37:04','tom','0:0:0:0:0:0:0:1','/permission/findAll.do',10,'[类名] com.qingtai.ssm.controller.PermissionController[方法名] findAll'),(33,'2020-02-10 16:37:06','tom','0:0:0:0:0:0:0:1','/sysLog/findAll.do',13,'[类名] com.qingtai.ssm.controller.SysLogController[方法名] findAll'),(34,'2020-02-10 16:37:29','tom','0:0:0:0:0:0:0:1','/permission/findAll.do',2,'[类名] com.qingtai.ssm.controller.PermissionController[方法名] findAll'),(35,'2020-02-10 16:37:32','tom','0:0:0:0:0:0:0:1','/product/findAll.do',100,'[类名] com.qingtai.ssm.controller.ProductController[方法名] findAll'),(36,'2020-02-10 16:37:35','tom','0:0:0:0:0:0:0:1','/orders/findAll.do',28,'[类名] com.qingtai.ssm.controller.OrdersContrller[方法名] findAll'),(37,'2020-02-10 16:37:37','tom','0:0:0:0:0:0:0:1','/user/findAll.do',8,'[类名] com.qingtai.ssm.controller.UserController[方法名] findAll'),(38,'2020-02-10 16:37:38','tom','0:0:0:0:0:0:0:1','/permission/findAll.do',3,'[类名] com.qingtai.ssm.controller.PermissionController[方法名] findAll'),(39,'2020-02-10 16:37:40','tom','0:0:0:0:0:0:0:1','/sysLog/findAll.do',10,'[类名] com.qingtai.ssm.controller.SysLogController[方法名] findAll'),(40,'2020-02-10 16:37:59','tom','0:0:0:0:0:0:0:1','/user/findAll.do',6,'[类名] com.qingtai.ssm.controller.UserController[方法名] findAll'),(41,'2020-02-10 16:38:01','tom','0:0:0:0:0:0:0:1','/role/findAll.do',9,'[类名] com.qingtai.ssm.controller.RoleController[方法名] findAll'),(42,'2020-02-10 16:38:03','tom','0:0:0:0:0:0:0:1','/sysLog/findAll.do',15,'[类名] com.qingtai.ssm.controller.SysLogController[方法名] findAll'),(43,'2020-02-10 16:40:41','tom','192.168.1.105','/user/findAll.do',41,'[类名] com.qingtai.ssm.controller.UserController[方法名] findAll'),(44,'2020-02-10 16:40:44','tom','192.168.1.105','/sysLog/findAll.do',8,'[类名] com.qingtai.ssm.controller.SysLogController[方法名] findAll'),(45,'2020-02-10 16:42:08','tom','192.168.1.105','/sysLog/findAll.do',11,'[类名] com.qingtai.ssm.controller.SysLogController[方法名] findAll'),(46,'2020-02-10 16:44:15','tom','192.168.1.105','/role/findAll.do',34,'[类名] com.qingtai.ssm.controller.RoleController[方法名] findAll'),(47,'2020-02-10 16:44:21','tom','192.168.1.105','/product/findAll.do',99,'[类名] com.qingtai.ssm.controller.ProductController[方法名] findAll');

#
# Structure for table "traveller"
#

CREATE TABLE `traveller` (
  `id` varchar(32) NOT NULL,
  `uname` varchar(20) DEFAULT NULL,
  `sex` varchar(20) DEFAULT NULL,
  `phoneNum` varchar(20) DEFAULT NULL,
  `credentialsType` int(11) DEFAULT NULL,
  `credentialsNum` varchar(50) DEFAULT NULL,
  `travellerType` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `productNum` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "traveller"
#

INSERT INTO `traveller` VALUES ('111','张龙','男','13333333333',0,'123456789009876543',0),('222','张小龙','男','15555555555',0,'987654321123456789',1),('3FE27DF2A4E44A6DBC5D0FE4651D3D3E','张龙','男','13333333333',0,'123456789009876543',0),('EE7A71FB6945483FBF91543DBE851960','张小龙','男','15555555555',0,'987654321123456789',1);

#
# Structure for table "users"
#

CREATE TABLE `users` (
  `id` varchar(32) NOT NULL DEFAULT 'auto_increment',
  `email` varchar(50) NOT NULL,
  `username` varchar(25) DEFAULT NULL,
  `PASSWORD` varchar(150) DEFAULT NULL,
  `phoneNum` varchar(20) DEFAULT NULL,
  `STATUS` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "users"
#

INSERT INTO `users` VALUES ('111-222','tome@123.com','tom','$2a$10$Q1YjEdCzYpYpOkEAF7/V9.0GWG1rLwWsNG6YxqNggjHJ845lsq4Xi','1333333333',1),('admin','111@qq.com','admin1','$2a$10$vvdJRRB/hZRvsEHKJzs57O1hjybi5l3TgVoVBXX4MTJiHAS1lP4F.','13475771977',1),('admins','test@123','admins','$2a$10$Q1YjEdCzYpYpOkEAF7/V9.0GWG1rLwWsNG6YxqNggjHJ845lsq4Xi','1333333',1),('all','123123123123','all','$2a$10$KN/f4AtY6c4tLibD.zc.we.dTFN5ybS4qm2bfUcNdzQc3uGhRz7ai','123123123123',1),('test','123123@163.com','test','$2a$10$1YuchU5/jQHBABofDeP4Huc7/FFkbm08MJKxyjsgpYDavRrnc/GEC','143334333333',1),('testse','123123@qq.com','testse','$2a$10$ryyEuYZBJdioRgDAed5K1.GxsINX1Y/yTLGg1tNDs3XE149DAFzUi','123123123123',1);

#
# Structure for table "users_role"
#

CREATE TABLE `users_role` (
  `userId` varchar(32) NOT NULL,
  `roleId` varchar(32) NOT NULL,
  PRIMARY KEY (`userId`,`roleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "users_role"
#

INSERT INTO `users_role` VALUES ('111-222','1111'),('111-222','2222'),('admin','1111'),('admin','2222'),('all','1111'),('all','2222');
