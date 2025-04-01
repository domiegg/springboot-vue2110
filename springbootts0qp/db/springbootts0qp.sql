-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: springbootts0qp
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `springbootts0qp`
--

/*!40000 DROP DATABASE IF EXISTS `springbootts0qp`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `springbootts0qp` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `springbootts0qp`;

--
-- Table structure for table `aboutus`
--

DROP TABLE IF EXISTS `aboutus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aboutus` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `subtitle` varchar(200) DEFAULT NULL COMMENT '副标题',
  `content` longtext NOT NULL COMMENT '内容',
  `picture1` longtext COMMENT '图片1',
  `picture2` longtext COMMENT '图片2',
  `picture3` longtext COMMENT '图片3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='关于我们';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aboutus`
--

LOCK TABLES `aboutus` WRITE;
/*!40000 ALTER TABLE `aboutus` DISABLE KEYS */;
INSERT INTO `aboutus` VALUES (1,'2023-01-25 06:58:27','关于我们','ABOUT US','不管你想要怎样的生活，你都要去努力争取，不多尝试一些事情怎么知道自己适合什么、不适合什么呢?\n你说你喜欢读书，让我给你列书单，你还问我哪里有那么多时间看书;你说自己梦想的职业是广告文案，问我如何成为一个文案，应该具备哪些素质;你说你计划晨跑，但总是因为学习、工作辛苦或者身体不舒服第二天起不了床;你说你一直梦想一个人去长途旅行，但是没钱，父母觉得危险。其实，我已经厌倦了你这样说说而已的把戏，我觉得就算我告诉你如何去做，你也不会照做，因为你根本什么都不做。','upload/aboutus_picture1.jpg','upload/aboutus_picture2.jpg','upload/aboutus_picture3.jpg');
/*!40000 ALTER TABLE `aboutus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banjixinxi`
--

DROP TABLE IF EXISTS `banjixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banjixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `banjimingcheng` varchar(200) NOT NULL COMMENT '班级名称',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `fudaoyuan` varchar(200) NOT NULL COMMENT '辅导员',
  `zhidaolaoshi` varchar(200) NOT NULL COMMENT '指导老师',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8 COMMENT='班级信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banjixinxi`
--

LOCK TABLES `banjixinxi` WRITE;
/*!40000 ALTER TABLE `banjixinxi` DISABLE KEYS */;
INSERT INTO `banjixinxi` VALUES (91,'2023-01-25 06:58:27','班级名称1','学号1','姓名1','13823888881','辅导员1','指导老师1'),(92,'2023-01-25 06:58:27','班级名称2','学号2','姓名2','13823888882','辅导员2','指导老师2'),(93,'2023-01-25 06:58:27','班级名称3','学号3','姓名3','13823888883','辅导员3','指导老师3'),(94,'2023-01-25 06:58:27','班级名称4','学号4','姓名4','13823888884','辅导员4','指导老师4'),(95,'2023-01-25 06:58:27','班级名称5','学号5','姓名5','13823888885','辅导员5','指导老师5'),(96,'2023-01-25 06:58:27','班级名称6','学号6','姓名6','13823888886','辅导员6','指导老师6'),(97,'2023-01-25 06:58:27','班级名称7','学号7','姓名7','13823888887','辅导员7','指导老师7'),(98,'2023-01-25 06:58:27','班级名称8','学号8','姓名8','13823888888','辅导员8','指导老师8');
/*!40000 ALTER TABLE `banjixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `baodaoyuyue`
--

DROP TABLE IF EXISTS `baodaoyuyue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `baodaoyuyue` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuexiaomingcheng` varchar(200) DEFAULT NULL COMMENT '学校名称',
  `baodaoshijian` datetime NOT NULL COMMENT '报道时间',
  `laiwangfangshi` varchar(200) NOT NULL COMMENT '来往方式',
  `sushehao` varchar(200) NOT NULL COMMENT '宿舍号',
  `chuangweihao` varchar(200) NOT NULL COMMENT '床位号',
  `baodaoshuoming` longtext NOT NULL COMMENT '报道说明',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT '待审核' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8 COMMENT='报道预约';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `baodaoyuyue`
--

LOCK TABLES `baodaoyuyue` WRITE;
/*!40000 ALTER TABLE `baodaoyuyue` DISABLE KEYS */;
INSERT INTO `baodaoyuyue` VALUES (61,'2023-01-25 06:58:27','学校名称1','2023-01-25 14:58:27','来往方式1','宿舍号1','床位号1','报道说明1','学号1','姓名1','13823888881','是',''),(62,'2023-01-25 06:58:27','学校名称2','2023-01-25 14:58:27','来往方式2','宿舍号2','床位号2','报道说明2','学号2','姓名2','13823888882','是',''),(63,'2023-01-25 06:58:27','学校名称3','2023-01-25 14:58:27','来往方式3','宿舍号3','床位号3','报道说明3','学号3','姓名3','13823888883','是',''),(64,'2023-01-25 06:58:27','学校名称4','2023-01-25 14:58:27','来往方式4','宿舍号4','床位号4','报道说明4','学号4','姓名4','13823888884','是',''),(65,'2023-01-25 06:58:27','学校名称5','2023-01-25 14:58:27','来往方式5','宿舍号5','床位号5','报道说明5','学号5','姓名5','13823888885','是',''),(66,'2023-01-25 06:58:27','学校名称6','2023-01-25 14:58:27','来往方式6','宿舍号6','床位号6','报道说明6','学号6','姓名6','13823888886','是',''),(67,'2023-01-25 06:58:27','学校名称7','2023-01-25 14:58:27','来往方式7','宿舍号7','床位号7','报道说明7','学号7','姓名7','13823888887','是',''),(68,'2023-01-25 06:58:27','学校名称8','2023-01-25 14:58:27','来往方式8','宿舍号8','床位号8','报道说明8','学号8','姓名8','13823888888','是','');
/*!40000 ALTER TABLE `baodaoyuyue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/picture1.jpg'),(2,'picture2','upload/picture2.jpg'),(3,'picture3','upload/picture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussxuexiaoxinxi`
--

DROP TABLE IF EXISTS `discussxuexiaoxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussxuexiaoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `avatarurl` longtext COMMENT '头像',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='学校信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussxuexiaoxinxi`
--

LOCK TABLES `discussxuexiaoxinxi` WRITE;
/*!40000 ALTER TABLE `discussxuexiaoxinxi` DISABLE KEYS */;
/*!40000 ALTER TABLE `discussxuexiaoxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusszhuanyejieshao`
--

DROP TABLE IF EXISTS `discusszhuanyejieshao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusszhuanyejieshao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `avatarurl` longtext COMMENT '头像',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='专业介绍评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusszhuanyejieshao`
--

LOCK TABLES `discusszhuanyejieshao` WRITE;
/*!40000 ALTER TABLE `discusszhuanyejieshao` DISABLE KEYS */;
/*!40000 ALTER TABLE `discusszhuanyejieshao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gonggaolan`
--

DROP TABLE IF EXISTS `gonggaolan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gonggaolan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) NOT NULL COMMENT '标题',
  `tupian` longtext COMMENT '图片',
  `gonggaoneirong` longtext COMMENT '公告内容',
  `faburiqi` datetime DEFAULT NULL COMMENT '发布日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COMMENT='公告栏';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gonggaolan`
--

LOCK TABLES `gonggaolan` WRITE;
/*!40000 ALTER TABLE `gonggaolan` DISABLE KEYS */;
INSERT INTO `gonggaolan` VALUES (21,'2023-01-25 06:58:27','标题1','upload/gonggaolan_tupian1.jpg,upload/gonggaolan_tupian2.jpg,upload/gonggaolan_tupian3.jpg','公告内容1','2023-01-25 14:58:27'),(22,'2023-01-25 06:58:27','标题2','upload/gonggaolan_tupian2.jpg,upload/gonggaolan_tupian3.jpg,upload/gonggaolan_tupian4.jpg','公告内容2','2023-01-25 14:58:27'),(23,'2023-01-25 06:58:27','标题3','upload/gonggaolan_tupian3.jpg,upload/gonggaolan_tupian4.jpg,upload/gonggaolan_tupian5.jpg','公告内容3','2023-01-25 14:58:27'),(24,'2023-01-25 06:58:27','标题4','upload/gonggaolan_tupian4.jpg,upload/gonggaolan_tupian5.jpg,upload/gonggaolan_tupian6.jpg','公告内容4','2023-01-25 14:58:27'),(25,'2023-01-25 06:58:27','标题5','upload/gonggaolan_tupian5.jpg,upload/gonggaolan_tupian6.jpg,upload/gonggaolan_tupian7.jpg','公告内容5','2023-01-25 14:58:27'),(26,'2023-01-25 06:58:27','标题6','upload/gonggaolan_tupian6.jpg,upload/gonggaolan_tupian7.jpg,upload/gonggaolan_tupian8.jpg','公告内容6','2023-01-25 14:58:27'),(27,'2023-01-25 06:58:27','标题7','upload/gonggaolan_tupian7.jpg,upload/gonggaolan_tupian8.jpg,upload/gonggaolan_tupian9.jpg','公告内容7','2023-01-25 14:58:27'),(28,'2023-01-25 06:58:27','标题8','upload/gonggaolan_tupian8.jpg,upload/gonggaolan_tupian9.jpg,upload/gonggaolan_tupian10.jpg','公告内容8','2023-01-25 14:58:27');
/*!40000 ALTER TABLE `gonggaolan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kechengxinxi`
--

DROP TABLE IF EXISTS `kechengxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kechengxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `banji` varchar(200) NOT NULL COMMENT '班级',
  `riqi` date DEFAULT NULL COMMENT '日期',
  `kechengyi` varchar(200) DEFAULT NULL COMMENT '课程一',
  `kechenger` varchar(200) DEFAULT NULL COMMENT '课程二',
  `kechengsan` varchar(200) DEFAULT NULL COMMENT '课程三',
  `kechengsi` varchar(200) DEFAULT NULL COMMENT '课程四',
  `kechengwu` varchar(200) DEFAULT NULL COMMENT '课程五',
  `kechengliu` varchar(200) DEFAULT NULL COMMENT '课程六',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1674630000700 DEFAULT CHARSET=utf8 COMMENT='课程信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kechengxinxi`
--

LOCK TABLES `kechengxinxi` WRITE;
/*!40000 ALTER TABLE `kechengxinxi` DISABLE KEYS */;
INSERT INTO `kechengxinxi` VALUES (81,'2023-01-25 06:58:27','班级1','2023-01-25','课程一1','课程二1','课程三1','课程四1','课程五1','课程六1'),(82,'2023-01-25 06:58:27','班级2','2023-01-25','课程一2','课程二2','课程三2','课程四2','课程五2','课程六2'),(83,'2023-01-25 06:58:27','班级3','2023-01-25','课程一3','课程二3','课程三3','课程四3','课程五3','课程六3'),(84,'2023-01-25 06:58:27','班级4','2023-01-25','课程一4','课程二4','课程三4','课程四4','课程五4','课程六4'),(85,'2023-01-25 06:58:27','班级5','2023-01-25','课程一5','课程二5','课程三5','课程四5','课程五5','课程六5'),(86,'2023-01-25 06:58:27','班级6','2023-01-25','课程一6','课程二6','课程三6','课程四6','课程五6','课程六6'),(87,'2023-01-25 06:58:27','班级7','2023-01-25','课程一7','课程二7','课程三7','课程四7','课程五7','课程六7'),(88,'2023-01-25 06:58:27','班级8','2023-01-25','课程一8','课程二8','课程三8','课程四8','课程五8','课程六8'),(1674630000699,'2023-01-25 07:00:00','计算机一班','2023-01-25','英语','数学','化学','历史','政治','物理');
/*!40000 ALTER TABLE `kechengxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ruxuetongzhi`
--

DROP TABLE IF EXISTS `ruxuetongzhi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ruxuetongzhi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) NOT NULL COMMENT '标题',
  `tupian` longtext COMMENT '图片',
  `tongzhineirong` longtext NOT NULL COMMENT '通知内容',
  `fuzeren` varchar(200) NOT NULL COMMENT '负责人',
  `lianxidianhua` varchar(200) NOT NULL COMMENT '联系电话',
  `faburiqi` datetime DEFAULT NULL COMMENT '发布日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COMMENT='入学通知';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ruxuetongzhi`
--

LOCK TABLES `ruxuetongzhi` WRITE;
/*!40000 ALTER TABLE `ruxuetongzhi` DISABLE KEYS */;
INSERT INTO `ruxuetongzhi` VALUES (41,'2023-01-25 06:58:27','标题1','upload/ruxuetongzhi_tupian1.jpg,upload/ruxuetongzhi_tupian2.jpg,upload/ruxuetongzhi_tupian3.jpg','通知内容1','负责人1','13823888881','2023-01-25 14:58:27'),(42,'2023-01-25 06:58:27','标题2','upload/ruxuetongzhi_tupian2.jpg,upload/ruxuetongzhi_tupian3.jpg,upload/ruxuetongzhi_tupian4.jpg','通知内容2','负责人2','13823888882','2023-01-25 14:58:27'),(43,'2023-01-25 06:58:27','标题3','upload/ruxuetongzhi_tupian3.jpg,upload/ruxuetongzhi_tupian4.jpg,upload/ruxuetongzhi_tupian5.jpg','通知内容3','负责人3','13823888883','2023-01-25 14:58:27'),(44,'2023-01-25 06:58:27','标题4','upload/ruxuetongzhi_tupian4.jpg,upload/ruxuetongzhi_tupian5.jpg,upload/ruxuetongzhi_tupian6.jpg','通知内容4','负责人4','13823888884','2023-01-25 14:58:27'),(45,'2023-01-25 06:58:27','标题5','upload/ruxuetongzhi_tupian5.jpg,upload/ruxuetongzhi_tupian6.jpg,upload/ruxuetongzhi_tupian7.jpg','通知内容5','负责人5','13823888885','2023-01-25 14:58:27'),(46,'2023-01-25 06:58:27','标题6','upload/ruxuetongzhi_tupian6.jpg,upload/ruxuetongzhi_tupian7.jpg,upload/ruxuetongzhi_tupian8.jpg','通知内容6','负责人6','13823888886','2023-01-25 14:58:27'),(47,'2023-01-25 06:58:27','标题7','upload/ruxuetongzhi_tupian7.jpg,upload/ruxuetongzhi_tupian8.jpg,upload/ruxuetongzhi_tupian9.jpg','通知内容7','负责人7','13823888887','2023-01-25 14:58:27'),(48,'2023-01-25 06:58:27','标题8','upload/ruxuetongzhi_tupian8.jpg,upload/ruxuetongzhi_tupian9.jpg,upload/ruxuetongzhi_tupian10.jpg','通知内容8','负责人8','13823888888','2023-01-25 14:58:27');
/*!40000 ALTER TABLE `ruxuetongzhi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '商品id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '名称',
  `picture` longtext NOT NULL COMMENT '图片',
  `type` varchar(200) DEFAULT '1' COMMENT '类型(1:收藏,21:赞,22:踩,31:竞拍参与,41:关注)',
  `inteltype` varchar(200) DEFAULT NULL COMMENT '推荐类型',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sushexinxi`
--

DROP TABLE IF EXISTS `sushexinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sushexinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `sushemingcheng` varchar(200) NOT NULL COMMENT '宿舍名称',
  `sushehao` varchar(200) NOT NULL COMMENT '宿舍号',
  `susheleixing` varchar(200) NOT NULL COMMENT '宿舍类型',
  `tupian` longtext COMMENT '图片',
  `louceng` varchar(200) DEFAULT NULL COMMENT '楼层',
  `weizhi` varchar(200) DEFAULT NULL COMMENT '位置',
  `chuangweihao` varchar(200) NOT NULL COMMENT '床位号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8 COMMENT='宿舍信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sushexinxi`
--

LOCK TABLES `sushexinxi` WRITE;
/*!40000 ALTER TABLE `sushexinxi` DISABLE KEYS */;
INSERT INTO `sushexinxi` VALUES (71,'2023-01-25 06:58:27','宿舍名称1','宿舍号1','男生','upload/sushexinxi_tupian1.jpg,upload/sushexinxi_tupian2.jpg,upload/sushexinxi_tupian3.jpg','楼层1','位置1','床位号1'),(72,'2023-01-25 06:58:27','宿舍名称2','宿舍号2','男生','upload/sushexinxi_tupian2.jpg,upload/sushexinxi_tupian3.jpg,upload/sushexinxi_tupian4.jpg','楼层2','位置2','床位号2'),(73,'2023-01-25 06:58:27','宿舍名称3','宿舍号3','男生','upload/sushexinxi_tupian3.jpg,upload/sushexinxi_tupian4.jpg,upload/sushexinxi_tupian5.jpg','楼层3','位置3','床位号3'),(74,'2023-01-25 06:58:27','宿舍名称4','宿舍号4','男生','upload/sushexinxi_tupian4.jpg,upload/sushexinxi_tupian5.jpg,upload/sushexinxi_tupian6.jpg','楼层4','位置4','床位号4'),(75,'2023-01-25 06:58:27','宿舍名称5','宿舍号5','男生','upload/sushexinxi_tupian5.jpg,upload/sushexinxi_tupian6.jpg,upload/sushexinxi_tupian7.jpg','楼层5','位置5','床位号5'),(76,'2023-01-25 06:58:27','宿舍名称6','宿舍号6','男生','upload/sushexinxi_tupian6.jpg,upload/sushexinxi_tupian7.jpg,upload/sushexinxi_tupian8.jpg','楼层6','位置6','床位号6'),(77,'2023-01-25 06:58:27','宿舍名称7','宿舍号7','男生','upload/sushexinxi_tupian7.jpg,upload/sushexinxi_tupian8.jpg,upload/sushexinxi_tupian9.jpg','楼层7','位置7','床位号7'),(78,'2023-01-25 06:58:27','宿舍名称8','宿舍号8','男生','upload/sushexinxi_tupian8.jpg,upload/sushexinxi_tupian9.jpg,upload/sushexinxi_tupian10.jpg','楼层8','位置8','床位号8');
/*!40000 ALTER TABLE `sushexinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'admin','users','管理员','mjz227wkauurq4680hzp9emfuw56rtop','2023-01-25 06:59:40','2023-01-25 07:59:54');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','admin','管理员','2023-01-25 06:58:27');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xuesheng`
--

DROP TABLE IF EXISTS `xuesheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` longtext COMMENT '头像',
  `xueyuan` varchar(200) DEFAULT NULL COMMENT '学院',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='学生';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xuesheng`
--

LOCK TABLES `xuesheng` WRITE;
/*!40000 ALTER TABLE `xuesheng` DISABLE KEYS */;
INSERT INTO `xuesheng` VALUES (11,'2023-01-25 06:58:27','学号1','123456','姓名1','男','upload/xuesheng_touxiang1.jpg','学院1','专业1','13823888881'),(12,'2023-01-25 06:58:27','学号2','123456','姓名2','男','upload/xuesheng_touxiang2.jpg','学院2','专业2','13823888882'),(13,'2023-01-25 06:58:27','学号3','123456','姓名3','男','upload/xuesheng_touxiang3.jpg','学院3','专业3','13823888883'),(14,'2023-01-25 06:58:27','学号4','123456','姓名4','男','upload/xuesheng_touxiang4.jpg','学院4','专业4','13823888884'),(15,'2023-01-25 06:58:27','学号5','123456','姓名5','男','upload/xuesheng_touxiang5.jpg','学院5','专业5','13823888885'),(16,'2023-01-25 06:58:27','学号6','123456','姓名6','男','upload/xuesheng_touxiang6.jpg','学院6','专业6','13823888886'),(17,'2023-01-25 06:58:27','学号7','123456','姓名7','男','upload/xuesheng_touxiang7.jpg','学院7','专业7','13823888887'),(18,'2023-01-25 06:58:27','1','1','姓名8','男','upload/xuesheng_touxiang8.jpg','学院8','专业8','13823888888');
/*!40000 ALTER TABLE `xuesheng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xuexiaoxinxi`
--

DROP TABLE IF EXISTS `xuexiaoxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xuexiaoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuexiaomingcheng` varchar(200) NOT NULL COMMENT '学校名称',
  `tupian` longtext COMMENT '图片',
  `xiaoyuanmianji` varchar(200) DEFAULT NULL COMMENT '校园面积',
  `chuangbanshijian` date DEFAULT NULL COMMENT '创办时间',
  `suozaiguojia` varchar(200) DEFAULT NULL COMMENT '所在国家',
  `xuexiaodizhi` varchar(200) DEFAULT NULL COMMENT '学校地址',
  `xiaocheanpai` varchar(200) DEFAULT NULL COMMENT '校车安排',
  `gongjiaoluxian` longtext COMMENT '公交路线',
  `xuexiaojianjie` longtext COMMENT '学校简介',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COMMENT='学校信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xuexiaoxinxi`
--

LOCK TABLES `xuexiaoxinxi` WRITE;
/*!40000 ALTER TABLE `xuexiaoxinxi` DISABLE KEYS */;
INSERT INTO `xuexiaoxinxi` VALUES (31,'2023-01-25 06:58:27','学校名称1','upload/xuexiaoxinxi_tupian1.jpg,upload/xuexiaoxinxi_tupian2.jpg,upload/xuexiaoxinxi_tupian3.jpg','校园面积1','2023-01-25','所在国家1','学校地址1','校车安排1','公交路线1','学校简介1'),(32,'2023-01-25 06:58:27','学校名称2','upload/xuexiaoxinxi_tupian2.jpg,upload/xuexiaoxinxi_tupian3.jpg,upload/xuexiaoxinxi_tupian4.jpg','校园面积2','2023-01-25','所在国家2','学校地址2','校车安排2','公交路线2','学校简介2'),(33,'2023-01-25 06:58:27','学校名称3','upload/xuexiaoxinxi_tupian3.jpg,upload/xuexiaoxinxi_tupian4.jpg,upload/xuexiaoxinxi_tupian5.jpg','校园面积3','2023-01-25','所在国家3','学校地址3','校车安排3','公交路线3','学校简介3'),(34,'2023-01-25 06:58:27','学校名称4','upload/xuexiaoxinxi_tupian4.jpg,upload/xuexiaoxinxi_tupian5.jpg,upload/xuexiaoxinxi_tupian6.jpg','校园面积4','2023-01-25','所在国家4','学校地址4','校车安排4','公交路线4','学校简介4'),(35,'2023-01-25 06:58:27','学校名称5','upload/xuexiaoxinxi_tupian5.jpg,upload/xuexiaoxinxi_tupian6.jpg,upload/xuexiaoxinxi_tupian7.jpg','校园面积5','2023-01-25','所在国家5','学校地址5','校车安排5','公交路线5','学校简介5'),(36,'2023-01-25 06:58:27','学校名称6','upload/xuexiaoxinxi_tupian6.jpg,upload/xuexiaoxinxi_tupian7.jpg,upload/xuexiaoxinxi_tupian8.jpg','校园面积6','2023-01-25','所在国家6','学校地址6','校车安排6','公交路线6','学校简介6'),(37,'2023-01-25 06:58:27','学校名称7','upload/xuexiaoxinxi_tupian7.jpg,upload/xuexiaoxinxi_tupian8.jpg,upload/xuexiaoxinxi_tupian9.jpg','校园面积7','2023-01-25','所在国家7','学校地址7','校车安排7','公交路线7','学校简介7'),(38,'2023-01-25 06:58:27','学校名称8','upload/xuexiaoxinxi_tupian8.jpg,upload/xuexiaoxinxi_tupian9.jpg,upload/xuexiaoxinxi_tupian10.jpg','校园面积8','2023-01-25','所在国家8','学校地址8','校车安排8','公交路线8','学校简介8');
/*!40000 ALTER TABLE `xuexiaoxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zhuanyejieshao`
--

DROP TABLE IF EXISTS `zhuanyejieshao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zhuanyejieshao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuexiaomingcheng` varchar(200) NOT NULL COMMENT '学校名称',
  `zhuanyebianma` varchar(200) NOT NULL COMMENT '专业编码',
  `zhuanyemingcheng` varchar(200) NOT NULL COMMENT '专业名称',
  `zhuanyeleibie` varchar(200) DEFAULT NULL COMMENT '专业类别',
  `tupian` longtext COMMENT '图片',
  `zhuanyejieshao` longtext COMMENT '专业介绍',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhuanyebianma` (`zhuanyebianma`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8 COMMENT='专业介绍';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zhuanyejieshao`
--

LOCK TABLES `zhuanyejieshao` WRITE;
/*!40000 ALTER TABLE `zhuanyejieshao` DISABLE KEYS */;
INSERT INTO `zhuanyejieshao` VALUES (51,'2023-01-25 06:58:27','学校名称1','专业编码1','专业名称1','自然科学','upload/zhuanyejieshao_tupian1.jpg,upload/zhuanyejieshao_tupian2.jpg,upload/zhuanyejieshao_tupian3.jpg','专业介绍1'),(52,'2023-01-25 06:58:27','学校名称2','专业编码2','专业名称2','自然科学','upload/zhuanyejieshao_tupian2.jpg,upload/zhuanyejieshao_tupian3.jpg,upload/zhuanyejieshao_tupian4.jpg','专业介绍2'),(53,'2023-01-25 06:58:27','学校名称3','专业编码3','专业名称3','自然科学','upload/zhuanyejieshao_tupian3.jpg,upload/zhuanyejieshao_tupian4.jpg,upload/zhuanyejieshao_tupian5.jpg','专业介绍3'),(54,'2023-01-25 06:58:27','学校名称4','专业编码4','专业名称4','自然科学','upload/zhuanyejieshao_tupian4.jpg,upload/zhuanyejieshao_tupian5.jpg,upload/zhuanyejieshao_tupian6.jpg','专业介绍4'),(55,'2023-01-25 06:58:27','学校名称5','专业编码5','专业名称5','自然科学','upload/zhuanyejieshao_tupian5.jpg,upload/zhuanyejieshao_tupian6.jpg,upload/zhuanyejieshao_tupian7.jpg','专业介绍5'),(56,'2023-01-25 06:58:27','学校名称6','专业编码6','专业名称6','自然科学','upload/zhuanyejieshao_tupian6.jpg,upload/zhuanyejieshao_tupian7.jpg,upload/zhuanyejieshao_tupian8.jpg','专业介绍6'),(57,'2023-01-25 06:58:27','学校名称7','专业编码7','专业名称7','自然科学','upload/zhuanyejieshao_tupian7.jpg,upload/zhuanyejieshao_tupian8.jpg,upload/zhuanyejieshao_tupian9.jpg','专业介绍7'),(58,'2023-01-25 06:58:27','学校名称8','专业编码8','专业名称8','自然科学','upload/zhuanyejieshao_tupian8.jpg,upload/zhuanyejieshao_tupian9.jpg,upload/zhuanyejieshao_tupian10.jpg','专业介绍8');
/*!40000 ALTER TABLE `zhuanyejieshao` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-02 11:24:24
