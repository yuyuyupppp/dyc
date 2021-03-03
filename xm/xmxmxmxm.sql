-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: xm
-- ------------------------------------------------------
-- Server version	5.7.17

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
-- Table structure for table `dh`
--

DROP TABLE IF EXISTS `dh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dh` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `dhzl_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `title` varchar(50) NOT NULL,
  `wz` varchar(50) NOT NULL,
  `sort` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dh`
--

LOCK TABLES `dh` WRITE;
/*!40000 ALTER TABLE `dh` DISABLE KEYS */;
INSERT INTO `dh` VALUES (1,1,'片库网 ','https://www.pianku.li/',0),(2,1,'片吧','https://www.pianba.net/',1),(3,1,'蛋蛋赞影院','https://www.dandanzan.cc/',0),(4,1,'七七看片','https://www.77kpp.com/',0),(5,1,'滴哩哩','https://www.dililitv.cc/',0),(6,1,'哔嘀影视','https://bde4.cc/',0),(7,1,'低端影视','https://ddrk.me/',0),(8,1,'达达兔影院','https://www.dadatu5.com/index.php',0),(9,1,'好恐怖 ','https://www.haokongbu.net/',0),(10,1,'88影视网','https://www.88kan.com/',0),(11,1,'在线之家','https://www.zxzj.me/',0),(12,1,'爱看电影','http://ikanmv.com/',0),(13,1,'酷绘视频','http://www.kuhuiv.com/',0),(14,1,'皮特影院','https://www.pites.cc/',0),(15,1,'NO视频','https://www.novipnoad.com/',0),(16,1,'9亿看看','https://9ekk.com/',0),(17,1,'完美看看','https://www.wanmeikk.me/',0),(18,2,'磁力多','https://duo123.best/',0),(19,2,'BT吃力','https://www.sokankan35.xyz/',0),(20,2,'BT4G | bt4g.org','https://bt4g.unblockit.link/',0),(21,1,'种子搜 ','https://zhongziso13.xyz/',0),(22,4,'懒盘聚合搜索','https://disk.misiai.com/',0),(23,4,'飞飞盘','https://www.feifeipan.com/',0),(24,4,'大力盘搜索','www.dalipan.com',0),(25,4,'大圣盘','https://www.dashengpan.com/',0),(26,4,'飞鱼盘搜','feiyu100.cn',0),(27,4,'小马盘搜索','https://www.xiaomapan.com/',0),(28,4,'玉白盘','https://www.yubaipan.com/',0),(29,4,'飞猪盘','https://www.feizhupan.com/',0),(30,4,'盘么么','http://www.panmeme.com/',0),(31,4,'库搜','https://www.kolsou.com/',0),(32,4,'虫部落','http://magnet.chongbuluo.com/',0),(33,5,'漫画柜','https://www.mhgui.com/',0),(34,5,'动漫之家','https://www.dmzj1.com/',0),(35,5,'Zzzfun 动漫视频网','http://www.zzzfun.com/',0),(36,5,'漫画DB','https://www.manhuadb.com/',0),(37,5,'Mangabz','https://www.mangabz.com/',0),(38,5,'扑飞漫画','http://www.pufei8.com/',0),(39,5,'五七漫画网','www.wuqimh.com',0),(40,5,'古风漫画网','https://www.gufengmh8.com/',0),(41,7,'鸠摩搜索','https://www.jiumodiary.com/',0),(42,7,'全国图书馆参考咨询联盟 ','http://www.ucdrs.superlib.net/',0),(43,7,'时宜搜书','https://www.shiyisoushu.com/',0),(44,7,'虫部落电子书搜索 ','https://ebook.chongbuluo.com/',0),(45,7,'ePUBee电子书库 ','http://www.ferebook.com/books/',0),(46,7,'LoreFree ','https://ebook2.lorefree.com/',0),(47,7,'书单网','https://www.shudan.vip/',0),(48,7,'点点文档','https://www.torrent.org.cn/bd',0),(49,7,'库问搜索','http://www.koovin.com/',0),(50,6,'1','1',0);
/*!40000 ALTER TABLE `dh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dhzl`
--

DROP TABLE IF EXISTS `dhzl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dhzl` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `category` varchar(50) NOT NULL DEFAULT '',
  `sort` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dhzl`
--

LOCK TABLES `dhzl` WRITE;
/*!40000 ALTER TABLE `dhzl` DISABLE KEYS */;
INSERT INTO `dhzl` VALUES (1,'在线影视',0),(2,'磁力搜索引擎',1),(4,'云盘搜索',3),(5,'动漫',4),(6,'学习网址',5),(7,'电子书',7);
/*!40000 ALTER TABLE `dhzl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dytj`
--

DROP TABLE IF EXISTS `dytj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dytj` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `jjpg` varchar(250) NOT NULL,
  `pingfen` float(2,1) unsigned NOT NULL,
  `jieshao` varchar(5000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dytj`
--

LOCK TABLES `dytj` WRITE;
/*!40000 ALTER TABLE `dytj` DISABLE KEYS */;
/*!40000 ALTER TABLE `dytj` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xxbj`
--

DROP TABLE IF EXISTS `xxbj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xxbj` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xxbj`
--

LOCK TABLES `xxbj` WRITE;
/*!40000 ALTER TABLE `xxbj` DISABLE KEYS */;
INSERT INTO `xxbj` VALUES (2,'1111111111111','11111111111111111111111111111111111111111111111111111111111111'),(3,'2','2');
/*!40000 ALTER TABLE `xxbj` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-03 11:41:31
