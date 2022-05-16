-- MySQL dump 10.16  Distrib 10.1.18-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: quynh_tin
-- ------------------------------------------------------
-- Server version	10.1.18-MariaDB

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
-- Table structure for table `nv4_authors`
--

DROP TABLE IF EXISTS `nv4_authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_authors` (
  `admin_id` mediumint(8) unsigned NOT NULL,
  `editor` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `lev` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `files_level` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `main_module` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'siteinfo',
  `admin_theme` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `addtime` int(11) NOT NULL DEFAULT '0',
  `edittime` int(11) NOT NULL DEFAULT '0',
  `is_suspend` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `susp_reason` text COLLATE utf8mb4_unicode_ci,
  `check_num` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login` int(11) unsigned NOT NULL DEFAULT '0',
  `last_ip` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `last_agent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`admin_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_authors`
--

LOCK TABLES `nv4_authors` WRITE;
/*!40000 ALTER TABLE `nv4_authors` DISABLE KEYS */;
INSERT INTO `nv4_authors` VALUES (1,'ckeditor',1,'adobe,archives,audio,documents,flash,images,real,video|1|1|1','Administrator','siteinfo','',0,0,0,'','e1077ac0afe55bceb3af74993b9634c9',1578363064,'171.251.56.215','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36');
/*!40000 ALTER TABLE `nv4_authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_authors_config`
--

DROP TABLE IF EXISTS `nv4_authors_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_authors_config` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `keyname` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mask` tinyint(4) NOT NULL DEFAULT '0',
  `begintime` int(11) DEFAULT NULL,
  `endtime` int(11) DEFAULT NULL,
  `notice` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `keyname` (`keyname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_authors_config`
--

LOCK TABLES `nv4_authors_config` WRITE;
/*!40000 ALTER TABLE `nv4_authors_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `nv4_authors_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_authors_module`
--

DROP TABLE IF EXISTS `nv4_authors_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_authors_module` (
  `mid` mediumint(8) NOT NULL AUTO_INCREMENT,
  `module` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_key` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `weight` mediumint(8) NOT NULL DEFAULT '0',
  `act_1` tinyint(4) NOT NULL DEFAULT '0',
  `act_2` tinyint(4) NOT NULL DEFAULT '1',
  `act_3` tinyint(4) NOT NULL DEFAULT '1',
  `checksum` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`mid`),
  UNIQUE KEY `module` (`module`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_authors_module`
--

LOCK TABLES `nv4_authors_module` WRITE;
/*!40000 ALTER TABLE `nv4_authors_module` DISABLE KEYS */;
INSERT INTO `nv4_authors_module` VALUES (1,'siteinfo','mod_siteinfo',1,1,1,1,'96035faf1288a8fb448c00df86287338'),(2,'authors','mod_authors',2,1,1,1,'021a166bf837af6172269173b45210a8'),(3,'settings','mod_settings',3,1,1,0,'d695ca70430afac88179908eac2c082e'),(4,'database','mod_database',4,1,0,0,'4877e3d07df32693d4a6efc835350344'),(5,'webtools','mod_webtools',5,1,1,0,'f06447a94ca11d4b66621e50a33f4704'),(6,'seotools','mod_seotools',6,1,1,0,'011de027b9c3f10f9796dd2ffa966d89'),(7,'language','mod_language',7,1,1,0,'db522018a166cc557ad7eb8fe99477a1'),(8,'modules','mod_modules',8,1,1,0,'611c4dcdc921415d7a7ce946980374cc'),(9,'themes','mod_themes',9,1,1,0,'559eb0c7341714e506e1d9ba4c44f59b'),(10,'extensions','mod_extensions',10,1,0,0,'2c700365fd11984d48ebcd061b0f2884'),(11,'upload','mod_upload',11,1,1,1,'77362dcdd7df01a4693d4f83ec2488e5');
/*!40000 ALTER TABLE `nv4_authors_module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_banners_click`
--

DROP TABLE IF EXISTS `nv4_banners_click`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_banners_click` (
  `bid` mediumint(8) NOT NULL DEFAULT '0',
  `click_time` int(11) unsigned NOT NULL DEFAULT '0',
  `click_day` int(2) NOT NULL,
  `click_ip` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `click_country` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `click_browse_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `click_browse_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `click_os_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `click_os_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `click_ref` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  KEY `bid` (`bid`),
  KEY `click_day` (`click_day`),
  KEY `click_ip` (`click_ip`),
  KEY `click_country` (`click_country`),
  KEY `click_browse_key` (`click_browse_key`),
  KEY `click_os_key` (`click_os_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_banners_click`
--

LOCK TABLES `nv4_banners_click` WRITE;
/*!40000 ALTER TABLE `nv4_banners_click` DISABLE KEYS */;
INSERT INTO `nv4_banners_click` VALUES (9,1553220731,0,'116.110.199.246','VN','','chrome','','Windows 10','http://quynh.phubinh.vn/'),(12,1553221130,0,'116.110.199.246','VN','','chrome','','Windows 10','http://quynh.phubinh.vn/');
/*!40000 ALTER TABLE `nv4_banners_click` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_banners_plans`
--

DROP TABLE IF EXISTS `nv4_banners_plans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_banners_plans` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `blang` char(2) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `form` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `width` smallint(4) unsigned NOT NULL DEFAULT '0',
  `height` smallint(4) unsigned NOT NULL DEFAULT '0',
  `act` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `require_image` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `uploadtype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `uploadgroup` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `exp_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `title` (`title`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_banners_plans`
--

LOCK TABLES `nv4_banners_plans` WRITE;
/*!40000 ALTER TABLE `nv4_banners_plans` DISABLE KEYS */;
INSERT INTO `nv4_banners_plans` VALUES (1,'','Quang cao giua trang','','sequential',575,72,1,1,'images,flash','',0),(2,'','Quang cao trai','','sequential',212,800,1,1,'images,flash','',0),(3,'','Quang cao Phai','','random',250,500,1,1,'images,flash','',0),(4,'','Quảng cáo trên','','sequential',1000,146,1,1,'images','',0),(5,'','Quảng cáo trái','','sequential',202,156,1,1,'images','',0),(6,'','Quảng cáo trái2','','sequential',202,156,1,1,'images','',0),(7,'','Quảng cáo phải','','sequential',242,200,1,1,'images','',0),(8,'','Quảng cáo phải2','','sequential',242,200,1,1,'images','',0),(9,'','Banner','','sequential',50,50,1,1,'images','',0),(10,'','video','','sequential',209,150,1,1,'','',0),(11,'','Quảng cáo trên','','sequential',556,71,1,1,'','',0);
/*!40000 ALTER TABLE `nv4_banners_plans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_banners_rows`
--

DROP TABLE IF EXISTS `nv4_banners_rows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_banners_rows` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `clid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_ext` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_mime` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `width` int(4) unsigned NOT NULL DEFAULT '0',
  `height` int(4) unsigned NOT NULL DEFAULT '0',
  `file_alt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imageforswf` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `click_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `target` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_blank',
  `bannerhtml` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `add_time` int(11) unsigned NOT NULL DEFAULT '0',
  `publ_time` int(11) unsigned NOT NULL DEFAULT '0',
  `exp_time` int(11) unsigned NOT NULL DEFAULT '0',
  `hits_total` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `act` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `clid` (`clid`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_banners_rows`
--

LOCK TABLES `nv4_banners_rows` WRITE;
/*!40000 ALTER TABLE `nv4_banners_rows` DISABLE KEYS */;
INSERT INTO `nv4_banners_rows` VALUES (2,'vinades',2,1,'vinades.jpg','jpg','image/jpeg',212,400,'','','http://vinades.vn','_blank','',1552401040,1552401040,0,0,1,2),(3,'Quang cao giua trang',1,1,'gopy_1422430098242_1448007213223.jpg','jpg','image/jpeg',552,66,'','','http://webnhanh.vn','_blank','',1552401040,1552401000,0,0,1,1),(4,'Quảng cáo trên',4,1,'huyen-qn_02_1.jpg','jpg','image/jpeg',1000,146,'','','','_blank','',1552542747,1552542747,0,0,1,1),(5,'Quảng cáo trái',5,1,'ezgif.com-resize_1513580605319.gif','gif','image/gif',206,150,'','','','_blank','',1552616849,1552616849,0,0,1,1),(6,'Quảng cáo trái2',6,1,'video-clip-preview_1409239171249.png','png','image/png',231,55,'','','','_blank','',1552617953,1552617953,0,0,1,1),(7,'Quảng cáo trái2',6,1,'cakhucqn_1409240210478.png','png','image/png',250,70,'','','','_blank','',1552617984,1552617984,0,0,1,2),(8,'Quảng cáo trái2',6,1,'3.png','png','image/png',250,67,'','','','_blank','',1552617998,1552617998,0,0,1,3),(9,'Quảng cáo trái2',6,1,'4.jpg','jpg','image/jpeg',185,54,'','','https://mail.quangbinh.gov.vn/zimbra/','_blank','',1552618010,1552617960,0,1,1,4),(10,'Quảng cáo trái2',6,1,'5.png','png','image/png',250,60,'','','','_blank','',1552618022,1552618022,0,0,1,5),(11,'Quảng cáo trái2',6,1,'vbhuyen_1sv_c6gz1d5aefbh7.jpg','jpg','image/jpeg',240,50,'','','','_blank','',1552618036,1552618020,0,0,1,6),(12,'Quảng cáo trái2',6,1,'7.png','png','image/png',220,45,'','','https://thuvienphapluat.vn/','_blank','',1552618049,1552618020,0,1,1,7),(13,'Quảng cáo trái2',6,1,'8.png','png','image/png',220,45,'','','','_blank','',1552618061,1552618061,0,0,1,8),(14,'Quảng cáo trái2',6,1,'9.jpg','jpg','image/jpeg',220,45,'','','','_blank','',1552618109,1552618109,0,0,1,9),(15,'Quảng cáo trái2',6,1,'10.jpg','jpg','image/jpeg',195,60,'','','','_blank','',1552618121,1552618121,0,0,1,10),(16,'Quảng cáo trái2',6,1,'11.png','png','image/png',220,45,'','','','_blank','',1552618142,1552618142,0,0,1,11),(17,'Quảng cáo trái2',6,1,'12.gif','gif','image/gif',200,57,'','','','_blank','',1552618157,1552618157,0,0,1,12),(18,'Quảng cáo trái2',6,1,'13.jpg','jpg','image/jpeg',170,50,'','','','_blank','',1552618167,1552618167,0,0,1,13),(19,'Quảng cáo phải',7,1,'1.jpg','jpg','image/jpeg',202,72,'','','','_blank','',1552620009,1552620009,0,0,1,1),(20,'Quảng cáo phải',7,1,'2.png','png','image/png',202,67,'','','','_blank','',1552620027,1552620027,0,0,1,2),(21,'Quảng cáo phải',7,1,'3_1.png','png','image/png',219,211,'','','','_blank','',1552620082,1552620082,0,0,1,3),(22,'Quảng cáo phải',7,1,'4_1.jpg','jpg','image/jpeg',300,150,'','','','_blank','',1552620105,1552620105,0,0,1,4),(23,'Quảng cáo phải',7,1,'5_1.png','png','image/png',250,137,'','','','_blank','',1552620130,1552620130,0,0,1,5),(24,'Quảng cáo phải',7,1,'6.gif','gif','image/gif',188,118,'','','','_blank','',1552620148,1552620148,0,0,1,6),(25,'Quảng cáo phải2',8,1,'1.png','png','image/png',195,141,'','','','_blank','',1552621457,1552621457,0,0,1,1),(26,'Quảng cáo phải2',8,1,'2.jpg','jpg','image/jpeg',200,60,'','','','_blank','',1552621477,1552621477,0,0,1,2),(27,'Quảng cáo phải2',8,1,'3.jpg','jpg','image/jpeg',194,86,'','','','_blank','',1552621491,1552621491,0,0,1,3),(28,'Quảng cáo phải2',8,1,'4.png','png','image/png',199,93,'','','','_blank','',1552621508,1552621508,0,0,1,4),(29,'Quảng cáo phải2',8,1,'5.jpg','jpg','image/jpeg',180,75,'','','','_blank','',1552621524,1552621524,0,0,1,5),(30,'Quảng cáo phải2',8,1,'6.jpg','jpg','image/jpeg',201,67,'','','','_blank','',1552621544,1552621544,0,0,1,6),(31,'Quảng cáo phải2',8,1,'7.jpg','jpg','image/jpeg',180,50,'','','','_blank','',1552621557,1552621557,0,0,1,7),(32,'Quảng cáo phải2',8,1,'8.jpg','jpg','image/jpeg',180,75,'','','','_blank','',1552621571,1552621571,0,0,1,8),(33,'Quảng cáo phải2',8,1,'9.gif','gif','image/gif',192,82,'','','','_blank','',1552621588,1552621588,0,0,1,9),(34,'Quảng cáo phải2',8,1,'10.png','png','image/png',206,60,'','','','_blank','',1552621602,1552621602,0,0,1,10),(35,'Quảng cáo phải2',8,1,'11_1.png','png','image/png',199,72,'','','','_blank','',1552621617,1552621617,0,0,1,11),(36,'Banner',9,1,'huyen-qn_02_2.jpg','jpg','image/jpeg',1000,146,'','','','_blank','',1552633723,1552633723,0,0,1,1),(37,'LỄ HỘI ĐUA THUYỀN HUYỆN QUẢNG NINH 2017',10,1,'line-png-32_2.png','png','image/png',200,1,'','','','_blank','<iframe allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen=\"\" frameborder=\"0\" height=\"150\" src=\"https://www.youtube.com/embed/1Zh6PWb37Qw\" width=\"209\"></iframe>',1552900305,1552900260,0,0,1,1),(38,'Quảng cáo trên',11,1,'01-m-score_1444185113053_1448954205208.png','png','image/png',553,68,'','','','_blank','',1552986262,1552986262,0,0,1,1);
/*!40000 ALTER TABLE `nv4_banners_rows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_config`
--

DROP TABLE IF EXISTS `nv4_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_config` (
  `lang` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'sys',
  `module` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'global',
  `config_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `config_value` text COLLATE utf8mb4_unicode_ci,
  UNIQUE KEY `lang` (`lang`,`module`,`config_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_config`
--

LOCK TABLES `nv4_config` WRITE;
/*!40000 ALTER TABLE `nv4_config` DISABLE KEYS */;
INSERT INTO `nv4_config` VALUES ('sys','site','closed_site','0'),('sys','site','admin_theme','admin_default'),('sys','site','date_pattern','l, d/m/Y'),('sys','site','time_pattern','H:i'),('sys','site','online_upd','1'),('sys','site','statistic','1'),('sys','site','site_phone',''),('sys','site','mailer_mode',''),('sys','site','smtp_host','smtp.gmail.com'),('sys','site','smtp_ssl','1'),('sys','site','smtp_port','465'),('sys','site','verify_peer_ssl','1'),('sys','site','verify_peer_name_ssl','1'),('sys','site','smtp_username','user@gmail.com'),('sys','site','smtp_password',''),('sys','site','googleAnalyticsID',''),('sys','site','googleAnalyticsSetDomainName','0'),('sys','site','googleAnalyticsMethod','classic'),('sys','site','googleMapsAPI','AIzaSyC8ODAzZ75hsAufVBSffnwvKfTOT6TnnNQ'),('sys','site','searchEngineUniqueID',''),('sys','site','metaTagsOgp','1'),('sys','site','pageTitleMode','pagetitle'),('sys','site','description_length','170'),('sys','site','nv_unickmin','4'),('sys','site','nv_unickmax','20'),('sys','site','nv_upassmin','8'),('sys','site','nv_upassmax','32'),('sys','site','dir_forum',''),('sys','site','nv_unick_type','4'),('sys','site','nv_upass_type','3'),('sys','site','allowmailchange','1'),('sys','site','allowuserpublic','1'),('sys','site','allowquestion','0'),('sys','site','allowloginchange','0'),('sys','site','allowuserlogin','1'),('sys','site','allowuserloginmulti','0'),('sys','site','allowuserreg','2'),('sys','site','is_user_forum','0'),('sys','site','openid_servers',''),('sys','site','openid_processing','0'),('sys','site','user_check_pass_time','1800'),('sys','site','auto_login_after_reg','1'),('sys','site','whoviewuser','2'),('sys','site','ssl_https','0'),('sys','site','facebook_client_id',''),('sys','site','facebook_client_secret',''),('sys','site','google_client_id',''),('sys','site','google_client_secret',''),('sys','define','nv_gfx_num','6'),('sys','global','notification_active','1'),('sys','global','notification_autodel','15'),('sys','global','site_keywords','NukeViet, portal, mysql, php'),('sys','global','block_admin_ip','0'),('sys','global','admfirewall','0'),('sys','global','dump_autobackup','1'),('sys','global','dump_backup_ext','gz'),('sys','global','dump_backup_day','30'),('sys','global','gfx_chk','3'),('sys','global','file_allowed_ext','adobe,archives,audio,documents,flash,images,real,video'),('sys','global','forbid_extensions','php,php3,php4,php5,phtml,inc'),('sys','global','forbid_mimes',''),('sys','global','nv_max_size','2097152'),('sys','global','upload_checking_mode','strong'),('sys','global','upload_alt_require','1'),('sys','global','upload_auto_alt','1'),('sys','global','upload_chunk_size','0'),('sys','global','useactivate','2'),('sys','global','allow_sitelangs','vi'),('sys','global','read_type','0'),('sys','global','rewrite_enable','1'),('sys','global','rewrite_optional','1'),('sys','global','rewrite_endurl','/'),('sys','global','rewrite_exturl','.html'),('sys','global','rewrite_op_mod','news'),('sys','global','autocheckupdate','1'),('sys','global','autoupdatetime','24'),('sys','global','gzip_method','1'),('sys','global','authors_detail_main','0'),('sys','global','spadmin_add_admin','1'),('sys','global','timestamp','81'),('sys','global','captcha_type','1'),('sys','global','version','4.3.05'),('sys','global','cookie_httponly','1'),('sys','global','admin_check_pass_time','1800'),('sys','global','cookie_secure','0'),('sys','global','is_flood_blocker','1'),('sys','global','max_requests_60','40'),('sys','global','max_requests_300','150'),('sys','global','is_login_blocker','1'),('sys','global','login_number_tracking','5'),('sys','global','login_time_tracking','5'),('sys','global','login_time_ban','30'),('sys','global','nv_display_errors_list','1'),('sys','global','display_errors_list','1'),('sys','global','nv_auto_resize','1'),('sys','global','dump_interval','1'),('sys','global','cdn_url',''),('sys','global','two_step_verification','0'),('sys','global','recaptcha_sitekey',''),('sys','global','recaptcha_secretkey',''),('sys','global','recaptcha_type','image'),('sys','define','nv_gfx_width','150'),('sys','define','nv_gfx_height','40'),('sys','define','nv_max_width','1500'),('sys','define','nv_max_height','1500'),('sys','define','nv_live_cookie_time','31104000'),('sys','define','nv_live_session_time','0'),('sys','define','nv_anti_iframe','1'),('sys','define','nv_anti_agent','0'),('sys','define','nv_allowed_html_tags','embed, object, param, a, b, blockquote, br, caption, col, colgroup, div, em, h1, h2, h3, h4, h5, h6, hr, i, img, li, p, span, strong, s, sub, sup, table, tbody, td, th, tr, u, ul, ol, iframe, figure, figcaption, video, audio, source, track, code, pre'),('sys','define','nv_debug','0'),('vi','global','site_domain',''),('vi','global','site_name','Trang thông tin điện tử Quảng Ninh - Quảng Bình'),('vi','global','site_logo',''),('vi','global','site_banner',''),('vi','global','site_favicon',''),('vi','global','site_description','Chia sẻ thành công, kết nối đam mê'),('vi','global','site_keywords',''),('vi','global','theme_type','m,r'),('vi','global','site_theme','tintuc'),('vi','global','preview_theme',''),('vi','global','mobile_theme',''),('vi','global','site_home_module','news'),('vi','global','switch_mobi_des','0'),('vi','global','upload_logo',''),('vi','global','upload_logo_pos','bottomRight'),('vi','global','autologosize1','50'),('vi','global','autologosize2','40'),('vi','global','autologosize3','30'),('vi','global','autologomod',''),('vi','global','name_show','0'),('vi','global','cronjobs_next_time','1618885523'),('vi','global','disable_site_content','Vì lý do kỹ thuật website tạm ngưng hoạt động. Thành thật xin lỗi các bạn vì sự bất tiện này!'),('vi','seotools','prcservice',''),('vi','about','auto_postcomm','1'),('vi','about','allowed_comm','-1'),('vi','about','view_comm','6'),('vi','about','setcomm','4'),('vi','about','activecomm','0'),('vi','about','emailcomm','0'),('vi','about','adminscomm',''),('vi','about','sortcomm','0'),('vi','about','captcha','1'),('vi','about','perpagecomm','5'),('vi','about','timeoutcomm','360'),('vi','about','allowattachcomm','0'),('vi','about','alloweditorcomm','0'),('vi','news','indexfile','viewcat_main_right'),('vi','news','per_page','20'),('vi','news','st_links','10'),('vi','news','homewidth','100'),('vi','news','homeheight','150'),('vi','news','blockwidth','70'),('vi','news','blockheight','75'),('vi','news','imagefull','460'),('vi','news','copyright','Chú ý: Việc đăng lại bài viết trên ở website hoặc các phương tiện truyền thông khác mà không ghi rõ nguồn http://nukeviet.vn là vi phạm bản quyền'),('vi','news','showtooltip','1'),('vi','news','tooltip_position','bottom'),('vi','news','tooltip_length','150'),('vi','news','showhometext','1'),('vi','news','timecheckstatus','0'),('vi','news','config_source','0'),('vi','news','show_no_image',''),('vi','news','allowed_rating_point','1'),('vi','news','facebookappid',''),('vi','news','socialbutton','1'),('vi','news','alias_lower','1'),('vi','news','tags_alias','0'),('vi','news','auto_tags','0'),('vi','news','tags_remind','1'),('vi','news','keywords_tag','1'),('vi','news','copy_news','0'),('vi','news','structure_upload','Ym'),('vi','news','imgposition','2'),('vi','news','htmlhometext','0'),('vi','news','order_articles','1'),('vi','news','elas_use','0'),('vi','news','elas_host',''),('vi','news','elas_port','9200'),('vi','news','elas_index',''),('vi','news','instant_articles_active','0'),('vi','news','instant_articles_template','default'),('vi','news','instant_articles_httpauth','0'),('vi','news','instant_articles_username','chauquynh06@gmail.com'),('vi','news','instant_articles_password','cXZp2RBL8j0N7mszwkz7kg,,'),('vi','news','instant_articles_livetime','60'),('vi','news','instant_articles_gettime','120'),('vi','news','instant_articles_auto','1'),('vi','news','auto_postcomm','1'),('vi','news','allowed_comm','-1'),('vi','news','view_comm','6'),('vi','news','setcomm','4'),('vi','news','activecomm','1'),('vi','news','emailcomm','0'),('vi','news','adminscomm',''),('vi','news','sortcomm','0'),('vi','news','captcha','1'),('vi','news','perpagecomm','5'),('vi','news','timeoutcomm','360'),('vi','news','allowattachcomm','0'),('vi','news','alloweditorcomm','0'),('vi','news','frontend_edit_alias','1'),('vi','news','frontend_edit_layout','1'),('vi','contact','bodytext','Để không ngừng nâng cao chất lượng dịch vụ và đáp ứng tốt hơn nữa các yêu cầu của Quý khách, chúng tôi mong muốn nhận được các thông tin phản hồi. Nếu Quý khách có bất kỳ thắc mắc hoặc đóng góp nào, xin vui lòng liên hệ với chúng tôi theo thông tin dưới đây. Chúng tôi sẽ phản hồi lại Quý khách trong thời gian sớm nhất.'),('vi','contact','sendcopymode','0'),('vi','page','auto_postcomm','1'),('vi','page','allowed_comm','-1'),('vi','page','view_comm','6'),('vi','page','setcomm','4'),('vi','page','activecomm','0'),('vi','page','emailcomm','0'),('vi','page','adminscomm',''),('vi','page','sortcomm','0'),('vi','page','captcha','1'),('vi','page','perpagecomm','5'),('vi','page','timeoutcomm','360'),('vi','page','allowattachcomm','0'),('vi','page','alloweditorcomm','0'),('vi','siteterms','auto_postcomm','1'),('vi','siteterms','allowed_comm','-1'),('vi','siteterms','view_comm','6'),('vi','siteterms','setcomm','4'),('vi','siteterms','activecomm','0'),('vi','siteterms','emailcomm','0'),('vi','siteterms','adminscomm',''),('vi','siteterms','sortcomm','0'),('vi','siteterms','captcha','1'),('vi','siteterms','perpagecomm','5'),('vi','siteterms','timeoutcomm','360'),('vi','siteterms','allowattachcomm','0'),('vi','siteterms','alloweditorcomm','0'),('vi','freecontent','next_execute','0'),('sys','site','statistics_timezone','Asia/Bangkok'),('sys','site','site_email','webmaster@localhost'),('sys','global','error_set_logs','1'),('sys','global','error_send_email','webmaster@localhost'),('sys','global','site_lang','vi'),('sys','global','my_domains','localhost'),('sys','global','cookie_prefix','nv4'),('sys','global','session_prefix','nv4s_s1ZSWa'),('sys','global','site_timezone','byCountry'),('sys','global','proxy_blocker','0'),('sys','global','str_referer_blocker','0'),('sys','global','lang_multi','0'),('sys','global','lang_geo','0'),('sys','global','ftp_server','localhost'),('sys','global','ftp_port','21'),('sys','global','ftp_user_name',''),('sys','global','ftp_user_pass','YtHT9Sib1o02gXmacsTrnQ,,'),('sys','global','ftp_path','/'),('sys','global','ftp_check_login','0');
/*!40000 ALTER TABLE `nv4_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_cookies`
--

DROP TABLE IF EXISTS `nv4_cookies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_cookies` (
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `domain` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `expires` int(11) NOT NULL DEFAULT '0',
  `secure` tinyint(1) NOT NULL DEFAULT '0',
  UNIQUE KEY `cookiename` (`name`,`domain`,`path`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_cookies`
--

LOCK TABLES `nv4_cookies` WRITE;
/*!40000 ALTER TABLE `nv4_cookies` DISABLE KEYS */;
INSERT INTO `nv4_cookies` VALUES ('nv4c_b1Sp_ctr','MTE1Xzc2XzE5NF8xNzkuVk4=','.api.nukeviet.vn','/',1584434412,0),('nv4c_b1Sp_u_lang','YpTSHDtzEZZlnKC1-4-mDQ,,','.api.nukeviet.vn','/',1584002412,0),('nv4c_b1Sp_statistic_vi','VqU0t0f34gKY7iEXWVrvZg,,','.api.nukeviet.vn','/',1552900212,0),('nv4c_b1Sp_nvvithemever','y6z0B4S1YKW4aqQyD0bnVQ,,','.api.nukeviet.vn','/',1584002412,0);
/*!40000 ALTER TABLE `nv4_cookies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_counter`
--

DROP TABLE IF EXISTS `nv4_counter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_counter` (
  `c_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_val` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_update` int(11) NOT NULL DEFAULT '0',
  `c_count` int(11) unsigned NOT NULL DEFAULT '0',
  `vi_count` int(11) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `c_type` (`c_type`,`c_val`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_counter`
--

LOCK TABLES `nv4_counter` WRITE;
/*!40000 ALTER TABLE `nv4_counter` DISABLE KEYS */;
INSERT INTO `nv4_counter` VALUES ('c_time','start',0,0,0),('c_time','last',0,1618885217,0),('total','hits',1618885217,150,150),('year','2019',1577502048,128,128),('year','2020',1609407366,14,14),('year','2021',1618885217,8,8),('year','2022',0,0,0),('year','2023',0,0,0),('year','2024',0,0,0),('year','2025',0,0,0),('year','2026',0,0,0),('year','2027',0,0,0),('month','Jan',1609837825,1,1),('month','Feb',1614238456,5,5),('month','Mar',1614565141,1,1),('month','Apr',1618885217,1,1),('month','May',1589508657,0,0),('month','Jun',0,0,0),('month','Jul',1564017796,0,0),('month','Aug',1597305526,0,0),('month','Sep',1568689796,0,0),('month','Oct',1604112485,0,0),('month','Nov',1604457936,0,0),('month','Dec',1609407366,0,0),('day','01',1614565141,0,0),('day','02',1554194113,0,0),('day','03',0,0,0),('day','04',1604457936,0,0),('day','05',1609837825,0,0),('day','06',0,0,0),('day','07',1578363041,0,0),('day','08',0,0,0),('day','09',1578536241,0,0),('day','10',0,0,0),('day','11',1583893747,0,0),('day','12',1552405914,0,0),('day','13',1597305526,0,0),('day','14',1571015911,0,0),('day','15',1589508657,0,0),('day','16',1552727580,0,0),('day','17',1613552081,0,0),('day','18',1613617608,0,0),('day','19',1613696645,0,0),('day','20',1618885217,1,1),('day','21',1553157891,0,0),('day','22',1566445180,0,0),('day','23',1577069163,0,0),('day','24',0,0,0),('day','25',1614238456,0,0),('day','26',1577297581,0,0),('day','27',1553694867,0,0),('day','28',1577502048,0,0),('day','29',0,0,0),('day','30',0,0,0),('day','31',1609407366,0,0),('dayofweek','Sunday',0,0,0),('dayofweek','Monday',1614565141,27,27),('dayofweek','Tuesday',1618885217,29,29),('dayofweek','Wednesday',1613552081,15,15),('dayofweek','Thursday',1614238456,27,27),('dayofweek','Friday',1613696645,28,28),('dayofweek','Saturday',1604112485,24,24),('hour','00',0,0,0),('hour','01',1577297581,0,0),('hour','02',0,0,0),('hour','03',0,0,0),('hour','04',0,0,0),('hour','05',0,0,0),('hour','06',0,0,0),('hour','07',1553473277,0,0),('hour','08',1613696645,0,0),('hour','09',1618885217,1,1),('hour','10',1614223812,0,0),('hour','11',1553315491,0,0),('hour','12',1553060212,0,0),('hour','13',1573800823,0,0),('hour','14',1614238456,0,0),('hour','15',1613552081,0,0),('hour','16',1609837825,0,0),('hour','17',1558087742,0,0),('hour','18',1555327413,0,0),('hour','19',1553516675,0,0),('hour','20',1554385963,0,0),('hour','21',1554388658,0,0),('hour','22',1562254141,0,0),('hour','23',1554395869,0,0),('bot','googlebot',0,0,0),('bot','msnbot',0,0,0),('bot','bingbot',0,0,0),('bot','yahooslurp',0,0,0),('bot','w3cvalidator',0,0,0),('browser','opera',0,0,0),('browser','operamini',0,0,0),('browser','webtv',0,0,0),('browser','explorer',0,0,0),('browser','edge',0,0,0),('browser','pocket',0,0,0),('browser','konqueror',0,0,0),('browser','icab',0,0,0),('browser','omniweb',0,0,0),('browser','firebird',0,0,0),('browser','firefox',1568689336,1,1),('browser','iceweasel',0,0,0),('browser','shiretoko',0,0,0),('browser','mozilla',0,0,0),('browser','amaya',0,0,0),('browser','lynx',0,0,0),('browser','safari',0,0,0),('browser','iphone',1604112485,2,2),('browser','ipod',0,0,0),('browser','ipad',0,0,0),('browser','chrome',1618885217,141,141),('browser','cococ',0,0,0),('browser','android',0,0,0),('browser','googlebot',0,0,0),('browser','yahooslurp',0,0,0),('browser','w3cvalidator',0,0,0),('browser','blackberry',0,0,0),('browser','icecat',0,0,0),('browser','nokias60',0,0,0),('browser','nokia',0,0,0),('browser','msn',0,0,0),('browser','msnbot',0,0,0),('browser','bingbot',0,0,0),('browser','netscape',0,0,0),('browser','galeon',0,0,0),('browser','netpositive',0,0,0),('browser','phoenix',0,0,0),('browser','Mobile',0,0,0),('browser','bots',0,0,0),('browser','Unknown',1573799489,6,6),('os','unknown',1573799489,6,6),('os','win',0,0,0),('os','win10',1614238456,85,85),('os','win8',0,0,0),('os','win7',1618885217,42,42),('os','win2003',0,0,0),('os','winvista',0,0,0),('os','wince',0,0,0),('os','winxp',0,0,0),('os','win2000',0,0,0),('os','apple',1577297581,2,2),('os','linux',1604112237,2,2),('os','os2',0,0,0),('os','beos',0,0,0),('os','iphone',1604112485,2,2),('os','ipod',0,0,0),('os','ipad',0,0,0),('os','blackberry',0,0,0),('os','nokia',0,0,0),('os','freebsd',0,0,0),('os','openbsd',0,0,0),('os','netbsd',0,0,0),('os','sunos',0,0,0),('os','opensolaris',0,0,0),('os','android',1577850117,11,11),('os','irix',0,0,0),('os','palm',0,0,0),('country','AD',0,0,0),('country','AE',0,0,0),('country','AF',0,0,0),('country','AG',0,0,0),('country','AI',0,0,0),('country','AL',0,0,0),('country','AM',0,0,0),('country','AN',0,0,0),('country','AO',0,0,0),('country','AQ',0,0,0),('country','AR',0,0,0),('country','AS',0,0,0),('country','AT',0,0,0),('country','AU',0,0,0),('country','AW',0,0,0),('country','AZ',0,0,0),('country','BA',0,0,0),('country','BB',0,0,0),('country','BD',0,0,0),('country','BE',0,0,0),('country','BF',0,0,0),('country','BG',0,0,0),('country','BH',0,0,0),('country','BI',0,0,0),('country','BJ',0,0,0),('country','BM',0,0,0),('country','BN',0,0,0),('country','BO',0,0,0),('country','BR',0,0,0),('country','BS',0,0,0),('country','BT',0,0,0),('country','BW',0,0,0),('country','BY',0,0,0),('country','BZ',0,0,0),('country','CA',0,0,0),('country','CD',0,0,0),('country','CF',0,0,0),('country','CG',0,0,0),('country','CH',0,0,0),('country','CI',0,0,0),('country','CK',0,0,0),('country','CL',0,0,0),('country','CM',0,0,0),('country','CN',0,0,0),('country','CO',0,0,0),('country','CR',0,0,0),('country','CS',0,0,0),('country','CU',0,0,0),('country','CV',0,0,0),('country','CY',0,0,0),('country','CZ',0,0,0),('country','DE',0,0,0),('country','DJ',0,0,0),('country','DK',0,0,0),('country','DM',0,0,0),('country','DO',0,0,0),('country','DZ',0,0,0),('country','EC',0,0,0),('country','EE',0,0,0),('country','EG',0,0,0),('country','ER',0,0,0),('country','ES',0,0,0),('country','ET',0,0,0),('country','EU',0,0,0),('country','FI',0,0,0),('country','FJ',0,0,0),('country','FK',0,0,0),('country','FM',0,0,0),('country','FO',0,0,0),('country','FR',0,0,0),('country','GA',0,0,0),('country','GB',0,0,0),('country','GD',0,0,0),('country','GE',0,0,0),('country','GF',0,0,0),('country','GH',0,0,0),('country','GI',0,0,0),('country','GL',0,0,0),('country','GM',0,0,0),('country','GN',0,0,0),('country','GP',0,0,0),('country','GQ',0,0,0),('country','GR',0,0,0),('country','GS',0,0,0),('country','GT',0,0,0),('country','GU',0,0,0),('country','GW',0,0,0),('country','GY',0,0,0),('country','HK',0,0,0),('country','HN',0,0,0),('country','HR',0,0,0),('country','HT',0,0,0),('country','HU',0,0,0),('country','ID',0,0,0),('country','IE',1568689787,1,1),('country','IL',0,0,0),('country','IN',0,0,0),('country','IO',0,0,0),('country','IQ',0,0,0),('country','IR',0,0,0),('country','IS',0,0,0),('country','IT',0,0,0),('country','JM',0,0,0),('country','JO',0,0,0),('country','JP',0,0,0),('country','KE',0,0,0),('country','KG',0,0,0),('country','KH',0,0,0),('country','KI',0,0,0),('country','KM',0,0,0),('country','KN',0,0,0),('country','KR',0,0,0),('country','KW',0,0,0),('country','KY',0,0,0),('country','KZ',0,0,0),('country','LA',0,0,0),('country','LB',0,0,0),('country','LC',0,0,0),('country','LI',0,0,0),('country','LK',0,0,0),('country','LR',0,0,0),('country','LS',0,0,0),('country','LT',0,0,0),('country','LU',0,0,0),('country','LV',0,0,0),('country','LY',0,0,0),('country','MA',0,0,0),('country','MC',0,0,0),('country','MD',0,0,0),('country','MG',0,0,0),('country','MH',0,0,0),('country','MK',0,0,0),('country','ML',0,0,0),('country','MM',0,0,0),('country','MN',0,0,0),('country','MO',0,0,0),('country','MP',0,0,0),('country','MQ',0,0,0),('country','MR',0,0,0),('country','MT',0,0,0),('country','MU',0,0,0),('country','MV',0,0,0),('country','MW',0,0,0),('country','MX',0,0,0),('country','MY',0,0,0),('country','MZ',0,0,0),('country','NA',0,0,0),('country','NC',0,0,0),('country','NE',0,0,0),('country','NF',0,0,0),('country','NG',0,0,0),('country','NI',0,0,0),('country','NL',0,0,0),('country','NO',0,0,0),('country','NP',0,0,0),('country','NR',0,0,0),('country','NU',0,0,0),('country','NZ',0,0,0),('country','OM',0,0,0),('country','PA',0,0,0),('country','PE',0,0,0),('country','PF',0,0,0),('country','PG',0,0,0),('country','PH',0,0,0),('country','PK',0,0,0),('country','PL',0,0,0),('country','PR',0,0,0),('country','PS',0,0,0),('country','PT',0,0,0),('country','PW',0,0,0),('country','PY',0,0,0),('country','QA',0,0,0),('country','RE',0,0,0),('country','RO',0,0,0),('country','RU',0,0,0),('country','RW',0,0,0),('country','SA',0,0,0),('country','SB',0,0,0),('country','SC',0,0,0),('country','SD',0,0,0),('country','SE',0,0,0),('country','SG',1604112237,2,2),('country','SI',0,0,0),('country','SK',0,0,0),('country','SL',0,0,0),('country','SM',0,0,0),('country','SN',0,0,0),('country','SO',0,0,0),('country','SR',0,0,0),('country','ST',0,0,0),('country','SV',0,0,0),('country','SY',0,0,0),('country','SZ',0,0,0),('country','TD',0,0,0),('country','TF',0,0,0),('country','TG',0,0,0),('country','TH',0,0,0),('country','TJ',0,0,0),('country','TK',0,0,0),('country','TL',0,0,0),('country','TM',0,0,0),('country','TN',0,0,0),('country','TO',0,0,0),('country','TR',0,0,0),('country','TT',0,0,0),('country','TV',0,0,0),('country','TW',0,0,0),('country','TZ',0,0,0),('country','UA',0,0,0),('country','UG',0,0,0),('country','US',1573799489,6,6),('country','UY',0,0,0),('country','UZ',0,0,0),('country','VA',0,0,0),('country','VC',0,0,0),('country','VE',0,0,0),('country','VG',0,0,0),('country','VI',0,0,0),('country','VN',1618885217,83,83),('country','VU',0,0,0),('country','WS',0,0,0),('country','YE',0,0,0),('country','YT',0,0,0),('country','YU',0,0,0),('country','ZA',0,0,0),('country','ZM',0,0,0),('country','ZW',0,0,0),('country','ZZ',1553042080,58,58),('country','unkown',0,0,0);
/*!40000 ALTER TABLE `nv4_counter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_cronjobs`
--

DROP TABLE IF EXISTS `nv4_cronjobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_cronjobs` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `start_time` int(11) unsigned NOT NULL DEFAULT '0',
  `inter_val` int(11) unsigned NOT NULL DEFAULT '0',
  `inter_val_type` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0: Lặp lại sau thời điểm bắt đầu thực tế, 1:lặp lại sau thời điểm bắt đầu trong CSDL',
  `run_file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `run_func` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `del` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_sys` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `act` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `last_time` int(11) unsigned NOT NULL DEFAULT '0',
  `last_result` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `vi_cron_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `is_sys` (`is_sys`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_cronjobs`
--

LOCK TABLES `nv4_cronjobs` WRITE;
/*!40000 ALTER TABLE `nv4_cronjobs` DISABLE KEYS */;
INSERT INTO `nv4_cronjobs` VALUES (1,1552401040,5,0,'online_expired_del.php','cron_online_expired_del','',0,1,1,1618885223,1,'Xóa các dòng ghi trạng thái online đã cũ trong CSDL'),(2,1552401040,1440,0,'dump_autobackup.php','cron_dump_autobackup','',0,1,1,1618885223,1,'Tự động lưu CSDL'),(3,1552401040,60,0,'temp_download_destroy.php','cron_auto_del_temp_download','',0,1,1,1618885223,1,'Xóa các file tạm trong thư mục tmp'),(4,1552401040,30,0,'ip_logs_destroy.php','cron_del_ip_logs','',0,1,1,1618885223,1,'Xóa IP log files, Xóa các file nhật ký truy cập'),(5,1552401040,1440,0,'error_log_destroy.php','cron_auto_del_error_log','',0,1,1,1618885223,1,'Xóa các file error_log quá hạn'),(6,1552401040,360,0,'error_log_sendmail.php','cron_auto_sendmail_error_log','',0,1,0,0,0,'Gửi email các thông báo lỗi cho admin'),(7,1552401040,60,0,'ref_expired_del.php','cron_ref_expired_del','',0,1,1,1618885223,1,'Xóa các referer quá hạn'),(8,1552401040,60,0,'check_version.php','cron_auto_check_version','',0,1,1,1618885223,1,'Kiểm tra phiên bản NukeViet'),(9,1552401040,1440,0,'notification_autodel.php','cron_notification_autodel','',0,1,1,1618885223,1,'Xóa thông báo cũ');
/*!40000 ALTER TABLE `nv4_cronjobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_extension_files`
--

DROP TABLE IF EXISTS `nv4_extension_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_extension_files` (
  `idfile` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'other',
  `title` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `lastmodified` int(11) unsigned NOT NULL DEFAULT '0',
  `duplicate` smallint(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`idfile`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_extension_files`
--

LOCK TABLES `nv4_extension_files` WRITE;
/*!40000 ALTER TABLE `nv4_extension_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `nv4_extension_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_ips`
--

DROP TABLE IF EXISTS `nv4_ips`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_ips` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `type` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `ip` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mask` tinyint(4) NOT NULL DEFAULT '0',
  `area` tinyint(3) NOT NULL,
  `begintime` int(11) DEFAULT NULL,
  `endtime` int(11) DEFAULT NULL,
  `notice` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ip` (`ip`,`type`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_ips`
--

LOCK TABLES `nv4_ips` WRITE;
/*!40000 ALTER TABLE `nv4_ips` DISABLE KEYS */;
INSERT INTO `nv4_ips` VALUES (1,1,'::1',0,1,1552401114,0,'');
/*!40000 ALTER TABLE `nv4_ips` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_language`
--

DROP TABLE IF EXISTS `nv4_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_language` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `idfile` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `langtype` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'lang_module',
  `lang_key` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `filelang` (`idfile`,`lang_key`,`langtype`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_language`
--

LOCK TABLES `nv4_language` WRITE;
/*!40000 ALTER TABLE `nv4_language` DISABLE KEYS */;
/*!40000 ALTER TABLE `nv4_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_language_file`
--

DROP TABLE IF EXISTS `nv4_language_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_language_file` (
  `idfile` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `module` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_file` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `langtype` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'lang_module',
  PRIMARY KEY (`idfile`),
  UNIQUE KEY `module` (`module`,`admin_file`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_language_file`
--

LOCK TABLES `nv4_language_file` WRITE;
/*!40000 ALTER TABLE `nv4_language_file` DISABLE KEYS */;
/*!40000 ALTER TABLE `nv4_language_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_logs`
--

DROP TABLE IF EXISTS `nv4_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note_action` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_acess` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `userid` mediumint(8) unsigned NOT NULL,
  `log_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1362 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_logs`
--

LOCK TABLES `nv4_logs` WRITE;
/*!40000 ALTER TABLE `nv4_logs` DISABLE KEYS */;
INSERT INTO `nv4_logs` VALUES (1,'vi','login','[admin] Đăng nhập',' Client IP:::1','',0,1552401126),(2,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1552401237),(3,'vi','themes','Thiết lập giao diện theme: \"demo\"','','',1,1552401276),(4,'vi','themes','Kích hoạt theme: \"demo\"','','',1,1552401278),(5,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1552401684),(6,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1552401812),(7,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1552401914),(8,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1552401960),(9,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1552402001),(10,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1552402003),(11,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1552402071),(12,'vi','login','[admin] Thoát khỏi tài khoản Quản trị',' Client IP:::1','',0,1552404065),(13,'vi','login','[admin] Đăng nhập',' Client IP:::1','',0,1552404218),(14,'vi','themes','Thiết lập layout theme: \"demo\"','','',1,1552404274),(15,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1552404425),(16,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1552404872),(17,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1552405226),(18,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1552405339),(19,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1552405398),(20,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1552406333),(21,'vi','login','[admin] Đăng nhập',' Client IP:::1','',0,1552488923),(22,'vi','themes','Thiết lập giao diện theme: \"demo2\"','','',1,1552489147),(23,'vi','themes','Kích hoạt theme: \"demo2\"','','',1,1552489148),(24,'vi','themes','Kích hoạt theme: \"default\"','','',1,1552489290),(25,'vi','themes','Kích hoạt theme: \"demo\"','','',1,1552489380),(26,'vi','themes','Kích hoạt theme: \"demo2\"','','',1,1552489382),(27,'vi','themes','Thiết lập giao diện theme: \"quangninh\"','','',1,1552489505),(28,'vi','themes','Kích hoạt theme: \"quangninh\"','','',1,1552489507),(29,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1552489838),(30,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1552490728),(31,'vi','banners','log_edit_banner','bannerid 3','',1,1552490863),(32,'vi','themes','Kích hoạt theme: \"demo\"','','',1,1552490984),(33,'vi','login','[chauquynh06@gmail.com] Đăng nhập',' Client IP:::1','',0,1552541855),(34,'vi','themes','Thiết lập giao diện theme: \"phubinh\"','','',1,1552541882),(35,'vi','themes','Kích hoạt theme: \"phubinh\"','','',1,1552541885),(36,'vi','themes','Kích hoạt theme: \"quangninh\"','','',1,1552542132),(37,'vi','themes','Kích hoạt theme: \"default\"','','',1,1552542169),(38,'vi','themes','Thiết lập giao diện theme: \"demodemo\"','','',1,1552542316),(39,'vi','themes','Kích hoạt theme: \"demodemo\"','','',1,1552542318),(40,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1552542666),(41,'vi','banners','log_add_plan','planid 4','',1,1552542732),(42,'vi','banners','log_add_banner','bannerid 4','',1,1552542747),(43,'vi','themes','Thêm block','Name : global banners','',1,1552542777),(44,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1552543219),(45,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1552543339),(46,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1552543652),(47,'vi','themes','Kích hoạt theme: \"demo\"','','',1,1552543760),(48,'vi','themes','Kích hoạt theme: \"quangninh\"','','',1,1552543771),(49,'vi','themes','Kích hoạt theme: \"demodemo\"','','',1,1552543812),(50,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1552544415),(51,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1552544559),(52,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1552544614),(53,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1552544739),(54,'vi','login','[chauquynh06@gmail.com] Đăng nhập',' Client IP:::1','',0,1552569134),(55,'vi','login','[admin] Thoát khỏi tài khoản Quản trị',' Client IP:::1','',0,1552570940),(56,'vi','login','[chauquynh06@gmail.com] Đăng nhập',' Client IP:::1','',0,1552611078),(57,'vi','themes','Kích hoạt theme: \"demo2\"','','',1,1552611169),(58,'vi','themes','Thêm block','Name : global banners','',1,1552611202),(59,'vi','themes','Thêm block','Name : global about','',1,1552611421),(60,'vi','themes','Cập nhật lại vị trí các block','reset position all block','',1,1552611441),(61,'vi','themes','Sửa block','Name : global about','',1,1552611543),(62,'vi','themes','Sửa block','Name : Thông tin nổi bật','',1,1552611620),(63,'vi','themes','Sửa block','Name : Tin xem nhiều','',1,1552611741),(64,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1552611905),(65,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1552612150),(66,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1552612489),(67,'vi','themes','Sửa block','Name : Thông tin nổi bật','',1,1552612619),(68,'vi','themes','Kích hoạt theme: \"demo\"','','',1,1552612742),(69,'vi','themes','Kích hoạt theme: \"demo2\"','','',1,1552612759),(70,'vi','themes','Sửa block','Name : Thông tin nổi bật','',1,1552612909),(71,'vi','login','[chauquynh06@gmail.com] Đăng nhập',' Client IP:::1','',0,1552616584),(72,'vi','banners','log_add_plan','planid 5','',1,1552616821),(73,'vi','banners','log_add_banner','bannerid 5','',1,1552616849),(74,'vi','themes','Thêm block','Name : global banners','',1,1552616872),(75,'vi','themes','Cập nhật lại vị trí các block','reset position all block','',1,1552616898),(76,'vi','themes','Cập nhật lại vị trí các block','reset position all block','',1,1552616924),(77,'vi','themes','Sửa block','Name : global banners','',1,1552616942),(78,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1552617114),(79,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1552617216),(80,'vi','themes','Thêm block','Name : global metismenu','',1,1552617353),(81,'vi','themes','Cập nhật lại vị trí các block','reset position all block','',1,1552617389),(82,'vi','themes','Sửa block','Name : global metismenu','',1,1552617424),(83,'vi','themes','Cập nhật lại vị trí các block','reset position all block','',1,1552617493),(84,'vi','banners','log_add_plan','planid 6','',1,1552617930),(85,'vi','banners','log_add_banner','bannerid 6','',1,1552617953),(86,'vi','banners','log_add_banner','bannerid 7','',1,1552617984),(87,'vi','banners','log_add_banner','bannerid 8','',1,1552617998),(88,'vi','banners','log_add_banner','bannerid 9','',1,1552618010),(89,'vi','banners','log_add_banner','bannerid 10','',1,1552618022),(90,'vi','banners','log_add_banner','bannerid 11','',1,1552618036),(91,'vi','banners','log_add_banner','bannerid 12','',1,1552618049),(92,'vi','banners','log_add_banner','bannerid 13','',1,1552618061),(93,'vi','banners','log_add_banner','bannerid 14','',1,1552618109),(94,'vi','banners','log_add_banner','bannerid 15','',1,1552618121),(95,'vi','banners','log_add_banner','bannerid 16','',1,1552618142),(96,'vi','banners','log_add_banner','bannerid 17','',1,1552618157),(97,'vi','banners','log_add_banner','bannerid 18','',1,1552618167),(98,'vi','themes','Thêm block','Name : global banners','',1,1552618194),(99,'vi','themes','Cập nhật lại vị trí các block','reset position all block','',1,1552618245),(100,'vi','themes','Cập nhật lại vị trí các block','reset position all block','',1,1552618343),(101,'vi','themes','Cập nhật lại vị trí các block','reset position all block','',1,1552618381),(102,'vi','voting','Sửa thăm dò của bạn','Theo bạn thông tin nội dung website thế nào ?','',1,1552618557),(103,'vi','voting','log_del_vote','votingid 2','',1,1552618571),(104,'vi','voting','Sửa thăm dò của bạn','Theo bạn thông tin nội dung website thế nào ?','',1,1552618591),(105,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1552618844),(106,'vi','themes','Sửa block','Name : Tin xem nhiều','',1,1552619144),(107,'vi','themes','Sửa block','Name : Thông tin nổi bật','',1,1552619155),(108,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1552619301),(109,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1552619370),(110,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1552619452),(111,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1552619553),(112,'vi','themes','Sửa block','Name : global banners','',1,1552619680),(113,'vi','themes','Sửa block','Name : global banners','',1,1552619729),(114,'vi','themes','Sửa block','Name : global banners','',1,1552619743),(115,'vi','banners','log_add_plan','planid 7','',1,1552619974),(116,'vi','banners','log_add_banner','bannerid 19','',1,1552620009),(117,'vi','banners','log_add_banner','bannerid 20','',1,1552620027),(118,'vi','banners','log_add_banner','bannerid 21','',1,1552620082),(119,'vi','banners','log_add_banner','bannerid 22','',1,1552620105),(120,'vi','banners','log_add_banner','bannerid 23','',1,1552620130),(121,'vi','banners','log_add_banner','bannerid 24','',1,1552620148),(122,'vi','themes','Thêm block','Name : global banners','',1,1552620218),(123,'vi','themes','Cập nhật lại vị trí các block','reset position all block','',1,1552620261),(124,'vi','themes','Cập nhật lại vị trí các block','reset position all block','',1,1552620352),(125,'vi','themes','Cập nhật lại vị trí các block','reset position all block','',1,1552620375),(126,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1552620490),(127,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1552620535),(128,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1552620679),(129,'vi','themes','Thêm block','Name : Đăng nhập hệ thống QLVB','',1,1552620810),(130,'vi','themes','Sửa block','Name : Đăng nhập hệ thống QLVB','',1,1552620835),(131,'vi','themes','Sửa block','Name : Đăng nhập hệ thống QLVB','',1,1552620847),(132,'vi','login','[admin] Thoát khỏi tài khoản Quản trị',' Client IP:::1','',0,1552620853),(133,'vi','users','[admin] Đăng nhập theo kiểu thông thường',' Client IP:::1','',0,1552620874),(134,'vi','login','[chauquynh06@gmail.com] Đăng nhập',' Client IP:::1','',0,1552620904),(135,'vi','themes','Thêm block','Name : global metismenu','',1,1552620952),(136,'vi','themes','Thêm block','Name : global bootstrap','',1,1552621013),(137,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1552621055),(138,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1552621082),(139,'vi','banners','log_add_plan','planid 8','',1,1552621438),(140,'vi','banners','log_add_banner','bannerid 25','',1,1552621457),(141,'vi','banners','log_add_banner','bannerid 26','',1,1552621477),(142,'vi','banners','log_add_banner','bannerid 27','',1,1552621491),(143,'vi','banners','log_add_banner','bannerid 28','',1,1552621508),(144,'vi','banners','log_add_banner','bannerid 29','',1,1552621524),(145,'vi','banners','log_add_banner','bannerid 30','',1,1552621544),(146,'vi','banners','log_add_banner','bannerid 31','',1,1552621557),(147,'vi','banners','log_add_banner','bannerid 32','',1,1552621571),(148,'vi','banners','log_add_banner','bannerid 33','',1,1552621588),(149,'vi','banners','log_add_banner','bannerid 34','',1,1552621602),(150,'vi','banners','log_add_banner','bannerid 35','',1,1552621617),(151,'vi','themes','Thêm block','Name : global banners','',1,1552621645),(152,'vi','themes','Cập nhật lại vị trí các block','reset position all block','',1,1552621684),(153,'vi','banners','log_edit_banner','bannerid 3','',1,1552622161),(154,'vi','login','[chauquynh06@gmail.com] Đăng nhập',' Client IP:::1','',0,1552633589),(155,'vi','banners','log_add_plan','planid 9','',1,1552633693),(156,'vi','banners','log_add_banner','bannerid 36','',1,1552633723),(157,'vi','themes','Sửa block','Name : global banners','',1,1552633769),(158,'vi','login','[chauquynh06@gmail.com] Đăng nhập',' Client IP:::1','',0,1552639395),(159,'vi','login','[admin] Thoát khỏi tài khoản Quản trị',' Client IP:::1','',0,1552641198),(160,'vi','login','[chauquynh06@gmail.com] Đăng nhập',' Client IP:::1','',0,1552642391),(161,'vi','themes','Thêm block','Name : Thống kê','',1,1552642976),(162,'vi','themes','Sửa block','Name : Thống kê','',1,1552643053),(163,'vi','themes','Sửa block','Name : Thống kê','',1,1552643072),(164,'vi','login','[chauquynh06@gmail.com] Đăng nhập',' Client IP:::1','',0,1552696952),(165,'vi','themes','Thiết lập giao diện theme: \"tintuc\"','','',1,1552697004),(166,'vi','themes','Kích hoạt theme: \"tintuc\"','','',1,1552697006),(167,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1552698612),(168,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1552699971),(169,'vi','login','[chauquynh06@gmail.com] Đăng nhập',' Client IP:::1','',0,1552700227),(170,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1552700360),(171,'vi','themes','Sửa block','Name : Copyright','',1,1552703069),(172,'vi','themes','Thêm block','Name : Tin tiêu điểm','',1,1552703664),(173,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1552703769),(174,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1552704059),(175,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1552704214),(176,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1552704277),(177,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1552704321),(178,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1552704396),(179,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1552704445),(180,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1552704525),(181,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1552704601),(182,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1552704681),(183,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1552704721),(184,'vi','themes','Kích hoạt theme: \"demo2\"','','',1,1552704858),(185,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1552705238),(186,'vi','themes','Kích hoạt theme: \"tintuc\"','','',1,1552705393),(187,'vi','themes','Sửa block','Name : Tin tiêu điểm','',1,1552705453),(188,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1552705689),(189,'vi','themes','Sửa block','Name : Tin tiêu điểm','',1,1552705903),(190,'vi','themes','Sửa block','Name : Tin mới nhất','',1,1552706203),(191,'vi','themes','Sửa block','Name : Tin mới nhất','',1,1552706346),(192,'vi','themes','Sửa block','Name : Tin mới nhất','',1,1552706362),(193,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1552706443),(194,'vi','themes','Thêm block','Name : module block news','',1,1552706525),(195,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1552706695),(196,'vi','themes','Sửa block','Name : Thông tin nổi bật','',1,1552706931),(197,'vi','themes','Kích hoạt theme: \"demo2\"','','',1,1552706984),(198,'vi','themes','Sửa block','Name : Tin tiêu điểm','',1,1552707021),(199,'vi','themes','Kích hoạt theme: \"tintuc\"','','',1,1552707036),(200,'vi','themes','Thêm block','Name : module block news','',1,1552707067),(201,'vi','themes','Sửa block','Name : văn bản mới','',1,1552707101),(202,'vi','login','[chauquynh06@gmail.com] Đăng nhập',' Client IP:::1','',0,1552719909),(203,'vi','update','Nâng cấp bắt đầu','14:06:31_16-03-2019','',1,1552719991),(204,'vi','update','Sao lưu CSDL dạng sql','SUCCESS','',1,1552719991),(205,'vi','update','Nâng cấp bắt đầu','14:06:40_16-03-2019','',1,1552720000),(206,'vi','update','Sao lưu các file thay đổi','SUCCESS','',1,1552720000),(207,'vi','update','Nâng cấp bắt đầu','14:06:59_16-03-2019','',1,1552720019),(208,'vi','update','Tải về bản backup các file thay đổi','SUCCESS','',1,1552720019),(209,'vi','update','Sao lưu các file thay đổi','SUCCESS','',1,1552720036),(210,'vi','update','Tải về bản backup các file thay đổi','SUCCESS','',1,1552720039),(211,'vi','update','Gỡ bỏ Google Plus','SUCCESS','',1,1552720065),(212,'vi','update','Cập nhật module users lên 4.3.05','SUCCESS','',1,1552720066),(213,'vi','update','Cập nhật CSDL lên phiên bản 4.3.05','SUCCESS','',1,1552720068),(214,'vi','update','Di chuyển file admin/authors/add.php','SUCCESS','',1,1552720083),(215,'vi','update','Di chuyển file admin/authors/edit.php','SUCCESS','',1,1552720083),(216,'vi','update','Di chuyển file admin/authors/main.php','SUCCESS','',1,1552720083),(217,'vi','update','Di chuyển file admin/extensions/manage.php','SUCCESS','',1,1552720083),(218,'vi','update','Di chuyển file admin/extensions/upload.php','SUCCESS','',1,1552720083),(219,'vi','update','Di chuyển file admin/index.php','SUCCESS','',1,1552720083),(220,'vi','update','Di chuyển file admin/language/check.php','SUCCESS','',1,1552720083),(221,'vi','update','Di chuyển file admin/language/edit.php','SUCCESS','',1,1552720083),(222,'vi','update','Di chuyển file admin/language/functions.php','SUCCESS','',1,1552720083),(223,'vi','update','Di chuyển file admin/language/interface.php','SUCCESS','',1,1552720083),(224,'vi','update','Di chuyển file admin/language/main.php','SUCCESS','',1,1552720083),(225,'vi','update','Di chuyển file admin/language/read.php','SUCCESS','',1,1552720083),(226,'vi','update','Di chuyển file admin/language/write.php','SUCCESS','',1,1552720083),(227,'vi','update','Di chuyển file admin/modules/del.php','SUCCESS','',1,1552720083),(228,'vi','update','Di chuyển file admin/modules/functions.php','SUCCESS','',1,1552720083),(229,'vi','update','Di chuyển file admin/modules/setup.php','SUCCESS','',1,1552720083),(230,'vi','update','Di chuyển file admin/modules/show.php','SUCCESS','',1,1552720083),(231,'vi','update','Di chuyển file admin/seotools/admin.menu.php','SUCCESS','',1,1552720083),(232,'vi','update','Di chuyển file admin/seotools/functions.php','SUCCESS','',1,1552720083),(233,'vi','update','Di chuyển file admin/seotools/main.php','SUCCESS','',1,1552720083),(234,'vi','update','Di chuyển file admin/seotools/robots.php','SUCCESS','',1,1552720083),(235,'vi','update','Di chuyển file admin/settings/cronjobs.php','SUCCESS','',1,1552720083),(236,'vi','update','Di chuyển file admin/settings/cronjobs_add.php','SUCCESS','',1,1552720083),(237,'vi','update','Di chuyển file admin/settings/cronjobs_del.php','SUCCESS','',1,1552720083),(238,'vi','update','Di chuyển file admin/settings/cronjobs_edit.php','SUCCESS','',1,1552720083),(239,'vi','update','Di chuyển file admin/settings/functions.php','SUCCESS','',1,1552720083),(240,'vi','update','Di chuyển file admin/settings/plugin.php','SUCCESS','',1,1552720083),(241,'vi','update','Di chuyển file admin/settings/security.php','SUCCESS','',1,1552720083),(242,'vi','update','Di chuyển file admin/settings/system.php','SUCCESS','',1,1552720083),(243,'vi','update','Di chuyển file admin/siteinfo/logs.php','SUCCESS','',1,1552720083),(244,'vi','update','Di chuyển file admin/themes/activatetheme.php','SUCCESS','',1,1552720083),(245,'vi','update','Di chuyển file admin/themes/main.php','SUCCESS','',1,1552720083),(246,'vi','update','Di chuyển file admin/upload/functions.php','SUCCESS','',1,1552720083),(247,'vi','update','Di chuyển file admin/upload/main.php','SUCCESS','',1,1552720083),(248,'vi','update','Di chuyển file admin/upload/upload.php','SUCCESS','',1,1552720083),(249,'vi','update','Di chuyển file admin/webtools/checkupdate.php','SUCCESS','',1,1552720083),(250,'vi','update','Di chuyển file admin/webtools/statistics.php','SUCCESS','',1,1552720083),(251,'vi','update','Di chuyển file assets/editors/ckeditor/LICENSE.md','SUCCESS','',1,1552720083),(252,'vi','update','Di chuyển file assets/editors/ckeditor/adapters/jquery.js','SUCCESS','',1,1552720083),(253,'vi','update','Di chuyển file assets/editors/ckeditor/build-config.js','SUCCESS','',1,1552720083),(254,'vi','update','Di chuyển file assets/editors/ckeditor/ckeditor.js','SUCCESS','',1,1552720083),(255,'vi','update','Di chuyển file assets/editors/ckeditor/contents.css','SUCCESS','',1,1552720083),(256,'vi','update','Di chuyển file assets/editors/ckeditor/lang/en.js','SUCCESS','',1,1552720083),(257,'vi','update','Di chuyển file assets/editors/ckeditor/lang/fr.js','SUCCESS','',1,1552720083),(258,'vi','update','Di chuyển file assets/editors/ckeditor/lang/vi.js','SUCCESS','',1,1552720083),(259,'vi','update','Di chuyển file assets/editors/ckeditor/nv.php','SUCCESS','',1,1552720083),(260,'vi','update','Di chuyển file assets/editors/ckeditor/plugins/balloonpanel/skins/kama/balloonpanel.css','SUCCESS','',1,1552720083),(261,'vi','update','Di chuyển file assets/editors/ckeditor/plugins/balloonpanel/skins/moono/balloonpanel.css','SUCCESS','',1,1552720083),(262,'vi','update','Di chuyển file assets/editors/ckeditor/plugins/balloonpanel/skins/moono-lisa/balloonpanel.css','SUCCESS','',1,1552720083),(263,'vi','update','Di chuyển file assets/editors/ckeditor/plugins/clipboard/dialogs/paste.js','SUCCESS','',1,1552720083),(264,'vi','update','Di chuyển file assets/editors/ckeditor/plugins/codesnippet/dialogs/codesnippet.js','SUCCESS','',1,1552720083),(265,'vi','update','Di chuyển file assets/editors/ckeditor/plugins/colordialog/dialogs/colordialog.css','SUCCESS','',1,1552720083),(266,'vi','update','Di chuyển file assets/editors/ckeditor/plugins/colordialog/dialogs/colordialog.js','SUCCESS','',1,1552720083),(267,'vi','update','Di chuyển file assets/editors/ckeditor/plugins/copyformatting/styles/copyformatting.css','SUCCESS','',1,1552720083),(268,'vi','update','Di chuyển file assets/editors/ckeditor/plugins/dialog/dialogDefinition.js','SUCCESS','',1,1552720083),(269,'vi','update','Di chuyển file assets/editors/ckeditor/plugins/find/dialogs/find.js','SUCCESS','',1,1552720083),(270,'vi','update','Di chuyển file assets/editors/ckeditor/plugins/flash/dialogs/flash.js','SUCCESS','',1,1552720083),(271,'vi','update','Di chuyển file assets/editors/ckeditor/plugins/iframe/dialogs/iframe.js','SUCCESS','',1,1552720083),(272,'vi','update','Di chuyển file assets/editors/ckeditor/plugins/image2/dialogs/image2.js','SUCCESS','',1,1552720083),(273,'vi','update','Di chuyển file assets/editors/ckeditor/plugins/link/dialogs/anchor.js','SUCCESS','',1,1552720083),(274,'vi','update','Di chuyển file assets/editors/ckeditor/plugins/link/dialogs/link.js','SUCCESS','',1,1552720083),(275,'vi','update','Di chuyển file assets/editors/ckeditor/plugins/liststyle/dialogs/liststyle.js','SUCCESS','',1,1552720083),(276,'vi','update','Di chuyển file assets/editors/ckeditor/plugins/pastefromword/filter/default.js','SUCCESS','',1,1552720083),(277,'vi','update','Di chuyển file assets/editors/ckeditor/plugins/placeholder/dialogs/placeholder.js','SUCCESS','',1,1552720083),(278,'vi','update','Di chuyển file assets/editors/ckeditor/plugins/smiley/dialogs/smiley.js','SUCCESS','',1,1552720083),(279,'vi','update','Di chuyển file assets/editors/ckeditor/plugins/specialchar/dialogs/lang/en.js','SUCCESS','',1,1552720083),(280,'vi','update','Di chuyển file assets/editors/ckeditor/plugins/specialchar/dialogs/lang/fr.js','SUCCESS','',1,1552720083),(281,'vi','update','Di chuyển file assets/editors/ckeditor/plugins/specialchar/dialogs/lang/vi.js','SUCCESS','',1,1552720083),(282,'vi','update','Di chuyển file assets/editors/ckeditor/plugins/specialchar/dialogs/specialchar.js','SUCCESS','',1,1552720083),(283,'vi','update','Di chuyển file assets/editors/ckeditor/plugins/table/dialogs/table.js','SUCCESS','',1,1552720083),(284,'vi','update','Di chuyển file assets/editors/ckeditor/plugins/tableselection/styles/tableselection.css','SUCCESS','',1,1552720083),(285,'vi','update','Di chuyển file assets/editors/ckeditor/plugins/tabletools/dialogs/tableCell.js','SUCCESS','',1,1552720083),(286,'vi','update','Di chuyển file assets/editors/ckeditor/plugins/templates/dialogs/templates.css','SUCCESS','',1,1552720083),(287,'vi','update','Di chuyển file assets/editors/ckeditor/plugins/templates/dialogs/templates.js','SUCCESS','',1,1552720083),(288,'vi','update','Di chuyển file assets/editors/ckeditor/plugins/templates/templates/default.js','SUCCESS','',1,1552720083),(289,'vi','update','Di chuyển file assets/editors/ckeditor/plugins/youtube/images/icon-hdpi.png','SUCCESS','',1,1552720083),(290,'vi','update','Di chuyển file assets/editors/ckeditor/plugins/youtube/images/icon.png','SUCCESS','',1,1552720083),(291,'vi','update','Di chuyển file assets/editors/ckeditor/skins/moono/dialog.css','SUCCESS','',1,1552720083),(292,'vi','update','Di chuyển file assets/editors/ckeditor/skins/moono/dialog_ie.css','SUCCESS','',1,1552720083),(293,'vi','update','Di chuyển file assets/editors/ckeditor/skins/moono/dialog_ie7.css','SUCCESS','',1,1552720083),(294,'vi','update','Di chuyển file assets/editors/ckeditor/skins/moono/dialog_ie8.css','SUCCESS','',1,1552720083),(295,'vi','update','Di chuyển file assets/editors/ckeditor/skins/moono/dialog_iequirks.css','SUCCESS','',1,1552720083),(296,'vi','update','Di chuyển file assets/editors/ckeditor/skins/moono/editor.css','SUCCESS','',1,1552720083),(297,'vi','update','Di chuyển file assets/editors/ckeditor/skins/moono/editor_gecko.css','SUCCESS','',1,1552720083),(298,'vi','update','Di chuyển file assets/editors/ckeditor/skins/moono/editor_ie.css','SUCCESS','',1,1552720083),(299,'vi','update','Di chuyển file assets/editors/ckeditor/skins/moono/editor_ie7.css','SUCCESS','',1,1552720083),(300,'vi','update','Di chuyển file assets/editors/ckeditor/skins/moono/editor_ie8.css','SUCCESS','',1,1552720083),(301,'vi','update','Di chuyển file assets/editors/ckeditor/skins/moono/editor_iequirks.css','SUCCESS','',1,1552720083),(302,'vi','update','Di chuyển file assets/editors/ckeditor/styles.js','SUCCESS','',1,1552720083),(303,'vi','update','Di chuyển file assets/js/chart/Chart.bundle.min.js','SUCCESS','',1,1552720083),(304,'vi','update','Di chuyển file assets/js/chart/Chart.min.js','SUCCESS','',1,1552720083),(305,'vi','update','Di chuyển file assets/js/clipboard/clipboard.min.js','SUCCESS','',1,1552720083),(306,'vi','update','Di chuyển file assets/js/jquery/jquery.min.js','SUCCESS','',1,1552720083),(307,'vi','update','Di chuyển file assets/js/pdf.js/viewer.js','SUCCESS','',1,1552720083),(308,'vi','update','Di chuyển file assets/js/pdf.js/viewer.tpl','SUCCESS','',1,1552720083),(309,'vi','update','Di chuyển file assets/js/plupload/Moxie.swf','SUCCESS','',1,1552720083),(310,'vi','update','Di chuyển file assets/js/plupload/plupload.full.min.js','SUCCESS','',1,1552720083),(311,'vi','update','Di chuyển file assets/js/upload.js','SUCCESS','',1,1552720083),(312,'vi','update','Di chuyển file assets/tpl/rss.tpl','SUCCESS','',1,1552720083),(313,'vi','update','Di chuyển file composer.json','SUCCESS','',1,1552720083),(314,'vi','update','Di chuyển file data/config/rpc_services.php','SUCCESS','',1,1552720083),(315,'vi','update','Di chuyển file data/ip/0.php','SUCCESS','',1,1552720083),(316,'vi','update','Di chuyển file data/ip/1.php','SUCCESS','',1,1552720083),(317,'vi','update','Di chuyển file data/ip/10.php','SUCCESS','',1,1552720083),(318,'vi','update','Di chuyển file data/ip/100.php','SUCCESS','',1,1552720083),(319,'vi','update','Di chuyển file data/ip/101.php','SUCCESS','',1,1552720083),(320,'vi','update','Di chuyển file data/ip/102.php','SUCCESS','',1,1552720083),(321,'vi','update','Di chuyển file data/ip/103.php','SUCCESS','',1,1552720083),(322,'vi','update','Di chuyển file data/ip/104.php','SUCCESS','',1,1552720083),(323,'vi','update','Di chuyển file data/ip/105.php','SUCCESS','',1,1552720083),(324,'vi','update','Di chuyển file data/ip/106.php','SUCCESS','',1,1552720083),(325,'vi','update','Di chuyển file data/ip/107.php','SUCCESS','',1,1552720083),(326,'vi','update','Di chuyển file data/ip/108.php','SUCCESS','',1,1552720083),(327,'vi','update','Di chuyển file data/ip/109.php','SUCCESS','',1,1552720083),(328,'vi','update','Di chuyển file data/ip/11.php','SUCCESS','',1,1552720083),(329,'vi','update','Di chuyển file data/ip/110.php','SUCCESS','',1,1552720083),(330,'vi','update','Di chuyển file data/ip/111.php','SUCCESS','',1,1552720083),(331,'vi','update','Di chuyển file data/ip/112.php','SUCCESS','',1,1552720083),(332,'vi','update','Di chuyển file data/ip/113.php','SUCCESS','',1,1552720083),(333,'vi','update','Di chuyển file data/ip/114.php','SUCCESS','',1,1552720083),(334,'vi','update','Di chuyển file data/ip/115.php','SUCCESS','',1,1552720083),(335,'vi','update','Di chuyển file data/ip/116.php','SUCCESS','',1,1552720083),(336,'vi','update','Di chuyển file data/ip/117.php','SUCCESS','',1,1552720083),(337,'vi','update','Di chuyển file data/ip/118.php','SUCCESS','',1,1552720083),(338,'vi','update','Di chuyển file data/ip/119.php','SUCCESS','',1,1552720083),(339,'vi','update','Di chuyển file data/ip/12.php','SUCCESS','',1,1552720083),(340,'vi','update','Di chuyển file data/ip/120.php','SUCCESS','',1,1552720083),(341,'vi','update','Di chuyển file data/ip/121.php','SUCCESS','',1,1552720083),(342,'vi','update','Di chuyển file data/ip/122.php','SUCCESS','',1,1552720083),(343,'vi','update','Di chuyển file data/ip/123.php','SUCCESS','',1,1552720083),(344,'vi','update','Di chuyển file data/ip/124.php','SUCCESS','',1,1552720083),(345,'vi','update','Di chuyển file data/ip/125.php','SUCCESS','',1,1552720083),(346,'vi','update','Di chuyển file data/ip/126.php','SUCCESS','',1,1552720083),(347,'vi','update','Di chuyển file data/ip/127.php','SUCCESS','',1,1552720083),(348,'vi','update','Di chuyển file data/ip/128.php','SUCCESS','',1,1552720083),(349,'vi','update','Di chuyển file data/ip/129.php','SUCCESS','',1,1552720083),(350,'vi','update','Di chuyển file data/ip/13.php','SUCCESS','',1,1552720083),(351,'vi','update','Di chuyển file data/ip/130.php','SUCCESS','',1,1552720083),(352,'vi','update','Di chuyển file data/ip/131.php','SUCCESS','',1,1552720083),(353,'vi','update','Di chuyển file data/ip/132.php','SUCCESS','',1,1552720083),(354,'vi','update','Di chuyển file data/ip/133.php','SUCCESS','',1,1552720083),(355,'vi','update','Di chuyển file data/ip/134.php','SUCCESS','',1,1552720083),(356,'vi','update','Di chuyển file data/ip/135.php','SUCCESS','',1,1552720083),(357,'vi','update','Di chuyển file data/ip/136.php','SUCCESS','',1,1552720083),(358,'vi','update','Di chuyển file data/ip/137.php','SUCCESS','',1,1552720083),(359,'vi','update','Di chuyển file data/ip/138.php','SUCCESS','',1,1552720083),(360,'vi','update','Di chuyển file data/ip/139.php','SUCCESS','',1,1552720083),(361,'vi','update','Di chuyển file data/ip/14.php','SUCCESS','',1,1552720083),(362,'vi','update','Di chuyển file data/ip/140.php','SUCCESS','',1,1552720083),(363,'vi','update','Di chuyển file data/ip/141.php','SUCCESS','',1,1552720083),(364,'vi','update','Di chuyển file data/ip/142.php','SUCCESS','',1,1552720083),(365,'vi','update','Di chuyển file data/ip/143.php','SUCCESS','',1,1552720083),(366,'vi','update','Di chuyển file data/ip/144.php','SUCCESS','',1,1552720083),(367,'vi','update','Di chuyển file data/ip/145.php','SUCCESS','',1,1552720083),(368,'vi','update','Di chuyển file data/ip/146.php','SUCCESS','',1,1552720083),(369,'vi','update','Di chuyển file data/ip/147.php','SUCCESS','',1,1552720083),(370,'vi','update','Di chuyển file data/ip/148.php','SUCCESS','',1,1552720083),(371,'vi','update','Di chuyển file data/ip/149.php','SUCCESS','',1,1552720083),(372,'vi','update','Di chuyển file data/ip/15.php','SUCCESS','',1,1552720083),(373,'vi','update','Di chuyển file data/ip/150.php','SUCCESS','',1,1552720083),(374,'vi','update','Di chuyển file data/ip/151.php','SUCCESS','',1,1552720083),(375,'vi','update','Di chuyển file data/ip/152.php','SUCCESS','',1,1552720083),(376,'vi','update','Di chuyển file data/ip/153.php','SUCCESS','',1,1552720083),(377,'vi','update','Di chuyển file data/ip/154.php','SUCCESS','',1,1552720083),(378,'vi','update','Di chuyển file data/ip/155.php','SUCCESS','',1,1552720083),(379,'vi','update','Di chuyển file data/ip/156.php','SUCCESS','',1,1552720083),(380,'vi','update','Di chuyển file data/ip/157.php','SUCCESS','',1,1552720083),(381,'vi','update','Di chuyển file data/ip/158.php','SUCCESS','',1,1552720083),(382,'vi','update','Di chuyển file data/ip/159.php','SUCCESS','',1,1552720083),(383,'vi','update','Di chuyển file data/ip/16.php','SUCCESS','',1,1552720083),(384,'vi','update','Di chuyển file data/ip/160.php','SUCCESS','',1,1552720083),(385,'vi','update','Di chuyển file data/ip/161.php','SUCCESS','',1,1552720083),(386,'vi','update','Di chuyển file data/ip/162.php','SUCCESS','',1,1552720083),(387,'vi','update','Di chuyển file data/ip/163.php','SUCCESS','',1,1552720083),(388,'vi','update','Di chuyển file data/ip/164.php','SUCCESS','',1,1552720083),(389,'vi','update','Di chuyển file data/ip/165.php','SUCCESS','',1,1552720083),(390,'vi','update','Di chuyển file data/ip/166.php','SUCCESS','',1,1552720083),(391,'vi','update','Di chuyển file data/ip/167.php','SUCCESS','',1,1552720083),(392,'vi','update','Di chuyển file data/ip/168.php','SUCCESS','',1,1552720083),(393,'vi','update','Di chuyển file data/ip/169.php','SUCCESS','',1,1552720083),(394,'vi','update','Di chuyển file data/ip/17.php','SUCCESS','',1,1552720083),(395,'vi','update','Di chuyển file data/ip/170.php','SUCCESS','',1,1552720083),(396,'vi','update','Di chuyển file data/ip/171.php','SUCCESS','',1,1552720083),(397,'vi','update','Di chuyển file data/ip/172.php','SUCCESS','',1,1552720083),(398,'vi','update','Di chuyển file data/ip/173.php','SUCCESS','',1,1552720083),(399,'vi','update','Di chuyển file data/ip/174.php','SUCCESS','',1,1552720083),(400,'vi','update','Di chuyển file data/ip/175.php','SUCCESS','',1,1552720083),(401,'vi','update','Di chuyển file data/ip/176.php','SUCCESS','',1,1552720083),(402,'vi','update','Di chuyển file data/ip/177.php','SUCCESS','',1,1552720083),(403,'vi','update','Di chuyển file data/ip/178.php','SUCCESS','',1,1552720083),(404,'vi','update','Di chuyển file data/ip/179.php','SUCCESS','',1,1552720083),(405,'vi','update','Di chuyển file data/ip/18.php','SUCCESS','',1,1552720083),(406,'vi','update','Di chuyển file data/ip/180.php','SUCCESS','',1,1552720083),(407,'vi','update','Di chuyển file data/ip/181.php','SUCCESS','',1,1552720083),(408,'vi','update','Di chuyển file data/ip/182.php','SUCCESS','',1,1552720083),(409,'vi','update','Di chuyển file data/ip/183.php','SUCCESS','',1,1552720083),(410,'vi','update','Di chuyển file data/ip/184.php','SUCCESS','',1,1552720083),(411,'vi','update','Di chuyển file data/ip/185.php','SUCCESS','',1,1552720083),(412,'vi','update','Di chuyển file data/ip/186.php','SUCCESS','',1,1552720083),(413,'vi','update','Di chuyển file data/ip/187.php','SUCCESS','',1,1552720083),(414,'vi','update','Di chuyển file data/ip/188.php','SUCCESS','',1,1552720083),(415,'vi','update','Di chuyển file data/ip/189.php','SUCCESS','',1,1552720083),(416,'vi','update','Di chuyển file data/ip/19.php','SUCCESS','',1,1552720083),(417,'vi','update','Di chuyển file data/ip/190.php','SUCCESS','',1,1552720083),(418,'vi','update','Di chuyển file data/ip/191.php','SUCCESS','',1,1552720083),(419,'vi','update','Di chuyển file data/ip/192.php','SUCCESS','',1,1552720083),(420,'vi','update','Di chuyển file data/ip/193.php','SUCCESS','',1,1552720083),(421,'vi','update','Di chuyển file data/ip/194.php','SUCCESS','',1,1552720083),(422,'vi','update','Di chuyển file data/ip/195.php','SUCCESS','',1,1552720083),(423,'vi','update','Di chuyển file data/ip/196.php','SUCCESS','',1,1552720083),(424,'vi','update','Di chuyển file data/ip/197.php','SUCCESS','',1,1552720083),(425,'vi','update','Di chuyển file data/ip/198.php','SUCCESS','',1,1552720083),(426,'vi','update','Di chuyển file data/ip/199.php','SUCCESS','',1,1552720083),(427,'vi','update','Di chuyển file data/ip/2.php','SUCCESS','',1,1552720083),(428,'vi','update','Di chuyển file data/ip/20.php','SUCCESS','',1,1552720083),(429,'vi','update','Di chuyển file data/ip/200.php','SUCCESS','',1,1552720083),(430,'vi','update','Di chuyển file data/ip/201.php','SUCCESS','',1,1552720083),(431,'vi','update','Di chuyển file data/ip/202.php','SUCCESS','',1,1552720083),(432,'vi','update','Di chuyển file data/ip/203.php','SUCCESS','',1,1552720083),(433,'vi','update','Di chuyển file data/ip/204.php','SUCCESS','',1,1552720083),(434,'vi','update','Di chuyển file data/ip/205.php','SUCCESS','',1,1552720083),(435,'vi','update','Di chuyển file data/ip/206.php','SUCCESS','',1,1552720083),(436,'vi','update','Di chuyển file data/ip/207.php','SUCCESS','',1,1552720083),(437,'vi','update','Di chuyển file data/ip/208.php','SUCCESS','',1,1552720083),(438,'vi','update','Di chuyển file data/ip/209.php','SUCCESS','',1,1552720083),(439,'vi','update','Di chuyển file data/ip/21.php','SUCCESS','',1,1552720083),(440,'vi','update','Di chuyển file data/ip/210.php','SUCCESS','',1,1552720083),(441,'vi','update','Di chuyển file data/ip/211.php','SUCCESS','',1,1552720083),(442,'vi','update','Di chuyển file data/ip/212.php','SUCCESS','',1,1552720083),(443,'vi','update','Di chuyển file data/ip/213.php','SUCCESS','',1,1552720083),(444,'vi','update','Di chuyển file data/ip/214.php','SUCCESS','',1,1552720083),(445,'vi','update','Di chuyển file data/ip/215.php','SUCCESS','',1,1552720083),(446,'vi','update','Di chuyển file data/ip/216.php','SUCCESS','',1,1552720083),(447,'vi','update','Di chuyển file data/ip/217.php','SUCCESS','',1,1552720083),(448,'vi','update','Di chuyển file data/ip/218.php','SUCCESS','',1,1552720083),(449,'vi','update','Di chuyển file data/ip/219.php','SUCCESS','',1,1552720083),(450,'vi','update','Di chuyển file data/ip/22.php','SUCCESS','',1,1552720083),(451,'vi','update','Di chuyển file data/ip/220.php','SUCCESS','',1,1552720083),(452,'vi','update','Di chuyển file data/ip/221.php','SUCCESS','',1,1552720083),(453,'vi','update','Di chuyển file data/ip/222.php','SUCCESS','',1,1552720083),(454,'vi','update','Di chuyển file data/ip/223.php','SUCCESS','',1,1552720083),(455,'vi','update','Di chuyển file data/ip/224.php','SUCCESS','',1,1552720083),(456,'vi','update','Di chuyển file data/ip/225.php','SUCCESS','',1,1552720083),(457,'vi','update','Di chuyển file data/ip/226.php','SUCCESS','',1,1552720083),(458,'vi','update','Di chuyển file data/ip/227.php','SUCCESS','',1,1552720083),(459,'vi','update','Di chuyển file data/ip/228.php','SUCCESS','',1,1552720083),(460,'vi','update','Di chuyển file data/ip/229.php','SUCCESS','',1,1552720083),(461,'vi','update','Di chuyển file data/ip/23.php','SUCCESS','',1,1552720083),(462,'vi','update','Di chuyển file data/ip/230.php','SUCCESS','',1,1552720083),(463,'vi','update','Di chuyển file data/ip/231.php','SUCCESS','',1,1552720083),(464,'vi','update','Di chuyển file data/ip/232.php','SUCCESS','',1,1552720083),(465,'vi','update','Di chuyển file data/ip/233.php','SUCCESS','',1,1552720083),(466,'vi','update','Di chuyển file data/ip/234.php','SUCCESS','',1,1552720083),(467,'vi','update','Di chuyển file data/ip/235.php','SUCCESS','',1,1552720083),(468,'vi','update','Di chuyển file data/ip/236.php','SUCCESS','',1,1552720083),(469,'vi','update','Di chuyển file data/ip/237.php','SUCCESS','',1,1552720083),(470,'vi','update','Di chuyển file data/ip/238.php','SUCCESS','',1,1552720083),(471,'vi','update','Di chuyển file data/ip/239.php','SUCCESS','',1,1552720083),(472,'vi','update','Di chuyển file data/ip/24.php','SUCCESS','',1,1552720083),(473,'vi','update','Di chuyển file data/ip/240.php','SUCCESS','',1,1552720083),(474,'vi','update','Di chuyển file data/ip/241.php','SUCCESS','',1,1552720083),(475,'vi','update','Di chuyển file data/ip/242.php','SUCCESS','',1,1552720083),(476,'vi','update','Di chuyển file data/ip/243.php','SUCCESS','',1,1552720083),(477,'vi','update','Di chuyển file data/ip/244.php','SUCCESS','',1,1552720083),(478,'vi','update','Di chuyển file data/ip/245.php','SUCCESS','',1,1552720083),(479,'vi','update','Di chuyển file data/ip/246.php','SUCCESS','',1,1552720083),(480,'vi','update','Di chuyển file data/ip/247.php','SUCCESS','',1,1552720083),(481,'vi','update','Di chuyển file data/ip/248.php','SUCCESS','',1,1552720083),(482,'vi','update','Di chuyển file data/ip/249.php','SUCCESS','',1,1552720083),(483,'vi','update','Di chuyển file data/ip/25.php','SUCCESS','',1,1552720083),(484,'vi','update','Di chuyển file data/ip/250.php','SUCCESS','',1,1552720083),(485,'vi','update','Di chuyển file data/ip/251.php','SUCCESS','',1,1552720083),(486,'vi','update','Di chuyển file data/ip/252.php','SUCCESS','',1,1552720083),(487,'vi','update','Di chuyển file data/ip/253.php','SUCCESS','',1,1552720083),(488,'vi','update','Di chuyển file data/ip/254.php','SUCCESS','',1,1552720083),(489,'vi','update','Di chuyển file data/ip/255.php','SUCCESS','',1,1552720083),(490,'vi','update','Di chuyển file data/ip/26.php','SUCCESS','',1,1552720083),(491,'vi','update','Di chuyển file data/ip/27.php','SUCCESS','',1,1552720083),(492,'vi','update','Di chuyển file data/ip/28.php','SUCCESS','',1,1552720083),(493,'vi','update','Di chuyển file data/ip/29.php','SUCCESS','',1,1552720083),(494,'vi','update','Di chuyển file data/ip/3.php','SUCCESS','',1,1552720083),(495,'vi','update','Di chuyển file data/ip/30.php','SUCCESS','',1,1552720083),(496,'vi','update','Di chuyển file data/ip/31.php','SUCCESS','',1,1552720083),(497,'vi','update','Di chuyển file data/ip/32.php','SUCCESS','',1,1552720083),(498,'vi','update','Di chuyển file data/ip/33.php','SUCCESS','',1,1552720083),(499,'vi','update','Di chuyển file data/ip/34.php','SUCCESS','',1,1552720083),(500,'vi','update','Di chuyển file data/ip/35.php','SUCCESS','',1,1552720083),(501,'vi','update','Di chuyển file data/ip/36.php','SUCCESS','',1,1552720083),(502,'vi','update','Di chuyển file data/ip/37.php','SUCCESS','',1,1552720083),(503,'vi','update','Di chuyển file data/ip/38.php','SUCCESS','',1,1552720083),(504,'vi','update','Di chuyển file data/ip/39.php','SUCCESS','',1,1552720083),(505,'vi','update','Di chuyển file data/ip/4.php','SUCCESS','',1,1552720083),(506,'vi','update','Di chuyển file data/ip/40.php','SUCCESS','',1,1552720083),(507,'vi','update','Di chuyển file data/ip/41.php','SUCCESS','',1,1552720083),(508,'vi','update','Di chuyển file data/ip/42.php','SUCCESS','',1,1552720083),(509,'vi','update','Di chuyển file data/ip/43.php','SUCCESS','',1,1552720083),(510,'vi','update','Di chuyển file data/ip/44.php','SUCCESS','',1,1552720083),(511,'vi','update','Di chuyển file data/ip/45.php','SUCCESS','',1,1552720083),(512,'vi','update','Di chuyển file data/ip/46.php','SUCCESS','',1,1552720083),(513,'vi','update','Di chuyển file data/ip/47.php','SUCCESS','',1,1552720083),(514,'vi','update','Di chuyển file data/ip/48.php','SUCCESS','',1,1552720083),(515,'vi','update','Di chuyển file data/ip/49.php','SUCCESS','',1,1552720083),(516,'vi','update','Di chuyển file data/ip/5.php','SUCCESS','',1,1552720083),(517,'vi','update','Di chuyển file data/ip/50.php','SUCCESS','',1,1552720083),(518,'vi','update','Di chuyển file data/ip/51.php','SUCCESS','',1,1552720083),(519,'vi','update','Di chuyển file data/ip/52.php','SUCCESS','',1,1552720083),(520,'vi','update','Di chuyển file data/ip/53.php','SUCCESS','',1,1552720083),(521,'vi','update','Di chuyển file data/ip/54.php','SUCCESS','',1,1552720083),(522,'vi','update','Di chuyển file data/ip/55.php','SUCCESS','',1,1552720083),(523,'vi','update','Di chuyển file data/ip/56.php','SUCCESS','',1,1552720083),(524,'vi','update','Di chuyển file data/ip/57.php','SUCCESS','',1,1552720083),(525,'vi','update','Di chuyển file data/ip/58.php','SUCCESS','',1,1552720083),(526,'vi','update','Di chuyển file data/ip/59.php','SUCCESS','',1,1552720083),(527,'vi','update','Di chuyển file data/ip/6.php','SUCCESS','',1,1552720083),(528,'vi','update','Di chuyển file data/ip/60.php','SUCCESS','',1,1552720083),(529,'vi','update','Di chuyển file data/ip/61.php','SUCCESS','',1,1552720083),(530,'vi','update','Di chuyển file data/ip/62.php','SUCCESS','',1,1552720083),(531,'vi','update','Di chuyển file data/ip/63.php','SUCCESS','',1,1552720083),(532,'vi','update','Di chuyển file data/ip/64.php','SUCCESS','',1,1552720083),(533,'vi','update','Di chuyển file data/ip/65.php','SUCCESS','',1,1552720083),(534,'vi','update','Di chuyển file data/ip/66.php','SUCCESS','',1,1552720083),(535,'vi','update','Di chuyển file data/ip/67.php','SUCCESS','',1,1552720083),(536,'vi','update','Di chuyển file data/ip/68.php','SUCCESS','',1,1552720083),(537,'vi','update','Di chuyển file data/ip/69.php','SUCCESS','',1,1552720083),(538,'vi','update','Di chuyển file data/ip/7.php','SUCCESS','',1,1552720083),(539,'vi','update','Di chuyển file data/ip/70.php','SUCCESS','',1,1552720083),(540,'vi','update','Di chuyển file data/ip/71.php','SUCCESS','',1,1552720083),(541,'vi','update','Di chuyển file data/ip/72.php','SUCCESS','',1,1552720083),(542,'vi','update','Di chuyển file data/ip/73.php','SUCCESS','',1,1552720083),(543,'vi','update','Di chuyển file data/ip/74.php','SUCCESS','',1,1552720083),(544,'vi','update','Di chuyển file data/ip/75.php','SUCCESS','',1,1552720083),(545,'vi','update','Di chuyển file data/ip/76.php','SUCCESS','',1,1552720083),(546,'vi','update','Di chuyển file data/ip/77.php','SUCCESS','',1,1552720083),(547,'vi','update','Di chuyển file data/ip/78.php','SUCCESS','',1,1552720083),(548,'vi','update','Di chuyển file data/ip/79.php','SUCCESS','',1,1552720083),(549,'vi','update','Di chuyển file data/ip/8.php','SUCCESS','',1,1552720083),(550,'vi','update','Di chuyển file data/ip/80.php','SUCCESS','',1,1552720083),(551,'vi','update','Di chuyển file data/ip/81.php','SUCCESS','',1,1552720083),(552,'vi','update','Di chuyển file data/ip/82.php','SUCCESS','',1,1552720083),(553,'vi','update','Di chuyển file data/ip/83.php','SUCCESS','',1,1552720083),(554,'vi','update','Di chuyển file data/ip/84.php','SUCCESS','',1,1552720083),(555,'vi','update','Di chuyển file data/ip/85.php','SUCCESS','',1,1552720083),(556,'vi','update','Di chuyển file data/ip/86.php','SUCCESS','',1,1552720083),(557,'vi','update','Di chuyển file data/ip/87.php','SUCCESS','',1,1552720083),(558,'vi','update','Di chuyển file data/ip/88.php','SUCCESS','',1,1552720083),(559,'vi','update','Di chuyển file data/ip/89.php','SUCCESS','',1,1552720083),(560,'vi','update','Di chuyển file data/ip/9.php','SUCCESS','',1,1552720083),(561,'vi','update','Di chuyển file data/ip/90.php','SUCCESS','',1,1552720083),(562,'vi','update','Di chuyển file data/ip/91.php','SUCCESS','',1,1552720083),(563,'vi','update','Di chuyển file data/ip/92.php','SUCCESS','',1,1552720083),(564,'vi','update','Di chuyển file data/ip/93.php','SUCCESS','',1,1552720083),(565,'vi','update','Di chuyển file data/ip/94.php','SUCCESS','',1,1552720083),(566,'vi','update','Di chuyển file data/ip/95.php','SUCCESS','',1,1552720083),(567,'vi','update','Di chuyển file data/ip/96.php','SUCCESS','',1,1552720083),(568,'vi','update','Di chuyển file data/ip/97.php','SUCCESS','',1,1552720083),(569,'vi','update','Di chuyển file data/ip/98.php','SUCCESS','',1,1552720083),(570,'vi','update','Di chuyển file data/ip/99.php','SUCCESS','',1,1552720083),(571,'vi','update','Di chuyển file data/ip6/2000.php','SUCCESS','',1,1552720083),(572,'vi','update','Di chuyển file data/ip6/2001.php','SUCCESS','',1,1552720083),(573,'vi','update','Di chuyển file data/ip6/2003.php','SUCCESS','',1,1552720083),(574,'vi','update','Di chuyển file data/ip6/2067.php','SUCCESS','',1,1552720083),(575,'vi','update','Di chuyển file data/ip6/2160.php','SUCCESS','',1,1552720083),(576,'vi','update','Di chuyển file data/ip6/2400.php','SUCCESS','',1,1552720083),(577,'vi','update','Di chuyển file data/ip6/2401.php','SUCCESS','',1,1552720083),(578,'vi','update','Di chuyển file data/ip6/2402.php','SUCCESS','',1,1552720083),(579,'vi','update','Di chuyển file data/ip6/2403.php','SUCCESS','',1,1552720083),(580,'vi','update','Di chuyển file data/ip6/2404.php','SUCCESS','',1,1552720083),(581,'vi','update','Di chuyển file data/ip6/2405.php','SUCCESS','',1,1552720083),(582,'vi','update','Di chuyển file data/ip6/2406.php','SUCCESS','',1,1552720083),(583,'vi','update','Di chuyển file data/ip6/2407.php','SUCCESS','',1,1552720083),(584,'vi','update','Di chuyển file data/ip6/2408.php','SUCCESS','',1,1552720083),(585,'vi','update','Di chuyển file data/ip6/2409.php','SUCCESS','',1,1552720083),(586,'vi','update','Di chuyển file data/ip6/240a.php','SUCCESS','',1,1552720083),(587,'vi','update','Di chuyển file data/ip6/240b.php','SUCCESS','',1,1552720083),(588,'vi','update','Di chuyển file data/ip6/240c.php','SUCCESS','',1,1552720083),(589,'vi','update','Di chuyển file data/ip6/240d.php','SUCCESS','',1,1552720083),(590,'vi','update','Di chuyển file data/ip6/240e.php','SUCCESS','',1,1552720083),(591,'vi','update','Di chuyển file data/ip6/240f.php','SUCCESS','',1,1552720083),(592,'vi','update','Di chuyển file data/ip6/2600.php','SUCCESS','',1,1552720083),(593,'vi','update','Di chuyển file data/ip6/2601.php','SUCCESS','',1,1552720083),(594,'vi','update','Di chuyển file data/ip6/2602.php','SUCCESS','',1,1552720083),(595,'vi','update','Di chuyển file data/ip6/2603.php','SUCCESS','',1,1552720083),(596,'vi','update','Di chuyển file data/ip6/2604.php','SUCCESS','',1,1552720083),(597,'vi','update','Di chuyển file data/ip6/2605.php','SUCCESS','',1,1552720083),(598,'vi','update','Di chuyển file data/ip6/2606.php','SUCCESS','',1,1552720083),(599,'vi','update','Di chuyển file data/ip6/2607.php','SUCCESS','',1,1552720083),(600,'vi','update','Di chuyển file data/ip6/2608.php','SUCCESS','',1,1552720083),(601,'vi','update','Di chuyển file data/ip6/2609.php','SUCCESS','',1,1552720083),(602,'vi','update','Di chuyển file data/ip6/260c.php','SUCCESS','',1,1552720083),(603,'vi','update','Di chuyển file data/ip6/260f.php','SUCCESS','',1,1552720083),(604,'vi','update','Di chuyển file data/ip6/2610.php','SUCCESS','',1,1552720083),(605,'vi','update','Di chuyển file data/ip6/2620.php','SUCCESS','',1,1552720083),(606,'vi','update','Di chuyển file data/ip6/2800.php','SUCCESS','',1,1552720083),(607,'vi','update','Di chuyển file data/ip6/2801.php','SUCCESS','',1,1552720083),(608,'vi','update','Di chuyển file data/ip6/2802.php','SUCCESS','',1,1552720083),(609,'vi','update','Di chuyển file data/ip6/2803.php','SUCCESS','',1,1552720083),(610,'vi','update','Di chuyển file data/ip6/2804.php','SUCCESS','',1,1552720083),(611,'vi','update','Di chuyển file data/ip6/2806.php','SUCCESS','',1,1552720083),(612,'vi','update','Di chuyển file data/ip6/2a00.php','SUCCESS','',1,1552720083),(613,'vi','update','Di chuyển file data/ip6/2a01.php','SUCCESS','',1,1552720083),(614,'vi','update','Di chuyển file data/ip6/2a02.php','SUCCESS','',1,1552720083),(615,'vi','update','Di chuyển file data/ip6/2a03.php','SUCCESS','',1,1552720083),(616,'vi','update','Di chuyển file data/ip6/2a04.php','SUCCESS','',1,1552720083),(617,'vi','update','Di chuyển file data/ip6/2a05.php','SUCCESS','',1,1552720083),(618,'vi','update','Di chuyển file data/ip6/2a06.php','SUCCESS','',1,1552720083),(619,'vi','update','Di chuyển file data/ip6/2a07.php','SUCCESS','',1,1552720083),(620,'vi','update','Di chuyển file data/ip6/2a08.php','SUCCESS','',1,1552720083),(621,'vi','update','Di chuyển file data/ip6/2a0a.php','SUCCESS','',1,1552720083),(622,'vi','update','Di chuyển file data/ip6/2a0b.php','SUCCESS','',1,1552720083),(623,'vi','update','Di chuyển file data/ip6/2a0c.php','SUCCESS','',1,1552720083),(624,'vi','update','Di chuyển file data/ip6/2a0d.php','SUCCESS','',1,1552720083),(625,'vi','update','Di chuyển file data/ip6/2c0e.php','SUCCESS','',1,1552720083),(626,'vi','update','Di chuyển file data/ip6/2c0f.php','SUCCESS','',1,1552720083),(627,'vi','update','Di chuyển file data/ip6/600.php','SUCCESS','',1,1552720083),(628,'vi','update','Di chuyển file includes/action_mysql.php','SUCCESS','',1,1552720083),(629,'vi','update','Di chuyển file includes/constants.php','SUCCESS','',1,1552720083),(630,'vi','update','Di chuyển file includes/core/admin_access.php','SUCCESS','',1,1552720083),(631,'vi','update','Di chuyển file includes/core/admin_functions.php','SUCCESS','',1,1552720083),(632,'vi','update','Di chuyển file includes/core/admin_login.php','SUCCESS','',1,1552720083),(633,'vi','update','Di chuyển file includes/core/captcha.php','SUCCESS','',1,1552720083),(634,'vi','update','Di chuyển file includes/core/cronjobs.php','SUCCESS','',1,1552720083),(635,'vi','update','Di chuyển file includes/core/flood_blocker.php','SUCCESS','',1,1552720083),(636,'vi','update','Di chuyển file includes/core/is_user.php','SUCCESS','',1,1552720083),(637,'vi','update','Di chuyển file includes/core/phpinfo.php','SUCCESS','',1,1552720083),(638,'vi','update','Di chuyển file includes/core/theme_functions.php','SUCCESS','',1,1552720083),(639,'vi','update','Di chuyển file includes/core/user_functions.php','SUCCESS','',1,1552720083),(640,'vi','update','Di chuyển file includes/footer.php','SUCCESS','',1,1552720083),(641,'vi','update','Di chuyển file includes/functions.php','SUCCESS','',1,1552720083),(642,'vi','update','Di chuyển file includes/ini.php','SUCCESS','',1,1552720083),(643,'vi','update','Di chuyển file includes/language/en/admin_authors.php','SUCCESS','',1,1552720083),(644,'vi','update','Di chuyển file includes/language/en/admin_extensions.php','SUCCESS','',1,1552720083),(645,'vi','update','Di chuyển file includes/language/en/admin_language.php','SUCCESS','',1,1552720083),(646,'vi','update','Di chuyển file includes/language/en/admin_seotools.php','SUCCESS','',1,1552720083),(647,'vi','update','Di chuyển file includes/language/en/admin_settings.php','SUCCESS','',1,1552720083),(648,'vi','update','Di chuyển file includes/language/en/admin_themes.php','SUCCESS','',1,1552720083),(649,'vi','update','Di chuyển file includes/language/en/install.php','SUCCESS','',1,1552720083),(650,'vi','update','Di chuyển file includes/language/fr/admin_authors.php','SUCCESS','',1,1552720083),(651,'vi','update','Di chuyển file includes/language/fr/admin_extensions.php','SUCCESS','',1,1552720083),(652,'vi','update','Di chuyển file includes/language/fr/admin_language.php','SUCCESS','',1,1552720083),(653,'vi','update','Di chuyển file includes/language/fr/admin_seotools.php','SUCCESS','',1,1552720083),(654,'vi','update','Di chuyển file includes/language/fr/admin_settings.php','SUCCESS','',1,1552720083),(655,'vi','update','Di chuyển file includes/language/fr/admin_themes.php','SUCCESS','',1,1552720083),(656,'vi','update','Di chuyển file includes/language/fr/install.php','SUCCESS','',1,1552720083),(657,'vi','update','Di chuyển file includes/language/vi/admin_authors.php','SUCCESS','',1,1552720083),(658,'vi','update','Di chuyển file includes/language/vi/admin_extensions.php','SUCCESS','',1,1552720083),(659,'vi','update','Di chuyển file includes/language/vi/admin_language.php','SUCCESS','',1,1552720083),(660,'vi','update','Di chuyển file includes/language/vi/admin_seotools.php','SUCCESS','',1,1552720083),(661,'vi','update','Di chuyển file includes/language/vi/admin_settings.php','SUCCESS','',1,1552720083),(662,'vi','update','Di chuyển file includes/language/vi/admin_themes.php','SUCCESS','',1,1552720083),(663,'vi','update','Di chuyển file includes/language/vi/install.php','SUCCESS','',1,1552720083),(664,'vi','update','Di chuyển file includes/mainfile.php','SUCCESS','',1,1552720083),(665,'vi','update','Di chuyển file includes/plugin/cdn_js_css_image.php','SUCCESS','',1,1552720083),(666,'vi','update','Di chuyển file includes/plugin/china_censorship.ini','SUCCESS','',1,1552720083),(667,'vi','update','Di chuyển file includes/plugin/china_censorship.php','SUCCESS','',1,1552720083),(668,'vi','update','Di chuyển file includes/request_uri.php','SUCCESS','',1,1552720083),(669,'vi','update','Di chuyển file includes/utf8/utf8_functions.php','SUCCESS','',1,1552720083),(670,'vi','update','Di chuyển file includes/xtemplate.class.php','SUCCESS','',1,1552720083),(671,'vi','update','Di chuyển file index.php','SUCCESS','',1,1552720083),(672,'vi','update','Di chuyển file install/action_mysql.php','SUCCESS','',1,1552720083),(673,'vi','update','Di chuyển file install/config.php','SUCCESS','',1,1552720083),(674,'vi','update','Di chuyển file install/data.php','SUCCESS','',1,1552720083),(675,'vi','update','Di chuyển file install/data_by_lang.php','SUCCESS','',1,1552720083),(676,'vi','update','Di chuyển file install/index.php','SUCCESS','',1,1552720083),(677,'vi','update','Di chuyển file install/ini.php','SUCCESS','',1,1552720083),(678,'vi','update','Di chuyển file install/mainfile.php','SUCCESS','',1,1552720083),(679,'vi','update','Di chuyển file install/tpl/step1.tpl','SUCCESS','',1,1552720083),(680,'vi','update','Di chuyển file install/tpl/step4.tpl','SUCCESS','',1,1552720083),(681,'vi','update','Di chuyển file install/update.php','SUCCESS','',1,1552720083),(682,'vi','update','Di chuyển file modules/banners/admin/add_banner.php','SUCCESS','',1,1552720083),(683,'vi','update','Di chuyển file modules/banners/admin/b_list.php','SUCCESS','',1,1552720083),(684,'vi','update','Di chuyển file modules/banners/admin/banners_list.php','SUCCESS','',1,1552720083),(685,'vi','update','Di chuyển file modules/banners/admin/edit_banner.php','SUCCESS','',1,1552720083),(686,'vi','update','Di chuyển file modules/banners/admin/main.php','SUCCESS','',1,1552720083),(687,'vi','update','Di chuyển file modules/banners/admin.functions.php','SUCCESS','',1,1552720083),(688,'vi','update','Di chuyển file modules/banners/funcs/click.php','SUCCESS','',1,1552720083),(689,'vi','update','Di chuyển file modules/banners/language/admin_en.php','SUCCESS','',1,1552720083),(690,'vi','update','Di chuyển file modules/banners/language/admin_fr.php','SUCCESS','',1,1552720083),(691,'vi','update','Di chuyển file modules/banners/language/admin_vi.php','SUCCESS','',1,1552720083),(692,'vi','update','Di chuyển file modules/banners/version.php','SUCCESS','',1,1552720083),(693,'vi','update','Di chuyển file modules/comment/admin/del.php','SUCCESS','',1,1552720083),(694,'vi','update','Di chuyển file modules/comment/comment.php','SUCCESS','',1,1552720083),(695,'vi','update','Di chuyển file modules/comment/language/en.php','SUCCESS','',1,1552720083),(696,'vi','update','Di chuyển file modules/comment/language/fr.php','SUCCESS','',1,1552720083),(697,'vi','update','Di chuyển file modules/comment/language/vi.php','SUCCESS','',1,1552720083),(698,'vi','update','Di chuyển file modules/comment/version.php','SUCCESS','',1,1552720083),(699,'vi','update','Di chuyển file modules/contact/action_mysql.php','SUCCESS','',1,1552720083),(700,'vi','update','Di chuyển file modules/contact/admin/config.php','SUCCESS','',1,1552720083),(701,'vi','update','Di chuyển file modules/contact/admin/department.php','SUCCESS','',1,1552720083),(702,'vi','update','Di chuyển file modules/contact/admin/main.php','SUCCESS','',1,1552720083),(703,'vi','update','Di chuyển file modules/contact/admin.functions.php','SUCCESS','',1,1552720083),(704,'vi','update','Di chuyển file modules/contact/admin.menu.php','SUCCESS','',1,1552720083),(705,'vi','update','Di chuyển file modules/contact/funcs/main.php','SUCCESS','',1,1552720083),(706,'vi','update','Di chuyển file modules/contact/language/admin_en.php','SUCCESS','',1,1552720083),(707,'vi','update','Di chuyển file modules/contact/language/admin_fr.php','SUCCESS','',1,1552720083),(708,'vi','update','Di chuyển file modules/contact/language/admin_vi.php','SUCCESS','',1,1552720083),(709,'vi','update','Di chuyển file modules/contact/language/data_en.php','SUCCESS','',1,1552720083),(710,'vi','update','Di chuyển file modules/contact/language/data_fr.php','SUCCESS','',1,1552720083),(711,'vi','update','Di chuyển file modules/contact/language/data_vi.php','SUCCESS','',1,1552720083),(712,'vi','update','Di chuyển file modules/contact/theme.php','SUCCESS','',1,1552720083),(713,'vi','update','Di chuyển file modules/contact/version.php','SUCCESS','',1,1552720083),(714,'vi','update','Di chuyển file modules/feeds/funcs/main.php','SUCCESS','',1,1552720083),(715,'vi','update','Di chuyển file modules/feeds/version.php','SUCCESS','',1,1552720083),(716,'vi','update','Di chuyển file modules/freecontent/admin/manager.php','SUCCESS','',1,1552720083),(717,'vi','update','Di chuyển file modules/freecontent/language/admin_en.php','SUCCESS','',1,1552720083),(718,'vi','update','Di chuyển file modules/freecontent/language/admin_fr.php','SUCCESS','',1,1552720083),(719,'vi','update','Di chuyển file modules/freecontent/language/admin_vi.php','SUCCESS','',1,1552720083),(720,'vi','update','Di chuyển file modules/freecontent/version.php','SUCCESS','',1,1552720083),(721,'vi','update','Di chuyển file modules/menu/version.php','SUCCESS','',1,1552720083),(722,'vi','update','Di chuyển file modules/news/action_mysql.php','SUCCESS','',1,1552720083),(723,'vi','update','Di chuyển file modules/news/admin/content.php','SUCCESS','',1,1552720083),(724,'vi','update','Di chuyển file modules/news/admin/groups.php','SUCCESS','',1,1552720083),(725,'vi','update','Di chuyển file modules/news/admin/main.php','SUCCESS','',1,1552720083),(726,'vi','update','Di chuyển file modules/news/admin/setting.php','SUCCESS','',1,1552720083),(727,'vi','update','Di chuyển file modules/news/admin/tags.php','SUCCESS','',1,1552720083),(728,'vi','update','Di chuyển file modules/news/admin/tagsajax.php','SUCCESS','',1,1552720083),(729,'vi','update','Di chuyển file modules/news/admin/topics.php','SUCCESS','',1,1552720083),(730,'vi','update','Di chuyển file modules/news/blocks/module.block_headline.php','SUCCESS','',1,1552720083),(731,'vi','update','Di chuyển file modules/news/funcs/content.php','SUCCESS','',1,1552720083),(732,'vi','update','Di chuyển file modules/news/funcs/detail.php','SUCCESS','',1,1552720083),(733,'vi','update','Di chuyển file modules/news/funcs/main.php','SUCCESS','',1,1552720083),(734,'vi','update','Di chuyển file modules/news/funcs/sitemap.php','SUCCESS','',1,1552720083),(735,'vi','update','Di chuyển file modules/news/global.functions.php','SUCCESS','',1,1552720083),(736,'vi','update','Di chuyển file modules/news/language/admin_en.php','SUCCESS','',1,1552720083),(737,'vi','update','Di chuyển file modules/news/language/admin_fr.php','SUCCESS','',1,1552720083),(738,'vi','update','Di chuyển file modules/news/language/admin_vi.php','SUCCESS','',1,1552720083),(739,'vi','update','Di chuyển file modules/news/language/data_en.php','SUCCESS','',1,1552720083),(740,'vi','update','Di chuyển file modules/news/language/data_fr.php','SUCCESS','',1,1552720083),(741,'vi','update','Di chuyển file modules/news/language/data_vi.php','SUCCESS','',1,1552720083),(742,'vi','update','Di chuyển file modules/news/language/en.php','SUCCESS','',1,1552720083),(743,'vi','update','Di chuyển file modules/news/language/fr.php','SUCCESS','',1,1552720083),(744,'vi','update','Di chuyển file modules/news/language/vi.php','SUCCESS','',1,1552720083),(745,'vi','update','Di chuyển file modules/news/version.php','SUCCESS','',1,1552720083),(746,'vi','update','Di chuyển file modules/page/action_mysql.php','SUCCESS','',1,1552720083),(747,'vi','update','Di chuyển file modules/page/admin/content.php','SUCCESS','',1,1552720083),(748,'vi','update','Di chuyển file modules/page/funcs/main.php','SUCCESS','',1,1552720083),(749,'vi','update','Di chuyển file modules/page/language/admin_en.php','SUCCESS','',1,1552720083),(750,'vi','update','Di chuyển file modules/page/language/admin_fr.php','SUCCESS','',1,1552720083),(751,'vi','update','Di chuyển file modules/page/language/admin_vi.php','SUCCESS','',1,1552720083),(752,'vi','update','Di chuyển file modules/page/language/data_en.php','SUCCESS','',1,1552720083),(753,'vi','update','Di chuyển file modules/page/language/data_fr.php','SUCCESS','',1,1552720083),(754,'vi','update','Di chuyển file modules/page/language/data_vi.php','SUCCESS','',1,1552720083),(755,'vi','update','Di chuyển file modules/page/version.php','SUCCESS','',1,1552720083),(756,'vi','update','Di chuyển file modules/seek/version.php','SUCCESS','',1,1552720083),(757,'vi','update','Di chuyển file modules/statistics/admin/cleardata.php','SUCCESS','',1,1552720083),(758,'vi','update','Di chuyển file modules/statistics/admin.functions.php','SUCCESS','',1,1552720083),(759,'vi','update','Di chuyển file modules/statistics/admin.menu.php','SUCCESS','',1,1552720083),(760,'vi','update','Di chuyển file modules/statistics/language/admin_en.php','SUCCESS','',1,1552720083),(761,'vi','update','Di chuyển file modules/statistics/language/admin_fr.php','SUCCESS','',1,1552720083),(762,'vi','update','Di chuyển file modules/statistics/language/admin_vi.php','SUCCESS','',1,1552720083),(763,'vi','update','Di chuyển file modules/statistics/version.php','SUCCESS','',1,1552720083),(764,'vi','update','Di chuyển file modules/two-step-verification/version.php','SUCCESS','',1,1552720083),(765,'vi','update','Di chuyển file modules/users/action_mysql.php','SUCCESS','',1,1552720083),(766,'vi','update','Di chuyển file modules/users/admin/authors.php','SUCCESS','',1,1552720083),(767,'vi','update','Di chuyển file modules/users/admin/config.php','SUCCESS','',1,1552720083),(768,'vi','update','Di chuyển file modules/users/admin/del.php','SUCCESS','',1,1552720083),(769,'vi','update','Di chuyển file modules/users/admin/edit.php','SUCCESS','',1,1552720083),(770,'vi','update','Di chuyển file modules/users/admin/editcensor.php','SUCCESS','',1,1552720083),(771,'vi','update','Di chuyển file modules/users/admin/fields.php','SUCCESS','',1,1552720083),(772,'vi','update','Di chuyển file modules/users/admin/groups.php','SUCCESS','',1,1552720083),(773,'vi','update','Di chuyển file modules/users/admin/user_add.php','SUCCESS','',1,1552720083),(774,'vi','update','Di chuyển file modules/users/admin/user_waiting.php','SUCCESS','',1,1552720083),(775,'vi','update','Di chuyển file modules/users/admin.functions.php','SUCCESS','',1,1552720083),(776,'vi','update','Di chuyển file modules/users/admin.menu.php','SUCCESS','',1,1552720083),(777,'vi','update','Di chuyển file modules/users/blocks/global.login.php','SUCCESS','',1,1552720083),(778,'vi','update','Di chuyển file modules/users/blocks/global.user_button.php','SUCCESS','',1,1552720083),(779,'vi','update','Di chuyển file modules/users/fields.check.php','SUCCESS','',1,1552720083),(780,'vi','update','Di chuyển file modules/users/funcs/active.php','SUCCESS','',1,1552720083),(781,'vi','update','Di chuyển file modules/users/funcs/editinfo.php','SUCCESS','',1,1552720083),(782,'vi','update','Di chuyển file modules/users/funcs/login.php','SUCCESS','',1,1552720083),(783,'vi','update','Di chuyển file modules/users/funcs/memberlist.php','SUCCESS','',1,1552720083),(784,'vi','update','Di chuyển file modules/users/funcs/register.php','SUCCESS','',1,1552720083),(785,'vi','update','Di chuyển file modules/users/functions.php','SUCCESS','',1,1552720083),(786,'vi','update','Di chuyển file modules/users/language/admin_en.php','SUCCESS','',1,1552720083),(787,'vi','update','Di chuyển file modules/users/language/admin_fr.php','SUCCESS','',1,1552720083),(788,'vi','update','Di chuyển file modules/users/language/admin_vi.php','SUCCESS','',1,1552720083),(789,'vi','update','Di chuyển file modules/users/language/en.php','SUCCESS','',1,1552720083),(790,'vi','update','Di chuyển file modules/users/language/fr.php','SUCCESS','',1,1552720083),(791,'vi','update','Di chuyển file modules/users/language/vi.php','SUCCESS','',1,1552720083),(792,'vi','update','Di chuyển file modules/users/notification.php','SUCCESS','',1,1552720083),(793,'vi','update','Di chuyển file modules/users/siteinfo.php','SUCCESS','',1,1552720083),(794,'vi','update','Di chuyển file modules/users/theme.php','SUCCESS','',1,1552720083),(795,'vi','update','Di chuyển file modules/users/version.php','SUCCESS','',1,1552720083),(796,'vi','update','Di chuyển file modules/voting/funcs/main.php','SUCCESS','',1,1552720083),(797,'vi','update','Di chuyển file modules/voting/language/admin_en.php','SUCCESS','',1,1552720083),(798,'vi','update','Di chuyển file modules/voting/language/admin_fr.php','SUCCESS','',1,1552720083),(799,'vi','update','Di chuyển file modules/voting/language/admin_vi.php','SUCCESS','',1,1552720083),(800,'vi','update','Di chuyển file modules/voting/version.php','SUCCESS','',1,1552720083),(801,'vi','update','Di chuyển file robots.php','SUCCESS','',1,1552720083),(802,'vi','update','Di chuyển file themes/admin_default/css/settings.css','SUCCESS','',1,1552720083),(803,'vi','update','Di chuyển file themes/admin_default/css/style.css','SUCCESS','',1,1552720083),(804,'vi','update','Di chuyển file themes/admin_default/css/themes.css','SUCCESS','',1,1552720083),(805,'vi','update','Di chuyển file themes/admin_default/css/users.css','SUCCESS','',1,1552720083),(806,'vi','update','Di chuyển file themes/admin_default/js/banners.js','SUCCESS','',1,1552720083),(807,'vi','update','Di chuyển file themes/admin_default/js/extensions.js','SUCCESS','',1,1552720083),(808,'vi','update','Di chuyển file themes/admin_default/js/main.js','SUCCESS','',1,1552720083),(809,'vi','update','Di chuyển file themes/admin_default/js/news.js','SUCCESS','',1,1552720083),(810,'vi','update','Di chuyển file themes/admin_default/js/news_content.js','SUCCESS','',1,1552720083),(811,'vi','update','Di chuyển file themes/admin_default/js/seotools.js','SUCCESS','',1,1552720083),(812,'vi','update','Di chuyển file themes/admin_default/js/settings.js','SUCCESS','',1,1552720083),(813,'vi','update','Di chuyển file themes/admin_default/js/siteinfo.js','SUCCESS','',1,1552720083),(814,'vi','update','Di chuyển file themes/admin_default/js/statistics.js','SUCCESS','',1,1552720083),(815,'vi','update','Di chuyển file themes/admin_default/js/themes.js','SUCCESS','',1,1552720083),(816,'vi','update','Di chuyển file themes/admin_default/js/users.js','SUCCESS','',1,1552720083),(817,'vi','update','Di chuyển file themes/admin_default/js/voting.js','SUCCESS','',1,1552720083),(818,'vi','update','Di chuyển file themes/admin_default/modules/authors/add.tpl','SUCCESS','',1,1552720083),(819,'vi','update','Di chuyển file themes/admin_default/modules/authors/edit.tpl','SUCCESS','',1,1552720083),(820,'vi','update','Di chuyển file themes/admin_default/modules/banners/add_banner.tpl','SUCCESS','',1,1552720083),(821,'vi','update','Di chuyển file themes/admin_default/modules/banners/b_list.tpl','SUCCESS','',1,1552720083),(822,'vi','update','Di chuyển file themes/admin_default/modules/banners/main.tpl','SUCCESS','',1,1552720083),(823,'vi','update','Di chuyển file themes/admin_default/modules/contact/config.tpl','SUCCESS','',1,1552720083),(824,'vi','update','Di chuyển file themes/admin_default/modules/contact/main.tpl','SUCCESS','',1,1552720083),(825,'vi','update','Di chuyển file themes/admin_default/modules/extensions/manage.tpl','SUCCESS','',1,1552720083),(826,'vi','update','Di chuyển file themes/admin_default/modules/freecontent/list.tpl','SUCCESS','',1,1552720083),(827,'vi','update','Di chuyển file themes/admin_default/modules/freecontent/main.tpl','SUCCESS','',1,1552720083),(828,'vi','update','Di chuyển file themes/admin_default/modules/language/check.tpl','SUCCESS','',1,1552720083),(829,'vi','update','Di chuyển file themes/admin_default/modules/news/content.tpl','SUCCESS','',1,1552720083),(830,'vi','update','Di chuyển file themes/admin_default/modules/news/main.tpl','SUCCESS','',1,1552720083),(831,'vi','update','Di chuyển file themes/admin_default/modules/news/settings.tpl','SUCCESS','',1,1552720083),(832,'vi','update','Di chuyển file themes/admin_default/modules/page/content.tpl','SUCCESS','',1,1552720083),(833,'vi','update','Di chuyển file themes/admin_default/modules/settings/cronjobs_add.tpl','SUCCESS','',1,1552720083),(834,'vi','update','Di chuyển file themes/admin_default/modules/settings/plugin.tpl','SUCCESS','',1,1552720083),(835,'vi','update','Di chuyển file themes/admin_default/modules/settings/security.tpl','SUCCESS','',1,1552720083),(836,'vi','update','Di chuyển file themes/admin_default/modules/settings/system.tpl','SUCCESS','',1,1552720083),(837,'vi','update','Di chuyển file themes/admin_default/modules/siteinfo/logs.tpl','SUCCESS','',1,1552720083),(838,'vi','update','Di chuyển file themes/admin_default/modules/statistics/cleardata.tpl','SUCCESS','',1,1552720083),(839,'vi','update','Di chuyển file themes/admin_default/modules/statistics/index.html','SUCCESS','',1,1552720083),(840,'vi','update','Di chuyển file themes/admin_default/modules/themes/main.tpl','SUCCESS','',1,1552720083),(841,'vi','update','Di chuyển file themes/admin_default/modules/upload/main.tpl','SUCCESS','',1,1552720083),(842,'vi','update','Di chuyển file themes/admin_default/modules/users/config.tpl','SUCCESS','',1,1552720083),(843,'vi','update','Di chuyển file themes/admin_default/modules/users/editcensor.tpl','SUCCESS','',1,1552720083),(844,'vi','update','Di chuyển file themes/admin_default/modules/users/editcensor_review.tpl','SUCCESS','',1,1552720083),(845,'vi','update','Di chuyển file themes/admin_default/modules/users/fields.tpl','SUCCESS','',1,1552720083),(846,'vi','update','Di chuyển file themes/admin_default/modules/users/groups.tpl','SUCCESS','',1,1552720083),(847,'vi','update','Di chuyển file themes/admin_default/modules/voting/main.tpl','SUCCESS','',1,1552720083),(848,'vi','update','Di chuyển file themes/admin_default/system/main.tpl','SUCCESS','',1,1552720083),(849,'vi','update','Di chuyển file themes/admin_default/theme.php','SUCCESS','',1,1552720083),(850,'vi','update','Di chuyển file themes/default/blocks/global.company_info.php','SUCCESS','',1,1552720083),(851,'vi','update','Di chuyển file themes/default/blocks/global.company_info.tpl','SUCCESS','',1,1552720083),(852,'vi','update','Di chuyển file themes/default/config.ini','SUCCESS','',1,1552720083),(853,'vi','update','Di chuyển file themes/default/config.php','SUCCESS','',1,1552720083),(854,'vi','update','Di chuyển file themes/default/css/contentslider.css','SUCCESS','',1,1552720083),(855,'vi','update','Di chuyển file themes/default/css/jquery.ui.tabs.css','SUCCESS','',1,1552720083),(856,'vi','update','Di chuyển file themes/default/css/style.css','SUCCESS','',1,1552720083),(857,'vi','update','Di chuyển file themes/default/default.jpg','SUCCESS','',1,1552720083),(858,'vi','update','Di chuyển file themes/default/js/main.js','SUCCESS','',1,1552720083),(859,'vi','update','Di chuyển file themes/default/js/users.js','SUCCESS','',1,1552720083),(860,'vi','update','Di chuyển file themes/default/language/admin_en.php','SUCCESS','',1,1552720083),(861,'vi','update','Di chuyển file themes/default/language/admin_fr.php','SUCCESS','',1,1552720083),(862,'vi','update','Di chuyển file themes/default/language/admin_vi.php','SUCCESS','',1,1552720083),(863,'vi','update','Di chuyển file themes/default/language/en.php','SUCCESS','',1,1552720083),(864,'vi','update','Di chuyển file themes/default/language/fr.php','SUCCESS','',1,1552720083),(865,'vi','update','Di chuyển file themes/default/modules/comment/main.tpl','SUCCESS','',1,1552720083),(866,'vi','update','Di chuyển file themes/default/modules/contact/form.tpl','SUCCESS','',1,1552720083),(867,'vi','update','Di chuyển file themes/default/modules/menu/global.bootstrap.tpl','SUCCESS','',1,1552720083),(868,'vi','update','Di chuyển file themes/default/modules/news/block_headline.tpl','SUCCESS','',1,1552720083),(869,'vi','update','Di chuyển file themes/default/modules/news/block_newscenter.tpl','SUCCESS','',1,1552720083),(870,'vi','update','Di chuyển file themes/default/modules/news/detail.tpl','SUCCESS','',1,1552720083),(871,'vi','update','Di chuyển file themes/default/modules/page/main.tpl','SUCCESS','',1,1552720083),(872,'vi','update','Di chuyển file themes/default/modules/users/block.login.tpl','SUCCESS','',1,1552720083),(873,'vi','update','Di chuyển file themes/default/modules/users/block.user_button.tpl','SUCCESS','',1,1552720083),(874,'vi','update','Di chuyển file themes/default/modules/users/register_form.tpl','SUCCESS','',1,1552720083),(875,'vi','update','Di chuyển file themes/default/system/config.tpl','SUCCESS','',1,1552720083),(876,'vi','update','Di chuyển file themes/default/theme.php','SUCCESS','',1,1552720083),(877,'vi','update','Di chuyển file themes/mobile_default/blocks/global.company_info.php','SUCCESS','',1,1552720083),(878,'vi','update','Di chuyển file themes/mobile_default/blocks/global.company_info.tpl','SUCCESS','',1,1552720083),(879,'vi','update','Di chuyển file themes/mobile_default/config.ini','SUCCESS','',1,1552720083),(880,'vi','update','Di chuyển file themes/mobile_default/config.php','SUCCESS','',1,1552720083),(881,'vi','update','Di chuyển file themes/mobile_default/css/style.css','SUCCESS','',1,1552720083),(882,'vi','update','Di chuyển file themes/mobile_default/js/main.js','SUCCESS','',1,1552720083),(883,'vi','update','Di chuyển file themes/mobile_default/language/admin_en.php','SUCCESS','',1,1552720083),(884,'vi','update','Di chuyển file themes/mobile_default/language/admin_fr.php','SUCCESS','',1,1552720083),(885,'vi','update','Di chuyển file themes/mobile_default/language/admin_vi.php','SUCCESS','',1,1552720083),(886,'vi','update','Di chuyển file themes/mobile_default/language/en.php','SUCCESS','',1,1552720083),(887,'vi','update','Di chuyển file themes/mobile_default/language/fr.php','SUCCESS','',1,1552720083),(888,'vi','update','Di chuyển file themes/mobile_default/mobile_default.jpg','SUCCESS','',1,1552720083),(889,'vi','update','Di chuyển file themes/mobile_default/modules/news/detail.tpl','SUCCESS','',1,1552720083),(890,'vi','update','Di chuyển file themes/mobile_default/modules/news/theme.php','SUCCESS','',1,1552720083),(891,'vi','update','Di chuyển file themes/mobile_default/modules/users/block.user_button.tpl','SUCCESS','',1,1552720083),(892,'vi','update','Di chuyển file themes/mobile_default/modules/users/register_form.tpl','SUCCESS','',1,1552720083),(893,'vi','update','Di chuyển file themes/mobile_default/system/config.tpl','SUCCESS','',1,1552720083),(894,'vi','update','Di chuyển file vendor/composer/autoload_classmap.php','SUCCESS','',1,1552720083),(895,'vi','update','Di chuyển file vendor/composer/autoload_files.php','SUCCESS','',1,1552720083),(896,'vi','update','Di chuyển file vendor/composer/autoload_psr4.php','SUCCESS','',1,1552720083),(897,'vi','update','Di chuyển file vendor/composer/autoload_static.php','SUCCESS','',1,1552720083),(898,'vi','update','Di chuyển file vendor/composer/installed.json','SUCCESS','',1,1552720083),(899,'vi','update','Di chuyển file vendor/phpmailer/phpmailer/LICENSE','SUCCESS','',1,1552720083),(900,'vi','update','Di chuyển file vendor/phpmailer/phpmailer/VERSION','SUCCESS','',1,1552720083),(901,'vi','update','Di chuyển file vendor/phpmailer/phpmailer/src/OAuth.php','SUCCESS','',1,1552720083),(902,'vi','update','Di chuyển file vendor/phpmailer/phpmailer/src/PHPMailer.php','SUCCESS','',1,1552720083),(903,'vi','update','Di chuyển file vendor/phpmailer/phpmailer/src/POP3.php','SUCCESS','',1,1552720083),(904,'vi','update','Di chuyển file vendor/phpmailer/phpmailer/src/SMTP.php','SUCCESS','',1,1552720083),(905,'vi','update','Di chuyển file vendor/vinades/nukeviet/Cache/Memcached.php','SUCCESS','',1,1552720083),(906,'vi','update','Di chuyển file vendor/vinades/nukeviet/Cache/Redis.php','SUCCESS','',1,1552720083),(907,'vi','update','Di chuyển file vendor/vinades/nukeviet/Client/Gfonts.php','SUCCESS','',1,1552720083),(908,'vi','update','Di chuyển file vendor/vinades/nukeviet/Core/Database.php','SUCCESS','',1,1552720083),(909,'vi','update','Di chuyển file vendor/vinades/nukeviet/Core/Error.php','SUCCESS','',1,1552720083),(910,'vi','update','Di chuyển file vendor/vinades/nukeviet/Core/Request.php','SUCCESS','',1,1552720083),(911,'vi','update','Di chuyển file vendor/vinades/nukeviet/Files/Upload.php','SUCCESS','',1,1552720083),(912,'vi','update','Di chuyển file vendor/vinades/nukeviet/Http/Http.php','SUCCESS','',1,1552720083),(913,'vi','themes','Sửa block','Name : Chủ đề','',1,1552720221),(914,'vi','themes','Sửa block','Name : Chủ đề','',1,1552720230),(915,'vi','themes','Kích hoạt theme: \"demo2\"','','',1,1552720279),(916,'vi','themes','Kích hoạt theme: \"tintuc\"','','',1,1552720349),(917,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1552720366),(918,'vi','themes','Kích hoạt theme: \"demo2\"','','',1,1552720695),(919,'vi','themes','Kích hoạt theme: \"tintuc\"','','',1,1552721149),(920,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1552721615),(921,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1552723254),(922,'vi','themes','Sửa block','Name : Chủ đề','',1,1552723480),(923,'vi','themes','Sửa block','Name : Chủ đề','',1,1552723508),(924,'vi','themes','Sửa block','Name : Chủ đề','',1,1552723525),(925,'vi','themes','Sửa block','Name : Chủ đề','',1,1552723535),(926,'vi','themes','Sửa block','Name : Chủ đề','',1,1552723645),(927,'vi','themes','Thêm block','Name : global metismenu','',1,1552723753),(928,'vi','themes','Sửa block','Name : Chủ đề','',1,1552724344),(929,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1552724616),(930,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1552724786),(931,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1552724836),(932,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1552725097),(933,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1552725189),(934,'vi','themes','Thêm block','Name : global banners','',1,1552725359),(935,'vi','themes','Thêm block','Name : global banners','',1,1552725436),(936,'vi','themes','Sửa block','Name : global banners','',1,1552725525),(937,'vi','themes','Sửa block','Name : global banners','',1,1552725543),(938,'vi','themes','Sửa block','Name : global login','',1,1552725605),(939,'vi','themes','Sửa block','Name : global login','',1,1552725623),(940,'vi','themes','Sửa block','Name : global login','',1,1552725635),(941,'vi','themes','Thêm block','Name : Bình chọn','',1,1552725824),(942,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1552726281),(943,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1552726317),(944,'vi','themes','Sửa block','Name : Số lượt truy cập','',1,1552726345),(945,'vi','themes','Kích hoạt theme: \"demo2\"','','',1,1552727834),(946,'vi','themes','Kích hoạt theme: \"default\"','','',1,1552727852),(947,'vi','themes','Kích hoạt theme: \"tintuc\"','','',1,1552728010),(948,'vi','themes','Kích hoạt theme: \"demo2\"','','',1,1552728033),(949,'vi','themes','Kích hoạt theme: \"tintuc\"','','',1,1552728210),(950,'vi','login','[chauquynh06@gmail.com] Đăng nhập',' Client IP:::1','',0,1552869261),(951,'vi','themes','Thêm block','Name : global banners','',1,1552869318),(952,'vi','themes','Thêm block','Name : Đăng nhập hệ thống QLVB','',1,1552869631),(953,'vi','themes','Sửa block','Name : Đăng nhập hệ thống QLVB','',1,1552869651),(954,'vi','themes','Thêm block','Name : global metismenu','',1,1552870436),(955,'vi','themes','Sửa block','Name : global metismenu','',1,1552870457),(956,'vi','news','Thêm chuyên mục','Chuyên mục nhân đạo','',1,1552871232),(957,'vi','news','Thêm chuyên mục','Tin hoạt động','',1,1552871330),(958,'vi','news','Thêm chuyên mục','Địa chỉ nhân đạo','',1,1552871355),(959,'vi','news','Thêm chuyên mục','Văn bản','',1,1552871364),(960,'vi','menu','Delete menu item','Item ID 27','',1,1552871395),(961,'vi','menu','Delete menu item','Item ID 28','',1,1552871395),(962,'vi','menu','Delete menu item','Item ID 29','',1,1552871395),(963,'vi','menu','Delete menu item','Item ID 30','',1,1552871395),(964,'vi','menu','Delete menu item','Item ID 31','',1,1552871395),(965,'vi','menu','Delete menu item','Item ID 32','',1,1552871395),(966,'vi','menu','Delete menu item','Item ID 33','',1,1552871395),(967,'vi','menu','Delete menu item','Item ID 34','',1,1552871395),(968,'vi','menu','Delete menu item','Item ID 35','',1,1552871395),(969,'vi','menu','Delete menu item','Item ID 36','',1,1552871395),(970,'vi','menu','Delete menu item','Item ID 37','',1,1552871395),(971,'vi','menu','Delete menu item','Item ID 38','',1,1552871395),(972,'vi','menu','Delete menu item','Item ID 39','',1,1552871395),(973,'vi','menu','Delete menu item','Item ID 40','',1,1552871395),(974,'vi','news','Thêm chuyên mục','Thông tin báo cáo','',1,1552871548),(975,'vi','news','Thêm chuyên mục','Thông tin cần biết','',1,1552871572),(976,'vi','news','Thêm chuyên mục','Văn bản HĐND','',1,1552871583),(977,'vi','news','Thêm chuyên mục','Chương trình cộng tác','',1,1552871604),(978,'vi','news','Thêm chuyên mục','Thông báo','',1,1552871619),(979,'vi','news','Thêm chuyên mục','Ý kiến kết luận','',1,1552871640),(980,'vi','news','Thêm chuyên mục','Kế hoạch','',1,1552871649),(981,'vi','news','Thêm chuyên mục','Văn bản khác','',1,1552871658),(982,'vi','news','Thêm chuyên mục','Tin tức ngân hàng chính sách','',1,1552871680),(983,'vi','news','Thêm chuyên mục','Tuyển dụng','',1,1552871690),(984,'vi','news','Thêm chuyên mục','Học tập và làm theo bác hồ','',1,1552871709),(985,'vi','news','Thêm chuyên mục','Quyết định có thay đổi về QSD đất','',1,1552871723),(986,'vi','news','Thêm chuyên mục','Lịch cắt điện','',1,1552871735),(987,'vi','news','Thêm chuyên mục','Thông báo đấu giá','',1,1552871769),(988,'vi','news','Thêm chuyên mục','Thông báo mời thầu','',1,1552871781),(989,'vi','news','Thêm chuyên mục','Kỳ họp thứ 6','',1,1552871801),(990,'vi','news','Thêm chuyên mục','Kỳ họp thứ 8 - Khóa XIX','',1,1552871824),(991,'vi','news','Thêm chuyên mục','Kỳ họp thứ 9 - Khóa XIX','',1,1552871839),(992,'vi','news','Thêm chuyên mục','Văn bản liên quan','',1,1552871850),(993,'vi','menu','delete menu id: 2','Right menu','',1,1552872009),(994,'vi','menu','Delete menu item','Item ID 56','',1,1552872096),(995,'vi','menu','Delete menu item','Item ID 57','',1,1552872096),(996,'vi','menu','Delete menu item','Item ID 58','',1,1552872096),(997,'vi','themes','Sửa block','Name : global metismenu','',1,1552872158),(998,'vi','about','Delete','ID: 8','',1,1552872443),(999,'vi','about','Delete','ID: 7','',1,1552872446),(1000,'vi','about','Delete','ID: 6','',1,1552872450),(1001,'vi','about','Delete','ID: 5','',1,1552872455),(1002,'vi','about','Delete','ID: 4','',1,1552872458),(1003,'vi','upload','Upload file','uploads/about/quangninhtongquan.jpg','',1,1552872559),(1004,'vi','upload','Upload file','uploads/about/15.jpg','',1,1552872672),(1005,'vi','upload','Upload file','uploads/about/quangninhtongquan3.jpg','',1,1552872771),(1006,'vi','upload','Upload file','uploads/about/quangninhtongquan1.jpg','',1,1552872914),(1007,'vi','upload','Upload file','uploads/about/quangninhtongquan4.jpg','',1,1552872970),(1008,'vi','upload','Upload file','uploads/about/images580306_anh26.jpg','',1,1552873042),(1009,'vi','about','Edit','ID: 1','',1,1552873066),(1010,'vi','about','Edit','ID: 2','',1,1552873205),(1011,'vi','about','Edit','ID: 3','',1,1552873304),(1012,'vi','menu','delete menu id: 5','Left Menu','',1,1552873353),(1013,'vi','menu','Delete menu item','Item ID 162','',1,1552873611),(1014,'vi','menu','Delete menu item','Item ID 163','',1,1552873611),(1015,'vi','menu','Delete menu item','Item ID 164','',1,1552873611),(1016,'vi','menu','delete menu id: 3','1111','',1,1552873623),(1017,'vi','menu','delete menu id: 6','Left menu','',1,1552873707),(1018,'vi','news','Thêm chuyên mục','Bộ máy nhà nước','',1,1552873782),(1019,'vi','news','Thêm chuyên mục','Huyện ủy','',1,1552873797),(1020,'vi','news','Thêm chuyên mục','Hội đồng nhân dân','',1,1552873806),(1021,'vi','news','Thêm chuyên mục','Ủy ban nhân dân','',1,1552873832),(1022,'vi','news','Thêm chuyên mục','UBMT TQVN huyện','',1,1552873848),(1023,'vi','news','Thêm chuyên mục','Các phòng, Ban, Đơn vị','',1,1552873873),(1024,'vi','news','Thêm chuyên mục','Các Xã, Thị trấn','',1,1552873887),(1025,'vi','news','Thêm chuyên mục','Các đơn vị khác','',1,1552873897),(1026,'vi','news','Thêm chuyên mục','Tin tức - Sự kiện','',1,1552873914),(1027,'vi','news','Thêm chuyên mục','Kinh tế - Chính trị','',1,1552873934),(1028,'vi','news','Thêm chuyên mục','Văn hóa - Xã hội','',1,1552873944),(1029,'vi','news','Thêm chuyên mục','An ninh - Quốc phòng','',1,1552873960),(1030,'vi','news','Thêm chuyên mục','Phóng sự','',1,1552873968),(1031,'vi','news','Thêm chuyên mục','Tài liệu ISO 9001&#x3A;2008','',1,1552874000),(1032,'vi','news','Thêm chuyên mục','CSCL và MTCL','',1,1552874016),(1033,'vi','news','Thêm chuyên mục','Sổ tây chất lượng','',1,1552874026),(1034,'vi','news','Thêm chuyên mục','6 Quy trình bắt buộc','',1,1552874041),(1035,'vi','news','Thêm chuyên mục','Các quy trình hỗ trợ','',1,1552874060),(1036,'vi','news','Thêm chuyên mục','Quy trình tác nghiệp','',1,1552874076),(1037,'vi','news','Thêm chuyên mục','XD Nông thôn mới','',1,1552874094),(1038,'vi','news','Thêm chuyên mục','Tin tức xây dựng NTM','',1,1552874114),(1039,'vi','news','Thêm chuyên mục','Bộ tiêu chí','',1,1552874126),(1040,'vi','news','Thêm chuyên mục','Văn bản xây dựng NTM','',1,1552874140),(1041,'vi','news','Thêm chuyên mục','Định hướng phát triển','',1,1552874160),(1042,'vi','news','Thêm chuyên mục','Tuyên truyền phổ biến PL - CS','',1,1552874186),(1043,'vi','news','Thêm chuyên mục','Chiến lược định hướng - QH phát triển','',1,1552874227),(1044,'vi','menu','delete menu id: 7','Left menu','',1,1552874366),(1045,'vi','menu','Delete menu item','Item ID 268','',1,1552874434),(1046,'vi','menu','Delete menu item','Item ID 269','',1,1552874434),(1047,'vi','menu','Delete menu item','Item ID 270','',1,1552874434),(1048,'vi','menu','delete menu id: 8','Left menu','',1,1552874454),(1049,'vi','menu','Delete menu item','Item ID 327','',1,1552874537),(1050,'vi','menu','Delete menu item','Item ID 328','',1,1552874537),(1051,'vi','menu','Delete menu item','Item ID 329','',1,1552874537),(1052,'vi','menu','Delete menu item','Item ID 352','',1,1552874556),(1053,'vi','menu','Delete menu item','Item ID 353','',1,1552874556),(1054,'vi','menu','Delete menu item','Item ID 354','',1,1552874556),(1055,'vi','menu','Delete menu item','Item ID 355','',1,1552874556),(1056,'vi','menu','Delete menu item','Item ID 344','',1,1552874560),(1057,'vi','menu','Delete menu item','Item ID 345','',1,1552874560),(1058,'vi','menu','Delete menu item','Item ID 346','',1,1552874560),(1059,'vi','menu','Delete menu item','Item ID 347','',1,1552874560),(1060,'vi','menu','Delete menu item','Item ID 348','',1,1552874560),(1061,'vi','menu','Delete menu item','Item ID 349','',1,1552874560),(1062,'vi','menu','Delete menu item','Item ID 350','',1,1552874560),(1063,'vi','menu','Delete menu item','Item ID 338','',1,1552874564),(1064,'vi','menu','Delete menu item','Item ID 339','',1,1552874564),(1065,'vi','menu','Delete menu item','Item ID 340','',1,1552874564),(1066,'vi','menu','Delete menu item','Item ID 341','',1,1552874564),(1067,'vi','menu','Delete menu item','Item ID 342','',1,1552874564),(1068,'vi','menu','Delete menu item','Item ID 334','',1,1552874569),(1069,'vi','menu','Delete menu item','Item ID 335','',1,1552874569),(1070,'vi','menu','Delete menu item','Item ID 336','',1,1552874569),(1071,'vi','themes','Sửa block','Name : Chủ đề','',1,1552874606),(1072,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1552875749),(1073,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1552877023),(1074,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1552877267),(1075,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1552878814),(1076,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1552879000),(1077,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1552879067),(1078,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1552879420),(1079,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1552880382),(1080,'vi','login','[chauquynh06@gmail.com] Đăng nhập',' Client IP:::1','',0,1552893250),(1081,'vi','themes','Sửa block','Name : Tin mới nhất','',1,1552893980),(1082,'vi','themes','Sửa block','Name : Tin mới nhất','',1,1552894013),(1083,'vi','menu','Delete menu item','Item ID 158','',1,1552894216),(1084,'vi','menu','Delete menu item','Item ID 159','',1,1552894216),(1085,'vi','menu','Delete menu item','Item ID 160','',1,1552894216),(1086,'vi','menu','Delete menu item','Item ID 16','',1,1552894218),(1087,'vi','menu','Delete menu item','Item ID 17','',1,1552894218),(1088,'vi','menu','Delete menu item','Item ID 19','',1,1552894218),(1089,'vi','menu','Delete menu item','Item ID 22','',1,1552894218),(1090,'vi','menu','delete menu id: 1','Top Menu','',1,1552894293),(1091,'vi','themes','Sửa block','Name : Menu Site','',1,1552894748),(1092,'vi','themes','Kích hoạt theme: \"default\"','','',1,1552895228),(1093,'vi','themes','Kích hoạt theme: \"tintuc\"','','',1,1552895244),(1094,'vi','themes','Kích hoạt theme: \"default\"','','',1,1552896664),(1095,'vi','themes','Kích hoạt theme: \"tintuc\"','','',1,1552896716),(1096,'vi','themes','Thiết lập layout theme: \"default\"','','',1,1552896899),(1097,'vi','news','Thêm bài viết','Lịch làm việc','',1,1552897194),(1098,'vi','news','Xóa bài viêt','Lịch làm việc','',1,1552897230),(1099,'vi','news','Thêm chuyên mục','Lịch làm viêc','',1,1552897291),(1100,'vi','news','Thêm bài viết','Lịch làm viêc','',1,1552897418),(1101,'vi','news','Xóa bài viêt','Lịch làm viêc','',1,1552897748),(1102,'vi','themes','Thiết lập layout theme: \"default\"','','',1,1552898772),(1103,'vi','themes','Sửa block','Name : global banners','',1,1552898887),(1104,'vi','banners','log_add_plan','planid 10','',1,1552900168),(1105,'vi','banners','log_add_banner','bannerid 37','',1,1552900305),(1106,'vi','themes','Thêm block','Name : global banners','',1,1552900331),(1107,'vi','banners','log_edit_banner','bannerid 37','',1,1552900398),(1108,'vi','themes','Thêm block','Name : global banners','',1,1552900416),(1109,'vi','banners','log_edit_banner','bannerid 37','',1,1552900534),(1110,'vi','banners','log_edit_banner','bannerid 37','',1,1552900579),(1111,'vi','themes','Thiết lập layout theme: \"default\"','','',1,1552901232),(1112,'vi','themes','Thiết lập layout theme: \"default\"','','',1,1552901253),(1113,'vi','themes','Thiết lập layout theme: \"default\"','','',1,1552901268),(1114,'vi','themes','Thiết lập layout theme: \"default\"','','',1,1552901315),(1115,'vi','themes','Thiết lập layout theme: \"default\"','','',1,1552901549),(1116,'vi','themes','Kích hoạt theme: \"default\"','','',1,1552901585),(1117,'vi','themes','Kích hoạt theme: \"tintuc\"','','',1,1552901647),(1118,'vi','themes','Thiết lập layout theme: \"default\"','','',1,1552901858),(1119,'vi','themes','Thiết lập layout theme: \"default\"','','',1,1552901879),(1120,'vi','themes','Kích hoạt theme: \"default\"','','',1,1552901886),(1121,'vi','themes','Kích hoạt theme: \"tintuc\"','','',1,1552901943),(1122,'vi','themes','Kích hoạt theme: \"default\"','','',1,1552901982),(1123,'vi','themes','Kích hoạt theme: \"tintuc\"','','',1,1552901993),(1124,'vi','themes','Kích hoạt theme: \"default\"','','',1,1552902006),(1125,'vi','themes','Kích hoạt theme: \"tintuc\"','','',1,1552902044),(1126,'vi','themes','Sửa block','Name : global banners','',1,1552902061),(1127,'vi','themes','Thiết lập layout theme: \"default\"','','',1,1552902135),(1128,'vi','themes','Thiết lập layout theme: \"default\"','','',1,1552902158),(1129,'vi','themes','Thêm block','Name : Số lượt truy cập','',1,1552902273),(1130,'vi','themes','Thiết lập layout theme: \"default\"','','',1,1552902720),(1131,'vi','themes','Thiết lập layout theme: \"default\"','','',1,1552902737),(1132,'vi','themes','Sửa block','Name : global banners','',1,1552902795),(1133,'vi','themes','Sửa block','Name : global banners','',1,1552902813),(1134,'vi','themes','Thiết lập layout theme: \"tintuc\"','','',1,1552903029),(1135,'vi','themes','Thiết lập layout theme: \"tintuc\"','','',1,1552903057),(1136,'vi','themes','Thiết lập layout theme: \"tintuc\"','','',1,1552903118),(1137,'vi','themes','Thiết lập layout theme: \"tintuc\"','','',1,1552903128),(1138,'vi','themes','Thiết lập layout theme: \"tintuc\"','','',1,1552903214),(1139,'vi','news','Thêm bài viết','Chương trình công tác của TT HĐND và UBND huyện Từ ngày 11&#x002F;3&#x002F;2019 đến ngày 17&#x002F;3&#x002F;2019','',1,1552903334),(1140,'vi','news','Thêm chuyên mục','Chương trình công tác của TT HĐND và UBND huyện Từ ngày 11&#x002F;3&#x002F;2019 đến ngày 17&#x002F;3&#x002F;2019','',1,1552903566),(1141,'vi','news','Xóa Chuyên mục và các bài viết','Chương trình công tác của TT HĐND và UBND huyện Từ ngày 11&#x002F;3&#x002F;2019 đến ngày 17&#x002F;3&#x002F;2019','',1,1552903611),(1142,'vi','news','Xóa bài viêt','Chương trình công tác của TT HĐND và UBND huyện Từ ngày 11&#x002F;3&#x002F;2019 đến ngày 17&#x002F;3&#x002F;2019','',1,1552903753),(1143,'vi','login','[chauquynh06@gmail.com] Đăng nhập',' Client IP:::1','',0,1552955456),(1144,'vi','news','Thêm bài viết','Chương trình công tác của TT HĐND và UBND từ ngày 18&#x002F;3 đến 24&#x002F;3&#x002F;2019','',1,1552955671),(1145,'vi','upload','Upload file','uploads/news/53.jpg','',1,1552956014),(1146,'vi','upload','Upload file','uploads/news/5.jpg','',1,1552956547),(1147,'vi','upload','Upload file','uploads/news/3.jpg','',1,1552956594),(1148,'vi','news','Sửa bài viết','UBND huyện Quảng Ninh tổ chức hội nghị triển khai công tác phòng cháy chữa cháy, bảo vệ rừng và phòng cháy chữa cháy rừng năm 2019','',1,1552956739),(1149,'vi','news','Sửa bài viết','UBND huyện Quảng Ninh tổ chức hội nghị triển khai công tác phòng cháy chữa cháy, bảo vệ rừng và phòng cháy chữa cháy rừng năm 2019','',1,1552957199),(1150,'vi','themes','Kích hoạt theme: \"default\"','','',1,1552957512),(1151,'vi','themes','Kích hoạt theme: \"tintuc\"','','',1,1552958820),(1152,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1552959717),(1153,'vi','themes','Kích hoạt theme: \"default\"','','',1,1552960982),(1154,'vi','themes','Kích hoạt theme: \"tintuc\"','','',1,1552960999),(1155,'vi','upload','Upload file','uploads/news/2019_03/hung.jpg','',1,1552961285),(1156,'vi','upload','Upload file','uploads/news/2019_03/dong1.jpg','',1,1552961354),(1157,'vi','upload','Upload file','uploads/news/2019_03/quan.jpg','',1,1552961424),(1158,'vi','news','Thêm bài viết','Thường trực Huyện ủy','',1,1552961473),(1159,'vi','news','Sửa bài viết','Thường trực Huyện ủy','',1,1552961508),(1160,'vi','news','Xóa bài viêt','Thường trực Huyện ủy','',1,1552961557),(1161,'vi','news','Thêm bài viết','Thường trực Huyện ủy','',1,1552961984),(1162,'vi','news','Xóa bài viêt','Thường trực Huyện ủy','',1,1552962045),(1163,'vi','news','Thêm bài viết','Thường trực huyện ủy','',1,1552962255),(1164,'vi','news','Sửa bài viết','Thường trực huyện ủy','',1,1552962377),(1165,'vi','upload','Upload file','uploads/news/2019_03/line-png-32.png','',1,1552962414),(1166,'vi','news','Sửa bài viết','Thường trực huyện ủy','',1,1552962420),(1167,'vi','news','Sửa bài viết','Thường trực huyện ủy','',1,1552962457),(1168,'vi','upload','Upload file','uploads/news/2019_03/thu.jpg','',1,1552962810),(1169,'vi','upload','Upload file','uploads/news/2019_03/huan.jpg','',1,1552962842),(1170,'vi','upload','Upload file','uploads/news/2019_03/tuyen.jpg','',1,1552962966),(1171,'vi','upload','Upload file','uploads/news/2019_03/dong-qs.jpg','',1,1552962999),(1172,'vi','upload','Upload file','uploads/news/2019_03/trieu1.jpg','',1,1552963067),(1173,'vi','upload','Upload file','uploads/news/2019_03/untitled.png','',1,1552963283),(1174,'vi','upload','Upload file','uploads/news/2019_03/giai1.jpg','',1,1552963328),(1175,'vi','upload','Upload file','uploads/news/2019_03/quynh1.jpg','',1,1552963366),(1176,'vi','upload','Upload file','uploads/news/2019_03/luong1.jpg','',1,1552963395),(1177,'vi','upload','Upload file','uploads/news/2019_03/kham1.jpg','',1,1552963423),(1178,'vi','upload','Upload file','uploads/news/2019_03/hoa.jpg','',1,1552963467),(1179,'vi','upload','Upload file','uploads/news/2019_03/thuyet1.jpg','',1,1552963501),(1180,'vi','upload','Upload file','uploads/news/2019_03/huong1.jpg','',1,1552963564),(1181,'vi','upload','Upload file','uploads/news/2019_03/son1.jpg','',1,1552963608),(1182,'vi','upload','Upload file','uploads/news/2019_03/dien1.jpg','',1,1552963633),(1183,'vi','news','Thêm bài viết','UBND HUYỆN','',1,1552963697),(1184,'vi','upload','Upload file','uploads/news/2019_03/chi-hai-1.jpg','',1,1552963843),(1185,'vi','news','Thêm bài viết','Ủy ban mặt trận tổ quốc Việt Nam huyện','',1,1552963902),(1186,'vi','news','Sửa bài viết','Ủy ban mặt trận tổ quốc Việt Nam huyện','',1,1552963933),(1187,'vi','upload','Upload file','uploads/news/2019_03/img_15881.jpg','',1,1552964078),(1188,'vi','news','Thêm bài viết','Ngân hàng Chính sách xã hội huyện Quảng Ninh 1,5 tỷ đồng cho chương trình tín dụng cho vay nhà ở xã hội theo Nghị định số 100&#x002F;2015&#x002F;NĐ-CP của Thủ tướng Chính phủ','',1,1552964139),(1189,'vi','news','Sửa bài viết','Ngân hàng Chính sách xã hội huyện Quảng Ninh 1,5 tỷ đồng cho chương trình tín dụng cho vay nhà ở xã hội theo Nghị định số 100&#x002F;2015&#x002F;NĐ-CP của Thủ tướng Chính phủ','',1,1552964197),(1190,'vi','upload','Upload file','uploads/news/2019_03/32213.jpg','',1,1552964294),(1191,'vi','upload','Upload file','uploads/news/2019_03/3213131.jpg','',1,1552964295),(1192,'vi','news','Thêm bài viết','Đảng bộ xã Võ Ninh triển khai nhiệm vụ xây dựng Đảng năm 2019','',1,1552964500),(1193,'vi','themes','Thêm block','Name : Các tin đã đăng','',1,1552964830),(1194,'vi','news','Xóa bài viêt','NukeViet 4.2 có gì mới?','',1,1552964925),(1195,'vi','news','Xóa bài viêt','NukeViet 4.0 có gì mới?','',1,1552964932),(1196,'vi','upload','Upload file','uploads/news/2019_03/53889962_845476745786085_5516659705281249280_n.jpg','',1,1552965233),(1197,'vi','upload','Upload file','uploads/news/2019_03/54522836_845476819119411_8974749969365860352_n.jpg','',1,1552965233),(1198,'vi','news','Thêm bài viết','Quảng Ninh xây dựng Chùa Kim Nại','',1,1552965369),(1199,'vi','news','Sửa bài viết','Quảng Ninh xây dựng Chùa Kim Nại','',1,1552965394),(1200,'vi','upload','Upload file','uploads/news/2019_03/img_0922282.jpg','',1,1552965486),(1201,'vi','news','Thêm bài viết','Hội cựu chiến binh huyện Quảng Ninh thăm tặng quà gia đình hội viên dân tộc Vân Kiều có hoàn cảnh đặc biệt khó khăn tại xã Trường Sơn','',1,1552965547),(1202,'vi','upload','Upload file','uploads/news/53297071_847068188960274_4811614847680643072_n.jpg','',1,1552965666),(1203,'vi','news','Sửa bài viết','UBND huyện Quảng Ninh tổ chức hội nghị triển khai công tác phòng cháy chữa cháy, bảo vệ rừng và phòng cháy chữa cháy rừng năm 2019','',1,1552965702),(1204,'vi','news','Thêm bài viết','Lực lượng vũ trang Quảng Ninh huấn luyện giỏi, kỷ luật nghiêm, sẵn sàng chiến đấu cao','',1,1552965787),(1205,'vi','upload','Upload file','uploads/news/2019_03/img20190226153834.jpg','',1,1552965871),(1206,'vi','upload','Upload file','uploads/news/2019_03/img20190226154036.jpg','',1,1552965871),(1207,'vi','news','Thêm bài viết','Nuôi hươu Sao cho thu nhập cao','',1,1552966001),(1208,'vi','news','Thêm bài viết','Anh hùng Nguyễn Văn Lanh và sự kiện Gạc Ma','',1,1552966081),(1209,'vi','upload','Upload file','uploads/news/2019_03/muctieu_chatluong.jpg','',1,1552966137),(1210,'vi','news','Thêm bài viết','Mục tiêu chất lượng','',1,1552966164),(1211,'vi','upload','Upload file','uploads/news/2019_03/chinhsach_chatluong.jpg','',1,1552966210),(1212,'vi','news','Thêm bài viết','CHÍNH SÁCH CHẤT LƯỢNG','',1,1552966226),(1213,'vi','news','Thêm bài viết','Nội dung','',1,1552966309),(1214,'vi','news','Thêm bài viết','Sắc xuân trên xã Nông thôn mới','',1,1552966484),(1215,'vi','upload','Upload file','uploads/news/2019_03/img_8289.jpg','',1,1552966618),(1216,'vi','upload','Upload file','uploads/news/2019_03/img_8296.jpg','',1,1552966618),(1217,'vi','upload','Upload file','uploads/news/2019_03/img_8302.jpg','',1,1552966618),(1218,'vi','news','Thêm bài viết','Vạn Ninh trên đường cán đích Nông thôn mới','',1,1552966766),(1219,'vi','news','Sửa bài viết','Vạn Ninh trên đường cán đích Nông thôn mới','',1,1552966786),(1220,'vi','banners','log_edit_banner','bannerid 11','',1,1552967483),(1221,'vi','login','[chauquynh06@gmail.com] Đăng nhập',' Client IP:::1','',0,1552979755),(1222,'vi','themes','Sửa block','Name : Thông tin nổi bật','',1,1552979865),(1223,'vi','themes','Sửa block','Name : văn bản mới','',1,1552979875),(1224,'vi','themes','Sửa block','Name : Thông tin nổi bật','',1,1552979881),(1225,'vi','themes','Sửa block','Name : Tin mới nhất','',1,1552981136),(1226,'vi','themes','Sửa block','Name : Tin mới nhất','',1,1552981148),(1227,'vi','themes','Sửa block','Name : Tin mới nhất','',1,1552981165),(1228,'vi','themes','Kích hoạt theme: \"default\"','','',1,1552981478),(1229,'vi','themes','Kích hoạt theme: \"tintuc\"','','',1,1552981553),(1230,'vi','themes','Thêm block','Name : Tin mới nhất','',1,1552981778),(1231,'vi','themes','Sửa block','Name : Tin mới nhất','',1,1552981883),(1232,'vi','themes','Sửa block','Name : Tin mới nhất','',1,1552982196),(1233,'vi','themes','Sửa block','Name : Tin mới nhất','',1,1552982272),(1234,'vi','themes','Kích hoạt theme: \"default\"','','',1,1552982308),(1235,'vi','themes','Kích hoạt theme: \"tintuc\"','','',1,1552982322),(1236,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1552982414),(1237,'vi','themes','Kích hoạt theme: \"default\"','','',1,1552982484),(1238,'vi','themes','Kích hoạt theme: \"tintuc\"','','',1,1552982497),(1239,'vi','news','Xóa Chuyên mục và các bài viết','Thông cáo báo chí','',1,1552982843),(1240,'vi','news','Xóa Chuyên mục và các bài viết','Bản tin nội bộ','',1,1552982848),(1241,'vi','news','Xóa Chuyên mục và các bài viết','Tin công nghệ','',1,1552982852),(1242,'vi','news','Xóa Chuyên mục và các bài viết','Tin tức','',1,1552982863),(1243,'vi','news','Xóa Chuyên mục và các bài viết','Sản phẩm','',1,1552982866),(1244,'vi','news','Xóa Chuyên mục và các bài viết','Đối tác','',1,1552982869),(1245,'vi','news','Xóa Chuyên mục và các bài viết','Tuyển dụng','',1,1552982893),(1246,'vi','themes','Kích hoạt theme: \"default\"','','',1,1552982959),(1247,'vi','themes','Kích hoạt theme: \"tintuc\"','','',1,1552982972),(1248,'vi','news','Thêm chuyên mục','Tin tức xã hội','',1,1552983210),(1249,'vi','news','Xóa Chuyên mục và các bài viết','Tin tức xã hội','',1,1552983222),(1250,'vi','news','Thêm bài viết','Thông báo về thời gian giám sát của Ban Pháp chế HĐND huyện','',1,1552983816),(1251,'vi','menu','Delete menu item','Item ID 397','',1,1552984510),(1252,'vi','menu','Delete menu item','Item ID 398','',1,1552984510),(1253,'vi','menu','Delete menu item','Item ID 399','',1,1552984510),(1254,'vi','menu','Delete menu item','Item ID 396','',1,1552984510),(1255,'vi','menu','Delete menu item','Item ID 401','',1,1552984510),(1256,'vi','menu','Delete menu item','Item ID 402','',1,1552984510),(1257,'vi','menu','Delete menu item','Item ID 403','',1,1552984510),(1258,'vi','menu','Delete menu item','Item ID 404','',1,1552984510),(1259,'vi','menu','Delete menu item','Item ID 405','',1,1552984510),(1260,'vi','menu','Delete menu item','Item ID 400','',1,1552984510),(1261,'vi','menu','Delete menu item','Item ID 407','',1,1552984510),(1262,'vi','menu','Delete menu item','Item ID 408','',1,1552984510),(1263,'vi','menu','Delete menu item','Item ID 409','',1,1552984510),(1264,'vi','menu','Delete menu item','Item ID 410','',1,1552984510),(1265,'vi','menu','Delete menu item','Item ID 411','',1,1552984510),(1266,'vi','menu','Delete menu item','Item ID 412','',1,1552984510),(1267,'vi','menu','Delete menu item','Item ID 413','',1,1552984510),(1268,'vi','menu','Delete menu item','Item ID 406','',1,1552984510),(1269,'vi','menu','Delete menu item','Item ID 415','',1,1552984510),(1270,'vi','menu','Delete menu item','Item ID 416','',1,1552984510),(1271,'vi','menu','Delete menu item','Item ID 417','',1,1552984510),(1272,'vi','menu','Delete menu item','Item ID 418','',1,1552984510),(1273,'vi','menu','Delete menu item','Item ID 414','',1,1552984510),(1274,'vi','menu','Delete menu item','Item ID 420','',1,1552984510),(1275,'vi','menu','Delete menu item','Item ID 421','',1,1552984510),(1276,'vi','menu','Delete menu item','Item ID 422','',1,1552984510),(1277,'vi','menu','Delete menu item','Item ID 423','',1,1552984510),(1278,'vi','menu','Delete menu item','Item ID 424','',1,1552984510),(1279,'vi','menu','Delete menu item','Item ID 425','',1,1552984510),(1280,'vi','menu','Delete menu item','Item ID 426','',1,1552984510),(1281,'vi','menu','Delete menu item','Item ID 419','',1,1552984510),(1282,'vi','menu','Delete menu item','Item ID 428','',1,1552984510),(1283,'vi','menu','Delete menu item','Item ID 429','',1,1552984510),(1284,'vi','menu','Delete menu item','Item ID 430','',1,1552984510),(1285,'vi','menu','Delete menu item','Item ID 431','',1,1552984510),(1286,'vi','menu','Delete menu item','Item ID 427','',1,1552984510),(1287,'vi','menu','Delete menu item','Item ID 433','',1,1552984510),(1288,'vi','menu','Delete menu item','Item ID 434','',1,1552984510),(1289,'vi','menu','Delete menu item','Item ID 435','',1,1552984510),(1290,'vi','menu','Delete menu item','Item ID 436','',1,1552984510),(1291,'vi','menu','Delete menu item','Item ID 437','',1,1552984510),(1292,'vi','menu','Delete menu item','Item ID 432','',1,1552984510),(1293,'vi','menu','Delete menu item','Item ID 439','',1,1552984510),(1294,'vi','menu','Delete menu item','Item ID 440','',1,1552984510),(1295,'vi','menu','Delete menu item','Item ID 441','',1,1552984510),(1296,'vi','menu','Delete menu item','Item ID 438','',1,1552984510),(1297,'vi','menu','Delete menu item','Item ID 442','',1,1552984510),(1298,'vi','menu','Delete menu item','Item ID 444','',1,1552984510),(1299,'vi','menu','Delete menu item','Item ID 445','',1,1552984510),(1300,'vi','menu','Delete menu item','Item ID 443','',1,1552984510),(1301,'vi','menu','Delete menu item','Item ID 446','',1,1552984510),(1302,'vi','menu','Delete menu item','Item ID 447','',1,1552984510),(1303,'vi','menu','Delete menu item','Item ID 448','',1,1552984510),(1304,'vi','news','Thêm bài viết','Kết quả lấy phiếu tín nhiệm đối với người giữ chức vụ do HĐND huyện bầu','',1,1552985166),(1305,'vi','news','Sửa bài viết','Nuôi hươu Sao cho thu nhập cao','',1,1552985235),(1306,'vi','news','Sửa bài viết','Vạn Ninh trên đường cán đích Nông thôn mới','',1,1552985364),(1307,'vi','news','Sửa bài viết','Quảng Ninh xây dựng Chùa Kim Nại','',1,1552985418),(1308,'vi','upload','Upload file','uploads/news/2019_03/20170510_075051.jpg','',1,1552985525),(1309,'vi','upload','Upload file','uploads/news/2019_03/20180911_072023.jpg','',1,1552985629),(1310,'vi','upload','Upload file','uploads/news/2019_03/20180911_085255.jpg','',1,1552985629),(1311,'vi','news','Thêm bài viết','Sức lan tỏa từ phong trào hiến máu tình nguyện','',1,1552985810),(1312,'vi','upload','Upload file','uploads/news/2019_03/dc-le-thi-minh-hai-chu-tich-ubmttqvn-huyen-va-dc-bui-van-mieng-chu-tich-ldld-huyen-den-tham.jpg','',1,1552985882),(1313,'vi','upload','Upload file','uploads/news/2019_03/hoang-hai-da-vao-lop-1-truong-tieu-hoc-hien-ninh.jpg','',1,1552985882),(1314,'vi','upload','Upload file','uploads/news/2019_03/hoi-ctd-huyen-va-cac-manh-thuong-quan-den-tham-gia-dinh-be-hai.jpg','',1,1552985882),(1315,'vi','news','Thêm bài viết','Lời cám ơn đến từ sáng mồng một tết','',1,1552986040),(1316,'vi','banners','log_add_plan','planid 11','',1,1552986231),(1317,'vi','banners','log_add_banner','bannerid 38','',1,1552986262),(1318,'vi','themes','Thêm block','Name : global banners','',1,1552986280),(1319,'vi','upload','Upload file','uploads/news/2019_03/dsc04091_1448871663322.jpg','',1,1552986433),(1320,'vi','news','Thêm bài viết','Quảng Ninh học tập tư tưởng Hồ Chí Minh về bảo tồn văn hóa','',1,1552986486),(1321,'vi','upload','Upload file','uploads/news/2019_03/ba-em-ly.jpeg','',1,1552986958),(1322,'vi','upload','Upload file','uploads/news/2019_03/em-ly.jpg','',1,1552986958),(1323,'vi','upload','Upload file','uploads/news/2019_03/me-e-ly.jpeg','',1,1552986958),(1324,'vi','news','Thêm bài viết','Hãy giúp em Lý vượt qua hoàn cảnh','',1,1552987110),(1325,'vi','news','Sửa bài viết','Hãy giúp em Lý vượt qua hoàn cảnh','',1,1552987143),(1326,'vi','themes','Thêm block','Name : global banners','',1,1552987201),(1327,'vi','themes','Thêm block','Name : global banners','',1,1552987258),(1328,'vi','themes','Thêm block','Name : global banners','',1,1552987312),(1329,'vi','upload','Upload file','uploads/news/2019_03/received_337938483625271.jpeg','',1,1552987502),(1330,'vi','upload','Upload file','uploads/news/2019_03/received_324148471730074.jpeg','',1,1552987503),(1331,'vi','news','Thêm bài viết','Hãy cho em một đôi mắt sáng','',1,1552987598),(1332,'vi','news','Thêm bài viết','Kết luận của đồng chí Chủ tịch UBND huyện tại buổi làm việc về thuyên chuyển giáo viên, nhân viên các trường học đầu năm 2019','',1,1552987825),(1333,'vi','news','Sửa bài viết','Kết luận của đồng chí Chủ tịch UBND huyện tại buổi làm việc về thuyên chuyển giáo viên, nhân viên các trường học đầu năm 2019','',1,1552987839),(1334,'vi','upload','Upload file','uploads/news/2019_03/53323483_2255489684503108_811730771491422208_n.jpg','',1,1552987961),(1335,'vi','upload','Upload file','uploads/news/2019_03/53347480_2255489524503124_9050008168737800192_n.jpg','',1,1552987961),(1336,'vi','upload','Upload file','uploads/news/2019_03/54279192_2255489471169796_158063880348631040_n.jpg','',1,1552987961),(1337,'vi','news','Thêm bài viết','Huyện đoàn Quảng Ninh ra quân tháng thanh niên','',1,1552988068),(1338,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1552988279),(1339,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1552988444),(1340,'vi','webtools','Dọn dẹp hệ thống','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1552988468),(1341,'vi','news','Thêm chuyên mục','Giấy mời','',1,1552988960),(1342,'vi','themes','Sửa block','Name : Đăng nhập hệ thống QLVB','',1,1552989349),(1343,'vi','themes','Sửa block','Name : Đăng nhập hệ thống QLVB','',1,1552989359),(1344,'vi','voting','Sửa thăm dò của bạn','Theo bạn thông tin nội dung website thế nào ?','',1,1552989786),(1345,'vi','login','[chauquynh06@gmail.com] Đăng nhập Thất bại',' Client IP:116.110.207.248','',0,1553129087),(1346,'vi','login','[chauquynh06@gmail.com] Đăng nhập Thất bại',' Client IP:116.110.207.248','',0,1553129179),(1347,'vi','login','[chauquynh06@gmail.com] Đăng nhập',' Client IP:116.110.207.248','',0,1553129189),(1348,'vi','themes','Sửa block','Name : Tin mới nhất','',1,1553129287),(1349,'vi','themes','Sửa block','Name : Đăng nhập hệ thống QLVB','',1,1553129316),(1350,'vi','login','[chauquynh06@gmail.com] Đăng nhập',' Client IP:116.110.199.246','',0,1553218449),(1351,'vi','banners','log_edit_banner','bannerid 9','',1,1553220710),(1352,'vi','banners','log_edit_banner','bannerid 12','',1,1553221000),(1353,'vi','login','[chauquynh] Đăng nhập Thất bại',' Client IP:14.165.70.255','',0,1554386836),(1354,'vi','login','[chauquynh] Đăng nhập Thất bại',' Client IP:14.165.70.255','',0,1554386838),(1355,'vi','login','[chauquynh] Đăng nhập Thất bại',' Client IP:14.165.70.255','',0,1554386844),(1356,'vi','login','[chauquynh06@gmail.com] Đăng nhập',' Client IP:14.165.70.255','',0,1554386850),(1357,'vi','login','[admin] Đăng nhập Thất bại',' Client IP:115.76.196.112','',0,1573800849),(1358,'vi','login','[admin] Đăng nhập',' Client IP:115.76.196.112','',0,1573800853),(1359,'vi','login','[admin] Đăng nhập',' Client IP:171.251.56.215','',0,1578363064),(1360,'vi','upload','Upload file','uploads/about/sanxuat.png','',1,1578363202),(1361,'vi','about','Add',' ','',1,1578363214);
/*!40000 ALTER TABLE `nv4_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_notification`
--

DROP TABLE IF EXISTS `nv4_notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_notification` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `send_to` mediumint(8) unsigned NOT NULL,
  `send_from` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `area` tinyint(1) unsigned NOT NULL,
  `language` char(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `obid` int(11) unsigned NOT NULL DEFAULT '0',
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `add_time` int(11) unsigned NOT NULL,
  `view` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_notification`
--

LOCK TABLES `nv4_notification` WRITE;
/*!40000 ALTER TABLE `nv4_notification` DISABLE KEYS */;
/*!40000 ALTER TABLE `nv4_notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_plugin`
--

DROP TABLE IF EXISTS `nv4_plugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_plugin` (
  `pid` tinyint(4) NOT NULL AUTO_INCREMENT,
  `plugin_file` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plugin_area` tinyint(4) NOT NULL,
  `weight` tinyint(4) NOT NULL,
  PRIMARY KEY (`pid`),
  UNIQUE KEY `plugin_file` (`plugin_file`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_plugin`
--

LOCK TABLES `nv4_plugin` WRITE;
/*!40000 ALTER TABLE `nv4_plugin` DISABLE KEYS */;
INSERT INTO `nv4_plugin` VALUES (1,'qrcode.php',1,1),(2,'cdn_js_css_image.php',3,1);
/*!40000 ALTER TABLE `nv4_plugin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_sessions`
--

DROP TABLE IF EXISTS `nv4_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_sessions` (
  `session_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `onl_time` int(11) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `session_id` (`session_id`),
  KEY `onl_time` (`onl_time`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_sessions`
--

LOCK TABLES `nv4_sessions` WRITE;
/*!40000 ALTER TABLE `nv4_sessions` DISABLE KEYS */;
INSERT INTO `nv4_sessions` VALUES ('m370fn08mnf4fkdhm4pqu7k8f3',0,'guest',1618885231);
/*!40000 ALTER TABLE `nv4_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_setup_extensions`
--

DROP TABLE IF EXISTS `nv4_setup_extensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_setup_extensions` (
  `id` int(11) NOT NULL DEFAULT '0',
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'other',
  `title` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_sys` tinyint(1) NOT NULL DEFAULT '0',
  `is_virtual` tinyint(1) NOT NULL DEFAULT '0',
  `basename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `table_prefix` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `version` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `addtime` int(11) NOT NULL DEFAULT '0',
  `author` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  UNIQUE KEY `title` (`type`,`title`),
  KEY `id` (`id`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_setup_extensions`
--

LOCK TABLES `nv4_setup_extensions` WRITE;
/*!40000 ALTER TABLE `nv4_setup_extensions` DISABLE KEYS */;
INSERT INTO `nv4_setup_extensions` VALUES (0,'module','about',0,0,'page','about','4.3.05 1552640400',1552401040,'VINADES <contact@vinades.vn>',''),(0,'module','siteterms',0,0,'page','siteterms','4.3.05 1552640400',1552401040,'VINADES <contact@vinades.vn>',''),(19,'module','banners',1,0,'banners','banners','4.3.05 1552640400',1552401040,'VINADES <contact@vinades.vn>',''),(20,'module','contact',0,1,'contact','contact','4.3.05 1552640400',1552401040,'VINADES <contact@vinades.vn>',''),(1,'module','news',0,1,'news','news','4.3.05 1552640400',1552401040,'VINADES <contact@vinades.vn>',''),(21,'module','voting',0,0,'voting','voting','4.3.05 1552640400',1552401040,'VINADES <contact@vinades.vn>',''),(0,'theme','demo',0,0,'demo','demo','4.3.05 1552898400',1552898400,'VINADES.,JSC','Đây là giao diện mặc định của hệ thống. Bạn không được xóa, đổi tên và không nên sửa trực tiếp vào giao diện này. Nếu muốn, hãy copy thành giao diện khác và kích hoạt sử dụng giao diện mới đó để chỉnh sửa và sử dụng.'),(284,'module','seek',1,0,'seek','seek','4.3.05 1552640400',1552401040,'VINADES <contact@vinades.vn>',''),(24,'module','users',1,1,'users','users','4.3.05 1552640400',1552401040,'VINADES <contact@vinades.vn>',''),(27,'module','statistics',0,0,'statistics','statistics','4.3.05 1552640400',1552401040,'VINADES <contact@vinades.vn>',''),(29,'module','menu',0,0,'menu','menu','4.3.05 1552640400',1552401040,'VINADES <contact@vinades.vn>',''),(283,'module','feeds',1,0,'feeds','feeds','4.3.05 1552640400',1552401040,'VINADES <contact@vinades.vn>',''),(282,'module','page',1,1,'page','page','4.3.05 1552640400',1552401040,'VINADES <contact@vinades.vn>',''),(281,'module','comment',1,0,'comment','comment','4.3.05 1552640400',1552401040,'VINADES <contact@vinades.vn>',''),(312,'module','freecontent',0,1,'freecontent','freecontent','4.3.05 1552640400',1552401040,'VINADES <contact@vinades.vn>',''),(327,'module','two-step-verification',1,0,'two-step-verification','two_step_verification','4.3.05 1552640400',1552401040,'VINADES <contact@vinades.vn>',''),(307,'theme','default',0,0,'default','default','4.3.05 1552640400',1552401040,'VINADES <contact@vinades.vn>',''),(311,'theme','mobile_default',0,0,'mobile_default','mobile_default','4.3.05 1552640400',1552401040,'VINADES <contact@vinades.vn>',''),(0,'theme','demo2',0,0,'demo2','demo2','4.3.05 1552898400',1552898400,'VINADES.,JSC','Đây là giao diện mặc định của hệ thống. Bạn không được xóa, đổi tên và không nên sửa trực tiếp vào giao diện này. Nếu muốn, hãy copy thành giao diện khác và kích hoạt sử dụng giao diện mới đó để chỉnh sửa và sử dụng.'),(0,'theme','phubinh',0,0,'phubinh','phubinh','4.3.05 1552898400',1552898400,'VINADES.,JSC','Đây là giao diện mặc định của hệ thống. Bạn không được xóa, đổi tên và không nên sửa trực tiếp vào giao diện này. Nếu muốn, hãy copy thành giao diện khác và kích hoạt sử dụng giao diện mới đó để chỉnh sửa và sử dụng.'),(0,'theme','tintuc',0,0,'tintuc','tintuc','4.3.05 1552898400',1552898400,'VINADES.,JSC','Đây là giao diện mặc định của hệ thống. Bạn không được xóa, đổi tên và không nên sửa trực tiếp vào giao diện này. Nếu muốn, hãy copy thành giao diện khác và kích hoạt sử dụng giao diện mới đó để chỉnh sửa và sử dụng.');
/*!40000 ALTER TABLE `nv4_setup_extensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_setup_language`
--

DROP TABLE IF EXISTS `nv4_setup_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_setup_language` (
  `lang` char(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `setup` tinyint(1) NOT NULL DEFAULT '0',
  `weight` smallint(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_setup_language`
--

LOCK TABLES `nv4_setup_language` WRITE;
/*!40000 ALTER TABLE `nv4_setup_language` DISABLE KEYS */;
INSERT INTO `nv4_setup_language` VALUES ('vi',1,1);
/*!40000 ALTER TABLE `nv4_setup_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_upload_dir`
--

DROP TABLE IF EXISTS `nv4_upload_dir`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_upload_dir` (
  `did` mediumint(8) NOT NULL AUTO_INCREMENT,
  `dirname` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` int(11) NOT NULL DEFAULT '0',
  `thumb_type` tinyint(4) NOT NULL DEFAULT '0',
  `thumb_width` smallint(6) NOT NULL DEFAULT '0',
  `thumb_height` smallint(6) NOT NULL DEFAULT '0',
  `thumb_quality` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`did`),
  UNIQUE KEY `name` (`dirname`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_upload_dir`
--

LOCK TABLES `nv4_upload_dir` WRITE;
/*!40000 ALTER TABLE `nv4_upload_dir` DISABLE KEYS */;
INSERT INTO `nv4_upload_dir` VALUES (0,'',0,3,100,150,90),(1,'uploads',1552897884,0,0,0,0),(2,'uploads/about',1552872706,0,0,0,0),(3,'uploads/banners',0,0,0,0,0),(4,'uploads/banners/files',0,0,0,0,0),(5,'uploads/comment',0,0,0,0,0),(6,'uploads/contact',0,0,0,0,0),(7,'uploads/freecontent',0,0,0,0,0),(8,'uploads/menu',0,0,0,0,0),(9,'uploads/news',1552956000,0,0,0,0),(10,'uploads/news/source',0,0,0,0,0),(11,'uploads/news/temp_pic',0,0,0,0,0),(12,'uploads/news/topics',0,0,0,0,0),(13,'uploads/page',0,0,0,0,0),(14,'uploads/siteterms',0,0,0,0,0),(15,'uploads/users',0,0,0,0,0),(16,'uploads/users/groups',0,0,0,0,0),(17,'uploads/news/2019_03',1552961378,0,0,0,0);
/*!40000 ALTER TABLE `nv4_upload_dir` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_upload_file`
--

DROP TABLE IF EXISTS `nv4_upload_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_upload_file` (
  `name` varchar(245) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ext` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `filesize` int(11) NOT NULL DEFAULT '0',
  `src` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `srcwidth` int(11) NOT NULL DEFAULT '0',
  `srcheight` int(11) NOT NULL DEFAULT '0',
  `sizes` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `mtime` int(11) NOT NULL DEFAULT '0',
  `did` int(11) NOT NULL DEFAULT '0',
  `title` varchar(245) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  UNIQUE KEY `did` (`did`,`title`),
  KEY `userid` (`userid`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_upload_file`
--

LOCK TABLES `nv4_upload_file` WRITE;
/*!40000 ALTER TABLE `nv4_upload_file` DISABLE KEYS */;
INSERT INTO `nv4_upload_file` VALUES ('quangninht...jpg','jpg','image',59207,'assets/about/quangninhtongquan.jpg',80,54,'600|399',1,1552872559,2,'quangninhtongquan.jpg','quangninhtongquan'),('15.jpg','jpg','image',63949,'assets/about/15.jpg',80,67,'590|493',1,1552872672,2,'15.jpg','15'),('logo-nukev...png','png','image',13223,'assets/about/logo-nukeviet3-flag-180x75.png',80,34,'180|75',1,1542283610,2,'logo-nukeviet3-flag-180x75.png','logo nukeviet3 flag 180x75'),('nukevietcm...png','png','image',11974,'assets/about/nukevietcms-180x84.png',80,38,'180|84',1,1542283610,2,'nukevietcms-180x84.png','nukevietcms 180x84'),('nukevietcms.png','png','image',85684,'assets/about/nukevietcms.png',80,38,'1500|700',1,1542283610,2,'nukevietcms.png','nukevietcms'),('nukevietcm...png','png','image',13125,'assets/about/nukevietcms_laco_180x57.png',80,26,'180|57',1,1542283610,2,'nukevietcms_laco_180x57.png','nukevietcms laco 180x57'),('nukevietcm...png','png','image',13319,'assets/about/nukevietcms_mu_noel_180x84.png',80,38,'180|84',1,1542283610,2,'nukevietcms_mu_noel_180x84.png','nukevietcms mu noel 180x84'),('nukevietvn.png','png','image',81035,'assets/about/nukevietvn.png',80,38,'1500|700',1,1542283610,2,'nukevietvn.png','nukevietvn'),('nukevietvn...png','png','image',11586,'assets/about/nukevietvn_180x84.png',80,38,'180|84',1,1542283610,2,'nukevietvn_180x84.png','nukevietvn 180x84'),('w.png','png','image',12156,'assets/about/w.png',80,40,'288|143',1,1542283610,2,'w.png','w'),('quangninht...jpg','jpg','image',50492,'assets/about/quangninhtongquan3.jpg',80,54,'600|400',1,1552872771,2,'quangninhtongquan3.jpg','quangninhtongquan3'),('quangninht...jpg','jpg','image',78909,'assets/about/quangninhtongquan1.jpg',80,54,'600|402',1,1552872914,2,'quangninhtongquan1.jpg','quangninhtongquan1'),('quangninht...jpg','jpg','image',63803,'assets/about/quangninhtongquan4.jpg',80,54,'600|400',1,1552872970,2,'quangninhtongquan4.jpg','quangninhtongquan4'),('images5803...jpg','jpg','image',343398,'assets/about/images580306_anh26.jpg',80,58,'665|475',1,1552873042,2,'images580306_anh26.jpg','images580306 anh26'),('chuc-mung-...jpg','jpg','image',130708,'assets/news/chuc-mung-nukeviet-thong-tu-20-bo-tttt.jpg',80,62,'461|360',1,1542283610,9,'chuc-mung-nukeviet-thong-tu-20-bo-tttt.jpg','chuc mung nukeviet thong tu 20 bo tttt'),('hoc-viec-t...jpg','jpg','image',167193,'assets/news/hoc-viec-tai-cong-ty-vinades.jpg',80,63,'460|360',1,1542283610,9,'hoc-viec-tai-cong-ty-vinades.jpg','hoc viec tai cong ty vinades'),('hoptac 6.jpg','jpg','image',12871,'uploads/news/hoptac 6.jpg',80,66,'382|314',1,1542283610,9,'hoptac 6.jpg','hoptac 6'),('hoptac.jpg','jpg','image',12871,'assets/news/hoptac.jpg',80,66,'382|314',1,1542283610,9,'hoptac.jpg','hoptac'),('nangly.jpg','jpg','image',34802,'assets/news/nangly.jpg',80,53,'500|332',1,1542283610,9,'nangly.jpg','nangly'),('nukeviet-cms.jpg','jpg','image',83489,'assets/news/nukeviet-cms.jpg',80,55,'500|345',1,1542283610,9,'nukeviet-cms.jpg','nukeviet cms'),('nukeviet-n...jpg','jpg','image',18611,'assets/news/nukeviet-nhantaidatviet2011.jpg',80,54,'400|268',1,1542283610,9,'nukeviet-nhantaidatviet2011.jpg','nukeviet nhantaidatviet2011'),('tap-huan-p...jpg','jpg','image',132379,'assets/news/tap-huan-pgd-ha-dong-2015.jpg',80,52,'460|295',1,1542283610,9,'tap-huan-pgd-ha-dong-2015.jpg','tap huan pgd ha dong 2015'),('thuc-tap-sinh.jpg','jpg','image',71135,'assets/news/thuc-tap-sinh.jpg',80,63,'460|360',1,1542283610,9,'thuc-tap-sinh.jpg','thuc tap sinh'),('tuyen-dung...png','png','image',118910,'assets/news/tuyen-dung-nvkd.png',80,56,'400|279',1,1542283610,9,'tuyen-dung-nvkd.png','tuyen dung nvkd'),('tuyendung-...jpg','jpg','image',83783,'assets/news/tuyendung-kythuat.jpg',80,80,'300|300',1,1542283610,9,'tuyendung-kythuat.jpg','tuyendung kythuat'),('53.jpg','jpg','image',96213,'assets/news/53.jpg',80,54,'600|398',1,1552956014,9,'53.jpg','53'),('5.jpg','jpg','image',82961,'assets/news/5.jpg',80,52,'600|389',1,1552956547,9,'5.jpg','5'),('3.jpg','jpg','image',83711,'assets/news/3.jpg',80,54,'600|402',1,1552956594,9,'3.jpg','3'),('hung.jpg','jpg','image',27996,'assets/news/2019_03/hung.jpg',53,80,'100|153',1,1552961285,17,'hung.jpg','hung'),('dong1.jpg','jpg','image',30199,'assets/news/2019_03/dong1.jpg',53,80,'100|150',1,1552961354,17,'dong1.jpg','dong1'),('quan.jpg','jpg','image',30963,'assets/news/2019_03/quan.jpg',53,80,'100|150',1,1552961425,17,'quan.jpg','quan'),('line-png-32.png','png','image',2788,'assets/news/2019_03/line-png-32.png',80,1,'200|1',1,1552962414,17,'line-png-32.png','line png 32'),('thu.jpg','jpg','image',30188,'assets/news/2019_03/thu.jpg',53,80,'100|150',1,1552962810,17,'thu.jpg','thu'),('huan.jpg','jpg','image',31046,'assets/news/2019_03/huan.jpg',53,80,'100|150',1,1552962842,17,'huan.jpg','huan'),('tuyen.jpg','jpg','image',32970,'assets/news/2019_03/tuyen.jpg',53,80,'100|150',1,1552962966,17,'tuyen.jpg','tuyen'),('dong-qs.jpg','jpg','image',33778,'assets/news/2019_03/dong-qs.jpg',53,80,'100|150',1,1552962999,17,'dong-qs.jpg','dong qs'),('trieu1.jpg','jpg','image',31551,'assets/news/2019_03/trieu1.jpg',53,80,'100|150',1,1552963067,17,'trieu1.jpg','trieu1'),('untitled.png','png','image',423,'assets/news/2019_03/untitled.png',53,80,'103|155',1,1552963283,17,'untitled.png','untitled'),('giai1.jpg','jpg','image',29150,'assets/news/2019_03/giai1.jpg',53,80,'100|150',1,1552963329,17,'giai1.jpg','giai1'),('quynh1.jpg','jpg','image',31128,'assets/news/2019_03/quynh1.jpg',53,80,'100|150',1,1552963366,17,'quynh1.jpg','quynh1'),('luong1.jpg','jpg','image',31397,'assets/news/2019_03/luong1.jpg',53,80,'100|150',1,1552963395,17,'luong1.jpg','luong1'),('kham1.jpg','jpg','image',30160,'assets/news/2019_03/kham1.jpg',53,80,'100|150',1,1552963423,17,'kham1.jpg','kham1'),('hoa.jpg','jpg','image',31167,'assets/news/2019_03/hoa.jpg',53,80,'100|150',1,1552963467,17,'hoa.jpg','hoa'),('thuyet1.jpg','jpg','image',31544,'assets/news/2019_03/thuyet1.jpg',53,80,'100|150',1,1552963502,17,'thuyet1.jpg','thuyet1'),('huong1.jpg','jpg','image',30735,'assets/news/2019_03/huong1.jpg',53,80,'100|150',1,1552963564,17,'huong1.jpg','huong1'),('son1.jpg','jpg','image',28960,'assets/news/2019_03/son1.jpg',53,80,'100|150',1,1552963608,17,'son1.jpg','son1'),('dien1.jpg','jpg','image',31240,'assets/news/2019_03/dien1.jpg',53,80,'100|150',1,1552963633,17,'dien1.jpg','dien1'),('chi-hai-1.jpg','jpg','image',32815,'assets/news/2019_03/chi-hai-1.jpg',53,80,'100|150',1,1552963843,17,'chi-hai-1.jpg','chi hai 1'),('img_15881.jpg','jpg','image',113258,'assets/news/2019_03/img_15881.jpg',80,60,'600|450',1,1552964078,17,'img_15881.jpg','IMG 1588&#40;1&#41;'),('32213.jpg','jpg','image',106169,'assets/news/2019_03/32213.jpg',80,60,'600|450',1,1552964294,17,'32213.jpg','32213'),('3213131.jpg','jpg','image',103127,'assets/news/2019_03/3213131.jpg',80,60,'600|450',1,1552964295,17,'3213131.jpg','3213131'),('53889962_8...jpg','jpg','image',99903,'assets/news/2019_03/53889962_845476745786085_5516659705281249280_n.jpg',80,60,'600|450',1,1552965233,17,'53889962_845476745786085_5516659705281249280_n.jpg','53889962 845476745786085 5516659705281249280 n'),('54522836_8...jpg','jpg','image',131421,'assets/news/2019_03/54522836_845476819119411_8974749969365860352_n.jpg',80,60,'600|450',1,1552965233,17,'54522836_845476819119411_8974749969365860352_n.jpg','54522836 845476819119411 8974749969365860352 n'),('img_0922282.jpg','jpg','image',77991,'assets/news/2019_03/img_0922282.jpg',80,64,'600|480',1,1552965487,17,'img_0922282.jpg','IMG 0922282'),('53297071_8...jpg','jpg','image',96213,'assets/news/53297071_847068188960274_4811614847680643072_n.jpg',80,54,'600|398',1,1552965666,9,'53297071_847068188960274_4811614847680643072_n.jpg','53297071 847068188960274 4811614847680643072 n'),('img2019022...jpg','jpg','image',115198,'assets/news/2019_03/img20190226153834.jpg',80,60,'600|450',1,1552965871,17,'img20190226153834.jpg','IMG20190226153834'),('img2019022...jpg','jpg','image',113943,'assets/news/2019_03/img20190226154036.jpg',80,60,'600|450',1,1552965871,17,'img20190226154036.jpg','IMG20190226154036'),('muctieu_ch...jpg','jpg','image',73520,'assets/news/2019_03/muctieu_chatluong.jpg',80,76,'582|556',1,1552966137,17,'muctieu_chatluong.jpg','muctieu chatluong'),('chinhsach_...jpg','jpg','image',54382,'assets/news/2019_03/chinhsach_chatluong.jpg',80,71,'578|511',1,1552966210,17,'chinhsach_chatluong.jpg','chinhsach chatluong'),('img_8289.jpg','jpg','image',76514,'assets/news/2019_03/img_8289.jpg',80,60,'600|450',1,1552966618,17,'img_8289.jpg','IMG 8289'),('img_8296.jpg','jpg','image',119516,'assets/news/2019_03/img_8296.jpg',80,60,'600|450',1,1552966618,17,'img_8296.jpg','IMG 8296'),('img_8302.jpg','jpg','image',126947,'assets/news/2019_03/img_8302.jpg',80,60,'600|450',1,1552966618,17,'img_8302.jpg','IMG 8302'),('20170510_0...jpg','jpg','image',105257,'assets/news/2019_03/20170510_075051.jpg',80,60,'600|450',1,1552985525,17,'20170510_075051.jpg','20170510 075051'),('20180911_0...jpg','jpg','image',100616,'assets/news/2019_03/20180911_072023.jpg',80,60,'600|450',1,1552985629,17,'20180911_072023.jpg','20180911 072023'),('20180911_0...jpg','jpg','image',153135,'assets/news/2019_03/20180911_085255.jpg',60,80,'600|800',1,1552985629,17,'20180911_085255.jpg','20180911 085255'),('dc-le-thi-...jpg','jpg','image',100856,'assets/news/2019_03/dc-le-thi-minh-hai-chu-tich-ubmttqvn-huyen-va-dc-bui-van-mieng-chu-tich-ldld-huyen-den-tham.jpg',80,60,'600|450',1,1552985882,17,'dc-le-thi-minh-hai-chu-tich-ubmttqvn-huyen-va-dc-bui-van-mieng-chu-tich-ldld-huyen-den-tham.jpg','Đc lê Thị Minh Hải, chủ tịch UBMTTQVN huyện và đc Bùi Văn Miêng Chủ tịch LĐLĐ huyện đến thăm'),('hoang-hai-...jpg','jpg','image',168045,'assets/news/2019_03/hoang-hai-da-vao-lop-1-truong-tieu-hoc-hien-ninh.jpg',60,80,'600|800',1,1552985882,17,'hoang-hai-da-vao-lop-1-truong-tieu-hoc-hien-ninh.jpg','Hoàng Hải đã vào lớp 1, trường Tiểu học Hiền Ninh'),('hoi-ctd-hu...jpg','jpg','image',83463,'assets/news/2019_03/hoi-ctd-huyen-va-cac-manh-thuong-quan-den-tham-gia-dinh-be-hai.jpg',80,60,'600|450',1,1552985882,17,'hoi-ctd-huyen-va-cac-manh-thuong-quan-den-tham-gia-dinh-be-hai.jpg','Hội CTĐ huyện và các mạnh thường quân đến thăm gia đình bé Hải'),('dsc04091_1...jpg','jpg','image',16701,'assets/news/2019_03/dsc04091_1448871663322.jpg',80,60,'320|240',1,1552986433,17,'dsc04091_1448871663322.jpg','DSC04091 1448871663322'),('ba-em-ly.jpeg','jpeg','image',59673,'assets/news/2019_03/ba-em-ly.jpeg',60,80,'852|1136',1,1552986958,17,'ba-em-ly.jpeg','ba em ly'),('em-ly.jpg','jpg','image',220289,'assets/news/2019_03/em-ly.jpg',80,60,'600|450',1,1552986958,17,'em-ly.jpg','em ly'),('me-e-ly.jpeg','jpeg','image',50542,'assets/news/2019_03/me-e-ly.jpeg',40,80,'520|1040',1,1552986958,17,'me-e-ly.jpeg','me e ly'),('received_...jpeg','jpeg','image',384613,'assets/news/2019_03/received_337938483625271.jpeg',80,60,'1500|1125',1,1552987503,17,'received_337938483625271.jpeg','received 337938483625271'),('received_...jpeg','jpeg','image',336703,'assets/news/2019_03/received_324148471730074.jpeg',80,60,'1500|1125',1,1552987504,17,'received_324148471730074.jpeg','received 324148471730074'),('53323483_2...jpg','jpg','image',109389,'assets/news/2019_03/53323483_2255489684503108_811730771491422208_n.jpg',80,46,'600|338',1,1552987961,17,'53323483_2255489684503108_811730771491422208_n.jpg','53323483 2255489684503108 811730771491422208 n'),('53347480_2...jpg','jpg','image',84932,'assets/news/2019_03/53347480_2255489524503124_9050008168737800192_n.jpg',80,60,'600|450',1,1552987961,17,'53347480_2255489524503124_9050008168737800192_n.jpg','53347480 2255489524503124 9050008168737800192 n'),('54279192_2...jpg','jpg','image',65263,'assets/news/2019_03/54279192_2255489471169796_158063880348631040_n.jpg',80,46,'600|338',1,1552987961,17,'54279192_2255489471169796_158063880348631040_n.jpg','54279192 2255489471169796 158063880348631040 n'),('sanxuat.png','png','image',161094,'assets/about/sanxuat.png',80,52,'944|615',1,1578363202,2,'sanxuat.png','sanxuat');
/*!40000 ALTER TABLE `nv4_upload_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_users`
--

DROP TABLE IF EXISTS `nv4_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_users` (
  `userid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `group_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `md5username` char(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `gender` char(1) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `birthday` int(11) NOT NULL,
  `sig` text COLLATE utf8mb4_unicode_ci,
  `regdate` int(11) NOT NULL DEFAULT '0',
  `question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `passlostkey` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `view_mail` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `remember` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `in_groups` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `active2step` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `secretkey` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `checknum` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `last_login` int(11) unsigned NOT NULL DEFAULT '0',
  `last_ip` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `last_agent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `last_openid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `idsite` int(11) NOT NULL DEFAULT '0',
  `safemode` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `safekey` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `email_verification_time` int(11) NOT NULL DEFAULT '-1' COMMENT '-3: Tài khoản sys, -2: Admin kích hoạt, -1 không cần kích hoạt, 0: Chưa xác minh, > 0 thời gian xác minh',
  PRIMARY KEY (`userid`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `md5username` (`md5username`),
  UNIQUE KEY `email` (`email`),
  KEY `idsite` (`idsite`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_users`
--

LOCK TABLES `nv4_users` WRITE;
/*!40000 ALTER TABLE `nv4_users` DISABLE KEYS */;
INSERT INTO `nv4_users` VALUES (1,1,'admin','21232f297a57a5a743894a0e4a801fc3','{SSHA512}8/NX6HRUwflvP968Iywx7VGEcZDBXQusL2heHa+5VL6Fq3lFz0rDEGtG+uBJr2UW2j199rD8vEhMzdyIGsIKSmZhZDY=','chauquynh06@gmail.com','admin','','','',0,'',1552401113,'Động vật yêu thích?','Con Chó','',0,1,'1',1,0,'','976080630e0444f1243e00c91b33d114',1552620874,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36','',0,0,'',-3);
/*!40000 ALTER TABLE `nv4_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_users_backupcodes`
--

DROP TABLE IF EXISTS `nv4_users_backupcodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_users_backupcodes` (
  `userid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_used` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `time_used` int(11) unsigned NOT NULL DEFAULT '0',
  `time_creat` int(11) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `userid` (`userid`,`code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_users_backupcodes`
--

LOCK TABLES `nv4_users_backupcodes` WRITE;
/*!40000 ALTER TABLE `nv4_users_backupcodes` DISABLE KEYS */;
/*!40000 ALTER TABLE `nv4_users_backupcodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_users_config`
--

DROP TABLE IF EXISTS `nv4_users_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_users_config` (
  `config` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `edit_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`config`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_users_config`
--

LOCK TABLES `nv4_users_config` WRITE;
/*!40000 ALTER TABLE `nv4_users_config` DISABLE KEYS */;
INSERT INTO `nv4_users_config` VALUES ('access_admin','a:6:{s:12:\"access_addus\";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:14:\"access_waiting\";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:13:\"access_editus\";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:12:\"access_delus\";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:13:\"access_passus\";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:13:\"access_groups\";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}}',1352873462),('password_simple','000000|1234|2000|12345|111111|123123|123456|11223344|654321|696969|1234567|12345678|87654321|123456789|23456789|1234567890|66666666|68686868|66668888|88888888|99999999|999999999|1234569|12345679|aaaaaa|abc123|abc123@|abc@123|admin123|admin123@|admin@123|nuke123|nuke123@|nuke@123|adobe1|adobe123|azerty|baseball|dragon|football|harley|iloveyou|jennifer|jordan|letmein|macromedia|master|michael|monkey|mustang|password|photoshop|pussy|qwerty|shadow|superman|hoilamgi|khongbiet|khongco|khongcopass',1552401040),('deny_email','yoursite.com|mysite.com|localhost|xxx',1552401040),('deny_name','anonimo|anonymous|god|linux|nobody|operator|root',1552401040),('avatar_width','80',1552401040),('avatar_height','80',1552401040),('active_group_newusers','0',1552401040),('active_user_logs','1',1552401040),('min_old_user','16',1552401040),('register_active_time','86400',1552401040),('siteterms_vi','<p> Để trở thành thành viên, bạn phải cam kết đồng ý với các điều khoản dưới đây. Chúng tôi có thể thay đổi lại những điều khoản này vào bất cứ lúc nào và chúng tôi sẽ cố gắng thông báo đến bạn kịp thời.<br /> <br /> Bạn cam kết không gửi bất cứ bài viết có nội dung lừa đảo, thô tục, thiếu văn hoá; vu khống, khiêu khích, đe doạ người khác; liên quan đến các vấn đề tình dục hay bất cứ nội dung nào vi phạm luật pháp của quốc gia mà bạn đang sống, luật pháp của quốc gia nơi đặt máy chủ của website này hay luật pháp quốc tế. Nếu vẫn cố tình vi phạm, ngay lập tức bạn sẽ bị cấm tham gia vào website. Địa chỉ IP của tất cả các bài viết đều được ghi nhận lại để bảo vệ các điều khoản cam kết này trong trường hợp bạn không tuân thủ.<br /> <br /> Bạn đồng ý rằng website có quyền gỡ bỏ, sửa, di chuyển hoặc khoá bất kỳ bài viết nào trong website vào bất cứ lúc nào tuỳ theo nhu cầu công việc.<br /> <br /> Đăng ký làm thành viên của chúng tôi, bạn cũng phải đồng ý rằng, bất kỳ thông tin cá nhân nào mà bạn cung cấp đều được lưu trữ trong cơ sở dữ liệu của hệ thống. Mặc dù những thông tin này sẽ không được cung cấp cho bất kỳ người thứ ba nào khác mà không được sự đồng ý của bạn, chúng tôi không chịu trách nhiệm về việc những thông tin cá nhân này của bạn bị lộ ra bên ngoài từ những kẻ phá hoại có ý đồ xấu tấn công vào cơ sở dữ liệu của hệ thống.</p>',1274757129),('active_editinfo_censor','0',1552720066);
/*!40000 ALTER TABLE `nv4_users_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_users_edit`
--

DROP TABLE IF EXISTS `nv4_users_edit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_users_edit` (
  `userid` mediumint(8) unsigned NOT NULL,
  `lastedit` int(11) unsigned NOT NULL DEFAULT '0',
  `info_basic` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `info_custom` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_users_edit`
--

LOCK TABLES `nv4_users_edit` WRITE;
/*!40000 ALTER TABLE `nv4_users_edit` DISABLE KEYS */;
/*!40000 ALTER TABLE `nv4_users_edit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_users_field`
--

DROP TABLE IF EXISTS `nv4_users_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_users_field` (
  `fid` mediumint(8) NOT NULL AUTO_INCREMENT,
  `field` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` int(10) unsigned NOT NULL DEFAULT '1',
  `field_type` enum('number','date','textbox','textarea','editor','select','radio','checkbox','multiselect') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'textbox',
  `field_choices` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sql_choices` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `match_type` enum('none','alphanumeric','email','url','regex','callback') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'none',
  `match_regex` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `func_callback` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `min_length` int(11) NOT NULL DEFAULT '0',
  `max_length` bigint(20) unsigned NOT NULL DEFAULT '0',
  `required` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `show_register` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `user_editable` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `show_profile` tinyint(4) NOT NULL DEFAULT '1',
  `class` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `default_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `system` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fid`),
  UNIQUE KEY `field` (`field`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_users_field`
--

LOCK TABLES `nv4_users_field` WRITE;
/*!40000 ALTER TABLE `nv4_users_field` DISABLE KEYS */;
INSERT INTO `nv4_users_field` VALUES (1,'first_name',1,'textbox','','','none','','',0,100,1,1,1,1,'input','a:1:{s:2:\"vi\";a:2:{i:0;s:4:\"Tên\";i:1;s:0:\"\";}}','',1),(2,'last_name',2,'textbox','','','none','','',0,100,0,1,1,1,'input','a:1:{s:2:\"vi\";a:2:{i:0;s:20:\"Họ và tên đệm\";i:1;s:0:\"\";}}','',1),(3,'gender',3,'select','a:3:{s:1:\"N\";s:0:\"\";s:1:\"M\";s:0:\"\";s:1:\"F\";s:0:\"\";}','','none','','',0,1,0,1,1,1,'input','a:1:{s:2:\"vi\";a:2:{i:0;s:12:\"Giới tính\";i:1;s:0:\"\";}}','2',1),(4,'birthday',4,'date','a:1:{s:12:\"current_date\";i:0;}','','none','','',0,0,1,1,1,1,'input','a:1:{s:2:\"vi\";a:2:{i:0;s:22:\"Ngày tháng năm sinh\";i:1;s:0:\"\";}}','0',1),(5,'sig',5,'textarea','','','none','','',0,1000,0,1,1,1,'input','a:1:{s:2:\"vi\";a:2:{i:0;s:9:\"Chữ ký\";i:1;s:0:\"\";}}','',1),(6,'question',6,'textbox','','','none','','',3,255,1,1,1,1,'input','a:1:{s:2:\"vi\";a:2:{i:0;s:22:\"Câu hỏi bảo mật\";i:1;s:0:\"\";}}','',1),(7,'answer',7,'textbox','','','none','','',3,255,1,1,1,1,'input','a:1:{s:2:\"vi\";a:2:{i:0;s:22:\"Trả lời câu hỏi\";i:1;s:0:\"\";}}','',1);
/*!40000 ALTER TABLE `nv4_users_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_users_groups`
--

DROP TABLE IF EXISTS `nv4_users_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_users_groups` (
  `group_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(240) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci,
  `group_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0:Sys, 1:approval, 2:public',
  `group_color` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group_avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `require_2step_admin` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `require_2step_site` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_default` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `add_time` int(11) NOT NULL,
  `exp_time` int(11) NOT NULL,
  `weight` int(11) unsigned NOT NULL DEFAULT '0',
  `act` tinyint(1) unsigned NOT NULL,
  `idsite` int(11) unsigned NOT NULL DEFAULT '0',
  `numbers` mediumint(9) unsigned NOT NULL DEFAULT '0',
  `siteus` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `config` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`group_id`),
  UNIQUE KEY `ktitle` (`title`,`idsite`),
  KEY `exp_time` (`exp_time`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_users_groups`
--

LOCK TABLES `nv4_users_groups` WRITE;
/*!40000 ALTER TABLE `nv4_users_groups` DISABLE KEYS */;
INSERT INTO `nv4_users_groups` VALUES (1,'Super admin','','Super Admin','',0,'','',0,0,0,1552401040,0,1,1,0,1,0,'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}'),(2,'General admin','','General Admin','',0,'','',0,0,0,1552401040,0,2,1,0,0,0,'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}'),(3,'Module admin','','Module Admin','',0,'','',0,0,0,1552401040,0,3,1,0,0,0,'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}'),(4,'Users','','Users','',0,'','',0,0,0,1552401040,0,4,1,0,1,0,'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}'),(7,'New Users','','New Users','',0,'','',0,0,0,1552401040,0,5,1,0,0,0,'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}'),(5,'Guest','','Guest','',0,'','',0,0,0,1552401040,0,6,1,0,0,0,'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}'),(6,'All','','All','',0,'','',0,0,0,1552401040,0,7,1,0,0,0,'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}'),(10,'NukeViet-Fans','','Nhóm những người hâm mộ hệ thống NukeViet','',2,'','',0,0,1,1552401040,0,8,1,0,0,0,'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}'),(11,'NukeViet-Admins','','Nhóm những người quản lý website xây dựng bằng hệ thống NukeViet','',2,'','',0,0,0,1552401040,0,9,1,0,0,0,'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}'),(12,'NukeViet-Programmers','','Nhóm Lập trình viên hệ thống NukeViet','',1,'','',0,0,0,1552401040,0,10,1,0,0,0,'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}');
/*!40000 ALTER TABLE `nv4_users_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_users_groups_users`
--

DROP TABLE IF EXISTS `nv4_users_groups_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_users_groups_users` (
  `group_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `is_leader` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `approved` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`group_id`,`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_users_groups_users`
--

LOCK TABLES `nv4_users_groups_users` WRITE;
/*!40000 ALTER TABLE `nv4_users_groups_users` DISABLE KEYS */;
INSERT INTO `nv4_users_groups_users` VALUES (1,1,1,1,'0');
/*!40000 ALTER TABLE `nv4_users_groups_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_users_info`
--

DROP TABLE IF EXISTS `nv4_users_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_users_info` (
  `userid` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_users_info`
--

LOCK TABLES `nv4_users_info` WRITE;
/*!40000 ALTER TABLE `nv4_users_info` DISABLE KEYS */;
INSERT INTO `nv4_users_info` VALUES (1);
/*!40000 ALTER TABLE `nv4_users_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_users_openid`
--

DROP TABLE IF EXISTS `nv4_users_openid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_users_openid` (
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `openid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `opid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`opid`),
  KEY `userid` (`userid`),
  KEY `email` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_users_openid`
--

LOCK TABLES `nv4_users_openid` WRITE;
/*!40000 ALTER TABLE `nv4_users_openid` DISABLE KEYS */;
/*!40000 ALTER TABLE `nv4_users_openid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_users_question`
--

DROP TABLE IF EXISTS `nv4_users_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_users_question` (
  `qid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(240) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `lang` char(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `weight` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `add_time` int(11) unsigned NOT NULL DEFAULT '0',
  `edit_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`qid`),
  UNIQUE KEY `title` (`title`,`lang`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_users_question`
--

LOCK TABLES `nv4_users_question` WRITE;
/*!40000 ALTER TABLE `nv4_users_question` DISABLE KEYS */;
INSERT INTO `nv4_users_question` VALUES (1,'Bạn thích môn thể thao nào nhất','vi',1,1274840238,1274840238),(2,'Món ăn mà bạn yêu thích','vi',2,1274840250,1274840250),(3,'Thần tượng điện ảnh của bạn','vi',3,1274840257,1274840257),(4,'Bạn thích nhạc sỹ nào nhất','vi',4,1274840264,1274840264),(5,'Quê ngoại của bạn ở đâu','vi',5,1274840270,1274840270),(6,'Tên cuốn sách &quot;gối đầu giường&quot;','vi',6,1274840278,1274840278),(7,'Ngày lễ mà bạn luôn mong đợi','vi',7,1274840285,1274840285);
/*!40000 ALTER TABLE `nv4_users_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_users_reg`
--

DROP TABLE IF EXISTS `nv4_users_reg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_users_reg` (
  `userid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `md5username` char(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `gender` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `birthday` int(11) NOT NULL,
  `sig` text COLLATE utf8mb4_unicode_ci,
  `regdate` int(11) unsigned NOT NULL DEFAULT '0',
  `question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `checknum` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `users_info` text COLLATE utf8mb4_unicode_ci,
  `openid_info` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`userid`),
  UNIQUE KEY `login` (`username`),
  UNIQUE KEY `md5username` (`md5username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_users_reg`
--

LOCK TABLES `nv4_users_reg` WRITE;
/*!40000 ALTER TABLE `nv4_users_reg` DISABLE KEYS */;
/*!40000 ALTER TABLE `nv4_users_reg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_about`
--

DROP TABLE IF EXISTS `nv4_vi_about`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_about` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imagealt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imageposition` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `bodytext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` text COLLATE utf8mb4_unicode_ci,
  `socialbutton` tinyint(4) NOT NULL DEFAULT '0',
  `activecomm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `layout_func` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `weight` smallint(4) NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `add_time` int(11) NOT NULL DEFAULT '0',
  `edit_time` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hot_post` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `alias` (`alias`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_about`
--

LOCK TABLES `nv4_vi_about` WRITE;
/*!40000 ALTER TABLE `nv4_vi_about` DISABLE KEYS */;
INSERT INTO `nv4_vi_about` VALUES (1,'Tổng quan','tong-quan','','',0,'','<div class=\"article_title \" style=\"padding:5px 0px 10px; text-align:start; text-indent:0px; -webkit-text-stroke-width:0px\"><span style=\"font-size:14px\"><span style=\"font-family:Arial, Verdana, Helvetica, tahoma, sans-serif\"><span style=\"line-height:16px\"><span style=\"color:rgb(4, 64, 131);\"><span style=\"font-weight:bold\"><span style=\"text-decoration:none\"><span style=\"display:block\"><span style=\"font-style:normal\"><span style=\"font-variant-ligatures:normal\"><span style=\"font-variant-caps:normal\"><span style=\"letter-spacing:normal\"><span style=\"orphans:2\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:2\"><span style=\"word-spacing:0px\"><span style=\"background-color:rgb(255, 255, 255);\">Quảng Ninh- một chặng đường&nbsp;</span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></div>  <div class=\"article_summary_detail \" style=\"text-align:justify; text-indent:0px; -webkit-text-stroke-width:0px\"><span style=\"font-size:12px\"><span style=\"font-family:Arial, Verdana, Helvetica, tahoma, sans-serif\"><span style=\"line-height:18px\"><span style=\"color:rgb(0, 0, 0);\"><span style=\"font-style:normal\"><span style=\"font-variant-ligatures:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:400\"><span style=\"letter-spacing:normal\"><span style=\"orphans:2\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:2\"><span style=\"word-spacing:0px\"><span style=\"background-color:rgb(255, 255, 255);\"><span style=\"text-decoration-style:initial\"><span style=\"text-decoration-color:initial\">Huyện Quảng Ninh được tái lập vào ngày 1/7/1990 theo Quyết định số 190/QĐ-HĐBT, ngày 1/6/1990 của Hội đồng Bộ trưởng (nay là Chính phủ) sau khi chia tách huyện Lệ Ninh thành hai huyện Quảng Ninh và Lệ Thủy.</span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span>  <div style=\"text-align:center\"><img alt=\"Quảng Ninh một chặng đường\" height=\"334\" src=\"/web/uploads/about/quangninhtongquan.jpg\" width=\"503\" /></div> Với vị trí địa lý và điều kiện tự nhiên đa dạng: 25 km bờ biển; 35 km đường biên giáp nước bạn Lào cùng nhiều diện tích đất rừng; cách thành phố Đồng Hới 7 km về phía Nam với tổng diện tích tự nhiên là 119.089 ha và dân số trên 90.000 người gồm 2 dân tộc là người Kinh và Vân Kiều cùng sinh sống;  <div style=\"text-align:center\"><img alt=\"15\" height=\"420\" src=\"/web/uploads/about/15.jpg\" width=\"503\" /></div> Là mảnh đất giàu truyền thống cách mạng, Quảng Ninh với nhiều địa danh nổi tiếng nằm trong bát danh hương của tỉnh Quảng Bình &quot;Văn-Võ-Cổ-Kim&quot;. Trong hai cuộc kháng chiến trường kỳ của dân tộc với tiếng bom Lộc Long, tiếng trống Ninh Châu mở đầu cho phong trào Quảng Bình quật khởi trong kháng chiến chống thực dân Pháp; đến những năm kháng chiến chống Mỹ cứu nước với khẩu hiệu &quot;Xe chưa qua nhà không tiếc, đường chưa thông không tiếc máu xương&quot;, nhân dân Quảng Ninh đã đóng góp sức người, sức của cho tiền tuyến cùng với cả nước làm nên đại thắng Mùa Xuân năm 1975, giải phóng hoàn toàn miền Nam, thống nhất đất nước.<br  /> <img alt=\"Quảng Ninh\" height=\"335\" src=\"/web/uploads/about/quangninhtongquan3.jpg\" style=\"float:left\" width=\"503\" />&nbsp;<span style=\"font-size:12px\"><span style=\"font-family:Arial, Verdana, Helvetica, tahoma, sans-serif\"><span style=\"line-height:15.6px\"><span style=\"color:rgb(0, 0, 0);\"><span style=\"font-style:normal\"><span style=\"font-variant-ligatures:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:400\"><span style=\"letter-spacing:normal\"><span style=\"orphans:2\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:2\"><span style=\"word-spacing:0px\"><span style=\"background-color:rgb(255, 255, 255);\"><span style=\"text-decoration-style:initial\"><span style=\"text-decoration-color:initial\"><span style=\"font-size:10pt\"><span style=\"font-family:Arial\"><span style=\"line-height:17.3333px\"><span style=\"color:rgb(0, 7, 17);\"><span style=\"letter-spacing:-0.1pt\">Với tinh thần đoàn kết, năng động, sáng tạo, phát huy nội lực và tranh thủ sự giúp đỡ của các cấp, huyện Quảng Ninh đã từng bước vươn lên vượt qua những khó khăn, thực hiện thắng lợi mục tiêu phát triển kinh tế, văn hóa - xã hội, giữ vững quốc phòng - an ninh trên địa bàn huyện</span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span>  <div><span style=\"font-size:12px\"><span style=\"font-family:Arial, Verdana, Helvetica, tahoma, sans-serif\"><span style=\"line-height:15.6px\"><span style=\"color:rgb(0, 0, 0);\"><span style=\"font-style:normal\"><span style=\"font-variant-ligatures:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:400\"><span style=\"letter-spacing:normal\"><span style=\"orphans:2\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:2\"><span style=\"word-spacing:0px\"><span style=\"background-color:rgb(255, 255, 255);\"><span style=\"text-decoration-style:initial\"><span style=\"text-decoration-color:initial\"><span lang=\"EN-GB\" style=\"font-size:10pt\"><span style=\"font-family:Arial\"><span style=\"line-height:17.3333px\"><span style=\"color:rgb(0, 7, 17);\">Tốc độ tăng trưởng kinh tế bình quân hàng năm 13%. Cơ cấu kinh tế chuyển dịch nhanh theo hướng tăng dần tỷ trọng công nghiệp, dịch vụ du lịch. Giá trị sản xuất công nghiệp, xây dựng từ xuất phát điểm còn rất thấp, đến năm 2015 tăng 22%, giá trị khu vực dịch vụ tăng 12%, sản xuất nông - lâm - ngư nghiệp tăng 4,2%. Cơ cấu kinh tế đến năm 2015: công nghiệp, xây dựng chiếm 39%, nông lâm - ngư nghiệp chiếm 35%, thương mại, dịch vụ chiếm 26%. Tổng thu ngân sách trên địa bàn đạt 62,59 tỷ đồng, tăng bình quân 10,4%; thu nhập bình quân đầu người đạt 26 triệu đồng/người/năm.<br  /> <img alt=\"Quảng Ninh\" height=\"337\" src=\"/web/uploads/about/quangninhtongquan1.jpg\" style=\"float:right\" width=\"503\" /><span style=\"letter-spacing:-0.2pt\">Phát triển nông nghiệp toàn diện theo hướng sản xuất hàng hóa, nâng cao hiệu quả kinh tế trên cùng một đơn vị diện tích, gắn với chương trình mục tiêu quốc gia xây dựng nông thôn mới. Sau khi đưa vào sử dụng hồ thủy lợi Rào Đá, diện tích sản xuất các loại cây trồng được mở rộng; đến năm 2014, diện tích trồng cây lương thực đạt 9.400 ha, tăng hơn 1.000 ha. Chú trọng thực hiện đề án cải tạo bộ giống mới có năng suất, chất lượng, áp dụng tiến bộ khoa học kỹ thuật đưa giống kỹ thuật mới vào sản xuất chiếm trên 62% diện tích, góp phần tăng tổng sản lượng lương thực từ 19.200 tấn năm 1991 lên 50.680 tấn năm 2014.</span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span><br  /> <span style=\"font-size:12px\"><span style=\"font-family:Arial, Verdana, Helvetica, tahoma, sans-serif\"><span style=\"line-height:15.6px\"><span style=\"color:rgb(0, 0, 0);\"><span style=\"font-style:normal\"><span style=\"font-variant-ligatures:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:400\"><span style=\"letter-spacing:normal\"><span style=\"orphans:2\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:2\"><span style=\"word-spacing:0px\"><span style=\"background-color:rgb(255, 255, 255);\"><span style=\"text-decoration-style:initial\"><span style=\"text-decoration-color:initial\"><span lang=\"EN-GB\" style=\"font-size:10pt\"><span style=\"font-family:Arial\"><span style=\"line-height:17.3333px\"><span style=\"color:rgb(0, 7, 17);\">Công tác chuyển đổi cơ cấu cây trồng được huyện và các xã, thị trấn quan tâm chỉ đạo quyết liệt, bước đầu hình thành những vùng chuyên canh cây lúa, ngô, rau màu và các loại cây thực phẩm khác. Đặc biệt, toàn huyện đã chuyển đổi được 300 ha đất trồng lúa ít hiệu quả ở các xã như Hàm Ninh, Xuân Ninh, Vạn Ninh, Vĩnh Ninh, Hiền Ninh vv…sang trồng dưa hấu, ngô, đậu xanh, mướp đắng…góp phần tạo ra sản phẩm hàng hóa, nâng cao hiệu quả kinh tế trên cùng một đơn vị diện tích. Đến nay, toàn huyện có 3.565 ha có thu nhập từ 70 triệu đồng trở lên/ha/năm, trong đó có 380 ha cho thu nhập trên 100 triệu đồng/năm.</span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span><br  /> <span style=\"font-size:12px\"><span style=\"font-family:Arial, Verdana, Helvetica, tahoma, sans-serif\"><span style=\"line-height:15.6px\"><span style=\"color:rgb(0, 0, 0);\"><span style=\"font-style:normal\"><span style=\"font-variant-ligatures:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:400\"><span style=\"letter-spacing:normal\"><span style=\"orphans:2\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:2\"><span style=\"word-spacing:0px\"><span style=\"background-color:rgb(255, 255, 255);\"><span style=\"text-decoration-style:initial\"><span style=\"text-decoration-color:initial\"><span style=\"font-size:13.3333px\"><span style=\"font-family:Arial\"><span style=\"line-height:17.3333px\"><span style=\"color:rgb(0, 7, 17);\">Chú trọng nâng cao chất lượng số lượng tổng đàn theo hướng sind hóa đàn bò, nạc hóa đàn lợn và tập trung xây dựng các mô hình trang trại, gia trại chăn nuôi tập trung, bền vững, khép kín. Đến năm 2015, tổng đàn trâu, bò toàn huyện gần 10.000 con, đàn lợn trên 43.000 con, đàn gia cầm trên 320.000 con, trong đó tỷ lệ đàn lợn ngoại chiếm 90%, bò lai sind chiếm hơn 50%.</span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span><br  /> <img alt=\"Quảng Ninh\" height=\"327\" src=\"/web/uploads/about/quangninhtongquan4.jpg\" style=\"float:left\" width=\"491\" />&nbsp; &nbsp;<span style=\"font-size:12px\"><span style=\"font-family:Arial, Verdana, Helvetica, tahoma, sans-serif\"><span style=\"line-height:15.6px\"><span style=\"color:rgb(0, 0, 0);\"><span style=\"font-style:normal\"><span style=\"font-variant-ligatures:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:400\"><span style=\"letter-spacing:normal\"><span style=\"orphans:2\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:2\"><span style=\"word-spacing:0px\"><span style=\"background-color:rgb(255, 255, 255);\"><span style=\"text-decoration-style:initial\"><span style=\"text-decoration-color:initial\"><span lang=\"EN-GB\" style=\"font-size:10pt\"><span style=\"font-family:Arial\"><span style=\"line-height:17.3333px\"><span style=\"color:rgb(0, 7, 17);\">Công tác khai thác, đánh bắt, nuôi trồng thủy sản có sự chuyển biến tích cực, toàn huyện có 22 tàu cá đánh bắt xa bờ, diện tích nuôi trồng thủy sản đạt 1.130 ha, tăng 380 ha so với năm 2010. Mô hình nuôi tôm sú, tôm thẻ chân trắng ở xã Hải Ninh, Hàm Ninh, Võ Ninh; nuôi cá chẽm, cá trắm cỏ trên sông, đầm ở Duy Ninh, Võ Ninh… góp phần đưa tổng sản lượng khai thác, nuôi trồng thủy sản đạt 3.750 tấn, gấp hơn 6 lần so với năm 1990.</span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span><br  /> <span style=\"font-size:12px\"><span style=\"font-family:Arial, Verdana, Helvetica, tahoma, sans-serif\"><span style=\"line-height:15.6px\"><span style=\"color:rgb(0, 0, 0);\"><span style=\"font-style:normal\"><span style=\"font-variant-ligatures:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:400\"><span style=\"letter-spacing:normal\"><span style=\"orphans:2\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:2\"><span style=\"word-spacing:0px\"><span style=\"background-color:rgb(255, 255, 255);\"><span style=\"text-decoration-style:initial\"><span style=\"text-decoration-color:initial\"><span lang=\"EN-GB\" style=\"font-size:10pt\"><span style=\"font-family:Arial\"><span style=\"line-height:17.3333px\"><span style=\"color:rgb(0, 7, 17);\">Tập trung chỉ đạo phát triển kinh tế rừng, chuyển đổi diện tích đất rừng có điều kiện sang trồng cao su ở các xã dọc đường Hồ Chí Minh, Làng thanh niên lập nghiệp ở Trường Xuân với diện tích 460 ha; đồng thời xây dựng quy hoạch mở rộng diện tích trồng cao su trên 500 ha; chỉ đạo 2 xã miền núi Trường Xuân và Trường Sơn bàn giao 2.836 ha đất rừng cho 728 hộ và bàn giao rừng cộng đồng cho 4 thôn, bản; giao đất và cấp giấy chứng nhận quyền sử dụng đất cho 525 hộ với diện tích 1.527 ha để khoanh nuôi, bảo vệ và trồng rừng kinh tế.</span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span><br  /> <span style=\"font-size:12px\"><span style=\"font-family:Arial, Verdana, Helvetica, tahoma, sans-serif\"><span style=\"line-height:15.6px\"><span style=\"color:rgb(0, 0, 0);\"><span style=\"font-style:normal\"><span style=\"font-variant-ligatures:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:400\"><span style=\"letter-spacing:normal\"><span style=\"orphans:2\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:2\"><span style=\"word-spacing:0px\"><span style=\"background-color:rgb(255, 255, 255);\"><span style=\"text-decoration-style:initial\"><span style=\"text-decoration-color:initial\"><span lang=\"EN-GB\" style=\"font-size:10pt\"><span style=\"font-family:Arial\"><span style=\"line-height:17.3333px\"><span style=\"color:rgb(0, 7, 17);\"><span style=\"letter-spacing:-0.2pt\">Với phương châm “Nhà nước và nhân dân cùng làm”, Quảng Ninh đã huy động được hơn 2.100 tỷ đồng để đầu tư xây dựng kết cấu hạ tầng nông thôn, trong đó, ngân sách nhà nước trên 1500 tỷ đồng, nhân dân đóng góp hơn 500<b style=\"font-size:12px; font-family:Arial, Verdana, Helvetica, tahoma, sans-serif; line-height:16px\">&nbsp;</b>tỷ đồng. Đến cuối năm 2014, xã Lương Ninh được tỉnh công nhận đạt chuẩn nông thôn mới; xã Vĩnh Ninh và Hàm Ninh đã phấn đấu về đích chương trình này vào cuối năm 2015.</span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span><br  /> <span style=\"font-size:12px\"><span style=\"font-family:Arial, Verdana, Helvetica, tahoma, sans-serif\"><span style=\"line-height:15.6px\"><span style=\"color:rgb(0, 0, 0);\"><span style=\"font-style:normal\"><span style=\"font-variant-ligatures:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:400\"><span style=\"letter-spacing:normal\"><span style=\"orphans:2\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:2\"><span style=\"word-spacing:0px\"><span style=\"background-color:rgb(255, 255, 255);\"><span style=\"text-decoration-style:initial\"><span style=\"text-decoration-color:initial\"><span lang=\"EN-GB\" style=\"font-size:10pt\"><span style=\"font-family:Arial\"><span style=\"line-height:17.3333px\"><span style=\"color:rgb(0, 7, 17);\">Các cụm công nghiệp, cụm làng nghề như cụm công nghiệp Áng Sơn, xã Vạn Ninh; cụm công nghiệp, cụm làng nghề Tây Bắc thị trấn Quán Hàu. Các công ty, nhà máy công nghiệp từng bước được xây dựng và đi vào hoạt động bước đầu đưa lại hiệu quả đáng ghi nhận. Nhà máy xi măng Vạn Ninh thuộc Tổng công ty Vicem Hải Vân công suất 50 vạn tấn/năm; Nhà máy may S&amp;D thuộc Tổng Công ty May 10; Nhà máy chế biến tinh bột sắn Long Giang và Công ty cổ phần gạch Tuynen Vĩnh Ninh hoạt động có hiệu quả đã góp phần giải quyết việc làm thường xuyên cho trên 2.000 lao động với mức thu nhập khá ổn định. Tiểu thủ công nghiệp, ngành nghề nông thôn từng bước phát triển. Tổng giá trị sản xuất công nghiệp, tiểu thủ công nghiệp đạt trên 893 tỷ đồng, tăng 228,5% so với năm 2010.</span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span><br  /> <span style=\"font-size:12px\"><span style=\"font-family:Arial, Verdana, Helvetica, tahoma, sans-serif\"><span style=\"line-height:15.6px\"><span style=\"color:rgb(0, 0, 0);\"><span style=\"font-style:normal\"><span style=\"font-variant-ligatures:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:400\"><span style=\"letter-spacing:normal\"><span style=\"orphans:2\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:2\"><span style=\"word-spacing:0px\"><span style=\"background-color:rgb(255, 255, 255);\"><span style=\"text-decoration-style:initial\"><span style=\"text-decoration-color:initial\"><span lang=\"EN-GB\" style=\"font-size:10pt\"><span style=\"font-family:Arial\"><span style=\"line-height:17.3333px\"><span style=\"color:rgb(0, 7, 17);\">Hoạt động du lịch có chuyển biến tích cực, các điểm du lịch sinh thái, du dịch tâm linh như núi Thần Đinh, Đền tưởng niệm các anh hùng liệt sỹ Trường Sơn tại bến phà Long Đại, Nhà thờ Lễ thành hầu Nguyễn Hữu Cảnh và bãi biển Hải Ninh thu hút được nhiều du khách tham quan; đây cũng là tiềm năng thế mạnh để huyện nhà tiếp tục kêu gọi đầu tư để hình thành tuyến du lịch khép kín trong tương lai.</span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span><br  /> <span style=\"font-size:12px\"><span style=\"font-family:Arial, Verdana, Helvetica, tahoma, sans-serif\"><span style=\"line-height:15.6px\"><span style=\"color:rgb(0, 0, 0);\"><span style=\"font-style:normal\"><span style=\"font-variant-ligatures:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:400\"><span style=\"letter-spacing:normal\"><span style=\"orphans:2\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:2\"><span style=\"word-spacing:0px\"><span style=\"background-color:rgb(255, 255, 255);\"><span style=\"text-decoration-style:initial\"><span style=\"text-decoration-color:initial\"><span lang=\"EN-GB\" style=\"font-size:10pt\"><span style=\"font-family:Arial\"><span style=\"line-height:17.3333px\"><span style=\"color:rgb(0, 7, 17);\">&nbsp;Phong trào cứng hóa đường giao thông nông thôn, bê tông hóa kênh mương nội đồng gắn với chương trình mục tiêu quốc gia xây dựng nông thôn mới được nhân dân đồng tình hưởng ứng và trở thành phong trào rộng khắp trong toàn huyện; đến nay toàn huyện có trên 355 km đường giao thông được bê tông hóa, 210 km kênh mương nội đồng được kiên cố hóa, thuận lợi cho nhân dân đi lại sinh hoạt, sản xuất.</span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span><br  /> <span style=\"font-size:12px\"><span style=\"font-family:Arial, Verdana, Helvetica, tahoma, sans-serif\"><span style=\"line-height:15.6px\"><span style=\"color:rgb(0, 0, 0);\"><span style=\"font-style:normal\"><span style=\"font-variant-ligatures:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:400\"><span style=\"letter-spacing:normal\"><span style=\"orphans:2\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:2\"><span style=\"word-spacing:0px\"><span style=\"background-color:rgb(255, 255, 255);\"><span style=\"text-decoration-style:initial\"><span style=\"text-decoration-color:initial\"><span lang=\"EN-GB\" style=\"font-size:10pt\"><span style=\"font-family:Arial\"><span style=\"line-height:17.3333px\"><span style=\"color:rgb(0, 7, 17);\">Toàn huyện có 57 trường, cơ sở giáo dục mầm non, phổ thông, giáo dục thường xuyên và dạy nghề có cơ sở vật chất và trang thiết bị dạy học tăng trưởng khá; 100% xã, thị trấn có trường học cao tầng kiên cố với tỷ lệ các phòng học được xây dựng kiên cố chiếm tỷ lệ 67%; đến nay có 37 trường đạt chuẩn quốc gia, trong đó có 6 trường tiểu học đạt chuẩn mức độ 2, có15/15 xã, thị trấn đạt chuẩn phổ cập giáo dục mầm non cho trẻ 5 tuổi, phổ cập giáo dục tiểu học mức độ 3 và phổ cập giáo dục trung học cơ sở mức độ 2.</span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span><br  /> <span style=\"font-size:12px\"><span style=\"font-family:Arial, Verdana, Helvetica, tahoma, sans-serif\"><span style=\"line-height:15.6px\"><span style=\"color:rgb(0, 0, 0);\"><span style=\"font-style:normal\"><span style=\"font-variant-ligatures:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:400\"><span style=\"letter-spacing:normal\"><span style=\"orphans:2\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:2\"><span style=\"word-spacing:0px\"><span style=\"background-color:rgb(255, 255, 255);\"><span style=\"text-decoration-style:initial\"><span style=\"text-decoration-color:initial\"><span lang=\"EN-GB\" style=\"font-size:10pt\"><span style=\"font-family:Arial\"><span style=\"line-height:17.3333px\"><span style=\"color:rgb(0, 7, 17);\">Thực hiện có hiệu quả các chương trình y tế quốc gia, tỷ lệ suy dinh dưỡng trẻ em dưới 5 tuổi giảm xuống còn 13%, tỷ lệ tham gia bảo hiểm y tế đạt 68%. Công tác dân số kế hoạch hóa gia đình có nhiều chuyển biến tích cực, quy mô dân số phát triển đúng hướng, các chỉ tiêu về dịch vụ kế hoạch hóa gia đình thực hiện đạt và vượt kế hoạch đề ra, tỷ suất sinh giảm bình quân 0,2%<sub style=\"font-size:12px; font-family:Arial, Verdana, Helvetica, tahoma, sans-serif; line-height:16px\">0</sub>/năm.</span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span><br  /> <span style=\"font-size:12px\"><span style=\"font-family:Arial, Verdana, Helvetica, tahoma, sans-serif\"><span style=\"line-height:15.6px\"><span style=\"color:rgb(0, 0, 0);\"><span style=\"font-style:normal\"><span style=\"font-variant-ligatures:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:400\"><span style=\"letter-spacing:normal\"><span style=\"orphans:2\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:2\"><span style=\"word-spacing:0px\"><span style=\"background-color:rgb(255, 255, 255);\"><span style=\"text-decoration-style:initial\"><span style=\"text-decoration-color:initial\"><span lang=\"EN-GB\" style=\"font-size:10pt\"><span style=\"font-family:Arial\"><span style=\"line-height:17.3333px\"><span style=\"color:rgb(0, 7, 17);\">Lễ hội đua thuyền truyền thống vào dịp Quốc khánh 2/9 hàng năm được huyện duy trì và phát triển, là ngày hội lớn thu hút đông đảo nhân dân trong huyện, con em công tác ở khắp mọi miền Tổ quốc đến xem và cổ vũ.</span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span><br  /> <span style=\"font-size:12px\"><span style=\"font-family:Arial, Verdana, Helvetica, tahoma, sans-serif\"><span style=\"line-height:15.6px\"><span style=\"color:rgb(0, 0, 0);\"><span style=\"font-style:normal\"><span style=\"font-variant-ligatures:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:400\"><span style=\"letter-spacing:normal\"><span style=\"orphans:2\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:2\"><span style=\"word-spacing:0px\"><span style=\"background-color:rgb(255, 255, 255);\"><span style=\"text-decoration-style:initial\"><span style=\"text-decoration-color:initial\"><span lang=\"EN-GB\" style=\"font-size:10pt\"><span style=\"font-family:Arial\"><span style=\"line-height:17.3333px\"><span style=\"color:rgb(0, 7, 17);\">Các chính sách xã hội, công tác đền ơn đáp nghĩa, giải quyết việc làm, xóa đói giảm nghèo được quan tâm và đạt kết quả tốt. Hàng năm giải quyết việc làm cho hơn 3.000 lao động, (tỷ lệ lao động được đào tạo nghề đạt 36%), góp phần giảm tỷ lệ hộ nghèo từ 11% năm 2010 xuống còn 7,5% năm 2014, phấn đấu đến 2015 tỷ lệ hộ nghèo còn dưới 5%.</span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span><br  /> &nbsp; <div style=\"text-align:center\"><img alt=\"Quảng Ninh\" height=\"359\" src=\"/web/uploads/about/images580306_anh26.jpg\" width=\"503\" /></div> <br  /> <br class=\"Apple-interchange-newline\" /> <span style=\"font-size:12px\"><span style=\"font-family:Arial, Verdana, Helvetica, tahoma, sans-serif\"><span style=\"line-height:15.6px\"><span style=\"color:rgb(0, 0, 0);\"><span style=\"font-style:normal\"><span style=\"font-variant-ligatures:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:400\"><span style=\"letter-spacing:normal\"><span style=\"orphans:2\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:2\"><span style=\"word-spacing:0px\"><span style=\"background-color:rgb(255, 255, 255);\"><span style=\"text-decoration-style:initial\"><span style=\"text-decoration-color:initial\"><span lang=\"EN-GB\" style=\"font-size:10pt\"><span style=\"font-family:Arial\"><span style=\"line-height:17.3333px\"><span style=\"color:rgb(0, 7, 17);\">Quốc phòng an ninh tiếp tục được củng cố vững chắc, phong trào toàn dân bảo vệ an ninh Tổ quốc có sự chuyển biến tích cực, an ninh chính trị ổn định, trật tự an toàn xã hội được giữ vững. Quảng Ninh là đơn vị đầu tiên xây dựng thành công mô hình “Tổ an ninh xung kích tự quản” trong cộng đồng dân cư; đến nay mô hình này đã được nhân rộng và hoạt động có hiệu quả ở 108 thôn, bản, tiểu khu trên toàn huyện. Phát huy tốt sức mạnh tổng hợp toàn dân chủ động phòng, chống âm mưu “diễn biến hòa bình”, bạo loạn lật đổ của các thế lực thù địch; gắn việc phát triển kinh tế-xã hội với tăng cường quốc phòng an ninh; xây dựng nền quốc phòng toàn dân gắn với thế trận an ninh nhân dân và biên phòng toàn dân, xây dựng khu vực phòng thủ huyện vững chắc, đảm bảo an ninh biên giới trên 2 tuyến đường bộ và đường biển.</span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span><br  /> <span style=\"font-size:12px\"><span style=\"font-family:Arial, Verdana, Helvetica, tahoma, sans-serif\"><span style=\"line-height:15.6px\"><span style=\"color:rgb(0, 0, 0);\"><span style=\"font-style:normal\"><span style=\"font-variant-ligatures:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:400\"><span style=\"letter-spacing:normal\"><span style=\"orphans:2\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:2\"><span style=\"word-spacing:0px\"><span style=\"background-color:rgb(255, 255, 255);\"><span style=\"text-decoration-style:initial\"><span style=\"text-decoration-color:initial\"><span lang=\"EN-GB\" style=\"font-size:10pt\"><span style=\"font-family:Arial\"><span style=\"line-height:17.3333px\"><span style=\"color:rgb(0, 7, 17);\"><span style=\"letter-spacing:-0.2pt\">Quảng Ninh tự hào trước những thành tựu to lớn cùng với sự đổi thay toàn diện, sâu sắc trên mọi lĩnh vực. Một huyện Quảng Ninh khang trang với một nền kinh tế công nghiệp trong tương lai đang hiện diện đã khẳng định tầm nhìn, vai trò to lớn của Đảng bộ, chính quyền cùng những nỗ lực của nhân dân huyện nhà. Chặng đường phía trước đang mở ra cho Quảng Ninh nhiều thời cơ, thuận lợi nhưng cũng không ít khó khăn, thách thức.</span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span><br  /> &nbsp;</div> </div>','',0,'4','',1,1,1552401040,1552873066,1,5,0),(2,'Lịch sử Đảng bộ Huyện','lich-su-dang-bo-huyen','','',0,'','<p style=\"text-align: justify;\">CMS là gì?<br  /> CMS là từ viết tắt từ Content Management System. Theo wikipedia</p>  <blockquote> <p><strong>Định nghĩa.</strong><br  /> Hệ quản trị nội dung, cũng được gọi là hệ thống quản lý nội dung hay CMS (từ Content Management System của tiếng Anh) là phần mềm để tổ chức và tạo môi trường cộng tác thuận lợi nhằm mục đích xây dựng một hệ thống tài liệu và các loại nội dung khác một cách thống nhất. Mới đây thuật ngữ này liên kết với chương trình quản lý nội dung của website. Quản lý nội dung web (web content management) cũng đồng nghĩa như vậy.<br  /> <br  /> <span class=\"mw-headline\" id=\"Ch.E1.BB.A9c_n.C4.83ng\"><strong>Chức năng</strong>.</span><br  /> Quản trị những nội dung tài liệu điện tử (bao gồm những tài liệu, văn bản số và đã được số hoá) của tổ chức. Những chức năng bao gồm:</p>  <ul> 	<li>Tạo lập nội dung;</li> 	<li>Lưu trữ nội dung;</li> 	<li>Chỉnh sửa nội dung;</li> 	<li>Chuyển tải nội dung;</li> 	<li>Chia sẻ nội dung;</li> 	<li>Tìm kiếm nội dung;</li> 	<li>Phân quyền người dùng và nội dung...</li> </ul>  <p><strong>Đặc điểm.</strong><br  /> Các đặc điểm cơ bản của CMS bao gồm:</p>  <ul> 	<li>Phê chuẩn việc tạo hoặc thay đổi nội dung trực tuyến</li> 	<li>Chế độ Soạn thảo &quot;Nhìn là biết&quot; WYSIWYG</li> 	<li>Quản lý người dùng</li> 	<li>Tìm kiếm và lập chỉ mục</li> 	<li>Lưu trữ</li> 	<li>Tùy biến giao diện</li> 	<li>Quản lý ảnh và các liên kết (URL)</li> </ul> </blockquote>  <p style=\"text-align: justify;\"><br  /> NukeViet CMS là một <strong>hệ quản trị nội dung</strong> (<em>Content Management System - CMS</em>) cho phép bạn quản lý các cổng thông tin điện tử trên Internet. Nói đơn giản, NukeViet giống như một phần mềm giúp bạn<strong> xây dựng</strong> và <strong>vận hành</strong> các trang web của mình một cách dễ dàng nhất.</p>  <p style=\"text-align: justify;\">NukeViet CMS là một phần mềm <strong>mã nguồn mở</strong>, do đó việc sử dụng <strong>hoàn toàn miễn phí</strong>, bạn có thể tải NukeViet CMS về bất cứ lúc nào tại website chính thức của NukeViet là <strong><a href=\"http://nukeviet.vn\">nukeviet.vn</a></strong>. Bạn có thể cài NukeViet lên hosting để sử dụng hoặc cũng có thể thử nghiệm bằng cách cài ngay lên máy tính cá nhân.</p>  <p style=\"text-align: justify;\">NukeViet cho phép xây dựng một website động, đa chức năng, hiện đại một cách nhanh chóng mà người vận hành nó thậm chí <strong>không cần phải biết một tí gì về lập trình</strong> bởi tất cả các tác vụ quản lý phức tạp đều được tự động hóa ở mức cao. NukeViet đặc biệt dễ dàng sử dụng vì hoàn toàn bằng tiếng Việt và được thiết kế phù hợp nhất với thói quen sử dụng mạng của <strong>người Việt Nam</strong>.</p>  <p style=\"text-align: justify;\">Bằng việc sử dụng các công nghệ web mới nhất hiện nay, thiết kế hệ thống uyển chuyển và sở hữu những tính năng độc đáo, NukeViet sẽ giúp bạn triển khai các ứng dụng web từ nhỏ đến lớn một cách nhanh chóng và tiết kiệm: từ các website cá nhân cho tới các cổng thông tin điện tử; từ các gian hàng trực tuyến cho tới các mạng xã hội...</p> NukeViet là CMS <strong>mã nguồn mở đầu tiên của Việt Nam</strong> có quá trình phát triển lâu dài nhất, có lượng người sử dụng đông nhất. Hiện NukeViet cũng là một trong những mã nguồn mở chuyên nghiệp đầu tiên của Việt Nam, cơ quan chủ quản của NukeViet là <a href=\"http://vinades.vn\" target=\"_blank\">VINADES.,JSC</a> - đơn vị chịu trách nhiệm phát triển NukeViet và triển khai NukeViet thành các ứng dụng cụ thể cho doanh nghiệp.','lịch sử,đảng bộ',0,'4','',2,1,1552401040,1552873205,1,4,0),(3,'Bản đồ hành chính Huyện','ban-do-hanh-chinh-huyen','','',0,'','Bản đồ hành chính Huyện<br  /> &nbsp; <div style=\"text-align:center\"><img alt=\"15\" height=\"420\" src=\"/web/uploads/about/15.jpg\" width=\"503\" /></div> &nbsp;','bản đồ',0,'4','',3,1,1552401040,1552873304,1,3,0),(9,'Thông tin sản phẩm bánh','thong-tin-san-pham-banh','','',0,'','Quý khách đang xem thông tin sản phẩm chính thức từ nhà sản xuất bánh:&nbsp;<br  />\r\nMọi thông tin chi tiết xin liên hệ: <strong>Vàng Anh - 0935.105.345</strong>\r\n<div style=\"text-align:center\"><img alt=\"sanxuat\" height=\"615\" src=\"/uploads/about/sanxuat.png\" width=\"944\" /></div>\r\n<br  />\r\n<br  />\r\n&nbsp;','thông tin,sản phẩm',1,'4','',4,1,1578363214,1578363214,1,1,0);
/*!40000 ALTER TABLE `nv4_vi_about` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_about_config`
--

DROP TABLE IF EXISTS `nv4_vi_about_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_about_config` (
  `config_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `config_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  UNIQUE KEY `config_name` (`config_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_about_config`
--

LOCK TABLES `nv4_vi_about_config` WRITE;
/*!40000 ALTER TABLE `nv4_vi_about_config` DISABLE KEYS */;
INSERT INTO `nv4_vi_about_config` VALUES ('viewtype','0'),('facebookapi',''),('per_page','20'),('news_first','0'),('related_articles','5'),('copy_page','0'),('alias_lower','1');
/*!40000 ALTER TABLE `nv4_vi_about_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_blocks_groups`
--

DROP TABLE IF EXISTS `nv4_vi_blocks_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_blocks_groups` (
  `bid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `theme` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exp_time` int(11) DEFAULT '0',
  `active` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `act` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `groups_view` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `all_func` tinyint(4) NOT NULL DEFAULT '0',
  `weight` int(11) NOT NULL DEFAULT '0',
  `config` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`bid`),
  KEY `theme` (`theme`),
  KEY `module` (`module`),
  KEY `position` (`position`),
  KEY `exp_time` (`exp_time`)
) ENGINE=MyISAM AUTO_INCREMENT=188 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_blocks_groups`
--

LOCK TABLES `nv4_vi_blocks_groups` WRITE;
/*!40000 ALTER TABLE `nv4_vi_blocks_groups` DISABLE KEYS */;
INSERT INTO `nv4_vi_blocks_groups` VALUES (1,'default','news','module.block_newscenter.php','Tin mới nhất','','no_title','[TOP]',0,'1',1,'6',0,1,'a:10:{s:6:\"numrow\";i:6;s:11:\"showtooltip\";i:1;s:16:\"tooltip_position\";s:6:\"bottom\";s:14:\"tooltip_length\";s:3:\"150\";s:12:\"length_title\";i:0;s:15:\"length_hometext\";i:0;s:17:\"length_othertitle\";i:60;s:5:\"width\";i:500;s:6:\"height\";i:0;s:7:\"nocatid\";a:0:{}}'),(2,'default','banners','global.banners.php','Quảng cáo giữa trang','','no_title','[TOP]',0,'1',1,'6',0,2,'a:1:{s:12:\"idplanbanner\";i:1;}'),(3,'default','news','global.block_category.php','Chủ đề','','no_title','[LEFT]',0,'1',1,'6',0,1,'a:2:{s:5:\"catid\";i:0;s:12:\"title_length\";i:0;}'),(4,'default','theme','global.module_menu.php','Module Menu','','no_title','[LEFT]',0,'1',1,'6',0,2,''),(5,'default','banners','global.banners.php','Quảng cáo cột trái','','no_title','[LEFT]',0,'1',1,'6',1,3,'a:1:{s:12:\"idplanbanner\";i:2;}'),(6,'default','statistics','global.counter.php','Thống kê','','primary','[LEFT]',0,'1',1,'6',1,4,''),(7,'default','about','global.about.php','Giới thiệu','','border','[RIGHT]',0,'1',1,'6',1,1,''),(8,'default','banners','global.banners.php','Quảng cáo cột phải','','no_title','[RIGHT]',0,'1',1,'6',1,2,'a:1:{s:12:\"idplanbanner\";i:3;}'),(9,'default','voting','global.voting_random.php','Thăm dò ý kiến','','primary','[RIGHT]',0,'1',1,'6',1,3,''),(10,'default','news','global.block_tophits.php','Tin xem nhiều','','primary','[RIGHT]',0,'1',1,'6',1,4,'a:6:{s:10:\"number_day\";i:3650;s:6:\"numrow\";i:10;s:11:\"showtooltip\";i:1;s:16:\"tooltip_position\";s:6:\"bottom\";s:14:\"tooltip_length\";s:3:\"150\";s:7:\"nocatid\";a:2:{i:0;i:10;i:1;i:11;}}'),(11,'default','theme','global.copyright.php','Copyright','','no_title','[FOOTER_SITE]',0,'1',1,'6',1,1,'a:5:{s:12:\"copyright_by\";s:0:\"\";s:13:\"copyright_url\";s:0:\"\";s:9:\"design_by\";s:12:\"VINADES.,JSC\";s:10:\"design_url\";s:18:\"http://vinades.vn/\";s:13:\"siteterms_url\";s:47:\"/webqnqb/index.php?language=vi&amp;nv=siteterms\";}'),(12,'default','contact','global.contact_form.php','Feedback','','no_title','[FOOTER_SITE]',0,'1',1,'6',1,2,''),(13,'default','theme','global.QR_code.php','QR code','','no_title','[QR_CODE]',0,'1',1,'6',1,1,'a:3:{s:5:\"level\";s:1:\"M\";s:15:\"pixel_per_point\";i:4;s:11:\"outer_frame\";i:1;}'),(14,'default','statistics','global.counter_button.php','Online button','','no_title','[QR_CODE]',0,'1',1,'6',1,2,''),(15,'default','users','global.user_button.php','Đăng nhập thành viên','','no_title','[PERSONALAREA]',0,'1',1,'6',1,1,''),(16,'default','theme','global.company_info.php','Công ty chủ quản','','simple','[COMPANY_INFO]',0,'1',1,'6',1,1,'a:17:{s:12:\"company_name\";s:58:\"Công ty cổ phần phát triển nguồn mở Việt Nam\";s:15:\"company_address\";s:72:\"Phòng 1706 - Tòa nhà CT2 Nàng Hương, 583 Nguyễn Trãi, Hà Nội\";s:16:\"company_sortname\";s:12:\"VINADES.,JSC\";s:15:\"company_regcode\";s:0:\"\";s:16:\"company_regplace\";s:0:\"\";s:21:\"company_licensenumber\";s:0:\"\";s:22:\"company_responsibility\";s:0:\"\";s:15:\"company_showmap\";i:1;s:20:\"company_mapcenterlat\";d:20.984516000000013;s:20:\"company_mapcenterlng\";d:105.795475;s:14:\"company_maplat\";d:20.984516;s:14:\"company_maplng\";d:105.79547500000001;s:15:\"company_mapzoom\";i:17;s:13:\"company_phone\";s:58:\"+84-24-85872007[+842485872007]|+84-904762534[+84904762534]\";s:11:\"company_fax\";s:15:\"+84-24-35500914\";s:13:\"company_email\";s:18:\"contact@vinades.vn\";s:15:\"company_website\";s:17:\"http://vinades.vn\";}'),(17,'default','menu','global.bootstrap.php','Menu Site','','no_title','[MENU_SITE]',0,'1',1,'6',1,1,'a:2:{s:6:\"menuid\";i:1;s:12:\"title_length\";i:0;}'),(18,'default','contact','global.contact_default.php','Contact Default','','no_title','[CONTACT_DEFAULT]',0,'1',1,'6',1,1,''),(19,'default','theme','global.social.php','Social icon','','no_title','[SOCIAL_ICONS]',0,'1',1,'6',1,1,'a:4:{s:8:\"facebook\";s:32:\"http://www.facebook.com/nukeviet\";s:11:\"google_plus\";s:32:\"https://www.google.com/+nukeviet\";s:7:\"youtube\";s:37:\"https://www.youtube.com/user/nukeviet\";s:7:\"twitter\";s:28:\"https://twitter.com/nukeviet\";}'),(20,'default','theme','global.menu_footer.php','Các chuyên mục chính','','simple','[MENU_FOOTER]',0,'1',1,'6',1,1,'a:1:{s:14:\"module_in_menu\";a:8:{i:0;s:5:\"about\";i:1;s:4:\"news\";i:2;s:5:\"users\";i:3;s:7:\"contact\";i:4;s:6:\"voting\";i:5;s:7:\"banners\";i:6;s:4:\"seek\";i:7;s:5:\"feeds\";}}'),(21,'default','freecontent','global.free_content.php','Sản phẩm','','no_title','[FEATURED_PRODUCT]',0,'1',1,'6',1,1,'a:2:{s:7:\"blockid\";i:1;s:7:\"numrows\";i:2;}'),(22,'mobile_default','menu','global.metismenu.php','Menu Site','','no_title','[MENU_SITE]',0,'1',1,'6',1,1,'a:2:{s:6:\"menuid\";i:1;s:12:\"title_length\";i:0;}'),(23,'mobile_default','users','global.user_button.php','Sign In','','no_title','[MENU_SITE]',0,'1',1,'6',1,2,''),(24,'mobile_default','contact','global.contact_default.php','Contact Default','','no_title','[SOCIAL_ICONS]',0,'1',1,'6',1,1,''),(25,'mobile_default','contact','global.contact_form.php','Feedback','','no_title','[SOCIAL_ICONS]',0,'1',1,'6',1,2,''),(26,'mobile_default','theme','global.social.php','Social icon','','no_title','[SOCIAL_ICONS]',0,'1',1,'6',1,3,'a:4:{s:8:\"facebook\";s:32:\"http://www.facebook.com/nukeviet\";s:11:\"google_plus\";s:32:\"https://www.google.com/+nukeviet\";s:7:\"youtube\";s:37:\"https://www.youtube.com/user/nukeviet\";s:7:\"twitter\";s:28:\"https://twitter.com/nukeviet\";}'),(27,'mobile_default','theme','global.QR_code.php','QR code','','no_title','[SOCIAL_ICONS]',0,'1',1,'6',1,4,'a:3:{s:5:\"level\";s:1:\"L\";s:15:\"pixel_per_point\";i:4;s:11:\"outer_frame\";i:1;}'),(28,'mobile_default','theme','global.copyright.php','Copyright','','no_title','[FOOTER_SITE]',0,'1',1,'6',1,1,'a:5:{s:12:\"copyright_by\";s:0:\"\";s:13:\"copyright_url\";s:0:\"\";s:9:\"design_by\";s:12:\"VINADES.,JSC\";s:10:\"design_url\";s:18:\"http://vinades.vn/\";s:13:\"siteterms_url\";s:47:\"/webqnqb/index.php?language=vi&amp;nv=siteterms\";}'),(29,'mobile_default','theme','global.menu_footer.php','Các chuyên mục chính','','primary','[MENU_FOOTER]',0,'1',1,'6',1,1,'a:1:{s:14:\"module_in_menu\";a:9:{i:0;s:5:\"about\";i:1;s:4:\"news\";i:2;s:5:\"users\";i:3;s:7:\"contact\";i:4;s:6:\"voting\";i:5;s:7:\"banners\";i:6;s:4:\"seek\";i:7;s:5:\"feeds\";i:8;s:9:\"siteterms\";}}'),(30,'mobile_default','theme','global.company_info.php','Công ty chủ quản','','primary','[COMPANY_INFO]',0,'1',1,'6',1,1,'a:17:{s:12:\"company_name\";s:58:\"Công ty cổ phần phát triển nguồn mở Việt Nam\";s:15:\"company_address\";s:72:\"Phòng 1706 - Tòa nhà CT2 Nàng Hương, 583 Nguyễn Trãi, Hà Nội\";s:16:\"company_sortname\";s:12:\"VINADES.,JSC\";s:15:\"company_regcode\";s:0:\"\";s:16:\"company_regplace\";s:0:\"\";s:21:\"company_licensenumber\";s:0:\"\";s:22:\"company_responsibility\";s:0:\"\";s:15:\"company_showmap\";i:1;s:20:\"company_mapcenterlat\";d:20.984516000000013;s:20:\"company_mapcenterlng\";d:105.795475;s:14:\"company_maplat\";d:20.984516;s:14:\"company_maplng\";d:105.79547500000001;s:15:\"company_mapzoom\";i:17;s:13:\"company_phone\";s:58:\"+84-24-85872007[+842485872007]|+84-904762534[+84904762534]\";s:11:\"company_fax\";s:15:\"+84-24-35500914\";s:13:\"company_email\";s:18:\"contact@vinades.vn\";s:15:\"company_website\";s:17:\"http://vinades.vn\";}'),(31,'demo','theme','global.company_info.php','Công ty chủ quản','','simple','[COMPANY_INFO]',0,'1',1,'6',1,1,'a:17:{s:12:\"company_name\";s:58:\"Công ty cổ phần phát triển nguồn mở Việt Nam\";s:15:\"company_address\";s:72:\"Phòng 1706 - Tòa nhà CT2 Nàng Hương, 583 Nguyễn Trãi, Hà Nội\";s:16:\"company_sortname\";s:12:\"VINADES.,JSC\";s:15:\"company_regcode\";s:0:\"\";s:16:\"company_regplace\";s:0:\"\";s:21:\"company_licensenumber\";s:0:\"\";s:22:\"company_responsibility\";s:0:\"\";s:15:\"company_showmap\";i:1;s:20:\"company_mapcenterlat\";d:20.984516000000013;s:20:\"company_mapcenterlng\";d:105.795475;s:14:\"company_maplat\";d:20.984515999999999;s:14:\"company_maplng\";d:105.79547500000001;s:15:\"company_mapzoom\";i:17;s:13:\"company_phone\";s:58:\"+84-24-85872007[+842485872007]|+84-904762534[+84904762534]\";s:11:\"company_fax\";s:15:\"+84-24-35500914\";s:13:\"company_email\";s:18:\"contact@vinades.vn\";s:15:\"company_website\";s:17:\"http://vinades.vn\";}'),(32,'demo','contact','global.contact_default.php','Contact Default','','no_title','[CONTACT_DEFAULT]',0,'1',1,'6',1,1,''),(33,'demo','freecontent','global.free_content.php','Sản phẩm','','no_title','[FEATURED_PRODUCT]',0,'1',1,'6',1,1,'a:2:{s:7:\"blockid\";i:1;s:7:\"numrows\";i:2;}'),(34,'demo','theme','global.copyright.php','Copyright','','no_title','[FOOTER_SITE]',0,'1',1,'6',1,1,'a:5:{s:12:\"copyright_by\";s:0:\"\";s:13:\"copyright_url\";s:0:\"\";s:9:\"design_by\";s:12:\"VINADES.,JSC\";s:10:\"design_url\";s:18:\"http://vinades.vn/\";s:13:\"siteterms_url\";s:39:\"/index.php?language=vi&amp;nv=siteterms\";}'),(35,'demo','contact','global.contact_form.php','Feedback','','no_title','[FOOTER_SITE]',0,'1',1,'6',1,2,''),(36,'demo','news','global.block_category.php','Chủ đề','','no_title','[LEFT]',0,'1',1,'6',0,1,'a:2:{s:5:\"catid\";i:0;s:12:\"title_length\";i:0;}'),(37,'demo','theme','global.module_menu.php','Module Menu','','no_title','[LEFT]',0,'1',1,'6',0,2,''),(38,'demo','banners','global.banners.php','Quảng cáo cột trái','','no_title','[LEFT]',0,'1',1,'6',1,3,'a:1:{s:12:\"idplanbanner\";i:2;}'),(39,'demo','statistics','global.counter.php','Thống kê','','primary','[LEFT]',0,'1',1,'6',1,4,''),(40,'demo','theme','global.menu_footer.php','Các chuyên mục chính','','simple','[MENU_FOOTER]',0,'1',1,'6',1,1,'a:1:{s:14:\"module_in_menu\";a:8:{i:0;s:5:\"about\";i:1;s:4:\"news\";i:2;s:5:\"users\";i:3;s:7:\"contact\";i:4;s:6:\"voting\";i:5;s:7:\"banners\";i:6;s:4:\"seek\";i:7;s:5:\"feeds\";}}'),(41,'demo','menu','global.bootstrap.php','Menu Site','','no_title','[MENU_SITE]',0,'1',1,'6',1,1,'a:2:{s:6:\"menuid\";i:1;s:12:\"title_length\";i:0;}'),(42,'demo','users','global.user_button.php','Đăng nhập thành viên','','no_title','[PERSONALAREA]',0,'1',1,'6',1,1,''),(43,'demo','theme','global.QR_code.php','QR code','','no_title','[QR_CODE]',0,'1',1,'6',1,1,'a:3:{s:5:\"level\";s:1:\"M\";s:15:\"pixel_per_point\";i:4;s:11:\"outer_frame\";i:1;}'),(44,'demo','statistics','global.counter_button.php','Online button','','no_title','[QR_CODE]',0,'1',1,'6',1,2,''),(45,'demo','about','global.about.php','Giới thiệu','','border','[RIGHT]',0,'1',1,'6',1,1,''),(46,'demo','banners','global.banners.php','Quảng cáo cột phải','','no_title','[RIGHT]',0,'1',1,'6',1,2,'a:1:{s:12:\"idplanbanner\";i:3;}'),(47,'demo','voting','global.voting_random.php','Thăm dò ý kiến','','primary','[RIGHT]',0,'1',1,'6',1,3,''),(48,'demo','news','global.block_tophits.php','Tin xem nhiều','','primary','[RIGHT]',0,'1',1,'6',1,4,'a:6:{s:10:\"number_day\";i:3650;s:6:\"numrow\";i:10;s:11:\"showtooltip\";i:1;s:16:\"tooltip_position\";s:6:\"bottom\";s:14:\"tooltip_length\";s:3:\"150\";s:7:\"nocatid\";a:2:{i:0;i:10;i:1;i:11;}}'),(49,'demo','theme','global.social.php','Social icon','','no_title','[SOCIAL_ICONS]',0,'1',1,'6',1,1,'a:4:{s:8:\"facebook\";s:32:\"http://www.facebook.com/nukeviet\";s:11:\"google_plus\";s:32:\"https://www.google.com/+nukeviet\";s:7:\"youtube\";s:37:\"https://www.youtube.com/user/nukeviet\";s:7:\"twitter\";s:28:\"https://twitter.com/nukeviet\";}'),(50,'demo','news','module.block_newscenter.php','Tin mới nhất','','no_title','[TOP]',0,'1',1,'6',0,1,'a:10:{s:6:\"numrow\";i:6;s:11:\"showtooltip\";i:1;s:16:\"tooltip_position\";s:6:\"bottom\";s:14:\"tooltip_length\";s:3:\"150\";s:12:\"length_title\";i:0;s:15:\"length_hometext\";i:0;s:17:\"length_othertitle\";i:60;s:5:\"width\";i:500;s:6:\"height\";i:0;s:7:\"nocatid\";a:0:{}}'),(51,'demo','banners','global.banners.php','Quảng cáo giữa trang','','no_title','[TOP]',0,'1',1,'6',0,2,'a:1:{s:12:\"idplanbanner\";i:1;}'),(52,'demo2','theme','global.company_info.php','Công ty chủ quản','','simple','[COMPANY_INFO]',0,'1',1,'6',1,1,'a:17:{s:12:\"company_name\";s:58:\"Công ty cổ phần phát triển nguồn mở Việt Nam\";s:15:\"company_address\";s:72:\"Phòng 1706 - Tòa nhà CT2 Nàng Hương, 583 Nguyễn Trãi, Hà Nội\";s:16:\"company_sortname\";s:12:\"VINADES.,JSC\";s:15:\"company_regcode\";s:0:\"\";s:16:\"company_regplace\";s:0:\"\";s:21:\"company_licensenumber\";s:0:\"\";s:22:\"company_responsibility\";s:0:\"\";s:15:\"company_showmap\";i:1;s:20:\"company_mapcenterlat\";d:20.984516000000013;s:20:\"company_mapcenterlng\";d:105.795475;s:14:\"company_maplat\";d:20.984515999999999;s:14:\"company_maplng\";d:105.79547500000001;s:15:\"company_mapzoom\";i:17;s:13:\"company_phone\";s:58:\"+84-24-85872007[+842485872007]|+84-904762534[+84904762534]\";s:11:\"company_fax\";s:15:\"+84-24-35500914\";s:13:\"company_email\";s:18:\"contact@vinades.vn\";s:15:\"company_website\";s:17:\"http://vinades.vn\";}'),(53,'demo2','contact','global.contact_default.php','Contact Default','','no_title','[CONTACT_DEFAULT]',0,'1',1,'6',1,1,''),(54,'demo2','freecontent','global.free_content.php','Sản phẩm','','no_title','[FEATURED_PRODUCT]',0,'1',1,'6',1,1,'a:2:{s:7:\"blockid\";i:1;s:7:\"numrows\";i:2;}'),(55,'demo2','theme','global.copyright.php','Copyright','','no_title','[FOOTER_SITE]',0,'1',1,'6',1,1,'a:5:{s:12:\"copyright_by\";s:0:\"\";s:13:\"copyright_url\";s:0:\"\";s:9:\"design_by\";s:12:\"VINADES.,JSC\";s:10:\"design_url\";s:18:\"http://vinades.vn/\";s:13:\"siteterms_url\";s:39:\"/index.php?language=vi&amp;nv=siteterms\";}'),(56,'demo2','contact','global.contact_form.php','Feedback','','no_title','[FOOTER_SITE]',0,'1',1,'6',1,2,''),(57,'demo2','news','global.block_category.php','Chủ đề','','no_title','[RIGHT]',0,'1',1,'6',0,6,'a:2:{s:5:\"catid\";i:0;s:12:\"title_length\";i:0;}'),(58,'demo2','theme','global.module_menu.php','Module Menu','','no_title','[RIGHT]',0,'1',1,'6',0,4,''),(60,'demo2','statistics','global.counter.php','Thống kê','','primary','[RIGHT]',0,'1',1,'6',1,7,''),(61,'demo2','theme','global.menu_footer.php','Các chuyên mục chính','','simple','[MENU_FOOTER]',0,'1',1,'6',1,1,'a:1:{s:14:\"module_in_menu\";a:8:{i:0;s:5:\"about\";i:1;s:4:\"news\";i:2;s:5:\"users\";i:3;s:7:\"contact\";i:4;s:6:\"voting\";i:5;s:7:\"banners\";i:6;s:4:\"seek\";i:7;s:5:\"feeds\";}}'),(63,'demo2','users','global.user_button.php','Đăng nhập thành viên','','no_title','[PERSONALAREA]',0,'1',1,'6',1,1,''),(64,'demo2','theme','global.QR_code.php','QR code','','no_title','[QR_CODE]',0,'1',1,'6',1,1,'a:3:{s:5:\"level\";s:1:\"M\";s:15:\"pixel_per_point\";i:4;s:11:\"outer_frame\";i:1;}'),(65,'demo2','statistics','global.counter_button.php','Online button','','no_title','[QR_CODE]',0,'1',1,'6',1,2,''),(68,'demo2','voting','global.voting_random.php','Thăm dò ý kiến','','primary','[TDYK]',0,'1',1,'6',1,1,''),(69,'demo2','news','global.block_groups.php','Tin tiêu điểm','/web/groups/Tin-tieu-diem/','','[RIGHT]',0,'1',1,'6',1,2,'a:6:{s:7:\"blockid\";i:1;s:6:\"numrow\";i:5;s:12:\"title_length\";i:0;s:11:\"showtooltip\";i:1;s:16:\"tooltip_position\";s:6:\"bottom\";s:14:\"tooltip_length\";s:1:\"0\";}'),(139,'demo2','banners','global.banners.php','global banners','','border','[LEFT]',0,'1',1,'6',1,1,'a:1:{s:12:\"idplanbanner\";i:5;}'),(70,'demo2','theme','global.social.php','Social icon','','no_title','[SOCIAL_ICONS]',0,'1',1,'6',1,1,'a:4:{s:8:\"facebook\";s:32:\"http://www.facebook.com/nukeviet\";s:11:\"google_plus\";s:32:\"https://www.google.com/+nukeviet\";s:7:\"youtube\";s:37:\"https://www.youtube.com/user/nukeviet\";s:7:\"twitter\";s:28:\"https://twitter.com/nukeviet\";}'),(71,'demo2','news','module.block_newscenter.php','Tin mới nhất','','no_title','[TOP]',0,'1',1,'6',0,1,'a:10:{s:6:\"numrow\";i:6;s:11:\"showtooltip\";i:1;s:16:\"tooltip_position\";s:6:\"bottom\";s:14:\"tooltip_length\";s:3:\"150\";s:12:\"length_title\";i:0;s:15:\"length_hometext\";i:0;s:17:\"length_othertitle\";i:60;s:5:\"width\";i:500;s:6:\"height\";i:0;s:7:\"nocatid\";a:0:{}}'),(72,'demo2','banners','global.banners.php','Quảng cáo giữa trang','','no_title','[TOP]',0,'1',1,'6',0,2,'a:1:{s:12:\"idplanbanner\";i:1;}'),(73,'quangninh','theme','global.company_info.php','Công ty chủ quản','','simple','[COMPANY_INFO]',0,'1',1,'6',1,1,'a:17:{s:12:\"company_name\";s:58:\"Công ty cổ phần phát triển nguồn mở Việt Nam\";s:15:\"company_address\";s:72:\"Phòng 1706 - Tòa nhà CT2 Nàng Hương, 583 Nguyễn Trãi, Hà Nội\";s:16:\"company_sortname\";s:12:\"VINADES.,JSC\";s:15:\"company_regcode\";s:0:\"\";s:16:\"company_regplace\";s:0:\"\";s:21:\"company_licensenumber\";s:0:\"\";s:22:\"company_responsibility\";s:0:\"\";s:15:\"company_showmap\";i:1;s:20:\"company_mapcenterlat\";d:20.984516000000013;s:20:\"company_mapcenterlng\";d:105.795475;s:14:\"company_maplat\";d:20.984515999999999;s:14:\"company_maplng\";d:105.79547500000001;s:15:\"company_mapzoom\";i:17;s:13:\"company_phone\";s:58:\"+84-24-85872007[+842485872007]|+84-904762534[+84904762534]\";s:11:\"company_fax\";s:15:\"+84-24-35500914\";s:13:\"company_email\";s:18:\"contact@vinades.vn\";s:15:\"company_website\";s:17:\"http://vinades.vn\";}'),(74,'quangninh','contact','global.contact_default.php','Contact Default','','no_title','[CONTACT_DEFAULT]',0,'1',1,'6',1,1,''),(75,'quangninh','freecontent','global.free_content.php','Sản phẩm','','no_title','[FEATURED_PRODUCT]',0,'1',1,'6',1,1,'a:2:{s:7:\"blockid\";i:1;s:7:\"numrows\";i:2;}'),(76,'quangninh','theme','global.copyright.php','Copyright','','no_title','[FOOTER_SITE]',0,'1',1,'6',1,1,'a:5:{s:12:\"copyright_by\";s:0:\"\";s:13:\"copyright_url\";s:0:\"\";s:9:\"design_by\";s:12:\"VINADES.,JSC\";s:10:\"design_url\";s:18:\"http://vinades.vn/\";s:13:\"siteterms_url\";s:39:\"/index.php?language=vi&amp;nv=siteterms\";}'),(77,'quangninh','contact','global.contact_form.php','Feedback','','no_title','[FOOTER_SITE]',0,'1',1,'6',1,2,''),(78,'quangninh','news','global.block_category.php','Chủ đề','','no_title','[LEFT]',0,'1',1,'6',0,1,'a:2:{s:5:\"catid\";i:0;s:12:\"title_length\";i:0;}'),(79,'quangninh','theme','global.module_menu.php','Module Menu','','no_title','[LEFT]',0,'1',1,'6',0,2,''),(80,'quangninh','banners','global.banners.php','Quảng cáo cột trái','','no_title','[LEFT]',0,'1',1,'6',1,3,'a:1:{s:12:\"idplanbanner\";i:2;}'),(81,'quangninh','statistics','global.counter.php','Thống kê','','primary','[LEFT]',0,'1',1,'6',1,4,''),(82,'quangninh','theme','global.menu_footer.php','Các chuyên mục chính','','simple','[MENU_FOOTER]',0,'1',1,'6',1,1,'a:1:{s:14:\"module_in_menu\";a:8:{i:0;s:5:\"about\";i:1;s:4:\"news\";i:2;s:5:\"users\";i:3;s:7:\"contact\";i:4;s:6:\"voting\";i:5;s:7:\"banners\";i:6;s:4:\"seek\";i:7;s:5:\"feeds\";}}'),(83,'quangninh','menu','global.bootstrap.php','Menu Site','','no_title','[MENU_SITE]',0,'1',1,'6',1,1,'a:2:{s:6:\"menuid\";i:1;s:12:\"title_length\";i:0;}'),(84,'quangninh','users','global.user_button.php','Đăng nhập thành viên','','no_title','[PERSONALAREA]',0,'1',1,'6',1,1,''),(85,'quangninh','theme','global.QR_code.php','QR code','','no_title','[QR_CODE]',0,'1',1,'6',1,1,'a:3:{s:5:\"level\";s:1:\"M\";s:15:\"pixel_per_point\";i:4;s:11:\"outer_frame\";i:1;}'),(86,'quangninh','statistics','global.counter_button.php','Online button','','no_title','[QR_CODE]',0,'1',1,'6',1,2,''),(87,'quangninh','about','global.about.php','Giới thiệu','','border','[RIGHT]',0,'1',1,'6',1,1,''),(88,'quangninh','banners','global.banners.php','Quảng cáo cột phải','','no_title','[RIGHT]',0,'1',1,'6',1,2,'a:1:{s:12:\"idplanbanner\";i:3;}'),(89,'quangninh','voting','global.voting_random.php','Thăm dò ý kiến','','primary','[RIGHT]',0,'1',1,'6',1,3,''),(90,'quangninh','news','global.block_tophits.php','Tin xem nhiều','','primary','[RIGHT]',0,'1',1,'6',1,4,'a:6:{s:10:\"number_day\";i:3650;s:6:\"numrow\";i:10;s:11:\"showtooltip\";i:1;s:16:\"tooltip_position\";s:6:\"bottom\";s:14:\"tooltip_length\";s:3:\"150\";s:7:\"nocatid\";a:2:{i:0;i:10;i:1;i:11;}}'),(91,'quangninh','theme','global.social.php','Social icon','','no_title','[SOCIAL_ICONS]',0,'1',1,'6',1,1,'a:4:{s:8:\"facebook\";s:32:\"http://www.facebook.com/nukeviet\";s:11:\"google_plus\";s:32:\"https://www.google.com/+nukeviet\";s:7:\"youtube\";s:37:\"https://www.youtube.com/user/nukeviet\";s:7:\"twitter\";s:28:\"https://twitter.com/nukeviet\";}'),(92,'quangninh','news','module.block_newscenter.php','Tin mới nhất','','no_title','[TOP]',0,'1',1,'6',0,1,'a:10:{s:6:\"numrow\";i:6;s:11:\"showtooltip\";i:1;s:16:\"tooltip_position\";s:6:\"bottom\";s:14:\"tooltip_length\";s:3:\"150\";s:12:\"length_title\";i:0;s:15:\"length_hometext\";i:0;s:17:\"length_othertitle\";i:60;s:5:\"width\";i:500;s:6:\"height\";i:0;s:7:\"nocatid\";a:0:{}}'),(93,'quangninh','banners','global.banners.php','Quảng cáo giữa trang','','no_title','[TOP]',0,'1',1,'6',0,2,'a:1:{s:12:\"idplanbanner\";i:1;}'),(94,'phubinh','theme','global.company_info.php','Công ty chủ quản','','simple','[COMPANY_INFO]',0,'1',1,'6',1,1,'a:17:{s:12:\"company_name\";s:58:\"Công ty cổ phần phát triển nguồn mở Việt Nam\";s:15:\"company_address\";s:72:\"Phòng 1706 - Tòa nhà CT2 Nàng Hương, 583 Nguyễn Trãi, Hà Nội\";s:16:\"company_sortname\";s:12:\"VINADES.,JSC\";s:15:\"company_regcode\";s:0:\"\";s:16:\"company_regplace\";s:0:\"\";s:21:\"company_licensenumber\";s:0:\"\";s:22:\"company_responsibility\";s:0:\"\";s:15:\"company_showmap\";i:1;s:20:\"company_mapcenterlat\";d:20.984516000000013;s:20:\"company_mapcenterlng\";d:105.795475;s:14:\"company_maplat\";d:20.984515999999999;s:14:\"company_maplng\";d:105.79547500000001;s:15:\"company_mapzoom\";i:17;s:13:\"company_phone\";s:58:\"+84-24-85872007[+842485872007]|+84-904762534[+84904762534]\";s:11:\"company_fax\";s:15:\"+84-24-35500914\";s:13:\"company_email\";s:18:\"contact@vinades.vn\";s:15:\"company_website\";s:17:\"http://vinades.vn\";}'),(95,'phubinh','contact','global.contact_default.php','Contact Default','','no_title','[CONTACT_DEFAULT]',0,'1',1,'6',1,1,''),(96,'phubinh','freecontent','global.free_content.php','Sản phẩm','','no_title','[FEATURED_PRODUCT]',0,'1',1,'6',1,1,'a:2:{s:7:\"blockid\";i:1;s:7:\"numrows\";i:2;}'),(97,'phubinh','theme','global.copyright.php','Copyright','','no_title','[FOOTER_SITE]',0,'1',1,'6',1,1,'a:5:{s:12:\"copyright_by\";s:0:\"\";s:13:\"copyright_url\";s:0:\"\";s:9:\"design_by\";s:12:\"VINADES.,JSC\";s:10:\"design_url\";s:18:\"http://vinades.vn/\";s:13:\"siteterms_url\";s:39:\"/index.php?language=vi&amp;nv=siteterms\";}'),(98,'phubinh','contact','global.contact_form.php','Feedback','','no_title','[FOOTER_SITE]',0,'1',1,'6',1,2,''),(99,'phubinh','news','global.block_category.php','Chủ đề','','no_title','[LEFT]',0,'1',1,'6',0,1,'a:2:{s:5:\"catid\";i:0;s:12:\"title_length\";i:0;}'),(100,'phubinh','theme','global.module_menu.php','Module Menu','','no_title','[LEFT]',0,'1',1,'6',0,2,''),(101,'phubinh','banners','global.banners.php','Quảng cáo cột trái','','no_title','[LEFT]',0,'1',1,'6',1,3,'a:1:{s:12:\"idplanbanner\";i:2;}'),(102,'phubinh','statistics','global.counter.php','Thống kê','','primary','[LEFT]',0,'1',1,'6',1,4,''),(103,'phubinh','theme','global.menu_footer.php','Các chuyên mục chính','','simple','[MENU_FOOTER]',0,'1',1,'6',1,1,'a:1:{s:14:\"module_in_menu\";a:8:{i:0;s:5:\"about\";i:1;s:4:\"news\";i:2;s:5:\"users\";i:3;s:7:\"contact\";i:4;s:6:\"voting\";i:5;s:7:\"banners\";i:6;s:4:\"seek\";i:7;s:5:\"feeds\";}}'),(104,'phubinh','menu','global.bootstrap.php','Menu Site','','no_title','[MENU_SITE]',0,'1',1,'6',1,1,'a:2:{s:6:\"menuid\";i:1;s:12:\"title_length\";i:0;}'),(105,'phubinh','users','global.user_button.php','Đăng nhập thành viên','','no_title','[PERSONALAREA]',0,'1',1,'6',1,1,''),(106,'phubinh','theme','global.QR_code.php','QR code','','no_title','[QR_CODE]',0,'1',1,'6',1,1,'a:3:{s:5:\"level\";s:1:\"M\";s:15:\"pixel_per_point\";i:4;s:11:\"outer_frame\";i:1;}'),(107,'phubinh','statistics','global.counter_button.php','Online button','','no_title','[QR_CODE]',0,'1',1,'6',1,2,''),(108,'phubinh','about','global.about.php','Giới thiệu','','border','[RIGHT]',0,'1',1,'6',1,1,''),(109,'phubinh','banners','global.banners.php','Quảng cáo cột phải','','no_title','[RIGHT]',0,'1',1,'6',1,2,'a:1:{s:12:\"idplanbanner\";i:3;}'),(110,'phubinh','voting','global.voting_random.php','Thăm dò ý kiến','','primary','[RIGHT]',0,'1',1,'6',1,3,''),(111,'phubinh','news','global.block_tophits.php','Tin xem nhiều','','primary','[RIGHT]',0,'1',1,'6',1,4,'a:6:{s:10:\"number_day\";i:3650;s:6:\"numrow\";i:10;s:11:\"showtooltip\";i:1;s:16:\"tooltip_position\";s:6:\"bottom\";s:14:\"tooltip_length\";s:3:\"150\";s:7:\"nocatid\";a:2:{i:0;i:10;i:1;i:11;}}'),(112,'phubinh','theme','global.social.php','Social icon','','no_title','[SOCIAL_ICONS]',0,'1',1,'6',1,1,'a:4:{s:8:\"facebook\";s:32:\"http://www.facebook.com/nukeviet\";s:11:\"google_plus\";s:32:\"https://www.google.com/+nukeviet\";s:7:\"youtube\";s:37:\"https://www.youtube.com/user/nukeviet\";s:7:\"twitter\";s:28:\"https://twitter.com/nukeviet\";}'),(113,'phubinh','news','module.block_newscenter.php','Tin mới nhất','','no_title','[TOP]',0,'1',1,'6',0,1,'a:10:{s:6:\"numrow\";i:6;s:11:\"showtooltip\";i:1;s:16:\"tooltip_position\";s:6:\"bottom\";s:14:\"tooltip_length\";s:3:\"150\";s:12:\"length_title\";i:0;s:15:\"length_hometext\";i:0;s:17:\"length_othertitle\";i:60;s:5:\"width\";i:500;s:6:\"height\";i:0;s:7:\"nocatid\";a:0:{}}'),(114,'phubinh','banners','global.banners.php','Quảng cáo giữa trang','','no_title','[TOP]',0,'1',1,'6',0,2,'a:1:{s:12:\"idplanbanner\";i:1;}'),(115,'demodemo','theme','global.company_info.php','Công ty chủ quản','','simple','[COMPANY_INFO]',0,'1',1,'6',1,1,'a:17:{s:12:\"company_name\";s:58:\"Công ty cổ phần phát triển nguồn mở Việt Nam\";s:15:\"company_address\";s:72:\"Phòng 1706 - Tòa nhà CT2 Nàng Hương, 583 Nguyễn Trãi, Hà Nội\";s:16:\"company_sortname\";s:12:\"VINADES.,JSC\";s:15:\"company_regcode\";s:0:\"\";s:16:\"company_regplace\";s:0:\"\";s:21:\"company_licensenumber\";s:0:\"\";s:22:\"company_responsibility\";s:0:\"\";s:15:\"company_showmap\";i:1;s:20:\"company_mapcenterlat\";d:20.984516000000013;s:20:\"company_mapcenterlng\";d:105.795475;s:14:\"company_maplat\";d:20.984515999999999;s:14:\"company_maplng\";d:105.79547500000001;s:15:\"company_mapzoom\";i:17;s:13:\"company_phone\";s:58:\"+84-24-85872007[+842485872007]|+84-904762534[+84904762534]\";s:11:\"company_fax\";s:15:\"+84-24-35500914\";s:13:\"company_email\";s:18:\"contact@vinades.vn\";s:15:\"company_website\";s:17:\"http://vinades.vn\";}'),(116,'demodemo','contact','global.contact_default.php','Contact Default','','no_title','[CONTACT_DEFAULT]',0,'1',1,'6',1,1,''),(117,'demodemo','freecontent','global.free_content.php','Sản phẩm','','no_title','[FEATURED_PRODUCT]',0,'1',1,'6',1,1,'a:2:{s:7:\"blockid\";i:1;s:7:\"numrows\";i:2;}'),(118,'demodemo','theme','global.copyright.php','Copyright','','no_title','[FOOTER_SITE]',0,'1',1,'6',1,1,'a:5:{s:12:\"copyright_by\";s:0:\"\";s:13:\"copyright_url\";s:0:\"\";s:9:\"design_by\";s:12:\"VINADES.,JSC\";s:10:\"design_url\";s:18:\"http://vinades.vn/\";s:13:\"siteterms_url\";s:39:\"/index.php?language=vi&amp;nv=siteterms\";}'),(119,'demodemo','contact','global.contact_form.php','Feedback','','no_title','[FOOTER_SITE]',0,'1',1,'6',1,2,''),(120,'demodemo','news','global.block_category.php','Chủ đề','','no_title','[LEFT]',0,'1',1,'6',0,1,'a:2:{s:5:\"catid\";i:0;s:12:\"title_length\";i:0;}'),(121,'demodemo','theme','global.module_menu.php','Module Menu','','no_title','[LEFT]',0,'1',1,'6',0,2,''),(122,'demodemo','banners','global.banners.php','Quảng cáo cột trái','','no_title','[LEFT]',0,'1',1,'6',1,3,'a:1:{s:12:\"idplanbanner\";i:2;}'),(123,'demodemo','statistics','global.counter.php','Thống kê','','primary','[LEFT]',0,'1',1,'6',1,4,''),(124,'demodemo','theme','global.menu_footer.php','Các chuyên mục chính','','simple','[MENU_FOOTER]',0,'1',1,'6',1,1,'a:1:{s:14:\"module_in_menu\";a:8:{i:0;s:5:\"about\";i:1;s:4:\"news\";i:2;s:5:\"users\";i:3;s:7:\"contact\";i:4;s:6:\"voting\";i:5;s:7:\"banners\";i:6;s:4:\"seek\";i:7;s:5:\"feeds\";}}'),(125,'demodemo','menu','global.bootstrap.php','Menu Site','','no_title','[MENU_SITE]',0,'1',1,'6',1,1,'a:2:{s:6:\"menuid\";i:1;s:12:\"title_length\";i:0;}'),(126,'demodemo','users','global.user_button.php','Đăng nhập thành viên','','no_title','[PERSONALAREA]',0,'1',1,'6',1,1,''),(127,'demodemo','theme','global.QR_code.php','QR code','','no_title','[QR_CODE]',0,'1',1,'6',1,1,'a:3:{s:5:\"level\";s:1:\"M\";s:15:\"pixel_per_point\";i:4;s:11:\"outer_frame\";i:1;}'),(128,'demodemo','statistics','global.counter_button.php','Online button','','no_title','[QR_CODE]',0,'1',1,'6',1,2,''),(129,'demodemo','about','global.about.php','Giới thiệu','','border','[RIGHT]',0,'1',1,'6',1,1,''),(130,'demodemo','banners','global.banners.php','Quảng cáo cột phải','','no_title','[RIGHT]',0,'1',1,'6',1,2,'a:1:{s:12:\"idplanbanner\";i:3;}'),(131,'demodemo','voting','global.voting_random.php','Thăm dò ý kiến','','primary','[RIGHT]',0,'1',1,'6',1,3,''),(132,'demodemo','news','global.block_tophits.php','Tin xem nhiều','','primary','[RIGHT]',0,'1',1,'6',1,4,'a:6:{s:10:\"number_day\";i:3650;s:6:\"numrow\";i:10;s:11:\"showtooltip\";i:1;s:16:\"tooltip_position\";s:6:\"bottom\";s:14:\"tooltip_length\";s:3:\"150\";s:7:\"nocatid\";a:2:{i:0;i:10;i:1;i:11;}}'),(133,'demodemo','theme','global.social.php','Social icon','','no_title','[SOCIAL_ICONS]',0,'1',1,'6',1,1,'a:4:{s:8:\"facebook\";s:32:\"http://www.facebook.com/nukeviet\";s:11:\"google_plus\";s:32:\"https://www.google.com/+nukeviet\";s:7:\"youtube\";s:37:\"https://www.youtube.com/user/nukeviet\";s:7:\"twitter\";s:28:\"https://twitter.com/nukeviet\";}'),(134,'demodemo','news','module.block_newscenter.php','Tin mới nhất','','no_title','[TOP]',0,'1',1,'6',0,1,'a:10:{s:6:\"numrow\";i:6;s:11:\"showtooltip\";i:1;s:16:\"tooltip_position\";s:6:\"bottom\";s:14:\"tooltip_length\";s:3:\"150\";s:12:\"length_title\";i:0;s:15:\"length_hometext\";i:0;s:17:\"length_othertitle\";i:60;s:5:\"width\";i:500;s:6:\"height\";i:0;s:7:\"nocatid\";a:0:{}}'),(135,'demodemo','banners','global.banners.php','Quảng cáo giữa trang','','no_title','[TOP]',0,'1',1,'6',0,2,'a:1:{s:12:\"idplanbanner\";i:1;}'),(136,'demodemo','banners','global.banners.php','global banners','','no_title','[BANNER1]',0,'1',1,'6',1,1,'a:1:{s:12:\"idplanbanner\";i:4;}'),(137,'demo2','banners','global.banners.php','global banners','','no_title','[BANNER1]',0,'1',1,'6',1,1,'a:1:{s:12:\"idplanbanner\";i:9;}'),(138,'demo2','news','module.block_news.php','Thông tin nổi bật','','','[RIGHT]',0,'1',1,'6',0,1,'a:4:{s:6:\"numrow\";i:5;s:11:\"showtooltip\";i:1;s:16:\"tooltip_position\";s:6:\"bottom\";s:14:\"tooltip_length\";s:1:\"0\";}'),(140,'demo2','menu','global.metismenu.php','global metismenu','','no_title','[LEFT]',0,'1',1,'6',1,2,'a:2:{s:6:\"menuid\";i:1;s:12:\"title_length\";i:0;}'),(141,'demo2','banners','global.banners.php','global banners','','no_title','[LEFT]',0,'1',1,'6',1,3,'a:1:{s:12:\"idplanbanner\";i:6;}'),(142,'demo2','banners','global.banners.php','global banners','','no_title','[RIGHT]',0,'1',1,'6',1,3,'a:1:{s:12:\"idplanbanner\";i:7;}'),(143,'demo2','users','global.login.php','Đăng nhập hệ thống QLVB','','','[RIGHT]',0,'1',1,'6',1,8,'a:2:{s:12:\"display_mode\";i:0;s:14:\"popup_register\";i:1;}'),(145,'demo2','menu','global.bootstrap.php','global bootstrap','','no_title','[MENU_SITE]',0,'1',1,'6',1,1,'a:2:{s:6:\"menuid\";i:1;s:12:\"title_length\";i:0;}'),(146,'demo2','banners','global.banners.php','global banners','','no_title','[RIGHT]',0,'1',1,'6',1,5,'a:1:{s:12:\"idplanbanner\";i:8;}'),(148,'tintuc','theme','global.company_info.php','Công ty chủ quản','','simple','[COMPANY_INFO]',0,'1',1,'6',1,1,'a:17:{s:12:\"company_name\";s:58:\"Công ty cổ phần phát triển nguồn mở Việt Nam\";s:15:\"company_address\";s:72:\"Phòng 1706 - Tòa nhà CT2 Nàng Hương, 583 Nguyễn Trãi, Hà Nội\";s:16:\"company_sortname\";s:12:\"VINADES.,JSC\";s:15:\"company_regcode\";s:0:\"\";s:16:\"company_regplace\";s:0:\"\";s:21:\"company_licensenumber\";s:0:\"\";s:22:\"company_responsibility\";s:0:\"\";s:15:\"company_showmap\";i:1;s:20:\"company_mapcenterlat\";d:20.984516000000013;s:20:\"company_mapcenterlng\";d:105.795475;s:14:\"company_maplat\";d:20.984515999999999;s:14:\"company_maplng\";d:105.79547500000001;s:15:\"company_mapzoom\";i:17;s:13:\"company_phone\";s:58:\"+84-24-85872007[+842485872007]|+84-904762534[+84904762534]\";s:11:\"company_fax\";s:15:\"+84-24-35500914\";s:13:\"company_email\";s:18:\"contact@vinades.vn\";s:15:\"company_website\";s:17:\"http://vinades.vn\";}'),(149,'tintuc','contact','global.contact_default.php','Contact Default','','no_title','[CONTACT_DEFAULT]',0,'1',1,'6',1,1,''),(150,'tintuc','freecontent','global.free_content.php','Sản phẩm','','no_title','[FEATURED_PRODUCT]',0,'1',1,'6',1,1,'a:2:{s:7:\"blockid\";i:1;s:7:\"numrows\";i:2;}'),(151,'tintuc','about','global.html.php','Copyright','','no_title','[FOOTER_SITE]',0,'1',1,'6',1,1,'a:1:{s:11:\"htmlcontent\";s:523:\"<div style=\"text-align: center;\"><strong>Trang thông tin điện tử Ủy ban nhân dân huyện Quảng Ninh</strong><div style=\"text-align: center;\">Trụ sở: Thị trấn Quán Hàu - Huyện Quảng Ninh - Tỉnh Quảng Bình&nbsp;</div><div style=\"text-align: center;\">Điện thoại: (052) 3872037- Fax: (052) 3872302 - Email: quangninh@quangbinh.gov.vn&nbsp;</div><div style=\"text-align: center;\">Ghi rõ nguồn “Website huyện Quảng Ninh” khi phát hành lại thông tin từ Website này</div></div>\";}'),(152,'tintuc','contact','global.contact_form.php','Feedback','','no_title','[FOOTER_SITE]',0,'1',1,'6',1,2,''),(153,'tintuc','menu','global.metismenu.php','Chủ đề','','no_title','[LEFT]',0,'1',1,'6',1,1,'a:2:{s:6:\"menuid\";i:9;s:12:\"title_length\";i:0;}'),(154,'tintuc','theme','global.module_menu.php','Module Menu','','no_title','[LEFT]',0,'1',1,'6',0,2,''),(157,'tintuc','theme','global.menu_footer.php','Các chuyên mục chính','','simple','[MENU_FOOTER]',0,'1',1,'6',1,1,'a:1:{s:14:\"module_in_menu\";a:8:{i:0;s:5:\"about\";i:1;s:4:\"news\";i:2;s:5:\"users\";i:3;s:7:\"contact\";i:4;s:6:\"voting\";i:5;s:7:\"banners\";i:6;s:4:\"seek\";i:7;s:5:\"feeds\";}}'),(158,'tintuc','menu','global.bootstrap.php','Menu Site','','no_title','[MENU_SITE]',0,'1',1,'6',1,1,'a:2:{s:6:\"menuid\";i:10;s:12:\"title_length\";i:0;}'),(159,'tintuc','users','global.user_button.php','Đăng nhập thành viên','','no_title','[PERSONALAREA]',0,'1',1,'6',1,1,''),(160,'tintuc','theme','global.QR_code.php','QR code','','no_title','[QR_CODE]',0,'1',1,'6',1,1,'a:3:{s:5:\"level\";s:1:\"M\";s:15:\"pixel_per_point\";i:4;s:11:\"outer_frame\";i:1;}'),(161,'tintuc','statistics','global.counter_button.php','Online button','','no_title','[QR_CODE]',0,'1',1,'6',1,2,''),(163,'tintuc','banners','global.banners.php','global banners','','no_title','[RIGHT]',0,'1',1,'6',1,1,'a:1:{s:12:\"idplanbanner\";i:7;}'),(175,'tintuc','voting','global.voting.php','Bình chọn','','','[LEFT]',0,'1',1,'6',1,5,'a:1:{s:3:\"vid\";i:3;}'),(166,'tintuc','theme','global.social.php','Social icon','','no_title','[SOCIAL_ICONS]',0,'1',1,'6',1,1,'a:4:{s:8:\"facebook\";s:32:\"http://www.facebook.com/nukeviet\";s:11:\"google_plus\";s:32:\"https://www.google.com/+nukeviet\";s:7:\"youtube\";s:37:\"https://www.youtube.com/user/nukeviet\";s:7:\"twitter\";s:28:\"https://twitter.com/nukeviet\";}'),(167,'tintuc','news','module.block_newscenter.php','Tin mới nhất','','no_title','[TOP]',0,'1',1,'6',0,1,'a:10:{s:6:\"numrow\";i:5;s:11:\"showtooltip\";i:1;s:16:\"tooltip_position\";s:6:\"bottom\";s:14:\"tooltip_length\";s:3:\"150\";s:12:\"length_title\";i:0;s:15:\"length_hometext\";i:0;s:17:\"length_othertitle\";i:60;s:5:\"width\";i:500;s:6:\"height\";i:0;s:7:\"nocatid\";a:0:{}}'),(168,'tintuc','banners','global.banners.php','Quảng cáo giữa trang','','no_title','[TOP]',0,'1',1,'6',0,2,'a:1:{s:12:\"idplanbanner\";i:1;}'),(170,'tintuc','news','module.block_news.php','Thông tin nổi bật','','','[RIGHT]',0,'1',1,'6',0,2,'a:4:{s:6:\"numrow\";i:10;s:11:\"showtooltip\";i:1;s:16:\"tooltip_position\";s:6:\"bottom\";s:14:\"tooltip_length\";s:1:\"0\";}'),(171,'tintuc','news','module.block_news.php','văn bản mới','','','[RIGHT]',0,'1',1,'6',0,3,'a:4:{s:6:\"numrow\";i:10;s:11:\"showtooltip\";i:1;s:16:\"tooltip_position\";s:6:\"bottom\";s:14:\"tooltip_length\";s:1:\"0\";}'),(173,'tintuc','banners','global.banners.php','global banners','','no_title','[LEFT]',0,'1',1,'6',1,3,'a:1:{s:12:\"idplanbanner\";i:5;}'),(174,'tintuc','banners','global.banners.php','global banners','','no_title','[LEFT]',0,'1',1,'6',1,4,'a:1:{s:12:\"idplanbanner\";i:6;}'),(176,'tintuc','banners','global.banners.php','global banners','','no_title','[RIGHT]',0,'1',1,'6',0,4,'a:1:{s:12:\"idplanbanner\";i:8;}'),(177,'tintuc','users','global.login.php','Đăng nhập hệ thống QLVB','','','[RIGHT]',0,'1',1,'6',1,5,'a:2:{s:12:\"display_mode\";i:0;s:14:\"popup_register\";i:1;}'),(178,'tintuc','menu','global.metismenu.php','global metismenu','','no_title','[RIGHT]',0,'1',1,'6',1,6,'a:2:{s:6:\"menuid\";i:4;s:12:\"title_length\";i:0;}'),(180,'tintuc','banners','global.banners.php','global banners','','no_title','[RIGHT]',0,'1',1,'6',1,7,'a:1:{s:12:\"idplanbanner\";i:10;}'),(181,'tintuc','statistics','global.counter.php','Số lượt truy cập','','','[RIGHT]',0,'1',1,'6',1,8,'');
/*!40000 ALTER TABLE `nv4_vi_blocks_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_blocks_weight`
--

DROP TABLE IF EXISTS `nv4_vi_blocks_weight`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_blocks_weight` (
  `bid` mediumint(8) NOT NULL DEFAULT '0',
  `func_id` mediumint(8) NOT NULL DEFAULT '0',
  `weight` mediumint(8) NOT NULL DEFAULT '0',
  UNIQUE KEY `bid` (`bid`,`func_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_blocks_weight`
--

LOCK TABLES `nv4_vi_blocks_weight` WRITE;
/*!40000 ALTER TABLE `nv4_vi_blocks_weight` DISABLE KEYS */;
INSERT INTO `nv4_vi_blocks_weight` VALUES (16,1,1),(16,38,1),(16,39,1),(16,40,1),(16,41,1),(16,47,1),(16,48,1),(16,49,1),(16,50,1),(16,51,1),(16,61,1),(16,64,1),(16,4,1),(16,5,1),(16,6,1),(16,7,1),(16,8,1),(16,9,1),(16,10,1),(16,11,1),(16,12,1),(16,52,1),(16,63,1),(16,55,1),(16,56,1),(16,31,1),(16,32,1),(16,33,1),(16,34,1),(16,35,1),(16,36,1),(16,37,1),(16,58,1),(16,59,1),(16,60,1),(16,19,1),(16,20,1),(16,21,1),(16,22,1),(16,23,1),(16,24,1),(16,25,1),(16,26,1),(16,27,1),(16,28,1),(16,29,1),(16,62,1),(18,1,1),(18,38,1),(18,39,1),(18,40,1),(18,41,1),(18,47,1),(18,48,1),(18,49,1),(18,50,1),(18,51,1),(18,61,1),(18,64,1),(18,4,1),(18,5,1),(18,6,1),(18,7,1),(18,8,1),(18,9,1),(18,10,1),(18,11,1),(18,12,1),(18,52,1),(18,63,1),(18,55,1),(18,56,1),(18,31,1),(18,32,1),(18,33,1),(18,34,1),(18,35,1),(18,36,1),(18,37,1),(18,58,1),(18,59,1),(18,60,1),(18,19,1),(18,20,1),(18,21,1),(18,22,1),(18,23,1),(18,24,1),(18,25,1),(18,26,1),(18,27,1),(18,28,1),(18,29,1),(18,62,1),(21,1,1),(21,38,1),(21,39,1),(21,40,1),(21,41,1),(21,47,1),(21,48,1),(21,49,1),(21,50,1),(21,51,1),(21,61,1),(21,64,1),(21,4,1),(21,5,1),(21,6,1),(21,7,1),(21,8,1),(21,9,1),(21,10,1),(21,11,1),(21,12,1),(21,52,1),(21,63,1),(21,55,1),(21,56,1),(21,31,1),(21,32,1),(21,33,1),(21,34,1),(21,35,1),(21,36,1),(21,37,1),(21,58,1),(21,59,1),(21,60,1),(21,19,1),(21,20,1),(21,21,1),(21,22,1),(21,23,1),(21,24,1),(21,25,1),(21,26,1),(21,27,1),(21,28,1),(21,29,1),(21,62,1),(11,1,1),(11,38,1),(11,39,1),(11,40,1),(11,41,1),(11,47,1),(11,48,1),(11,49,1),(11,50,1),(11,51,1),(11,61,1),(11,64,1),(11,4,1),(11,5,1),(11,6,1),(11,7,1),(11,8,1),(11,9,1),(11,10,1),(11,11,1),(11,12,1),(11,52,1),(11,63,1),(11,55,1),(11,56,1),(11,31,1),(11,32,1),(11,33,1),(11,34,1),(11,35,1),(11,36,1),(11,37,1),(11,58,1),(11,59,1),(11,60,1),(11,19,1),(11,20,1),(11,21,1),(11,22,1),(11,23,1),(11,24,1),(11,25,1),(11,26,1),(11,27,1),(11,28,1),(11,29,1),(11,62,1),(12,1,2),(12,38,2),(12,39,2),(12,40,2),(12,41,2),(12,47,2),(12,48,2),(12,49,2),(12,50,2),(12,51,2),(12,61,2),(12,64,2),(12,4,2),(12,5,2),(12,6,2),(12,7,2),(12,8,2),(12,9,2),(12,10,2),(12,11,2),(12,12,2),(12,52,2),(12,63,2),(12,55,2),(12,56,2),(12,31,2),(12,32,2),(12,33,2),(12,34,2),(12,35,2),(12,36,2),(12,37,2),(12,58,2),(12,59,2),(12,60,2),(12,19,2),(12,20,2),(12,21,2),(12,22,2),(12,23,2),(12,24,2),(12,25,2),(12,26,2),(12,27,2),(12,28,2),(12,29,2),(12,62,2),(3,4,1),(3,5,1),(3,6,1),(3,7,1),(3,8,1),(3,9,1),(3,10,1),(3,11,1),(3,12,1),(4,19,1),(4,20,1),(4,21,1),(4,22,1),(4,23,1),(4,24,1),(4,25,1),(4,26,1),(4,27,1),(4,28,1),(4,31,1),(4,32,1),(4,33,1),(4,34,1),(4,35,1),(4,36,1),(4,37,1),(5,1,1),(5,38,1),(5,39,1),(5,40,1),(5,41,1),(5,47,1),(5,48,1),(5,49,1),(5,50,1),(5,51,1),(5,61,1),(5,64,1),(5,4,2),(5,5,2),(5,6,2),(5,7,2),(5,8,2),(5,9,2),(5,10,2),(5,11,2),(5,12,2),(5,52,1),(5,63,1),(5,55,1),(5,56,1),(5,31,2),(5,32,2),(5,33,2),(5,34,2),(5,35,2),(5,36,2),(5,37,2),(5,58,1),(5,59,1),(5,60,1),(5,19,2),(5,20,2),(5,21,2),(5,22,2),(5,23,2),(5,24,2),(5,25,2),(5,26,2),(5,27,2),(5,28,2),(5,29,1),(5,62,1),(6,1,2),(6,38,2),(6,39,2),(6,40,2),(6,41,2),(6,47,2),(6,48,2),(6,49,2),(6,50,2),(6,51,2),(6,61,2),(6,64,2),(6,4,3),(6,5,3),(6,6,3),(6,7,3),(6,8,3),(6,9,3),(6,10,3),(6,11,3),(6,12,3),(6,52,2),(6,63,2),(6,55,2),(6,56,2),(6,31,3),(6,32,3),(6,33,3),(6,34,3),(6,35,3),(6,36,3),(6,37,3),(6,58,2),(6,59,2),(6,60,2),(6,19,3),(6,20,3),(6,21,3),(6,22,3),(6,23,3),(6,24,3),(6,25,3),(6,26,3),(6,27,3),(6,28,3),(6,29,2),(6,62,2),(20,1,1),(20,38,1),(20,39,1),(20,40,1),(20,41,1),(20,47,1),(20,48,1),(20,49,1),(20,50,1),(20,51,1),(20,61,1),(20,64,1),(20,4,1),(20,5,1),(20,6,1),(20,7,1),(20,8,1),(20,9,1),(20,10,1),(20,11,1),(20,12,1),(20,52,1),(20,63,1),(20,55,1),(20,56,1),(20,31,1),(20,32,1),(20,33,1),(20,34,1),(20,35,1),(20,36,1),(20,37,1),(20,58,1),(20,59,1),(20,60,1),(20,19,1),(20,20,1),(20,21,1),(20,22,1),(20,23,1),(20,24,1),(20,25,1),(20,26,1),(20,27,1),(20,28,1),(20,29,1),(20,62,1),(17,1,1),(17,38,1),(17,39,1),(17,40,1),(17,41,1),(17,47,1),(17,48,1),(17,49,1),(17,50,1),(17,51,1),(17,61,1),(17,64,1),(17,4,1),(17,5,1),(17,6,1),(17,7,1),(17,8,1),(17,9,1),(17,10,1),(17,11,1),(17,12,1),(17,52,1),(17,63,1),(17,55,1),(17,56,1),(17,31,1),(17,32,1),(17,33,1),(17,34,1),(17,35,1),(17,36,1),(17,37,1),(17,58,1),(17,59,1),(17,60,1),(17,19,1),(17,20,1),(17,21,1),(17,22,1),(17,23,1),(17,24,1),(17,25,1),(17,26,1),(17,27,1),(17,28,1),(17,29,1),(17,62,1),(15,1,1),(15,38,1),(15,39,1),(15,40,1),(15,41,1),(15,47,1),(15,48,1),(15,49,1),(15,50,1),(15,51,1),(15,61,1),(15,64,1),(15,4,1),(15,5,1),(15,6,1),(15,7,1),(15,8,1),(15,9,1),(15,10,1),(15,11,1),(15,12,1),(15,52,1),(15,63,1),(15,55,1),(15,56,1),(15,31,1),(15,32,1),(15,33,1),(15,34,1),(15,35,1),(15,36,1),(15,37,1),(15,58,1),(15,59,1),(15,60,1),(15,19,1),(15,20,1),(15,21,1),(15,22,1),(15,23,1),(15,24,1),(15,25,1),(15,26,1),(15,27,1),(15,28,1),(15,29,1),(15,62,1),(13,1,1),(13,38,1),(13,39,1),(13,40,1),(13,41,1),(13,47,1),(13,48,1),(13,49,1),(13,50,1),(13,51,1),(13,61,1),(13,64,1),(13,4,1),(13,5,1),(13,6,1),(13,7,1),(13,8,1),(13,9,1),(13,10,1),(13,11,1),(13,12,1),(13,52,1),(13,63,1),(13,55,1),(13,56,1),(13,31,1),(13,32,1),(13,33,1),(13,34,1),(13,35,1),(13,36,1),(13,37,1),(13,58,1),(13,59,1),(13,60,1),(13,19,1),(13,20,1),(13,21,1),(13,22,1),(13,23,1),(13,24,1),(13,25,1),(13,26,1),(13,27,1),(13,28,1),(13,29,1),(13,62,1),(14,1,2),(14,38,2),(14,39,2),(14,40,2),(14,41,2),(14,47,2),(14,48,2),(14,49,2),(14,50,2),(14,51,2),(14,61,2),(14,64,2),(14,4,2),(14,5,2),(14,6,2),(14,7,2),(14,8,2),(14,9,2),(14,10,2),(14,11,2),(14,12,2),(14,52,2),(14,63,2),(14,55,2),(14,56,2),(14,31,2),(14,32,2),(14,33,2),(14,34,2),(14,35,2),(14,36,2),(14,37,2),(14,58,2),(14,59,2),(14,60,2),(14,19,2),(14,20,2),(14,21,2),(14,22,2),(14,23,2),(14,24,2),(14,25,2),(14,26,2),(14,27,2),(14,28,2),(14,29,2),(14,62,2),(7,1,1),(7,38,1),(7,39,1),(7,40,1),(7,41,1),(7,47,1),(7,48,1),(7,49,1),(7,50,1),(7,51,1),(7,61,1),(7,64,1),(7,4,1),(7,5,1),(7,6,1),(7,7,1),(7,8,1),(7,9,1),(7,10,1),(7,11,1),(7,12,1),(7,52,1),(7,63,1),(7,55,1),(7,56,1),(7,31,1),(7,32,1),(7,33,1),(7,34,1),(7,35,1),(7,36,1),(7,37,1),(7,58,1),(7,59,1),(7,60,1),(7,19,1),(7,20,1),(7,21,1),(7,22,1),(7,23,1),(7,24,1),(7,25,1),(7,26,1),(7,27,1),(7,28,1),(7,29,1),(7,62,1),(8,1,2),(8,38,2),(8,39,2),(8,40,2),(8,41,2),(8,47,2),(8,48,2),(8,49,2),(8,50,2),(8,51,2),(8,61,2),(8,64,2),(8,4,2),(8,5,2),(8,6,2),(8,7,2),(8,8,2),(8,9,2),(8,10,2),(8,11,2),(8,12,2),(8,52,2),(8,63,2),(8,55,2),(8,56,2),(8,31,2),(8,32,2),(8,33,2),(8,34,2),(8,35,2),(8,36,2),(8,37,2),(8,58,2),(8,59,2),(8,60,2),(8,19,2),(8,20,2),(8,21,2),(8,22,2),(8,23,2),(8,24,2),(8,25,2),(8,26,2),(8,27,2),(8,28,2),(8,29,2),(8,62,2),(9,1,3),(9,38,3),(9,39,3),(9,40,3),(9,41,3),(9,47,3),(9,48,3),(9,49,3),(9,50,3),(9,51,3),(9,61,3),(9,64,3),(9,4,3),(9,5,3),(9,6,3),(9,7,3),(9,8,3),(9,9,3),(9,10,3),(9,11,3),(9,12,3),(9,52,3),(9,63,3),(9,55,3),(9,56,3),(9,31,3),(9,32,3),(9,33,3),(9,34,3),(9,35,3),(9,36,3),(9,37,3),(9,58,3),(9,59,3),(9,60,3),(9,19,3),(9,20,3),(9,21,3),(9,22,3),(9,23,3),(9,24,3),(9,25,3),(9,26,3),(9,27,3),(9,28,3),(9,29,3),(9,62,3),(10,1,4),(10,38,4),(10,39,4),(10,40,4),(10,41,4),(10,47,4),(10,48,4),(10,49,4),(10,50,4),(10,51,4),(10,61,4),(10,64,4),(10,4,4),(10,5,4),(10,6,4),(10,7,4),(10,8,4),(10,9,4),(10,10,4),(10,11,4),(10,12,4),(10,52,4),(10,63,4),(10,55,4),(10,56,4),(10,31,4),(10,32,4),(10,33,4),(10,34,4),(10,35,4),(10,36,4),(10,37,4),(10,58,4),(10,59,4),(10,60,4),(10,19,4),(10,20,4),(10,21,4),(10,22,4),(10,23,4),(10,24,4),(10,25,4),(10,26,4),(10,27,4),(10,28,4),(10,29,4),(10,62,4),(19,1,1),(19,38,1),(19,39,1),(19,40,1),(19,41,1),(19,47,1),(19,48,1),(19,49,1),(19,50,1),(19,51,1),(19,61,1),(19,64,1),(19,4,1),(19,5,1),(19,6,1),(19,7,1),(19,8,1),(19,9,1),(19,10,1),(19,11,1),(19,12,1),(19,52,1),(19,63,1),(19,55,1),(19,56,1),(19,31,1),(19,32,1),(19,33,1),(19,34,1),(19,35,1),(19,36,1),(19,37,1),(19,58,1),(19,59,1),(19,60,1),(19,19,1),(19,20,1),(19,21,1),(19,22,1),(19,23,1),(19,24,1),(19,25,1),(19,26,1),(19,27,1),(19,28,1),(19,29,1),(19,62,1),(1,4,1),(2,4,2),(30,1,1),(30,38,1),(30,39,1),(30,40,1),(30,41,1),(30,47,1),(30,48,1),(30,49,1),(30,50,1),(30,51,1),(30,61,1),(30,64,1),(30,4,1),(30,5,1),(30,6,1),(30,7,1),(30,8,1),(30,9,1),(30,10,1),(30,11,1),(30,12,1),(30,52,1),(30,63,1),(30,55,1),(30,56,1),(30,31,1),(30,32,1),(30,33,1),(30,34,1),(30,35,1),(30,36,1),(30,37,1),(30,58,1),(30,59,1),(30,60,1),(30,19,1),(30,20,1),(30,21,1),(30,22,1),(30,23,1),(30,24,1),(30,25,1),(30,26,1),(30,27,1),(30,28,1),(30,29,1),(30,62,1),(28,1,1),(28,38,1),(28,39,1),(28,40,1),(28,41,1),(28,47,1),(28,48,1),(28,49,1),(28,50,1),(28,51,1),(28,61,1),(28,64,1),(28,4,1),(28,5,1),(28,6,1),(28,7,1),(28,8,1),(28,9,1),(28,10,1),(28,11,1),(28,12,1),(28,52,1),(28,63,1),(28,55,1),(28,56,1),(28,31,1),(28,32,1),(28,33,1),(28,34,1),(28,35,1),(28,36,1),(28,37,1),(28,58,1),(28,59,1),(28,60,1),(28,19,1),(28,20,1),(28,21,1),(28,22,1),(28,23,1),(28,24,1),(28,25,1),(28,26,1),(28,27,1),(28,28,1),(28,29,1),(28,62,1),(29,1,1),(29,38,1),(29,39,1),(29,40,1),(29,41,1),(29,47,1),(29,48,1),(29,49,1),(29,50,1),(29,51,1),(29,61,1),(29,64,1),(29,4,1),(29,5,1),(29,6,1),(29,7,1),(29,8,1),(29,9,1),(29,10,1),(29,11,1),(29,12,1),(29,52,1),(29,63,1),(29,55,1),(29,56,1),(29,31,1),(29,32,1),(29,33,1),(29,34,1),(29,35,1),(29,36,1),(29,37,1),(29,58,1),(29,59,1),(29,60,1),(29,19,1),(29,20,1),(29,21,1),(29,22,1),(29,23,1),(29,24,1),(29,25,1),(29,26,1),(29,27,1),(29,28,1),(29,29,1),(29,62,1),(22,1,1),(22,38,1),(22,39,1),(22,40,1),(22,41,1),(22,47,1),(22,48,1),(22,49,1),(22,50,1),(22,51,1),(22,61,1),(22,64,1),(22,4,1),(22,5,1),(22,6,1),(22,7,1),(22,8,1),(22,9,1),(22,10,1),(22,11,1),(22,12,1),(22,52,1),(22,63,1),(22,55,1),(22,56,1),(22,31,1),(22,32,1),(22,33,1),(22,34,1),(22,35,1),(22,36,1),(22,37,1),(22,58,1),(22,59,1),(22,60,1),(22,19,1),(22,20,1),(22,21,1),(22,22,1),(22,23,1),(22,24,1),(22,25,1),(22,26,1),(22,27,1),(22,28,1),(22,29,1),(22,62,1),(23,1,2),(23,38,2),(23,39,2),(23,40,2),(23,41,2),(23,47,2),(23,48,2),(23,49,2),(23,50,2),(23,51,2),(23,61,2),(23,64,2),(23,4,2),(23,5,2),(23,6,2),(23,7,2),(23,8,2),(23,9,2),(23,10,2),(23,11,2),(23,12,2),(23,52,2),(23,63,2),(23,55,2),(23,56,2),(23,31,2),(23,32,2),(23,33,2),(23,34,2),(23,35,2),(23,36,2),(23,37,2),(23,58,2),(23,59,2),(23,60,2),(23,19,2),(23,20,2),(23,21,2),(23,22,2),(23,23,2),(23,24,2),(23,25,2),(23,26,2),(23,27,2),(23,28,2),(23,29,2),(23,62,2),(24,1,1),(24,38,1),(24,39,1),(24,40,1),(24,41,1),(24,47,1),(24,48,1),(24,49,1),(24,50,1),(24,51,1),(24,61,1),(24,64,1),(24,4,1),(24,5,1),(24,6,1),(24,7,1),(24,8,1),(24,9,1),(24,10,1),(24,11,1),(24,12,1),(24,52,1),(24,63,1),(24,55,1),(24,56,1),(24,31,1),(24,32,1),(24,33,1),(24,34,1),(24,35,1),(24,36,1),(24,37,1),(24,58,1),(24,59,1),(24,60,1),(24,19,1),(24,20,1),(24,21,1),(24,22,1),(24,23,1),(24,24,1),(24,25,1),(24,26,1),(24,27,1),(24,28,1),(24,29,1),(24,62,1),(25,1,2),(25,38,2),(25,39,2),(25,40,2),(25,41,2),(25,47,2),(25,48,2),(25,49,2),(25,50,2),(25,51,2),(25,61,2),(25,64,2),(25,4,2),(25,5,2),(25,6,2),(25,7,2),(25,8,2),(25,9,2),(25,10,2),(25,11,2),(25,12,2),(25,52,2),(25,63,2),(25,55,2),(25,56,2),(25,31,2),(25,32,2),(25,33,2),(25,34,2),(25,35,2),(25,36,2),(25,37,2),(25,58,2),(25,59,2),(25,60,2),(25,19,2),(25,20,2),(25,21,2),(25,22,2),(25,23,2),(25,24,2),(25,25,2),(25,26,2),(25,27,2),(25,28,2),(25,29,2),(25,62,2),(26,1,3),(26,38,3),(26,39,3),(26,40,3),(26,41,3),(26,47,3),(26,48,3),(26,49,3),(26,50,3),(26,51,3),(26,61,3),(26,64,3),(26,4,3),(26,5,3),(26,6,3),(26,7,3),(26,8,3),(26,9,3),(26,10,3),(26,11,3),(26,12,3),(26,52,3),(26,63,3),(26,55,3),(26,56,3),(26,31,3),(26,32,3),(26,33,3),(26,34,3),(26,35,3),(26,36,3),(26,37,3),(26,58,3),(26,59,3),(26,60,3),(26,19,3),(26,20,3),(26,21,3),(26,22,3),(26,23,3),(26,24,3),(26,25,3),(26,26,3),(26,27,3),(26,28,3),(26,29,3),(26,62,3),(27,1,4),(27,38,4),(27,39,4),(27,40,4),(27,41,4),(27,47,4),(27,48,4),(27,49,4),(27,50,4),(27,51,4),(27,61,4),(27,64,4),(27,4,4),(27,5,4),(27,6,4),(27,7,4),(27,8,4),(27,9,4),(27,10,4),(27,11,4),(27,12,4),(27,52,4),(27,63,4),(27,55,4),(27,56,4),(27,31,4),(27,32,4),(27,33,4),(27,34,4),(27,35,4),(27,36,4),(27,37,4),(27,58,4),(27,59,4),(27,60,4),(27,19,4),(27,20,4),(27,21,4),(27,22,4),(27,23,4),(27,24,4),(27,25,4),(27,26,4),(27,27,4),(27,28,4),(27,29,4),(27,62,4),(31,1,1),(31,38,1),(31,39,1),(31,40,1),(31,41,1),(31,47,1),(31,48,1),(31,49,1),(31,50,1),(31,51,1),(31,61,1),(31,64,1),(31,4,1),(31,5,1),(31,6,1),(31,7,1),(31,8,1),(31,9,1),(31,10,1),(31,11,1),(31,12,1),(31,52,1),(31,63,1),(31,55,1),(31,56,1),(31,31,1),(31,32,1),(31,33,1),(31,34,1),(31,35,1),(31,36,1),(31,37,1),(31,58,1),(31,59,1),(31,60,1),(31,19,1),(31,20,1),(31,21,1),(31,22,1),(31,23,1),(31,24,1),(31,25,1),(31,26,1),(31,27,1),(31,28,1),(31,29,1),(31,62,1),(32,1,1),(32,38,1),(32,39,1),(32,40,1),(32,41,1),(32,47,1),(32,48,1),(32,49,1),(32,50,1),(32,51,1),(32,61,1),(32,64,1),(32,4,1),(32,5,1),(32,6,1),(32,7,1),(32,8,1),(32,9,1),(32,10,1),(32,11,1),(32,12,1),(32,52,1),(32,63,1),(32,55,1),(32,56,1),(32,31,1),(32,32,1),(32,33,1),(32,34,1),(32,35,1),(32,36,1),(32,37,1),(32,58,1),(32,59,1),(32,60,1),(32,19,1),(32,20,1),(32,21,1),(32,22,1),(32,23,1),(32,24,1),(32,25,1),(32,26,1),(32,27,1),(32,28,1),(32,29,1),(32,62,1),(33,1,1),(33,38,1),(33,39,1),(33,40,1),(33,41,1),(33,47,1),(33,48,1),(33,49,1),(33,50,1),(33,51,1),(33,61,1),(33,64,1),(33,4,1),(33,5,1),(33,6,1),(33,7,1),(33,8,1),(33,9,1),(33,10,1),(33,11,1),(33,12,1),(33,52,1),(33,63,1),(33,55,1),(33,56,1),(33,31,1),(33,32,1),(33,33,1),(33,34,1),(33,35,1),(33,36,1),(33,37,1),(33,58,1),(33,59,1),(33,60,1),(33,19,1),(33,20,1),(33,21,1),(33,22,1),(33,23,1),(33,24,1),(33,25,1),(33,26,1),(33,27,1),(33,28,1),(33,29,1),(33,62,1),(34,1,1),(34,38,1),(34,39,1),(34,40,1),(34,41,1),(34,47,1),(34,48,1),(34,49,1),(34,50,1),(34,51,1),(34,61,1),(34,64,1),(34,4,1),(34,5,1),(34,6,1),(34,7,1),(34,8,1),(34,9,1),(34,10,1),(34,11,1),(34,12,1),(34,52,1),(34,63,1),(34,55,1),(34,56,1),(34,31,1),(34,32,1),(34,33,1),(34,34,1),(34,35,1),(34,36,1),(34,37,1),(34,58,1),(34,59,1),(34,60,1),(34,19,1),(34,20,1),(34,21,1),(34,22,1),(34,23,1),(34,24,1),(34,25,1),(34,26,1),(34,27,1),(34,28,1),(34,29,1),(34,62,1),(35,1,2),(35,38,2),(35,39,2),(35,40,2),(35,41,2),(35,47,2),(35,48,2),(35,49,2),(35,50,2),(35,51,2),(35,61,2),(35,64,2),(35,4,2),(35,5,2),(35,6,2),(35,7,2),(35,8,2),(35,9,2),(35,10,2),(35,11,2),(35,12,2),(35,52,2),(35,63,2),(35,55,2),(35,56,2),(35,31,2),(35,32,2),(35,33,2),(35,34,2),(35,35,2),(35,36,2),(35,37,2),(35,58,2),(35,59,2),(35,60,2),(35,19,2),(35,20,2),(35,21,2),(35,22,2),(35,23,2),(35,24,2),(35,25,2),(35,26,2),(35,27,2),(35,28,2),(35,29,2),(35,62,2),(36,4,1),(36,5,1),(36,6,1),(36,7,1),(36,8,1),(36,9,1),(36,10,1),(36,11,1),(36,12,1),(37,19,1),(37,20,1),(37,21,1),(37,22,1),(37,23,1),(37,24,1),(37,25,1),(37,26,1),(37,27,1),(37,28,1),(37,31,1),(37,32,1),(37,33,1),(37,34,1),(37,35,1),(37,36,1),(37,37,1),(38,1,1),(38,38,1),(38,39,1),(38,40,1),(38,41,1),(38,47,1),(38,48,1),(38,49,1),(38,50,1),(38,51,1),(38,61,1),(38,64,1),(38,4,2),(38,5,2),(38,6,2),(38,7,2),(38,8,2),(38,9,2),(38,10,2),(38,11,2),(38,12,2),(38,52,1),(38,63,1),(38,55,1),(38,56,1),(38,31,2),(38,32,2),(38,33,2),(38,34,2),(38,35,2),(38,36,2),(38,37,2),(38,58,1),(38,59,1),(38,60,1),(38,19,2),(38,20,2),(38,21,2),(38,22,2),(38,23,2),(38,24,2),(38,25,2),(38,26,2),(38,27,2),(38,28,2),(38,29,1),(38,62,1),(39,1,2),(39,38,2),(39,39,2),(39,40,2),(39,41,2),(39,47,2),(39,48,2),(39,49,2),(39,50,2),(39,51,2),(39,61,2),(39,64,2),(39,4,3),(39,5,3),(39,6,3),(39,7,3),(39,8,3),(39,9,3),(39,10,3),(39,11,3),(39,12,3),(39,52,2),(39,63,2),(39,55,2),(39,56,2),(39,31,3),(39,32,3),(39,33,3),(39,34,3),(39,35,3),(39,36,3),(39,37,3),(39,58,2),(39,59,2),(39,60,2),(39,19,3),(39,20,3),(39,21,3),(39,22,3),(39,23,3),(39,24,3),(39,25,3),(39,26,3),(39,27,3),(39,28,3),(39,29,2),(39,62,2),(40,1,1),(40,38,1),(40,39,1),(40,40,1),(40,41,1),(40,47,1),(40,48,1),(40,49,1),(40,50,1),(40,51,1),(40,61,1),(40,64,1),(40,4,1),(40,5,1),(40,6,1),(40,7,1),(40,8,1),(40,9,1),(40,10,1),(40,11,1),(40,12,1),(40,52,1),(40,63,1),(40,55,1),(40,56,1),(40,31,1),(40,32,1),(40,33,1),(40,34,1),(40,35,1),(40,36,1),(40,37,1),(40,58,1),(40,59,1),(40,60,1),(40,19,1),(40,20,1),(40,21,1),(40,22,1),(40,23,1),(40,24,1),(40,25,1),(40,26,1),(40,27,1),(40,28,1),(40,29,1),(40,62,1),(41,1,1),(41,38,1),(41,39,1),(41,40,1),(41,41,1),(41,47,1),(41,48,1),(41,49,1),(41,50,1),(41,51,1),(41,61,1),(41,64,1),(41,4,1),(41,5,1),(41,6,1),(41,7,1),(41,8,1),(41,9,1),(41,10,1),(41,11,1),(41,12,1),(41,52,1),(41,63,1),(41,55,1),(41,56,1),(41,31,1),(41,32,1),(41,33,1),(41,34,1),(41,35,1),(41,36,1),(41,37,1),(41,58,1),(41,59,1),(41,60,1),(41,19,1),(41,20,1),(41,21,1),(41,22,1),(41,23,1),(41,24,1),(41,25,1),(41,26,1),(41,27,1),(41,28,1),(41,29,1),(41,62,1),(42,1,1),(42,38,1),(42,39,1),(42,40,1),(42,41,1),(42,47,1),(42,48,1),(42,49,1),(42,50,1),(42,51,1),(42,61,1),(42,64,1),(42,4,1),(42,5,1),(42,6,1),(42,7,1),(42,8,1),(42,9,1),(42,10,1),(42,11,1),(42,12,1),(42,52,1),(42,63,1),(42,55,1),(42,56,1),(42,31,1),(42,32,1),(42,33,1),(42,34,1),(42,35,1),(42,36,1),(42,37,1),(42,58,1),(42,59,1),(42,60,1),(42,19,1),(42,20,1),(42,21,1),(42,22,1),(42,23,1),(42,24,1),(42,25,1),(42,26,1),(42,27,1),(42,28,1),(42,29,1),(42,62,1),(43,1,1),(43,38,1),(43,39,1),(43,40,1),(43,41,1),(43,47,1),(43,48,1),(43,49,1),(43,50,1),(43,51,1),(43,61,1),(43,64,1),(43,4,1),(43,5,1),(43,6,1),(43,7,1),(43,8,1),(43,9,1),(43,10,1),(43,11,1),(43,12,1),(43,52,1),(43,63,1),(43,55,1),(43,56,1),(43,31,1),(43,32,1),(43,33,1),(43,34,1),(43,35,1),(43,36,1),(43,37,1),(43,58,1),(43,59,1),(43,60,1),(43,19,1),(43,20,1),(43,21,1),(43,22,1),(43,23,1),(43,24,1),(43,25,1),(43,26,1),(43,27,1),(43,28,1),(43,29,1),(43,62,1),(44,1,2),(44,38,2),(44,39,2),(44,40,2),(44,41,2),(44,47,2),(44,48,2),(44,49,2),(44,50,2),(44,51,2),(44,61,2),(44,64,2),(44,4,2),(44,5,2),(44,6,2),(44,7,2),(44,8,2),(44,9,2),(44,10,2),(44,11,2),(44,12,2),(44,52,2),(44,63,2),(44,55,2),(44,56,2),(44,31,2),(44,32,2),(44,33,2),(44,34,2),(44,35,2),(44,36,2),(44,37,2),(44,58,2),(44,59,2),(44,60,2),(44,19,2),(44,20,2),(44,21,2),(44,22,2),(44,23,2),(44,24,2),(44,25,2),(44,26,2),(44,27,2),(44,28,2),(44,29,2),(44,62,2),(45,1,1),(45,38,1),(45,39,1),(45,40,1),(45,41,1),(45,47,1),(45,48,1),(45,49,1),(45,50,1),(45,51,1),(45,61,1),(45,64,1),(45,4,1),(45,5,1),(45,6,1),(45,7,1),(45,8,1),(45,9,1),(45,10,1),(45,11,1),(45,12,1),(45,52,1),(45,63,1),(45,55,1),(45,56,1),(45,31,1),(45,32,1),(45,33,1),(45,34,1),(45,35,1),(45,36,1),(45,37,1),(45,58,1),(45,59,1),(45,60,1),(45,19,1),(45,20,1),(45,21,1),(45,22,1),(45,23,1),(45,24,1),(45,25,1),(45,26,1),(45,27,1),(45,28,1),(45,29,1),(45,62,1),(46,1,2),(46,38,2),(46,39,2),(46,40,2),(46,41,2),(46,47,2),(46,48,2),(46,49,2),(46,50,2),(46,51,2),(46,61,2),(46,64,2),(46,4,2),(46,5,2),(46,6,2),(46,7,2),(46,8,2),(46,9,2),(46,10,2),(46,11,2),(46,12,2),(46,52,2),(46,63,2),(46,55,2),(46,56,2),(46,31,2),(46,32,2),(46,33,2),(46,34,2),(46,35,2),(46,36,2),(46,37,2),(46,58,2),(46,59,2),(46,60,2),(46,19,2),(46,20,2),(46,21,2),(46,22,2),(46,23,2),(46,24,2),(46,25,2),(46,26,2),(46,27,2),(46,28,2),(46,29,2),(46,62,2),(47,1,3),(47,38,3),(47,39,3),(47,40,3),(47,41,3),(47,47,3),(47,48,3),(47,49,3),(47,50,3),(47,51,3),(47,61,3),(47,64,3),(47,4,3),(47,5,3),(47,6,3),(47,7,3),(47,8,3),(47,9,3),(47,10,3),(47,11,3),(47,12,3),(47,52,3),(47,63,3),(47,55,3),(47,56,3),(47,31,3),(47,32,3),(47,33,3),(47,34,3),(47,35,3),(47,36,3),(47,37,3),(47,58,3),(47,59,3),(47,60,3),(47,19,3),(47,20,3),(47,21,3),(47,22,3),(47,23,3),(47,24,3),(47,25,3),(47,26,3),(47,27,3),(47,28,3),(47,29,3),(47,62,3),(48,1,4),(48,38,4),(48,39,4),(48,40,4),(48,41,4),(48,47,4),(48,48,4),(48,49,4),(48,50,4),(48,51,4),(48,61,4),(48,64,4),(48,4,4),(48,5,4),(48,6,4),(48,7,4),(48,8,4),(48,9,4),(48,10,4),(48,11,4),(48,12,4),(48,52,4),(48,63,4),(48,55,4),(48,56,4),(48,31,4),(48,32,4),(48,33,4),(48,34,4),(48,35,4),(48,36,4),(48,37,4),(48,58,4),(48,59,4),(48,60,4),(48,19,4),(48,20,4),(48,21,4),(48,22,4),(48,23,4),(48,24,4),(48,25,4),(48,26,4),(48,27,4),(48,28,4),(48,29,4),(48,62,4),(49,1,1),(49,38,1),(49,39,1),(49,40,1),(49,41,1),(49,47,1),(49,48,1),(49,49,1),(49,50,1),(49,51,1),(49,61,1),(49,64,1),(49,4,1),(49,5,1),(49,6,1),(49,7,1),(49,8,1),(49,9,1),(49,10,1),(49,11,1),(49,12,1),(49,52,1),(49,63,1),(49,55,1),(49,56,1),(49,31,1),(49,32,1),(49,33,1),(49,34,1),(49,35,1),(49,36,1),(49,37,1),(49,58,1),(49,59,1),(49,60,1),(49,19,1),(49,20,1),(49,21,1),(49,22,1),(49,23,1),(49,24,1),(49,25,1),(49,26,1),(49,27,1),(49,28,1),(49,29,1),(49,62,1),(50,4,1),(51,4,2),(52,1,1),(52,38,1),(52,39,1),(52,40,1),(52,41,1),(52,47,1),(52,48,1),(52,49,1),(52,50,1),(52,51,1),(52,61,1),(52,64,1),(52,4,1),(52,5,1),(52,6,1),(52,7,1),(52,8,1),(52,9,1),(52,10,1),(52,11,1),(52,12,1),(52,52,1),(52,63,1),(52,55,1),(52,56,1),(52,31,1),(52,32,1),(52,33,1),(52,34,1),(52,35,1),(52,36,1),(52,37,1),(52,58,1),(52,59,1),(52,60,1),(52,19,1),(52,20,1),(52,21,1),(52,22,1),(52,23,1),(52,24,1),(52,25,1),(52,26,1),(52,27,1),(52,28,1),(52,29,1),(52,62,1),(53,1,1),(53,38,1),(53,39,1),(53,40,1),(53,41,1),(53,47,1),(53,48,1),(53,49,1),(53,50,1),(53,51,1),(53,61,1),(53,64,1),(53,4,1),(53,5,1),(53,6,1),(53,7,1),(53,8,1),(53,9,1),(53,10,1),(53,11,1),(53,12,1),(53,52,1),(53,63,1),(53,55,1),(53,56,1),(53,31,1),(53,32,1),(53,33,1),(53,34,1),(53,35,1),(53,36,1),(53,37,1),(53,58,1),(53,59,1),(53,60,1),(53,19,1),(53,20,1),(53,21,1),(53,22,1),(53,23,1),(53,24,1),(53,25,1),(53,26,1),(53,27,1),(53,28,1),(53,29,1),(53,62,1),(54,1,1),(54,38,1),(54,39,1),(54,40,1),(54,41,1),(54,47,1),(54,48,1),(54,49,1),(54,50,1),(54,51,1),(54,61,1),(54,64,1),(54,4,1),(54,5,1),(54,6,1),(54,7,1),(54,8,1),(54,9,1),(54,10,1),(54,11,1),(54,12,1),(54,52,1),(54,63,1),(54,55,1),(54,56,1),(54,31,1),(54,32,1),(54,33,1),(54,34,1),(54,35,1),(54,36,1),(54,37,1),(54,58,1),(54,59,1),(54,60,1),(54,19,1),(54,20,1),(54,21,1),(54,22,1),(54,23,1),(54,24,1),(54,25,1),(54,26,1),(54,27,1),(54,28,1),(54,29,1),(54,62,1),(55,1,1),(55,38,1),(55,39,1),(55,40,1),(55,41,1),(55,47,1),(55,48,1),(55,49,1),(55,50,1),(55,51,1),(55,61,1),(55,64,1),(55,4,1),(55,5,1),(55,6,1),(55,7,1),(55,8,1),(55,9,1),(55,10,1),(55,11,1),(55,12,1),(55,52,1),(55,63,1),(55,55,1),(55,56,1),(55,31,1),(55,32,1),(55,33,1),(55,34,1),(55,35,1),(55,36,1),(55,37,1),(55,58,1),(55,59,1),(55,60,1),(55,19,1),(55,20,1),(55,21,1),(55,22,1),(55,23,1),(55,24,1),(55,25,1),(55,26,1),(55,27,1),(55,28,1),(55,29,1),(55,62,1),(56,1,2),(56,38,2),(56,39,2),(56,40,2),(56,41,2),(56,47,2),(56,48,2),(56,49,2),(56,50,2),(56,51,2),(56,61,2),(56,64,2),(56,4,2),(56,5,2),(56,6,2),(56,7,2),(56,8,2),(56,9,2),(56,10,2),(56,11,2),(56,12,2),(56,52,2),(56,63,2),(56,55,2),(56,56,2),(56,31,2),(56,32,2),(56,33,2),(56,34,2),(56,35,2),(56,36,2),(56,37,2),(56,58,2),(56,59,2),(56,60,2),(56,19,2),(56,20,2),(56,21,2),(56,22,2),(56,23,2),(56,24,2),(56,25,2),(56,26,2),(56,27,2),(56,28,2),(56,29,2),(56,62,2),(57,4,5),(57,5,5),(57,6,5),(57,7,5),(57,8,5),(57,9,5),(57,10,5),(57,11,5),(57,12,5),(58,19,2),(58,20,2),(58,21,2),(58,22,2),(58,23,2),(58,24,2),(58,25,2),(58,26,2),(58,27,2),(58,28,2),(58,31,2),(58,32,2),(58,33,2),(58,34,2),(58,35,2),(58,36,2),(58,37,2),(60,1,3),(60,38,3),(60,39,3),(60,40,3),(60,41,3),(60,47,3),(60,48,3),(60,49,3),(60,50,3),(60,51,3),(60,61,3),(60,64,3),(60,4,7),(60,5,6),(60,6,6),(60,7,6),(60,8,6),(60,9,6),(60,10,6),(60,11,6),(60,12,6),(60,52,3),(60,63,3),(60,55,3),(60,56,3),(60,31,4),(60,32,4),(60,33,4),(60,34,4),(60,35,4),(60,36,4),(60,37,4),(60,58,3),(60,59,3),(60,60,3),(60,19,4),(60,20,4),(60,21,4),(60,22,4),(60,23,4),(60,24,4),(60,25,4),(60,26,4),(60,27,4),(60,28,4),(60,29,3),(60,62,3),(61,1,1),(61,38,1),(61,39,1),(61,40,1),(61,41,1),(61,47,1),(61,48,1),(61,49,1),(61,50,1),(61,51,1),(61,61,1),(61,64,1),(61,4,1),(61,5,1),(61,6,1),(61,7,1),(61,8,1),(61,9,1),(61,10,1),(61,11,1),(61,12,1),(61,52,1),(61,63,1),(61,55,1),(61,56,1),(61,31,1),(61,32,1),(61,33,1),(61,34,1),(61,35,1),(61,36,1),(61,37,1),(61,58,1),(61,59,1),(61,60,1),(61,19,1),(61,20,1),(61,21,1),(61,22,1),(61,23,1),(61,24,1),(61,25,1),(61,26,1),(61,27,1),(61,28,1),(61,29,1),(61,62,1),(63,1,1),(63,38,1),(63,39,1),(63,40,1),(63,41,1),(63,47,1),(63,48,1),(63,49,1),(63,50,1),(63,51,1),(63,61,1),(63,64,1),(63,4,1),(63,5,1),(63,6,1),(63,7,1),(63,8,1),(63,9,1),(63,10,1),(63,11,1),(63,12,1),(63,52,1),(63,63,1),(63,55,1),(63,56,1),(63,31,1),(63,32,1),(63,33,1),(63,34,1),(63,35,1),(63,36,1),(63,37,1),(63,58,1),(63,59,1),(63,60,1),(63,19,1),(63,20,1),(63,21,1),(63,22,1),(63,23,1),(63,24,1),(63,25,1),(63,26,1),(63,27,1),(63,28,1),(63,29,1),(63,62,1),(64,1,1),(64,38,1),(64,39,1),(64,40,1),(64,41,1),(64,47,1),(64,48,1),(64,49,1),(64,50,1),(64,51,1),(64,61,1),(64,64,1),(64,4,1),(64,5,1),(64,6,1),(64,7,1),(64,8,1),(64,9,1),(64,10,1),(64,11,1),(64,12,1),(64,52,1),(64,63,1),(64,55,1),(64,56,1),(64,31,1),(64,32,1),(64,33,1),(64,34,1),(64,35,1),(64,36,1),(64,37,1),(64,58,1),(64,59,1),(64,60,1),(64,19,1),(64,20,1),(64,21,1),(64,22,1),(64,23,1),(64,24,1),(64,25,1),(64,26,1),(64,27,1),(64,28,1),(64,29,1),(64,62,1),(65,1,2),(65,38,2),(65,39,2),(65,40,2),(65,41,2),(65,47,2),(65,48,2),(65,49,2),(65,50,2),(65,51,2),(65,61,2),(65,64,2),(65,4,2),(65,5,2),(65,6,2),(65,7,2),(65,8,2),(65,9,2),(65,10,2),(65,11,2),(65,12,2),(65,52,2),(65,63,2),(65,55,2),(65,56,2),(65,31,2),(65,32,2),(65,33,2),(65,34,2),(65,35,2),(65,36,2),(65,37,2),(65,58,2),(65,59,2),(65,60,2),(65,19,2),(65,20,2),(65,21,2),(65,22,2),(65,23,2),(65,24,2),(65,25,2),(65,26,2),(65,27,2),(65,28,2),(65,29,2),(65,62,2),(68,1,1),(68,38,1),(68,39,1),(68,40,1),(68,41,1),(68,47,1),(68,48,1),(68,49,1),(68,50,1),(68,51,1),(68,61,1),(68,64,1),(68,4,1),(68,5,1),(68,6,1),(68,7,1),(68,8,1),(68,9,1),(68,10,1),(68,11,1),(68,12,1),(68,52,1),(68,63,1),(68,55,1),(68,56,1),(68,31,1),(68,32,1),(68,33,1),(68,34,1),(68,35,1),(68,36,1),(68,37,1),(68,58,1),(68,59,1),(68,60,1),(68,19,1),(68,20,1),(68,21,1),(68,22,1),(68,23,1),(68,24,1),(68,25,1),(68,26,1),(68,27,1),(68,28,1),(68,29,1),(68,62,1),(139,47,1),(139,27,1),(139,26,1),(139,25,1),(139,24,1),(139,23,1),(139,22,1),(139,21,1),(139,20,1),(139,19,1),(139,6,1),(139,1,1),(69,4,2),(69,5,2),(69,6,2),(69,7,2),(69,8,2),(69,9,2),(69,10,2),(69,11,2),(69,12,2),(139,12,1),(139,4,1),(139,11,1),(139,10,1),(139,34,1),(139,33,1),(139,32,1),(139,31,1),(139,61,1),(139,29,1),(139,28,1),(139,9,1),(139,8,1),(139,7,1),(139,52,1),(139,64,1),(139,63,1),(139,41,1),(139,40,1),(139,39,1),(139,38,1),(139,62,1),(139,37,1),(139,36,1),(139,35,1),(139,5,1),(70,1,1),(70,38,1),(70,39,1),(70,40,1),(70,41,1),(70,47,1),(70,48,1),(70,49,1),(70,50,1),(70,51,1),(70,61,1),(70,64,1),(70,4,1),(70,5,1),(70,6,1),(70,7,1),(70,8,1),(70,9,1),(70,10,1),(70,11,1),(70,12,1),(70,52,1),(70,63,1),(70,55,1),(70,56,1),(70,31,1),(70,32,1),(70,33,1),(70,34,1),(70,35,1),(70,36,1),(70,37,1),(70,58,1),(70,59,1),(70,60,1),(70,19,1),(70,20,1),(70,21,1),(70,22,1),(70,23,1),(70,24,1),(70,25,1),(70,26,1),(70,27,1),(70,28,1),(70,29,1),(70,62,1),(71,4,1),(72,4,2),(73,1,1),(73,38,1),(73,39,1),(73,40,1),(73,41,1),(73,47,1),(73,48,1),(73,49,1),(73,50,1),(73,51,1),(73,61,1),(73,64,1),(73,4,1),(73,5,1),(73,6,1),(73,7,1),(73,8,1),(73,9,1),(73,10,1),(73,11,1),(73,12,1),(73,52,1),(73,63,1),(73,55,1),(73,56,1),(73,31,1),(73,32,1),(73,33,1),(73,34,1),(73,35,1),(73,36,1),(73,37,1),(73,58,1),(73,59,1),(73,60,1),(73,19,1),(73,20,1),(73,21,1),(73,22,1),(73,23,1),(73,24,1),(73,25,1),(73,26,1),(73,27,1),(73,28,1),(73,29,1),(73,62,1),(74,1,1),(74,38,1),(74,39,1),(74,40,1),(74,41,1),(74,47,1),(74,48,1),(74,49,1),(74,50,1),(74,51,1),(74,61,1),(74,64,1),(74,4,1),(74,5,1),(74,6,1),(74,7,1),(74,8,1),(74,9,1),(74,10,1),(74,11,1),(74,12,1),(74,52,1),(74,63,1),(74,55,1),(74,56,1),(74,31,1),(74,32,1),(74,33,1),(74,34,1),(74,35,1),(74,36,1),(74,37,1),(74,58,1),(74,59,1),(74,60,1),(74,19,1),(74,20,1),(74,21,1),(74,22,1),(74,23,1),(74,24,1),(74,25,1),(74,26,1),(74,27,1),(74,28,1),(74,29,1),(74,62,1),(75,1,1),(75,38,1),(75,39,1),(75,40,1),(75,41,1),(75,47,1),(75,48,1),(75,49,1),(75,50,1),(75,51,1),(75,61,1),(75,64,1),(75,4,1),(75,5,1),(75,6,1),(75,7,1),(75,8,1),(75,9,1),(75,10,1),(75,11,1),(75,12,1),(75,52,1),(75,63,1),(75,55,1),(75,56,1),(75,31,1),(75,32,1),(75,33,1),(75,34,1),(75,35,1),(75,36,1),(75,37,1),(75,58,1),(75,59,1),(75,60,1),(75,19,1),(75,20,1),(75,21,1),(75,22,1),(75,23,1),(75,24,1),(75,25,1),(75,26,1),(75,27,1),(75,28,1),(75,29,1),(75,62,1),(76,1,1),(76,38,1),(76,39,1),(76,40,1),(76,41,1),(76,47,1),(76,48,1),(76,49,1),(76,50,1),(76,51,1),(76,61,1),(76,64,1),(76,4,1),(76,5,1),(76,6,1),(76,7,1),(76,8,1),(76,9,1),(76,10,1),(76,11,1),(76,12,1),(76,52,1),(76,63,1),(76,55,1),(76,56,1),(76,31,1),(76,32,1),(76,33,1),(76,34,1),(76,35,1),(76,36,1),(76,37,1),(76,58,1),(76,59,1),(76,60,1),(76,19,1),(76,20,1),(76,21,1),(76,22,1),(76,23,1),(76,24,1),(76,25,1),(76,26,1),(76,27,1),(76,28,1),(76,29,1),(76,62,1),(77,1,2),(77,38,2),(77,39,2),(77,40,2),(77,41,2),(77,47,2),(77,48,2),(77,49,2),(77,50,2),(77,51,2),(77,61,2),(77,64,2),(77,4,2),(77,5,2),(77,6,2),(77,7,2),(77,8,2),(77,9,2),(77,10,2),(77,11,2),(77,12,2),(77,52,2),(77,63,2),(77,55,2),(77,56,2),(77,31,2),(77,32,2),(77,33,2),(77,34,2),(77,35,2),(77,36,2),(77,37,2),(77,58,2),(77,59,2),(77,60,2),(77,19,2),(77,20,2),(77,21,2),(77,22,2),(77,23,2),(77,24,2),(77,25,2),(77,26,2),(77,27,2),(77,28,2),(77,29,2),(77,62,2),(78,4,1),(78,5,1),(78,6,1),(78,7,1),(78,8,1),(78,9,1),(78,10,1),(78,11,1),(78,12,1),(79,19,1),(79,20,1),(79,21,1),(79,22,1),(79,23,1),(79,24,1),(79,25,1),(79,26,1),(79,27,1),(79,28,1),(79,31,1),(79,32,1),(79,33,1),(79,34,1),(79,35,1),(79,36,1),(79,37,1),(80,1,1),(80,38,1),(80,39,1),(80,40,1),(80,41,1),(80,47,1),(80,48,1),(80,49,1),(80,50,1),(80,51,1),(80,61,1),(80,64,1),(80,4,2),(80,5,2),(80,6,2),(80,7,2),(80,8,2),(80,9,2),(80,10,2),(80,11,2),(80,12,2),(80,52,1),(80,63,1),(80,55,1),(80,56,1),(80,31,2),(80,32,2),(80,33,2),(80,34,2),(80,35,2),(80,36,2),(80,37,2),(80,58,1),(80,59,1),(80,60,1),(80,19,2),(80,20,2),(80,21,2),(80,22,2),(80,23,2),(80,24,2),(80,25,2),(80,26,2),(80,27,2),(80,28,2),(80,29,1),(80,62,1),(81,1,2),(81,38,2),(81,39,2),(81,40,2),(81,41,2),(81,47,2),(81,48,2),(81,49,2),(81,50,2),(81,51,2),(81,61,2),(81,64,2),(81,4,3),(81,5,3),(81,6,3),(81,7,3),(81,8,3),(81,9,3),(81,10,3),(81,11,3),(81,12,3),(81,52,2),(81,63,2),(81,55,2),(81,56,2),(81,31,3),(81,32,3),(81,33,3),(81,34,3),(81,35,3),(81,36,3),(81,37,3),(81,58,2),(81,59,2),(81,60,2),(81,19,3),(81,20,3),(81,21,3),(81,22,3),(81,23,3),(81,24,3),(81,25,3),(81,26,3),(81,27,3),(81,28,3),(81,29,2),(81,62,2),(82,1,1),(82,38,1),(82,39,1),(82,40,1),(82,41,1),(82,47,1),(82,48,1),(82,49,1),(82,50,1),(82,51,1),(82,61,1),(82,64,1),(82,4,1),(82,5,1),(82,6,1),(82,7,1),(82,8,1),(82,9,1),(82,10,1),(82,11,1),(82,12,1),(82,52,1),(82,63,1),(82,55,1),(82,56,1),(82,31,1),(82,32,1),(82,33,1),(82,34,1),(82,35,1),(82,36,1),(82,37,1),(82,58,1),(82,59,1),(82,60,1),(82,19,1),(82,20,1),(82,21,1),(82,22,1),(82,23,1),(82,24,1),(82,25,1),(82,26,1),(82,27,1),(82,28,1),(82,29,1),(82,62,1),(83,1,1),(83,38,1),(83,39,1),(83,40,1),(83,41,1),(83,47,1),(83,48,1),(83,49,1),(83,50,1),(83,51,1),(83,61,1),(83,64,1),(83,4,1),(83,5,1),(83,6,1),(83,7,1),(83,8,1),(83,9,1),(83,10,1),(83,11,1),(83,12,1),(83,52,1),(83,63,1),(83,55,1),(83,56,1),(83,31,1),(83,32,1),(83,33,1),(83,34,1),(83,35,1),(83,36,1),(83,37,1),(83,58,1),(83,59,1),(83,60,1),(83,19,1),(83,20,1),(83,21,1),(83,22,1),(83,23,1),(83,24,1),(83,25,1),(83,26,1),(83,27,1),(83,28,1),(83,29,1),(83,62,1),(84,1,1),(84,38,1),(84,39,1),(84,40,1),(84,41,1),(84,47,1),(84,48,1),(84,49,1),(84,50,1),(84,51,1),(84,61,1),(84,64,1),(84,4,1),(84,5,1),(84,6,1),(84,7,1),(84,8,1),(84,9,1),(84,10,1),(84,11,1),(84,12,1),(84,52,1),(84,63,1),(84,55,1),(84,56,1),(84,31,1),(84,32,1),(84,33,1),(84,34,1),(84,35,1),(84,36,1),(84,37,1),(84,58,1),(84,59,1),(84,60,1),(84,19,1),(84,20,1),(84,21,1),(84,22,1),(84,23,1),(84,24,1),(84,25,1),(84,26,1),(84,27,1),(84,28,1),(84,29,1),(84,62,1),(85,1,1),(85,38,1),(85,39,1),(85,40,1),(85,41,1),(85,47,1),(85,48,1),(85,49,1),(85,50,1),(85,51,1),(85,61,1),(85,64,1),(85,4,1),(85,5,1),(85,6,1),(85,7,1),(85,8,1),(85,9,1),(85,10,1),(85,11,1),(85,12,1),(85,52,1),(85,63,1),(85,55,1),(85,56,1),(85,31,1),(85,32,1),(85,33,1),(85,34,1),(85,35,1),(85,36,1),(85,37,1),(85,58,1),(85,59,1),(85,60,1),(85,19,1),(85,20,1),(85,21,1),(85,22,1),(85,23,1),(85,24,1),(85,25,1),(85,26,1),(85,27,1),(85,28,1),(85,29,1),(85,62,1),(86,1,2),(86,38,2),(86,39,2),(86,40,2),(86,41,2),(86,47,2),(86,48,2),(86,49,2),(86,50,2),(86,51,2),(86,61,2),(86,64,2),(86,4,2),(86,5,2),(86,6,2),(86,7,2),(86,8,2),(86,9,2),(86,10,2),(86,11,2),(86,12,2),(86,52,2),(86,63,2),(86,55,2),(86,56,2),(86,31,2),(86,32,2),(86,33,2),(86,34,2),(86,35,2),(86,36,2),(86,37,2),(86,58,2),(86,59,2),(86,60,2),(86,19,2),(86,20,2),(86,21,2),(86,22,2),(86,23,2),(86,24,2),(86,25,2),(86,26,2),(86,27,2),(86,28,2),(86,29,2),(86,62,2),(87,1,1),(87,38,1),(87,39,1),(87,40,1),(87,41,1),(87,47,1),(87,48,1),(87,49,1),(87,50,1),(87,51,1),(87,61,1),(87,64,1),(87,4,1),(87,5,1),(87,6,1),(87,7,1),(87,8,1),(87,9,1),(87,10,1),(87,11,1),(87,12,1),(87,52,1),(87,63,1),(87,55,1),(87,56,1),(87,31,1),(87,32,1),(87,33,1),(87,34,1),(87,35,1),(87,36,1),(87,37,1),(87,58,1),(87,59,1),(87,60,1),(87,19,1),(87,20,1),(87,21,1),(87,22,1),(87,23,1),(87,24,1),(87,25,1),(87,26,1),(87,27,1),(87,28,1),(87,29,1),(87,62,1),(88,1,2),(88,38,2),(88,39,2),(88,40,2),(88,41,2),(88,47,2),(88,48,2),(88,49,2),(88,50,2),(88,51,2),(88,61,2),(88,64,2),(88,4,2),(88,5,2),(88,6,2),(88,7,2),(88,8,2),(88,9,2),(88,10,2),(88,11,2),(88,12,2),(88,52,2),(88,63,2),(88,55,2),(88,56,2),(88,31,2),(88,32,2),(88,33,2),(88,34,2),(88,35,2),(88,36,2),(88,37,2),(88,58,2),(88,59,2),(88,60,2),(88,19,2),(88,20,2),(88,21,2),(88,22,2),(88,23,2),(88,24,2),(88,25,2),(88,26,2),(88,27,2),(88,28,2),(88,29,2),(88,62,2),(89,1,3),(89,38,3),(89,39,3),(89,40,3),(89,41,3),(89,47,3),(89,48,3),(89,49,3),(89,50,3),(89,51,3),(89,61,3),(89,64,3),(89,4,3),(89,5,3),(89,6,3),(89,7,3),(89,8,3),(89,9,3),(89,10,3),(89,11,3),(89,12,3),(89,52,3),(89,63,3),(89,55,3),(89,56,3),(89,31,3),(89,32,3),(89,33,3),(89,34,3),(89,35,3),(89,36,3),(89,37,3),(89,58,3),(89,59,3),(89,60,3),(89,19,3),(89,20,3),(89,21,3),(89,22,3),(89,23,3),(89,24,3),(89,25,3),(89,26,3),(89,27,3),(89,28,3),(89,29,3),(89,62,3),(90,1,4),(90,38,4),(90,39,4),(90,40,4),(90,41,4),(90,47,4),(90,48,4),(90,49,4),(90,50,4),(90,51,4),(90,61,4),(90,64,4),(90,4,4),(90,5,4),(90,6,4),(90,7,4),(90,8,4),(90,9,4),(90,10,4),(90,11,4),(90,12,4),(90,52,4),(90,63,4),(90,55,4),(90,56,4),(90,31,4),(90,32,4),(90,33,4),(90,34,4),(90,35,4),(90,36,4),(90,37,4),(90,58,4),(90,59,4),(90,60,4),(90,19,4),(90,20,4),(90,21,4),(90,22,4),(90,23,4),(90,24,4),(90,25,4),(90,26,4),(90,27,4),(90,28,4),(90,29,4),(90,62,4),(91,1,1),(91,38,1),(91,39,1),(91,40,1),(91,41,1),(91,47,1),(91,48,1),(91,49,1),(91,50,1),(91,51,1),(91,61,1),(91,64,1),(91,4,1),(91,5,1),(91,6,1),(91,7,1),(91,8,1),(91,9,1),(91,10,1),(91,11,1),(91,12,1),(91,52,1),(91,63,1),(91,55,1),(91,56,1),(91,31,1),(91,32,1),(91,33,1),(91,34,1),(91,35,1),(91,36,1),(91,37,1),(91,58,1),(91,59,1),(91,60,1),(91,19,1),(91,20,1),(91,21,1),(91,22,1),(91,23,1),(91,24,1),(91,25,1),(91,26,1),(91,27,1),(91,28,1),(91,29,1),(91,62,1),(92,4,1),(93,4,2),(94,1,1),(94,38,1),(94,39,1),(94,40,1),(94,41,1),(94,47,1),(94,48,1),(94,49,1),(94,50,1),(94,51,1),(94,61,1),(94,64,1),(94,4,1),(94,5,1),(94,6,1),(94,7,1),(94,8,1),(94,9,1),(94,10,1),(94,11,1),(94,12,1),(94,52,1),(94,63,1),(94,55,1),(94,56,1),(94,31,1),(94,32,1),(94,33,1),(94,34,1),(94,35,1),(94,36,1),(94,37,1),(94,58,1),(94,59,1),(94,60,1),(94,19,1),(94,20,1),(94,21,1),(94,22,1),(94,23,1),(94,24,1),(94,25,1),(94,26,1),(94,27,1),(94,28,1),(94,29,1),(94,62,1),(95,1,1),(95,38,1),(95,39,1),(95,40,1),(95,41,1),(95,47,1),(95,48,1),(95,49,1),(95,50,1),(95,51,1),(95,61,1),(95,64,1),(95,4,1),(95,5,1),(95,6,1),(95,7,1),(95,8,1),(95,9,1),(95,10,1),(95,11,1),(95,12,1),(95,52,1),(95,63,1),(95,55,1),(95,56,1),(95,31,1),(95,32,1),(95,33,1),(95,34,1),(95,35,1),(95,36,1),(95,37,1),(95,58,1),(95,59,1),(95,60,1),(95,19,1),(95,20,1),(95,21,1),(95,22,1),(95,23,1),(95,24,1),(95,25,1),(95,26,1),(95,27,1),(95,28,1),(95,29,1),(95,62,1),(96,1,1),(96,38,1),(96,39,1),(96,40,1),(96,41,1),(96,47,1),(96,48,1),(96,49,1),(96,50,1),(96,51,1),(96,61,1),(96,64,1),(96,4,1),(96,5,1),(96,6,1),(96,7,1),(96,8,1),(96,9,1),(96,10,1),(96,11,1),(96,12,1),(96,52,1),(96,63,1),(96,55,1),(96,56,1),(96,31,1),(96,32,1),(96,33,1),(96,34,1),(96,35,1),(96,36,1),(96,37,1),(96,58,1),(96,59,1),(96,60,1),(96,19,1),(96,20,1),(96,21,1),(96,22,1),(96,23,1),(96,24,1),(96,25,1),(96,26,1),(96,27,1),(96,28,1),(96,29,1),(96,62,1),(97,1,1),(97,38,1),(97,39,1),(97,40,1),(97,41,1),(97,47,1),(97,48,1),(97,49,1),(97,50,1),(97,51,1),(97,61,1),(97,64,1),(97,4,1),(97,5,1),(97,6,1),(97,7,1),(97,8,1),(97,9,1),(97,10,1),(97,11,1),(97,12,1),(97,52,1),(97,63,1),(97,55,1),(97,56,1),(97,31,1),(97,32,1),(97,33,1),(97,34,1),(97,35,1),(97,36,1),(97,37,1),(97,58,1),(97,59,1),(97,60,1),(97,19,1),(97,20,1),(97,21,1),(97,22,1),(97,23,1),(97,24,1),(97,25,1),(97,26,1),(97,27,1),(97,28,1),(97,29,1),(97,62,1),(98,1,2),(98,38,2),(98,39,2),(98,40,2),(98,41,2),(98,47,2),(98,48,2),(98,49,2),(98,50,2),(98,51,2),(98,61,2),(98,64,2),(98,4,2),(98,5,2),(98,6,2),(98,7,2),(98,8,2),(98,9,2),(98,10,2),(98,11,2),(98,12,2),(98,52,2),(98,63,2),(98,55,2),(98,56,2),(98,31,2),(98,32,2),(98,33,2),(98,34,2),(98,35,2),(98,36,2),(98,37,2),(98,58,2),(98,59,2),(98,60,2),(98,19,2),(98,20,2),(98,21,2),(98,22,2),(98,23,2),(98,24,2),(98,25,2),(98,26,2),(98,27,2),(98,28,2),(98,29,2),(98,62,2),(99,4,1),(99,5,1),(99,6,1),(99,7,1),(99,8,1),(99,9,1),(99,10,1),(99,11,1),(99,12,1),(100,19,1),(100,20,1),(100,21,1),(100,22,1),(100,23,1),(100,24,1),(100,25,1),(100,26,1),(100,27,1),(100,28,1),(100,31,1),(100,32,1),(100,33,1),(100,34,1),(100,35,1),(100,36,1),(100,37,1),(101,1,1),(101,38,1),(101,39,1),(101,40,1),(101,41,1),(101,47,1),(101,48,1),(101,49,1),(101,50,1),(101,51,1),(101,61,1),(101,64,1),(101,4,2),(101,5,2),(101,6,2),(101,7,2),(101,8,2),(101,9,2),(101,10,2),(101,11,2),(101,12,2),(101,52,1),(101,63,1),(101,55,1),(101,56,1),(101,31,2),(101,32,2),(101,33,2),(101,34,2),(101,35,2),(101,36,2),(101,37,2),(101,58,1),(101,59,1),(101,60,1),(101,19,2),(101,20,2),(101,21,2),(101,22,2),(101,23,2),(101,24,2),(101,25,2),(101,26,2),(101,27,2),(101,28,2),(101,29,1),(101,62,1),(102,1,2),(102,38,2),(102,39,2),(102,40,2),(102,41,2),(102,47,2),(102,48,2),(102,49,2),(102,50,2),(102,51,2),(102,61,2),(102,64,2),(102,4,3),(102,5,3),(102,6,3),(102,7,3),(102,8,3),(102,9,3),(102,10,3),(102,11,3),(102,12,3),(102,52,2),(102,63,2),(102,55,2),(102,56,2),(102,31,3),(102,32,3),(102,33,3),(102,34,3),(102,35,3),(102,36,3),(102,37,3),(102,58,2),(102,59,2),(102,60,2),(102,19,3),(102,20,3),(102,21,3),(102,22,3),(102,23,3),(102,24,3),(102,25,3),(102,26,3),(102,27,3),(102,28,3),(102,29,2),(102,62,2),(103,1,1),(103,38,1),(103,39,1),(103,40,1),(103,41,1),(103,47,1),(103,48,1),(103,49,1),(103,50,1),(103,51,1),(103,61,1),(103,64,1),(103,4,1),(103,5,1),(103,6,1),(103,7,1),(103,8,1),(103,9,1),(103,10,1),(103,11,1),(103,12,1),(103,52,1),(103,63,1),(103,55,1),(103,56,1),(103,31,1),(103,32,1),(103,33,1),(103,34,1),(103,35,1),(103,36,1),(103,37,1),(103,58,1),(103,59,1),(103,60,1),(103,19,1),(103,20,1),(103,21,1),(103,22,1),(103,23,1),(103,24,1),(103,25,1),(103,26,1),(103,27,1),(103,28,1),(103,29,1),(103,62,1),(104,1,1),(104,38,1),(104,39,1),(104,40,1),(104,41,1),(104,47,1),(104,48,1),(104,49,1),(104,50,1),(104,51,1),(104,61,1),(104,64,1),(104,4,1),(104,5,1),(104,6,1),(104,7,1),(104,8,1),(104,9,1),(104,10,1),(104,11,1),(104,12,1),(104,52,1),(104,63,1),(104,55,1),(104,56,1),(104,31,1),(104,32,1),(104,33,1),(104,34,1),(104,35,1),(104,36,1),(104,37,1),(104,58,1),(104,59,1),(104,60,1),(104,19,1),(104,20,1),(104,21,1),(104,22,1),(104,23,1),(104,24,1),(104,25,1),(104,26,1),(104,27,1),(104,28,1),(104,29,1),(104,62,1),(105,1,1),(105,38,1),(105,39,1),(105,40,1),(105,41,1),(105,47,1),(105,48,1),(105,49,1),(105,50,1),(105,51,1),(105,61,1),(105,64,1),(105,4,1),(105,5,1),(105,6,1),(105,7,1),(105,8,1),(105,9,1),(105,10,1),(105,11,1),(105,12,1),(105,52,1),(105,63,1),(105,55,1),(105,56,1),(105,31,1),(105,32,1),(105,33,1),(105,34,1),(105,35,1),(105,36,1),(105,37,1),(105,58,1),(105,59,1),(105,60,1),(105,19,1),(105,20,1),(105,21,1),(105,22,1),(105,23,1),(105,24,1),(105,25,1),(105,26,1),(105,27,1),(105,28,1),(105,29,1),(105,62,1),(106,1,1),(106,38,1),(106,39,1),(106,40,1),(106,41,1),(106,47,1),(106,48,1),(106,49,1),(106,50,1),(106,51,1),(106,61,1),(106,64,1),(106,4,1),(106,5,1),(106,6,1),(106,7,1),(106,8,1),(106,9,1),(106,10,1),(106,11,1),(106,12,1),(106,52,1),(106,63,1),(106,55,1),(106,56,1),(106,31,1),(106,32,1),(106,33,1),(106,34,1),(106,35,1),(106,36,1),(106,37,1),(106,58,1),(106,59,1),(106,60,1),(106,19,1),(106,20,1),(106,21,1),(106,22,1),(106,23,1),(106,24,1),(106,25,1),(106,26,1),(106,27,1),(106,28,1),(106,29,1),(106,62,1),(107,1,2),(107,38,2),(107,39,2),(107,40,2),(107,41,2),(107,47,2),(107,48,2),(107,49,2),(107,50,2),(107,51,2),(107,61,2),(107,64,2),(107,4,2),(107,5,2),(107,6,2),(107,7,2),(107,8,2),(107,9,2),(107,10,2),(107,11,2),(107,12,2),(107,52,2),(107,63,2),(107,55,2),(107,56,2),(107,31,2),(107,32,2),(107,33,2),(107,34,2),(107,35,2),(107,36,2),(107,37,2),(107,58,2),(107,59,2),(107,60,2),(107,19,2),(107,20,2),(107,21,2),(107,22,2),(107,23,2),(107,24,2),(107,25,2),(107,26,2),(107,27,2),(107,28,2),(107,29,2),(107,62,2),(108,1,1),(108,38,1),(108,39,1),(108,40,1),(108,41,1),(108,47,1),(108,48,1),(108,49,1),(108,50,1),(108,51,1),(108,61,1),(108,64,1),(108,4,1),(108,5,1),(108,6,1),(108,7,1),(108,8,1),(108,9,1),(108,10,1),(108,11,1),(108,12,1),(108,52,1),(108,63,1),(108,55,1),(108,56,1),(108,31,1),(108,32,1),(108,33,1),(108,34,1),(108,35,1),(108,36,1),(108,37,1),(108,58,1),(108,59,1),(108,60,1),(108,19,1),(108,20,1),(108,21,1),(108,22,1),(108,23,1),(108,24,1),(108,25,1),(108,26,1),(108,27,1),(108,28,1),(108,29,1),(108,62,1),(109,1,2),(109,38,2),(109,39,2),(109,40,2),(109,41,2),(109,47,2),(109,48,2),(109,49,2),(109,50,2),(109,51,2),(109,61,2),(109,64,2),(109,4,2),(109,5,2),(109,6,2),(109,7,2),(109,8,2),(109,9,2),(109,10,2),(109,11,2),(109,12,2),(109,52,2),(109,63,2),(109,55,2),(109,56,2),(109,31,2),(109,32,2),(109,33,2),(109,34,2),(109,35,2),(109,36,2),(109,37,2),(109,58,2),(109,59,2),(109,60,2),(109,19,2),(109,20,2),(109,21,2),(109,22,2),(109,23,2),(109,24,2),(109,25,2),(109,26,2),(109,27,2),(109,28,2),(109,29,2),(109,62,2),(110,1,3),(110,38,3),(110,39,3),(110,40,3),(110,41,3),(110,47,3),(110,48,3),(110,49,3),(110,50,3),(110,51,3),(110,61,3),(110,64,3),(110,4,3),(110,5,3),(110,6,3),(110,7,3),(110,8,3),(110,9,3),(110,10,3),(110,11,3),(110,12,3),(110,52,3),(110,63,3),(110,55,3),(110,56,3),(110,31,3),(110,32,3),(110,33,3),(110,34,3),(110,35,3),(110,36,3),(110,37,3),(110,58,3),(110,59,3),(110,60,3),(110,19,3),(110,20,3),(110,21,3),(110,22,3),(110,23,3),(110,24,3),(110,25,3),(110,26,3),(110,27,3),(110,28,3),(110,29,3),(110,62,3),(111,1,4),(111,38,4),(111,39,4),(111,40,4),(111,41,4),(111,47,4),(111,48,4),(111,49,4),(111,50,4),(111,51,4),(111,61,4),(111,64,4),(111,4,4),(111,5,4),(111,6,4),(111,7,4),(111,8,4),(111,9,4),(111,10,4),(111,11,4),(111,12,4),(111,52,4),(111,63,4),(111,55,4),(111,56,4),(111,31,4),(111,32,4),(111,33,4),(111,34,4),(111,35,4),(111,36,4),(111,37,4),(111,58,4),(111,59,4),(111,60,4),(111,19,4),(111,20,4),(111,21,4),(111,22,4),(111,23,4),(111,24,4),(111,25,4),(111,26,4),(111,27,4),(111,28,4),(111,29,4),(111,62,4),(112,1,1),(112,38,1),(112,39,1),(112,40,1),(112,41,1),(112,47,1),(112,48,1),(112,49,1),(112,50,1),(112,51,1),(112,61,1),(112,64,1),(112,4,1),(112,5,1),(112,6,1),(112,7,1),(112,8,1),(112,9,1),(112,10,1),(112,11,1),(112,12,1),(112,52,1),(112,63,1),(112,55,1),(112,56,1),(112,31,1),(112,32,1),(112,33,1),(112,34,1),(112,35,1),(112,36,1),(112,37,1),(112,58,1),(112,59,1),(112,60,1),(112,19,1),(112,20,1),(112,21,1),(112,22,1),(112,23,1),(112,24,1),(112,25,1),(112,26,1),(112,27,1),(112,28,1),(112,29,1),(112,62,1),(113,4,1),(114,4,2),(115,1,1),(115,38,1),(115,39,1),(115,40,1),(115,41,1),(115,47,1),(115,48,1),(115,49,1),(115,50,1),(115,51,1),(115,61,1),(115,64,1),(115,4,1),(115,5,1),(115,6,1),(115,7,1),(115,8,1),(115,9,1),(115,10,1),(115,11,1),(115,12,1),(115,52,1),(115,63,1),(115,55,1),(115,56,1),(115,31,1),(115,32,1),(115,33,1),(115,34,1),(115,35,1),(115,36,1),(115,37,1),(115,58,1),(115,59,1),(115,60,1),(115,19,1),(115,20,1),(115,21,1),(115,22,1),(115,23,1),(115,24,1),(115,25,1),(115,26,1),(115,27,1),(115,28,1),(115,29,1),(115,62,1),(116,1,1),(116,38,1),(116,39,1),(116,40,1),(116,41,1),(116,47,1),(116,48,1),(116,49,1),(116,50,1),(116,51,1),(116,61,1),(116,64,1),(116,4,1),(116,5,1),(116,6,1),(116,7,1),(116,8,1),(116,9,1),(116,10,1),(116,11,1),(116,12,1),(116,52,1),(116,63,1),(116,55,1),(116,56,1),(116,31,1),(116,32,1),(116,33,1),(116,34,1),(116,35,1),(116,36,1),(116,37,1),(116,58,1),(116,59,1),(116,60,1),(116,19,1),(116,20,1),(116,21,1),(116,22,1),(116,23,1),(116,24,1),(116,25,1),(116,26,1),(116,27,1),(116,28,1),(116,29,1),(116,62,1),(117,1,1),(117,38,1),(117,39,1),(117,40,1),(117,41,1),(117,47,1),(117,48,1),(117,49,1),(117,50,1),(117,51,1),(117,61,1),(117,64,1),(117,4,1),(117,5,1),(117,6,1),(117,7,1),(117,8,1),(117,9,1),(117,10,1),(117,11,1),(117,12,1),(117,52,1),(117,63,1),(117,55,1),(117,56,1),(117,31,1),(117,32,1),(117,33,1),(117,34,1),(117,35,1),(117,36,1),(117,37,1),(117,58,1),(117,59,1),(117,60,1),(117,19,1),(117,20,1),(117,21,1),(117,22,1),(117,23,1),(117,24,1),(117,25,1),(117,26,1),(117,27,1),(117,28,1),(117,29,1),(117,62,1),(118,1,1),(118,38,1),(118,39,1),(118,40,1),(118,41,1),(118,47,1),(118,48,1),(118,49,1),(118,50,1),(118,51,1),(118,61,1),(118,64,1),(118,4,1),(118,5,1),(118,6,1),(118,7,1),(118,8,1),(118,9,1),(118,10,1),(118,11,1),(118,12,1),(118,52,1),(118,63,1),(118,55,1),(118,56,1),(118,31,1),(118,32,1),(118,33,1),(118,34,1),(118,35,1),(118,36,1),(118,37,1),(118,58,1),(118,59,1),(118,60,1),(118,19,1),(118,20,1),(118,21,1),(118,22,1),(118,23,1),(118,24,1),(118,25,1),(118,26,1),(118,27,1),(118,28,1),(118,29,1),(118,62,1),(119,1,2),(119,38,2),(119,39,2),(119,40,2),(119,41,2),(119,47,2),(119,48,2),(119,49,2),(119,50,2),(119,51,2),(119,61,2),(119,64,2),(119,4,2),(119,5,2),(119,6,2),(119,7,2),(119,8,2),(119,9,2),(119,10,2),(119,11,2),(119,12,2),(119,52,2),(119,63,2),(119,55,2),(119,56,2),(119,31,2),(119,32,2),(119,33,2),(119,34,2),(119,35,2),(119,36,2),(119,37,2),(119,58,2),(119,59,2),(119,60,2),(119,19,2),(119,20,2),(119,21,2),(119,22,2),(119,23,2),(119,24,2),(119,25,2),(119,26,2),(119,27,2),(119,28,2),(119,29,2),(119,62,2),(120,4,1),(120,5,1),(120,6,1),(120,7,1),(120,8,1),(120,9,1),(120,10,1),(120,11,1),(120,12,1),(121,19,1),(121,20,1),(121,21,1),(121,22,1),(121,23,1),(121,24,1),(121,25,1),(121,26,1),(121,27,1),(121,28,1),(121,31,1),(121,32,1),(121,33,1),(121,34,1),(121,35,1),(121,36,1),(121,37,1),(122,1,1),(122,38,1),(122,39,1),(122,40,1),(122,41,1),(122,47,1),(122,48,1),(122,49,1),(122,50,1),(122,51,1),(122,61,1),(122,64,1),(122,4,2),(122,5,2),(122,6,2),(122,7,2),(122,8,2),(122,9,2),(122,10,2),(122,11,2),(122,12,2),(122,52,1),(122,63,1),(122,55,1),(122,56,1),(122,31,2),(122,32,2),(122,33,2),(122,34,2),(122,35,2),(122,36,2),(122,37,2),(122,58,1),(122,59,1),(122,60,1),(122,19,2),(122,20,2),(122,21,2),(122,22,2),(122,23,2),(122,24,2),(122,25,2),(122,26,2),(122,27,2),(122,28,2),(122,29,1),(122,62,1),(123,1,2),(123,38,2),(123,39,2),(123,40,2),(123,41,2),(123,47,2),(123,48,2),(123,49,2),(123,50,2),(123,51,2),(123,61,2),(123,64,2),(123,4,3),(123,5,3),(123,6,3),(123,7,3),(123,8,3),(123,9,3),(123,10,3),(123,11,3),(123,12,3),(123,52,2),(123,63,2),(123,55,2),(123,56,2),(123,31,3),(123,32,3),(123,33,3),(123,34,3),(123,35,3),(123,36,3),(123,37,3),(123,58,2),(123,59,2),(123,60,2),(123,19,3),(123,20,3),(123,21,3),(123,22,3),(123,23,3),(123,24,3),(123,25,3),(123,26,3),(123,27,3),(123,28,3),(123,29,2),(123,62,2),(124,1,1),(124,38,1),(124,39,1),(124,40,1),(124,41,1),(124,47,1),(124,48,1),(124,49,1),(124,50,1),(124,51,1),(124,61,1),(124,64,1),(124,4,1),(124,5,1),(124,6,1),(124,7,1),(124,8,1),(124,9,1),(124,10,1),(124,11,1),(124,12,1),(124,52,1),(124,63,1),(124,55,1),(124,56,1),(124,31,1),(124,32,1),(124,33,1),(124,34,1),(124,35,1),(124,36,1),(124,37,1),(124,58,1),(124,59,1),(124,60,1),(124,19,1),(124,20,1),(124,21,1),(124,22,1),(124,23,1),(124,24,1),(124,25,1),(124,26,1),(124,27,1),(124,28,1),(124,29,1),(124,62,1),(125,1,1),(125,38,1),(125,39,1),(125,40,1),(125,41,1),(125,47,1),(125,48,1),(125,49,1),(125,50,1),(125,51,1),(125,61,1),(125,64,1),(125,4,1),(125,5,1),(125,6,1),(125,7,1),(125,8,1),(125,9,1),(125,10,1),(125,11,1),(125,12,1),(125,52,1),(125,63,1),(125,55,1),(125,56,1),(125,31,1),(125,32,1),(125,33,1),(125,34,1),(125,35,1),(125,36,1),(125,37,1),(125,58,1),(125,59,1),(125,60,1),(125,19,1),(125,20,1),(125,21,1),(125,22,1),(125,23,1),(125,24,1),(125,25,1),(125,26,1),(125,27,1),(125,28,1),(125,29,1),(125,62,1),(126,1,1),(126,38,1),(126,39,1),(126,40,1),(126,41,1),(126,47,1),(126,48,1),(126,49,1),(126,50,1),(126,51,1),(126,61,1),(126,64,1),(126,4,1),(126,5,1),(126,6,1),(126,7,1),(126,8,1),(126,9,1),(126,10,1),(126,11,1),(126,12,1),(126,52,1),(126,63,1),(126,55,1),(126,56,1),(126,31,1),(126,32,1),(126,33,1),(126,34,1),(126,35,1),(126,36,1),(126,37,1),(126,58,1),(126,59,1),(126,60,1),(126,19,1),(126,20,1),(126,21,1),(126,22,1),(126,23,1),(126,24,1),(126,25,1),(126,26,1),(126,27,1),(126,28,1),(126,29,1),(126,62,1),(127,1,1),(127,38,1),(127,39,1),(127,40,1),(127,41,1),(127,47,1),(127,48,1),(127,49,1),(127,50,1),(127,51,1),(127,61,1),(127,64,1),(127,4,1),(127,5,1),(127,6,1),(127,7,1),(127,8,1),(127,9,1),(127,10,1),(127,11,1),(127,12,1),(127,52,1),(127,63,1),(127,55,1),(127,56,1),(127,31,1),(127,32,1),(127,33,1),(127,34,1),(127,35,1),(127,36,1),(127,37,1),(127,58,1),(127,59,1),(127,60,1),(127,19,1),(127,20,1),(127,21,1),(127,22,1),(127,23,1),(127,24,1),(127,25,1),(127,26,1),(127,27,1),(127,28,1),(127,29,1),(127,62,1),(128,1,2),(128,38,2),(128,39,2),(128,40,2),(128,41,2),(128,47,2),(128,48,2),(128,49,2),(128,50,2),(128,51,2),(128,61,2),(128,64,2),(128,4,2),(128,5,2),(128,6,2),(128,7,2),(128,8,2),(128,9,2),(128,10,2),(128,11,2),(128,12,2),(128,52,2),(128,63,2),(128,55,2),(128,56,2),(128,31,2),(128,32,2),(128,33,2),(128,34,2),(128,35,2),(128,36,2),(128,37,2),(128,58,2),(128,59,2),(128,60,2),(128,19,2),(128,20,2),(128,21,2),(128,22,2),(128,23,2),(128,24,2),(128,25,2),(128,26,2),(128,27,2),(128,28,2),(128,29,2),(128,62,2),(129,1,1),(129,38,1),(129,39,1),(129,40,1),(129,41,1),(129,47,1),(129,48,1),(129,49,1),(129,50,1),(129,51,1),(129,61,1),(129,64,1),(129,4,1),(129,5,1),(129,6,1),(129,7,1),(129,8,1),(129,9,1),(129,10,1),(129,11,1),(129,12,1),(129,52,1),(129,63,1),(129,55,1),(129,56,1),(129,31,1),(129,32,1),(129,33,1),(129,34,1),(129,35,1),(129,36,1),(129,37,1),(129,58,1),(129,59,1),(129,60,1),(129,19,1),(129,20,1),(129,21,1),(129,22,1),(129,23,1),(129,24,1),(129,25,1),(129,26,1),(129,27,1),(129,28,1),(129,29,1),(129,62,1),(130,1,2),(130,38,2),(130,39,2),(130,40,2),(130,41,2),(130,47,2),(130,48,2),(130,49,2),(130,50,2),(130,51,2),(130,61,2),(130,64,2),(130,4,2),(130,5,2),(130,6,2),(130,7,2),(130,8,2),(130,9,2),(130,10,2),(130,11,2),(130,12,2),(130,52,2),(130,63,2),(130,55,2),(130,56,2),(130,31,2),(130,32,2),(130,33,2),(130,34,2),(130,35,2),(130,36,2),(130,37,2),(130,58,2),(130,59,2),(130,60,2),(130,19,2),(130,20,2),(130,21,2),(130,22,2),(130,23,2),(130,24,2),(130,25,2),(130,26,2),(130,27,2),(130,28,2),(130,29,2),(130,62,2),(131,1,3),(131,38,3),(131,39,3),(131,40,3),(131,41,3),(131,47,3),(131,48,3),(131,49,3),(131,50,3),(131,51,3),(131,61,3),(131,64,3),(131,4,3),(131,5,3),(131,6,3),(131,7,3),(131,8,3),(131,9,3),(131,10,3),(131,11,3),(131,12,3),(131,52,3),(131,63,3),(131,55,3),(131,56,3),(131,31,3),(131,32,3),(131,33,3),(131,34,3),(131,35,3),(131,36,3),(131,37,3),(131,58,3),(131,59,3),(131,60,3),(131,19,3),(131,20,3),(131,21,3),(131,22,3),(131,23,3),(131,24,3),(131,25,3),(131,26,3),(131,27,3),(131,28,3),(131,29,3),(131,62,3),(132,1,4),(132,38,4),(132,39,4),(132,40,4),(132,41,4),(132,47,4),(132,48,4),(132,49,4),(132,50,4),(132,51,4),(132,61,4),(132,64,4),(132,4,4),(132,5,4),(132,6,4),(132,7,4),(132,8,4),(132,9,4),(132,10,4),(132,11,4),(132,12,4),(132,52,4),(132,63,4),(132,55,4),(132,56,4),(132,31,4),(132,32,4),(132,33,4),(132,34,4),(132,35,4),(132,36,4),(132,37,4),(132,58,4),(132,59,4),(132,60,4),(132,19,4),(132,20,4),(132,21,4),(132,22,4),(132,23,4),(132,24,4),(132,25,4),(132,26,4),(132,27,4),(132,28,4),(132,29,4),(132,62,4),(133,1,1),(133,38,1),(133,39,1),(133,40,1),(133,41,1),(133,47,1),(133,48,1),(133,49,1),(133,50,1),(133,51,1),(133,61,1),(133,64,1),(133,4,1),(133,5,1),(133,6,1),(133,7,1),(133,8,1),(133,9,1),(133,10,1),(133,11,1),(133,12,1),(133,52,1),(133,63,1),(133,55,1),(133,56,1),(133,31,1),(133,32,1),(133,33,1),(133,34,1),(133,35,1),(133,36,1),(133,37,1),(133,58,1),(133,59,1),(133,60,1),(133,19,1),(133,20,1),(133,21,1),(133,22,1),(133,23,1),(133,24,1),(133,25,1),(133,26,1),(133,27,1),(133,28,1),(133,29,1),(133,62,1),(134,4,1),(135,4,2),(136,1,1),(136,4,1),(136,5,1),(136,6,1),(136,7,1),(136,8,1),(136,9,1),(136,10,1),(136,11,1),(136,12,1),(136,19,1),(136,20,1),(136,21,1),(136,22,1),(136,23,1),(136,24,1),(136,25,1),(136,26,1),(136,27,1),(136,28,1),(136,29,1),(136,61,1),(136,31,1),(136,32,1),(136,33,1),(136,34,1),(136,35,1),(136,36,1),(136,37,1),(136,62,1),(136,38,1),(136,39,1),(136,40,1),(136,41,1),(136,63,1),(136,64,1),(136,52,1),(136,47,1),(136,48,1),(136,49,1),(136,50,1),(136,51,1),(136,55,1),(136,56,1),(136,58,1),(136,59,1),(136,60,1),(137,1,1),(137,4,1),(137,5,1),(137,6,1),(137,7,1),(137,8,1),(137,9,1),(137,10,1),(137,11,1),(137,12,1),(137,19,1),(137,20,1),(137,21,1),(137,22,1),(137,23,1),(137,24,1),(137,25,1),(137,26,1),(137,27,1),(137,28,1),(137,29,1),(137,61,1),(137,31,1),(137,32,1),(137,33,1),(137,34,1),(137,35,1),(137,36,1),(137,37,1),(137,62,1),(137,38,1),(137,39,1),(137,40,1),(137,41,1),(137,63,1),(137,64,1),(137,52,1),(137,47,1),(137,48,1),(137,49,1),(137,50,1),(137,51,1),(137,55,1),(137,56,1),(137,58,1),(137,59,1),(137,60,1),(138,4,1),(138,5,1),(138,6,1),(138,7,1),(138,8,1),(138,9,1),(138,10,1),(138,11,1),(138,12,1),(139,51,1),(139,50,1),(139,49,1),(139,48,1),(139,60,1),(139,59,1),(139,58,1),(139,56,1),(139,55,1),(140,1,2),(140,4,2),(140,5,2),(140,6,2),(140,7,2),(140,8,2),(140,9,2),(140,10,2),(140,11,2),(140,12,2),(140,19,2),(140,20,2),(140,21,2),(140,22,2),(140,23,2),(140,24,2),(140,25,2),(140,26,2),(140,27,2),(140,28,2),(140,29,2),(140,61,2),(140,31,2),(140,32,2),(140,33,2),(140,34,2),(140,35,2),(140,36,2),(140,37,2),(140,62,2),(140,38,2),(140,39,2),(140,40,2),(140,41,2),(140,63,2),(140,64,2),(140,52,2),(140,47,2),(140,48,2),(140,49,2),(140,50,2),(140,51,2),(140,55,2),(140,56,2),(140,58,2),(140,59,2),(140,60,2),(141,1,3),(141,4,3),(141,5,3),(141,6,3),(141,7,3),(141,8,3),(141,9,3),(141,10,3),(141,11,3),(141,12,3),(141,19,3),(141,20,3),(141,21,3),(141,22,3),(141,23,3),(141,24,3),(141,25,3),(141,26,3),(141,27,3),(141,28,3),(141,29,3),(141,61,3),(141,31,3),(141,32,3),(141,33,3),(141,34,3),(141,35,3),(141,36,3),(141,37,3),(141,62,3),(141,38,3),(141,39,3),(141,40,3),(141,41,3),(141,63,3),(141,64,3),(141,52,3),(141,47,3),(141,48,3),(141,49,3),(141,50,3),(141,51,3),(141,55,3),(141,56,3),(141,58,3),(141,59,3),(141,60,3),(142,1,1),(142,4,3),(142,5,3),(142,6,3),(142,7,3),(142,8,3),(142,9,3),(142,10,3),(142,11,3),(142,12,3),(142,19,1),(142,20,1),(142,21,1),(142,22,1),(142,23,1),(142,24,1),(142,25,1),(142,26,1),(142,27,1),(142,28,1),(142,29,1),(142,61,1),(142,31,1),(142,32,1),(142,33,1),(142,34,1),(142,35,1),(142,36,1),(142,37,1),(142,62,1),(142,38,1),(142,39,1),(142,40,1),(142,41,1),(142,63,1),(142,64,1),(142,52,1),(142,47,1),(142,48,1),(142,49,1),(142,50,1),(142,51,1),(142,55,1),(142,56,1),(142,58,1),(142,59,1),(142,60,1),(143,1,4),(143,4,4),(143,5,7),(143,6,7),(143,7,7),(143,8,7),(143,9,7),(143,10,7),(143,11,7),(143,12,7),(143,19,5),(143,20,5),(143,21,5),(143,22,5),(143,23,5),(143,24,5),(143,25,5),(143,26,5),(143,27,5),(143,28,5),(143,29,4),(143,61,4),(143,31,5),(143,32,5),(143,33,5),(143,34,5),(143,35,5),(143,36,5),(143,37,5),(143,62,4),(143,38,4),(143,39,4),(143,40,4),(143,41,4),(143,63,4),(143,64,4),(143,52,4),(143,47,4),(143,48,4),(143,49,4),(143,50,4),(143,51,4),(143,55,4),(143,56,4),(143,58,4),(143,59,4),(143,60,4),(145,1,1),(145,4,1),(145,5,1),(145,6,1),(145,7,1),(145,8,1),(145,9,1),(145,10,1),(145,11,1),(145,12,1),(145,19,1),(145,20,1),(145,21,1),(145,22,1),(145,23,1),(145,24,1),(145,25,1),(145,26,1),(145,27,1),(145,28,1),(145,29,1),(145,61,1),(145,31,1),(145,32,1),(145,33,1),(145,34,1),(145,35,1),(145,36,1),(145,37,1),(145,62,1),(145,38,1),(145,39,1),(145,40,1),(145,41,1),(145,63,1),(145,64,1),(145,52,1),(145,47,1),(145,48,1),(145,49,1),(145,50,1),(145,51,1),(145,55,1),(145,56,1),(145,58,1),(145,59,1),(145,60,1),(146,1,2),(146,4,6),(146,5,4),(146,6,4),(146,7,4),(146,8,4),(146,9,4),(146,10,4),(146,11,4),(146,12,4),(146,19,3),(146,20,3),(146,21,3),(146,22,3),(146,23,3),(146,24,3),(146,25,3),(146,26,3),(146,27,3),(146,28,3),(146,29,2),(146,61,2),(146,31,3),(146,32,3),(146,33,3),(146,34,3),(146,35,3),(146,36,3),(146,37,3),(146,62,2),(146,38,2),(146,39,2),(146,40,2),(146,41,2),(146,63,2),(146,64,2),(146,52,2),(146,47,2),(146,48,2),(146,49,2),(146,50,2),(146,51,2),(146,55,2),(146,56,2),(146,58,2),(146,59,2),(146,60,2),(148,1,1),(148,38,1),(148,39,1),(148,40,1),(148,41,1),(148,47,1),(148,48,1),(148,49,1),(148,50,1),(148,51,1),(148,61,1),(148,64,1),(148,4,1),(148,5,1),(148,6,1),(148,7,1),(148,8,1),(148,9,1),(148,10,1),(148,11,1),(148,12,1),(148,52,1),(148,63,1),(148,55,1),(148,56,1),(148,31,1),(148,32,1),(148,33,1),(148,34,1),(148,35,1),(148,36,1),(148,37,1),(148,58,1),(148,59,1),(148,60,1),(148,19,1),(148,20,1),(148,21,1),(148,22,1),(148,23,1),(148,24,1),(148,25,1),(148,26,1),(148,27,1),(148,28,1),(148,29,1),(148,62,1),(149,1,1),(149,38,1),(149,39,1),(149,40,1),(149,41,1),(149,47,1),(149,48,1),(149,49,1),(149,50,1),(149,51,1),(149,61,1),(149,64,1),(149,4,1),(149,5,1),(149,6,1),(149,7,1),(149,8,1),(149,9,1),(149,10,1),(149,11,1),(149,12,1),(149,52,1),(149,63,1),(149,55,1),(149,56,1),(149,31,1),(149,32,1),(149,33,1),(149,34,1),(149,35,1),(149,36,1),(149,37,1),(149,58,1),(149,59,1),(149,60,1),(149,19,1),(149,20,1),(149,21,1),(149,22,1),(149,23,1),(149,24,1),(149,25,1),(149,26,1),(149,27,1),(149,28,1),(149,29,1),(149,62,1),(150,1,1),(150,38,1),(150,39,1),(150,40,1),(150,41,1),(150,47,1),(150,48,1),(150,49,1),(150,50,1),(150,51,1),(150,61,1),(150,64,1),(150,4,1),(150,5,1),(150,6,1),(150,7,1),(150,8,1),(150,9,1),(150,10,1),(150,11,1),(150,12,1),(150,52,1),(150,63,1),(150,55,1),(150,56,1),(150,31,1),(150,32,1),(150,33,1),(150,34,1),(150,35,1),(150,36,1),(150,37,1),(150,58,1),(150,59,1),(150,60,1),(150,19,1),(150,20,1),(150,21,1),(150,22,1),(150,23,1),(150,24,1),(150,25,1),(150,26,1),(150,27,1),(150,28,1),(150,29,1),(150,62,1),(151,1,1),(151,38,1),(151,39,1),(151,40,1),(151,41,1),(151,47,1),(151,48,1),(151,49,1),(151,50,1),(151,51,1),(151,61,1),(151,64,1),(151,4,1),(151,5,1),(151,6,1),(151,7,1),(151,8,1),(151,9,1),(151,10,1),(151,11,1),(151,12,1),(151,52,1),(151,63,1),(151,55,1),(151,56,1),(151,31,1),(151,32,1),(151,33,1),(151,34,1),(151,35,1),(151,36,1),(151,37,1),(151,58,1),(151,59,1),(151,60,1),(151,19,1),(151,20,1),(151,21,1),(151,22,1),(151,23,1),(151,24,1),(151,25,1),(151,26,1),(151,27,1),(151,28,1),(151,29,1),(151,62,1),(152,1,2),(152,38,2),(152,39,2),(152,40,2),(152,41,2),(152,47,2),(152,48,2),(152,49,2),(152,50,2),(152,51,2),(152,61,2),(152,64,2),(152,4,2),(152,5,2),(152,6,2),(152,7,2),(152,8,2),(152,9,2),(152,10,2),(152,11,2),(152,12,2),(152,52,2),(152,63,2),(152,55,2),(152,56,2),(152,31,2),(152,32,2),(152,33,2),(152,34,2),(152,35,2),(152,36,2),(152,37,2),(152,58,2),(152,59,2),(152,60,2),(152,19,2),(152,20,2),(152,21,2),(152,22,2),(152,23,2),(152,24,2),(152,25,2),(152,26,2),(152,27,2),(152,28,2),(152,29,2),(152,62,2),(153,4,2),(153,5,2),(153,6,1),(153,7,1),(153,8,1),(153,9,1),(153,10,1),(153,11,1),(153,12,1),(154,19,1),(154,20,1),(154,21,1),(154,22,1),(154,23,1),(154,24,1),(154,25,1),(154,26,1),(154,27,1),(154,28,1),(154,31,1),(154,32,1),(154,33,1),(154,34,1),(154,35,1),(154,36,1),(154,37,1),(157,1,1),(157,38,1),(157,39,1),(157,40,1),(157,41,1),(157,47,1),(157,48,1),(157,49,1),(157,50,1),(157,51,1),(157,61,1),(157,64,1),(157,4,1),(157,5,1),(157,6,1),(157,7,1),(157,8,1),(157,9,1),(157,10,1),(157,11,1),(157,12,1),(157,52,1),(157,63,1),(157,55,1),(157,56,1),(157,31,1),(157,32,1),(157,33,1),(157,34,1),(157,35,1),(157,36,1),(157,37,1),(157,58,1),(157,59,1),(157,60,1),(157,19,1),(157,20,1),(157,21,1),(157,22,1),(157,23,1),(157,24,1),(157,25,1),(157,26,1),(157,27,1),(157,28,1),(157,29,1),(157,62,1),(158,1,1),(158,38,1),(158,39,1),(158,40,1),(158,41,1),(158,47,1),(158,48,1),(158,49,1),(158,50,1),(158,51,1),(158,61,1),(158,64,1),(158,4,1),(158,5,1),(158,6,1),(158,7,1),(158,8,1),(158,9,1),(158,10,1),(158,11,1),(158,12,1),(158,52,1),(158,63,1),(158,55,1),(158,56,1),(158,31,1),(158,32,1),(158,33,1),(158,34,1),(158,35,1),(158,36,1),(158,37,1),(158,58,1),(158,59,1),(158,60,1),(158,19,1),(158,20,1),(158,21,1),(158,22,1),(158,23,1),(158,24,1),(158,25,1),(158,26,1),(158,27,1),(158,28,1),(158,29,1),(158,62,1),(159,1,1),(159,38,1),(159,39,1),(159,40,1),(159,41,1),(159,47,1),(159,48,1),(159,49,1),(159,50,1),(159,51,1),(159,61,1),(159,64,1),(159,4,1),(159,5,1),(159,6,1),(159,7,1),(159,8,1),(159,9,1),(159,10,1),(159,11,1),(159,12,1),(159,52,1),(159,63,1),(159,55,1),(159,56,1),(159,31,1),(159,32,1),(159,33,1),(159,34,1),(159,35,1),(159,36,1),(159,37,1),(159,58,1),(159,59,1),(159,60,1),(159,19,1),(159,20,1),(159,21,1),(159,22,1),(159,23,1),(159,24,1),(159,25,1),(159,26,1),(159,27,1),(159,28,1),(159,29,1),(159,62,1),(160,1,1),(160,38,1),(160,39,1),(160,40,1),(160,41,1),(160,47,1),(160,48,1),(160,49,1),(160,50,1),(160,51,1),(160,61,1),(160,64,1),(160,4,1),(160,5,1),(160,6,1),(160,7,1),(160,8,1),(160,9,1),(160,10,1),(160,11,1),(160,12,1),(160,52,1),(160,63,1),(160,55,1),(160,56,1),(160,31,1),(160,32,1),(160,33,1),(160,34,1),(160,35,1),(160,36,1),(160,37,1),(160,58,1),(160,59,1),(160,60,1),(160,19,1),(160,20,1),(160,21,1),(160,22,1),(160,23,1),(160,24,1),(160,25,1),(160,26,1),(160,27,1),(160,28,1),(160,29,1),(160,62,1),(161,1,2),(161,38,2),(161,39,2),(161,40,2),(161,41,2),(161,47,2),(161,48,2),(161,49,2),(161,50,2),(161,51,2),(161,61,2),(161,64,2),(161,4,2),(161,5,2),(161,6,2),(161,7,2),(161,8,2),(161,9,2),(161,10,2),(161,11,2),(161,12,2),(161,52,2),(161,63,2),(161,55,2),(161,56,2),(161,31,2),(161,32,2),(161,33,2),(161,34,2),(161,35,2),(161,36,2),(161,37,2),(161,58,2),(161,59,2),(161,60,2),(161,19,2),(161,20,2),(161,21,2),(161,22,2),(161,23,2),(161,24,2),(161,25,2),(161,26,2),(161,27,2),(161,28,2),(161,29,2),(161,62,2),(163,4,3),(163,5,1),(163,6,1),(163,7,1),(163,8,1),(163,9,1),(163,10,1),(163,11,1),(163,12,1),(166,1,1),(166,38,1),(166,39,1),(166,40,1),(166,41,1),(166,47,1),(166,48,1),(166,49,1),(166,50,1),(166,51,1),(166,61,1),(166,64,1),(166,4,1),(166,5,1),(166,6,1),(166,7,1),(166,8,1),(166,9,1),(166,10,1),(166,11,1),(166,12,1),(166,52,1),(166,63,1),(166,55,1),(166,56,1),(166,31,1),(166,32,1),(166,33,1),(166,34,1),(166,35,1),(166,36,1),(166,37,1),(166,58,1),(166,59,1),(166,60,1),(166,19,1),(166,20,1),(166,21,1),(166,22,1),(166,23,1),(166,24,1),(166,25,1),(166,26,1),(166,27,1),(166,28,1),(166,29,1),(166,62,1),(167,4,1),(168,4,2),(170,4,1),(170,5,2),(170,6,2),(170,7,2),(170,8,2),(170,9,2),(170,10,2),(170,11,2),(170,12,2),(69,1,5),(69,19,6),(69,20,6),(69,21,6),(69,22,6),(69,23,6),(69,24,6),(69,25,6),(69,26,6),(69,27,6),(69,28,6),(69,29,5),(69,61,5),(69,31,6),(69,32,6),(69,33,6),(69,34,6),(69,35,6),(69,36,6),(69,37,6),(69,62,5),(69,38,5),(69,39,5),(69,40,5),(69,41,5),(69,63,5),(69,64,5),(69,52,5),(69,47,5),(69,48,5),(69,49,5),(69,50,5),(69,51,5),(69,55,5),(69,56,5),(69,58,5),(69,59,5),(69,60,5),(171,4,2),(171,5,3),(171,6,3),(171,7,3),(171,8,3),(171,9,3),(171,10,3),(171,11,3),(171,12,3),(153,1,2),(153,19,2),(153,20,2),(153,21,2),(153,22,2),(153,23,2),(153,24,2),(153,25,2),(153,26,2),(153,27,2),(153,28,2),(153,29,1),(153,61,1),(153,31,2),(153,32,2),(153,33,2),(153,34,2),(153,35,2),(153,36,2),(153,37,2),(153,62,1),(153,38,1),(153,39,1),(153,40,1),(153,41,1),(153,63,1),(153,64,1),(153,52,1),(153,47,1),(153,48,1),(153,49,1),(153,50,1),(153,51,1),(153,55,1),(153,56,1),(153,58,1),(153,59,1),(153,60,1),(173,1,1),(173,4,1),(173,5,1),(173,6,2),(173,7,2),(173,8,2),(173,9,2),(173,10,2),(173,11,2),(173,12,2),(173,19,3),(173,20,3),(173,21,3),(173,22,3),(173,23,3),(173,24,3),(173,25,3),(173,26,3),(173,27,3),(173,28,3),(173,29,2),(173,61,2),(173,31,3),(173,32,3),(173,33,3),(173,34,3),(173,35,3),(173,36,3),(173,37,3),(173,62,2),(173,38,2),(173,39,2),(173,40,2),(173,41,2),(173,63,2),(173,64,2),(173,52,2),(173,47,2),(173,48,2),(173,49,2),(173,50,2),(173,51,2),(173,55,2),(173,56,2),(173,58,2),(173,59,2),(173,60,2),(174,1,3),(174,4,3),(174,5,3),(174,6,3),(174,7,3),(174,8,3),(174,9,3),(174,10,3),(174,11,3),(174,12,3),(174,19,4),(174,20,4),(174,21,4),(174,22,4),(174,23,4),(174,24,4),(174,25,4),(174,26,4),(174,27,4),(174,28,4),(174,29,3),(174,61,3),(174,31,4),(174,32,4),(174,33,4),(174,34,4),(174,35,4),(174,36,4),(174,37,4),(174,62,3),(174,38,3),(174,39,3),(174,40,3),(174,41,3),(174,63,3),(174,64,3),(174,52,3),(174,47,3),(174,48,3),(174,49,3),(174,50,3),(174,51,3),(174,55,3),(174,56,3),(174,58,3),(174,59,3),(174,60,3),(175,1,4),(175,4,4),(175,5,4),(175,6,4),(175,7,4),(175,8,4),(175,9,4),(175,10,4),(175,11,4),(175,12,4),(175,19,5),(175,20,5),(175,21,5),(175,22,5),(175,23,5),(175,24,5),(175,25,5),(175,26,5),(175,27,5),(175,28,5),(175,29,4),(175,61,4),(175,31,5),(175,32,5),(175,33,5),(175,34,5),(175,35,5),(175,36,5),(175,37,5),(175,62,4),(175,38,4),(175,39,4),(175,40,4),(175,41,4),(175,63,4),(175,64,4),(175,52,4),(175,47,4),(175,48,4),(175,49,4),(175,50,4),(175,51,4),(175,55,4),(175,56,4),(175,58,4),(175,59,4),(175,60,4),(176,1,1),(176,4,7),(176,5,4),(176,6,4),(176,7,4),(176,8,4),(176,9,4),(176,10,4),(176,11,4),(176,12,4),(176,60,7),(176,59,7),(176,58,7),(176,56,7),(176,55,7),(176,51,7),(176,50,7),(176,49,7),(176,48,7),(176,47,7),(176,52,7),(176,22,7),(176,64,7),(176,63,7),(176,41,7),(176,40,7),(176,39,7),(176,38,7),(176,62,7),(176,21,7),(176,37,7),(176,36,7),(176,35,7),(176,34,7),(176,20,7),(176,19,7),(176,28,7),(176,33,7),(176,32,7),(176,31,7),(176,61,7),(176,29,7),(176,27,7),(176,26,7),(176,25,7),(176,24,7),(176,23,7),(177,1,2),(177,4,4),(177,5,5),(177,6,5),(177,7,5),(177,8,5),(177,9,5),(177,10,5),(177,11,5),(177,12,5),(177,19,2),(177,20,2),(177,21,2),(177,22,2),(177,23,2),(177,24,2),(177,25,2),(177,26,2),(177,27,2),(177,28,2),(177,29,2),(177,61,2),(177,31,2),(177,32,2),(177,33,2),(177,34,2),(177,35,2),(177,36,2),(177,37,2),(177,62,2),(177,38,2),(177,39,2),(177,40,2),(177,41,2),(177,63,2),(177,64,2),(177,52,2),(177,47,2),(177,48,2),(177,49,2),(177,50,2),(177,51,2),(177,55,2),(177,56,2),(177,58,2),(177,59,2),(177,60,2),(178,1,3),(178,4,6),(178,5,6),(178,6,6),(178,7,6),(178,8,6),(178,9,6),(178,10,6),(178,11,6),(178,12,6),(178,19,3),(178,20,3),(178,21,3),(178,22,3),(178,23,3),(178,24,3),(178,25,3),(178,26,3),(178,27,3),(178,28,3),(178,29,3),(178,61,3),(178,31,3),(178,32,3),(178,33,3),(178,34,3),(178,35,3),(178,36,3),(178,37,3),(178,62,3),(178,38,3),(178,39,3),(178,40,3),(178,41,3),(178,63,3),(178,64,3),(178,52,3),(178,47,3),(178,48,3),(178,49,3),(178,50,3),(178,51,3),(178,55,3),(178,56,3),(178,58,3),(178,59,3),(178,60,3),(180,1,4),(180,4,5),(180,5,7),(180,6,7),(180,7,7),(180,8,7),(180,9,7),(180,10,7),(180,11,7),(180,12,7),(180,19,4),(180,20,4),(180,21,4),(180,22,4),(180,23,4),(180,24,4),(180,25,4),(180,26,4),(180,27,4),(180,28,4),(180,29,4),(180,61,4),(180,31,4),(180,32,4),(180,33,4),(180,34,4),(180,35,4),(180,36,4),(180,37,4),(180,62,4),(180,38,4),(180,39,4),(180,40,4),(180,41,4),(180,63,4),(180,64,4),(180,52,4),(180,47,4),(180,48,4),(180,49,4),(180,50,4),(180,51,4),(180,55,4),(180,56,4),(180,58,4),(180,59,4),(180,60,4),(163,1,5),(163,19,5),(163,20,5),(163,21,5),(163,22,5),(163,23,5),(163,24,5),(163,25,5),(163,26,5),(163,27,5),(163,28,5),(163,29,5),(163,61,5),(163,31,5),(163,32,5),(163,33,5),(163,34,5),(163,35,5),(163,36,5),(163,37,5),(163,62,5),(163,38,5),(163,39,5),(163,40,5),(163,41,5),(163,63,5),(163,64,5),(163,52,5),(163,47,5),(163,48,5),(163,49,5),(163,50,5),(163,51,5),(163,55,5),(163,56,5),(163,58,5),(163,59,5),(163,60,5),(181,1,6),(181,4,8),(181,5,8),(181,6,8),(181,7,8),(181,8,8),(181,9,8),(181,10,8),(181,11,8),(181,12,8),(181,19,6),(181,20,6),(181,21,6),(181,22,6),(181,23,6),(181,24,6),(181,25,6),(181,26,6),(181,27,6),(181,28,6),(181,29,6),(181,61,6),(181,31,6),(181,32,6),(181,33,6),(181,34,6),(181,35,6),(181,36,6),(181,37,6),(181,62,6),(181,38,6),(181,39,6),(181,40,6),(181,41,6),(181,63,6),(181,64,6),(181,52,6),(181,47,6),(181,48,6),(181,49,6),(181,50,6),(181,51,6),(181,55,6),(181,56,6),(181,58,6),(181,59,6),(181,60,6);
/*!40000 ALTER TABLE `nv4_vi_blocks_weight` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_comment`
--

DROP TABLE IF EXISTS `nv4_vi_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_comment` (
  `cid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `module` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `area` int(11) NOT NULL DEFAULT '0',
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `pid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attach` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_time` int(11) unsigned NOT NULL DEFAULT '0',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `post_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_ip` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `likes` mediumint(9) NOT NULL DEFAULT '0',
  `dislikes` mediumint(9) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cid`),
  KEY `mod_id` (`module`,`area`,`id`),
  KEY `post_time` (`post_time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_comment`
--

LOCK TABLES `nv4_vi_comment` WRITE;
/*!40000 ALTER TABLE `nv4_vi_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `nv4_vi_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_contact_department`
--

DROP TABLE IF EXISTS `nv4_vi_contact_department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_contact_department` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `full_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `others` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cats` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `admins` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `act` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` smallint(5) NOT NULL,
  `is_default` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `full_name` (`full_name`),
  UNIQUE KEY `alias` (`alias`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_contact_department`
--

LOCK TABLES `nv4_vi_contact_department` WRITE;
/*!40000 ALTER TABLE `nv4_vi_contact_department` DISABLE KEYS */;
INSERT INTO `nv4_vi_contact_department` VALUES (1,'Phòng Chăm sóc khách hàng','Cham-soc-khach-hang','','(08) 38.000.000[+84838000000]','08 38.000.001','customer@mysite.com','','Bộ phận tiếp nhận và giải quyết các yêu cầu, đề nghị, ý kiến liên quan đến hoạt động chính của doanh nghiệp','{\"viber\":\"myViber\",\"skype\":\"mySkype\",\"yahoo\":\"myYahoo\"}','Tư vấn|Khiếu nại, phản ánh|Đề nghị hợp tác','1/1/1/0;',1,1,1),(2,'Phòng Kỹ thuật','Ky-thuat','','(08) 38.000.002[+84838000002]','08 38.000.003','technical@mysite.com','','Bộ phận tiếp nhận và giải quyết các câu hỏi liên quan đến kỹ thuật','{\"viber\":\"myViber2\",\"skype\":\"mySkype2\",\"yahoo\":\"myYahoo2\"}','Thông báo lỗi|Góp ý cải tiến','1/1/1/0;',1,2,0);
/*!40000 ALTER TABLE `nv4_vi_contact_department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_contact_reply`
--

DROP TABLE IF EXISTS `nv4_vi_contact_reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_contact_reply` (
  `rid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `reply_content` text COLLATE utf8mb4_unicode_ci,
  `reply_time` int(11) unsigned NOT NULL DEFAULT '0',
  `reply_aid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`rid`),
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_contact_reply`
--

LOCK TABLES `nv4_vi_contact_reply` WRITE;
/*!40000 ALTER TABLE `nv4_vi_contact_reply` DISABLE KEYS */;
/*!40000 ALTER TABLE `nv4_vi_contact_reply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_contact_send`
--

DROP TABLE IF EXISTS `nv4_vi_contact_send`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_contact_send` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `cid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `cat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `send_time` int(11) unsigned NOT NULL DEFAULT '0',
  `sender_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `sender_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender_address` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender_phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sender_ip` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_read` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_reply` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `sender_name` (`sender_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_contact_send`
--

LOCK TABLES `nv4_vi_contact_send` WRITE;
/*!40000 ALTER TABLE `nv4_vi_contact_send` DISABLE KEYS */;
/*!40000 ALTER TABLE `nv4_vi_contact_send` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_contact_supporter`
--

DROP TABLE IF EXISTS `nv4_vi_contact_supporter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_contact_supporter` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `departmentid` smallint(5) unsigned NOT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `others` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `act` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `weight` smallint(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_contact_supporter`
--

LOCK TABLES `nv4_vi_contact_supporter` WRITE;
/*!40000 ALTER TABLE `nv4_vi_contact_supporter` DISABLE KEYS */;
/*!40000 ALTER TABLE `nv4_vi_contact_supporter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_freecontent_blocks`
--

DROP TABLE IF EXISTS `nv4_vi_freecontent_blocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_freecontent_blocks` (
  `bid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`bid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_freecontent_blocks`
--

LOCK TABLES `nv4_vi_freecontent_blocks` WRITE;
/*!40000 ALTER TABLE `nv4_vi_freecontent_blocks` DISABLE KEYS */;
INSERT INTO `nv4_vi_freecontent_blocks` VALUES (1,'Sản phẩm','Sản phẩm của công ty cổ phần phát triển nguồn mở Việt Nam - VINADES.,JSC');
/*!40000 ALTER TABLE `nv4_vi_freecontent_blocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_freecontent_rows`
--

DROP TABLE IF EXISTS `nv4_vi_freecontent_rows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_freecontent_rows` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `bid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `target` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '_blank|_self|_parent|_top',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `start_time` int(11) NOT NULL DEFAULT '0',
  `end_time` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0: In-Active, 1: Active, 2: Expired',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_freecontent_rows`
--

LOCK TABLES `nv4_vi_freecontent_rows` WRITE;
/*!40000 ALTER TABLE `nv4_vi_freecontent_rows` DISABLE KEYS */;
INSERT INTO `nv4_vi_freecontent_rows` VALUES (1,1,'Hệ quản trị nội dung NukeViet','<ul>\n	<li>Giải thưởng Nhân tài đất Việt 2011, 10.000+ website đang sử dụng</li>\n	<li>Được Bộ GD&amp;ĐT khuyến khích sử dụng trong các cơ sở giáo dục</li>\n	<li>Bộ TT&amp;TT quy định ưu tiên sử dụng trong cơ quan nhà nước</li>\n</ul>','http://vinades.vn/vi/san-pham/nukeviet/','_blank','cms.jpg',1552401040,0,1),(2,1,'Cổng thông tin doanh nghiệp','<ul>\n	<li>Tích hợp bán hàng trực tuyến</li>\n	<li>Tích hợp các nghiệp vụ quản lý (quản lý khách hàng, quản lý nhân sự, quản lý tài liệu)</li>\n</ul>','http://vinades.vn/vi/san-pham/Cong-thong-tin-doanh-nghiep-NukeViet-portal/','_blank','portal.jpg',1552401040,0,1),(3,1,'Cổng thông tin Phòng giáo dục, Sở giáo dục','<ul>\n	<li>Tích hợp chung website hàng trăm trường</li>\n	<li>Tích hợp các ứng dụng trực tuyến (Tra điểm SMS, Tra cứu văn bằng, Học bạ điện tử ...)</li>\n</ul>','http://vinades.vn/vi/san-pham/Cong-thong-tin-giao-duc-NukeViet-Edugate/','_blank','edugate.jpg',1552401040,0,1),(4,1,'Tòa soạn báo điện tử chuyên nghiệp','<ul>\n	<li>Bảo mật đa tầng, phân quyền linh hoạt</li>\n	<li>Hệ thống bóc tin tự động, đăng bài tự động, cùng nhiều chức năng tiên tiến khác...</li>\n</ul>','http://vinades.vn/vi/san-pham/Toa-soan-bao-dien-tu/','_blank','toa-soan-dien-tu.jpg',1552401040,0,1),(5,1,'Giải pháp bán hàng trực tuyến','<ul><li>Tích hợp các tính năng cơ bản bán hàng trực tuyến</li><li>Tích hợp với các cổng thanh toán, ví điện tử trên toàn quốc</li></ul>','http://vinades.vn','_blank','shop.jpg',1552401040,0,1);
/*!40000 ALTER TABLE `nv4_vi_freecontent_rows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_menu`
--

DROP TABLE IF EXISTS `nv4_vi_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_menu` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_menu`
--

LOCK TABLES `nv4_vi_menu` WRITE;
/*!40000 ALTER TABLE `nv4_vi_menu` DISABLE KEYS */;
INSERT INTO `nv4_vi_menu` VALUES (10,'Top menu'),(4,'Right menu'),(9,'Left menu'),(11,'menufooter');
/*!40000 ALTER TABLE `nv4_vi_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_menu_rows`
--

DROP TABLE IF EXISTS `nv4_vi_menu_rows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_menu_rows` (
  `id` mediumint(5) NOT NULL AUTO_INCREMENT,
  `parentid` mediumint(5) unsigned NOT NULL,
  `mid` smallint(5) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `weight` int(11) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  `lev` int(11) NOT NULL DEFAULT '0',
  `subitem` text COLLATE utf8mb4_unicode_ci,
  `groups_view` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `module_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `op` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `target` tinyint(4) DEFAULT '0',
  `css` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `active_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parentid` (`parentid`,`mid`)
) ENGINE=MyISAM AUTO_INCREMENT=453 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_menu_rows`
--

LOCK TABLES `nv4_vi_menu_rows` WRITE;
/*!40000 ALTER TABLE `nv4_vi_menu_rows` DISABLE KEYS */;
INSERT INTO `nv4_vi_menu_rows` VALUES (389,0,10,'Trang chủ','/web/index.php','','','',1,1,0,'','6','0','',1,'',0,1),(390,0,10,'Phần mềm QLVB','http://qlvb-quangninh.quangbinh.gov.vn/quangninh/index.nsf','','','',2,2,0,'','6','0','',2,'',0,1),(449,0,10,'Văn bản HĐND','/web/index.php?language=vi&nv=news&op=van-ban-hdnd','','','',3,3,0,'','6','news','van-ban-hdnd',1,'',0,1),(392,0,10,'Thủ tục hành chính','https://motcua.quangbinh.gov.vn/thu-tuc-hanh-chinh/-/tra-cuu-thu-tuc/view?donvithuchien=1723','','','',4,4,0,'','6','0','',2,'',0,1),(394,0,10,'Lịch làm viêc','/web/index.php?language=vi&nv=news&op=lich-lam-viec','','','',6,6,0,'','6','news','lich-lam-viec',1,'',0,1),(66,0,4,'Thông tin báo cáo','/web/index.php?language=vi&nv=news&amp;op=thong-tin-bao-cao','','','',2,5,0,'67,68,69,70,71','6','news','thong-tin-bao-cao',1,'',1,1),(64,62,4,'Địa chỉ nhân đạo','/web/index.php?language=vi&nv=news&amp;op=dia-chi-nhan-dao','','','',2,3,1,'','6','news','dia-chi-nhan-dao',1,'',1,1),(63,62,4,'Tin hoạt động','/web/index.php?language=vi&nv=news&amp;op=tin-hoat-dong','','','',1,2,1,'','6','news','tin-hoat-dong',1,'',1,1),(62,0,4,'Chuyên mục nhân đạo','/web/index.php?language=vi&nv=news&amp;op=chuyen-muc-nhan-dao','','','',1,1,0,'63,64,65','6','news','chuyen-muc-nhan-dao',1,'',1,1),(67,66,4,'Chương trình cộng tác','/web/index.php?language=vi&nv=news&amp;op=chuong-trinh-cong-tac','','','',1,6,1,'','6','news','chuong-trinh-cong-tac',1,'',1,1),(65,62,4,'Văn bản','/web/index.php?language=vi&nv=news&amp;op=van-ban','','','',3,4,1,'','6','news','van-ban',1,'',1,1),(381,379,9,'Chiến lược định hướng - QH phát triển','/web/index.php?language=vi&nv=news&amp;op=chien-luoc-dinh-huong-qh-phat-trien','','','',2,30,1,'','6','news','chien-luoc-dinh-huong-qh-phat-trien',1,'',1,1),(380,379,9,'Tuyên truyền phổ biến PL - CS','/web/index.php?language=vi&nv=news&amp;op=tuyen-truyen-pho-bien-pl-cs','','','',1,29,1,'','6','news','tuyen-truyen-pho-bien-pl-cs',1,'',1,1),(376,375,9,'Tin tức xây dựng NTM','/web/index.php?language=vi&nv=news&amp;op=tin-tuc-xay-dung-ntm','','','',1,25,1,'','6','news','tin-tuc-xay-dung-ntm',1,'',1,1),(377,375,9,'Bộ tiêu chí','/web/index.php?language=vi&nv=news&amp;op=bo-tieu-chi','','','',2,26,1,'','6','news','bo-tieu-chi',1,'',1,1),(378,375,9,'Văn bản xây dựng NTM','/web/index.php?language=vi&nv=news&amp;op=van-ban-xay-dung-ntm','','','',3,27,1,'','6','news','van-ban-xay-dung-ntm',1,'',1,1),(374,369,9,'Quy trình tác nghiệp','/web/index.php?language=vi&nv=news&amp;op=quy-trinh-tac-nghiep','','','',5,23,1,'','6','news','quy-trinh-tac-nghiep',1,'',1,1),(362,356,9,'Các Xã, Thị trấn','/web/index.php?language=vi&nv=news&amp;op=cac-xa-thi-tran','','','',6,11,1,'','6','news','cac-xa-thi-tran',1,'',1,1),(363,356,9,'Các đơn vị khác','/web/index.php?language=vi&nv=news&amp;op=cac-don-vi-khac','','','',7,12,1,'','6','news','cac-don-vi-khac',1,'',1,1),(364,0,9,'Tin tức - Sự kiện','/web/index.php?language=vi&nv=news&amp;op=tin-tuc-su-kien','','','',3,13,0,'365,366,367,368','6','news','tin-tuc-su-kien',1,'',1,1),(365,364,9,'Kinh tế - Chính trị','/web/index.php?language=vi&nv=news&amp;op=kinh-te-chinh-tri','','','',1,14,1,'','6','news','kinh-te-chinh-tri',1,'',1,1),(357,356,9,'Huyện ủy','/web/index.php?language=vi&nv=news&amp;op=huyen-uy','','','',1,6,1,'','6','news','huyen-uy',1,'',1,1),(68,66,4,'Thông báo','/web/index.php?language=vi&nv=news&amp;op=thong-bao','','','',2,7,1,'','6','news','thong-bao',1,'',1,1),(69,66,4,'Ý kiến kết luận','/web/index.php?language=vi&nv=news&amp;op=y-kien-ket-luan','','','',3,8,1,'','6','news','y-kien-ket-luan',1,'',1,1),(70,66,4,'Kế hoạch','/web/index.php?language=vi&nv=news&amp;op=ke-hoach','','','',4,9,1,'','6','news','ke-hoach',1,'',1,1),(71,66,4,'Văn bản khác','/web/index.php?language=vi&nv=news&amp;op=van-ban-khac','','','',5,10,1,'','6','news','van-ban-khac',1,'',1,1),(72,0,4,'Thông tin cần biết','/web/index.php?language=vi&nv=news&amp;op=thong-tin-can-biet','','','',3,11,0,'73,74,75,76,77,78,79','6','news','thong-tin-can-biet',1,'',1,1),(73,72,4,'Tin tức ngân hàng chính sách','/web/index.php?language=vi&nv=news&amp;op=tin-tuc-ngan-hang-chinh-sach','','','',1,12,1,'','6','news','tin-tuc-ngan-hang-chinh-sach',1,'',1,1),(74,72,4,'Tuyển dụng','/web/index.php?language=vi&nv=news&amp;op=tuyen-dung-26','','','',2,13,1,'','6','news','tuyen-dung-26',1,'',1,1),(75,72,4,'Học tập và làm theo bác hồ','/web/index.php?language=vi&nv=news&amp;op=hoc-tap-va-lam-theo-bac-ho','','','',3,14,1,'','6','news','hoc-tap-va-lam-theo-bac-ho',1,'',1,1),(76,72,4,'Quyết định có thay đổi về QSD đất','/web/index.php?language=vi&nv=news&amp;op=quyet-dinh-co-thay-doi-ve-qsd-dat','','','',4,15,1,'','6','news','quyet-dinh-co-thay-doi-ve-qsd-dat',1,'',1,1),(77,72,4,'Lịch cắt điện','/web/index.php?language=vi&nv=news&amp;op=lich-cat-dien','','','',5,16,1,'','6','news','lich-cat-dien',1,'',1,1),(78,72,4,'Thông báo đấu giá','/web/index.php?language=vi&nv=news&amp;op=thong-bao-dau-gia','','','',6,17,1,'','6','news','thong-bao-dau-gia',1,'',1,1),(79,72,4,'Thông báo mời thầu','/web/index.php?language=vi&nv=news&amp;op=thong-bao-moi-thau','','','',7,18,1,'','6','news','thong-bao-moi-thau',1,'',1,1),(80,0,4,'Văn bản HĐND','/web/index.php?language=vi&nv=news&amp;op=van-ban-hdnd','','','',4,19,0,'81,82,83,84','6','news','van-ban-hdnd',1,'',1,1),(81,80,4,'Kỳ họp thứ 6','/web/index.php?language=vi&nv=news&amp;op=ky-hop-thu-6','','','',1,20,1,'','6','news','ky-hop-thu-6',1,'',1,1),(82,80,4,'Kỳ họp thứ 8 - Khóa XIX','/web/index.php?language=vi&nv=news&amp;op=ky-hop-thu-8-khoa-xix','','','',2,21,1,'','6','news','ky-hop-thu-8-khoa-xix',1,'',1,1),(83,80,4,'Kỳ họp thứ 9 - Khóa XIX','/web/index.php?language=vi&nv=news&amp;op=ky-hop-thu-9-khoa-xix','','','',3,22,1,'','6','news','ky-hop-thu-9-khoa-xix',1,'',1,1),(84,80,4,'Văn bản liên quan','/web/index.php?language=vi&nv=news&amp;op=van-ban-lien-quan','','','',4,23,1,'','6','news','van-ban-lien-quan',1,'',1,1),(379,0,9,'Định hướng phát triển','/web/index.php?language=vi&nv=news&amp;op=dinh-huong-phat-trien','','','',6,28,0,'380,381','6','news','dinh-huong-phat-trien',1,'',1,1),(375,0,9,'XD Nông thôn mới','/web/index.php?language=vi&nv=news&amp;op=xd-nong-thon-moi','','','',5,24,0,'376,377,378','6','news','xd-nong-thon-moi',1,'',1,1),(358,356,9,'Hội đồng nhân dân','/web/index.php?language=vi&nv=news&amp;op=hoi-dong-nhan-dan','','','',2,7,1,'','6','news','hoi-dong-nhan-dan',1,'',1,1),(359,356,9,'Ủy ban nhân dân','/web/index.php?language=vi&nv=news&amp;op=uy-ban-nhan-dan','','','',3,8,1,'','6','news','uy-ban-nhan-dan',1,'',1,1),(360,356,9,'UBMT TQVN huyện','/web/index.php?language=vi&nv=news&amp;op=ubmt-tqvn-huyen','','','',4,9,1,'','6','news','ubmt-tqvn-huyen',1,'',1,1),(356,0,9,'Bộ máy nhà nước','/web/index.php?language=vi&nv=news&amp;op=bo-may-nha-nuoc','','','',2,5,0,'357,358,359,360,361,362,363','6','news','bo-may-nha-nuoc',1,'',1,1),(373,369,9,'Các quy trình hỗ trợ','/web/index.php?language=vi&nv=news&amp;op=cac-quy-trinh-ho-tro','','','',4,22,1,'','6','news','cac-quy-trinh-ho-tro',1,'',1,1),(372,369,9,'6 Quy trình bắt buộc','/web/index.php?language=vi&nv=news&amp;op=6-quy-trinh-bat-buoc','','','',3,21,1,'','6','news','6-quy-trinh-bat-buoc',1,'',1,1),(371,369,9,'Sổ tây chất lượng','/web/index.php?language=vi&nv=news&amp;op=so-tay-chat-luong','','','',2,20,1,'','6','news','so-tay-chat-luong',1,'',1,1),(370,369,9,'CSCL và MTCL','/web/index.php?language=vi&nv=news&amp;op=cscl-va-mtcl','','','',1,19,1,'','6','news','cscl-va-mtcl',1,'',1,1),(369,0,9,'Tài liệu ISO 9001&#x3A;2008','/web/index.php?language=vi&nv=news&amp;op=tai-lieu-iso-9001-2008','','','',4,18,0,'370,371,372,373,374','6','news','tai-lieu-iso-9001-2008',1,'',1,1),(367,364,9,'An ninh - Quốc phòng','/web/index.php?language=vi&nv=news&amp;op=an-ninh-quoc-phong','','','',3,16,1,'','6','news','an-ninh-quoc-phong',1,'',1,1),(368,364,9,'Phóng sự','/web/index.php?language=vi&nv=news&amp;op=phong-su','','','',4,17,1,'','6','news','phong-su',1,'',1,1),(366,364,9,'Văn hóa - Xã hội','/web/index.php?language=vi&nv=news&amp;op=van-hoa-xa-hoi','','','',2,15,1,'','6','news','van-hoa-xa-hoi',1,'',1,1),(361,356,9,'Các phòng, Ban, Đơn vị','/web/index.php?language=vi&nv=news&amp;op=cac-phong-ban-don-vi','','','',5,10,1,'','6','news','cac-phong-ban-don-vi',1,'',1,1),(385,0,9,'Giới thiệu','/web/index.php?language=vi&nv=about','','','',1,1,0,'386,387,388','6','about','',1,'',0,1),(386,385,9,'Tổng quan','/web/index.php?language=vi&nv=about&amp;op=tong-quan.html','','','',1,2,1,'','6','about','tong-quan.html',1,'',1,1),(387,385,9,'Lịch sử Đảng bộ Huyện','/web/index.php?language=vi&nv=about&amp;op=lich-su-dang-bo-huyen.html','','','',2,3,1,'','6','about','lich-su-dang-bo-huyen.html',1,'',1,1),(388,385,9,'Bản đồ hành chính Huyện','/web/index.php?language=vi&nv=about&amp;op=ban-do-hanh-chinh-huyen.html','','','',3,4,1,'','6','about','ban-do-hanh-chinh-huyen.html',1,'',1,1),(451,0,10,'Giấy mời','/web/index.php?language=vi&nv=news&op=giay-moi','','','',5,5,0,'','6','news','giay-moi',1,'',0,1),(452,0,11,'Góp ý','https://quangninh.quangbinh.gov.vn/3cms/www/feedback.jsp','','','',1,1,0,'','6','0','',1,'',0,1);
/*!40000 ALTER TABLE `nv4_vi_menu_rows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_modfuncs`
--

DROP TABLE IF EXISTS `nv4_vi_modfuncs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_modfuncs` (
  `func_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `func_name` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `func_custom_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `func_site_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `in_module` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `show_func` tinyint(4) NOT NULL DEFAULT '0',
  `in_submenu` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subweight` smallint(2) unsigned NOT NULL DEFAULT '1',
  `setting` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`func_id`),
  UNIQUE KEY `func_name` (`func_name`,`in_module`),
  UNIQUE KEY `alias` (`alias`,`in_module`)
) ENGINE=MyISAM AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_modfuncs`
--

LOCK TABLES `nv4_vi_modfuncs` WRITE;
/*!40000 ALTER TABLE `nv4_vi_modfuncs` DISABLE KEYS */;
INSERT INTO `nv4_vi_modfuncs` VALUES (1,'main','main','Main','','about',1,0,1,''),(2,'sitemap','sitemap','Sitemap','','about',0,0,0,''),(3,'rss','rss','Rss','','about',0,0,0,''),(4,'main','main','Main','','news',1,0,1,''),(5,'viewcat','viewcat','Viewcat','','news',1,0,2,''),(6,'topic','topic','Topic','','news',1,0,3,''),(7,'content','content','Content','','news',1,1,4,''),(8,'detail','detail','Detail','','news',1,0,5,''),(9,'tag','tag','Tag','','news',1,0,6,''),(10,'rss','rss','Rss','','news',1,1,7,''),(11,'search','search','Search','','news',1,1,8,''),(12,'groups','groups','Groups','','news',1,0,9,''),(13,'sitemap','sitemap','Sitemap','','news',0,0,0,''),(14,'print','print','Print','','news',0,0,0,''),(15,'rating','rating','Rating','','news',0,0,0,''),(16,'savefile','savefile','Savefile','','news',0,0,0,''),(17,'sendmail','sendmail','Sendmail','','news',0,0,0,''),(18,'instant-rss','instant-rss','Instant Articles RSS','','news',0,0,0,''),(19,'main','main','Main','','users',1,0,1,''),(20,'login','login','Đăng nhập','','users',1,1,2,''),(21,'register','register','Đăng ký','','users',1,1,3,''),(22,'lostpass','lostpass','Khôi phục mật khẩu','','users',1,1,4,''),(23,'active','active','Kích hoạt tài khoản','','users',1,0,5,''),(24,'lostactivelink','lostactivelink','Lostactivelink','','users',1,0,6,''),(25,'editinfo','editinfo','Thiết lập tài khoản','','users',1,1,7,''),(26,'memberlist','memberlist','Danh sách thành viên','','users',1,1,8,''),(27,'avatar','avatar','Avatar','','users',1,0,9,''),(28,'logout','logout','Thoát','','users',1,1,10,''),(29,'groups','groups','Quản lý nhóm','','users',1,0,11,''),(30,'oauth','oauth','Oauth','','users',0,0,0,''),(31,'main','main','Main','','statistics',1,0,1,''),(32,'allreferers','allreferers','Theo đường dẫn đến site','','statistics',1,1,2,''),(33,'allcountries','allcountries','Theo quốc gia','','statistics',1,1,3,''),(34,'allbrowsers','allbrowsers','Theo trình duyệt','','statistics',1,1,4,''),(35,'allos','allos','Theo hệ điều hành','','statistics',1,1,5,''),(36,'allbots','allbots','Theo máy chủ tìm kiếm','','statistics',1,1,6,''),(37,'referer','referer','Đường dẫn đến site theo tháng','','statistics',1,0,7,''),(38,'main','main','Main','','banners',1,0,1,''),(39,'addads','addads','Addads','','banners',1,0,2,''),(40,'clientinfo','clientinfo','Clientinfo','','banners',1,0,3,''),(41,'stats','stats','Stats','','banners',1,0,4,''),(42,'cledit','cledit','Cledit','','banners',0,0,0,''),(43,'click','click','Click','','banners',0,0,0,''),(44,'clinfo','clinfo','Clinfo','','banners',0,0,0,''),(45,'logininfo','logininfo','Logininfo','','banners',0,0,0,''),(46,'viewmap','viewmap','Viewmap','','banners',0,0,0,''),(47,'main','main','main','','comment',1,0,1,''),(48,'post','post','post','','comment',1,0,2,''),(49,'like','like','Like','','comment',1,0,3,''),(50,'delete','delete','Delete','','comment',1,0,4,''),(51,'down','down','Down','','comment',1,0,5,''),(52,'main','main','Main','','page',1,0,1,''),(53,'sitemap','sitemap','Sitemap','','page',0,0,0,''),(54,'rss','rss','Rss','','page',0,0,0,''),(55,'main','main','Main','','siteterms',1,0,1,''),(56,'rss','rss','Rss','','siteterms',1,0,2,''),(57,'sitemap','sitemap','Sitemap','','siteterms',0,0,0,''),(58,'main','main','Main','','two-step-verification',1,0,1,''),(59,'confirm','confirm','Confirm','','two-step-verification',1,0,2,''),(60,'setup','setup','Setup','','two-step-verification',1,0,3,''),(61,'main','main','Main','','contact',1,0,1,''),(62,'main','main','Main','','voting',1,0,1,''),(63,'main','main','Main','','seek',1,0,1,''),(64,'main','main','Main','','feeds',1,0,1,'');
/*!40000 ALTER TABLE `nv4_vi_modfuncs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_modthemes`
--

DROP TABLE IF EXISTS `nv4_vi_modthemes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_modthemes` (
  `func_id` mediumint(8) DEFAULT NULL,
  `layout` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `theme` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  UNIQUE KEY `func_id` (`func_id`,`layout`,`theme`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_modthemes`
--

LOCK TABLES `nv4_vi_modthemes` WRITE;
/*!40000 ALTER TABLE `nv4_vi_modthemes` DISABLE KEYS */;
INSERT INTO `nv4_vi_modthemes` VALUES (0,'left-main-right','default'),(0,'left-main-right','demo'),(0,'left-main-right','demo2'),(0,'left-main-right','demodemo'),(0,'left-main-right','phubinh'),(0,'left-main-right','quangninh'),(0,'left-main-right','tintuc'),(0,'main','mobile_default'),(1,'left-main','tintuc'),(1,'left-main-right','default'),(1,'left-main-right','demo'),(1,'left-main-right','demo2'),(1,'left-main-right','demodemo'),(1,'left-main-right','phubinh'),(1,'left-main-right','quangninh'),(1,'main','mobile_default'),(4,'home','demo'),(4,'left-main-right','default'),(4,'left-main-right','demo2'),(4,'left-main-right','demodemo'),(4,'left-main-right','phubinh'),(4,'left-main-right','quangninh'),(4,'left-main-right','tintuc'),(4,'main','mobile_default'),(5,'left-main','tintuc'),(5,'left-main-right','default'),(5,'left-main-right','demo'),(5,'left-main-right','demo2'),(5,'left-main-right','demodemo'),(5,'left-main-right','phubinh'),(5,'left-main-right','quangninh'),(5,'main','mobile_default'),(6,'left-main-right','default'),(6,'left-main-right','demo'),(6,'left-main-right','demo2'),(6,'left-main-right','demodemo'),(6,'left-main-right','phubinh'),(6,'left-main-right','quangninh'),(6,'left-main-right','tintuc'),(6,'main','mobile_default'),(7,'left-main-right','default'),(7,'left-main-right','demo'),(7,'left-main-right','demo2'),(7,'left-main-right','demodemo'),(7,'left-main-right','phubinh'),(7,'left-main-right','quangninh'),(7,'left-main-right','tintuc'),(7,'main','mobile_default'),(8,'left-main','tintuc'),(8,'left-main-right','default'),(8,'left-main-right','demo'),(8,'left-main-right','demo2'),(8,'left-main-right','demodemo'),(8,'left-main-right','phubinh'),(8,'left-main-right','quangninh'),(8,'main','mobile_default'),(9,'left-main-right','default'),(9,'left-main-right','demo'),(9,'left-main-right','demo2'),(9,'left-main-right','demodemo'),(9,'left-main-right','phubinh'),(9,'left-main-right','quangninh'),(9,'left-main-right','tintuc'),(9,'main','mobile_default'),(10,'left-main-right','default'),(10,'left-main-right','demo'),(10,'left-main-right','demo2'),(10,'left-main-right','demodemo'),(10,'left-main-right','phubinh'),(10,'left-main-right','quangninh'),(10,'left-main-right','tintuc'),(11,'left-main-right','default'),(11,'left-main-right','demo'),(11,'left-main-right','demo2'),(11,'left-main-right','demodemo'),(11,'left-main-right','phubinh'),(11,'left-main-right','quangninh'),(11,'left-main-right','tintuc'),(11,'main','mobile_default'),(12,'left-main-right','default'),(12,'left-main-right','demo'),(12,'left-main-right','demo2'),(12,'left-main-right','demodemo'),(12,'left-main-right','phubinh'),(12,'left-main-right','quangninh'),(12,'left-main-right','tintuc'),(12,'main','mobile_default'),(19,'left-main-right','default'),(19,'left-main-right','demo'),(19,'left-main-right','demo2'),(19,'left-main-right','demodemo'),(19,'left-main-right','phubinh'),(19,'left-main-right','quangninh'),(19,'left-main-right','tintuc'),(19,'main','mobile_default'),(20,'left-main-right','default'),(20,'left-main-right','demo'),(20,'left-main-right','demo2'),(20,'left-main-right','demodemo'),(20,'left-main-right','phubinh'),(20,'left-main-right','quangninh'),(20,'left-main-right','tintuc'),(20,'main','mobile_default'),(21,'left-main-right','default'),(21,'left-main-right','demo'),(21,'left-main-right','demo2'),(21,'left-main-right','demodemo'),(21,'left-main-right','phubinh'),(21,'left-main-right','quangninh'),(21,'left-main-right','tintuc'),(21,'main','mobile_default'),(22,'left-main-right','default'),(22,'left-main-right','demo'),(22,'left-main-right','demo2'),(22,'left-main-right','demodemo'),(22,'left-main-right','phubinh'),(22,'left-main-right','quangninh'),(22,'left-main-right','tintuc'),(22,'main','mobile_default'),(23,'left-main-right','default'),(23,'left-main-right','demo'),(23,'left-main-right','demo2'),(23,'left-main-right','demodemo'),(23,'left-main-right','phubinh'),(23,'left-main-right','quangninh'),(23,'left-main-right','tintuc'),(23,'main','mobile_default'),(24,'left-main-right','default'),(24,'left-main-right','demo'),(24,'left-main-right','demo2'),(24,'left-main-right','demodemo'),(24,'left-main-right','phubinh'),(24,'left-main-right','quangninh'),(24,'left-main-right','tintuc'),(24,'main','mobile_default'),(25,'left-main','demo'),(25,'left-main','demo2'),(25,'left-main','demodemo'),(25,'left-main','phubinh'),(25,'left-main','quangninh'),(25,'left-main','tintuc'),(25,'left-main-right','default'),(25,'main','mobile_default'),(26,'left-main-right','default'),(26,'left-main-right','demo'),(26,'left-main-right','demo2'),(26,'left-main-right','demodemo'),(26,'left-main-right','phubinh'),(26,'left-main-right','quangninh'),(26,'left-main-right','tintuc'),(26,'main','mobile_default'),(27,'left-main-right','default'),(27,'left-main-right','demo'),(27,'left-main-right','demo2'),(27,'left-main-right','demodemo'),(27,'left-main-right','phubinh'),(27,'left-main-right','quangninh'),(27,'left-main-right','tintuc'),(28,'left-main-right','default'),(28,'left-main-right','demo'),(28,'left-main-right','demo2'),(28,'left-main-right','demodemo'),(28,'left-main-right','phubinh'),(28,'left-main-right','quangninh'),(28,'left-main-right','tintuc'),(28,'main','mobile_default'),(29,'left-main','demo'),(29,'left-main','demo2'),(29,'left-main','demodemo'),(29,'left-main','phubinh'),(29,'left-main','quangninh'),(29,'left-main','tintuc'),(29,'left-main-right','default'),(29,'main','mobile_default'),(31,'left-main','demo'),(31,'left-main','demo2'),(31,'left-main','demodemo'),(31,'left-main','phubinh'),(31,'left-main','quangninh'),(31,'left-main','tintuc'),(31,'left-main-right','default'),(31,'main','mobile_default'),(32,'left-main','demo'),(32,'left-main','demo2'),(32,'left-main','demodemo'),(32,'left-main','phubinh'),(32,'left-main','quangninh'),(32,'left-main','tintuc'),(32,'left-main-right','default'),(32,'main','mobile_default'),(33,'left-main','demo'),(33,'left-main','demo2'),(33,'left-main','demodemo'),(33,'left-main','phubinh'),(33,'left-main','quangninh'),(33,'left-main','tintuc'),(33,'left-main-right','default'),(33,'main','mobile_default'),(34,'left-main','demo'),(34,'left-main','demo2'),(34,'left-main','demodemo'),(34,'left-main','phubinh'),(34,'left-main','quangninh'),(34,'left-main','tintuc'),(34,'left-main-right','default'),(34,'main','mobile_default'),(35,'left-main','demo'),(35,'left-main','demo2'),(35,'left-main','demodemo'),(35,'left-main','phubinh'),(35,'left-main','quangninh'),(35,'left-main','tintuc'),(35,'left-main-right','default'),(35,'main','mobile_default'),(36,'left-main','demo'),(36,'left-main','demo2'),(36,'left-main','demodemo'),(36,'left-main','phubinh'),(36,'left-main','quangninh'),(36,'left-main','tintuc'),(36,'left-main-right','default'),(36,'main','mobile_default'),(37,'left-main','demo'),(37,'left-main','demo2'),(37,'left-main','demodemo'),(37,'left-main','phubinh'),(37,'left-main','quangninh'),(37,'left-main','tintuc'),(37,'left-main-right','default'),(37,'main','mobile_default'),(38,'left-main-right','default'),(38,'left-main-right','demo'),(38,'left-main-right','demo2'),(38,'left-main-right','demodemo'),(38,'left-main-right','phubinh'),(38,'left-main-right','quangninh'),(38,'left-main-right','tintuc'),(38,'main','mobile_default'),(39,'left-main-right','default'),(39,'left-main-right','demo'),(39,'left-main-right','demo2'),(39,'left-main-right','demodemo'),(39,'left-main-right','phubinh'),(39,'left-main-right','quangninh'),(39,'left-main-right','tintuc'),(39,'main','mobile_default'),(40,'left-main-right','default'),(40,'left-main-right','demo'),(40,'left-main-right','demo2'),(40,'left-main-right','demodemo'),(40,'left-main-right','phubinh'),(40,'left-main-right','quangninh'),(40,'left-main-right','tintuc'),(40,'main','mobile_default'),(41,'left-main-right','default'),(41,'left-main-right','demo'),(41,'left-main-right','demo2'),(41,'left-main-right','demodemo'),(41,'left-main-right','phubinh'),(41,'left-main-right','quangninh'),(41,'left-main-right','tintuc'),(41,'main','mobile_default'),(47,'left-main-right','default'),(47,'left-main-right','demo'),(47,'left-main-right','demo2'),(47,'left-main-right','demodemo'),(47,'left-main-right','phubinh'),(47,'left-main-right','quangninh'),(47,'left-main-right','tintuc'),(47,'main','mobile_default'),(48,'left-main-right','default'),(48,'left-main-right','demo'),(48,'left-main-right','demo2'),(48,'left-main-right','demodemo'),(48,'left-main-right','phubinh'),(48,'left-main-right','quangninh'),(48,'left-main-right','tintuc'),(48,'main','mobile_default'),(49,'left-main-right','default'),(49,'left-main-right','demo'),(49,'left-main-right','demo2'),(49,'left-main-right','demodemo'),(49,'left-main-right','phubinh'),(49,'left-main-right','quangninh'),(49,'left-main-right','tintuc'),(49,'main','mobile_default'),(50,'left-main-right','default'),(50,'left-main-right','demo'),(50,'left-main-right','demo2'),(50,'left-main-right','demodemo'),(50,'left-main-right','phubinh'),(50,'left-main-right','quangninh'),(50,'left-main-right','tintuc'),(50,'main','mobile_default'),(51,'left-main-right','default'),(51,'left-main-right','demo'),(51,'left-main-right','demo2'),(51,'left-main-right','demodemo'),(51,'left-main-right','phubinh'),(51,'left-main-right','quangninh'),(51,'left-main-right','tintuc'),(52,'left-main','demo'),(52,'left-main','demo2'),(52,'left-main','demodemo'),(52,'left-main','phubinh'),(52,'left-main','quangninh'),(52,'left-main','tintuc'),(52,'left-main-right','default'),(52,'main','mobile_default'),(55,'left-main-right','default'),(55,'left-main-right','demo'),(55,'left-main-right','demo2'),(55,'left-main-right','demodemo'),(55,'left-main-right','phubinh'),(55,'left-main-right','quangninh'),(55,'left-main-right','tintuc'),(55,'main','mobile_default'),(56,'left-main-right','default'),(56,'left-main-right','demo'),(56,'left-main-right','demo2'),(56,'left-main-right','demodemo'),(56,'left-main-right','phubinh'),(56,'left-main-right','quangninh'),(56,'left-main-right','tintuc'),(56,'main','mobile_default'),(58,'left-main-right','default'),(58,'left-main-right','demo'),(58,'left-main-right','demo2'),(58,'left-main-right','demodemo'),(58,'left-main-right','phubinh'),(58,'left-main-right','quangninh'),(58,'left-main-right','tintuc'),(58,'main','mobile_default'),(59,'left-main-right','default'),(59,'left-main-right','demo'),(59,'left-main-right','demo2'),(59,'left-main-right','demodemo'),(59,'left-main-right','phubinh'),(59,'left-main-right','quangninh'),(59,'left-main-right','tintuc'),(59,'main','mobile_default'),(60,'left-main-right','default'),(60,'left-main-right','demo'),(60,'left-main-right','demo2'),(60,'left-main-right','demodemo'),(60,'left-main-right','phubinh'),(60,'left-main-right','quangninh'),(60,'left-main-right','tintuc'),(60,'main','mobile_default'),(61,'left-main','demo'),(61,'left-main','demo2'),(61,'left-main','demodemo'),(61,'left-main','phubinh'),(61,'left-main','quangninh'),(61,'left-main','tintuc'),(61,'left-main-right','default'),(61,'main','mobile_default'),(62,'left-main','demo'),(62,'left-main','demo2'),(62,'left-main','demodemo'),(62,'left-main','phubinh'),(62,'left-main','quangninh'),(62,'left-main','tintuc'),(62,'left-main-right','default'),(62,'main','mobile_default'),(63,'left-main-right','default'),(63,'left-main-right','demo'),(63,'left-main-right','demo2'),(63,'left-main-right','demodemo'),(63,'left-main-right','phubinh'),(63,'left-main-right','quangninh'),(63,'left-main-right','tintuc'),(63,'main','mobile_default'),(64,'left-main-right','default'),(64,'left-main-right','demo'),(64,'left-main-right','demo2'),(64,'left-main-right','demodemo'),(64,'left-main-right','phubinh'),(64,'left-main-right','quangninh'),(64,'left-main-right','tintuc'),(64,'main','mobile_default');
/*!40000 ALTER TABLE `nv4_vi_modthemes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_modules`
--

DROP TABLE IF EXISTS `nv4_vi_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_modules` (
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module_file` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `module_data` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `module_upload` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `module_theme` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `custom_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `admin_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `set_time` int(11) unsigned NOT NULL DEFAULT '0',
  `main_file` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `admin_file` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `theme` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `mobile` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `keywords` text COLLATE utf8mb4_unicode_ci,
  `groups_view` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `act` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `admins` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `rss` tinyint(4) NOT NULL DEFAULT '1',
  `sitemap` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`title`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_modules`
--

LOCK TABLES `nv4_vi_modules` WRITE;
/*!40000 ALTER TABLE `nv4_vi_modules` DISABLE KEYS */;
INSERT INTO `nv4_vi_modules` VALUES ('about','page','about','about','page','Giới thiệu','','',1552401040,1,1,'','','','','6',1,1,'',1,1),('news','news','news','news','news','Tin Tức','','',1552401040,1,1,'','','','','6',2,1,'',1,1),('users','users','users','users','users','Thành viên','','Tài khoản',1552401040,1,1,'','','','','6',3,1,'',0,1),('contact','contact','contact','contact','contact','Liên hệ','','',1552401040,1,1,'','','','','6',4,1,'',0,1),('statistics','statistics','statistics','statistics','statistics','Thống kê','','',1552401040,1,1,'','','','online, statistics','6',5,1,'',0,1),('voting','voting','voting','voting','voting','Thăm dò ý kiến','','',1552401040,1,1,'','','','','6',6,1,'',1,1),('banners','banners','banners','banners','banners','Quảng cáo','','',1552401040,1,1,'','','','','6',7,1,'',0,1),('seek','seek','seek','seek','seek','Tìm kiếm','','',1552401040,1,0,'','','','','6',8,1,'',0,1),('menu','menu','menu','menu','menu','Menu Site','','',1552401040,0,1,'','','','','6',9,1,'',0,1),('feeds','feeds','feeds','feeds','feeds','RSS-feeds','','RSS-feeds',1552401040,1,1,'','','','','6',10,1,'',0,1),('page','page','page','page','page','Page','','',1552401040,1,1,'','','','','6',11,1,'',1,1),('comment','comment','comment','comment','comment','Bình luận','','Quản lý bình luận',1552401040,0,1,'','','','','6',12,1,'',0,1),('siteterms','page','siteterms','siteterms','page','Điều khoản sử dụng','','',1552401040,1,1,'','','','','6',13,1,'',1,1),('freecontent','freecontent','freecontent','freecontent','freecontent','Giới thiệu sản phẩm','','',1552401040,0,1,'','','','','6',14,1,'',0,1),('two-step-verification','two-step-verification','two_step_verification','two_step_verification','two-step-verification','Xác thực hai bước','','',1552401040,1,0,'','','','','6',15,1,'',0,1);
/*!40000 ALTER TABLE `nv4_vi_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_news_13`
--

DROP TABLE IF EXISTS `nv4_vi_news_13`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_news_13` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `weight` int(11) unsigned NOT NULL DEFAULT '0',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `external_link` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  `instant_active` tinyint(1) NOT NULL DEFAULT '0',
  `instant_template` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`),
  KEY `topicid` (`topicid`),
  KEY `admin_id` (`admin_id`),
  KEY `author` (`author`),
  KEY `title` (`title`),
  KEY `addtime` (`addtime`),
  KEY `edittime` (`edittime`),
  KEY `publtime` (`publtime`),
  KEY `exptime` (`exptime`),
  KEY `status` (`status`),
  KEY `instant_active` (`instant_active`),
  KEY `instant_creatauto` (`instant_creatauto`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_news_13`
--

LOCK TABLES `nv4_vi_news_13` WRITE;
/*!40000 ALTER TABLE `nv4_vi_news_13` DISABLE KEYS */;
INSERT INTO `nv4_vi_news_13` VALUES (44,14,'13,14',0,1,'Hồng Minh - Hội CTĐ huyện Quảng Ninh',0,1552985810,1552985810,1,22,1552985460,0,2,'Sức lan tỏa từ phong trào hiến máu tình nguyện','suc-lan-toa-tu-phong-trao-hien-mau-tinh-nguyen','Là một chương trình hoạt động xã hội giàu ý nghĩa nhân văn, những năm gần đây, phong trào HMTN đã và đang có sức lan tỏa sâu rộng trong đời sống xã hội.','2019_03/20170510_075051.jpg','',1,1,'4',1,0,1,0,0,0,0,'',0),(45,14,'13,14',0,1,'Hồng Minh - Hội CTĐ huyện Quảng Ninh',0,1552986040,1552986040,1,23,1552985820,0,2,'Lời cám ơn đến từ sáng mồng một tết','loi-cam-on-den-tu-sang-mong-mot-tet','Sáng 01 tết nguyên đán, đúng 7h sáng, chuông điện thoại reo lên. Một thoáng giật mình bởi mới sang mồng một tết Nguyên Đán, tết của đoàn viên, tết của gia đình, họ hàng, tổ tiên. Không ngoại lệ, tôi cũng đang tư thế chỉnh tề, chuẩn bị cùng gia đình, chồng con lên đường viếng mộ người thân, tổ tiên dòng tộc. Chuông điên thoại tiếp tục vang lên, nhìn số điện thoại người quen, không khỏi chút bất ngờ, xen lẫn sự nghi ngờ và lo lắng . Bởi đây là số điện thoại của một địa chỉ nhân đạo mà Hội Chữ thập đỏ huyện Quảng Ninh chúng tôi đứng ra vận động hỗ trợ trong năm 2016.','2019_03/dc-le-thi-minh-hai-chu-tich-ubmttqvn-huyen-va-dc-bui-van-mieng-chu-tich-ldld-huyen-den-tham.jpg','',1,1,'4',1,0,1,0,0,0,0,'',0),(48,15,'13,15',0,1,'Hồng Minh - Hội CTĐ Quảng Ninh',0,1552987598,1552987598,1,26,1552987440,0,2,'Hãy cho em một đôi mắt sáng','hay-cho-em-mot-doi-mat-sang','Đôi mắt là nguồn ánh sáng của cuộc đời, ai sinh ra, lớn lên, học hành và thành đạt cũng nhờ đôi mắt. Vậy mà bé Đoàn Đại Quang, xóm 3 thôn Trúc Ly, xã Võ Ninh, sau khi chào đời được 6 tháng thì đôi mắt đã không còn nhìn thấy được .','2019_03/received_337938483625271.jpeg','',1,1,'4',1,0,3,0,0,0,0,'',0);
/*!40000 ALTER TABLE `nv4_vi_news_13` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_news_14`
--

DROP TABLE IF EXISTS `nv4_vi_news_14`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_news_14` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `weight` int(11) unsigned NOT NULL DEFAULT '0',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `external_link` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  `instant_active` tinyint(1) NOT NULL DEFAULT '0',
  `instant_template` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`),
  KEY `topicid` (`topicid`),
  KEY `admin_id` (`admin_id`),
  KEY `author` (`author`),
  KEY `title` (`title`),
  KEY `addtime` (`addtime`),
  KEY `edittime` (`edittime`),
  KEY `publtime` (`publtime`),
  KEY `exptime` (`exptime`),
  KEY `status` (`status`),
  KEY `instant_active` (`instant_active`),
  KEY `instant_creatauto` (`instant_creatauto`)
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_news_14`
--

LOCK TABLES `nv4_vi_news_14` WRITE;
/*!40000 ALTER TABLE `nv4_vi_news_14` DISABLE KEYS */;
INSERT INTO `nv4_vi_news_14` VALUES (44,14,'13,14',0,1,'Hồng Minh - Hội CTĐ huyện Quảng Ninh',0,1552985810,1552985810,1,22,1552985460,0,2,'Sức lan tỏa từ phong trào hiến máu tình nguyện','suc-lan-toa-tu-phong-trao-hien-mau-tinh-nguyen','Là một chương trình hoạt động xã hội giàu ý nghĩa nhân văn, những năm gần đây, phong trào HMTN đã và đang có sức lan tỏa sâu rộng trong đời sống xã hội.','2019_03/20170510_075051.jpg','',1,1,'4',1,0,1,0,0,0,0,'',0),(45,14,'13,14',0,1,'Hồng Minh - Hội CTĐ huyện Quảng Ninh',0,1552986040,1552986040,1,23,1552985820,0,2,'Lời cám ơn đến từ sáng mồng một tết','loi-cam-on-den-tu-sang-mong-mot-tet','Sáng 01 tết nguyên đán, đúng 7h sáng, chuông điện thoại reo lên. Một thoáng giật mình bởi mới sang mồng một tết Nguyên Đán, tết của đoàn viên, tết của gia đình, họ hàng, tổ tiên. Không ngoại lệ, tôi cũng đang tư thế chỉnh tề, chuẩn bị cùng gia đình, chồng con lên đường viếng mộ người thân, tổ tiên dòng tộc. Chuông điên thoại tiếp tục vang lên, nhìn số điện thoại người quen, không khỏi chút bất ngờ, xen lẫn sự nghi ngờ và lo lắng . Bởi đây là số điện thoại của một địa chỉ nhân đạo mà Hội Chữ thập đỏ huyện Quảng Ninh chúng tôi đứng ra vận động hỗ trợ trong năm 2016.','2019_03/dc-le-thi-minh-hai-chu-tich-ubmttqvn-huyen-va-dc-bui-van-mieng-chu-tich-ldld-huyen-den-tham.jpg','',1,1,'4',1,0,1,0,0,0,0,'',0);
/*!40000 ALTER TABLE `nv4_vi_news_14` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_news_15`
--

DROP TABLE IF EXISTS `nv4_vi_news_15`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_news_15` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `weight` int(11) unsigned NOT NULL DEFAULT '0',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `external_link` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  `instant_active` tinyint(1) NOT NULL DEFAULT '0',
  `instant_template` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`),
  KEY `topicid` (`topicid`),
  KEY `admin_id` (`admin_id`),
  KEY `author` (`author`),
  KEY `title` (`title`),
  KEY `addtime` (`addtime`),
  KEY `edittime` (`edittime`),
  KEY `publtime` (`publtime`),
  KEY `exptime` (`exptime`),
  KEY `status` (`status`),
  KEY `instant_active` (`instant_active`),
  KEY `instant_creatauto` (`instant_creatauto`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_news_15`
--

LOCK TABLES `nv4_vi_news_15` WRITE;
/*!40000 ALTER TABLE `nv4_vi_news_15` DISABLE KEYS */;
INSERT INTO `nv4_vi_news_15` VALUES (47,15,'15',0,1,'Hồng Minh - Hội CTĐ huyện Quảng Ninh',0,1552987110,1552987143,1,25,1552986900,0,2,'Hãy giúp em Lý vượt qua hoàn cảnh','hay-giup-em-ly-vuot-qua-hoan-canh','Đó là em Võ Thị Lý, sinh năm 2002, thôn Hoành Vinh, xã An Ninh, huyện Quảng Ninh. Lý đang là học sinh lớp 11A6, trường THPT Quảng Ninh. Nhiều năm liền Lý luôn là học sinh giỏi tòan diện tất cả các môn học, trong đó nhiều năm liền Lý đạt các giải thi học sinh giỏi môn Vật lý, Toán, Văn. Hiện nay, gia đình em đang rơi vào hoàn cảnh đặc biệt khó khăn và em đang có nguy cơ bỏ học.','2019_03/em-ly.jpg','',1,1,'4',1,0,3,0,0,0,0,'',0),(48,15,'13,15',0,1,'Hồng Minh - Hội CTĐ Quảng Ninh',0,1552987598,1552987598,1,26,1552987440,0,2,'Hãy cho em một đôi mắt sáng','hay-cho-em-mot-doi-mat-sang','Đôi mắt là nguồn ánh sáng của cuộc đời, ai sinh ra, lớn lên, học hành và thành đạt cũng nhờ đôi mắt. Vậy mà bé Đoàn Đại Quang, xóm 3 thôn Trúc Ly, xã Võ Ninh, sau khi chào đời được 6 tháng thì đôi mắt đã không còn nhìn thấy được .','2019_03/received_337938483625271.jpeg','',1,1,'4',1,0,3,0,0,0,0,'',0);
/*!40000 ALTER TABLE `nv4_vi_news_15` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_news_16`
--

DROP TABLE IF EXISTS `nv4_vi_news_16`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_news_16` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `weight` int(11) unsigned NOT NULL DEFAULT '0',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `external_link` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  `instant_active` tinyint(1) NOT NULL DEFAULT '0',
  `instant_template` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`),
  KEY `topicid` (`topicid`),
  KEY `admin_id` (`admin_id`),
  KEY `author` (`author`),
  KEY `title` (`title`),
  KEY `addtime` (`addtime`),
  KEY `edittime` (`edittime`),
  KEY `publtime` (`publtime`),
  KEY `exptime` (`exptime`),
  KEY `status` (`status`),
  KEY `instant_active` (`instant_active`),
  KEY `instant_creatauto` (`instant_creatauto`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_news_16`
--

LOCK TABLES `nv4_vi_news_16` WRITE;
/*!40000 ALTER TABLE `nv4_vi_news_16` DISABLE KEYS */;
/*!40000 ALTER TABLE `nv4_vi_news_16` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_news_17`
--

DROP TABLE IF EXISTS `nv4_vi_news_17`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_news_17` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `weight` int(11) unsigned NOT NULL DEFAULT '0',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `external_link` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  `instant_active` tinyint(1) NOT NULL DEFAULT '0',
  `instant_template` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`),
  KEY `topicid` (`topicid`),
  KEY `admin_id` (`admin_id`),
  KEY `author` (`author`),
  KEY `title` (`title`),
  KEY `addtime` (`addtime`),
  KEY `edittime` (`edittime`),
  KEY `publtime` (`publtime`),
  KEY `exptime` (`exptime`),
  KEY `status` (`status`),
  KEY `instant_active` (`instant_active`),
  KEY `instant_creatauto` (`instant_creatauto`)
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_news_17`
--

LOCK TABLES `nv4_vi_news_17` WRITE;
/*!40000 ALTER TABLE `nv4_vi_news_17` DISABLE KEYS */;
/*!40000 ALTER TABLE `nv4_vi_news_17` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_news_18`
--

DROP TABLE IF EXISTS `nv4_vi_news_18`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_news_18` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `weight` int(11) unsigned NOT NULL DEFAULT '0',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `external_link` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  `instant_active` tinyint(1) NOT NULL DEFAULT '0',
  `instant_template` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`),
  KEY `topicid` (`topicid`),
  KEY `admin_id` (`admin_id`),
  KEY `author` (`author`),
  KEY `title` (`title`),
  KEY `addtime` (`addtime`),
  KEY `edittime` (`edittime`),
  KEY `publtime` (`publtime`),
  KEY `exptime` (`exptime`),
  KEY `status` (`status`),
  KEY `instant_active` (`instant_active`),
  KEY `instant_creatauto` (`instant_creatauto`)
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_news_18`
--

LOCK TABLES `nv4_vi_news_18` WRITE;
/*!40000 ALTER TABLE `nv4_vi_news_18` DISABLE KEYS */;
INSERT INTO `nv4_vi_news_18` VALUES (46,27,'18,27',0,1,'',0,1552986486,1552986486,1,24,1552986420,0,2,'Quảng Ninh học tập tư tưởng Hồ Chí Minh về bảo tồn văn hóa','quang-ninh-hoc-tap-tu-tuong-ho-chi-minh-ve-bao-ton-van-hoa','Trong cuộc đời hoạt động của Chủ tịch Hồ Chí Minh, Người luôn luôn coi trọng vấn đề văn hóa, định nghĩa về văn hoá, Bác Hồ viết: “Vì lẽ sinh tồn cũng như mục đích của cuộc sống, loài người mới sáng tạo và phát minh ra ngôn ngữ, chữ viết, đạo đức, pháp luật, khoa học, tôn giáo, văn học, nghệ thuật, những công cụ cho sinh hoạt hằng ngày về mặc, ăn, ở và phương thức sử dụng. Toàn bộ những sáng tạo và phát minh đó tức là văn hóa. Văn hóa là sự tổng hợp của mọi phương thức sinh hoạt cùng với biểu hiện của nó mà loài người đã sản sinh ra nhằm thích ứng những nhu cầu đời sống và đòi hỏi của sự sinh tồn”.','2019_03/dsc04091_1448871663322.jpg','',1,1,'4',1,0,2,0,0,0,0,'',0);
/*!40000 ALTER TABLE `nv4_vi_news_18` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_news_19`
--

DROP TABLE IF EXISTS `nv4_vi_news_19`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_news_19` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `weight` int(11) unsigned NOT NULL DEFAULT '0',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `external_link` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  `instant_active` tinyint(1) NOT NULL DEFAULT '0',
  `instant_template` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`),
  KEY `topicid` (`topicid`),
  KEY `admin_id` (`admin_id`),
  KEY `author` (`author`),
  KEY `title` (`title`),
  KEY `addtime` (`addtime`),
  KEY `edittime` (`edittime`),
  KEY `publtime` (`publtime`),
  KEY `exptime` (`exptime`),
  KEY `status` (`status`),
  KEY `instant_active` (`instant_active`),
  KEY `instant_creatauto` (`instant_creatauto`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_news_19`
--

LOCK TABLES `nv4_vi_news_19` WRITE;
/*!40000 ALTER TABLE `nv4_vi_news_19` DISABLE KEYS */;
INSERT INTO `nv4_vi_news_19` VALUES (42,19,'19',0,1,'',0,1552983816,1552983816,1,3,1552983720,0,2,'Thông báo về thời gian giám sát của Ban Pháp chế HĐND huyện','thong-bao-ve-thoi-gian-giam-sat-cua-ban-phap-che-hdnd-huyen','Thực hiện Nghị quyết số 04/NQ – HĐND ngày 09/7/2018 của HĐND huyện về chương trình giám sát của Hội đồng nhân dân huyện năm 2019,  Quyết định số 12/QĐ-HĐND-BPC ngày 27/02/2019 về việc thành lập Đoàn giám sát của Ban Pháp chế HĐND huyện, Đoàn giám sát thông báo thời gian làm việc cụ thể tại UBND các xã chịu sự giám sát như sau:','','',0,1,'4',1,0,0,0,0,0,0,'',0),(43,19,'19',0,1,'',0,1552985166,1552985166,1,21,1552985100,0,2,'Kết quả lấy phiếu tín nhiệm đối với người giữ chức vụ do HĐND huyện bầu','ket-qua-lay-phieu-tin-nhiem-doi-voi-nguoi-giu-chuc-vu-do-hdnd-huyen-bau','Kết quả lấy phiếu tín nhiệm đối với người giữ chức vụ do HĐND huyện bầu <br />Kỳ họp thứ 9, Hội đồng nhân dân huyện khóa XIX nhiệm kỳ 2016-2021 đã hoàn thành việc lấy phiếu tín nhiệm đối với 20 người giữ chức vụ do Hội đồng nhân dân bầu.','2019_03/img_15881.jpg','',1,1,'4',1,0,0,0,0,0,0,'',0);
/*!40000 ALTER TABLE `nv4_vi_news_19` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_news_20`
--

DROP TABLE IF EXISTS `nv4_vi_news_20`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_news_20` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `weight` int(11) unsigned NOT NULL DEFAULT '0',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `external_link` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  `instant_active` tinyint(1) NOT NULL DEFAULT '0',
  `instant_template` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`),
  KEY `topicid` (`topicid`),
  KEY `admin_id` (`admin_id`),
  KEY `author` (`author`),
  KEY `title` (`title`),
  KEY `addtime` (`addtime`),
  KEY `edittime` (`edittime`),
  KEY `publtime` (`publtime`),
  KEY `exptime` (`exptime`),
  KEY `status` (`status`),
  KEY `instant_active` (`instant_active`),
  KEY `instant_creatauto` (`instant_creatauto`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_news_20`
--

LOCK TABLES `nv4_vi_news_20` WRITE;
/*!40000 ALTER TABLE `nv4_vi_news_20` DISABLE KEYS */;
/*!40000 ALTER TABLE `nv4_vi_news_20` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_news_21`
--

DROP TABLE IF EXISTS `nv4_vi_news_21`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_news_21` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `weight` int(11) unsigned NOT NULL DEFAULT '0',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `external_link` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  `instant_active` tinyint(1) NOT NULL DEFAULT '0',
  `instant_template` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`),
  KEY `topicid` (`topicid`),
  KEY `admin_id` (`admin_id`),
  KEY `author` (`author`),
  KEY `title` (`title`),
  KEY `addtime` (`addtime`),
  KEY `edittime` (`edittime`),
  KEY `publtime` (`publtime`),
  KEY `exptime` (`exptime`),
  KEY `status` (`status`),
  KEY `instant_active` (`instant_active`),
  KEY `instant_creatauto` (`instant_creatauto`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_news_21`
--

LOCK TABLES `nv4_vi_news_21` WRITE;
/*!40000 ALTER TABLE `nv4_vi_news_21` DISABLE KEYS */;
/*!40000 ALTER TABLE `nv4_vi_news_21` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_news_22`
--

DROP TABLE IF EXISTS `nv4_vi_news_22`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_news_22` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `weight` int(11) unsigned NOT NULL DEFAULT '0',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `external_link` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  `instant_active` tinyint(1) NOT NULL DEFAULT '0',
  `instant_template` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`),
  KEY `topicid` (`topicid`),
  KEY `admin_id` (`admin_id`),
  KEY `author` (`author`),
  KEY `title` (`title`),
  KEY `addtime` (`addtime`),
  KEY `edittime` (`edittime`),
  KEY `publtime` (`publtime`),
  KEY `exptime` (`exptime`),
  KEY `status` (`status`),
  KEY `instant_active` (`instant_active`),
  KEY `instant_creatauto` (`instant_creatauto`)
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_news_22`
--

LOCK TABLES `nv4_vi_news_22` WRITE;
/*!40000 ALTER TABLE `nv4_vi_news_22` DISABLE KEYS */;
INSERT INTO `nv4_vi_news_22` VALUES (49,22,'22',0,1,'',0,1552987825,1552987839,1,20,1552987740,0,2,'Kết luận của đồng chí Chủ tịch UBND huyện tại buổi làm việc về thuyên chuyển giáo viên, nhân viên các trường học đầu năm 2019','ket-luan-cua-dong-chi-chu-tich-ubnd-huyen-tai-buoi-lam-viec-ve-thuyen-chuyen-giao-vien-nhan-vien-cac-truong-hoc-dau-nam-2019','Ngày 14/01/2019, UBND huyện tổ chức làm việc với các ngành về thuyên chuyển giáo viên, nhân viên các trường học trực thuộc đầu năm 2019, đồng chí Phạm Trung Đông - Chủ tịch UBND huyện chủ trì. Tham dự làm việc có đồng chí Lê Ngọc Huân, Phó Chủ tịch UBND huyện; thủ trưởng và công chức phụ trách thuộc các ngành, đơn vị: Giáo dục Đào tạo, Nội vụ, Văn phòng HĐND và UBND huyện.','','',0,1,'4',1,0,0,0,0,0,0,'',0);
/*!40000 ALTER TABLE `nv4_vi_news_22` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_news_23`
--

DROP TABLE IF EXISTS `nv4_vi_news_23`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_news_23` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `weight` int(11) unsigned NOT NULL DEFAULT '0',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `external_link` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  `instant_active` tinyint(1) NOT NULL DEFAULT '0',
  `instant_template` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`),
  KEY `topicid` (`topicid`),
  KEY `admin_id` (`admin_id`),
  KEY `author` (`author`),
  KEY `title` (`title`),
  KEY `addtime` (`addtime`),
  KEY `edittime` (`edittime`),
  KEY `publtime` (`publtime`),
  KEY `exptime` (`exptime`),
  KEY `status` (`status`),
  KEY `instant_active` (`instant_active`),
  KEY `instant_creatauto` (`instant_creatauto`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_news_23`
--

LOCK TABLES `nv4_vi_news_23` WRITE;
/*!40000 ALTER TABLE `nv4_vi_news_23` DISABLE KEYS */;
/*!40000 ALTER TABLE `nv4_vi_news_23` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_news_24`
--

DROP TABLE IF EXISTS `nv4_vi_news_24`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_news_24` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `weight` int(11) unsigned NOT NULL DEFAULT '0',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `external_link` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  `instant_active` tinyint(1) NOT NULL DEFAULT '0',
  `instant_template` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`),
  KEY `topicid` (`topicid`),
  KEY `admin_id` (`admin_id`),
  KEY `author` (`author`),
  KEY `title` (`title`),
  KEY `addtime` (`addtime`),
  KEY `edittime` (`edittime`),
  KEY `publtime` (`publtime`),
  KEY `exptime` (`exptime`),
  KEY `status` (`status`),
  KEY `instant_active` (`instant_active`),
  KEY `instant_creatauto` (`instant_creatauto`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_news_24`
--

LOCK TABLES `nv4_vi_news_24` WRITE;
/*!40000 ALTER TABLE `nv4_vi_news_24` DISABLE KEYS */;
/*!40000 ALTER TABLE `nv4_vi_news_24` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_news_25`
--

DROP TABLE IF EXISTS `nv4_vi_news_25`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_news_25` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `weight` int(11) unsigned NOT NULL DEFAULT '0',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `external_link` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  `instant_active` tinyint(1) NOT NULL DEFAULT '0',
  `instant_template` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`),
  KEY `topicid` (`topicid`),
  KEY `admin_id` (`admin_id`),
  KEY `author` (`author`),
  KEY `title` (`title`),
  KEY `addtime` (`addtime`),
  KEY `edittime` (`edittime`),
  KEY `publtime` (`publtime`),
  KEY `exptime` (`exptime`),
  KEY `status` (`status`),
  KEY `instant_active` (`instant_active`),
  KEY `instant_creatauto` (`instant_creatauto`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_news_25`
--

LOCK TABLES `nv4_vi_news_25` WRITE;
/*!40000 ALTER TABLE `nv4_vi_news_25` DISABLE KEYS */;
/*!40000 ALTER TABLE `nv4_vi_news_25` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_news_26`
--

DROP TABLE IF EXISTS `nv4_vi_news_26`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_news_26` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `weight` int(11) unsigned NOT NULL DEFAULT '0',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `external_link` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  `instant_active` tinyint(1) NOT NULL DEFAULT '0',
  `instant_template` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`),
  KEY `topicid` (`topicid`),
  KEY `admin_id` (`admin_id`),
  KEY `author` (`author`),
  KEY `title` (`title`),
  KEY `addtime` (`addtime`),
  KEY `edittime` (`edittime`),
  KEY `publtime` (`publtime`),
  KEY `exptime` (`exptime`),
  KEY `status` (`status`),
  KEY `instant_active` (`instant_active`),
  KEY `instant_creatauto` (`instant_creatauto`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_news_26`
--

LOCK TABLES `nv4_vi_news_26` WRITE;
/*!40000 ALTER TABLE `nv4_vi_news_26` DISABLE KEYS */;
/*!40000 ALTER TABLE `nv4_vi_news_26` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_news_27`
--

DROP TABLE IF EXISTS `nv4_vi_news_27`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_news_27` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `weight` int(11) unsigned NOT NULL DEFAULT '0',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `external_link` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  `instant_active` tinyint(1) NOT NULL DEFAULT '0',
  `instant_template` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`),
  KEY `topicid` (`topicid`),
  KEY `admin_id` (`admin_id`),
  KEY `author` (`author`),
  KEY `title` (`title`),
  KEY `addtime` (`addtime`),
  KEY `edittime` (`edittime`),
  KEY `publtime` (`publtime`),
  KEY `exptime` (`exptime`),
  KEY `status` (`status`),
  KEY `instant_active` (`instant_active`),
  KEY `instant_creatauto` (`instant_creatauto`)
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_news_27`
--

LOCK TABLES `nv4_vi_news_27` WRITE;
/*!40000 ALTER TABLE `nv4_vi_news_27` DISABLE KEYS */;
INSERT INTO `nv4_vi_news_27` VALUES (46,27,'18,27',0,1,'',0,1552986486,1552986486,1,24,1552986420,0,2,'Quảng Ninh học tập tư tưởng Hồ Chí Minh về bảo tồn văn hóa','quang-ninh-hoc-tap-tu-tuong-ho-chi-minh-ve-bao-ton-van-hoa','Trong cuộc đời hoạt động của Chủ tịch Hồ Chí Minh, Người luôn luôn coi trọng vấn đề văn hóa, định nghĩa về văn hoá, Bác Hồ viết: “Vì lẽ sinh tồn cũng như mục đích của cuộc sống, loài người mới sáng tạo và phát minh ra ngôn ngữ, chữ viết, đạo đức, pháp luật, khoa học, tôn giáo, văn học, nghệ thuật, những công cụ cho sinh hoạt hằng ngày về mặc, ăn, ở và phương thức sử dụng. Toàn bộ những sáng tạo và phát minh đó tức là văn hóa. Văn hóa là sự tổng hợp của mọi phương thức sinh hoạt cùng với biểu hiện của nó mà loài người đã sản sinh ra nhằm thích ứng những nhu cầu đời sống và đòi hỏi của sự sinh tồn”.','2019_03/dsc04091_1448871663322.jpg','',1,1,'4',1,0,2,0,0,0,0,'',0);
/*!40000 ALTER TABLE `nv4_vi_news_27` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_news_28`
--

DROP TABLE IF EXISTS `nv4_vi_news_28`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_news_28` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `weight` int(11) unsigned NOT NULL DEFAULT '0',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `external_link` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  `instant_active` tinyint(1) NOT NULL DEFAULT '0',
  `instant_template` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`),
  KEY `topicid` (`topicid`),
  KEY `admin_id` (`admin_id`),
  KEY `author` (`author`),
  KEY `title` (`title`),
  KEY `addtime` (`addtime`),
  KEY `edittime` (`edittime`),
  KEY `publtime` (`publtime`),
  KEY `exptime` (`exptime`),
  KEY `status` (`status`),
  KEY `instant_active` (`instant_active`),
  KEY `instant_creatauto` (`instant_creatauto`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_news_28`
--

LOCK TABLES `nv4_vi_news_28` WRITE;
/*!40000 ALTER TABLE `nv4_vi_news_28` DISABLE KEYS */;
/*!40000 ALTER TABLE `nv4_vi_news_28` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_news_29`
--

DROP TABLE IF EXISTS `nv4_vi_news_29`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_news_29` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `weight` int(11) unsigned NOT NULL DEFAULT '0',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `external_link` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  `instant_active` tinyint(1) NOT NULL DEFAULT '0',
  `instant_template` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`),
  KEY `topicid` (`topicid`),
  KEY `admin_id` (`admin_id`),
  KEY `author` (`author`),
  KEY `title` (`title`),
  KEY `addtime` (`addtime`),
  KEY `edittime` (`edittime`),
  KEY `publtime` (`publtime`),
  KEY `exptime` (`exptime`),
  KEY `status` (`status`),
  KEY `instant_active` (`instant_active`),
  KEY `instant_creatauto` (`instant_creatauto`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_news_29`
--

LOCK TABLES `nv4_vi_news_29` WRITE;
/*!40000 ALTER TABLE `nv4_vi_news_29` DISABLE KEYS */;
/*!40000 ALTER TABLE `nv4_vi_news_29` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_news_30`
--

DROP TABLE IF EXISTS `nv4_vi_news_30`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_news_30` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `weight` int(11) unsigned NOT NULL DEFAULT '0',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `external_link` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  `instant_active` tinyint(1) NOT NULL DEFAULT '0',
  `instant_template` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`),
  KEY `topicid` (`topicid`),
  KEY `admin_id` (`admin_id`),
  KEY `author` (`author`),
  KEY `title` (`title`),
  KEY `addtime` (`addtime`),
  KEY `edittime` (`edittime`),
  KEY `publtime` (`publtime`),
  KEY `exptime` (`exptime`),
  KEY `status` (`status`),
  KEY `instant_active` (`instant_active`),
  KEY `instant_creatauto` (`instant_creatauto`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_news_30`
--

LOCK TABLES `nv4_vi_news_30` WRITE;
/*!40000 ALTER TABLE `nv4_vi_news_30` DISABLE KEYS */;
/*!40000 ALTER TABLE `nv4_vi_news_30` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_news_31`
--

DROP TABLE IF EXISTS `nv4_vi_news_31`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_news_31` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `weight` int(11) unsigned NOT NULL DEFAULT '0',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `external_link` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  `instant_active` tinyint(1) NOT NULL DEFAULT '0',
  `instant_template` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`),
  KEY `topicid` (`topicid`),
  KEY `admin_id` (`admin_id`),
  KEY `author` (`author`),
  KEY `title` (`title`),
  KEY `addtime` (`addtime`),
  KEY `edittime` (`edittime`),
  KEY `publtime` (`publtime`),
  KEY `exptime` (`exptime`),
  KEY `status` (`status`),
  KEY `instant_active` (`instant_active`),
  KEY `instant_creatauto` (`instant_creatauto`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_news_31`
--

LOCK TABLES `nv4_vi_news_31` WRITE;
/*!40000 ALTER TABLE `nv4_vi_news_31` DISABLE KEYS */;
/*!40000 ALTER TABLE `nv4_vi_news_31` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_news_32`
--

DROP TABLE IF EXISTS `nv4_vi_news_32`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_news_32` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `weight` int(11) unsigned NOT NULL DEFAULT '0',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `external_link` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  `instant_active` tinyint(1) NOT NULL DEFAULT '0',
  `instant_template` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`),
  KEY `topicid` (`topicid`),
  KEY `admin_id` (`admin_id`),
  KEY `author` (`author`),
  KEY `title` (`title`),
  KEY `addtime` (`addtime`),
  KEY `edittime` (`edittime`),
  KEY `publtime` (`publtime`),
  KEY `exptime` (`exptime`),
  KEY `status` (`status`),
  KEY `instant_active` (`instant_active`),
  KEY `instant_creatauto` (`instant_creatauto`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_news_32`
--

LOCK TABLES `nv4_vi_news_32` WRITE;
/*!40000 ALTER TABLE `nv4_vi_news_32` DISABLE KEYS */;
/*!40000 ALTER TABLE `nv4_vi_news_32` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_news_33`
--

DROP TABLE IF EXISTS `nv4_vi_news_33`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_news_33` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `weight` int(11) unsigned NOT NULL DEFAULT '0',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `external_link` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  `instant_active` tinyint(1) NOT NULL DEFAULT '0',
  `instant_template` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`),
  KEY `topicid` (`topicid`),
  KEY `admin_id` (`admin_id`),
  KEY `author` (`author`),
  KEY `title` (`title`),
  KEY `addtime` (`addtime`),
  KEY `edittime` (`edittime`),
  KEY `publtime` (`publtime`),
  KEY `exptime` (`exptime`),
  KEY `status` (`status`),
  KEY `instant_active` (`instant_active`),
  KEY `instant_creatauto` (`instant_creatauto`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_news_33`
--

LOCK TABLES `nv4_vi_news_33` WRITE;
/*!40000 ALTER TABLE `nv4_vi_news_33` DISABLE KEYS */;
/*!40000 ALTER TABLE `nv4_vi_news_33` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_news_34`
--

DROP TABLE IF EXISTS `nv4_vi_news_34`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_news_34` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `weight` int(11) unsigned NOT NULL DEFAULT '0',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `external_link` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  `instant_active` tinyint(1) NOT NULL DEFAULT '0',
  `instant_template` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`),
  KEY `topicid` (`topicid`),
  KEY `admin_id` (`admin_id`),
  KEY `author` (`author`),
  KEY `title` (`title`),
  KEY `addtime` (`addtime`),
  KEY `edittime` (`edittime`),
  KEY `publtime` (`publtime`),
  KEY `exptime` (`exptime`),
  KEY `status` (`status`),
  KEY `instant_active` (`instant_active`),
  KEY `instant_creatauto` (`instant_creatauto`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_news_34`
--

LOCK TABLES `nv4_vi_news_34` WRITE;
/*!40000 ALTER TABLE `nv4_vi_news_34` DISABLE KEYS */;
/*!40000 ALTER TABLE `nv4_vi_news_34` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_news_35`
--

DROP TABLE IF EXISTS `nv4_vi_news_35`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_news_35` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `weight` int(11) unsigned NOT NULL DEFAULT '0',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `external_link` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  `instant_active` tinyint(1) NOT NULL DEFAULT '0',
  `instant_template` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`),
  KEY `topicid` (`topicid`),
  KEY `admin_id` (`admin_id`),
  KEY `author` (`author`),
  KEY `title` (`title`),
  KEY `addtime` (`addtime`),
  KEY `edittime` (`edittime`),
  KEY `publtime` (`publtime`),
  KEY `exptime` (`exptime`),
  KEY `status` (`status`),
  KEY `instant_active` (`instant_active`),
  KEY `instant_creatauto` (`instant_creatauto`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_news_35`
--

LOCK TABLES `nv4_vi_news_35` WRITE;
/*!40000 ALTER TABLE `nv4_vi_news_35` DISABLE KEYS */;
/*!40000 ALTER TABLE `nv4_vi_news_35` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_news_36`
--

DROP TABLE IF EXISTS `nv4_vi_news_36`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_news_36` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `weight` int(11) unsigned NOT NULL DEFAULT '0',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `external_link` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  `instant_active` tinyint(1) NOT NULL DEFAULT '0',
  `instant_template` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`),
  KEY `topicid` (`topicid`),
  KEY `admin_id` (`admin_id`),
  KEY `author` (`author`),
  KEY `title` (`title`),
  KEY `addtime` (`addtime`),
  KEY `edittime` (`edittime`),
  KEY `publtime` (`publtime`),
  KEY `exptime` (`exptime`),
  KEY `status` (`status`),
  KEY `instant_active` (`instant_active`),
  KEY `instant_creatauto` (`instant_creatauto`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_news_36`
--

LOCK TABLES `nv4_vi_news_36` WRITE;
/*!40000 ALTER TABLE `nv4_vi_news_36` DISABLE KEYS */;
/*!40000 ALTER TABLE `nv4_vi_news_36` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_news_37`
--

DROP TABLE IF EXISTS `nv4_vi_news_37`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_news_37` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `weight` int(11) unsigned NOT NULL DEFAULT '0',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `external_link` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  `instant_active` tinyint(1) NOT NULL DEFAULT '0',
  `instant_template` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`),
  KEY `topicid` (`topicid`),
  KEY `admin_id` (`admin_id`),
  KEY `author` (`author`),
  KEY `title` (`title`),
  KEY `addtime` (`addtime`),
  KEY `edittime` (`edittime`),
  KEY `publtime` (`publtime`),
  KEY `exptime` (`exptime`),
  KEY `status` (`status`),
  KEY `instant_active` (`instant_active`),
  KEY `instant_creatauto` (`instant_creatauto`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_news_37`
--

LOCK TABLES `nv4_vi_news_37` WRITE;
/*!40000 ALTER TABLE `nv4_vi_news_37` DISABLE KEYS */;
INSERT INTO `nv4_vi_news_37` VALUES (27,37,'37',0,1,'',0,1552962255,1552962457,1,8,1552962000,0,2,'Thường trực huyện ủy','thuong-truc-huyen-uy','','','',0,1,'4',1,0,1,0,0,0,0,'',0);
/*!40000 ALTER TABLE `nv4_vi_news_37` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_news_38`
--

DROP TABLE IF EXISTS `nv4_vi_news_38`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_news_38` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `weight` int(11) unsigned NOT NULL DEFAULT '0',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `external_link` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  `instant_active` tinyint(1) NOT NULL DEFAULT '0',
  `instant_template` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`),
  KEY `topicid` (`topicid`),
  KEY `admin_id` (`admin_id`),
  KEY `author` (`author`),
  KEY `title` (`title`),
  KEY `addtime` (`addtime`),
  KEY `edittime` (`edittime`),
  KEY `publtime` (`publtime`),
  KEY `exptime` (`exptime`),
  KEY `status` (`status`),
  KEY `instant_active` (`instant_active`),
  KEY `instant_creatauto` (`instant_creatauto`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_news_38`
--

LOCK TABLES `nv4_vi_news_38` WRITE;
/*!40000 ALTER TABLE `nv4_vi_news_38` DISABLE KEYS */;
/*!40000 ALTER TABLE `nv4_vi_news_38` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_news_39`
--

DROP TABLE IF EXISTS `nv4_vi_news_39`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_news_39` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `weight` int(11) unsigned NOT NULL DEFAULT '0',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `external_link` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  `instant_active` tinyint(1) NOT NULL DEFAULT '0',
  `instant_template` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`),
  KEY `topicid` (`topicid`),
  KEY `admin_id` (`admin_id`),
  KEY `author` (`author`),
  KEY `title` (`title`),
  KEY `addtime` (`addtime`),
  KEY `edittime` (`edittime`),
  KEY `publtime` (`publtime`),
  KEY `exptime` (`exptime`),
  KEY `status` (`status`),
  KEY `instant_active` (`instant_active`),
  KEY `instant_creatauto` (`instant_creatauto`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_news_39`
--

LOCK TABLES `nv4_vi_news_39` WRITE;
/*!40000 ALTER TABLE `nv4_vi_news_39` DISABLE KEYS */;
INSERT INTO `nv4_vi_news_39` VALUES (28,39,'39',0,1,'',0,1552963697,1552963697,1,10,1552962540,0,2,'UBND HUYỆN','ubnd-huyen','','','',0,1,'4',1,0,1,0,0,0,0,'',0);
/*!40000 ALTER TABLE `nv4_vi_news_39` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_news_40`
--

DROP TABLE IF EXISTS `nv4_vi_news_40`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_news_40` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `weight` int(11) unsigned NOT NULL DEFAULT '0',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `external_link` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  `instant_active` tinyint(1) NOT NULL DEFAULT '0',
  `instant_template` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`),
  KEY `topicid` (`topicid`),
  KEY `admin_id` (`admin_id`),
  KEY `author` (`author`),
  KEY `title` (`title`),
  KEY `addtime` (`addtime`),
  KEY `edittime` (`edittime`),
  KEY `publtime` (`publtime`),
  KEY `exptime` (`exptime`),
  KEY `status` (`status`),
  KEY `instant_active` (`instant_active`),
  KEY `instant_creatauto` (`instant_creatauto`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_news_40`
--

LOCK TABLES `nv4_vi_news_40` WRITE;
/*!40000 ALTER TABLE `nv4_vi_news_40` DISABLE KEYS */;
INSERT INTO `nv4_vi_news_40` VALUES (29,40,'40',0,1,'',0,1552963902,1552963933,1,11,1552963740,0,2,'Ủy ban mặt trận tổ quốc Việt Nam huyện','uy-ban-mat-tran-to-quoc-viet-nam-huyen','','','',0,1,'4',1,0,1,0,0,0,0,'',0);
/*!40000 ALTER TABLE `nv4_vi_news_40` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_news_41`
--

DROP TABLE IF EXISTS `nv4_vi_news_41`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_news_41` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `weight` int(11) unsigned NOT NULL DEFAULT '0',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `external_link` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  `instant_active` tinyint(1) NOT NULL DEFAULT '0',
  `instant_template` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`),
  KEY `topicid` (`topicid`),
  KEY `admin_id` (`admin_id`),
  KEY `author` (`author`),
  KEY `title` (`title`),
  KEY `addtime` (`addtime`),
  KEY `edittime` (`edittime`),
  KEY `publtime` (`publtime`),
  KEY `exptime` (`exptime`),
  KEY `status` (`status`),
  KEY `instant_active` (`instant_active`),
  KEY `instant_creatauto` (`instant_creatauto`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_news_41`
--

LOCK TABLES `nv4_vi_news_41` WRITE;
/*!40000 ALTER TABLE `nv4_vi_news_41` DISABLE KEYS */;
/*!40000 ALTER TABLE `nv4_vi_news_41` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_news_42`
--

DROP TABLE IF EXISTS `nv4_vi_news_42`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_news_42` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `weight` int(11) unsigned NOT NULL DEFAULT '0',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `external_link` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  `instant_active` tinyint(1) NOT NULL DEFAULT '0',
  `instant_template` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`),
  KEY `topicid` (`topicid`),
  KEY `admin_id` (`admin_id`),
  KEY `author` (`author`),
  KEY `title` (`title`),
  KEY `addtime` (`addtime`),
  KEY `edittime` (`edittime`),
  KEY `publtime` (`publtime`),
  KEY `exptime` (`exptime`),
  KEY `status` (`status`),
  KEY `instant_active` (`instant_active`),
  KEY `instant_creatauto` (`instant_creatauto`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_news_42`
--

LOCK TABLES `nv4_vi_news_42` WRITE;
/*!40000 ALTER TABLE `nv4_vi_news_42` DISABLE KEYS */;
/*!40000 ALTER TABLE `nv4_vi_news_42` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_news_43`
--

DROP TABLE IF EXISTS `nv4_vi_news_43`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_news_43` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `weight` int(11) unsigned NOT NULL DEFAULT '0',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `external_link` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  `instant_active` tinyint(1) NOT NULL DEFAULT '0',
  `instant_template` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`),
  KEY `topicid` (`topicid`),
  KEY `admin_id` (`admin_id`),
  KEY `author` (`author`),
  KEY `title` (`title`),
  KEY `addtime` (`addtime`),
  KEY `edittime` (`edittime`),
  KEY `publtime` (`publtime`),
  KEY `exptime` (`exptime`),
  KEY `status` (`status`),
  KEY `instant_active` (`instant_active`),
  KEY `instant_creatauto` (`instant_creatauto`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_news_43`
--

LOCK TABLES `nv4_vi_news_43` WRITE;
/*!40000 ALTER TABLE `nv4_vi_news_43` DISABLE KEYS */;
/*!40000 ALTER TABLE `nv4_vi_news_43` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_news_44`
--

DROP TABLE IF EXISTS `nv4_vi_news_44`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_news_44` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `weight` int(11) unsigned NOT NULL DEFAULT '0',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `external_link` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  `instant_active` tinyint(1) NOT NULL DEFAULT '0',
  `instant_template` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`),
  KEY `topicid` (`topicid`),
  KEY `admin_id` (`admin_id`),
  KEY `author` (`author`),
  KEY `title` (`title`),
  KEY `addtime` (`addtime`),
  KEY `edittime` (`edittime`),
  KEY `publtime` (`publtime`),
  KEY `exptime` (`exptime`),
  KEY `status` (`status`),
  KEY `instant_active` (`instant_active`),
  KEY `instant_creatauto` (`instant_creatauto`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_news_44`
--

LOCK TABLES `nv4_vi_news_44` WRITE;
/*!40000 ALTER TABLE `nv4_vi_news_44` DISABLE KEYS */;
INSERT INTO `nv4_vi_news_44` VALUES (35,48,'44,48',0,1,'THÁI TOẢN- ĐỨC TRỌNG',0,1552966001,1552985235,1,18,1552965780,0,2,'Nuôi hươu Sao cho thu nhập cao','nuoi-huou-sao-cho-thu-nhap-cao','Cựu chiến binh(CCB) Nguyễn Viết Nghĩa-73 tuổi ở thôn Hiển Lộc, xã Duy Ninh là người đầu tiên nuôi hươu sao ở huyện Quảng Ninh và từ nuôi hươu sao gia đình ông và gia đình các thành viên khác trong Hợp tác xã(HTX) nuôi hươu sao đều đã xóa được đói, ai cũng giàu lên.','2019_03/img20190226153834.jpg','IMG20190226153834',1,1,'4',1,0,2,0,0,0,0,'',0),(41,46,'44,46,56',0,1,'Hà Ngọc Khang',0,1552966766,1552985364,1,19,1552966560,0,2,'Vạn Ninh trên đường cán đích Nông thôn mới','van-ninh-tren-duong-can-dich-nong-thon-moi','Sau 8 năm triển khai thực hiện Chương trình mục tiêu Quốc gia xây dựng nông thôn mới, huyện Quảng Ninh đã có 7 xã về đích là xã Lương Ninh, Vĩnh Ninh, Hàm Ninh, Võ Ninh, Xuân Ninh, Duy Ninh và Hiền Ninh. Hiện nay, cùng với Gia Ninh, xã Vạn Ninh đã hoàn thành 19/19 tiêu chí và đã trình cấp có thẩm quyền xem xét, thẩm định công nhận đạt chuẩn.','2019_03/img_8296.jpg','IMG 8296',1,1,'4',1,0,0,0,0,0,0,'',0),(32,46,'44,46',0,1,'Ngọc Khang - Đài TT-TH Quảng Ninh',0,1552965369,1552985418,1,16,1552965120,0,2,'Quảng Ninh xây dựng Chùa Kim Nại','quang-ninh-xay-dung-chua-kim-nai','Được sự hỗ trợ của con em quê hương đang công tác trên khắp mọi miền Tổ quốc, hiện nay, trên địa bàn huyện Quảng Ninh ngoài phong trào xây dựng đình làng, cổng làng, việc xây dựng chùa đang được chú trọng. Cùng với chùa Quảng Xá đã khánh thành đưa vào sử dụng, chùa Kim Nại, xã An Ninh đang trong quá trình hoàn thiện.','2019_03/54522836_845476819119411_8974749969365860352_n.jpg','',1,1,'4',1,0,2,0,0,0,0,'',0);
/*!40000 ALTER TABLE `nv4_vi_news_44` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_news_45`
--

DROP TABLE IF EXISTS `nv4_vi_news_45`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_news_45` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `weight` int(11) unsigned NOT NULL DEFAULT '0',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `external_link` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  `instant_active` tinyint(1) NOT NULL DEFAULT '0',
  `instant_template` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`),
  KEY `topicid` (`topicid`),
  KEY `admin_id` (`admin_id`),
  KEY `author` (`author`),
  KEY `title` (`title`),
  KEY `addtime` (`addtime`),
  KEY `edittime` (`edittime`),
  KEY `publtime` (`publtime`),
  KEY `exptime` (`exptime`),
  KEY `status` (`status`),
  KEY `instant_active` (`instant_active`),
  KEY `instant_creatauto` (`instant_creatauto`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_news_45`
--

LOCK TABLES `nv4_vi_news_45` WRITE;
/*!40000 ALTER TABLE `nv4_vi_news_45` DISABLE KEYS */;
INSERT INTO `nv4_vi_news_45` VALUES (30,45,'45',0,1,'',0,1552964139,1552964197,1,13,1552963920,0,2,'Ngân hàng Chính sách xã hội huyện Quảng Ninh 1,5 tỷ đồng cho chương trình tín dụng cho vay nhà ở xã hội theo Nghị định số 100&#x002F;2015&#x002F;NĐ-CP của Thủ tướng Chính phủ','ngan-hang-chinh-sach-xa-hoi-huyen-quang-ninh-1-5-ty-dong-cho-chuong-trinh-tin-dung-cho-vay-nha-o-xa-hoi-theo-nghi-dinh-so-100-2015-nd-cp-cua-thu-tuong-chinh-phu','Vừa qua, Ngân hàng Chính sách xã hội (NHCSXH) huyện Quảng Ninh được giao bổ sung chỉ tiêu kế hoạch tín dụng năm 2019 đối với chương trình tín dụng cho vay nhà ở xã hội theo Nghị định số 100/2015/NĐ-CP của Thủ tướng Chính phủ với số tiền 1,5 tỷ đồng.','2019_03/img_15881.jpg','NHCSXH giải ngân vốn tín dụng chính sách tại Điểm giao dịch xã',1,1,'4',1,0,1,0,0,0,0,'',0),(31,45,'45',0,1,'',0,1552964500,1552964500,1,14,1552964160,0,2,'Đảng bộ xã Võ Ninh triển khai nhiệm vụ xây dựng Đảng năm 2019','dang-bo-xa-vo-ninh-trien-khai-nhiem-vu-xay-dung-dang-nam-2019','Ngày 7/3, Đảng bộ xã Võ Ninh tổ chức hội nghị tổng kết công tác xây dựng Đảng năm 2018, triển khai nhiệm vụ năm 2019. Đồng chí Lê Chí Huy-Ủy viên Ban Thương vụ Huyện ủy-Phó chủ tịch HĐND huyện và đại diễn lãnh đạo một số ban xây dựng Đảng của Huyện ủy đã đến dự và chỉ đạo hội nghị.','2019_03/3213131.jpg','Đồng chí Lê Chí Huy-Ủy viên Ban Thương vụ Huyện ủy-Phó chủ tịch HĐND huyện phát biểu tại hội nghị',1,1,'4',1,0,1,0,0,0,0,'',0);
/*!40000 ALTER TABLE `nv4_vi_news_45` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_news_46`
--

DROP TABLE IF EXISTS `nv4_vi_news_46`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_news_46` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `weight` int(11) unsigned NOT NULL DEFAULT '0',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `external_link` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  `instant_active` tinyint(1) NOT NULL DEFAULT '0',
  `instant_template` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`),
  KEY `topicid` (`topicid`),
  KEY `admin_id` (`admin_id`),
  KEY `author` (`author`),
  KEY `title` (`title`),
  KEY `addtime` (`addtime`),
  KEY `edittime` (`edittime`),
  KEY `publtime` (`publtime`),
  KEY `exptime` (`exptime`),
  KEY `status` (`status`),
  KEY `instant_active` (`instant_active`),
  KEY `instant_creatauto` (`instant_creatauto`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_news_46`
--

LOCK TABLES `nv4_vi_news_46` WRITE;
/*!40000 ALTER TABLE `nv4_vi_news_46` DISABLE KEYS */;
INSERT INTO `nv4_vi_news_46` VALUES (32,46,'44,46',0,1,'Ngọc Khang - Đài TT-TH Quảng Ninh',0,1552965369,1552985418,1,16,1552965120,0,2,'Quảng Ninh xây dựng Chùa Kim Nại','quang-ninh-xay-dung-chua-kim-nai','Được sự hỗ trợ của con em quê hương đang công tác trên khắp mọi miền Tổ quốc, hiện nay, trên địa bàn huyện Quảng Ninh ngoài phong trào xây dựng đình làng, cổng làng, việc xây dựng chùa đang được chú trọng. Cùng với chùa Quảng Xá đã khánh thành đưa vào sử dụng, chùa Kim Nại, xã An Ninh đang trong quá trình hoàn thiện.','2019_03/54522836_845476819119411_8974749969365860352_n.jpg','',1,1,'4',1,0,2,0,0,0,0,'',0),(33,46,'46',0,1,'Ngọc Khang - Đài TT-TH Quảng Ninh',0,1552965547,1552965547,1,17,1552965420,0,2,'Hội cựu chiến binh huyện Quảng Ninh thăm tặng quà gia đình hội viên dân tộc Vân Kiều có hoàn cảnh đặc biệt khó khăn tại xã Trường Sơn','hoi-cuu-chien-binh-huyen-quang-ninh-tham-tang-qua-gia-dinh-hoi-vien-dan-toc-van-kieu-co-hoan-canh-dac-biet-kho-khan-tai-xa-truong-son','Ngày 13/3, Hội cựu chiến binh huyện Quảng Ninh tổ chức đi thăm, tặng quà cho các gia đình hội viên người đồng bào dân tộc Vân Kiều có hoàn cảnh đặc biệt khó khăn tại xã miền núi Trường Sơn.','2019_03/img_0922282.jpg','Hội CCB Quảng Ninh thăm, tặng quà gia đình bà Hồ Thị Hoàng ở bản Cấy Sú, Trường Sơn.',1,1,'4',1,0,1,0,0,0,0,'',0),(50,46,'46',0,1,'Hồng Nhung',0,1552988068,1552988068,1,30,1552987920,0,2,'Huyện đoàn Quảng Ninh ra quân tháng thanh niên','huyen-doan-quang-ninh-ra-quan-thang-thanh-nien','Hòa chung với không khí thi đua sôi nổi kỷ niệm 88 năm ngày thành lập Đoàn TNCS Hồ Chí Minh (26/3/1931 - 26/3/2019); chào mừng kỷ niệm 30 năm tái lập tỉnh và 70 năm Quảng Bình quật khởi.','2019_03/54279192_2255489471169796_158063880348631040_n.jpg','',1,1,'4',1,0,3,0,0,0,0,'',0),(41,46,'44,46,56',0,1,'Hà Ngọc Khang',0,1552966766,1552985364,1,19,1552966560,0,2,'Vạn Ninh trên đường cán đích Nông thôn mới','van-ninh-tren-duong-can-dich-nong-thon-moi','Sau 8 năm triển khai thực hiện Chương trình mục tiêu Quốc gia xây dựng nông thôn mới, huyện Quảng Ninh đã có 7 xã về đích là xã Lương Ninh, Vĩnh Ninh, Hàm Ninh, Võ Ninh, Xuân Ninh, Duy Ninh và Hiền Ninh. Hiện nay, cùng với Gia Ninh, xã Vạn Ninh đã hoàn thành 19/19 tiêu chí và đã trình cấp có thẩm quyền xem xét, thẩm định công nhận đạt chuẩn.','2019_03/img_8296.jpg','IMG 8296',1,1,'4',1,0,0,0,0,0,0,'',0);
/*!40000 ALTER TABLE `nv4_vi_news_46` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_news_47`
--

DROP TABLE IF EXISTS `nv4_vi_news_47`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_news_47` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `weight` int(11) unsigned NOT NULL DEFAULT '0',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `external_link` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  `instant_active` tinyint(1) NOT NULL DEFAULT '0',
  `instant_template` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`),
  KEY `topicid` (`topicid`),
  KEY `admin_id` (`admin_id`),
  KEY `author` (`author`),
  KEY `title` (`title`),
  KEY `addtime` (`addtime`),
  KEY `edittime` (`edittime`),
  KEY `publtime` (`publtime`),
  KEY `exptime` (`exptime`),
  KEY `status` (`status`),
  KEY `instant_active` (`instant_active`),
  KEY `instant_creatauto` (`instant_creatauto`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_news_47`
--

LOCK TABLES `nv4_vi_news_47` WRITE;
/*!40000 ALTER TABLE `nv4_vi_news_47` DISABLE KEYS */;
INSERT INTO `nv4_vi_news_47` VALUES (20,47,'47',0,1,'Ngọc Khang',0,1510215907,1552965702,1,9,1510215900,0,2,'UBND huyện Quảng Ninh tổ chức hội nghị triển khai công tác phòng cháy chữa cháy, bảo vệ rừng và phòng cháy chữa cháy rừng năm 2019','ubnd-huyen-quang-ninh-to-chuc-hoi-nghi-trien-khai-cong-tac-phong-chay-chua-chay-bao-ve-rung-va-phong-chay-chua-chay-rung-nam-2019','Ngày 15/3, UBND huyện Quảng Ninh tổ chức hội nghị triển khai công tác phòng cháy chữa cháy, bảo vệ rừng và phòng cháy chữa cháy rừng năm 2019. Đồng chí Nguyễn Ngọc Thụ, Phó Chủ tịch UBND huyện chủ trì hội nghị.','53297071_847068188960274_4811614847680643072_n.jpg','Đồng chí Nguyễn Ngọc Thụ, Phó Chủ tịch UBND huyện phát biểu tại hội nghị',1,1,'4',1,0,3,0,0,0,0,'',0),(34,47,'47',0,1,'Hà Ngọc Khang',0,1552965787,1552965787,1,5,1552965720,0,2,'Lực lượng vũ trang Quảng Ninh huấn luyện giỏi, kỷ luật nghiêm, sẵn sàng chiến đấu cao','luc-luong-vu-trang-quang-ninh-huan-luyen-gioi-ky-luat-nghiem-san-sang-chien-dau-cao','Với phương châm “Cơ bản, thiết thực, vững chắc”, những năm qua, lực lượng vũ trang huyện Quảng Ninh đã thực hiện tốt nhiệm vụ huấn luyện chiến đấu, bảo đảm sát với nội dung, đối tượng, địa bàn tác chiến... góp phần củng cố, nâng cao chất lượng tổng hợp, xây dựng lực lương vũ trang ngày càng chính quy tinh nhuệ và từng bước hiện đại, đáp ứng yêu cầu nhiệm vụ trong tình hình mới.','','',0,1,'4',1,0,1,0,0,0,0,'',0);
/*!40000 ALTER TABLE `nv4_vi_news_47` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_news_48`
--

DROP TABLE IF EXISTS `nv4_vi_news_48`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_news_48` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `weight` int(11) unsigned NOT NULL DEFAULT '0',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `external_link` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  `instant_active` tinyint(1) NOT NULL DEFAULT '0',
  `instant_template` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`),
  KEY `topicid` (`topicid`),
  KEY `admin_id` (`admin_id`),
  KEY `author` (`author`),
  KEY `title` (`title`),
  KEY `addtime` (`addtime`),
  KEY `edittime` (`edittime`),
  KEY `publtime` (`publtime`),
  KEY `exptime` (`exptime`),
  KEY `status` (`status`),
  KEY `instant_active` (`instant_active`),
  KEY `instant_creatauto` (`instant_creatauto`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_news_48`
--

LOCK TABLES `nv4_vi_news_48` WRITE;
/*!40000 ALTER TABLE `nv4_vi_news_48` DISABLE KEYS */;
INSERT INTO `nv4_vi_news_48` VALUES (35,48,'44,48',0,1,'THÁI TOẢN- ĐỨC TRỌNG',0,1552966001,1552985235,1,18,1552965780,0,2,'Nuôi hươu Sao cho thu nhập cao','nuoi-huou-sao-cho-thu-nhap-cao','Cựu chiến binh(CCB) Nguyễn Viết Nghĩa-73 tuổi ở thôn Hiển Lộc, xã Duy Ninh là người đầu tiên nuôi hươu sao ở huyện Quảng Ninh và từ nuôi hươu sao gia đình ông và gia đình các thành viên khác trong Hợp tác xã(HTX) nuôi hươu sao đều đã xóa được đói, ai cũng giàu lên.','2019_03/img20190226153834.jpg','IMG20190226153834',1,1,'4',1,0,2,0,0,0,0,'',0),(36,48,'48',0,1,'Ngọc Khang',0,1552966081,1552966081,1,15,1552966020,0,2,'Anh hùng Nguyễn Văn Lanh và sự kiện Gạc Ma','anh-hung-nguyen-van-lanh-va-su-kien-gac-ma','Sự kiện ngày 14/3/1988 ở đảo Gạc Ma thuộc quần đảo Trường Sa của Việt Nam mãi mãi là mốc son của dân tộc. Trong trận chiến bi hùng đó, tỉnh Quảng Bình có 13 người lính hy sinh, 2 người được phong tặng Anh hùng Lực lượng vũ trang Nhân dân, trong đó có anh Nguyễn Văn Lanh quê ở xã Vạn Ninh, huyện Quảng Ninh.','','',0,1,'4',1,0,0,0,0,0,0,'',0);
/*!40000 ALTER TABLE `nv4_vi_news_48` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_news_49`
--

DROP TABLE IF EXISTS `nv4_vi_news_49`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_news_49` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `weight` int(11) unsigned NOT NULL DEFAULT '0',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `external_link` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  `instant_active` tinyint(1) NOT NULL DEFAULT '0',
  `instant_template` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`),
  KEY `topicid` (`topicid`),
  KEY `admin_id` (`admin_id`),
  KEY `author` (`author`),
  KEY `title` (`title`),
  KEY `addtime` (`addtime`),
  KEY `edittime` (`edittime`),
  KEY `publtime` (`publtime`),
  KEY `exptime` (`exptime`),
  KEY `status` (`status`),
  KEY `instant_active` (`instant_active`),
  KEY `instant_creatauto` (`instant_creatauto`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_news_49`
--

LOCK TABLES `nv4_vi_news_49` WRITE;
/*!40000 ALTER TABLE `nv4_vi_news_49` DISABLE KEYS */;
/*!40000 ALTER TABLE `nv4_vi_news_49` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_news_50`
--

DROP TABLE IF EXISTS `nv4_vi_news_50`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_news_50` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `weight` int(11) unsigned NOT NULL DEFAULT '0',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `external_link` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  `instant_active` tinyint(1) NOT NULL DEFAULT '0',
  `instant_template` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`),
  KEY `topicid` (`topicid`),
  KEY `admin_id` (`admin_id`),
  KEY `author` (`author`),
  KEY `title` (`title`),
  KEY `addtime` (`addtime`),
  KEY `edittime` (`edittime`),
  KEY `publtime` (`publtime`),
  KEY `exptime` (`exptime`),
  KEY `status` (`status`),
  KEY `instant_active` (`instant_active`),
  KEY `instant_creatauto` (`instant_creatauto`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_news_50`
--

LOCK TABLES `nv4_vi_news_50` WRITE;
/*!40000 ALTER TABLE `nv4_vi_news_50` DISABLE KEYS */;
INSERT INTO `nv4_vi_news_50` VALUES (37,50,'50',0,1,'',0,1552966164,1552966164,1,4,1552966080,0,2,'Mục tiêu chất lượng','muc-tieu-chat-luong','','','',0,1,'4',1,0,1,0,0,0,0,'',0),(38,50,'50',0,1,'',0,1552966226,1552966226,1,1,1552966140,0,2,'CHÍNH SÁCH CHẤT LƯỢNG','chinh-sach-chat-luong','','','',0,1,'4',1,0,2,0,0,0,0,'',0);
/*!40000 ALTER TABLE `nv4_vi_news_50` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_news_51`
--

DROP TABLE IF EXISTS `nv4_vi_news_51`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_news_51` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `weight` int(11) unsigned NOT NULL DEFAULT '0',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `external_link` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  `instant_active` tinyint(1) NOT NULL DEFAULT '0',
  `instant_template` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`),
  KEY `topicid` (`topicid`),
  KEY `admin_id` (`admin_id`),
  KEY `author` (`author`),
  KEY `title` (`title`),
  KEY `addtime` (`addtime`),
  KEY `edittime` (`edittime`),
  KEY `publtime` (`publtime`),
  KEY `exptime` (`exptime`),
  KEY `status` (`status`),
  KEY `instant_active` (`instant_active`),
  KEY `instant_creatauto` (`instant_creatauto`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_news_51`
--

LOCK TABLES `nv4_vi_news_51` WRITE;
/*!40000 ALTER TABLE `nv4_vi_news_51` DISABLE KEYS */;
INSERT INTO `nv4_vi_news_51` VALUES (39,51,'51',0,1,'',0,1552966309,1552966309,1,12,1552966260,0,2,'Nội dung','noi-dung','','','',0,1,'4',1,0,1,0,0,0,0,'',0);
/*!40000 ALTER TABLE `nv4_vi_news_51` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_news_52`
--

DROP TABLE IF EXISTS `nv4_vi_news_52`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_news_52` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `weight` int(11) unsigned NOT NULL DEFAULT '0',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `external_link` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  `instant_active` tinyint(1) NOT NULL DEFAULT '0',
  `instant_template` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`),
  KEY `topicid` (`topicid`),
  KEY `admin_id` (`admin_id`),
  KEY `author` (`author`),
  KEY `title` (`title`),
  KEY `addtime` (`addtime`),
  KEY `edittime` (`edittime`),
  KEY `publtime` (`publtime`),
  KEY `exptime` (`exptime`),
  KEY `status` (`status`),
  KEY `instant_active` (`instant_active`),
  KEY `instant_creatauto` (`instant_creatauto`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_news_52`
--

LOCK TABLES `nv4_vi_news_52` WRITE;
/*!40000 ALTER TABLE `nv4_vi_news_52` DISABLE KEYS */;
/*!40000 ALTER TABLE `nv4_vi_news_52` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_news_53`
--

DROP TABLE IF EXISTS `nv4_vi_news_53`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_news_53` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `weight` int(11) unsigned NOT NULL DEFAULT '0',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `external_link` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  `instant_active` tinyint(1) NOT NULL DEFAULT '0',
  `instant_template` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`),
  KEY `topicid` (`topicid`),
  KEY `admin_id` (`admin_id`),
  KEY `author` (`author`),
  KEY `title` (`title`),
  KEY `addtime` (`addtime`),
  KEY `edittime` (`edittime`),
  KEY `publtime` (`publtime`),
  KEY `exptime` (`exptime`),
  KEY `status` (`status`),
  KEY `instant_active` (`instant_active`),
  KEY `instant_creatauto` (`instant_creatauto`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_news_53`
--

LOCK TABLES `nv4_vi_news_53` WRITE;
/*!40000 ALTER TABLE `nv4_vi_news_53` DISABLE KEYS */;
/*!40000 ALTER TABLE `nv4_vi_news_53` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_news_54`
--

DROP TABLE IF EXISTS `nv4_vi_news_54`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_news_54` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `weight` int(11) unsigned NOT NULL DEFAULT '0',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `external_link` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  `instant_active` tinyint(1) NOT NULL DEFAULT '0',
  `instant_template` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`),
  KEY `topicid` (`topicid`),
  KEY `admin_id` (`admin_id`),
  KEY `author` (`author`),
  KEY `title` (`title`),
  KEY `addtime` (`addtime`),
  KEY `edittime` (`edittime`),
  KEY `publtime` (`publtime`),
  KEY `exptime` (`exptime`),
  KEY `status` (`status`),
  KEY `instant_active` (`instant_active`),
  KEY `instant_creatauto` (`instant_creatauto`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_news_54`
--

LOCK TABLES `nv4_vi_news_54` WRITE;
/*!40000 ALTER TABLE `nv4_vi_news_54` DISABLE KEYS */;
/*!40000 ALTER TABLE `nv4_vi_news_54` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_news_55`
--

DROP TABLE IF EXISTS `nv4_vi_news_55`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_news_55` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `weight` int(11) unsigned NOT NULL DEFAULT '0',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `external_link` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  `instant_active` tinyint(1) NOT NULL DEFAULT '0',
  `instant_template` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`),
  KEY `topicid` (`topicid`),
  KEY `admin_id` (`admin_id`),
  KEY `author` (`author`),
  KEY `title` (`title`),
  KEY `addtime` (`addtime`),
  KEY `edittime` (`edittime`),
  KEY `publtime` (`publtime`),
  KEY `exptime` (`exptime`),
  KEY `status` (`status`),
  KEY `instant_active` (`instant_active`),
  KEY `instant_creatauto` (`instant_creatauto`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_news_55`
--

LOCK TABLES `nv4_vi_news_55` WRITE;
/*!40000 ALTER TABLE `nv4_vi_news_55` DISABLE KEYS */;
/*!40000 ALTER TABLE `nv4_vi_news_55` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_news_56`
--

DROP TABLE IF EXISTS `nv4_vi_news_56`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_news_56` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `weight` int(11) unsigned NOT NULL DEFAULT '0',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `external_link` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  `instant_active` tinyint(1) NOT NULL DEFAULT '0',
  `instant_template` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`),
  KEY `topicid` (`topicid`),
  KEY `admin_id` (`admin_id`),
  KEY `author` (`author`),
  KEY `title` (`title`),
  KEY `addtime` (`addtime`),
  KEY `edittime` (`edittime`),
  KEY `publtime` (`publtime`),
  KEY `exptime` (`exptime`),
  KEY `status` (`status`),
  KEY `instant_active` (`instant_active`),
  KEY `instant_creatauto` (`instant_creatauto`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_news_56`
--

LOCK TABLES `nv4_vi_news_56` WRITE;
/*!40000 ALTER TABLE `nv4_vi_news_56` DISABLE KEYS */;
INSERT INTO `nv4_vi_news_56` VALUES (40,56,'56',0,1,'Hồng Nhung',0,1552966484,1552966484,1,6,1552966380,0,2,'Sắc xuân trên xã Nông thôn mới','sac-xuan-tren-xa-nong-thon-moi','Trở lại xã Hiền Ninh vào những ngày giáp Tết Nguyên đán 2019, chúng ta càng thêm phấn khởi khi nhận thấy vùng quê này có nhiều khởi sắc. Những con đường bê tông rộng rãi, những ngôi nhà kiên cố, đường liên thôn, liên xã sạch đẹp, khang trang, rợp bóng cờ; nhà nhà, người người đón tết trong niềm hân hoan phấn khởi.','','',0,1,'4',1,0,1,0,0,0,0,'',0),(41,46,'44,46,56',0,1,'Hà Ngọc Khang',0,1552966766,1552985364,1,19,1552966560,0,2,'Vạn Ninh trên đường cán đích Nông thôn mới','van-ninh-tren-duong-can-dich-nong-thon-moi','Sau 8 năm triển khai thực hiện Chương trình mục tiêu Quốc gia xây dựng nông thôn mới, huyện Quảng Ninh đã có 7 xã về đích là xã Lương Ninh, Vĩnh Ninh, Hàm Ninh, Võ Ninh, Xuân Ninh, Duy Ninh và Hiền Ninh. Hiện nay, cùng với Gia Ninh, xã Vạn Ninh đã hoàn thành 19/19 tiêu chí và đã trình cấp có thẩm quyền xem xét, thẩm định công nhận đạt chuẩn.','2019_03/img_8296.jpg','IMG 8296',1,1,'4',1,0,0,0,0,0,0,'',0);
/*!40000 ALTER TABLE `nv4_vi_news_56` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_news_57`
--

DROP TABLE IF EXISTS `nv4_vi_news_57`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_news_57` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `weight` int(11) unsigned NOT NULL DEFAULT '0',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `external_link` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  `instant_active` tinyint(1) NOT NULL DEFAULT '0',
  `instant_template` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`),
  KEY `topicid` (`topicid`),
  KEY `admin_id` (`admin_id`),
  KEY `author` (`author`),
  KEY `title` (`title`),
  KEY `addtime` (`addtime`),
  KEY `edittime` (`edittime`),
  KEY `publtime` (`publtime`),
  KEY `exptime` (`exptime`),
  KEY `status` (`status`),
  KEY `instant_active` (`instant_active`),
  KEY `instant_creatauto` (`instant_creatauto`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_news_57`
--

LOCK TABLES `nv4_vi_news_57` WRITE;
/*!40000 ALTER TABLE `nv4_vi_news_57` DISABLE KEYS */;
/*!40000 ALTER TABLE `nv4_vi_news_57` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_news_58`
--

DROP TABLE IF EXISTS `nv4_vi_news_58`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_news_58` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `weight` int(11) unsigned NOT NULL DEFAULT '0',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `external_link` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  `instant_active` tinyint(1) NOT NULL DEFAULT '0',
  `instant_template` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`),
  KEY `topicid` (`topicid`),
  KEY `admin_id` (`admin_id`),
  KEY `author` (`author`),
  KEY `title` (`title`),
  KEY `addtime` (`addtime`),
  KEY `edittime` (`edittime`),
  KEY `publtime` (`publtime`),
  KEY `exptime` (`exptime`),
  KEY `status` (`status`),
  KEY `instant_active` (`instant_active`),
  KEY `instant_creatauto` (`instant_creatauto`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_news_58`
--

LOCK TABLES `nv4_vi_news_58` WRITE;
/*!40000 ALTER TABLE `nv4_vi_news_58` DISABLE KEYS */;
/*!40000 ALTER TABLE `nv4_vi_news_58` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_news_59`
--

DROP TABLE IF EXISTS `nv4_vi_news_59`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_news_59` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `weight` int(11) unsigned NOT NULL DEFAULT '0',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `external_link` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  `instant_active` tinyint(1) NOT NULL DEFAULT '0',
  `instant_template` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`),
  KEY `topicid` (`topicid`),
  KEY `admin_id` (`admin_id`),
  KEY `author` (`author`),
  KEY `title` (`title`),
  KEY `addtime` (`addtime`),
  KEY `edittime` (`edittime`),
  KEY `publtime` (`publtime`),
  KEY `exptime` (`exptime`),
  KEY `status` (`status`),
  KEY `instant_active` (`instant_active`),
  KEY `instant_creatauto` (`instant_creatauto`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_news_59`
--

LOCK TABLES `nv4_vi_news_59` WRITE;
/*!40000 ALTER TABLE `nv4_vi_news_59` DISABLE KEYS */;
/*!40000 ALTER TABLE `nv4_vi_news_59` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_news_60`
--

DROP TABLE IF EXISTS `nv4_vi_news_60`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_news_60` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `weight` int(11) unsigned NOT NULL DEFAULT '0',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `external_link` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  `instant_active` tinyint(1) NOT NULL DEFAULT '0',
  `instant_template` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`),
  KEY `topicid` (`topicid`),
  KEY `admin_id` (`admin_id`),
  KEY `author` (`author`),
  KEY `title` (`title`),
  KEY `addtime` (`addtime`),
  KEY `edittime` (`edittime`),
  KEY `publtime` (`publtime`),
  KEY `exptime` (`exptime`),
  KEY `status` (`status`),
  KEY `instant_active` (`instant_active`),
  KEY `instant_creatauto` (`instant_creatauto`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_news_60`
--

LOCK TABLES `nv4_vi_news_60` WRITE;
/*!40000 ALTER TABLE `nv4_vi_news_60` DISABLE KEYS */;
/*!40000 ALTER TABLE `nv4_vi_news_60` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_news_61`
--

DROP TABLE IF EXISTS `nv4_vi_news_61`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_news_61` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `weight` int(11) unsigned NOT NULL DEFAULT '0',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `external_link` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  `instant_active` tinyint(1) NOT NULL DEFAULT '0',
  `instant_template` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`),
  KEY `topicid` (`topicid`),
  KEY `admin_id` (`admin_id`),
  KEY `author` (`author`),
  KEY `title` (`title`),
  KEY `addtime` (`addtime`),
  KEY `edittime` (`edittime`),
  KEY `publtime` (`publtime`),
  KEY `exptime` (`exptime`),
  KEY `status` (`status`),
  KEY `instant_active` (`instant_active`),
  KEY `instant_creatauto` (`instant_creatauto`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_news_61`
--

LOCK TABLES `nv4_vi_news_61` WRITE;
/*!40000 ALTER TABLE `nv4_vi_news_61` DISABLE KEYS */;
/*!40000 ALTER TABLE `nv4_vi_news_61` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_news_62`
--

DROP TABLE IF EXISTS `nv4_vi_news_62`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_news_62` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `weight` int(11) unsigned NOT NULL DEFAULT '0',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `external_link` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  `instant_active` tinyint(1) NOT NULL DEFAULT '0',
  `instant_template` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`),
  KEY `topicid` (`topicid`),
  KEY `admin_id` (`admin_id`),
  KEY `author` (`author`),
  KEY `title` (`title`),
  KEY `addtime` (`addtime`),
  KEY `edittime` (`edittime`),
  KEY `publtime` (`publtime`),
  KEY `exptime` (`exptime`),
  KEY `status` (`status`),
  KEY `instant_active` (`instant_active`),
  KEY `instant_creatauto` (`instant_creatauto`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_news_62`
--

LOCK TABLES `nv4_vi_news_62` WRITE;
/*!40000 ALTER TABLE `nv4_vi_news_62` DISABLE KEYS */;
INSERT INTO `nv4_vi_news_62` VALUES (24,62,'62',0,1,'',0,1552955671,1552955671,1,7,1552955520,0,2,'Chương trình công tác của TT HĐND và UBND từ ngày 18&#x002F;3 đến 24&#x002F;3&#x002F;2019','chuong-trinh-cong-tac-cua-tt-hdnd-va-ubnd-tu-ngay-18-3-den-24-3-2019','','','',0,1,'4',1,0,2,0,0,0,0,'',0);
/*!40000 ALTER TABLE `nv4_vi_news_62` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_news_65`
--

DROP TABLE IF EXISTS `nv4_vi_news_65`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_news_65` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `weight` int(11) unsigned NOT NULL DEFAULT '0',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `external_link` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  `instant_active` tinyint(1) NOT NULL DEFAULT '0',
  `instant_template` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`),
  KEY `topicid` (`topicid`),
  KEY `admin_id` (`admin_id`),
  KEY `author` (`author`),
  KEY `title` (`title`),
  KEY `addtime` (`addtime`),
  KEY `edittime` (`edittime`),
  KEY `publtime` (`publtime`),
  KEY `exptime` (`exptime`),
  KEY `status` (`status`),
  KEY `instant_active` (`instant_active`),
  KEY `instant_creatauto` (`instant_creatauto`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_news_65`
--

LOCK TABLES `nv4_vi_news_65` WRITE;
/*!40000 ALTER TABLE `nv4_vi_news_65` DISABLE KEYS */;
/*!40000 ALTER TABLE `nv4_vi_news_65` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_news_admins`
--

DROP TABLE IF EXISTS `nv4_vi_news_admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_news_admins` (
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `catid` smallint(5) NOT NULL DEFAULT '0',
  `admin` tinyint(4) NOT NULL DEFAULT '0',
  `add_content` tinyint(4) NOT NULL DEFAULT '0',
  `pub_content` tinyint(4) NOT NULL DEFAULT '0',
  `edit_content` tinyint(4) NOT NULL DEFAULT '0',
  `del_content` tinyint(4) NOT NULL DEFAULT '0',
  `app_content` tinyint(4) NOT NULL DEFAULT '0',
  UNIQUE KEY `userid` (`userid`,`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_news_admins`
--

LOCK TABLES `nv4_vi_news_admins` WRITE;
/*!40000 ALTER TABLE `nv4_vi_news_admins` DISABLE KEYS */;
/*!40000 ALTER TABLE `nv4_vi_news_admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_news_block`
--

DROP TABLE IF EXISTS `nv4_vi_news_block`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_news_block` (
  `bid` smallint(5) unsigned NOT NULL,
  `id` int(11) unsigned NOT NULL,
  `weight` int(11) unsigned NOT NULL,
  UNIQUE KEY `bid` (`bid`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_news_block`
--

LOCK TABLES `nv4_vi_news_block` WRITE;
/*!40000 ALTER TABLE `nv4_vi_news_block` DISABLE KEYS */;
INSERT INTO `nv4_vi_news_block` VALUES (2,50,1),(2,47,4),(2,46,5),(2,43,8),(2,45,6),(2,42,9),(2,44,7),(2,49,2),(2,48,3),(2,24,25),(2,27,24),(2,28,23),(2,29,22),(2,30,21),(2,31,20),(2,32,19),(2,33,18),(2,34,17),(2,35,16),(2,36,15),(2,37,14),(2,38,13),(2,39,12),(2,40,11),(2,41,10);
/*!40000 ALTER TABLE `nv4_vi_news_block` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_news_block_cat`
--

DROP TABLE IF EXISTS `nv4_vi_news_block_cat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_news_block_cat` (
  `bid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `adddefault` tinyint(4) NOT NULL DEFAULT '0',
  `numbers` smallint(5) NOT NULL DEFAULT '10',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `weight` smallint(5) NOT NULL DEFAULT '0',
  `keywords` text COLLATE utf8mb4_unicode_ci,
  `add_time` int(11) NOT NULL DEFAULT '0',
  `edit_time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`bid`),
  UNIQUE KEY `title` (`title`),
  UNIQUE KEY `alias` (`alias`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_news_block_cat`
--

LOCK TABLES `nv4_vi_news_block_cat` WRITE;
/*!40000 ALTER TABLE `nv4_vi_news_block_cat` DISABLE KEYS */;
INSERT INTO `nv4_vi_news_block_cat` VALUES (1,0,4,'Tin tiêu điểm','Tin-tieu-diem','','Tin tiêu điểm',1,'',1279945710,1279956943),(2,1,4,'Tin mới nhất','Tin-moi-nhat','','Tin mới nhất',2,'',1279945725,1279956445);
/*!40000 ALTER TABLE `nv4_vi_news_block_cat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_news_cat`
--

DROP TABLE IF EXISTS `nv4_vi_news_cat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_news_cat` (
  `catid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `parentid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `titlesite` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci,
  `descriptionhtml` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `viewdescription` tinyint(2) NOT NULL DEFAULT '0',
  `weight` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sort` smallint(5) NOT NULL DEFAULT '0',
  `lev` smallint(5) NOT NULL DEFAULT '0',
  `viewcat` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'viewcat_page_new',
  `numsubcat` smallint(5) NOT NULL DEFAULT '0',
  `subcatid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `numlinks` tinyint(2) unsigned NOT NULL DEFAULT '3',
  `newday` tinyint(2) unsigned NOT NULL DEFAULT '2',
  `featured` int(11) NOT NULL DEFAULT '0',
  `ad_block_cat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `keywords` text COLLATE utf8mb4_unicode_ci,
  `admins` text COLLATE utf8mb4_unicode_ci,
  `add_time` int(11) unsigned NOT NULL DEFAULT '0',
  `edit_time` int(11) unsigned NOT NULL DEFAULT '0',
  `groups_view` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `status` smallint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`catid`),
  UNIQUE KEY `alias` (`alias`),
  KEY `parentid` (`parentid`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_news_cat`
--

LOCK TABLES `nv4_vi_news_cat` WRITE;
/*!40000 ALTER TABLE `nv4_vi_news_cat` DISABLE KEYS */;
INSERT INTO `nv4_vi_news_cat` VALUES (65,0,'Giấy mời','','giay-moi','','','',0,11,51,0,'viewcat_page_new',0,'',3,2,0,'','','',1552988960,1552988960,'6',1),(13,0,'Chuyên mục nhân đạo','','chuyen-muc-nhan-dao','','','',0,1,1,0,'viewcat_page_new',3,'14,15,16',4,2,0,'','','',1552871232,1552871232,'6',1),(14,13,'Tin hoạt động','','tin-hoat-dong','','','',0,1,2,1,'viewcat_page_new',0,'',3,2,0,'','','',1552871330,1552871330,'6',1),(15,13,'Địa chỉ nhân đạo','','dia-chi-nhan-dao','','','',0,2,3,1,'viewcat_page_new',0,'',3,2,0,'','','',1552871355,1552871355,'6',1),(16,13,'Văn bản','','van-ban','','','',0,3,4,1,'viewcat_page_new',0,'',3,2,0,'','','',1552871364,1552871364,'6',1),(17,0,'Thông tin báo cáo','','thong-tin-bao-cao','','','',0,2,5,0,'viewcat_page_new',5,'20,21,22,23,24',4,2,0,'','','',1552871548,1552983154,'6',1),(18,0,'Thông tin cần biết','','thong-tin-can-biet','','','',0,3,11,0,'viewcat_page_new',7,'25,26,27,28,29,30,31',4,2,0,'','','',1552871572,1552871572,'6',1),(19,0,'Văn bản HĐND','','van-ban-hdnd','','','',0,4,19,0,'viewcat_page_new',4,'32,33,34,35',4,2,0,'','','',1552871583,1552871583,'6',1),(20,17,'Chương trình cộng tác','','chuong-trinh-cong-tac','','','',0,1,6,1,'viewcat_page_new',0,'',3,2,0,'','','',1552871604,1552871604,'6',1),(21,17,'Thông báo','','thong-bao','','','',0,2,7,1,'viewcat_page_new',0,'',3,2,0,'','','',1552871619,1552871619,'6',1),(22,17,'Ý kiến kết luận','','y-kien-ket-luan','','','',0,3,8,1,'viewcat_page_new',0,'',3,2,0,'','','',1552871640,1552871640,'6',1),(23,17,'Kế hoạch','','ke-hoach','','','',0,4,9,1,'viewcat_page_new',0,'',3,2,0,'','','',1552871649,1552871649,'6',1),(24,17,'Văn bản khác','','van-ban-khac','','','',0,5,10,1,'viewcat_page_new',0,'',3,2,0,'','','',1552871658,1552871658,'6',1),(25,18,'Tin tức ngân hàng chính sách','','tin-tuc-ngan-hang-chinh-sach','','','',0,1,12,1,'viewcat_page_new',0,'',3,2,0,'','','',1552871680,1552871680,'6',1),(26,18,'Tuyển dụng','','tuyen-dung-26','','','',0,2,13,1,'viewcat_page_new',0,'',3,2,0,'','','',1552871690,1552871690,'6',1),(27,18,'Học tập và làm theo Bác Hồ','','hoc-tap-va-lam-theo-bac-ho','','','',0,3,14,1,'viewcat_page_new',0,'',3,2,0,'','','',1552871709,1552986414,'6',1),(28,18,'Quyết định có thay đổi về QSD đất','','quyet-dinh-co-thay-doi-ve-qsd-dat','','','',0,4,15,1,'viewcat_page_new',0,'',3,2,0,'','','',1552871723,1552871723,'6',1),(29,18,'Lịch cắt điện','','lich-cat-dien','','','',0,5,16,1,'viewcat_page_new',0,'',3,2,0,'','','',1552871735,1552871735,'6',1),(30,18,'Thông báo đấu giá','','thong-bao-dau-gia','','','',0,6,17,1,'viewcat_page_new',0,'',3,2,0,'','','',1552871769,1552871769,'6',1),(31,18,'Thông báo mời thầu','','thong-bao-moi-thau','','','',0,7,18,1,'viewcat_page_new',0,'',3,2,0,'','','',1552871781,1552871781,'6',1),(32,19,'Kỳ họp thứ 6','','ky-hop-thu-6','','','',0,1,20,1,'viewcat_page_new',0,'',3,2,0,'','','',1552871801,1552871801,'6',1),(33,19,'Kỳ họp thứ 8 - Khóa XIX','','ky-hop-thu-8-khoa-xix','','','',0,2,21,1,'viewcat_page_new',0,'',3,2,0,'','','',1552871824,1552871824,'6',1),(34,19,'Kỳ họp thứ 9 - Khóa XIX','','ky-hop-thu-9-khoa-xix','','','',0,3,22,1,'viewcat_page_new',0,'',3,2,0,'','','',1552871839,1552871839,'6',1),(35,19,'Văn bản liên quan','','van-ban-lien-quan','','','',0,4,23,1,'viewcat_page_new',0,'',3,2,0,'','','',1552871850,1552871850,'6',1),(36,0,'Bộ máy nhà nước','','bo-may-nha-nuoc','','','',0,5,24,0,'viewcat_page_new',7,'37,38,39,40,41,42,43',4,2,0,'','','',1552873782,1552873782,'6',1),(37,36,'Huyện ủy','','huyen-uy','','','',0,1,25,1,'viewcat_page_new',0,'',3,2,0,'','','',1552873797,1552873797,'6',1),(38,36,'Hội đồng nhân dân','','hoi-dong-nhan-dan','','','',0,2,26,1,'viewcat_page_new',0,'',3,2,0,'','','',1552873806,1552873806,'6',1),(39,36,'Ủy ban nhân dân','','uy-ban-nhan-dan','','','',0,3,27,1,'viewcat_page_new',0,'',3,2,0,'','','',1552873832,1552873832,'6',1),(40,36,'UBMT TQVN huyện','','ubmt-tqvn-huyen','','','',0,4,28,1,'viewcat_page_new',0,'',3,2,0,'','','',1552873848,1552873848,'6',1),(41,36,'Các phòng, Ban, Đơn vị','','cac-phong-ban-don-vi','','','',0,5,29,1,'viewcat_page_new',0,'',3,2,0,'','','',1552873873,1552873873,'6',1),(42,36,'Các Xã, Thị trấn','','cac-xa-thi-tran','','','',0,6,30,1,'viewcat_page_new',0,'',3,2,0,'','','',1552873887,1552873887,'6',1),(43,36,'Các đơn vị khác','','cac-don-vi-khac','','','',0,7,31,1,'viewcat_page_new',0,'',3,2,0,'','','',1552873897,1552873897,'6',1),(44,0,'Tin tức - Sự kiện','','tin-tuc-su-kien','','','',0,6,32,0,'viewcat_page_new',4,'45,46,47,48',3,2,0,'','','',1552873914,1552873914,'6',1),(45,44,'Kinh tế - Chính trị','','kinh-te-chinh-tri','','','',0,1,33,1,'viewcat_page_new',0,'',3,2,0,'','','',1552873934,1552873934,'6',1),(46,44,'Văn hóa - Xã hội','','van-hoa-xa-hoi','','','',0,2,34,1,'viewcat_page_new',0,'',3,2,0,'','','',1552873944,1552873944,'6',1),(47,44,'An ninh - Quốc phòng','','an-ninh-quoc-phong','','','',0,3,35,1,'viewcat_page_new',0,'',3,2,0,'','','',1552873960,1552873960,'6',1),(48,44,'Phóng sự','','phong-su','','','',0,4,36,1,'viewcat_page_new',0,'',3,2,0,'','','',1552873968,1552873968,'6',1),(49,0,'Tài liệu ISO 9001&#x3A;2008','','tai-lieu-iso-9001-2008','','','',0,7,37,0,'viewcat_page_new',5,'50,51,52,53,54',3,2,0,'','','',1552874000,1552874000,'6',1),(50,49,'CSCL và MTCL','','cscl-va-mtcl','','','',0,1,38,1,'viewcat_page_new',0,'',3,2,0,'','','',1552874016,1552874016,'6',1),(51,49,'Sổ tây chất lượng','','so-tay-chat-luong','','','',0,2,39,1,'viewcat_page_new',0,'',3,2,0,'','','',1552874026,1552874026,'6',1),(52,49,'6 Quy trình bắt buộc','','6-quy-trinh-bat-buoc','','','',0,3,40,1,'viewcat_page_new',0,'',3,2,0,'','','',1552874041,1552874041,'6',1),(53,49,'Các quy trình hỗ trợ','','cac-quy-trinh-ho-tro','','','',0,4,41,1,'viewcat_page_new',0,'',3,2,0,'','','',1552874060,1552874060,'6',1),(54,49,'Quy trình tác nghiệp','','quy-trinh-tac-nghiep','','','',0,5,42,1,'viewcat_page_new',0,'',3,2,0,'','','',1552874076,1552874076,'6',1),(55,0,'XD Nông thôn mới','','xd-nong-thon-moi','','','',0,8,43,0,'viewcat_page_new',3,'56,57,58',3,2,0,'','','',1552874094,1552874094,'6',1),(56,55,'Tin tức xây dựng NTM','','tin-tuc-xay-dung-ntm','','','',0,1,44,1,'viewcat_page_new',0,'',3,2,0,'','','',1552874114,1552874114,'6',1),(57,55,'Bộ tiêu chí','','bo-tieu-chi','','','',0,2,45,1,'viewcat_page_new',0,'',3,2,0,'','','',1552874126,1552874126,'6',1),(58,55,'Văn bản xây dựng NTM','','van-ban-xay-dung-ntm','','','',0,3,46,1,'viewcat_page_new',0,'',3,2,0,'','','',1552874140,1552874140,'6',1),(59,0,'Định hướng phát triển','','dinh-huong-phat-trien','','','',0,10,48,0,'viewcat_page_new',2,'60,61',3,2,0,'','','',1552874160,1552874160,'6',1),(60,59,'Tuyên truyền phổ biến PL - CS','','tuyen-truyen-pho-bien-pl-cs','','','',0,1,49,1,'viewcat_page_new',0,'',3,2,0,'','','',1552874186,1552874186,'6',1),(61,59,'Chiến lược định hướng - QH phát triển','','chien-luoc-dinh-huong-qh-phat-trien','','','',0,2,50,1,'viewcat_page_new',0,'',3,2,0,'','','',1552874227,1552874227,'6',1),(62,0,'Lịch làm viêc','','lich-lam-viec','','','',0,9,47,0,'viewcat_page_new',0,'',4,2,0,'','','',1552897291,1552983253,'6',1);
/*!40000 ALTER TABLE `nv4_vi_news_cat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_news_config_post`
--

DROP TABLE IF EXISTS `nv4_vi_news_config_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_news_config_post` (
  `group_id` smallint(5) NOT NULL,
  `addcontent` tinyint(4) NOT NULL,
  `postcontent` tinyint(4) NOT NULL,
  `editcontent` tinyint(4) NOT NULL,
  `delcontent` tinyint(4) NOT NULL,
  PRIMARY KEY (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_news_config_post`
--

LOCK TABLES `nv4_vi_news_config_post` WRITE;
/*!40000 ALTER TABLE `nv4_vi_news_config_post` DISABLE KEYS */;
INSERT INTO `nv4_vi_news_config_post` VALUES (4,0,0,0,0),(7,0,0,0,0),(5,0,0,0,0),(10,0,0,0,0),(11,0,0,0,0),(12,0,0,0,0);
/*!40000 ALTER TABLE `nv4_vi_news_config_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_news_detail`
--

DROP TABLE IF EXISTS `nv4_vi_news_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_news_detail` (
  `id` int(11) unsigned NOT NULL,
  `titlesite` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `bodyhtml` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourcetext` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `files` text COLLATE utf8mb4_unicode_ci,
  `imgposition` tinyint(1) NOT NULL DEFAULT '1',
  `layout_func` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `copyright` tinyint(1) NOT NULL DEFAULT '0',
  `allowed_send` tinyint(1) NOT NULL DEFAULT '0',
  `allowed_print` tinyint(1) NOT NULL DEFAULT '0',
  `allowed_save` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_news_detail`
--

LOCK TABLES `nv4_vi_news_detail` WRITE;
/*!40000 ALTER TABLE `nv4_vi_news_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `nv4_vi_news_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_news_logs`
--

DROP TABLE IF EXISTS `nv4_vi_news_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_news_logs` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `sid` mediumint(8) NOT NULL DEFAULT '0',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `set_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `sid` (`sid`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_news_logs`
--

LOCK TABLES `nv4_vi_news_logs` WRITE;
/*!40000 ALTER TABLE `nv4_vi_news_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `nv4_vi_news_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_news_rows`
--

DROP TABLE IF EXISTS `nv4_vi_news_rows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_news_rows` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `weight` int(11) unsigned NOT NULL DEFAULT '0',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `external_link` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  `instant_active` tinyint(1) NOT NULL DEFAULT '0',
  `instant_template` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`),
  KEY `topicid` (`topicid`),
  KEY `admin_id` (`admin_id`),
  KEY `author` (`author`),
  KEY `title` (`title`),
  KEY `addtime` (`addtime`),
  KEY `edittime` (`edittime`),
  KEY `publtime` (`publtime`),
  KEY `exptime` (`exptime`),
  KEY `status` (`status`),
  KEY `instant_active` (`instant_active`),
  KEY `instant_creatauto` (`instant_creatauto`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_news_rows`
--

LOCK TABLES `nv4_vi_news_rows` WRITE;
/*!40000 ALTER TABLE `nv4_vi_news_rows` DISABLE KEYS */;
INSERT INTO `nv4_vi_news_rows` VALUES (50,46,'46',0,1,'Hồng Nhung',0,1552988068,1552988068,1,30,1552987920,0,2,'Huyện đoàn Quảng Ninh ra quân tháng thanh niên','huyen-doan-quang-ninh-ra-quan-thang-thanh-nien','Hòa chung với không khí thi đua sôi nổi kỷ niệm 88 năm ngày thành lập Đoàn TNCS Hồ Chí Minh (26/3/1931 - 26/3/2019); chào mừng kỷ niệm 30 năm tái lập tỉnh và 70 năm Quảng Bình quật khởi.','2019_03/54279192_2255489471169796_158063880348631040_n.jpg','',1,1,'4',1,0,3,0,0,0,0,'',0),(48,15,'13,15',0,1,'Hồng Minh - Hội CTĐ Quảng Ninh',0,1552987598,1552987598,1,26,1552987440,0,2,'Hãy cho em một đôi mắt sáng','hay-cho-em-mot-doi-mat-sang','Đôi mắt là nguồn ánh sáng của cuộc đời, ai sinh ra, lớn lên, học hành và thành đạt cũng nhờ đôi mắt. Vậy mà bé Đoàn Đại Quang, xóm 3 thôn Trúc Ly, xã Võ Ninh, sau khi chào đời được 6 tháng thì đôi mắt đã không còn nhìn thấy được .','2019_03/received_337938483625271.jpeg','',1,1,'4',1,0,3,0,0,0,0,'',0),(49,22,'22',0,1,'',0,1552987825,1552987839,1,20,1552987740,0,2,'Kết luận của đồng chí Chủ tịch UBND huyện tại buổi làm việc về thuyên chuyển giáo viên, nhân viên các trường học đầu năm 2019','ket-luan-cua-dong-chi-chu-tich-ubnd-huyen-tai-buoi-lam-viec-ve-thuyen-chuyen-giao-vien-nhan-vien-cac-truong-hoc-dau-nam-2019','Ngày 14/01/2019, UBND huyện tổ chức làm việc với các ngành về thuyên chuyển giáo viên, nhân viên các trường học trực thuộc đầu năm 2019, đồng chí Phạm Trung Đông - Chủ tịch UBND huyện chủ trì. Tham dự làm việc có đồng chí Lê Ngọc Huân, Phó Chủ tịch UBND huyện; thủ trưởng và công chức phụ trách thuộc các ngành, đơn vị: Giáo dục Đào tạo, Nội vụ, Văn phòng HĐND và UBND huyện.','','',0,1,'4',1,0,0,0,0,0,0,'',0),(42,19,'19',0,1,'',0,1552983816,1552983816,1,3,1552983720,0,2,'Thông báo về thời gian giám sát của Ban Pháp chế HĐND huyện','thong-bao-ve-thoi-gian-giam-sat-cua-ban-phap-che-hdnd-huyen','Thực hiện Nghị quyết số 04/NQ – HĐND ngày 09/7/2018 của HĐND huyện về chương trình giám sát của Hội đồng nhân dân huyện năm 2019,  Quyết định số 12/QĐ-HĐND-BPC ngày 27/02/2019 về việc thành lập Đoàn giám sát của Ban Pháp chế HĐND huyện, Đoàn giám sát thông báo thời gian làm việc cụ thể tại UBND các xã chịu sự giám sát như sau:','','',0,1,'4',1,0,0,0,0,0,0,'',0),(43,19,'19',0,1,'',0,1552985166,1552985166,1,21,1552985100,0,2,'Kết quả lấy phiếu tín nhiệm đối với người giữ chức vụ do HĐND huyện bầu','ket-qua-lay-phieu-tin-nhiem-doi-voi-nguoi-giu-chuc-vu-do-hdnd-huyen-bau','Kết quả lấy phiếu tín nhiệm đối với người giữ chức vụ do HĐND huyện bầu <br />Kỳ họp thứ 9, Hội đồng nhân dân huyện khóa XIX nhiệm kỳ 2016-2021 đã hoàn thành việc lấy phiếu tín nhiệm đối với 20 người giữ chức vụ do Hội đồng nhân dân bầu.','2019_03/img_15881.jpg','',1,1,'4',1,0,0,0,0,0,0,'',0),(44,14,'13,14',0,1,'Hồng Minh - Hội CTĐ huyện Quảng Ninh',0,1552985810,1552985810,1,22,1552985460,0,2,'Sức lan tỏa từ phong trào hiến máu tình nguyện','suc-lan-toa-tu-phong-trao-hien-mau-tinh-nguyen','Là một chương trình hoạt động xã hội giàu ý nghĩa nhân văn, những năm gần đây, phong trào HMTN đã và đang có sức lan tỏa sâu rộng trong đời sống xã hội.','2019_03/20170510_075051.jpg','',1,1,'4',1,0,1,0,0,0,0,'',0),(45,14,'13,14',0,1,'Hồng Minh - Hội CTĐ huyện Quảng Ninh',0,1552986040,1552986040,1,23,1552985820,0,2,'Lời cám ơn đến từ sáng mồng một tết','loi-cam-on-den-tu-sang-mong-mot-tet','Sáng 01 tết nguyên đán, đúng 7h sáng, chuông điện thoại reo lên. Một thoáng giật mình bởi mới sang mồng một tết Nguyên Đán, tết của đoàn viên, tết của gia đình, họ hàng, tổ tiên. Không ngoại lệ, tôi cũng đang tư thế chỉnh tề, chuẩn bị cùng gia đình, chồng con lên đường viếng mộ người thân, tổ tiên dòng tộc. Chuông điên thoại tiếp tục vang lên, nhìn số điện thoại người quen, không khỏi chút bất ngờ, xen lẫn sự nghi ngờ và lo lắng . Bởi đây là số điện thoại của một địa chỉ nhân đạo mà Hội Chữ thập đỏ huyện Quảng Ninh chúng tôi đứng ra vận động hỗ trợ trong năm 2016.','2019_03/dc-le-thi-minh-hai-chu-tich-ubmttqvn-huyen-va-dc-bui-van-mieng-chu-tich-ldld-huyen-den-tham.jpg','',1,1,'4',1,0,1,0,0,0,0,'',0),(46,27,'18,27',0,1,'',0,1552986486,1552986486,1,24,1552986420,0,2,'Quảng Ninh học tập tư tưởng Hồ Chí Minh về bảo tồn văn hóa','quang-ninh-hoc-tap-tu-tuong-ho-chi-minh-ve-bao-ton-van-hoa','Trong cuộc đời hoạt động của Chủ tịch Hồ Chí Minh, Người luôn luôn coi trọng vấn đề văn hóa, định nghĩa về văn hoá, Bác Hồ viết: “Vì lẽ sinh tồn cũng như mục đích của cuộc sống, loài người mới sáng tạo và phát minh ra ngôn ngữ, chữ viết, đạo đức, pháp luật, khoa học, tôn giáo, văn học, nghệ thuật, những công cụ cho sinh hoạt hằng ngày về mặc, ăn, ở và phương thức sử dụng. Toàn bộ những sáng tạo và phát minh đó tức là văn hóa. Văn hóa là sự tổng hợp của mọi phương thức sinh hoạt cùng với biểu hiện của nó mà loài người đã sản sinh ra nhằm thích ứng những nhu cầu đời sống và đòi hỏi của sự sinh tồn”.','2019_03/dsc04091_1448871663322.jpg','',1,1,'4',1,0,2,0,0,0,0,'',0),(33,46,'46',0,1,'Ngọc Khang - Đài TT-TH Quảng Ninh',0,1552965547,1552965547,1,17,1552965420,0,2,'Hội cựu chiến binh huyện Quảng Ninh thăm tặng quà gia đình hội viên dân tộc Vân Kiều có hoàn cảnh đặc biệt khó khăn tại xã Trường Sơn','hoi-cuu-chien-binh-huyen-quang-ninh-tham-tang-qua-gia-dinh-hoi-vien-dan-toc-van-kieu-co-hoan-canh-dac-biet-kho-khan-tai-xa-truong-son','Ngày 13/3, Hội cựu chiến binh huyện Quảng Ninh tổ chức đi thăm, tặng quà cho các gia đình hội viên người đồng bào dân tộc Vân Kiều có hoàn cảnh đặc biệt khó khăn tại xã miền núi Trường Sơn.','2019_03/img_0922282.jpg','Hội CCB Quảng Ninh thăm, tặng quà gia đình bà Hồ Thị Hoàng ở bản Cấy Sú, Trường Sơn.',1,1,'4',1,0,1,0,0,0,0,'',0),(20,47,'47',0,1,'Ngọc Khang',0,1510215907,1552965702,1,9,1510215900,0,2,'UBND huyện Quảng Ninh tổ chức hội nghị triển khai công tác phòng cháy chữa cháy, bảo vệ rừng và phòng cháy chữa cháy rừng năm 2019','ubnd-huyen-quang-ninh-to-chuc-hoi-nghi-trien-khai-cong-tac-phong-chay-chua-chay-bao-ve-rung-va-phong-chay-chua-chay-rung-nam-2019','Ngày 15/3, UBND huyện Quảng Ninh tổ chức hội nghị triển khai công tác phòng cháy chữa cháy, bảo vệ rừng và phòng cháy chữa cháy rừng năm 2019. Đồng chí Nguyễn Ngọc Thụ, Phó Chủ tịch UBND huyện chủ trì hội nghị.','53297071_847068188960274_4811614847680643072_n.jpg','Đồng chí Nguyễn Ngọc Thụ, Phó Chủ tịch UBND huyện phát biểu tại hội nghị',1,1,'4',1,0,3,0,0,0,0,'',0),(32,46,'44,46',0,1,'Ngọc Khang - Đài TT-TH Quảng Ninh',0,1552965369,1552985418,1,16,1552965120,0,2,'Quảng Ninh xây dựng Chùa Kim Nại','quang-ninh-xay-dung-chua-kim-nai','Được sự hỗ trợ của con em quê hương đang công tác trên khắp mọi miền Tổ quốc, hiện nay, trên địa bàn huyện Quảng Ninh ngoài phong trào xây dựng đình làng, cổng làng, việc xây dựng chùa đang được chú trọng. Cùng với chùa Quảng Xá đã khánh thành đưa vào sử dụng, chùa Kim Nại, xã An Ninh đang trong quá trình hoàn thiện.','2019_03/54522836_845476819119411_8974749969365860352_n.jpg','',1,1,'4',1,0,2,0,0,0,0,'',0),(24,62,'62',0,1,'',0,1552955671,1552955671,1,7,1552955520,0,2,'Chương trình công tác của TT HĐND và UBND từ ngày 18&#x002F;3 đến 24&#x002F;3&#x002F;2019','chuong-trinh-cong-tac-cua-tt-hdnd-va-ubnd-tu-ngay-18-3-den-24-3-2019','','','',0,1,'4',1,0,2,0,0,0,0,'',0),(27,37,'37',0,1,'',0,1552962255,1552962457,1,8,1552962000,0,2,'Thường trực huyện ủy','thuong-truc-huyen-uy','','','',0,1,'4',1,0,1,0,0,0,0,'',0),(28,39,'39',0,1,'',0,1552963697,1552963697,1,10,1552962540,0,2,'UBND HUYỆN','ubnd-huyen','','','',0,1,'4',1,0,1,0,0,0,0,'',0),(29,40,'40',0,1,'',0,1552963902,1552963933,1,11,1552963740,0,2,'Ủy ban mặt trận tổ quốc Việt Nam huyện','uy-ban-mat-tran-to-quoc-viet-nam-huyen','','','',0,1,'4',1,0,1,0,0,0,0,'',0),(30,45,'45',0,1,'',0,1552964139,1552964197,1,13,1552963920,0,2,'Ngân hàng Chính sách xã hội huyện Quảng Ninh 1,5 tỷ đồng cho chương trình tín dụng cho vay nhà ở xã hội theo Nghị định số 100&#x002F;2015&#x002F;NĐ-CP của Thủ tướng Chính phủ','ngan-hang-chinh-sach-xa-hoi-huyen-quang-ninh-1-5-ty-dong-cho-chuong-trinh-tin-dung-cho-vay-nha-o-xa-hoi-theo-nghi-dinh-so-100-2015-nd-cp-cua-thu-tuong-chinh-phu','Vừa qua, Ngân hàng Chính sách xã hội (NHCSXH) huyện Quảng Ninh được giao bổ sung chỉ tiêu kế hoạch tín dụng năm 2019 đối với chương trình tín dụng cho vay nhà ở xã hội theo Nghị định số 100/2015/NĐ-CP của Thủ tướng Chính phủ với số tiền 1,5 tỷ đồng.','2019_03/img_15881.jpg','NHCSXH giải ngân vốn tín dụng chính sách tại Điểm giao dịch xã',1,1,'4',1,0,1,0,0,0,0,'',0),(31,45,'45',0,1,'',0,1552964500,1552964500,1,14,1552964160,0,2,'Đảng bộ xã Võ Ninh triển khai nhiệm vụ xây dựng Đảng năm 2019','dang-bo-xa-vo-ninh-trien-khai-nhiem-vu-xay-dung-dang-nam-2019','Ngày 7/3, Đảng bộ xã Võ Ninh tổ chức hội nghị tổng kết công tác xây dựng Đảng năm 2018, triển khai nhiệm vụ năm 2019. Đồng chí Lê Chí Huy-Ủy viên Ban Thương vụ Huyện ủy-Phó chủ tịch HĐND huyện và đại diễn lãnh đạo một số ban xây dựng Đảng của Huyện ủy đã đến dự và chỉ đạo hội nghị.','2019_03/3213131.jpg','Đồng chí Lê Chí Huy-Ủy viên Ban Thương vụ Huyện ủy-Phó chủ tịch HĐND huyện phát biểu tại hội nghị',1,1,'4',1,0,1,0,0,0,0,'',0),(47,15,'15',0,1,'Hồng Minh - Hội CTĐ huyện Quảng Ninh',0,1552987110,1552987143,1,25,1552986900,0,2,'Hãy giúp em Lý vượt qua hoàn cảnh','hay-giup-em-ly-vuot-qua-hoan-canh','Đó là em Võ Thị Lý, sinh năm 2002, thôn Hoành Vinh, xã An Ninh, huyện Quảng Ninh. Lý đang là học sinh lớp 11A6, trường THPT Quảng Ninh. Nhiều năm liền Lý luôn là học sinh giỏi tòan diện tất cả các môn học, trong đó nhiều năm liền Lý đạt các giải thi học sinh giỏi môn Vật lý, Toán, Văn. Hiện nay, gia đình em đang rơi vào hoàn cảnh đặc biệt khó khăn và em đang có nguy cơ bỏ học.','2019_03/em-ly.jpg','',1,1,'4',1,0,3,0,0,0,0,'',0),(34,47,'47',0,1,'Hà Ngọc Khang',0,1552965787,1552965787,1,5,1552965720,0,2,'Lực lượng vũ trang Quảng Ninh huấn luyện giỏi, kỷ luật nghiêm, sẵn sàng chiến đấu cao','luc-luong-vu-trang-quang-ninh-huan-luyen-gioi-ky-luat-nghiem-san-sang-chien-dau-cao','Với phương châm “Cơ bản, thiết thực, vững chắc”, những năm qua, lực lượng vũ trang huyện Quảng Ninh đã thực hiện tốt nhiệm vụ huấn luyện chiến đấu, bảo đảm sát với nội dung, đối tượng, địa bàn tác chiến... góp phần củng cố, nâng cao chất lượng tổng hợp, xây dựng lực lương vũ trang ngày càng chính quy tinh nhuệ và từng bước hiện đại, đáp ứng yêu cầu nhiệm vụ trong tình hình mới.','','',0,1,'4',1,0,1,0,0,0,0,'',0),(35,48,'44,48',0,1,'THÁI TOẢN- ĐỨC TRỌNG',0,1552966001,1552985235,1,18,1552965780,0,2,'Nuôi hươu Sao cho thu nhập cao','nuoi-huou-sao-cho-thu-nhap-cao','Cựu chiến binh(CCB) Nguyễn Viết Nghĩa-73 tuổi ở thôn Hiển Lộc, xã Duy Ninh là người đầu tiên nuôi hươu sao ở huyện Quảng Ninh và từ nuôi hươu sao gia đình ông và gia đình các thành viên khác trong Hợp tác xã(HTX) nuôi hươu sao đều đã xóa được đói, ai cũng giàu lên.','2019_03/img20190226153834.jpg','IMG20190226153834',1,1,'4',1,0,2,0,0,0,0,'',0),(36,48,'48',0,1,'Ngọc Khang',0,1552966081,1552966081,1,15,1552966020,0,2,'Anh hùng Nguyễn Văn Lanh và sự kiện Gạc Ma','anh-hung-nguyen-van-lanh-va-su-kien-gac-ma','Sự kiện ngày 14/3/1988 ở đảo Gạc Ma thuộc quần đảo Trường Sa của Việt Nam mãi mãi là mốc son của dân tộc. Trong trận chiến bi hùng đó, tỉnh Quảng Bình có 13 người lính hy sinh, 2 người được phong tặng Anh hùng Lực lượng vũ trang Nhân dân, trong đó có anh Nguyễn Văn Lanh quê ở xã Vạn Ninh, huyện Quảng Ninh.','','',0,1,'4',1,0,0,0,0,0,0,'',0),(37,50,'50',0,1,'',0,1552966164,1552966164,1,4,1552966080,0,2,'Mục tiêu chất lượng','muc-tieu-chat-luong','','','',0,1,'4',1,0,1,0,0,0,0,'',0),(38,50,'50',0,1,'',0,1552966226,1552966226,1,1,1552966140,0,2,'CHÍNH SÁCH CHẤT LƯỢNG','chinh-sach-chat-luong','','','',0,1,'4',1,0,2,0,0,0,0,'',0),(39,51,'51',0,1,'',0,1552966309,1552966309,1,12,1552966260,0,2,'Nội dung','noi-dung','','','',0,1,'4',1,0,1,0,0,0,0,'',0),(40,56,'56',0,1,'Hồng Nhung',0,1552966484,1552966484,1,6,1552966380,0,2,'Sắc xuân trên xã Nông thôn mới','sac-xuan-tren-xa-nong-thon-moi','Trở lại xã Hiền Ninh vào những ngày giáp Tết Nguyên đán 2019, chúng ta càng thêm phấn khởi khi nhận thấy vùng quê này có nhiều khởi sắc. Những con đường bê tông rộng rãi, những ngôi nhà kiên cố, đường liên thôn, liên xã sạch đẹp, khang trang, rợp bóng cờ; nhà nhà, người người đón tết trong niềm hân hoan phấn khởi.','','',0,1,'4',1,0,1,0,0,0,0,'',0),(41,46,'44,46,56',0,1,'Hà Ngọc Khang',0,1552966766,1552985364,1,19,1552966560,0,2,'Vạn Ninh trên đường cán đích Nông thôn mới','van-ninh-tren-duong-can-dich-nong-thon-moi','Sau 8 năm triển khai thực hiện Chương trình mục tiêu Quốc gia xây dựng nông thôn mới, huyện Quảng Ninh đã có 7 xã về đích là xã Lương Ninh, Vĩnh Ninh, Hàm Ninh, Võ Ninh, Xuân Ninh, Duy Ninh và Hiền Ninh. Hiện nay, cùng với Gia Ninh, xã Vạn Ninh đã hoàn thành 19/19 tiêu chí và đã trình cấp có thẩm quyền xem xét, thẩm định công nhận đạt chuẩn.','2019_03/img_8296.jpg','IMG 8296',1,1,'4',1,0,0,0,0,0,0,'',0);
/*!40000 ALTER TABLE `nv4_vi_news_rows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_news_sources`
--

DROP TABLE IF EXISTS `nv4_vi_news_sources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_news_sources` (
  `sourceid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `weight` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `add_time` int(11) unsigned NOT NULL,
  `edit_time` int(11) unsigned NOT NULL,
  PRIMARY KEY (`sourceid`),
  UNIQUE KEY `title` (`title`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_news_sources`
--

LOCK TABLES `nv4_vi_news_sources` WRITE;
/*!40000 ALTER TABLE `nv4_vi_news_sources` DISABLE KEYS */;
INSERT INTO `nv4_vi_news_sources` VALUES (1,'Báo Hà Nội Mới','http://hanoimoi.com.vn','',1,1274989177,1274989177),(2,'VINADES.,JSC','http://vinades.vn','',2,1274989787,1274989787),(3,'Báo điện tử Dân Trí','http://dantri.com.vn','',3,1322685396,1322685396),(4,'Bộ Thông tin và Truyền thông','http://http://mic.gov.vn','',4,1445309676,1445309676),(5,'nukeviet.vn','https://nukeviet.vn','',5,1552956739,1552956739);
/*!40000 ALTER TABLE `nv4_vi_news_sources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_news_tags`
--

DROP TABLE IF EXISTS `nv4_vi_news_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_news_tags` (
  `tid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `numnews` mediumint(8) NOT NULL DEFAULT '0',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`tid`),
  UNIQUE KEY `alias` (`alias`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_news_tags`
--

LOCK TABLES `nv4_vi_news_tags` WRITE;
/*!40000 ALTER TABLE `nv4_vi_news_tags` DISABLE KEYS */;
INSERT INTO `nv4_vi_news_tags` VALUES (1,0,'nguồn-mở','','','nguồn mở'),(2,0,'quen-thuộc','','','quen thuộc'),(3,0,'cộng-đồng','','','cộng đồng'),(4,0,'việt-nam','','','việt nam'),(5,0,'hoạt-động','','','hoạt động'),(6,0,'tin-tức','','','tin tức'),(7,0,'thương-mại-điện','','','thương mại điện'),(8,0,'điện-tử','','','điện tử'),(9,1,'nukeviet','','','nukeviet'),(10,1,'vinades','','','vinades'),(11,0,'lập-trình-viên','','','lập trình viên'),(12,0,'chuyên-viên-đồ-họa','','','chuyên viên đồ họa'),(13,0,'php','','','php'),(14,0,'mysql','','','mysql'),(15,0,'nhân-tài-đất-việt-2011','','','nhân tài đất việt 2011'),(16,0,'mã-nguồn-mở','','','mã nguồn mở'),(17,0,'nukeviet4','','','nukeviet4'),(18,0,'mail','','','mail'),(19,0,'fpt','','','fpt'),(20,0,'smtp','','','smtp'),(21,0,'bootstrap','','','bootstrap'),(22,0,'block','','','block'),(23,0,'modules','','','modules'),(24,0,'banner','','','banner'),(25,0,'liên-kết','','','liên kết'),(26,1,'hosting','','','hosting'),(27,0,'hỗ-trợ','','','hỗ trợ'),(28,0,'hợp-tác','','','hợp tác'),(29,1,'tốc-độ','','','tốc độ'),(30,1,'website','','','website'),(31,1,'bảo-mật','','','bảo mật'),(32,0,'giáo-dục','','','giáo dục'),(33,0,'edu-gate','','','edu gate'),(34,0,'lập-trình','','','lập trình'),(35,0,'logo','','','logo'),(36,0,'code','','','code'),(37,0,'thực-tập','','','thực tập'),(38,0,'kinh-doanh','','','kinh doanh'),(39,0,'nhân-viên','','','nhân viên'),(40,0,'bộ-gd&đt','','','Bộ GD&ĐT'),(41,0,'module','','','module'),(42,0,'php-nuke','','','php-nuke');
/*!40000 ALTER TABLE `nv4_vi_news_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_news_tags_id`
--

DROP TABLE IF EXISTS `nv4_vi_news_tags_id`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_news_tags_id` (
  `id` int(11) NOT NULL,
  `tid` mediumint(9) NOT NULL,
  `keyword` varchar(65) COLLATE utf8mb4_unicode_ci NOT NULL,
  UNIQUE KEY `id_tid` (`id`,`tid`),
  KEY `tid` (`tid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_news_tags_id`
--

LOCK TABLES `nv4_vi_news_tags_id` WRITE;
/*!40000 ALTER TABLE `nv4_vi_news_tags_id` DISABLE KEYS */;
/*!40000 ALTER TABLE `nv4_vi_news_tags_id` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_news_tmp`
--

DROP TABLE IF EXISTS `nv4_vi_news_tmp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_news_tmp` (
  `id` mediumint(8) unsigned NOT NULL,
  `admin_id` int(11) NOT NULL DEFAULT '0',
  `time_edit` int(11) NOT NULL,
  `time_late` int(11) NOT NULL,
  `ip` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_news_tmp`
--

LOCK TABLES `nv4_vi_news_tmp` WRITE;
/*!40000 ALTER TABLE `nv4_vi_news_tmp` DISABLE KEYS */;
INSERT INTO `nv4_vi_news_tmp` VALUES (22,1,1552897639,1552897660,'::1'),(26,1,1552962033,1552962033,'::1'),(6,1,1552982743,1552982743,'::1');
/*!40000 ALTER TABLE `nv4_vi_news_tmp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_news_topics`
--

DROP TABLE IF EXISTS `nv4_vi_news_topics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_news_topics` (
  `topicid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `weight` smallint(5) NOT NULL DEFAULT '0',
  `keywords` text COLLATE utf8mb4_unicode_ci,
  `add_time` int(11) NOT NULL DEFAULT '0',
  `edit_time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`topicid`),
  UNIQUE KEY `title` (`title`),
  UNIQUE KEY `alias` (`alias`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_news_topics`
--

LOCK TABLES `nv4_vi_news_topics` WRITE;
/*!40000 ALTER TABLE `nv4_vi_news_topics` DISABLE KEYS */;
INSERT INTO `nv4_vi_news_topics` VALUES (1,'NukeViet 4','NukeViet-4','','NukeViet 4',1,'NukeViet 4',1445396011,1445396011);
/*!40000 ALTER TABLE `nv4_vi_news_topics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_page`
--

DROP TABLE IF EXISTS `nv4_vi_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_page` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imagealt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imageposition` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `bodytext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` text COLLATE utf8mb4_unicode_ci,
  `socialbutton` tinyint(4) NOT NULL DEFAULT '0',
  `activecomm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `layout_func` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `weight` smallint(4) NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `add_time` int(11) NOT NULL DEFAULT '0',
  `edit_time` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hot_post` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `alias` (`alias`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_page`
--

LOCK TABLES `nv4_vi_page` WRITE;
/*!40000 ALTER TABLE `nv4_vi_page` DISABLE KEYS */;
/*!40000 ALTER TABLE `nv4_vi_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_page_config`
--

DROP TABLE IF EXISTS `nv4_vi_page_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_page_config` (
  `config_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `config_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  UNIQUE KEY `config_name` (`config_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_page_config`
--

LOCK TABLES `nv4_vi_page_config` WRITE;
/*!40000 ALTER TABLE `nv4_vi_page_config` DISABLE KEYS */;
INSERT INTO `nv4_vi_page_config` VALUES ('viewtype','0'),('facebookapi',''),('per_page','20'),('news_first','0'),('related_articles','5'),('copy_page','0'),('alias_lower','1');
/*!40000 ALTER TABLE `nv4_vi_page_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_referer_stats`
--

DROP TABLE IF EXISTS `nv4_vi_referer_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_referer_stats` (
  `host` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` int(11) NOT NULL DEFAULT '0',
  `month01` int(11) NOT NULL DEFAULT '0',
  `month02` int(11) NOT NULL DEFAULT '0',
  `month03` int(11) NOT NULL DEFAULT '0',
  `month04` int(11) NOT NULL DEFAULT '0',
  `month05` int(11) NOT NULL DEFAULT '0',
  `month06` int(11) NOT NULL DEFAULT '0',
  `month07` int(11) NOT NULL DEFAULT '0',
  `month08` int(11) NOT NULL DEFAULT '0',
  `month09` int(11) NOT NULL DEFAULT '0',
  `month10` int(11) NOT NULL DEFAULT '0',
  `month11` int(11) NOT NULL DEFAULT '0',
  `month12` int(11) NOT NULL DEFAULT '0',
  `last_update` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `host` (`host`),
  KEY `total` (`total`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_referer_stats`
--

LOCK TABLES `nv4_vi_referer_stats` WRITE;
/*!40000 ALTER TABLE `nv4_vi_referer_stats` DISABLE KEYS */;
INSERT INTO `nv4_vi_referer_stats` VALUES ('l.facebook.com',2,0,0,0,0,0,0,0,0,1,0,1,0,1573800823),('m.facebook.com',1,0,0,0,0,0,0,0,0,0,0,1,0,1573799608),('quanly.phubinh.vn',8,0,7,1,0,0,0,0,0,0,0,0,0,1614565141);
/*!40000 ALTER TABLE `nv4_vi_referer_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_searchkeys`
--

DROP TABLE IF EXISTS `nv4_vi_searchkeys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_searchkeys` (
  `id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `skey` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` int(11) NOT NULL DEFAULT '0',
  `search_engine` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  KEY `id` (`id`),
  KEY `skey` (`skey`),
  KEY `search_engine` (`search_engine`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_searchkeys`
--

LOCK TABLES `nv4_vi_searchkeys` WRITE;
/*!40000 ALTER TABLE `nv4_vi_searchkeys` DISABLE KEYS */;
/*!40000 ALTER TABLE `nv4_vi_searchkeys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_siteterms`
--

DROP TABLE IF EXISTS `nv4_vi_siteterms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_siteterms` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imagealt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imageposition` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `bodytext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` text COLLATE utf8mb4_unicode_ci,
  `socialbutton` tinyint(4) NOT NULL DEFAULT '0',
  `activecomm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `layout_func` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `weight` smallint(4) NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `add_time` int(11) NOT NULL DEFAULT '0',
  `edit_time` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hot_post` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `alias` (`alias`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_siteterms`
--

LOCK TABLES `nv4_vi_siteterms` WRITE;
/*!40000 ALTER TABLE `nv4_vi_siteterms` DISABLE KEYS */;
INSERT INTO `nv4_vi_siteterms` VALUES (1,'Chính sách bảo mật (Quyền riêng tư)','privacy','','',0,'Tài liệu này cung cấp cho bạn (người truy cập và sử dụng website) chính sách liên quan đến bảo mật và quyền riêng tư của bạn','<strong><a id=\"index\" name=\"index\"></a>Danh mục</strong><br /> <a href=\"#1\">Điều 1: Thu thập thông tin</a><br /> <a href=\"#2\">Điều 2: Lưu trữ &amp; Bảo vệ thông tin</a><br /> <a href=\"#3\">Điều 3: Sử dụng thông tin </a><br /> <a href=\"#4\">Điều 4: Tiếp nhận thông tin từ các đối tác </a><br /> <a href=\"#5\">Điều 5: Chia sẻ thông tin với bên thứ ba</a><br /> <a href=\"#6\">Điều 6: Thay đổi chính sách bảo mật</a>  <hr  /> <h2 style=\"text-align: justify;\"><a id=\"1\" name=\"1\"></a>Điều 1: Thu thập thông tin</h2>  <h3 style=\"text-align: justify;\">1.1. Thu thập tự động:</h3>  <div style=\"text-align: justify;\">Hệ thống này được xây dựng bằng mã nguồn NukeViet. Như mọi website hiện đại khác, chúng tôi sẽ thu thập địa chỉ IP và các thông tin web tiêu chuẩn khác của bạn như: loại trình duyệt, các trang bạn truy cập trong quá trình sử dụng dịch vụ, thông tin về máy tính &amp; thiết bị mạng v.v… cho mục đích phân tích thông tin phục vụ việc bảo mật và giữ an toàn cho hệ thống.</div>  <h3 style=\"text-align: justify;\">1.2. Thu thập từ các khai báo của chính bạn:</h3>  <div style=\"text-align: justify;\">Các thông tin do bạn khai báo cho chúng tôi trong quá trình làm việc như: đăng ký tài khoản, liên hệ với chúng tôi... cũng sẽ được chúng tôi lưu trữ phục vụ công việc chăm sóc khách hàng sau này.</div>  <h3 style=\"text-align: justify;\">1.3. Thu thập thông tin thông qua việc đặt cookies:</h3>  <p style=\"text-align: justify;\">Như mọi website hiện đại khác, khi bạn truy cập website, chúng tôi (hoặc các công cụ theo dõi hoặc thống kê hoạt động của website do các đối tác cung cấp) sẽ đặt một số File dữ liệu gọi là Cookies lên đĩa cứng hoặc bộ nhớ máy tính của bạn.</p>  <p style=\"text-align: justify;\">Một trong số những Cookies này có thể tồn tại lâu để thuận tiện cho bạn trong quá trình sử dụng, ví dụ như: lưu Email của bạn trong trang đăng nhập để bạn không phải nhập lại v.v…</p>  <h3 style=\"text-align: justify;\">1.4. Thu thập và lưu trữ thông tin trong quá khứ:</h3>  <p style=\"text-align: justify;\">Bạn có thể thay đổi thông tin cá nhân của mình bất kỳ lúc nào bằng cách sử dụng chức năng tương ứng. Tuy nhiên chúng tôi sẽ lưu lại những thông tin bị thay đổi để chống các hành vi xóa dấu vết gian lận.</p>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2 style=\"text-align: justify;\"><a id=\"2\" name=\"2\"></a>Điều 2: Lưu trữ &amp; Bảo vệ thông tin</h2>  <div style=\"text-align: justify;\">Hầu hết các thông tin được thu thập sẽ được lưu trữ tại cơ sở dữ liệu của chúng tôi.<br /> <br /> Chúng tôi bảo vệ dữ liệu cá nhân của các bạn bằng các hình thức như: mật khẩu, tường lửa, mã hóa cùng các hình thức thích hợp khác và chỉ cấp phép việc truy cập và xử lý dữ liệu cho các đối tượng phù hợp, ví dụ chính bạn hoặc các nhân viên có trách nhiệm xử thông tin với bạn thông qua các bước xác định danh tính phù hợp.<br /> <br /> Mật khẩu của bạn được lưu trữ và bảo vệ bằng phương pháp mã hoá trong cơ sở dữ liệu của hệ thống, vì thế nó rất an toàn. Tuy nhiên, chúng tôi khuyên bạn không nên dùng lại mật khẩu này trên các website khác. Mật khẩu của bạn là cách duy nhất để bạn đăng nhập vào tài khoản thành viên của mình trong website này, vì thế hãy cất giữ nó cẩn thận. Trong mọi trường hợp bạn không nên cung cấp thông tin mật khẩu cho bất kỳ người nào dù là người của chúng tôi, người của NukeViet hay bất kỳ người thứ ba nào khác trừ khi bạn hiểu rõ các rủi ro khi để lộ mật khẩu. Nếu quên mật khẩu, bạn có thể sử dụng chức năng “<a href=\"/users/lostpass/\">Quên mật khẩu</a>” trên website. Để thực hiện việc này, bạn cần phải cung cấp cho hệ thống biết tên thành viên hoặc địa chỉ Email đang sử dụng của mình trong tài khoản, sau đó hệ thống sẽ tạo ra cho bạn mật khẩu mới và gửi đến cho bạn để bạn vẫn có thể đăng nhập vào tài khoản thành viên của mình.  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p> </div>  <h2 style=\"text-align: justify;\"><a id=\"3\" name=\"3\"></a>Điều 3: Sử dụng thông tin</h2>  <p style=\"text-align: justify;\">Thông tin thu thập được sẽ được chúng tôi sử dụng để:</p>  <div style=\"text-align: justify;\">- Cung cấp các dịch vụ hỗ trợ &amp; chăm sóc khách hàng.</div>  <div style=\"text-align: justify;\">- Thực hiện giao dịch thanh toán &amp; gửi các thông báo trong quá trình giao dịch.</div>  <div style=\"text-align: justify;\">- Xử lý khiếu nại, thu phí &amp; giải quyết sự cố.</div>  <div style=\"text-align: justify;\">- Ngăn chặn các hành vi có nguy cơ rủi ro, bị cấm hoặc bất hợp pháp và đảm bảo tuân thủ đúng chính sách “Thỏa thuận người dùng”.</div>  <div style=\"text-align: justify;\">- Đo đạc, tùy biến &amp; cải tiến dịch vụ, nội dung và hình thức của website.</div>  <div style=\"text-align: justify;\">- Gửi bạn các thông tin về chương trình Marketing, các thông báo &amp; chương trình khuyến mại.</div>  <div style=\"text-align: justify;\">- So sánh độ chính xác của thông tin cá nhân của bạn trong quá trình kiểm tra với bên thứ ba.</div>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2 style=\"text-align: justify;\"><a id=\"4\" name=\"4\"></a>Điều 4: Tiếp nhận thông tin từ các đối tác</h2>  <div style=\"text-align: justify;\">Khi sử dụng các công cụ giao dịch và thanh toán thông qua internet, chúng tôi có thể tiếp nhận thêm các thông tin về bạn như địa chỉ username, Email, số tài khoản ngân hàng... Chúng tôi kiểm tra những thông tin này với cơ sở dữ liệu người dùng của mình nhằm xác nhận rằng bạn có phải là khách hàng của chúng tôi hay không nhằm giúp việc thực hiện các dịch vụ cho bạn được thuận lợi.<br /> <br /> Các thông tin tiếp nhận được sẽ được chúng tôi bảo mật như những thông tin mà chúng tôi thu thập được trực tiếp từ bạn.</div>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2><a id=\"5\" name=\"5\"></a>Điều 5: Chia sẻ thông tin với bên thứ ba</h2>  <p style=\"text-align: justify;\">Chúng tôi sẽ không chia sẻ thông tin cá nhân, thông tin tài chính... của bạn cho các bên thứ 3 trừ khi được sự đồng ý của chính bạn hoặc khi chúng tôi buộc phải tuân thủ theo các quy định pháp luật hoặc khi có yêu cầu từ cơ quan công quyền có thẩm quyền.</p>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2><a id=\"6\" name=\"6\"></a>Điều 6: Thay đổi chính sách bảo mật</h2>  <p style=\"text-align: justify;\">Chính sách Bảo mật này có thể thay đổi theo thời gian. Chúng tôi sẽ không giảm quyền của bạn theo Chính sách Bảo mật này mà không có sự đồng ý rõ ràng của bạn. Chúng tôi sẽ đăng bất kỳ thay đổi Chính sách Bảo mật nào trên trang này và, nếu những thay đổi này quan trọng, chúng tôi sẽ cung cấp thông báo nổi bật hơn (bao gồm, đối với một số dịch vụ nhất định, thông báo bằng email về các thay đổi của Chính sách Bảo mật).</p>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <p style=\"text-align: right;\">Chính sách bảo mật mặc định này được xây dựng cho <a href=\"http://nukeviet.vn\" target=\"_blank\">NukeViet CMS</a>, được tham khảo từ website <a href=\"http://webnhanh.vn/vi/thiet-ke-web/detail/Chinh-sach-bao-mat-Quyen-rieng-tu-Privacy-Policy-2147/\">webnhanh.vn</a></p>','',0,'4','',1,1,1552401040,1552401040,1,0,0),(2,'Điều khoản và điều kiện sử dụng','terms-and-conditions','','',0,'Đây là các điều khoản và điều kiện áp dụng cho website này. Truy cập và sử dụng website tức là bạn đã đồng ý với các quy định này.','<div style=\"text-align: justify;\">Cảm ơn bạn đã sử dụng. Xin vui lòng đọc các Điều khoản một cách cẩn thận, và <a href=\"/contact/\">liên hệ</a> với chúng tôi nếu bạn có bất kỳ câu hỏi. Bằng việc truy cập hoặc sử dụng website của chúng tôi, bạn đồng ý bị ràng buộc bởi các <a href=\"/siteterms/terms-and-conditions.html\">Điều khoản và điều kiện</a> sử dụng cũng như <a href=\"/siteterms/privacy.html\">Chính sách bảo mật</a> của chúng tôi. Nếu không đồng ý với các quy định này, bạn vui lòng ngưng sử dụng website.<br /> <br /> <strong><a id=\"index\" name=\"index\"></a>Danh mục</strong><br /> <a href=\"#1\">Điều 1: Điều khoản liên quan đến phần mềm vận hành website</a><br /> <a href=\"#2\">Điều 2: Giới hạn cho việc sử dụng Website và các tài liệu trên website</a><br /> <a href=\"#3\">Điều 3: Sử dụng thương hiệu</a><br /> <a href=\"#4\">Điều 4: Các hành vi bị nghiêm cấm</a><br /> <a href=\"#5\">Điều 5: Các đường liên kết đến các website khác</a><br /> <a href=\"#6\">Điều 6: Từ chối bảo đảm</a><br /> <a href=\"#7\">Điều 7: Luật áp dụng và cơ quan giải quyết tranh chấp</a><br /> <a href=\"#8\">Điều 8: Thay đổi điều khoản và điều kiện sử dụng</a></div>  <hr  /> <h2 style=\"text-align: justify;\"><a id=\"1\" name=\"1\"></a>Điều khoản liên quan đến phần mềm vận hành website</h2>  <p style=\"text-align: justify;\">- Website của chúng tôi sử dụng hệ thống NukeViet, là giải pháp về website/ cổng thông tin nguồn mở được phát hành theo giấy phép bản quyền phần mềm tự do nguồn mở “<a href=\"http://www.gnu.org/licenses/old-licenses/gpl-2.0.html\" target=\"_blank\">GNU General Public License</a>” (viết tắt là GNU/GPL hay GPL) và có thể tải về miễn phí tại trang web <a href=\"http://www.nukeviet.vn\" target=\"_blank\">www.nukeviet.vn</a>.<br /> - Website này do chúng tôi sở hữu, điều hành và duy trì. NukeViet (hiểu ở đây là “hệ thống NukeViet” (bao gồm nhân hệ thống NukeViet và các sản phẩm phái sinh như NukeViet CMS, NukeViet Portal, <a href=\"http://edu.nukeviet.vn\" target=\"_blank\">NukeViet Edu Gate</a>...), “www.nukeviet.vn”, “tổ chức NukeViet”, “ban điều hành NukeViet”, &quot;Ban Quản Trị NukeViet&quot; và nói chung là những gì liên quan đến NukeViet...) không liên quan gì đến việc chúng tôi điều hành website cũng như quy định bạn được phép làm và không được phép làm gì trên website này.<br /> - Hệ thống NukeViet là bộ mã nguồn được phát triển để xây dựng các website/ cổng thông tin trên mạng. Chúng tôi (chủ sở hữu, điều hành và duy trì website này) không hỗ trợ và khẳng định hay ngụ ý về việc có liên quan đến NukeViet. Để biết thêm nhiều thông tin về NukeViet, hãy ghé thăm website của NukeViet tại địa chỉ: <a href=\"http://nukeviet.vn\" target=\"_blank\">http://nukeviet.vn</a>.</p>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2 style=\"text-align: justify;\"><a id=\"2\" name=\"2\"></a>Giới hạn cho việc sử dụng Website và các tài liệu trên website</h2>  <p style=\"text-align: justify;\">- Tất cả các quyền liên quan đến tất cả tài liệu và thông tin được hiển thị và/ hoặc được tạo ra sẵn cho Website này (ví dụ như những tài liệu được cung cấp để tải về) được quản lý, sở hữu hoặc được cho phép sử dụng bởi chúng tôi hoặc chủ sở hữu tương ứng với giấy phép tương ứng. Việc sử dụng các tài liệu và thông tin phải được tuân thủ theo giấy phép tương ứng được áp dụng cho chúng.<br /> - Ngoại trừ các tài liệu được cấp phép rõ ràng dưới dạng giấy phép tư liệu mở&nbsp;Creative Commons (gọi là giấy phép CC) cho phép bạn khai thác và chia sẻ theo quy định của giấy phép tư liệu mở, đối với các loại tài liệu không ghi giấy phép rõ ràng thì bạn không được phép sử dụng (bao gồm nhưng không giới hạn việc sao chép, chỉnh sửa toàn bộ hay một phần, đăng tải, phân phối, cấp phép, bán và xuất bản) bất cứ tài liệu nào mà không có sự cho phép trước bằng văn bản của chúng tôi ngoại trừ việc sử dụng cho mục đích cá nhân, nội bộ, phi thương mại.<br /> - Một số tài liệu hoặc thông tin có những điều khoản và điều kiện áp dụng riêng cho chúng không phải là giấy phép tư liệu mở, trong trường hợp như vậy, bạn được yêu cầu phải chấp nhận các điều khoản và điều kiện đó khi truy cập vào các tài liệu và thông tin này.</p>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2 style=\"text-align: justify;\"><a id=\"3\" name=\"3\"></a>Sử dụng thương hiệu</h2>  <p style=\"text-align: justify;\">- VINADES.,JSC, NukeViet và thương hiệu gắn với NukeViet (ví dụ NukeViet CMS, NukeViet Portal, NukeViet Edu Gate...), logo công ty VINADES thuộc sở hữu của Công ty cổ phần phát triển nguồn mở Việt Nam.<br /> - Những tên sản phẩm, tên dịch vụ khác, logo và/ hoặc những tên công ty được sử dụng trong Website này là những tài sản đã được đăng ký độc quyền và được giữ bản quyền bởi những người sở hữu và/ hoặc người cấp phép tương ứng.</p>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2 style=\"text-align: justify;\"><a id=\"4\" name=\"4\"></a>Các hành vi bị nghiêm cấm</h2>  <p style=\"text-align: justify;\">Người truy cập website này không được thực hiện những hành vi dưới đây khi sử dụng website:<br /> - Xâm phạm các quyền hợp pháp (bao gồm nhưng không giới hạn đối với các quyền riêng tư và chung) của người khác.<br /> - Gây ra sự thiệt hại hoặc bất lợi cho người khác.<br /> - Làm xáo trộn trật tự công cộng.<br /> - Hành vi liên quan đến tội phạm.<br /> - Tải lên hoặc phát tán thông tin riêng tư của tổ chức, cá nhân khác mà không được sự chấp thuận của họ.<br /> - Sử dụng Website này vào mục đích thương mại mà chưa được sự cho phép của chúng tôi.<br /> - Nói xấu, làm nhục, phỉ báng người khác.<br /> - Tải lên các tập tin chứa virus hoặc các tập tin bị hư mà có thể gây thiệt hại đến sự vận hành của máy tính khác.<br /> - Những hoạt động có khả năng ảnh hưởng đến hoạt động bình thường của website.<br /> - Những hoạt động mà chúng tôi cho là không thích hợp.<br /> - Những hoạt động bất hợp pháp hoặc bị cấm bởi pháp luật hiện hành.</p>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2 style=\"text-align: justify;\"><a id=\"5\" name=\"5\"></a>Các đường liên kết đến các website khác</h2>  <p style=\"text-align: justify;\">- Các website của các bên thứ ba (không phải các trang do chúng tôi quản lý) được liên kết đến hoặc từ website này (&quot;Các website khác&quot;) được điều hành và duy trì hoàn toàn độc lập bởi các bên thứ ba đó và không nằm trong quyền điều khiển và/hoặc giám sát của chúng tôi. Việc truy cập các website khác phải được tuân thủ theo các điều khoản và điều kiện quy định bởi ban điều hành của website đó.<br /> - Chúng tôi không chịu trách nhiệm cho sự mất mát hoặc thiệt hại do việc truy cập và sử dụng các website bên ngoài, và bạn phải chịu mọi rủi ro khi truy cập các website đó.<br /> - Không có nội dung nào trong Website này thể hiện như một sự đảm bảo của chúng tôi về nội dung của các website khác và các sản phẩm và/ hoặc các dịch vụ xuất hiện và/ hoặc được cung cấp tại các website khác.</p>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2 style=\"text-align: justify;\"><a id=\"6\" name=\"6\"></a>Từ chối bảo đảm</h2>  <p style=\"text-align: justify;\">NGOẠI TRỪ PHẠM VI BỊ CẤM THEO LUẬT PHÁP HIỆN HÀNH, CHÚNG TÔI SẼ:<br /> - KHÔNG CHỊU TRÁCH NHIỆM HAY BẢO ĐẢM, MỘT CÁCH RÕ RÀNG HAY NGỤ Ý, BAO GỒM SỰ BẢO ĐẢM VỀ TÍNH CHÍNH XÁC, MỨC ĐỘ TIN CẬY, HOÀN THIỆN, PHÙ HỢP CHO MỤC ĐÍCH CỤ THỂ, SỰ KHÔNG XÂM PHẠM QUYỀN CỦA BÊN THỨ 3 VÀ/HOẶC TÍNH AN TOÀN CỦA NỘI DỤNG WEBSITE NÀY, VÀ NHỮNG TUYÊN BỐ, ĐẢM BẢO CÓ LIÊN QUAN.<br /> - KHÔNG CHỊU TRÁCH NHIỆM CHO BẤT KỲ SỰ THIỆT HẠI HAY MẤT MÁT PHÁT SINH TỪ VIỆC TRUY CẬP VÀ SỬ DỤNG WEBSITE HAY VIỆC KHÔNG THỂ SỬ DỤNG WEBSITE.<br /> - CHÚNG TÔI CÓ THỂ THAY ĐỔI VÀ/HOẶC THAY THẾ NỘI DUNG CỦA WEBSITE NÀY, HOẶC TẠM HOÃN HOẶC NGƯNG CUNG CẤP CÁC DỊCH VỤ QUA WEBSITE NÀY VÀO BẤT KỲ THỜI ĐIỂM NÀO MÀ KHÔNG CẦN THÔNG BÁO TRƯỚC. CHÚNG TÔI SẼ KHÔNG CHỊU TRÁCH NHIỆM CHO BẤT CỨ THIỆT HẠI NÀO PHÁT SINH DO SỰ THAY ĐỔI HOẶC THAY THẾ NỘI DUNG CỦA WEBSITE.</p>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2 style=\"text-align: justify;\"><a id=\"7\" name=\"7\"></a>Luật áp dụng và cơ quan giải quyết tranh chấp</h2>  <p style=\"text-align: justify;\">- Các Điều Khoản và Điều Kiện này được điều chỉnh và giải thích theo luật của Việt Nam trừ khi có điều khoản khác được cung cấp thêm. Tất cả tranh chấp phát sinh liên quan đến website này và các Điều Khoản và Điều Kiện sử dụng này sẽ được giải quyết tại các tòa án ở Việt Nam.<br /> - Nếu một phần nào đó của các Điều Khoản và Điều Kiện bị xem là không có giá trị, vô hiệu, hoặc không áp dụng được vì lý do nào đó, phần đó được xem như là phần riêng biệt và không ảnh hưởng đến tính hiệu lực của phần còn lại.<br /> - Trong trường hợp có sự mâu thuẫn giữa bản Tiếng Anh và bản Tiếng Việt của bản Điều Khoản và Điều Kiện này, bản Tiếng Việt sẽ được ưu tiên áp dụng.</p>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2 style=\"text-align: justify;\"><a id=\"8\" name=\"8\"></a>Thay đổi điều khoản và điều kiện sử dụng</h2>  <div style=\"text-align: justify;\">Điều khoản và điều kiện sử dụng có thể thay đổi theo thời gian. Chúng tôi bảo lưu quyền thay đổi hoặc sửa đổi bất kỳ điều khoản và điều kiện cũng như các quy định khác, bất cứ lúc nào và theo ý mình. Chúng tôi sẽ có thông báo trên website khi có sự thay đổi. Tiếp tục sử dụng trang web này sau khi đăng các thay đổi tức là bạn đã chấp nhận các thay đổi đó. <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p> </div>','',0,'4','',2,1,1552401040,1552401040,1,0,0);
/*!40000 ALTER TABLE `nv4_vi_siteterms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_siteterms_config`
--

DROP TABLE IF EXISTS `nv4_vi_siteterms_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_siteterms_config` (
  `config_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `config_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  UNIQUE KEY `config_name` (`config_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_siteterms_config`
--

LOCK TABLES `nv4_vi_siteterms_config` WRITE;
/*!40000 ALTER TABLE `nv4_vi_siteterms_config` DISABLE KEYS */;
INSERT INTO `nv4_vi_siteterms_config` VALUES ('viewtype','0'),('facebookapi',''),('per_page','20'),('news_first','0'),('related_articles','5'),('copy_page','0'),('alias_lower','1');
/*!40000 ALTER TABLE `nv4_vi_siteterms_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_voting`
--

DROP TABLE IF EXISTS `nv4_vi_voting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_voting` (
  `vid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `question` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `acceptcm` int(2) NOT NULL DEFAULT '1',
  `active_captcha` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `groups_view` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `publ_time` int(11) unsigned NOT NULL DEFAULT '0',
  `exp_time` int(11) unsigned NOT NULL DEFAULT '0',
  `act` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`vid`),
  UNIQUE KEY `question` (`question`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_voting`
--

LOCK TABLES `nv4_vi_voting` WRITE;
/*!40000 ALTER TABLE `nv4_vi_voting` DISABLE KEYS */;
INSERT INTO `nv4_vi_voting` VALUES (3,'Theo bạn thông tin nội dung website thế nào ?','',1,0,1,'6',1553008140,0,0);
/*!40000 ALTER TABLE `nv4_vi_voting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_vi_voting_rows`
--

DROP TABLE IF EXISTS `nv4_vi_voting_rows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_vi_voting_rows` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `vid` smallint(5) unsigned NOT NULL,
  `title` varchar(245) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `hitstotal` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `vid` (`vid`,`title`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_vi_voting_rows`
--

LOCK TABLES `nv4_vi_voting_rows` WRITE;
/*!40000 ALTER TABLE `nv4_vi_voting_rows` DISABLE KEYS */;
INSERT INTO `nv4_vi_voting_rows` VALUES (9,3,'Phong phú','',1),(10,3,'Dễ sử dụng','',0),(11,3,'Hữu ích','',0);
/*!40000 ALTER TABLE `nv4_vi_voting_rows` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-22 13:47:02