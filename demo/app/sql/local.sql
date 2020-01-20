-- MySQL dump 10.13  Distrib 8.0.15, for macos10.14 (x86_64)
--
-- Host: localhost    Database: local
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wp_aiowps_events`
--

DROP TABLE IF EXISTS `wp_aiowps_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_aiowps_events` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `event_type` varchar(150) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `username` varchar(150) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `event_date` datetime NOT NULL DEFAULT '1000-10-10 10:00:00',
  `ip_or_host` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `referer_info` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `country_code` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `event_data` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_aiowps_events`
--

LOCK TABLES `wp_aiowps_events` WRITE;
/*!40000 ALTER TABLE `wp_aiowps_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_aiowps_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_aiowps_failed_logins`
--

DROP TABLE IF EXISTS `wp_aiowps_failed_logins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_aiowps_failed_logins` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `user_login` varchar(150) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `failed_login_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `login_attempt_ip` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_aiowps_failed_logins`
--

LOCK TABLES `wp_aiowps_failed_logins` WRITE;
/*!40000 ALTER TABLE `wp_aiowps_failed_logins` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_aiowps_failed_logins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_aiowps_global_meta`
--

DROP TABLE IF EXISTS `wp_aiowps_global_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_aiowps_global_meta` (
  `meta_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date_time` datetime NOT NULL DEFAULT '1000-10-10 10:00:00',
  `meta_key1` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `meta_key2` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `meta_key3` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `meta_key4` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `meta_key5` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `meta_value1` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `meta_value2` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `meta_value3` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `meta_value4` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `meta_value5` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`meta_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_aiowps_global_meta`
--

LOCK TABLES `wp_aiowps_global_meta` WRITE;
/*!40000 ALTER TABLE `wp_aiowps_global_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_aiowps_global_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_aiowps_login_activity`
--

DROP TABLE IF EXISTS `wp_aiowps_login_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_aiowps_login_activity` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `user_login` varchar(150) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `login_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `logout_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `login_ip` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `login_country` varchar(150) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `browser_type` varchar(150) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_aiowps_login_activity`
--

LOCK TABLES `wp_aiowps_login_activity` WRITE;
/*!40000 ALTER TABLE `wp_aiowps_login_activity` DISABLE KEYS */;
INSERT INTO `wp_aiowps_login_activity` VALUES (1,1,'flaugher','2020-01-19 22:16:26','0000-00-00 00:00:00','127.0.0.1','','');
/*!40000 ALTER TABLE `wp_aiowps_login_activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_aiowps_login_lockdown`
--

DROP TABLE IF EXISTS `wp_aiowps_login_lockdown`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_aiowps_login_lockdown` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `user_login` varchar(150) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `lockdown_date` datetime NOT NULL DEFAULT '1000-10-10 10:00:00',
  `release_date` datetime NOT NULL DEFAULT '1000-10-10 10:00:00',
  `failed_login_ip` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `lock_reason` varchar(128) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `unlock_key` varchar(128) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_aiowps_login_lockdown`
--

LOCK TABLES `wp_aiowps_login_lockdown` WRITE;
/*!40000 ALTER TABLE `wp_aiowps_login_lockdown` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_aiowps_login_lockdown` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_aiowps_permanent_block`
--

DROP TABLE IF EXISTS `wp_aiowps_permanent_block`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_aiowps_permanent_block` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `blocked_ip` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `block_reason` varchar(128) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `country_origin` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `blocked_date` datetime NOT NULL DEFAULT '1000-10-10 10:00:00',
  `unblock` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_aiowps_permanent_block`
--

LOCK TABLES `wp_aiowps_permanent_block` WRITE;
/*!40000 ALTER TABLE `wp_aiowps_permanent_block` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_aiowps_permanent_block` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2020-01-18 01:51:57','2020-01-18 01:51:57','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.',0,'post-trashed','','',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=385 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://demosite.local','yes');
INSERT INTO `wp_options` VALUES (2,'home','http://demosite.local','yes');
INSERT INTO `wp_options` VALUES (3,'blogname','Mountaineering','yes');
INSERT INTO `wp_options` VALUES (4,'blogdescription','Just another WordPress site','yes');
INSERT INTO `wp_options` VALUES (5,'users_can_register','0','yes');
INSERT INTO `wp_options` VALUES (6,'admin_email','flaugher@gmail.com','yes');
INSERT INTO `wp_options` VALUES (7,'start_of_week','1','yes');
INSERT INTO `wp_options` VALUES (8,'use_balanceTags','0','yes');
INSERT INTO `wp_options` VALUES (9,'use_smilies','1','yes');
INSERT INTO `wp_options` VALUES (10,'require_name_email','1','yes');
INSERT INTO `wp_options` VALUES (11,'comments_notify','1','yes');
INSERT INTO `wp_options` VALUES (12,'posts_per_rss','10','yes');
INSERT INTO `wp_options` VALUES (13,'rss_use_excerpt','0','yes');
INSERT INTO `wp_options` VALUES (14,'mailserver_url','mail.example.com','yes');
INSERT INTO `wp_options` VALUES (15,'mailserver_login','login@example.com','yes');
INSERT INTO `wp_options` VALUES (16,'mailserver_pass','password','yes');
INSERT INTO `wp_options` VALUES (17,'mailserver_port','110','yes');
INSERT INTO `wp_options` VALUES (18,'default_category','1','yes');
INSERT INTO `wp_options` VALUES (19,'default_comment_status','open','yes');
INSERT INTO `wp_options` VALUES (20,'default_ping_status','open','yes');
INSERT INTO `wp_options` VALUES (21,'default_pingback_flag','1','yes');
INSERT INTO `wp_options` VALUES (22,'posts_per_page','10','yes');
INSERT INTO `wp_options` VALUES (23,'date_format','F j, Y','yes');
INSERT INTO `wp_options` VALUES (24,'time_format','g:i a','yes');
INSERT INTO `wp_options` VALUES (25,'links_updated_date_format','F j, Y g:i a','yes');
INSERT INTO `wp_options` VALUES (26,'comment_moderation','0','yes');
INSERT INTO `wp_options` VALUES (27,'moderation_notify','1','yes');
INSERT INTO `wp_options` VALUES (28,'permalink_structure','/%category%/%postname%/','yes');
INSERT INTO `wp_options` VALUES (30,'hack_file','0','yes');
INSERT INTO `wp_options` VALUES (31,'blog_charset','UTF-8','yes');
INSERT INTO `wp_options` VALUES (32,'moderation_keys','','no');
INSERT INTO `wp_options` VALUES (33,'active_plugins','a:8:{i:0;s:51:\"all-in-one-wp-security-and-firewall/wp-security.php\";i:1;s:33:\"classic-editor/classic-editor.php\";i:2;s:36:\"contact-form-7/wp-contact-form-7.php\";i:3;s:20:\"social-pug/index.php\";i:4;s:68:\"stop-spammer-registrations-plugin/stop-spammer-registrations-new.php\";i:5;s:27:\"updraftplus/updraftplus.php\";i:6;s:24:\"wordpress-seo/wp-seo.php\";i:7;s:23:\"wp-insert/wp-insert.php\";}','yes');
INSERT INTO `wp_options` VALUES (34,'category_base','/.','yes');
INSERT INTO `wp_options` VALUES (35,'ping_sites','http://rpc.pingomatic.com\nhttp://rpc.twingly.com\nhttp://api.feedster.com/ping\nhttp://api.moreover.com/RPC2\nhttp://api.moreover.com/ping\nhttp://www.blogdigger.com/RPC2\nhttp://www.blogshares.com/rpc.php\nhttp://www.blogsnow.com/ping\nhttp://www.blogstreet.com/xrbin/xmlrpc.cgi\nhttp://bulkfeeds.net/rpc\nhttp://www.newsisfree.com/xmlrpctest.php\nhttp://ping.blo.gs/\nhttp://ping.feedburner.com\nhttp://ping.syndic8.com/xmlrpc.php\nhttp://ping.weblogalot.com/rpc.php\nhttp://rpc.blogrolling.com/pinger/\nhttp://rpc.technorati.com/rpc/ping\nhttp://rpc.weblogs.com/RPC2\nhttp://www.feedsubmitter.com\nhttp://blo.gs/ping.php\nhttp://www.pingerati.net\nhttp://www.pingmyblog.com\nhttp://geourl.org/ping\nhttp://ipings.com\nhttp://www.weblogalot.com/ping','yes');
INSERT INTO `wp_options` VALUES (36,'comment_max_links','2','yes');
INSERT INTO `wp_options` VALUES (37,'gmt_offset','0','yes');
INSERT INTO `wp_options` VALUES (38,'default_email_category','1','yes');
INSERT INTO `wp_options` VALUES (39,'recently_edited','','no');
INSERT INTO `wp_options` VALUES (40,'template','astra','yes');
INSERT INTO `wp_options` VALUES (41,'stylesheet','astra','yes');
INSERT INTO `wp_options` VALUES (42,'comment_whitelist','1','yes');
INSERT INTO `wp_options` VALUES (43,'blacklist_keys','','no');
INSERT INTO `wp_options` VALUES (44,'comment_registration','0','yes');
INSERT INTO `wp_options` VALUES (45,'html_type','text/html','yes');
INSERT INTO `wp_options` VALUES (46,'use_trackback','0','yes');
INSERT INTO `wp_options` VALUES (47,'default_role','subscriber','yes');
INSERT INTO `wp_options` VALUES (48,'db_version','45805','yes');
INSERT INTO `wp_options` VALUES (49,'uploads_use_yearmonth_folders','1','yes');
INSERT INTO `wp_options` VALUES (50,'upload_path','','yes');
INSERT INTO `wp_options` VALUES (51,'blog_public','1','yes');
INSERT INTO `wp_options` VALUES (52,'default_link_category','0','yes');
INSERT INTO `wp_options` VALUES (53,'show_on_front','page','yes');
INSERT INTO `wp_options` VALUES (54,'tag_base','','yes');
INSERT INTO `wp_options` VALUES (55,'show_avatars','1','yes');
INSERT INTO `wp_options` VALUES (56,'avatar_rating','G','yes');
INSERT INTO `wp_options` VALUES (57,'upload_url_path','','yes');
INSERT INTO `wp_options` VALUES (58,'thumbnail_size_w','150','yes');
INSERT INTO `wp_options` VALUES (59,'thumbnail_size_h','150','yes');
INSERT INTO `wp_options` VALUES (60,'thumbnail_crop','1','yes');
INSERT INTO `wp_options` VALUES (61,'medium_size_w','300','yes');
INSERT INTO `wp_options` VALUES (62,'medium_size_h','300','yes');
INSERT INTO `wp_options` VALUES (63,'avatar_default','mystery','yes');
INSERT INTO `wp_options` VALUES (64,'large_size_w','1024','yes');
INSERT INTO `wp_options` VALUES (65,'large_size_h','1024','yes');
INSERT INTO `wp_options` VALUES (66,'image_default_link_type','none','yes');
INSERT INTO `wp_options` VALUES (67,'image_default_size','','yes');
INSERT INTO `wp_options` VALUES (68,'image_default_align','','yes');
INSERT INTO `wp_options` VALUES (69,'close_comments_for_old_posts','0','yes');
INSERT INTO `wp_options` VALUES (70,'close_comments_days_old','14','yes');
INSERT INTO `wp_options` VALUES (71,'thread_comments','1','yes');
INSERT INTO `wp_options` VALUES (72,'thread_comments_depth','5','yes');
INSERT INTO `wp_options` VALUES (73,'page_comments','0','yes');
INSERT INTO `wp_options` VALUES (74,'comments_per_page','50','yes');
INSERT INTO `wp_options` VALUES (75,'default_comments_page','newest','yes');
INSERT INTO `wp_options` VALUES (76,'comment_order','asc','yes');
INSERT INTO `wp_options` VALUES (77,'sticky_posts','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (78,'widget_categories','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (79,'widget_text','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (80,'widget_rss','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (81,'uninstall_plugins','a:1:{s:33:\"classic-editor/classic-editor.php\";a:2:{i:0;s:14:\"Classic_Editor\";i:1;s:9:\"uninstall\";}}','no');
INSERT INTO `wp_options` VALUES (82,'timezone_string','','yes');
INSERT INTO `wp_options` VALUES (83,'page_for_posts','0','yes');
INSERT INTO `wp_options` VALUES (84,'page_on_front','9','yes');
INSERT INTO `wp_options` VALUES (85,'default_post_format','0','yes');
INSERT INTO `wp_options` VALUES (86,'link_manager_enabled','0','yes');
INSERT INTO `wp_options` VALUES (87,'finished_splitting_shared_terms','1','yes');
INSERT INTO `wp_options` VALUES (88,'site_icon','0','yes');
INSERT INTO `wp_options` VALUES (89,'medium_large_size_w','768','yes');
INSERT INTO `wp_options` VALUES (90,'medium_large_size_h','0','yes');
INSERT INTO `wp_options` VALUES (91,'wp_page_for_privacy_policy','12','yes');
INSERT INTO `wp_options` VALUES (92,'show_comments_cookies_opt_in','1','yes');
INSERT INTO `wp_options` VALUES (93,'admin_email_lifespan','1594864317','yes');
INSERT INTO `wp_options` VALUES (94,'initial_db_version','45805','yes');
INSERT INTO `wp_options` VALUES (95,'wp_user_roles','a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:62:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:20:\"wpseo_manage_options\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:35:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:13:\"wpseo_manager\";a:2:{s:4:\"name\";s:11:\"SEO Manager\";s:12:\"capabilities\";a:37:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;s:20:\"wpseo_manage_options\";b:1;}}s:12:\"wpseo_editor\";a:2:{s:4:\"name\";s:10:\"SEO Editor\";s:12:\"capabilities\";a:36:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;}}}','yes');
INSERT INTO `wp_options` VALUES (96,'fresh_site','0','yes');
INSERT INTO `wp_options` VALUES (97,'widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (98,'widget_recent-posts','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;s:9:\"show_date\";b:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (99,'widget_recent-comments','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (100,'widget_archives','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (101,'widget_meta','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (102,'sidebars_widgets','a:10:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:10:\"nav_menu-3\";i:2;s:14:\"recent-posts-2\";}s:13:\"header-widget\";a:0:{}s:15:\"footer-widget-1\";a:0:{}s:15:\"footer-widget-2\";a:1:{i:0;s:10:\"nav_menu-2\";}s:24:\"advanced-footer-widget-1\";a:0:{}s:24:\"advanced-footer-widget-2\";a:0:{}s:24:\"advanced-footer-widget-3\";a:0:{}s:24:\"advanced-footer-widget-4\";a:0:{}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `wp_options` VALUES (103,'cron','a:10:{i:1579546318;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1579546553;a:1:{s:24:\"aiowps_hourly_cron_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1579548943;a:1:{s:40:\"dpsp_cron_get_posts_networks_share_count\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:14:\"dpsp_2x_hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:7200;}}}i:1579571518;a:4:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1579572118;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1579572119;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1579578953;a:1:{s:23:\"aiowps_daily_cron_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1579580109;a:1:{s:19:\"wpseo-reindex-links\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1580012109;a:1:{s:18:\"wpseo_onpage_fetch\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}','yes');
INSERT INTO `wp_options` VALUES (104,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (105,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (106,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (107,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (108,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (109,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (110,'nonce_key','}@y&d<c_YK]i#^; 1yLuRl3&%D*^`PU%:AK]RL1YF8D2YIWonp5(=p5g<bGOFvnY','no');
INSERT INTO `wp_options` VALUES (111,'nonce_salt','L|r7EJ2y:,(`rZ+9f>m^F@d`Lsvi$u!9HNAC<DN%|+!DS8.uY]wOZ$L5&#_Hw0-3','no');
INSERT INTO `wp_options` VALUES (112,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (113,'widget_nav_menu','a:3:{i:2;a:1:{s:8:\"nav_menu\";i:2;}i:3;a:2:{s:5:\"title\";s:10:\"Categories\";s:8:\"nav_menu\";i:6;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (114,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (116,'recovery_keys','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (117,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.3.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.3.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.3.2\";s:7:\"version\";s:5:\"5.3.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1579544382;s:15:\"version_checked\";s:5:\"5.3.2\";s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (123,'theme_mods_twentytwenty','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1579312967;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}','yes');
INSERT INTO `wp_options` VALUES (124,'_site_transient_timeout_browser_ff9d23aa277001af0ee373a623a537d4','1579917718','no');
INSERT INTO `wp_options` VALUES (125,'_site_transient_browser_ff9d23aa277001af0ee373a623a537d4','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"79.0.3945.117\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no');
INSERT INTO `wp_options` VALUES (126,'_site_transient_timeout_php_check_472f71d2a071d463a95f84346288dc89','1579917719','no');
INSERT INTO `wp_options` VALUES (127,'_site_transient_php_check_472f71d2a071d463a95f84346288dc89','a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','no');
INSERT INTO `wp_options` VALUES (131,'can_compress_scripts','1','no');
INSERT INTO `wp_options` VALUES (144,'theme_mods_twentysixteen','a:3:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:0:{}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1579317796;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:0:{}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:1:{i:0;s:10:\"nav_menu-2\";}}}}','yes');
INSERT INTO `wp_options` VALUES (147,'current_theme','Astra','yes');
INSERT INTO `wp_options` VALUES (148,'theme_switched','','yes');
INSERT INTO `wp_options` VALUES (163,'recently_activated','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (164,'wp_insert_legalpages','a:4:{s:14:\"privacy_policy\";a:2:{s:7:\"content\";s:2668:\"<p>At [sitename], the privacy of our visitors is of extreme importance to us. This privacy policy document outlines the types of personal information is received and collected by [sitename] and how it is used.</p><p><b>Log Files</b></p><p>Like many other Web sites, [sitename] makes use of log files. The information inside the log files includes internet protocol (IP) addresses, type of browser, Internet Service Provider (ISP), date/time stamp, referring/exit pages, and number of clicks to analyze trends, administer the site, track user\\\'s movement around the site, and gather demographic information. IP addresses, and other such information are not linked to any information that is personally identifiable.</p><p><b>Cookies and Web Beacons</b></p><p>[sitename] does use cookies to store information about visitors preferences, record user-specific information on which pages the user access or visit, customize Web page content based on visitors browser type or other information that the visitor sends via their browser.</p><p><b>DoubleClick DART Cookie</b></p><ul><li>Google, as a third party vendor, uses cookies to serve ads on [sitename].</li><li>Google\\\'s use of the DART cookie enables it to serve ads to users based on their visit to [sitename] and other sites on the Internet.</li><li>Users may opt out of the use of the DART cookie by visiting the Google ad and content network privacy policy at the following URL - <a href=\\\"https://www.google.com/policies/privacy/\\\" rel=\\\"nofollow\\\">https://www.google.com/policies/privacy/</a>.</li></ul><p>These third-party ad servers or ad networks use technology to the advertisements and links that appear on [sitename] send directly to your browsers. They automatically receive your IP address when this occurs. Other technologies ( such as cookies, JavaScript, or Web Beacons ) may also be used by the third-party ad networks to measure the effectiveness of their advertisements and / or to personalize the advertising content that you see.</p><p>[sitename] has no access to or control over these cookies that are used by third-party advertisers.</p><p>You should consult the respective privacy policies of these third-party ad servers for more detailed information on their practices as well as for instructions about how to opt-out of certain practices. [sitename]\\\'s privacy policy does not apply to, and we cannot control the activities of, such other advertisers or web sites.</p><p>If you wish to disable cookies, you may do so through your individual browser options. More detailed information about cookie management with specific web browsers can be found at the browser\\\'s respective websites.</p>\";s:13:\"assigned_page\";s:2:\"12\";}s:16:\"terms_conditions\";a:2:{s:7:\"content\";s:2315:\"<p>Welcome to [sitename]. If you continue to browse and use this website you are agreeing to comply with and be bound by the following terms and conditions of use, which together with our privacy policy govern [sitename]\\\'s relationship with you in relation to this website.</p><p>The term [sitename] or \\\'us\\\' or \\\'we\\\' refers to the owner of the website. The term \\\'you\\\' refers to the user or viewer of our website.  The use of this website is subject to the following terms of use:</p><ul><li>The content of the pages of this website is for your general information and use only. It is subject to change without notice.</li><li>Neither we nor any third parties provide any warranty or guarantee as to the accuracy, timeliness, performance, completeness or suitability of the information and materials found or offered on this website for any particular purpose. You acknowledge that such information and materials may contain inaccuracies or errors and we expressly exclude liability for any such inaccuracies or errors to the fullest extent permitted by law.</li><li>Your use of any information or materials on this website is entirely at your own risk, for which we shall not be liable. It shall be your own responsibility to ensure that any products, services or information available through this website meet your specific requirements.</li><li>This website contains material which is owned by or licensed to us. This material includes, but is not limited to, the design, layout, look, appearance and graphics. Reproduction is prohibited other than in accordance with the copyright notice, which forms part of these terms and conditions.</li><li>All trademarks reproduced in this website, which are not the property of, or licensed to the operator, are acknowledged on the website.</li><li>Unauthorized use of this website may give rise to a claim for damages and/or be a criminal offense.</li><li>From time to time this website may also include links to other websites. These links are provided for your convenience to provide further information. They do not signify that we endorse the website(s). We have no responsibility for the content of the linked website(s).</li><li>You may not create a link to this website from another website or document without [sitename]\\\'s prior written consent.</li></ul>\";s:13:\"assigned_page\";s:2:\"14\";}s:10:\"disclaimer\";a:2:{s:7:\"content\";s:1370:\"<p>The information contained in this website is for general information purposes only. The information is provided by [sitename] and while we endeavour to keep the information up to date and correct, we make no representations or warranties of any kind, express or implied, about the completeness, accuracy, reliability, suitability or availability with respect to the website or the information, products, services, or related graphics contained on the website for any purpose. Any reliance you place on such information is therefore strictly at your own risk.</p><p>In no event will we be liable for any loss or damage including without limitation, indirect or consequential loss or damage, or any loss or damage whatsoever arising from loss of data or profits arising out of, or in connection with, the use of this website.</p><p>Through this website you are able to link to other websites which are not under the control of [sitename]. We have no control over the nature, content and availability of those sites. The inclusion of any links does not necessarily imply a recommendation or endorse the views expressed within them.</p><p>Every effort is made to keep the website up and running smoothly. However, [sitename] takes no responsibility for, and will not be liable for, the website being temporarily unavailable due to technical issues beyond our control.</p>\";s:13:\"assigned_page\";s:2:\"15\";}s:9:\"copyright\";a:2:{s:7:\"content\";s:0:\"\";s:13:\"assigned_page\";s:0:\"\";}}','yes');
INSERT INTO `wp_options` VALUES (165,'wp_insert_version','2.4','yes');
INSERT INTO `wp_options` VALUES (166,'widget_wp_insert_ad_widget','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (177,'wpcf7','a:2:{s:7:\"version\";s:5:\"5.1.6\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1579316175;s:7:\"version\";s:5:\"5.1.6\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}','yes');
INSERT INTO `wp_options` VALUES (179,'nav_menu_options','a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}','yes');
INSERT INTO `wp_options` VALUES (184,'_site_transient_update_themes','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1579544039;s:7:\"checked\";a:5:{s:5:\"astra\";s:5:\"2.2.1\";s:14:\"twentynineteen\";s:3:\"1.4\";s:15:\"twentyseventeen\";s:3:\"2.2\";s:13:\"twentysixteen\";s:3:\"2.0\";s:12:\"twentytwenty\";s:3:\"1.1\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (186,'theme_mods_astra','a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:7:\"primary\";i:4;s:11:\"footer_menu\";i:0;}s:18:\"custom_css_post_id\";i:28;}','yes');
INSERT INTO `wp_options` VALUES (187,'astra-settings','a:7:{s:18:\"theme-auto-version\";s:5:\"2.2.1\";s:22:\"is_theme_queue_running\";b:0;s:33:\"_astra_pb_compatibility_completed\";b:1;s:27:\"footer-sml-section-1-credit\";s:40:\"Copyright © [current_year] [site_title]\";s:20:\"footer-sml-section-2\";s:6:\"widget\";s:17:\"footer-sml-layout\";s:19:\"footer-sml-layout-2\";s:12:\"footer-color\";s:7:\"#6b6b6b\";}','yes');
INSERT INTO `wp_options` VALUES (188,'_transient_timeout_astra-theme-first-rating','1581909796','no');
INSERT INTO `wp_options` VALUES (189,'_transient_astra-theme-first-rating','1','no');
INSERT INTO `wp_options` VALUES (190,'astra-theme-old-setup','1','yes');
INSERT INTO `wp_options` VALUES (223,'aiowpsec_db_version','1.9','yes');
INSERT INTO `wp_options` VALUES (224,'aio_wp_security_configs','a:91:{s:19:\"aiowps_enable_debug\";s:0:\"\";s:36:\"aiowps_remove_wp_generator_meta_info\";s:0:\"\";s:25:\"aiowps_prevent_hotlinking\";s:0:\"\";s:28:\"aiowps_enable_login_lockdown\";s:0:\"\";s:28:\"aiowps_allow_unlock_requests\";s:0:\"\";s:25:\"aiowps_max_login_attempts\";s:1:\"3\";s:24:\"aiowps_retry_time_period\";s:1:\"5\";s:26:\"aiowps_lockout_time_length\";s:2:\"60\";s:28:\"aiowps_set_generic_login_msg\";s:0:\"\";s:26:\"aiowps_enable_email_notify\";s:0:\"\";s:20:\"aiowps_email_address\";s:18:\"flaugher@gmail.com\";s:27:\"aiowps_enable_forced_logout\";s:0:\"\";s:25:\"aiowps_logout_time_period\";s:2:\"60\";s:39:\"aiowps_enable_invalid_username_lockdown\";s:0:\"\";s:43:\"aiowps_instantly_lockout_specific_usernames\";a:0:{}s:32:\"aiowps_unlock_request_secret_key\";s:20:\"gcpuky5wacmtzcnojdrw\";s:35:\"aiowps_lockdown_enable_whitelisting\";s:0:\"\";s:36:\"aiowps_lockdown_allowed_ip_addresses\";s:0:\"\";s:26:\"aiowps_enable_whitelisting\";s:0:\"\";s:27:\"aiowps_allowed_ip_addresses\";s:0:\"\";s:27:\"aiowps_enable_login_captcha\";s:0:\"\";s:34:\"aiowps_enable_custom_login_captcha\";s:0:\"\";s:31:\"aiowps_enable_woo_login_captcha\";s:0:\"\";s:34:\"aiowps_enable_woo_register_captcha\";s:0:\"\";s:38:\"aiowps_enable_woo_lostpassword_captcha\";s:0:\"\";s:25:\"aiowps_captcha_secret_key\";s:20:\"vr9rm3ozmow6c8pjlkrz\";s:42:\"aiowps_enable_manual_registration_approval\";s:0:\"\";s:39:\"aiowps_enable_registration_page_captcha\";s:0:\"\";s:35:\"aiowps_enable_registration_honeypot\";s:0:\"\";s:27:\"aiowps_enable_random_prefix\";s:0:\"\";s:31:\"aiowps_enable_automated_backups\";s:0:\"\";s:26:\"aiowps_db_backup_frequency\";s:1:\"4\";s:25:\"aiowps_db_backup_interval\";s:1:\"2\";s:26:\"aiowps_backup_files_stored\";s:1:\"2\";s:32:\"aiowps_send_backup_email_address\";s:0:\"\";s:27:\"aiowps_backup_email_address\";s:18:\"flaugher@gmail.com\";s:27:\"aiowps_disable_file_editing\";s:0:\"\";s:37:\"aiowps_prevent_default_wp_file_access\";s:0:\"\";s:22:\"aiowps_system_log_file\";s:9:\"error_log\";s:26:\"aiowps_enable_blacklisting\";s:0:\"\";s:26:\"aiowps_banned_ip_addresses\";s:0:\"\";s:28:\"aiowps_enable_basic_firewall\";s:0:\"\";s:31:\"aiowps_enable_pingback_firewall\";s:0:\"\";s:38:\"aiowps_disable_xmlrpc_pingback_methods\";s:0:\"\";s:34:\"aiowps_block_debug_log_file_access\";s:0:\"\";s:26:\"aiowps_disable_index_views\";s:0:\"\";s:30:\"aiowps_disable_trace_and_track\";s:0:\"\";s:28:\"aiowps_forbid_proxy_comments\";s:0:\"\";s:29:\"aiowps_deny_bad_query_strings\";s:0:\"\";s:34:\"aiowps_advanced_char_string_filter\";s:0:\"\";s:25:\"aiowps_enable_5g_firewall\";s:0:\"\";s:25:\"aiowps_enable_6g_firewall\";s:0:\"\";s:26:\"aiowps_enable_custom_rules\";s:0:\"\";s:32:\"aiowps_place_custom_rules_at_top\";s:0:\"\";s:19:\"aiowps_custom_rules\";s:0:\"\";s:25:\"aiowps_enable_404_logging\";s:0:\"\";s:28:\"aiowps_enable_404_IP_lockout\";s:0:\"\";s:30:\"aiowps_404_lockout_time_length\";s:2:\"60\";s:28:\"aiowps_404_lock_redirect_url\";s:16:\"http://127.0.0.1\";s:31:\"aiowps_enable_rename_login_page\";s:0:\"\";s:28:\"aiowps_enable_login_honeypot\";s:0:\"\";s:43:\"aiowps_enable_brute_force_attack_prevention\";s:0:\"\";s:30:\"aiowps_brute_force_secret_word\";s:0:\"\";s:24:\"aiowps_cookie_brute_test\";s:0:\"\";s:44:\"aiowps_cookie_based_brute_force_redirect_url\";s:16:\"http://127.0.0.1\";s:59:\"aiowps_brute_force_attack_prevention_pw_protected_exception\";s:0:\"\";s:51:\"aiowps_brute_force_attack_prevention_ajax_exception\";s:0:\"\";s:19:\"aiowps_site_lockout\";s:0:\"\";s:23:\"aiowps_site_lockout_msg\";s:0:\"\";s:30:\"aiowps_enable_spambot_blocking\";s:0:\"\";s:29:\"aiowps_enable_comment_captcha\";s:0:\"\";s:31:\"aiowps_enable_autoblock_spam_ip\";s:0:\"\";s:33:\"aiowps_spam_ip_min_comments_block\";s:0:\"\";s:33:\"aiowps_enable_bp_register_captcha\";s:0:\"\";s:35:\"aiowps_enable_bbp_new_topic_captcha\";s:0:\"\";s:32:\"aiowps_enable_automated_fcd_scan\";s:0:\"\";s:25:\"aiowps_fcd_scan_frequency\";s:1:\"4\";s:24:\"aiowps_fcd_scan_interval\";s:1:\"2\";s:28:\"aiowps_fcd_exclude_filetypes\";s:0:\"\";s:24:\"aiowps_fcd_exclude_files\";s:0:\"\";s:26:\"aiowps_send_fcd_scan_email\";s:0:\"\";s:29:\"aiowps_fcd_scan_email_address\";s:18:\"flaugher@gmail.com\";s:27:\"aiowps_fcds_change_detected\";b:0;s:22:\"aiowps_copy_protection\";s:0:\"\";s:40:\"aiowps_prevent_site_display_inside_frame\";s:0:\"\";s:32:\"aiowps_prevent_users_enumeration\";s:0:\"\";s:42:\"aiowps_disallow_unauthorized_rest_requests\";s:0:\"\";s:25:\"aiowps_ip_retrieve_method\";s:1:\"0\";s:25:\"aiowps_recaptcha_site_key\";s:0:\"\";s:27:\"aiowps_recaptcha_secret_key\";s:0:\"\";s:24:\"aiowps_default_recaptcha\";s:0:\"\";}','yes');
INSERT INTO `wp_options` VALUES (228,'_transient_timeout_plugin_slugs','1579563344','no');
INSERT INTO `wp_options` VALUES (229,'_transient_plugin_slugs','a:8:{i:0;s:51:\"all-in-one-wp-security-and-firewall/wp-security.php\";i:1;s:33:\"classic-editor/classic-editor.php\";i:2;s:36:\"contact-form-7/wp-contact-form-7.php\";i:3;s:20:\"social-pug/index.php\";i:4;s:68:\"stop-spammer-registrations-plugin/stop-spammer-registrations-new.php\";i:5;s:27:\"updraftplus/updraftplus.php\";i:6;s:23:\"wp-insert/wp-insert.php\";i:7;s:24:\"wordpress-seo/wp-seo.php\";}','no');
INSERT INTO `wp_options` VALUES (232,'ss_stop_sp_reg_options','a:230:{s:11:\"chkadminlog\";s:1:\"Y\";s:6:\"chkaws\";s:1:\"N\";s:13:\"chkcloudflare\";s:1:\"Y\";s:9:\"chkgcache\";s:1:\"Y\";s:15:\"chkgenallowlist\";s:1:\"N\";s:9:\"chkgoogle\";s:1:\"Y\";s:16:\"chkmiscallowlist\";s:1:\"Y\";s:9:\"chkpaypal\";s:1:\"Y\";s:7:\"chkform\";s:1:\"N\";s:10:\"chkscripts\";s:1:\"Y\";s:10:\"chkvalidip\";s:1:\"Y\";s:7:\"chkwlem\";s:1:\"Y\";s:11:\"chkwluserid\";s:1:\"N\";s:8:\"chkwlist\";s:1:\"Y\";s:16:\"chkyahoomerchant\";s:1:\"Y\";s:8:\"chkemail\";s:1:\"Y\";s:5:\"chkip\";s:1:\"Y\";s:11:\"chkcomments\";s:1:\"Y\";s:9:\"chksignup\";s:1:\"Y\";s:9:\"chkxmlrpc\";s:1:\"Y\";s:9:\"chkwpmail\";s:1:\"Y\";s:14:\"addtoallowlist\";s:1:\"Y\";s:9:\"wlreqmail\";s:0:\"\";s:5:\"wlreq\";s:1:\"Y\";s:5:\"redir\";s:1:\"N\";s:10:\"chkcaptcha\";s:1:\"A\";s:6:\"chkxff\";s:1:\"N\";s:6:\"notify\";s:1:\"Y\";s:8:\"chkspoof\";s:1:\"N\";s:19:\"filterregistrations\";s:1:\"Y\";s:6:\"chk404\";s:1:\"Y\";s:9:\"chkaccept\";s:1:\"Y\";s:8:\"chkadmin\";s:1:\"Y\";s:8:\"chkagent\";s:1:\"Y\";s:9:\"chkamazon\";s:1:\"N\";s:9:\"chkbcache\";s:1:\"Y\";s:7:\"chkblem\";s:1:\"Y\";s:11:\"chkbluserid\";s:1:\"N\";s:7:\"chkblip\";s:1:\"Y\";s:11:\"chkbotscout\";s:1:\"Y\";s:7:\"chkdisp\";s:1:\"Y\";s:8:\"chkdnsbl\";s:1:\"Y\";s:11:\"chkexploits\";s:1:\"Y\";s:13:\"chkgooglesafe\";s:1:\"N\";s:8:\"chkhoney\";s:1:\"Y\";s:10:\"chkhosting\";s:1:\"Y\";s:12:\"chkinvalidip\";s:1:\"Y\";s:7:\"chklong\";s:1:\"Y\";s:8:\"chkshort\";s:1:\"Y\";s:9:\"chkbbcode\";s:1:\"Y\";s:10:\"chkreferer\";s:1:\"Y\";s:10:\"chksession\";s:1:\"Y\";s:6:\"chksfs\";s:1:\"Y\";s:12:\"chkspamwords\";s:1:\"Y\";s:6:\"chktld\";s:1:\"Y\";s:11:\"chkubiquity\";s:1:\"Y\";s:10:\"chkakismet\";s:1:\"Y\";s:8:\"chkmulti\";s:1:\"Y\";s:9:\"badagents\";a:154:{i:0;s:6:\"Abonti\";i:1;s:10:\"aggregator\";i:2;s:9:\"AhrefsBot\";i:3;s:8:\"asterias\";i:4;s:6:\"BDCbot\";i:5;s:7:\"BLEXBot\";i:6;s:13:\"BuiltBotTough\";i:7;s:8:\"Bullseye\";i:8;s:13:\"BunnySlippers\";i:9;s:10:\"ca-crawler\";i:10;s:5:\"CCBot\";i:11;s:9:\"Cegbfeieh\";i:12;s:9:\"CheeseBot\";i:13;s:12:\"CherryPicker\";i:14;s:17:\"CherryPickerElite\";i:15;s:14:\"CherryPickerSE\";i:16;s:14:\"CopyRightCheck\";i:17;s:6:\"cosmos\";i:18;s:25:\"Crescent Internet ToolPak\";i:19;s:8:\"Crescent\";i:20;s:8:\"discobot\";i:21;s:11:\"DittoSpyder\";i:22;s:3:\"DOC\";i:23;s:6:\"DotBot\";i:24;s:14:\"Download Ninja\";i:25;s:11:\"EasouSpider\";i:26;s:14:\"EmailCollector\";i:27;s:11:\"EmailSiphon\";i:28;s:9:\"EmailWolf\";i:29;s:10:\"EroCrawler\";i:30;s:6:\"Exabot\";i:31;s:12:\"ExtractorPro\";i:32;s:9:\"Fasterfox\";i:33;s:11:\"FeedBooster\";i:34;s:6:\"Foobot\";i:35;s:6:\"Genieo\";i:36;s:11:\"grub-client\";i:37;s:7:\"Harvest\";i:38;s:7:\"hloader\";i:39;s:7:\"httplib\";i:40;s:7:\"HTTrack\";i:41;s:10:\"humanlinks\";i:42;s:15:\"ieautodiscovery\";i:43;s:13:\"InfoNaviRobot\";i:44;s:10:\"IstellaBot\";i:45;s:7:\"Java/1.\";i:46;s:8:\"JennyBot\";i:47;s:8:\"k2spider\";i:48;s:13:\"Kenjin Spider\";i:49;s:19:\"Keyword Density/0.9\";i:50;s:6:\"larbin\";i:51;s:7:\"LexiBot\";i:52;s:6:\"libWeb\";i:53;s:6:\"libwww\";i:54;s:16:\"LinkextractorPro\";i:55;s:5:\"linko\";i:56;s:18:\"LinkScan/8.1a Unix\";i:57;s:10:\"LinkWalker\";i:58;s:11:\"LNSpiderguy\";i:59;s:11:\"lwp-trivial\";i:60;s:11:\"lwp-trivial\";i:61;s:6:\"magpie\";i:62;s:9:\"Mata Hari\";i:63;s:15:\"MaxPointCrawler\";i:64;s:9:\"MegaIndex\";i:65;s:21:\"Microsoft URL Control\";i:66;s:6:\"MIIxpc\";i:67;s:6:\"Mippin\";i:68;s:16:\"Missigua Locator\";i:69;s:10:\"Mister PiX\";i:70;s:7:\"MJ12bot\";i:71;s:5:\"moget\";i:72;s:11:\"MSIECrawler\";i:73;s:7:\"NetAnts\";i:74;s:9:\"NICErsPRO\";i:75;s:8:\"Niki-Bot\";i:76;s:5:\"NPBot\";i:77;s:5:\"Nutch\";i:78;s:16:\"Offline Explorer\";i:79;s:21:\"Openfind data gathere\";i:80;s:8:\"Openfind\";i:81;s:13:\"panscient.com\";i:82;s:7:\"PHP/5.{\";i:83;s:16:\"ProPowerBot/2.14\";i:84;s:12:\"ProWebWalker\";i:85;s:13:\"Python-urllib\";i:86;s:17:\"QueryN Metasearch\";i:87;s:10:\"RepoMonkey\";i:88;s:10:\"RepoMonkey\";i:89;s:3:\"RMA\";i:90;s:10:\"SemrushBot\";i:91;s:10:\"SeznamBot \";i:92;s:7:\"SISTRIX\";i:93;s:26:\"sitecheck.Internetseer.com\";i:94;s:11:\"SiteSnagger\";i:95;s:14:\"SnapPreviewBot\";i:96;s:5:\"Sogou\";i:97;s:8:\"SpankBot\";i:98;s:7:\"spanner\";i:99;s:5:\"spbot\";i:100;s:7:\"Spinn3r\";i:101;s:7:\"suzuran\";i:102;s:11:\"Szukacz/1.4\";i:103;s:17:\"Teleport Pro/1.29\";i:104;s:8:\"Teleport\";i:105;s:11:\"TeleportPro\";i:106;s:8:\"Telesoft\";i:107;s:16:\"The Intraformant\";i:108;s:8:\"TheNomad\";i:109;s:12:\"TightTwatBot\";i:110;s:5:\"Titan\";i:111;s:21:\"toCrawl/UrlDispatcher\";i:112;s:10:\"True_Robot\";i:113;s:14:\"True_Robot/1.0\";i:114;s:8:\"turingos\";i:115;s:11:\"TurnitinBot\";i:116;s:10:\"UbiCrawler\";i:117;s:10:\"UnisterBot\";i:118;s:12:\"URLy Warning\";i:119;s:33:\"VCI WebViewer VCI WebViewer Win32\";i:120;s:3:\"VCI\";i:121;s:11:\"WBSearchBot\";i:122;s:18:\"Web Downloader/6.9\";i:123;s:19:\"Web Image Collector\";i:124;s:7:\"WebAuto\";i:125;s:9:\"WebBandit\";i:126;s:14:\"WebBandit/3.50\";i:127;s:14:\"WebCopier v4.0\";i:128;s:9:\"WebCopier\";i:129;s:11:\"WebEnhancer\";i:130;s:22:\"WebmasterWorldForumBot\";i:131;s:9:\"WebReaper\";i:132;s:9:\"WebSauger\";i:133;s:15:\"Website Quester\";i:134;s:11:\"Webster Pro\";i:135;s:11:\"WebStripper\";i:136;s:6:\"WebZip\";i:137;s:6:\"Wotbox\";i:138;s:9:\"wsr-agent\";i:139;s:15:\"WWW-Collector-E\";i:140;s:4:\"Xenu\";i:141;s:6:\"yandex\";i:142;s:3:\"Zao\";i:143;s:4:\"Zeus\";i:144;s:4:\"Zeus\";i:145;s:6:\"ZyBORG\";i:146;s:6:\"coccoc\";i:147;s:7:\"Incutio\";i:148;s:8:\"lmspider\";i:149;s:9:\"memoryBot\";i:150;s:10:\"SemrushBot\";i:151;s:4:\"serf\";i:152;s:7:\"Unknown\";i:153;s:12:\"uptime files\";}s:7:\"badTLDs\";a:0:{}s:5:\"blist\";a:0:{}s:10:\"payoptions\";a:0:{}s:5:\"wlist\";a:1:{i:0;s:9:\"127.0.0.1\";}s:9:\"spamwords\";a:163:{i:0;s:7:\"-online\";i:1;s:2:\"4u\";i:2;s:3:\"4-u\";i:3;s:6:\"adipex\";i:4;s:7:\"advicer\";i:5;s:9:\"baccarrat\";i:6;s:9:\"blackjack\";i:7;s:9:\"bllogspot\";i:8;s:6:\"booker\";i:9;s:4:\"byob\";i:10;s:17:\"car-rental-e-site\";i:11;s:18:\"car-rentals-e-site\";i:12;s:12:\"carisoprodol\";i:13;s:6:\"casino\";i:14;s:8:\"chatroom\";i:15;s:6:\"cialis\";i:16;s:6:\"coolhu\";i:17;s:16:\"credit-card-debt\";i:18;s:13:\"credit-report\";i:19;s:4:\"cwas\";i:20;s:6:\"cyclen\";i:21;s:15:\"cyclobenzaprine\";i:22;s:13:\"dating-e-site\";i:23;s:11:\"day-trading\";i:24;s:18:\"debt-consolidation\";i:25;s:18:\"debt-consolidation\";i:26;s:16:\"discreetordering\";i:27;s:9:\"duty-free\";i:28;s:8:\"dutyfree\";i:29;s:11:\"equityloans\";i:30;s:8:\"fioricet\";i:31;s:20:\"flowers-leading-site\";i:32;s:16:\"freenet-shopping\";i:33;s:7:\"freenet\";i:34;s:9:\"gambling-\";i:35;s:9:\"hair-loss\";i:36;s:21:\"health-insurancedeals\";i:37;s:15:\"homeequityloans\";i:38;s:11:\"homefinance\";i:39;s:6:\"holdem\";i:40;s:17:\"hotel-dealse-site\";i:41;s:11:\"hotele-site\";i:42;s:12:\"hotelse-site\";i:43;s:6:\"incest\";i:44;s:16:\"insurance-quotes\";i:45;s:14:\"insurancedeals\";i:46;s:11:\"jrcreations\";i:47;s:7:\"levitra\";i:48;s:11:\"macinstruct\";i:49;s:14:\"mortgagequotes\";i:50;s:15:\"online-gambling\";i:51;s:14:\"onlinegambling\";i:52;s:14:\"ottawavalleyag\";i:53;s:8:\"ownsthis\";i:54;s:5:\"paxil\";i:55;s:5:\"penis\";i:56;s:8:\"pharmacy\";i:57;s:11:\"phentermine\";i:58;s:10:\"poker-chip\";i:59;s:4:\"poze\";i:60;s:5:\"pussy\";i:61;s:17:\"rental-car-e-site\";i:62;s:9:\"ringtones\";i:63;s:8:\"roulette\";i:64;s:7:\"shemale\";i:65;s:12:\"slot-machine\";i:66;s:11:\"thorcarlson\";i:67;s:8:\"top-site\";i:68;s:10:\"top-e-site\";i:69;s:8:\"tramadol\";i:70;s:8:\"trim-spa\";i:71;s:6:\"ultram\";i:72;s:28:\"valeofglamorganconservatives\";i:73;s:6:\"viagra\";i:74;s:5:\"vioxx\";i:75;s:5:\"xanax\";i:76;s:5:\"zolus\";i:77;s:6:\"ambien\";i:78;s:5:\"poker\";i:79;s:5:\"bingo\";i:80;s:8:\"allstate\";i:81;s:8:\"insurnce\";i:82;s:12:\"work-at-home\";i:83;s:10:\"workathome\";i:84;s:10:\"home-based\";i:85;s:9:\"homebased\";i:86;s:11:\"weight-loss\";i:87;s:10:\"weightloss\";i:88;s:17:\"additional-income\";i:89;s:12:\"extra-income\";i:90;s:15:\"email-marketing\";i:91;s:11:\"sibutramine\";i:92;s:4:\"seo-\";i:93;s:9:\"fast-cash\";i:94;s:10:\"Buy direct\";i:95;s:14:\"Free gift card\";i:96;s:12:\"Meet singles\";i:97;s:7:\"Hot men\";i:98;s:9:\"Hot women\";i:99;s:9:\"Easy date\";i:100;s:13:\"Score tonight\";i:101;s:11:\"Dear Friend\";i:102;s:17:\"Additional income\";i:103;s:18:\"Double your income\";i:104;s:10:\"Home based\";i:105;s:16:\"Income from home\";i:106;s:15:\"Urgent proposal\";i:107;s:11:\"Opportunity\";i:108;s:16:\"Be your own boss\";i:109;s:6:\"Make $\";i:110;s:22:\"Online biz opportunity\";i:111;s:18:\"Potential earnings\";i:112;s:15:\"Earn extra cash\";i:113;s:12:\"Extra income\";i:114;s:19:\"Home based business\";i:115;s:10:\"Make money\";i:116;s:13:\"Online degree\";i:117;s:19:\"University diplomas\";i:118;s:14:\"Work from home\";i:119;s:17:\"You’re a winner\";i:120;s:17:\"Financial Schemes\";i:121;s:3:\"$$$\";i:122;s:11:\"Beneficiary\";i:123;s:24:\"One hundred percent free\";i:124;s:14:\"Save big money\";i:125;s:14:\"Unsecured debt\";i:126;s:10:\"Cash bonus\";i:127;s:18:\"Collect your prize\";i:128;s:9:\"Refinance\";i:129;s:15:\"Million dollars\";i:130;s:8:\"Mortgage\";i:131;s:20:\"Check or money order\";i:132;s:11:\"Stock alert\";i:133;s:22:\"Social Security Number\";i:134;s:15:\"Lead generation\";i:135;s:26:\"Search Engine Optimization\";i:136;s:11:\"Web traffic\";i:137;s:13:\"Email harvest\";i:138;s:14:\"Increase sales\";i:139;s:18:\"Internet marketing\";i:140;s:19:\"Marketing solutions\";i:141;s:17:\"Month trial offer\";i:142;s:16:\"Increase traffic\";i:143;s:16:\"Direct marketing\";i:144;s:18:\"Sign-up free today\";i:145;s:14:\"Cures baldness\";i:146;s:6:\"Viagra\";i:147;s:11:\"Lose weight\";i:148;s:15:\"Online pharmacy\";i:149;s:12:\"Stop snoring\";i:150;s:16:\"Removes wrinkles\";i:151;s:14:\"Reverses aging\";i:152;s:14:\"Perform in bed\";i:153;s:22:\"CraigsList Ads Posting\";i:154;s:16:\"BackPage Posting\";i:155;s:21:\"home security systems\";i:156;s:9:\"blackjack\";i:157;s:10:\"real money\";i:158;s:4:\"nike\";i:159;s:7:\"air max\";i:160;s:20:\"BackPage Ads Posting\";i:161;s:4:\"Shox\";i:162;s:19:\"barbour northumbria\";}s:6:\"apikey\";s:0:\"\";s:8:\"honeyapi\";s:0:\"\";s:11:\"botscoutapi\";s:0:\"\";s:9:\"googleapi\";s:0:\"\";s:18:\"recaptchaapisecret\";s:0:\"\";s:16:\"recaptchaapisite\";s:0:\"\";s:22:\"solvmediaapivchallenge\";s:0:\"\";s:18:\"solvmediaapiverify\";s:0:\"\";s:11:\"blogseyekey\";s:0:\"\";s:8:\"sesstime\";i:4;s:7:\"sfsfreq\";i:0;s:6:\"hnyage\";i:9999;s:7:\"botfreq\";i:0;s:6:\"sfsage\";i:9999;s:8:\"hnylevel\";i:5;s:6:\"botage\";i:9999;s:8:\"multicnt\";i:5;s:9:\"multitime\";i:3;s:5:\"chkAD\";s:1:\"N\";s:5:\"chkAE\";s:1:\"N\";s:5:\"chkAF\";s:1:\"N\";s:5:\"chkAL\";s:1:\"N\";s:5:\"chkAM\";s:1:\"N\";s:5:\"chkAR\";s:1:\"N\";s:5:\"chkAT\";s:1:\"N\";s:5:\"chkAU\";s:1:\"N\";s:5:\"chkAX\";s:1:\"N\";s:5:\"chkAZ\";s:1:\"N\";s:5:\"chkBA\";s:1:\"N\";s:5:\"chkBB\";s:1:\"N\";s:5:\"chkBD\";s:1:\"N\";s:5:\"chkBE\";s:1:\"N\";s:5:\"chkBG\";s:1:\"N\";s:5:\"chkBH\";s:1:\"N\";s:5:\"chkBN\";s:1:\"N\";s:5:\"chkBO\";s:1:\"N\";s:5:\"chkBR\";s:1:\"N\";s:5:\"chkBS\";s:1:\"N\";s:5:\"chkBY\";s:1:\"N\";s:5:\"chkBZ\";s:1:\"N\";s:5:\"chkCA\";s:1:\"N\";s:5:\"chkCD\";s:1:\"N\";s:5:\"chkCH\";s:1:\"N\";s:5:\"chkCL\";s:1:\"N\";s:5:\"chkCN\";s:1:\"N\";s:5:\"chkCO\";s:1:\"N\";s:5:\"chkCR\";s:1:\"N\";s:5:\"chkCU\";s:1:\"N\";s:5:\"chkCW\";s:1:\"N\";s:5:\"chkCY\";s:1:\"N\";s:5:\"chkCZ\";s:1:\"N\";s:5:\"chkDE\";s:1:\"N\";s:5:\"chkDK\";s:1:\"N\";s:5:\"chkDO\";s:1:\"N\";s:5:\"chkDZ\";s:1:\"N\";s:5:\"chkEC\";s:1:\"N\";s:5:\"chkEE\";s:1:\"N\";s:5:\"chkES\";s:1:\"N\";s:5:\"chkEU\";s:1:\"N\";s:5:\"chkFI\";s:1:\"N\";s:5:\"chkFJ\";s:1:\"N\";s:5:\"chkFR\";s:1:\"N\";s:5:\"chkGB\";s:1:\"N\";s:5:\"chkGE\";s:1:\"N\";s:5:\"chkGF\";s:1:\"N\";s:5:\"chkGI\";s:1:\"N\";s:5:\"chkGP\";s:1:\"N\";s:5:\"chkGR\";s:1:\"N\";s:5:\"chkGT\";s:1:\"N\";s:5:\"chkGU\";s:1:\"N\";s:5:\"chkGY\";s:1:\"N\";s:5:\"chkHK\";s:1:\"N\";s:5:\"chkHN\";s:1:\"N\";s:5:\"chkHR\";s:1:\"N\";s:5:\"chkHT\";s:1:\"N\";s:5:\"chkHU\";s:1:\"N\";s:5:\"chkID\";s:1:\"N\";s:5:\"chkIE\";s:1:\"N\";s:5:\"chkIL\";s:1:\"N\";s:5:\"chkIN\";s:1:\"N\";s:5:\"chkIQ\";s:1:\"N\";s:5:\"chkIR\";s:1:\"N\";s:5:\"chkIS\";s:1:\"N\";s:5:\"chkIT\";s:1:\"N\";s:5:\"chkJM\";s:1:\"N\";s:5:\"chkJO\";s:1:\"N\";s:5:\"chkJP\";s:1:\"N\";s:5:\"chkKE\";s:1:\"N\";s:5:\"chkKG\";s:1:\"N\";s:5:\"chkKH\";s:1:\"N\";s:5:\"chkKR\";s:1:\"N\";s:5:\"chkKW\";s:1:\"N\";s:5:\"chkKY\";s:1:\"N\";s:5:\"chkKZ\";s:1:\"N\";s:5:\"chkLA\";s:1:\"N\";s:5:\"chkLB\";s:1:\"N\";s:5:\"chkLK\";s:1:\"N\";s:5:\"chkLT\";s:1:\"N\";s:5:\"chkLU\";s:1:\"N\";s:5:\"chkLV\";s:1:\"N\";s:5:\"chkMD\";s:1:\"N\";s:5:\"chkME\";s:1:\"N\";s:5:\"chkMK\";s:1:\"N\";s:5:\"chkMM\";s:1:\"N\";s:5:\"chkMN\";s:1:\"N\";s:5:\"chkMO\";s:1:\"N\";s:5:\"chkMP\";s:1:\"N\";s:5:\"chkMQ\";s:1:\"N\";s:5:\"chkMT\";s:1:\"N\";s:5:\"chkMV\";s:1:\"N\";s:5:\"chkMX\";s:1:\"N\";s:5:\"chkMY\";s:1:\"N\";s:5:\"chkNC\";s:1:\"N\";s:5:\"chkNI\";s:1:\"N\";s:5:\"chkNL\";s:1:\"N\";s:5:\"chkNO\";s:1:\"N\";s:5:\"chkNP\";s:1:\"N\";s:5:\"chkNZ\";s:1:\"N\";s:5:\"chkOM\";s:1:\"N\";s:5:\"chkPA\";s:1:\"N\";s:5:\"chkPE\";s:1:\"N\";s:5:\"chkPG\";s:1:\"N\";s:5:\"chkPH\";s:1:\"N\";s:5:\"chkPK\";s:1:\"N\";s:5:\"chkPL\";s:1:\"N\";s:5:\"chkPR\";s:1:\"N\";s:5:\"chkPS\";s:1:\"N\";s:5:\"chkPT\";s:1:\"N\";s:5:\"chkPW\";s:1:\"N\";s:5:\"chkPY\";s:1:\"N\";s:5:\"chkQA\";s:1:\"N\";s:5:\"chkRO\";s:1:\"N\";s:5:\"chkRS\";s:1:\"N\";s:5:\"chkRU\";s:1:\"N\";s:5:\"chkSA\";s:1:\"N\";s:5:\"chkSC\";s:1:\"N\";s:5:\"chkSE\";s:1:\"N\";s:5:\"chkSG\";s:1:\"N\";s:5:\"chkSI\";s:1:\"N\";s:5:\"chkSK\";s:1:\"N\";s:5:\"chkSV\";s:1:\"N\";s:5:\"chkSX\";s:1:\"N\";s:5:\"chkSY\";s:1:\"N\";s:5:\"chkTH\";s:1:\"N\";s:5:\"chkTJ\";s:1:\"N\";s:5:\"chkTM\";s:1:\"N\";s:5:\"chkTR\";s:1:\"N\";s:5:\"chkTT\";s:1:\"N\";s:5:\"chkTW\";s:1:\"N\";s:5:\"chkUA\";s:1:\"N\";s:5:\"chkUK\";s:1:\"N\";s:5:\"chkUS\";s:1:\"N\";s:5:\"chkUY\";s:1:\"N\";s:5:\"chkUZ\";s:1:\"N\";s:5:\"chkVC\";s:1:\"N\";s:5:\"chkVE\";s:1:\"N\";s:5:\"chkVN\";s:1:\"N\";s:5:\"chkYE\";s:1:\"N\";s:7:\"version\";s:6:\"2019.6\";s:11:\"ss_sp_cache\";i:25;s:10:\"ss_sp_hist\";i:25;s:10:\"ss_sp_good\";i:2;s:14:\"ss_sp_cache_em\";i:4;s:8:\"redirurl\";s:0:\"\";s:11:\"logfilesize\";i:0;s:13:\"rejectmessage\";s:19:\"Access Denied<br />\";}','yes');
INSERT INTO `wp_options` VALUES (233,'ss_stop_sp_reg_stats','a:197:{s:6:\"badips\";a:0:{}s:7:\"goodips\";a:1:{s:9:\"127.0.0.1\";s:19:\"2020/01/19 23:46:55\";}s:4:\"hist\";a:3:{s:19:\"2020/01/19 22:16:15\";a:6:{i:0;s:9:\"127.0.0.1\";i:1;s:0:\"\";i:2;s:9:\"dashboard\";i:3;s:24:\"/wp-admin/admin-ajax.php\";i:4;s:20:\"allow admin-ajax.php\";i:5;s:0:\"\";}s:19:\"2020/01/19 22:16:26\";a:6:{i:0;s:9:\"127.0.0.1\";i:1;s:0:\"\";i:2;s:8:\"flaugher\";i:3;s:13:\"/wp-login.php\";i:4;s:24:\"Authenticated User Login\";i:5;s:0:\"\";}s:19:\"2020/01/19 23:46:55\";a:6:{i:0;s:9:\"127.0.0.1\";i:1;s:0:\"\";i:2;s:2:\"63\";i:3;s:24:\"/wp-admin/admin-ajax.php\";i:4;s:20:\"allow admin-ajax.php\";i:5;s:0:\"\";}}s:10:\"wlrequests\";a:0:{}s:10:\"addonstats\";a:0:{}s:5:\"multi\";a:0:{}s:9:\"cntchkaws\";i:0;s:16:\"cntchkcloudflare\";i:0;s:12:\"cntchkgcache\";i:0;s:18:\"cntchkgenallowlist\";i:0;s:12:\"cntchkgoogle\";i:0;s:19:\"cntchkmiscallowlist\";i:0;s:12:\"cntchkpaypal\";i:0;s:10:\"cntchkform\";i:0;s:13:\"cntchkscripts\";i:2;s:13:\"cntchkvalidip\";i:0;s:10:\"cntchkwlem\";i:0;s:14:\"cntchkwluserid\";i:0;s:11:\"cntchkwlist\";i:0;s:19:\"cntchkyahoomerchant\";i:0;s:7:\"spcount\";i:0;s:8:\"spmcount\";i:0;s:6:\"cntcap\";i:0;s:7:\"cntncap\";i:0;s:7:\"cntpass\";i:3;s:7:\"spmdate\";s:10:\"2020/01/19\";s:6:\"spdate\";s:10:\"2020/01/19\";s:9:\"cntchk404\";i:0;s:12:\"cntchkaccept\";i:0;s:11:\"cntchkadmin\";i:0;s:14:\"cntchkadminlog\";i:1;s:11:\"cntchkagent\";i:0;s:12:\"cntchkamazon\";i:0;s:13:\"cntchkakismet\";i:0;s:12:\"cntchkbcache\";i:0;s:10:\"cntchkblem\";i:0;s:12:\"cntchkuserid\";i:0;s:10:\"cntchkblip\";i:0;s:14:\"cntchkbotscout\";i:0;s:10:\"cntchkdisp\";i:0;s:11:\"cntchkdnsbl\";i:0;s:14:\"cntchkexploits\";i:0;s:16:\"cntchkgooglesafe\";i:0;s:11:\"cntchkhoney\";i:0;s:13:\"cntchkhosting\";i:0;s:15:\"cntchkinvalidip\";i:0;s:10:\"cntchklong\";i:0;s:11:\"cntchkshort\";i:0;s:12:\"cntchkbbcode\";i:0;s:13:\"cntchkreferer\";i:0;s:13:\"cntchksession\";i:0;s:9:\"cntchksfs\";i:0;s:15:\"cntchkspamwords\";i:0;s:9:\"cntchktld\";i:0;s:14:\"cntchkubiquity\";i:0;s:11:\"cntchkmulti\";i:0;s:8:\"cntchkAD\";i:0;s:8:\"cntchkAE\";i:0;s:8:\"cntchkAF\";i:0;s:8:\"cntchkAL\";i:0;s:8:\"cntchkAM\";i:0;s:8:\"cntchkAR\";i:0;s:8:\"cntchkAT\";i:0;s:8:\"cntchkAU\";i:0;s:8:\"cntchkAX\";i:0;s:8:\"cntchkAZ\";i:0;s:8:\"cntchkBA\";i:0;s:8:\"cntchkBB\";i:0;s:8:\"cntchkBD\";i:0;s:8:\"cntchkBE\";i:0;s:8:\"cntchkBG\";i:0;s:8:\"cntchkBH\";i:0;s:8:\"cntchkBN\";i:0;s:8:\"cntchkBO\";i:0;s:8:\"cntchkBR\";i:0;s:8:\"cntchkBS\";i:0;s:8:\"cntchkBY\";i:0;s:8:\"cntchkBZ\";i:0;s:8:\"cntchkCA\";i:0;s:8:\"cntchkCD\";i:0;s:8:\"cntchkCH\";i:0;s:8:\"cntchkCL\";i:0;s:8:\"cntchkCN\";i:0;s:8:\"cntchkCO\";i:0;s:8:\"cntchkCR\";i:0;s:8:\"cntchkCU\";i:0;s:8:\"cntchkCW\";i:0;s:8:\"cntchkCY\";i:0;s:8:\"cntchkCZ\";i:0;s:8:\"cntchkDE\";i:0;s:8:\"cntchkDK\";i:0;s:8:\"cntchkDO\";i:0;s:8:\"cntchkDZ\";i:0;s:8:\"cntchkEC\";i:0;s:8:\"cntchkEE\";i:0;s:8:\"cntchkES\";i:0;s:8:\"cntchkEU\";i:0;s:8:\"cntchkFI\";i:0;s:8:\"cntchkFJ\";i:0;s:8:\"cntchkFR\";i:0;s:8:\"cntchkGB\";i:0;s:8:\"cntchkGE\";i:0;s:8:\"cntchkGF\";i:0;s:8:\"cntchkGI\";i:0;s:8:\"cntchkGP\";i:0;s:8:\"cntchkGR\";i:0;s:8:\"cntchkGT\";i:0;s:8:\"cntchkGU\";i:0;s:8:\"cntchkGY\";i:0;s:8:\"cntchkHK\";i:0;s:8:\"cntchkHN\";i:0;s:8:\"cntchkHR\";i:0;s:8:\"cntchkHT\";i:0;s:8:\"cntchkHU\";i:0;s:8:\"cntchkID\";i:0;s:8:\"cntchkIE\";i:0;s:8:\"cntchkIL\";i:0;s:8:\"cntchkIN\";i:0;s:8:\"cntchkIQ\";i:0;s:8:\"cntchkIR\";i:0;s:8:\"cntchkIS\";i:0;s:8:\"cntchkIT\";i:0;s:8:\"cntchkJM\";i:0;s:8:\"cntchkJO\";i:0;s:8:\"cntchkJP\";i:0;s:8:\"cntchkKE\";i:0;s:8:\"cntchkKG\";i:0;s:8:\"cntchkKH\";i:0;s:8:\"cntchkKR\";i:0;s:8:\"cntchkKW\";i:0;s:8:\"cntchkKY\";i:0;s:8:\"cntchkKZ\";i:0;s:8:\"cntchkLA\";i:0;s:8:\"cntchkLB\";i:0;s:8:\"cntchkLK\";i:0;s:8:\"cntchkLT\";i:0;s:8:\"cntchkLU\";i:0;s:8:\"cntchkLV\";i:0;s:8:\"cntchkMD\";i:0;s:8:\"cntchkME\";i:0;s:8:\"cntchkMK\";i:0;s:8:\"cntchkMM\";i:0;s:8:\"cntchkMN\";i:0;s:8:\"cntchkMO\";i:0;s:8:\"cntchkMP\";i:0;s:8:\"cntchkMQ\";i:0;s:8:\"cntchkMT\";i:0;s:8:\"cntchkMV\";i:0;s:8:\"cntchkMX\";i:0;s:8:\"cntchkMY\";i:0;s:8:\"cntchkNC\";i:0;s:8:\"cntchkNI\";i:0;s:8:\"cntchkNL\";i:0;s:8:\"cntchkNO\";i:0;s:8:\"cntchkNP\";i:0;s:8:\"cntchkNZ\";i:0;s:8:\"cntchkOM\";i:0;s:8:\"cntchkPA\";i:0;s:8:\"cntchkPE\";i:0;s:8:\"cntchkPG\";i:0;s:8:\"cntchkPH\";i:0;s:8:\"cntchkPK\";i:0;s:8:\"cntchkPL\";i:0;s:8:\"cntchkPR\";i:0;s:8:\"cntchkPS\";i:0;s:8:\"cntchkPT\";i:0;s:8:\"cntchkPW\";i:0;s:8:\"cntchkPY\";i:0;s:8:\"cntchkQA\";i:0;s:8:\"cntchkRO\";i:0;s:8:\"cntchkRS\";i:0;s:8:\"cntchkRU\";i:0;s:8:\"cntchkSA\";i:0;s:8:\"cntchkSC\";i:0;s:8:\"cntchkSE\";i:0;s:8:\"cntchkSG\";i:0;s:8:\"cntchkSI\";i:0;s:8:\"cntchkSK\";i:0;s:8:\"cntchkSV\";i:0;s:8:\"cntchkSX\";i:0;s:8:\"cntchkSY\";i:0;s:8:\"cntchkTH\";i:0;s:8:\"cntchkTJ\";i:0;s:8:\"cntchkTM\";i:0;s:8:\"cntchkTR\";i:0;s:8:\"cntchkTT\";i:0;s:8:\"cntchkTW\";i:0;s:8:\"cntchkUA\";i:0;s:8:\"cntchkUK\";i:0;s:8:\"cntchkUS\";i:0;s:8:\"cntchkUY\";i:0;s:8:\"cntchkUZ\";i:0;s:8:\"cntchkVC\";i:0;s:8:\"cntchkVE\";i:0;s:8:\"cntchkVN\";i:0;s:8:\"cntchkYE\";i:0;s:7:\"version\";s:6:\"2019.6\";}','yes');
INSERT INTO `wp_options` VALUES (236,'updraftplus_tour_cancelled_on','intro','yes');
INSERT INTO `wp_options` VALUES (244,'wpseo','a:20:{s:15:\"ms_defaults_set\";b:0;s:7:\"version\";s:6:\"12.8.1\";s:20:\"disableadvanced_meta\";b:1;s:19:\"onpage_indexability\";b:1;s:11:\"baiduverify\";s:0:\"\";s:12:\"googleverify\";s:0:\"\";s:8:\"msverify\";s:0:\"\";s:12:\"yandexverify\";s:0:\"\";s:9:\"site_type\";s:0:\"\";s:20:\"has_multiple_authors\";s:0:\"\";s:16:\"environment_type\";s:0:\"\";s:23:\"content_analysis_active\";b:1;s:23:\"keyword_analysis_active\";b:1;s:21:\"enable_admin_bar_menu\";b:1;s:26:\"enable_cornerstone_content\";b:1;s:18:\"enable_xml_sitemap\";b:1;s:24:\"enable_text_link_counter\";b:1;s:22:\"show_onboarding_notice\";b:1;s:18:\"first_activated_on\";i:1579407309;s:13:\"myyoast-oauth\";b:0;}','yes');
INSERT INTO `wp_options` VALUES (245,'wpseo_titles','a:71:{s:10:\"title_test\";i:0;s:17:\"forcerewritetitle\";b:0;s:9:\"separator\";s:7:\"sc-dash\";s:16:\"title-home-wpseo\";s:42:\"%%sitename%% %%page%% %%sep%% %%sitedesc%%\";s:18:\"title-author-wpseo\";s:41:\"%%name%%, Author at %%sitename%% %%page%%\";s:19:\"title-archive-wpseo\";s:38:\"%%date%% %%page%% %%sep%% %%sitename%%\";s:18:\"title-search-wpseo\";s:63:\"You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%\";s:15:\"title-404-wpseo\";s:35:\"Page not found %%sep%% %%sitename%%\";s:19:\"metadesc-home-wpseo\";s:0:\"\";s:21:\"metadesc-author-wpseo\";s:0:\"\";s:22:\"metadesc-archive-wpseo\";s:0:\"\";s:9:\"rssbefore\";s:0:\"\";s:8:\"rssafter\";s:53:\"The post %%POSTLINK%% appeared first on %%BLOGLINK%%.\";s:20:\"noindex-author-wpseo\";b:0;s:28:\"noindex-author-noposts-wpseo\";b:1;s:21:\"noindex-archive-wpseo\";b:1;s:14:\"disable-author\";b:0;s:12:\"disable-date\";b:0;s:19:\"disable-post_format\";b:0;s:18:\"disable-attachment\";b:1;s:23:\"is-media-purge-relevant\";b:0;s:20:\"breadcrumbs-404crumb\";s:25:\"Error 404: Page not found\";s:29:\"breadcrumbs-display-blog-page\";b:1;s:20:\"breadcrumbs-boldlast\";b:0;s:25:\"breadcrumbs-archiveprefix\";s:12:\"Archives for\";s:18:\"breadcrumbs-enable\";b:0;s:16:\"breadcrumbs-home\";s:4:\"Home\";s:18:\"breadcrumbs-prefix\";s:0:\"\";s:24:\"breadcrumbs-searchprefix\";s:16:\"You searched for\";s:15:\"breadcrumbs-sep\";s:7:\"&raquo;\";s:12:\"website_name\";s:0:\"\";s:11:\"person_name\";s:0:\"\";s:11:\"person_logo\";s:0:\"\";s:14:\"person_logo_id\";i:0;s:22:\"alternate_website_name\";s:0:\"\";s:12:\"company_logo\";s:0:\"\";s:15:\"company_logo_id\";i:0;s:12:\"company_name\";s:0:\"\";s:17:\"company_or_person\";s:7:\"company\";s:25:\"company_or_person_user_id\";b:0;s:17:\"stripcategorybase\";b:0;s:10:\"title-post\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-post\";s:0:\"\";s:12:\"noindex-post\";b:0;s:13:\"showdate-post\";b:0;s:23:\"display-metabox-pt-post\";b:1;s:23:\"post_types-post-maintax\";i:0;s:10:\"title-page\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-page\";s:0:\"\";s:12:\"noindex-page\";b:0;s:13:\"showdate-page\";b:0;s:23:\"display-metabox-pt-page\";b:1;s:23:\"post_types-page-maintax\";i:0;s:16:\"title-attachment\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:19:\"metadesc-attachment\";s:0:\"\";s:18:\"noindex-attachment\";b:0;s:19:\"showdate-attachment\";b:0;s:29:\"display-metabox-pt-attachment\";b:1;s:29:\"post_types-attachment-maintax\";i:0;s:18:\"title-tax-category\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-category\";s:0:\"\";s:28:\"display-metabox-tax-category\";b:1;s:20:\"noindex-tax-category\";b:0;s:18:\"title-tax-post_tag\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-post_tag\";s:0:\"\";s:28:\"display-metabox-tax-post_tag\";b:1;s:20:\"noindex-tax-post_tag\";b:0;s:21:\"title-tax-post_format\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:24:\"metadesc-tax-post_format\";s:0:\"\";s:31:\"display-metabox-tax-post_format\";b:1;s:23:\"noindex-tax-post_format\";b:1;}','yes');
INSERT INTO `wp_options` VALUES (246,'wpseo_social','a:19:{s:13:\"facebook_site\";s:0:\"\";s:13:\"instagram_url\";s:0:\"\";s:12:\"linkedin_url\";s:0:\"\";s:11:\"myspace_url\";s:0:\"\";s:16:\"og_default_image\";s:0:\"\";s:19:\"og_default_image_id\";s:0:\"\";s:18:\"og_frontpage_title\";s:0:\"\";s:17:\"og_frontpage_desc\";s:0:\"\";s:18:\"og_frontpage_image\";s:0:\"\";s:21:\"og_frontpage_image_id\";s:0:\"\";s:9:\"opengraph\";b:1;s:13:\"pinterest_url\";s:0:\"\";s:15:\"pinterestverify\";s:0:\"\";s:7:\"twitter\";b:1;s:12:\"twitter_site\";s:0:\"\";s:17:\"twitter_card_type\";s:19:\"summary_large_image\";s:11:\"youtube_url\";s:0:\"\";s:13:\"wikipedia_url\";s:0:\"\";s:10:\"fbadminapp\";s:0:\"\";}','yes');
INSERT INTO `wp_options` VALUES (247,'wpseo_flush_rewrite','1','yes');
INSERT INTO `wp_options` VALUES (248,'_transient_timeout_wpseo_link_table_inaccessible','1610943309','no');
INSERT INTO `wp_options` VALUES (249,'_transient_wpseo_link_table_inaccessible','0','no');
INSERT INTO `wp_options` VALUES (250,'_transient_timeout_wpseo_meta_table_inaccessible','1610943309','no');
INSERT INTO `wp_options` VALUES (251,'_transient_wpseo_meta_table_inaccessible','0','no');
INSERT INTO `wp_options` VALUES (253,'wpseo_onpage','a:2:{s:6:\"status\";i:-1;s:10:\"last_fetch\";i:1579407310;}','yes');
INSERT INTO `wp_options` VALUES (254,'wpseo_taxonomy_meta','a:1:{s:8:\"category\";a:2:{i:1;a:3:{s:13:\"wpseo_focuskw\";s:13:\"Moutaineering\";s:13:\"wpseo_linkdex\";s:2:\"18\";s:19:\"wpseo_content_score\";s:2:\"30\";}i:3;a:2:{s:13:\"wpseo_linkdex\";s:2:\"32\";s:19:\"wpseo_content_score\";s:2:\"60\";}}}','yes');
INSERT INTO `wp_options` VALUES (281,'classic-editor-replace','classic','yes');
INSERT INTO `wp_options` VALUES (282,'classic-editor-allow-users','allow','yes');
INSERT INTO `wp_options` VALUES (289,'WPLANG','','yes');
INSERT INTO `wp_options` VALUES (290,'new_admin_email','flaugher@gmail.com','yes');
INSERT INTO `wp_options` VALUES (295,'rewrite_rules','a:97:{s:19:\"sitemap_index\\.xml$\";s:19:\"index.php?sitemap=1\";s:31:\"([^/]+?)-sitemap([0-9]+)?\\.xml$\";s:51:\"index.php?sitemap=$matches[1]&sitemap_n=$matches[2]\";s:24:\"([a-z]+)?-?sitemap\\.xsl$\";s:39:\"index.php?yoast-sitemap-xsl=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:40:\"./(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:35:\"./(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:16:\"./(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:28:\"./(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:10:\"./(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=9&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:31:\".+?/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:41:\".+?/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:61:\".+?/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\".+?/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\".+?/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:37:\".+?/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"(.+?)/([^/]+)/embed/?$\";s:63:\"index.php?category_name=$matches[1]&name=$matches[2]&embed=true\";s:26:\"(.+?)/([^/]+)/trackback/?$\";s:57:\"index.php?category_name=$matches[1]&name=$matches[2]&tb=1\";s:46:\"(.+?)/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&feed=$matches[3]\";s:41:\"(.+?)/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&feed=$matches[3]\";s:34:\"(.+?)/([^/]+)/page/?([0-9]{1,})/?$\";s:70:\"index.php?category_name=$matches[1]&name=$matches[2]&paged=$matches[3]\";s:41:\"(.+?)/([^/]+)/comment-page-([0-9]{1,})/?$\";s:70:\"index.php?category_name=$matches[1]&name=$matches[2]&cpage=$matches[3]\";s:30:\"(.+?)/([^/]+)(?:/([0-9]+))?/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&page=$matches[3]\";s:20:\".+?/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:30:\".+?/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:50:\".+?/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:45:\".+?/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:45:\".+?/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:26:\".+?/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:38:\"(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:33:\"(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:14:\"(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:26:\"(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:33:\"(.+?)/comment-page-([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&cpage=$matches[2]\";s:8:\"(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";}','yes');
INSERT INTO `wp_options` VALUES (352,'category_children','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (364,'_transient_is_multi_author','0','yes');
INSERT INTO `wp_options` VALUES (369,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1579544039;s:7:\"checked\";a:8:{s:51:\"all-in-one-wp-security-and-firewall/wp-security.php\";s:5:\"4.4.2\";s:33:\"classic-editor/classic-editor.php\";s:3:\"1.5\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.1.6\";s:20:\"social-pug/index.php\";s:5:\"1.6.2\";s:68:\"stop-spammer-registrations-plugin/stop-spammer-registrations-new.php\";s:6:\"2019.6\";s:27:\"updraftplus/updraftplus.php\";s:7:\"1.16.21\";s:23:\"wp-insert/wp-insert.php\";s:5:\"2.4.7\";s:24:\"wordpress-seo/wp-seo.php\";s:6:\"12.8.1\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:8:{s:51:\"all-in-one-wp-security-and-firewall/wp-security.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:49:\"w.org/plugins/all-in-one-wp-security-and-firewall\";s:4:\"slug\";s:35:\"all-in-one-wp-security-and-firewall\";s:6:\"plugin\";s:51:\"all-in-one-wp-security-and-firewall/wp-security.php\";s:11:\"new_version\";s:5:\"4.4.2\";s:3:\"url\";s:66:\"https://wordpress.org/plugins/all-in-one-wp-security-and-firewall/\";s:7:\"package\";s:78:\"https://downloads.wordpress.org/plugin/all-in-one-wp-security-and-firewall.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:88:\"https://ps.w.org/all-in-one-wp-security-and-firewall/assets/icon-128x128.png?rev=1232826\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:91:\"https://ps.w.org/all-in-one-wp-security-and-firewall/assets/banner-1544x500.png?rev=1914011\";s:2:\"1x\";s:90:\"https://ps.w.org/all-in-one-wp-security-and-firewall/assets/banner-772x250.png?rev=1914013\";}s:11:\"banners_rtl\";a:0:{}}s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/classic-editor.1.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.1.6\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";s:2:\"1x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}}s:20:\"social-pug/index.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:24:\"w.org/plugins/social-pug\";s:4:\"slug\";s:10:\"social-pug\";s:6:\"plugin\";s:20:\"social-pug/index.php\";s:11:\"new_version\";s:5:\"1.6.2\";s:3:\"url\";s:41:\"https://wordpress.org/plugins/social-pug/\";s:7:\"package\";s:53:\"https://downloads.wordpress.org/plugin/social-pug.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:55:\"https://ps.w.org/social-pug/assets/icon.svg?rev=2187916\";s:3:\"svg\";s:55:\"https://ps.w.org/social-pug/assets/icon.svg?rev=2187916\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/social-pug/assets/banner-1544x500.png?rev=2187916\";s:2:\"1x\";s:65:\"https://ps.w.org/social-pug/assets/banner-772x250.png?rev=2187916\";}s:11:\"banners_rtl\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/social-pug/assets/banner-1544x500-rtl.png?rev=2187916\";s:2:\"1x\";s:69:\"https://ps.w.org/social-pug/assets/banner-772x250-rtl.png?rev=2187916\";}}s:68:\"stop-spammer-registrations-plugin/stop-spammer-registrations-new.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:47:\"w.org/plugins/stop-spammer-registrations-plugin\";s:4:\"slug\";s:33:\"stop-spammer-registrations-plugin\";s:6:\"plugin\";s:68:\"stop-spammer-registrations-plugin/stop-spammer-registrations-new.php\";s:11:\"new_version\";s:6:\"2019.6\";s:3:\"url\";s:64:\"https://wordpress.org/plugins/stop-spammer-registrations-plugin/\";s:7:\"package\";s:76:\"https://downloads.wordpress.org/plugin/stop-spammer-registrations-plugin.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:86:\"https://ps.w.org/stop-spammer-registrations-plugin/assets/icon-256x256.png?rev=2226248\";s:2:\"1x\";s:86:\"https://ps.w.org/stop-spammer-registrations-plugin/assets/icon-128x128.png?rev=2226248\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:89:\"https://ps.w.org/stop-spammer-registrations-plugin/assets/banner-1544x500.png?rev=2226241\";s:2:\"1x\";s:88:\"https://ps.w.org/stop-spammer-registrations-plugin/assets/banner-772x250.png?rev=2226241\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"updraftplus/updraftplus.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/updraftplus\";s:4:\"slug\";s:11:\"updraftplus\";s:6:\"plugin\";s:27:\"updraftplus/updraftplus.php\";s:11:\"new_version\";s:7:\"1.16.21\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/updraftplus/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/updraftplus.1.16.21.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/updraftplus/assets/icon-256x256.jpg?rev=1686200\";s:2:\"1x\";s:64:\"https://ps.w.org/updraftplus/assets/icon-128x128.jpg?rev=1686200\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/updraftplus/assets/banner-1544x500.png?rev=1686200\";s:2:\"1x\";s:66:\"https://ps.w.org/updraftplus/assets/banner-772x250.png?rev=1686200\";}s:11:\"banners_rtl\";a:0:{}}s:23:\"wp-insert/wp-insert.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:23:\"w.org/plugins/wp-insert\";s:4:\"slug\";s:9:\"wp-insert\";s:6:\"plugin\";s:23:\"wp-insert/wp-insert.php\";s:11:\"new_version\";s:5:\"2.4.7\";s:3:\"url\";s:40:\"https://wordpress.org/plugins/wp-insert/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/wp-insert.2.4.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:61:\"https://ps.w.org/wp-insert/assets/icon-256x256.png?rev=984289\";s:2:\"1x\";s:61:\"https://ps.w.org/wp-insert/assets/icon-128x128.png?rev=984289\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:63:\"https://ps.w.org/wp-insert/assets/banner-772x250.jpg?rev=607069\";}s:11:\"banners_rtl\";a:0:{}}s:24:\"wordpress-seo/wp-seo.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:27:\"w.org/plugins/wordpress-seo\";s:4:\"slug\";s:13:\"wordpress-seo\";s:6:\"plugin\";s:24:\"wordpress-seo/wp-seo.php\";s:11:\"new_version\";s:6:\"12.8.1\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/wordpress-seo/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/wordpress-seo.12.8.1.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:66:\"https://ps.w.org/wordpress-seo/assets/icon-256x256.png?rev=1834347\";s:2:\"1x\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=1946641\";s:3:\"svg\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=1946641\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500.png?rev=1843435\";s:2:\"1x\";s:68:\"https://ps.w.org/wordpress-seo/assets/banner-772x250.png?rev=1843435\";}s:11:\"banners_rtl\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500-rtl.png?rev=1843435\";s:2:\"1x\";s:72:\"https://ps.w.org/wordpress-seo/assets/banner-772x250-rtl.png?rev=1843435\";}}}}','no');
INSERT INTO `wp_options` VALUES (370,'dpsp_location_sidebar','a:5:{s:6:\"active\";s:1:\"1\";s:8:\"networks\";a:3:{s:8:\"facebook\";a:1:{s:5:\"label\";s:8:\"Facebook\";}s:7:\"twitter\";a:1:{s:5:\"label\";s:7:\"Twitter\";}s:9:\"pinterest\";a:1:{s:5:\"label\";s:9:\"Pinterest\";}}s:7:\"display\";a:6:{s:5:\"shape\";s:7:\"rounded\";s:14:\"icon_animation\";s:3:\"yes\";s:8:\"position\";s:4:\"left\";s:11:\"screen_size\";s:0:\"\";s:16:\"show_count_total\";s:3:\"yes\";s:20:\"total_count_position\";s:6:\"before\";}s:17:\"post_type_display\";a:2:{i:0;s:4:\"post\";i:1;s:4:\"page\";}s:12:\"button_style\";s:1:\"1\";}','yes');
INSERT INTO `wp_options` VALUES (371,'dpsp_location_content','a:4:{s:8:\"networks\";a:3:{s:8:\"facebook\";a:1:{s:5:\"label\";s:5:\"Share\";}s:7:\"twitter\";a:1:{s:5:\"label\";s:5:\"Tweet\";}s:9:\"pinterest\";a:1:{s:5:\"label\";s:3:\"Pin\";}}s:12:\"button_style\";s:1:\"1\";s:7:\"display\";a:8:{s:5:\"shape\";s:7:\"rounded\";s:14:\"icon_animation\";s:3:\"yes\";s:16:\"show_count_total\";s:3:\"yes\";s:8:\"position\";s:3:\"top\";s:12:\"column_count\";s:1:\"3\";s:11:\"show_labels\";s:3:\"yes\";s:7:\"spacing\";s:3:\"yes\";s:20:\"total_count_position\";s:5:\"after\";}s:17:\"post_type_display\";a:1:{i:0;s:4:\"post\";}}','yes');
INSERT INTO `wp_options` VALUES (373,'dpsp_version','1.6.2','yes');
INSERT INTO `wp_options` VALUES (374,'dpsp_first_activation','1579476943','yes');
INSERT INTO `wp_options` VALUES (375,'dpsp_settings','a:1:{s:30:\"facebook_share_counts_provider\";s:14:\"authorized_app\";}','yes');
INSERT INTO `wp_options` VALUES (376,'dpsp_version_update_1_5_1','1','yes');
INSERT INTO `wp_options` VALUES (377,'dpsp_version_update_1_6_1','1','yes');
INSERT INTO `wp_options` VALUES (380,'dpsp_top_shared_posts','{\"post\":{\"34\":0},\"page\":{\"9\":0}}','yes');
INSERT INTO `wp_options` VALUES (383,'_site_transient_timeout_theme_roots','1579545838','no');
INSERT INTO `wp_options` VALUES (384,'_site_transient_theme_roots','a:5:{s:5:\"astra\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";}','no');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=205 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (3,1,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (4,1,'_wp_trash_meta_time','1579313021');
INSERT INTO `wp_postmeta` VALUES (5,1,'_wp_desired_post_slug','hello-world');
INSERT INTO `wp_postmeta` VALUES (6,1,'_wp_trash_meta_comments_status','a:1:{i:1;s:1:\"1\";}');
INSERT INTO `wp_postmeta` VALUES (10,2,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (11,2,'_wp_trash_meta_time','1579313060');
INSERT INTO `wp_postmeta` VALUES (12,2,'_wp_desired_post_slug','sample-page');
INSERT INTO `wp_postmeta` VALUES (13,8,'_edit_lock','1579313163:1');
INSERT INTO `wp_postmeta` VALUES (14,9,'_edit_lock','1579315224:1');
INSERT INTO `wp_postmeta` VALUES (15,10,'_wp_attached_file','2020/01/Planning-A-Trip-To-The-Snowy-Mountains.jpg');
INSERT INTO `wp_postmeta` VALUES (16,10,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:899;s:6:\"height\";i:573;s:4:\"file\";s:50:\"2020/01/Planning-A-Trip-To-The-Snowy-Mountains.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:50:\"Planning-A-Trip-To-The-Snowy-Mountains-300x191.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:191;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:50:\"Planning-A-Trip-To-The-Snowy-Mountains-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:50:\"Planning-A-Trip-To-The-Snowy-Mountains-768x490.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:490;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (17,12,'_edit_lock','1579315708:1');
INSERT INTO `wp_postmeta` VALUES (18,16,'_edit_lock','1579315990:1');
INSERT INTO `wp_postmeta` VALUES (19,18,'_form','<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit \"Send\"]');
INSERT INTO `wp_postmeta` VALUES (20,18,'_mail','a:8:{s:7:\"subject\";s:26:\"demo_site \"[your-subject]\"\";s:6:\"sender\";s:36:\"demo_site <wordpress@demosite.local>\";s:4:\"body\";s:169:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on demo_site (http://demosite.local)\";s:9:\"recipient\";s:18:\"flaugher@gmail.com\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}');
INSERT INTO `wp_postmeta` VALUES (21,18,'_mail_2','a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:26:\"demo_site \"[your-subject]\"\";s:6:\"sender\";s:36:\"demo_site <wordpress@demosite.local>\";s:4:\"body\";s:111:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on demo_site (http://demosite.local)\";s:9:\"recipient\";s:12:\"[your-email]\";s:18:\"additional_headers\";s:28:\"Reply-To: flaugher@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}');
INSERT INTO `wp_postmeta` VALUES (22,18,'_messages','a:8:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";}');
INSERT INTO `wp_postmeta` VALUES (23,18,'_additional_settings',NULL);
INSERT INTO `wp_postmeta` VALUES (24,18,'_locale','en_US');
INSERT INTO `wp_postmeta` VALUES (25,19,'_edit_lock','1579316157:1');
INSERT INTO `wp_postmeta` VALUES (44,23,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (45,23,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (46,23,'_menu_item_object_id','15');
INSERT INTO `wp_postmeta` VALUES (47,23,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (48,23,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (49,23,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (50,23,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (51,23,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (53,24,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (54,24,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (55,24,'_menu_item_object_id','12');
INSERT INTO `wp_postmeta` VALUES (56,24,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (57,24,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (58,24,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (59,24,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (60,24,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (62,25,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (63,25,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (64,25,'_menu_item_object_id','14');
INSERT INTO `wp_postmeta` VALUES (65,25,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (66,25,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (67,25,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (68,25,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (69,25,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (71,26,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (72,26,'_wp_trash_meta_time','1579318181');
INSERT INTO `wp_postmeta` VALUES (73,27,'_edit_lock','1579318592:1');
INSERT INTO `wp_postmeta` VALUES (74,27,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (75,27,'_wp_trash_meta_time','1579318595');
INSERT INTO `wp_postmeta` VALUES (76,30,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (77,30,'_wp_trash_meta_time','1579318823');
INSERT INTO `wp_postmeta` VALUES (78,34,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (79,34,'_edit_lock','1579476481:1');
INSERT INTO `wp_postmeta` VALUES (80,34,'_yoast_wpseo_content_score','30');
INSERT INTO `wp_postmeta` VALUES (81,34,'_yoast_wpseo_primary_category','');
INSERT INTO `wp_postmeta` VALUES (82,34,'site-sidebar-layout','default');
INSERT INTO `wp_postmeta` VALUES (83,34,'site-content-layout','default');
INSERT INTO `wp_postmeta` VALUES (84,34,'theme-transparent-header-meta','default');
INSERT INTO `wp_postmeta` VALUES (85,36,'_wp_attached_file','2020/01/Screen-Shot-2020-01-18-at-8.42.49-PM.png');
INSERT INTO `wp_postmeta` VALUES (86,36,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:448;s:6:\"height\";i:327;s:4:\"file\";s:48:\"2020/01/Screen-Shot-2020-01-18-at-8.42.49-PM.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"Screen-Shot-2020-01-18-at-8.42.49-PM-300x219.png\";s:5:\"width\";i:300;s:6:\"height\";i:219;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"Screen-Shot-2020-01-18-at-8.42.49-PM-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (90,38,'_wp_attached_file','2020/01/Screen-Shot-2020-01-18-at-8.51.57-PM.png');
INSERT INTO `wp_postmeta` VALUES (91,38,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:672;s:6:\"height\";i:503;s:4:\"file\";s:48:\"2020/01/Screen-Shot-2020-01-18-at-8.51.57-PM.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"Screen-Shot-2020-01-18-at-8.51.57-PM-300x225.png\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"Screen-Shot-2020-01-18-at-8.51.57-PM-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (92,40,'classic-editor-remember','classic-editor');
INSERT INTO `wp_postmeta` VALUES (93,40,'_edit_lock','1579472531:1');
INSERT INTO `wp_postmeta` VALUES (94,41,'_wp_attached_file','2020/01/Screen-Shot-2020-01-18-at-9.00.05-PM.png');
INSERT INTO `wp_postmeta` VALUES (95,41,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:698;s:6:\"height\";i:523;s:4:\"file\";s:48:\"2020/01/Screen-Shot-2020-01-18-at-9.00.05-PM.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"Screen-Shot-2020-01-18-at-9.00.05-PM-300x225.png\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"Screen-Shot-2020-01-18-at-9.00.05-PM-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (96,40,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (97,40,'_yoast_wpseo_primary_category','3');
INSERT INTO `wp_postmeta` VALUES (98,40,'site-sidebar-layout','default');
INSERT INTO `wp_postmeta` VALUES (99,40,'site-content-layout','default');
INSERT INTO `wp_postmeta` VALUES (100,40,'theme-transparent-header-meta','default');
INSERT INTO `wp_postmeta` VALUES (101,40,'_yoast_wpseo_content_score','30');
INSERT INTO `wp_postmeta` VALUES (109,44,'classic-editor-remember','classic-editor');
INSERT INTO `wp_postmeta` VALUES (110,45,'classic-editor-remember','classic-editor');
INSERT INTO `wp_postmeta` VALUES (111,46,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (112,46,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (113,46,'_menu_item_object_id','19');
INSERT INTO `wp_postmeta` VALUES (114,46,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (115,46,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (116,46,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (117,46,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (118,46,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (120,47,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (121,47,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (122,47,'_menu_item_object_id','16');
INSERT INTO `wp_postmeta` VALUES (123,47,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (124,47,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (125,47,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (126,47,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (127,47,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (129,48,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (130,48,'_wp_trash_meta_time','1579473435');
INSERT INTO `wp_postmeta` VALUES (131,49,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (132,49,'_wp_trash_meta_time','1579473658');
INSERT INTO `wp_postmeta` VALUES (133,50,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (134,50,'_wp_trash_meta_time','1579473732');
INSERT INTO `wp_postmeta` VALUES (135,51,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (136,51,'_wp_trash_meta_time','1579474147');
INSERT INTO `wp_postmeta` VALUES (137,52,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (138,52,'_wp_trash_meta_time','1579474199');
INSERT INTO `wp_postmeta` VALUES (139,53,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (140,53,'_wp_trash_meta_time','1579474333');
INSERT INTO `wp_postmeta` VALUES (141,55,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (142,55,'_wp_trash_meta_time','1579474464');
INSERT INTO `wp_postmeta` VALUES (143,57,'_edit_lock','1579474548:1');
INSERT INTO `wp_postmeta` VALUES (144,57,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (145,57,'_wp_trash_meta_time','1579474552');
INSERT INTO `wp_postmeta` VALUES (146,59,'_menu_item_type','taxonomy');
INSERT INTO `wp_postmeta` VALUES (147,59,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (148,59,'_menu_item_object_id','5');
INSERT INTO `wp_postmeta` VALUES (149,59,'_menu_item_object','category');
INSERT INTO `wp_postmeta` VALUES (150,59,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (151,59,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (152,59,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (153,59,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (154,59,'_menu_item_orphaned','1579475277');
INSERT INTO `wp_postmeta` VALUES (155,60,'_menu_item_type','taxonomy');
INSERT INTO `wp_postmeta` VALUES (156,60,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (157,60,'_menu_item_object_id','5');
INSERT INTO `wp_postmeta` VALUES (158,60,'_menu_item_object','category');
INSERT INTO `wp_postmeta` VALUES (159,60,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (160,60,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (161,60,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (162,60,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (164,61,'_menu_item_type','taxonomy');
INSERT INTO `wp_postmeta` VALUES (165,61,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (166,61,'_menu_item_object_id','1');
INSERT INTO `wp_postmeta` VALUES (167,61,'_menu_item_object','category');
INSERT INTO `wp_postmeta` VALUES (168,61,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (169,61,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (170,61,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (171,61,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (173,62,'_menu_item_type','taxonomy');
INSERT INTO `wp_postmeta` VALUES (174,62,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (175,62,'_menu_item_object_id','3');
INSERT INTO `wp_postmeta` VALUES (176,62,'_menu_item_object','category');
INSERT INTO `wp_postmeta` VALUES (177,62,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (178,62,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (179,62,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (180,62,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (182,63,'classic-editor-remember','classic-editor');
INSERT INTO `wp_postmeta` VALUES (183,63,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (184,63,'_edit_lock','1579476176:1');
INSERT INTO `wp_postmeta` VALUES (185,63,'_yoast_wpseo_content_score','30');
INSERT INTO `wp_postmeta` VALUES (186,63,'_yoast_wpseo_primary_category','5');
INSERT INTO `wp_postmeta` VALUES (187,63,'site-sidebar-layout','default');
INSERT INTO `wp_postmeta` VALUES (188,63,'site-content-layout','default');
INSERT INTO `wp_postmeta` VALUES (189,63,'theme-transparent-header-meta','default');
INSERT INTO `wp_postmeta` VALUES (190,65,'_wp_attached_file','2020/01/Screen-Shot-2020-01-19-at-3.17.17-PM.png');
INSERT INTO `wp_postmeta` VALUES (191,65,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:454;s:6:\"height\";i:403;s:4:\"file\";s:48:\"2020/01/Screen-Shot-2020-01-19-at-3.17.17-PM.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"Screen-Shot-2020-01-19-at-3.17.17-PM-300x266.png\";s:5:\"width\";i:300;s:6:\"height\";i:266;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"Screen-Shot-2020-01-19-at-3.17.17-PM-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (192,66,'_wp_attached_file','2020/01/Screen-Shot-2020-01-19-at-3.17.29-PM.png');
INSERT INTO `wp_postmeta` VALUES (193,66,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:445;s:6:\"height\";i:251;s:4:\"file\";s:48:\"2020/01/Screen-Shot-2020-01-19-at-3.17.29-PM.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"Screen-Shot-2020-01-19-at-3.17.29-PM-300x169.png\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"Screen-Shot-2020-01-19-at-3.17.29-PM-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (196,34,'classic-editor-remember','classic-editor');
INSERT INTO `wp_postmeta` VALUES (199,34,'dpsp_networks_shares','a:1:{s:9:\"pinterest\";i:0;}');
INSERT INTO `wp_postmeta` VALUES (200,34,'dpsp_networks_shares_total','0');
INSERT INTO `wp_postmeta` VALUES (201,34,'dpsp_networks_shares_last_updated','1579477110');
INSERT INTO `wp_postmeta` VALUES (202,9,'dpsp_networks_shares','a:1:{s:9:\"pinterest\";i:0;}');
INSERT INTO `wp_postmeta` VALUES (203,9,'dpsp_networks_shares_total','0');
INSERT INTO `wp_postmeta` VALUES (204,9,'dpsp_networks_shares_last_updated','1579544382');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2020-01-18 01:51:57','2020-01-18 01:51:57','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','trash','open','open','','hello-world__trashed','','','2020-01-18 02:03:41','2020-01-18 02:03:41','',0,'http://demosite.local/?p=1',0,'post','',1);
INSERT INTO `wp_posts` VALUES (2,1,'2020-01-18 01:51:57','2020-01-18 01:51:57','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://demosite.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','trash','closed','open','','sample-page__trashed','','','2020-01-18 02:04:20','2020-01-18 02:04:20','',0,'http://demosite.local/?page_id=2',0,'page','',0);
INSERT INTO `wp_posts` VALUES (4,1,'2020-01-18 02:01:59','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2020-01-18 02:01:59','0000-00-00 00:00:00','',0,'http://demosite.local/?p=4',0,'post','',0);
INSERT INTO `wp_posts` VALUES (5,1,'2020-01-18 02:03:41','2020-01-18 02:03:41','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','inherit','closed','closed','','1-revision-v1','','','2020-01-18 02:03:41','2020-01-18 02:03:41','',1,'http://demosite.local/1-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (7,1,'2020-01-18 02:04:20','2020-01-18 02:04:20','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://demosite.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','inherit','closed','closed','','2-revision-v1','','','2020-01-18 02:04:20','2020-01-18 02:04:20','',2,'http://demosite.local/2-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (8,1,'2020-01-18 02:08:07','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2020-01-18 02:08:07','0000-00-00 00:00:00','',0,'http://demosite.local/?page_id=8',0,'page','',0);
INSERT INTO `wp_posts` VALUES (9,1,'2020-01-18 02:13:00','2020-01-18 02:13:00','<!-- wp:paragraph {\"dropCap\":true} -->\n<p class=\"has-drop-cap\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet velit maximus tellus pharetra eleifend. Suspendisse at volutpat leo, sit amet auctor enim. Aliquam feugiat sed metus nec cursus. Pellentesque volutpat augue et dictum blandit. Proin lobortis congue facilisis. Quisque ultricies congue nibh posuere gravida. Vivamus ipsum mauris, gravida vestibulum justo et, porttitor mattis augue. Etiam ut tincidunt quam, sit amet iaculis lacus.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":10,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://demosite.local/wp-content/uploads/2020/01/Planning-A-Trip-To-The-Snowy-Mountains.jpg\" alt=\"\" class=\"wp-image-10\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Suspendisse eget dolor massa. Praesent dui quam, tempus quis ex eget, pharetra tristique magna. Suspendisse a lorem orci. Pellentesque id ultricies tellus. Nulla auctor eleifend gravida. Cras tristique posuere enim a rhoncus. Nullam et nisi eros. Quisque fringilla vehicula nunc id tempor. Nulla id libero ut mauris mollis pellentesque. Duis eget enim ornare, porta dolor vel, efficitur ante. Pellentesque egestas ante leo, a tempus turpis faucibus et.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sed leo magna, vestibulum ac commodo ac, commodo eu ex. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed rhoncus libero justo, ac auctor ligula elementum eget. Proin nec auctor lacus. Maecenas varius arcu sit amet consequat suscipit. Nulla imperdiet, mi eu accumsan rutrum, tortor justo volutpat lorem, nec pulvinar dolor turpis vel risus. Phasellus ac leo efficitur, mollis turpis vel, tristique magna. Morbi nec quam et erat feugiat volutpat.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','Home Page','','publish','closed','closed','','home-page','','','2020-01-18 02:42:34','2020-01-18 02:42:34','',0,'http://demosite.local/?page_id=9',0,'page','',0);
INSERT INTO `wp_posts` VALUES (10,1,'2020-01-18 02:17:45','2020-01-18 02:17:45','','Planning-A-Trip-To-The-Snowy-Mountains','','inherit','open','closed','','planning-a-trip-to-the-snowy-mountains','','','2020-01-18 02:17:45','2020-01-18 02:17:45','',9,'http://demosite.local/wp-content/uploads/2020/01/Planning-A-Trip-To-The-Snowy-Mountains.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (11,1,'2020-01-18 02:42:34','2020-01-18 02:42:34','<!-- wp:paragraph {\"dropCap\":true} -->\n<p class=\"has-drop-cap\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet velit maximus tellus pharetra eleifend. Suspendisse at volutpat leo, sit amet auctor enim. Aliquam feugiat sed metus nec cursus. Pellentesque volutpat augue et dictum blandit. Proin lobortis congue facilisis. Quisque ultricies congue nibh posuere gravida. Vivamus ipsum mauris, gravida vestibulum justo et, porttitor mattis augue. Etiam ut tincidunt quam, sit amet iaculis lacus.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":10,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://demosite.local/wp-content/uploads/2020/01/Planning-A-Trip-To-The-Snowy-Mountains.jpg\" alt=\"\" class=\"wp-image-10\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Suspendisse eget dolor massa. Praesent dui quam, tempus quis ex eget, pharetra tristique magna. Suspendisse a lorem orci. Pellentesque id ultricies tellus. Nulla auctor eleifend gravida. Cras tristique posuere enim a rhoncus. Nullam et nisi eros. Quisque fringilla vehicula nunc id tempor. Nulla id libero ut mauris mollis pellentesque. Duis eget enim ornare, porta dolor vel, efficitur ante. Pellentesque egestas ante leo, a tempus turpis faucibus et.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sed leo magna, vestibulum ac commodo ac, commodo eu ex. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed rhoncus libero justo, ac auctor ligula elementum eget. Proin nec auctor lacus. Maecenas varius arcu sit amet consequat suscipit. Nulla imperdiet, mi eu accumsan rutrum, tortor justo volutpat lorem, nec pulvinar dolor turpis vel risus. Phasellus ac leo efficitur, mollis turpis vel, tristique magna. Morbi nec quam et erat feugiat volutpat.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','Home Page','','inherit','closed','closed','','9-revision-v1','','','2020-01-18 02:42:34','2020-01-18 02:42:34','',9,'http://demosite.local/9-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (12,1,'2020-01-18 02:49:40','2020-01-18 02:49:40','','Privacy Policy','','publish','closed','closed','','privacy-policy','','','2020-01-18 02:49:40','2020-01-18 02:49:40','',0,'http://demosite.local/privacy-policy/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (13,1,'2020-01-18 02:50:20','2020-01-18 02:50:20','','Privacy Policy','','inherit','closed','closed','','12-autosave-v1','','','2020-01-18 02:50:20','2020-01-18 02:50:20','',12,'http://demosite.local/12-autosave-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (14,1,'2020-01-18 02:51:02','2020-01-18 02:51:02','','Terms and Conditions','','publish','closed','closed','','terms-and-conditions','','','2020-01-18 02:51:02','2020-01-18 02:51:02','',0,'http://demosite.local/terms-and-conditions/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (15,1,'2020-01-18 02:51:09','2020-01-18 02:51:09','','Disclaimer','','publish','closed','closed','','disclaimer','','','2020-01-18 02:51:09','2020-01-18 02:51:09','',0,'http://demosite.local/disclaimer/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (16,1,'2020-01-18 02:55:04','2020-01-18 02:55:04','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sed mi ut arcu interdum laoreet. Vivamus vel ipsum vel sem imperdiet suscipit eu ut nibh. Aenean orci ipsum, elementum eu bibendum vitae, viverra nec nulla. Nunc sed velit libero. In volutpat congue tincidunt. Mauris vel varius nisi. Vestibulum quis odio at metus aliquam vestibulum. Aliquam gravida eget metus quis posuere. Aenean aliquam dui varius iaculis auctor. Quisque nulla justo, elementum ut elit nec, auctor volutpat neque.</p>\n<!-- /wp:paragraph -->','About Us','','publish','closed','closed','','about-us','','','2020-01-18 02:55:04','2020-01-18 02:55:04','',0,'http://demosite.local/?page_id=16',0,'page','',0);
INSERT INTO `wp_posts` VALUES (17,1,'2020-01-18 02:55:04','2020-01-18 02:55:04','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sed mi ut arcu interdum laoreet. Vivamus vel ipsum vel sem imperdiet suscipit eu ut nibh. Aenean orci ipsum, elementum eu bibendum vitae, viverra nec nulla. Nunc sed velit libero. In volutpat congue tincidunt. Mauris vel varius nisi. Vestibulum quis odio at metus aliquam vestibulum. Aliquam gravida eget metus quis posuere. Aenean aliquam dui varius iaculis auctor. Quisque nulla justo, elementum ut elit nec, auctor volutpat neque.</p>\n<!-- /wp:paragraph -->','About Us','','inherit','closed','closed','','16-revision-v1','','','2020-01-18 02:55:04','2020-01-18 02:55:04','',16,'http://demosite.local/16-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (18,1,'2020-01-18 02:56:15','2020-01-18 02:56:15','<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit \"Send\"]\ndemo_site \"[your-subject]\"\ndemo_site <wordpress@demosite.local>\nFrom: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on demo_site (http://demosite.local)\nflaugher@gmail.com\nReply-To: [your-email]\n\n0\n0\n\ndemo_site \"[your-subject]\"\ndemo_site <wordpress@demosite.local>\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on demo_site (http://demosite.local)\n[your-email]\nReply-To: flaugher@gmail.com\n\n0\n0\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.','Contact form 1','','publish','closed','closed','','contact-form-1','','','2020-01-18 02:56:15','2020-01-18 02:56:15','',0,'http://demosite.local/?post_type=wpcf7_contact_form&p=18',0,'wpcf7_contact_form','',0);
INSERT INTO `wp_posts` VALUES (19,1,'2020-01-18 02:57:56','2020-01-18 02:57:56','<!-- wp:shortcode -->\n[contact-form-7 id=\"18\" title=\"Contact form 1\"]\n<!-- /wp:shortcode -->','Contact','','publish','closed','closed','','contact','','','2020-01-18 02:57:56','2020-01-18 02:57:56','',0,'http://demosite.local/?page_id=19',0,'page','',0);
INSERT INTO `wp_posts` VALUES (20,1,'2020-01-18 02:57:56','2020-01-18 02:57:56','<!-- wp:shortcode -->\n[contact-form-7 id=\"18\" title=\"Contact form 1\"]\n<!-- /wp:shortcode -->','Contact','','inherit','closed','closed','','19-revision-v1','','','2020-01-18 02:57:56','2020-01-18 02:57:56','',19,'http://demosite.local/19-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (23,1,'2020-01-18 03:00:11','2020-01-18 03:00:11',' ','','','publish','closed','closed','','23','','','2020-01-19 22:33:42','2020-01-19 22:33:42','',0,'http://demosite.local/?p=23',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (24,1,'2020-01-18 03:00:11','2020-01-18 03:00:11',' ','','','publish','closed','closed','','24','','','2020-01-19 22:33:42','2020-01-19 22:33:42','',0,'http://demosite.local/?p=24',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (25,1,'2020-01-18 03:00:11','2020-01-18 03:00:11',' ','','','publish','closed','closed','','25','','','2020-01-19 22:33:42','2020-01-19 22:33:42','',0,'http://demosite.local/?p=25',3,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (26,1,'2020-01-18 03:29:41','2020-01-18 03:29:41','{\n    \"astra-settings[footer-sml-section-1-credit]\": {\n        \"value\": \"Copyright \\u00a9 [current_year] [site_title]\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-18 03:29:41\"\n    }\n}','','','trash','closed','closed','','ff9fbccf-8e3d-4876-a428-03c3bd66e574','','','2020-01-18 03:29:41','2020-01-18 03:29:41','',0,'http://demosite.local/ff9fbccf-8e3d-4876-a428-03c3bd66e574/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (27,1,'2020-01-18 03:36:35','2020-01-18 03:36:35','{\n    \"custom_css[astra]\": {\n        \"value\": \".ast-container {background: white;}\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-18 03:36:32\"\n    }\n}','','','trash','closed','closed','','401bab71-b491-4c6d-b951-c51eac9caf07','','','2020-01-18 03:36:35','2020-01-18 03:36:35','',0,'http://demosite.local/?p=27',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (28,1,'2020-01-18 03:36:35','2020-01-18 03:36:35','.ast-container {background: white;}\n.ast-small-footer-wrap {color: black;}\n.site-footer a { color: black; }\n.site-footer a:hover { color: blue; }','astra','','publish','closed','closed','','astra','','','2020-01-19 22:55:52','2020-01-19 22:55:52','',0,'http://demosite.local/astra/',0,'custom_css','',0);
INSERT INTO `wp_posts` VALUES (29,1,'2020-01-18 03:36:35','2020-01-18 03:36:35','.ast-container {background: white;}','astra','','inherit','closed','closed','','28-revision-v1','','','2020-01-18 03:36:35','2020-01-18 03:36:35','',28,'http://demosite.local/28-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (30,1,'2020-01-18 03:40:23','2020-01-18 03:40:23','{\n    \"custom_css[astra]\": {\n        \"value\": \".ast-container {background: white;}\\n.ast-small-footer-wrap {color: black;}\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-18 03:40:23\"\n    }\n}','','','trash','closed','closed','','c806b593-f483-46c3-88cd-91f6f6cbe129','','','2020-01-18 03:40:23','2020-01-18 03:40:23','',0,'http://demosite.local/c806b593-f483-46c3-88cd-91f6f6cbe129/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (31,1,'2020-01-18 03:40:23','2020-01-18 03:40:23','.ast-container {background: white;}\n.ast-small-footer-wrap {color: black;}','astra','','inherit','closed','closed','','28-revision-v1','','','2020-01-18 03:40:23','2020-01-18 03:40:23','',28,'http://demosite.local/28-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (32,1,'2020-01-19 04:32:57','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2020-01-19 04:32:57','0000-00-00 00:00:00','',0,'http://demosite.local/?p=32',0,'post','',0);
INSERT INTO `wp_posts` VALUES (33,1,'2020-01-19 04:34:09','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2020-01-19 04:34:09','0000-00-00 00:00:00','',0,'http://demosite.local/?p=33',0,'post','',0);
INSERT INTO `wp_posts` VALUES (34,1,'2020-01-19 04:48:14','2020-01-19 04:48:14','Praesent a dui vitae est feugiat luctus quis lacinia lacus. Vivamus commodo ex et sapien maximus porttitor. In ut suscipit nulla, eu ornare mauris. Sed nec faucibus elit, nec interdum ipsum. Vestibulum ac accumsan augue. Vestibulum imperdiet ex et eros consectetur iaculis. Nam eget nisi mi. Integer lacinia nulla nunc, non finibus velit ultricies et.\r\n\r\nVestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis eu efficitur orci. Cras ac dolor maximus lorem placerat egestas. Etiam volutpat, dui ac auctor pulvinar, lacus ligula laoreet urna, sit amet commodo elit nulla ac ligula. Ut vitae ante vel turpis pharetra scelerisque. In commodo leo eget porta blandit. Aliquam egestas placerat nisl ornare efficitur. Sed sit amet ex quam. Curabitur tristique ornare malesuada. Phasellus nunc velit, congue ac risus ac, volutpat fermentum metus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Cras blandit neque augue, nec hendrerit sem congue vitae. Morbi in pulvinar nisi, in blandit tellus. Maecenas ipsum nulla, varius id lacus ut, lacinia pretium lectus. Donec mollis neque egestas, faucibus enim ac, pharetra nulla. Fusce risus diam, condimentum eget massa eget, tincidunt aliquet mauris.\r\n\r\n<img class=\"alignnone size-medium wp-image-36 alignleft\" src=\"http://demosite.local/wp-content/uploads/2020/01/Screen-Shot-2020-01-18-at-8.42.49-PM-300x219.png\" alt=\"\" width=\"300\" height=\"219\" />\r\n\r\nDuis elementum facilisis rhoncus. Nam at urna in orci dictum imperdiet placerat ornare leo. Sed iaculis suscipit convallis. Sed volutpat dignissim tempus. Nulla auctor sem id nisl pharetra, eget lobortis ante semper. Cras tortor sem, tempor vitae arcu nec, ultricies blandit ante. Phasellus a sem semper, vulputate risus a, tempor turpis. Praesent vehicula id dui non dapibus. Fusce facilisis enim eget fermentum elementum. Nullam efficitur placerat nulla vel egestas. Ut rutrum placerat risus ut ultrices.\r\n\r\nSed tincidunt commodo risus rutrum pretium. Vivamus risus massa, finibus sed ante a, volutpat blandit mauris. Fusce tempus arcu vitae nisl pharetra, eu lobortis massa consequat. Morbi maximus, odio et luctus hendrerit, lacus augue convallis dolor, vel sagittis odio erat non erat. Morbi efficitur pharetra placerat. Nulla hendrerit elit et nulla gravida, ac vehicula diam porta. Proin tincidunt magna nec feugiat facilisis.\r\n\r\nMorbi et sagittis ex, et pellentesque ipsum. Vestibulum sit amet blandit justo, eu vulputate nunc. Integer vel diam non sapien lacinia molestie ac et eros. Etiam sed leo felis. Phasellus volutpat nulla sit amet orci consectetur, a mattis ipsum viverra. Praesent sit amet finibus sem. Nunc vitae fermentum arcu, sagittis euismod mi. Vestibulum aliquam diam ac leo ultricies auctor. Sed vitae nibh aliquet, ultricies erat non, vestibulum sapien. Praesent quam ligula, scelerisque vitae vestibulum in, sagittis in diam. Sed tincidunt mattis neque, tincidunt placerat dui semper a. Vestibulum pretium euismod velit, quis finibus dolor. Sed quis fermentum risus.','My First Expedition to Nepal','','publish','open','open','','my-first-expedition-to-nepal','','','2020-01-19 23:25:34','2020-01-19 23:25:34','',0,'http://demosite.local/?p=34',0,'post','',0);
INSERT INTO `wp_posts` VALUES (35,1,'2020-01-19 04:38:31','2020-01-19 04:38:31','Praesent a dui vitae est feugiat luctus quis lacinia lacus. Vivamus commodo ex et sapien maximus porttitor. In ut suscipit nulla, eu ornare mauris. Sed nec faucibus elit, nec interdum ipsum. Vestibulum ac accumsan augue. Vestibulum imperdiet ex et eros consectetur iaculis. Nam eget nisi mi. Integer lacinia nulla nunc, non finibus velit ultricies et.\r\n\r\nVestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis eu efficitur orci. Cras ac dolor maximus lorem placerat egestas. Etiam volutpat, dui ac auctor pulvinar, lacus ligula laoreet urna, sit amet commodo elit nulla ac ligula. Ut vitae ante vel turpis pharetra scelerisque. In commodo leo eget porta blandit. Aliquam egestas placerat nisl ornare efficitur. Sed sit amet ex quam. Curabitur tristique ornare malesuada. Phasellus nunc velit, congue ac risus ac, volutpat fermentum metus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Cras blandit neque augue, nec hendrerit sem congue vitae. Morbi in pulvinar nisi, in blandit tellus. Maecenas ipsum nulla, varius id lacus ut, lacinia pretium lectus. Donec mollis neque egestas, faucibus enim ac, pharetra nulla. Fusce risus diam, condimentum eget massa eget, tincidunt aliquet mauris.\r\n\r\nDuis elementum facilisis rhoncus. Nam at urna in orci dictum imperdiet placerat ornare leo. Sed iaculis suscipit convallis. Sed volutpat dignissim tempus. Nulla auctor sem id nisl pharetra, eget lobortis ante semper. Cras tortor sem, tempor vitae arcu nec, ultricies blandit ante. Phasellus a sem semper, vulputate risus a, tempor turpis. Praesent vehicula id dui non dapibus. Fusce facilisis enim eget fermentum elementum. Nullam efficitur placerat nulla vel egestas. Ut rutrum placerat risus ut ultrices.\r\n\r\nSed tincidunt commodo risus rutrum pretium. Vivamus risus massa, finibus sed ante a, volutpat blandit mauris. Fusce tempus arcu vitae nisl pharetra, eu lobortis massa consequat. Morbi maximus, odio et luctus hendrerit, lacus augue convallis dolor, vel sagittis odio erat non erat. Morbi efficitur pharetra placerat. Nulla hendrerit elit et nulla gravida, ac vehicula diam porta. Proin tincidunt magna nec feugiat facilisis.\r\n\r\nMorbi et sagittis ex, et pellentesque ipsum. Vestibulum sit amet blandit justo, eu vulputate nunc. Integer vel diam non sapien lacinia molestie ac et eros. Etiam sed leo felis. Phasellus volutpat nulla sit amet orci consectetur, a mattis ipsum viverra. Praesent sit amet finibus sem. Nunc vitae fermentum arcu, sagittis euismod mi. Vestibulum aliquam diam ac leo ultricies auctor. Sed vitae nibh aliquet, ultricies erat non, vestibulum sapien. Praesent quam ligula, scelerisque vitae vestibulum in, sagittis in diam. Sed tincidunt mattis neque, tincidunt placerat dui semper a. Vestibulum pretium euismod velit, quis finibus dolor. Sed quis fermentum risus.','My First Expedition to Nepal','','inherit','closed','closed','','34-revision-v1','','','2020-01-19 04:38:31','2020-01-19 04:38:31','',34,'http://demosite.local/probiotic/34-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (36,1,'2020-01-19 04:43:08','2020-01-19 04:43:08','','Screen Shot 2020-01-18 at 8.42.49 PM','','inherit','open','closed','','screen-shot-2020-01-18-at-8-42-49-pm','','','2020-01-19 04:43:08','2020-01-19 04:43:08','',34,'http://demosite.local/wp-content/uploads/2020/01/Screen-Shot-2020-01-18-at-8.42.49-PM.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (37,1,'2020-01-19 04:43:23','2020-01-19 04:43:23','Praesent a dui vitae est feugiat luctus quis lacinia lacus. Vivamus commodo ex et sapien maximus porttitor. In ut suscipit nulla, eu ornare mauris. Sed nec faucibus elit, nec interdum ipsum. Vestibulum ac accumsan augue. Vestibulum imperdiet ex et eros consectetur iaculis. Nam eget nisi mi. Integer lacinia nulla nunc, non finibus velit ultricies et.\r\n\r\nVestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis eu efficitur orci. Cras ac dolor maximus lorem placerat egestas. Etiam volutpat, dui ac auctor pulvinar, lacus ligula laoreet urna, sit amet commodo elit nulla ac ligula. Ut vitae ante vel turpis pharetra scelerisque. In commodo leo eget porta blandit. Aliquam egestas placerat nisl ornare efficitur. Sed sit amet ex quam. Curabitur tristique ornare malesuada. Phasellus nunc velit, congue ac risus ac, volutpat fermentum metus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Cras blandit neque augue, nec hendrerit sem congue vitae. Morbi in pulvinar nisi, in blandit tellus. Maecenas ipsum nulla, varius id lacus ut, lacinia pretium lectus. Donec mollis neque egestas, faucibus enim ac, pharetra nulla. Fusce risus diam, condimentum eget massa eget, tincidunt aliquet mauris.\r\n\r\n<img class=\"alignnone size-medium wp-image-36 alignleft\" src=\"http://demosite.local/wp-content/uploads/2020/01/Screen-Shot-2020-01-18-at-8.42.49-PM-300x219.png\" alt=\"\" width=\"300\" height=\"219\" />\r\n\r\nDuis elementum facilisis rhoncus. Nam at urna in orci dictum imperdiet placerat ornare leo. Sed iaculis suscipit convallis. Sed volutpat dignissim tempus. Nulla auctor sem id nisl pharetra, eget lobortis ante semper. Cras tortor sem, tempor vitae arcu nec, ultricies blandit ante. Phasellus a sem semper, vulputate risus a, tempor turpis. Praesent vehicula id dui non dapibus. Fusce facilisis enim eget fermentum elementum. Nullam efficitur placerat nulla vel egestas. Ut rutrum placerat risus ut ultrices.\r\n\r\nSed tincidunt commodo risus rutrum pretium. Vivamus risus massa, finibus sed ante a, volutpat blandit mauris. Fusce tempus arcu vitae nisl pharetra, eu lobortis massa consequat. Morbi maximus, odio et luctus hendrerit, lacus augue convallis dolor, vel sagittis odio erat non erat. Morbi efficitur pharetra placerat. Nulla hendrerit elit et nulla gravida, ac vehicula diam porta. Proin tincidunt magna nec feugiat facilisis.\r\n\r\nMorbi et sagittis ex, et pellentesque ipsum. Vestibulum sit amet blandit justo, eu vulputate nunc. Integer vel diam non sapien lacinia molestie ac et eros. Etiam sed leo felis. Phasellus volutpat nulla sit amet orci consectetur, a mattis ipsum viverra. Praesent sit amet finibus sem. Nunc vitae fermentum arcu, sagittis euismod mi. Vestibulum aliquam diam ac leo ultricies auctor. Sed vitae nibh aliquet, ultricies erat non, vestibulum sapien. Praesent quam ligula, scelerisque vitae vestibulum in, sagittis in diam. Sed tincidunt mattis neque, tincidunt placerat dui semper a. Vestibulum pretium euismod velit, quis finibus dolor. Sed quis fermentum risus.','My First Expedition to Nepal','','inherit','closed','closed','','34-revision-v1','','','2020-01-19 04:43:23','2020-01-19 04:43:23','',34,'http://demosite.local/moutaineering/34-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (38,1,'2020-01-19 04:52:14','2020-01-19 04:52:14','','Screen Shot 2020-01-18 at 8.51.57 PM','','inherit','open','closed','','screen-shot-2020-01-18-at-8-51-57-pm','','','2020-01-19 04:52:14','2020-01-19 04:52:14','',34,'http://demosite.local/wp-content/uploads/2020/01/Screen-Shot-2020-01-18-at-8.51.57-PM.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (39,1,'2020-01-19 04:56:25','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2020-01-19 04:56:25','0000-00-00 00:00:00','',0,'http://demosite.local/?p=39',0,'post','',0);
INSERT INTO `wp_posts` VALUES (40,1,'2020-01-19 05:08:36','2020-01-19 05:08:36','<!-- wp:image {\"id\":41,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://demosite.local/wp-content/uploads/2020/01/Screen-Shot-2020-01-18-at-9.00.05-PM.png\" alt=\"\" class=\"wp-image-41\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Quisque lorem nunc, pretium sollicitudin fermentum ac, bibendum in urna. Mauris luctus nisl sed scelerisque mattis. Aenean tristique at tortor id placerat. Nunc ultricies vulputate enim. Sed vestibulum odio vel diam dictum pulvinar. Nulla in est metus. Sed vitae pharetra risus. Mauris non magna purus. Donec sed finibus felis, sed sagittis est. Nullam eu ante quis massa luctus dignissim non a elit. Praesent porta justo leo, eu faucibus augue rutrum ac.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Aliquam id magna sapien. Maecenas eget nisi nec nunc pulvinar tincidunt eget at enim. Quisque finibus eros magna, non faucibus nisl auctor sed. Praesent rutrum volutpat gravida. In odio arcu, tristique sed imperdiet vel, convallis rhoncus lectus. Proin pretium ut ligula ut faucibus. Ut et massa ligula. Ut et felis vehicula, maximus leo quis, venenatis quam. Vivamus vel lacinia nibh. Vestibulum a bibendum lectus. Nunc porta magna in felis semper hendrerit. Sed dui dui, hendrerit nec luctus pellentesque, tincidunt nec leo. Nulla sit amet tincidunt tortor. Pellentesque ultrices auctor diam, quis auctor sapien laoreet vitae.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Aliquam convallis felis in lacus rutrum, in pretium est interdum. Pellentesque sit amet massa ac felis efficitur mattis vel sit amet nulla. Integer pretium id nisi vel pellentesque. Etiam vel luctus arcu, a ultricies enim. Donec ornare lorem elementum tincidunt iaculis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam erat volutpat. Aliquam erat volutpat.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Nam dignissim semper quam ut semper. Vestibulum facilisis, quam in interdum varius, urna sapien rutrum tortor, vitae sagittis odio diam ut nibh. Donec consequat aliquet justo vel tincidunt. Nam vitae erat risus. Pellentesque vehicula purus velit, eget egestas odio maximus et. Ut lobortis nunc arcu, at egestas tortor posuere nec. Etiam laoreet ipsum et condimentum viverra. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur at faucibus sem. Aenean ac molestie sapien.</p>\n<!-- /wp:paragraph -->','Rock Climbing in Moab','','publish','open','open','','rock-climbing-in-moab','','','2020-01-19 05:09:38','2020-01-19 05:09:38','',0,'http://demosite.local/?p=40',0,'post','',0);
INSERT INTO `wp_posts` VALUES (41,1,'2020-01-19 05:00:15','2020-01-19 05:00:15','','Screen-Shot-2020-01-18-at-9.00.05-PM','','inherit','open','closed','','screen-shot-2020-01-18-at-9-00-05-pm','','','2020-01-19 05:00:15','2020-01-19 05:00:15','',40,'http://demosite.local/wp-content/uploads/2020/01/Screen-Shot-2020-01-18-at-9.00.05-PM.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (42,1,'2020-01-19 05:00:22','2020-01-19 05:00:22','<!-- wp:paragraph -->\n<p>Quisque lorem nunc, pretium sollicitudin fermentum ac, bibendum in urna. Mauris luctus nisl sed scelerisque mattis. Aenean tristique at tortor id placerat. Nunc ultricies vulputate enim. Sed vestibulum odio vel diam dictum pulvinar. Nulla in est metus. Sed vitae pharetra risus. Mauris non magna purus. Donec sed finibus felis, sed sagittis est. Nullam eu ante quis massa luctus dignissim non a elit. Praesent porta justo leo, eu faucibus augue rutrum ac.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":41,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://demosite.local/wp-content/uploads/2020/01/Screen-Shot-2020-01-18-at-9.00.05-PM.png\" alt=\"\" class=\"wp-image-41\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Aliquam id magna sapien. Maecenas eget nisi nec nunc pulvinar tincidunt eget at enim. Quisque finibus eros magna, non faucibus nisl auctor sed. Praesent rutrum volutpat gravida. In odio arcu, tristique sed imperdiet vel, convallis rhoncus lectus. Proin pretium ut ligula ut faucibus. Ut et massa ligula. Ut et felis vehicula, maximus leo quis, venenatis quam. Vivamus vel lacinia nibh. Vestibulum a bibendum lectus. Nunc porta magna in felis semper hendrerit. Sed dui dui, hendrerit nec luctus pellentesque, tincidunt nec leo. Nulla sit amet tincidunt tortor. Pellentesque ultrices auctor diam, quis auctor sapien laoreet vitae.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Aliquam convallis felis in lacus rutrum, in pretium est interdum. Pellentesque sit amet massa ac felis efficitur mattis vel sit amet nulla. Integer pretium id nisi vel pellentesque. Etiam vel luctus arcu, a ultricies enim. Donec ornare lorem elementum tincidunt iaculis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam erat volutpat. Aliquam erat volutpat.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Nam dignissim semper quam ut semper. Vestibulum facilisis, quam in interdum varius, urna sapien rutrum tortor, vitae sagittis odio diam ut nibh. Donec consequat aliquet justo vel tincidunt. Nam vitae erat risus. Pellentesque vehicula purus velit, eget egestas odio maximus et. Ut lobortis nunc arcu, at egestas tortor posuere nec. Etiam laoreet ipsum et condimentum viverra. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur at faucibus sem. Aenean ac molestie sapien.</p>\n<!-- /wp:paragraph -->','Rock Climbing in Moab','','inherit','closed','closed','','40-revision-v1','','','2020-01-19 05:00:22','2020-01-19 05:00:22','',40,'http://demosite.local/mountaineering/40-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (43,1,'2020-01-19 05:00:51','2020-01-19 05:00:51','<!-- wp:image {\"id\":41,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://demosite.local/wp-content/uploads/2020/01/Screen-Shot-2020-01-18-at-9.00.05-PM.png\" alt=\"\" class=\"wp-image-41\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Quisque lorem nunc, pretium sollicitudin fermentum ac, bibendum in urna. Mauris luctus nisl sed scelerisque mattis. Aenean tristique at tortor id placerat. Nunc ultricies vulputate enim. Sed vestibulum odio vel diam dictum pulvinar. Nulla in est metus. Sed vitae pharetra risus. Mauris non magna purus. Donec sed finibus felis, sed sagittis est. Nullam eu ante quis massa luctus dignissim non a elit. Praesent porta justo leo, eu faucibus augue rutrum ac.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Aliquam id magna sapien. Maecenas eget nisi nec nunc pulvinar tincidunt eget at enim. Quisque finibus eros magna, non faucibus nisl auctor sed. Praesent rutrum volutpat gravida. In odio arcu, tristique sed imperdiet vel, convallis rhoncus lectus. Proin pretium ut ligula ut faucibus. Ut et massa ligula. Ut et felis vehicula, maximus leo quis, venenatis quam. Vivamus vel lacinia nibh. Vestibulum a bibendum lectus. Nunc porta magna in felis semper hendrerit. Sed dui dui, hendrerit nec luctus pellentesque, tincidunt nec leo. Nulla sit amet tincidunt tortor. Pellentesque ultrices auctor diam, quis auctor sapien laoreet vitae.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Aliquam convallis felis in lacus rutrum, in pretium est interdum. Pellentesque sit amet massa ac felis efficitur mattis vel sit amet nulla. Integer pretium id nisi vel pellentesque. Etiam vel luctus arcu, a ultricies enim. Donec ornare lorem elementum tincidunt iaculis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam erat volutpat. Aliquam erat volutpat.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Nam dignissim semper quam ut semper. Vestibulum facilisis, quam in interdum varius, urna sapien rutrum tortor, vitae sagittis odio diam ut nibh. Donec consequat aliquet justo vel tincidunt. Nam vitae erat risus. Pellentesque vehicula purus velit, eget egestas odio maximus et. Ut lobortis nunc arcu, at egestas tortor posuere nec. Etiam laoreet ipsum et condimentum viverra. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur at faucibus sem. Aenean ac molestie sapien.</p>\n<!-- /wp:paragraph -->','Rock Climbing in Moab','','inherit','closed','closed','','40-revision-v1','','','2020-01-19 05:00:51','2020-01-19 05:00:51','',40,'http://demosite.local/mountaineering/40-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (44,1,'2020-01-19 22:23:15','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2020-01-19 22:23:15','0000-00-00 00:00:00','',0,'http://demosite.local/?p=44',0,'post','',0);
INSERT INTO `wp_posts` VALUES (45,1,'2020-01-19 22:30:11','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2020-01-19 22:30:11','0000-00-00 00:00:00','',0,'http://demosite.local/?p=45',0,'post','',0);
INSERT INTO `wp_posts` VALUES (46,1,'2020-01-19 22:32:23','2020-01-19 22:32:23',' ','','','publish','closed','closed','','46','','','2020-01-19 23:09:50','2020-01-19 23:09:50','',0,'http://demosite.local/?p=46',3,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (47,1,'2020-01-19 22:32:23','2020-01-19 22:32:23',' ','','','publish','closed','closed','','47','','','2020-01-19 23:09:50','2020-01-19 23:09:50','',0,'http://demosite.local/?p=47',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (48,1,'2020-01-19 22:37:15','2020-01-19 22:37:15','{\n    \"astra-settings[footer-sml-section-2]\": {\n        \"value\": \"menu\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-19 22:37:15\"\n    }\n}','','','trash','closed','closed','','064a779e-a9d4-4ecb-a8ca-8d56f2af1d20','','','2020-01-19 22:37:15','2020-01-19 22:37:15','',0,'http://demosite.local/mountaineering/064a779e-a9d4-4ecb-a8ca-8d56f2af1d20/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (49,1,'2020-01-19 22:40:58','2020-01-19 22:40:58','{\n    \"astra-settings[footer-sml-section-2]\": {\n        \"value\": \"widget\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-19 22:40:58\"\n    }\n}','','','trash','closed','closed','','3544caba-4f4a-4ad0-9fac-c1a561d86352','','','2020-01-19 22:40:58','2020-01-19 22:40:58','',0,'http://demosite.local/mountaineering/3544caba-4f4a-4ad0-9fac-c1a561d86352/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (50,1,'2020-01-19 22:42:12','2020-01-19 22:42:12','{\n    \"astra-settings[footer-sml-layout]\": {\n        \"value\": \"footer-sml-layout-2\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-19 22:42:12\"\n    }\n}','','','trash','closed','closed','','ddafd8b1-1dd4-4f50-9a5b-907388f2abb2','','','2020-01-19 22:42:12','2020-01-19 22:42:12','',0,'http://demosite.local/mountaineering/ddafd8b1-1dd4-4f50-9a5b-907388f2abb2/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (51,1,'2020-01-19 22:49:07','2020-01-19 22:49:07','{\n    \"astra-settings[footer-color]\": {\n        \"value\": \"#000000\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-19 22:49:07\"\n    }\n}','','','trash','closed','closed','','ba5c29e1-1e11-47b7-aa56-9e11ac36933f','','','2020-01-19 22:49:07','2020-01-19 22:49:07','',0,'http://demosite.local/mountaineering/ba5c29e1-1e11-47b7-aa56-9e11ac36933f/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (52,1,'2020-01-19 22:49:59','2020-01-19 22:49:59','{\n    \"astra-settings[footer-color]\": {\n        \"value\": \"#6b6b6b\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-19 22:49:59\"\n    }\n}','','','trash','closed','closed','','26f67170-5d23-4701-bc5d-2056b8a79043','','','2020-01-19 22:49:59','2020-01-19 22:49:59','',0,'http://demosite.local/mountaineering/26f67170-5d23-4701-bc5d-2056b8a79043/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (53,1,'2020-01-19 22:52:13','2020-01-19 22:52:13','{\n    \"custom_css[astra]\": {\n        \"value\": \".ast-container {background: white;}\\n.ast-small-footer-wrap {color: black;}\\n.menu-legal-menu-container { color: black; }\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-19 22:52:13\"\n    }\n}','','','trash','closed','closed','','07276ffb-9f20-47dc-b8fd-2464028d92b5','','','2020-01-19 22:52:13','2020-01-19 22:52:13','',0,'http://demosite.local/mountaineering/07276ffb-9f20-47dc-b8fd-2464028d92b5/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (54,1,'2020-01-19 22:52:13','2020-01-19 22:52:13','.ast-container {background: white;}\n.ast-small-footer-wrap {color: black;}\n.menu-legal-menu-container { color: black; }','astra','','inherit','closed','closed','','28-revision-v1','','','2020-01-19 22:52:13','2020-01-19 22:52:13','',28,'http://demosite.local/mountaineering/28-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (55,1,'2020-01-19 22:54:24','2020-01-19 22:54:24','{\n    \"custom_css[astra]\": {\n        \"value\": \".ast-container {background: white;}\\n.ast-small-footer-wrap {color: black;}\\n.site-footer a { color: black; }\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-19 22:54:24\"\n    }\n}','','','trash','closed','closed','','c40a5106-1789-45a8-9069-f86edbeec465','','','2020-01-19 22:54:24','2020-01-19 22:54:24','',0,'http://demosite.local/mountaineering/c40a5106-1789-45a8-9069-f86edbeec465/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (56,1,'2020-01-19 22:54:24','2020-01-19 22:54:24','.ast-container {background: white;}\n.ast-small-footer-wrap {color: black;}\n.site-footer a { color: black; }','astra','','inherit','closed','closed','','28-revision-v1','','','2020-01-19 22:54:24','2020-01-19 22:54:24','',28,'http://demosite.local/mountaineering/28-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (57,1,'2020-01-19 22:55:52','2020-01-19 22:55:52','{\n    \"custom_css[astra]\": {\n        \"value\": \".ast-container {background: white;}\\n.ast-small-footer-wrap {color: black;}\\n.site-footer a { color: black; }\\n.site-footer a:hover { color: blue; }\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-19 22:55:52\"\n    }\n}','','','trash','closed','closed','','e08b4200-1b74-4fb9-b2e5-bbeba0808dd6','','','2020-01-19 22:55:52','2020-01-19 22:55:52','',0,'http://demosite.local/?p=57',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (58,1,'2020-01-19 22:55:52','2020-01-19 22:55:52','.ast-container {background: white;}\n.ast-small-footer-wrap {color: black;}\n.site-footer a { color: black; }\n.site-footer a:hover { color: blue; }','astra','','inherit','closed','closed','','28-revision-v1','','','2020-01-19 22:55:52','2020-01-19 22:55:52','',28,'http://demosite.local/mountaineering/28-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (59,1,'2020-01-19 23:07:57','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2020-01-19 23:07:57','0000-00-00 00:00:00','',0,'http://demosite.local/?p=59',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (60,1,'2020-01-19 23:09:16','2020-01-19 23:09:16',' ','','','publish','closed','closed','','blog','','','2020-01-19 23:09:50','2020-01-19 23:09:50','',0,'http://demosite.local/?p=60',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (61,1,'2020-01-19 23:13:19','2020-01-19 23:13:19','This is an introduction to mountaineering.','','','publish','closed','closed','','61','','','2020-01-19 23:13:19','2020-01-19 23:13:19','',0,'http://demosite.local/?p=61',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (62,1,'2020-01-19 23:13:19','2020-01-19 23:13:19','This is an introduction to rock climbing.','','','publish','closed','closed','','62','','','2020-01-19 23:13:19','2020-01-19 23:13:19','',0,'http://demosite.local/?p=62',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (63,1,'2020-01-19 23:19:29','2020-01-19 23:19:29','&nbsp;\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus nec mi massa. Nulla facilisi. Ut sagittis sapien urna, in sagittis lorem rutrum non. Nulla dictum molestie accumsan. Nunc porta, nisi sed placerat tempor, turpis diam condimentum libero, in tristique ex tortor ac tortor. Sed gravida, lacus ut efficitur imperdiet, arcu lectus elementum velit, nec pretium mauris tortor venenatis erat. Sed fermentum, nisl ac luctus gravida, leo urna posuere mauris, vitae vehicula nisl dui iaculis neque. Donec suscipit consequat libero nec posuere. Fusce id velit auctor, vestibulum magna sit amet, vestibulum turpis.\r\n\r\n<img class=\"alignnone size-medium wp-image-65 alignleft\" src=\"http://demosite.local/wp-content/uploads/2020/01/Screen-Shot-2020-01-19-at-3.17.17-PM-300x266.png\" alt=\"\" width=\"300\" height=\"266\" />\r\n\r\nNunc non cursus magna. Quisque tempus ligula non dui pellentesque, vel gravida odio pellentesque. Nullam sodales feugiat erat, id accumsan sem tristique et. In eget hendrerit justo. Nullam viverra, massa eget gravida sagittis, nisi dui pretium est, id cursus tellus erat in eros. Sed eget augue vitae urna dignissim venenatis quis a erat. Morbi imperdiet nunc nec lacus tempus, vitae mattis nulla aliquet. Phasellus eu orci sit amet augue laoreet eleifend. Praesent scelerisque, felis vel sollicitudin interdum, magna metus varius augue, sed posuere eros erat nec arcu. Proin efficitur varius lorem sit amet ornare. Integer sit amet pulvinar risus, nec dignissim libero. Integer efficitur neque magna, vel ornare metus placerat non. Phasellus ac efficitur tortor. Nunc sit amet pharetra purus.\r\n\r\nPellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Cras nisi dolor, eleifend vel dapibus ac, tincidunt at orci. Etiam consequat, velit a efficitur ultrices, urna velit vestibulum massa, vulputate mattis enim mi a risus. Curabitur sed ultricies leo, sed tincidunt tortor. Donec venenatis tellus tellus, ut facilisis nibh mollis eget. Duis metus dolor, pretium vitae consectetur vel, venenatis non sem. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;\r\n\r\n<img class=\"alignnone size-medium wp-image-66 alignright\" src=\"http://demosite.local/wp-content/uploads/2020/01/Screen-Shot-2020-01-19-at-3.17.29-PM-300x169.png\" alt=\"\" width=\"300\" height=\"169\" />\r\n\r\nPraesent posuere erat sed dolor aliquam, id malesuada lacus consequat. In quis rutrum ipsum, et iaculis metus. Donec consequat volutpat consectetur. Nunc libero ligula, luctus in ultrices eu, egestas nec dolor. Duis et venenatis sapien. Donec sed interdum est. Phasellus at pellentesque sem, non aliquam nisl. Maecenas maximus ex eu maximus semper. Proin pharetra placerat nisl, sed placerat erat sagittis sed. Ut tincidunt vel justo eget interdum. In porta turpis sapien, quis facilisis libero elementum tincidunt. Nullam massa nulla, fermentum ut aliquet ac, fermentum eu elit. Quisque vitae felis ligula.\r\n\r\nProin in semper sem, eu semper sem. Cras sagittis ultrices lobortis. Integer non iaculis tortor. Ut vulputate est at tortor lacinia, maximus commodo augue malesuada. Etiam ornare eu risus nec semper. Phasellus ultricies erat ex, id efficitur augue dignissim vitae. Duis eu ex consectetur, luctus dui dignissim, ornare purus. Quisque sodales nisl pellentesque nunc tempus, id efficitur dolor ultrices. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis quam nulla, porta at dolor non, tempor tempor magna. Nullam metus ante, tempus sit amet imperdiet ac, mattis molestie diam. Mauris semper elit tincidunt, aliquam nunc non, tempor sem. Mauris elementum, purus vestibulum auctor rutrum, massa nunc rhoncus tortor, iaculis dignissim eros massa id ipsum. Cras vestibulum nisl quis urna ullamcorper, ut blandit augue dapibus. Donec et enim in lectus ornare suscipit vitae in elit. Nam in nisl ac mauris vehicula placerat.','Is Climate Change Real?','','publish','open','open','','is-climate-change-real','','','2020-01-19 23:19:29','2020-01-19 23:19:29','',0,'http://demosite.local/?p=63',0,'post','',0);
INSERT INTO `wp_posts` VALUES (64,1,'2020-01-19 23:17:38','2020-01-19 23:17:38','&nbsp;\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus nec mi massa. Nulla facilisi. Ut sagittis sapien urna, in sagittis lorem rutrum non. Nulla dictum molestie accumsan. Nunc porta, nisi sed placerat tempor, turpis diam condimentum libero, in tristique ex tortor ac tortor. Sed gravida, lacus ut efficitur imperdiet, arcu lectus elementum velit, nec pretium mauris tortor venenatis erat. Sed fermentum, nisl ac luctus gravida, leo urna posuere mauris, vitae vehicula nisl dui iaculis neque. Donec suscipit consequat libero nec posuere. Fusce id velit auctor, vestibulum magna sit amet, vestibulum turpis.\r\n\r\n&nbsp;\r\n\r\nNunc non cursus magna. Quisque tempus ligula non dui pellentesque, vel gravida odio pellentesque. Nullam sodales feugiat erat, id accumsan sem tristique et. In eget hendrerit justo. Nullam viverra, massa eget gravida sagittis, nisi dui pretium est, id cursus tellus erat in eros. Sed eget augue vitae urna dignissim venenatis quis a erat. Morbi imperdiet nunc nec lacus tempus, vitae mattis nulla aliquet. Phasellus eu orci sit amet augue laoreet eleifend. Praesent scelerisque, felis vel sollicitudin interdum, magna metus varius augue, sed posuere eros erat nec arcu. Proin efficitur varius lorem sit amet ornare. Integer sit amet pulvinar risus, nec dignissim libero. Integer efficitur neque magna, vel ornare metus placerat non. Phasellus ac efficitur tortor. Nunc sit amet pharetra purus.\r\n\r\nPellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Cras nisi dolor, eleifend vel dapibus ac, tincidunt at orci. Etiam consequat, velit a efficitur ultrices, urna velit vestibulum massa, vulputate mattis enim mi a risus. Curabitur sed ultricies leo, sed tincidunt tortor. Donec venenatis tellus tellus, ut facilisis nibh mollis eget. Duis metus dolor, pretium vitae consectetur vel, venenatis non sem. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;\r\n\r\nPraesent posuere erat sed dolor aliquam, id malesuada lacus consequat. In quis rutrum ipsum, et iaculis metus. Donec consequat volutpat consectetur. Nunc libero ligula, luctus in ultrices eu, egestas nec dolor. Duis et venenatis sapien. Donec sed interdum est. Phasellus at pellentesque sem, non aliquam nisl. Maecenas maximus ex eu maximus semper. Proin pharetra placerat nisl, sed placerat erat sagittis sed. Ut tincidunt vel justo eget interdum. In porta turpis sapien, quis facilisis libero elementum tincidunt. Nullam massa nulla, fermentum ut aliquet ac, fermentum eu elit. Quisque vitae felis ligula.\r\n\r\nProin in semper sem, eu semper sem. Cras sagittis ultrices lobortis. Integer non iaculis tortor. Ut vulputate est at tortor lacinia, maximus commodo augue malesuada. Etiam ornare eu risus nec semper. Phasellus ultricies erat ex, id efficitur augue dignissim vitae. Duis eu ex consectetur, luctus dui dignissim, ornare purus. Quisque sodales nisl pellentesque nunc tempus, id efficitur dolor ultrices. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis quam nulla, porta at dolor non, tempor tempor magna. Nullam metus ante, tempus sit amet imperdiet ac, mattis molestie diam. Mauris semper elit tincidunt, aliquam nunc non, tempor sem. Mauris elementum, purus vestibulum auctor rutrum, massa nunc rhoncus tortor, iaculis dignissim eros massa id ipsum. Cras vestibulum nisl quis urna ullamcorper, ut blandit augue dapibus. Donec et enim in lectus ornare suscipit vitae in elit. Nam in nisl ac mauris vehicula placerat.','Is Climate Change Real?','','inherit','closed','closed','','63-revision-v1','','','2020-01-19 23:17:38','2020-01-19 23:17:38','',63,'http://demosite.local/mountaineering/63-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (65,1,'2020-01-19 23:17:55','2020-01-19 23:17:55','','Screen Shot 2020-01-19 at 3.17.17 PM','','inherit','open','closed','','screen-shot-2020-01-19-at-3-17-17-pm','','','2020-01-19 23:18:14','2020-01-19 23:18:14','',63,'http://demosite.local/wp-content/uploads/2020/01/Screen-Shot-2020-01-19-at-3.17.17-PM.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (66,1,'2020-01-19 23:17:55','2020-01-19 23:17:55','','Screen Shot 2020-01-19 at 3.17.29 PM','','inherit','open','closed','','screen-shot-2020-01-19-at-3-17-29-pm','','','2020-01-19 23:18:32','2020-01-19 23:18:32','',63,'http://demosite.local/wp-content/uploads/2020/01/Screen-Shot-2020-01-19-at-3.17.29-PM.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (67,1,'2020-01-19 23:18:40','2020-01-19 23:18:40','&nbsp;\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus nec mi massa. Nulla facilisi. Ut sagittis sapien urna, in sagittis lorem rutrum non. Nulla dictum molestie accumsan. Nunc porta, nisi sed placerat tempor, turpis diam condimentum libero, in tristique ex tortor ac tortor. Sed gravida, lacus ut efficitur imperdiet, arcu lectus elementum velit, nec pretium mauris tortor venenatis erat. Sed fermentum, nisl ac luctus gravida, leo urna posuere mauris, vitae vehicula nisl dui iaculis neque. Donec suscipit consequat libero nec posuere. Fusce id velit auctor, vestibulum magna sit amet, vestibulum turpis.\r\n\r\n<img class=\"alignnone size-medium wp-image-65 alignleft\" src=\"http://demosite.local/wp-content/uploads/2020/01/Screen-Shot-2020-01-19-at-3.17.17-PM-300x266.png\" alt=\"\" width=\"300\" height=\"266\" />\r\n\r\nNunc non cursus magna. Quisque tempus ligula non dui pellentesque, vel gravida odio pellentesque. Nullam sodales feugiat erat, id accumsan sem tristique et. In eget hendrerit justo. Nullam viverra, massa eget gravida sagittis, nisi dui pretium est, id cursus tellus erat in eros. Sed eget augue vitae urna dignissim venenatis quis a erat. Morbi imperdiet nunc nec lacus tempus, vitae mattis nulla aliquet. Phasellus eu orci sit amet augue laoreet eleifend. Praesent scelerisque, felis vel sollicitudin interdum, magna metus varius augue, sed posuere eros erat nec arcu. Proin efficitur varius lorem sit amet ornare. Integer sit amet pulvinar risus, nec dignissim libero. Integer efficitur neque magna, vel ornare metus placerat non. Phasellus ac efficitur tortor. Nunc sit amet pharetra purus.\r\n\r\nPellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Cras nisi dolor, eleifend vel dapibus ac, tincidunt at orci. Etiam consequat, velit a efficitur ultrices, urna velit vestibulum massa, vulputate mattis enim mi a risus. Curabitur sed ultricies leo, sed tincidunt tortor. Donec venenatis tellus tellus, ut facilisis nibh mollis eget. Duis metus dolor, pretium vitae consectetur vel, venenatis non sem. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;\r\n\r\n<img class=\"alignnone size-medium wp-image-66 alignright\" src=\"http://demosite.local/wp-content/uploads/2020/01/Screen-Shot-2020-01-19-at-3.17.29-PM-300x169.png\" alt=\"\" width=\"300\" height=\"169\" />\r\n\r\nPraesent posuere erat sed dolor aliquam, id malesuada lacus consequat. In quis rutrum ipsum, et iaculis metus. Donec consequat volutpat consectetur. Nunc libero ligula, luctus in ultrices eu, egestas nec dolor. Duis et venenatis sapien. Donec sed interdum est. Phasellus at pellentesque sem, non aliquam nisl. Maecenas maximus ex eu maximus semper. Proin pharetra placerat nisl, sed placerat erat sagittis sed. Ut tincidunt vel justo eget interdum. In porta turpis sapien, quis facilisis libero elementum tincidunt. Nullam massa nulla, fermentum ut aliquet ac, fermentum eu elit. Quisque vitae felis ligula.\r\n\r\nProin in semper sem, eu semper sem. Cras sagittis ultrices lobortis. Integer non iaculis tortor. Ut vulputate est at tortor lacinia, maximus commodo augue malesuada. Etiam ornare eu risus nec semper. Phasellus ultricies erat ex, id efficitur augue dignissim vitae. Duis eu ex consectetur, luctus dui dignissim, ornare purus. Quisque sodales nisl pellentesque nunc tempus, id efficitur dolor ultrices. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis quam nulla, porta at dolor non, tempor tempor magna. Nullam metus ante, tempus sit amet imperdiet ac, mattis molestie diam. Mauris semper elit tincidunt, aliquam nunc non, tempor sem. Mauris elementum, purus vestibulum auctor rutrum, massa nunc rhoncus tortor, iaculis dignissim eros massa id ipsum. Cras vestibulum nisl quis urna ullamcorper, ut blandit augue dapibus. Donec et enim in lectus ornare suscipit vitae in elit. Nam in nisl ac mauris vehicula placerat.','Is Climate Change Real?','','inherit','closed','closed','','63-revision-v1','','','2020-01-19 23:18:40','2020-01-19 23:18:40','',63,'http://demosite.local/mountaineering/63-revision-v1/',0,'revision','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0);
INSERT INTO `wp_term_relationships` VALUES (23,2,0);
INSERT INTO `wp_term_relationships` VALUES (24,2,0);
INSERT INTO `wp_term_relationships` VALUES (25,2,0);
INSERT INTO `wp_term_relationships` VALUES (34,1,0);
INSERT INTO `wp_term_relationships` VALUES (40,3,0);
INSERT INTO `wp_term_relationships` VALUES (46,4,0);
INSERT INTO `wp_term_relationships` VALUES (47,4,0);
INSERT INTO `wp_term_relationships` VALUES (60,4,0);
INSERT INTO `wp_term_relationships` VALUES (61,6,0);
INSERT INTO `wp_term_relationships` VALUES (62,6,0);
INSERT INTO `wp_term_relationships` VALUES (63,5,0);
INSERT INTO `wp_term_relationships` VALUES (63,7,0);
INSERT INTO `wp_term_relationships` VALUES (63,8,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','This is an introduction to mountaineering.',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (2,2,'nav_menu','',0,3);
INSERT INTO `wp_term_taxonomy` VALUES (3,3,'category','This is an introduction to rock climbing.',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (4,4,'nav_menu','',0,3);
INSERT INTO `wp_term_taxonomy` VALUES (5,5,'category','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (6,6,'nav_menu','',0,2);
INSERT INTO `wp_term_taxonomy` VALUES (7,7,'post_tag','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (8,8,'post_tag','',0,1);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Mountaineering','mountaineering',0);
INSERT INTO `wp_terms` VALUES (2,'Legal Menu','legal-menu',0);
INSERT INTO `wp_terms` VALUES (3,'Rock Climbing','rockclimbing',0);
INSERT INTO `wp_terms` VALUES (4,'Top Menu','top-menu',0);
INSERT INTO `wp_terms` VALUES (5,'Blog','blog',0);
INSERT INTO `wp_terms` VALUES (6,'Categories','categories',0);
INSERT INTO `wp_terms` VALUES (7,'climatechange','climatechange',0);
INSERT INTO `wp_terms` VALUES (8,'environment','environment',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','Robert');
INSERT INTO `wp_usermeta` VALUES (2,1,'first_name','');
INSERT INTO `wp_usermeta` VALUES (3,1,'last_name','');
INSERT INTO `wp_usermeta` VALUES (4,1,'description','');
INSERT INTO `wp_usermeta` VALUES (5,1,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (6,1,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (7,1,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (8,1,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (9,1,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (10,1,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (11,1,'locale','');
INSERT INTO `wp_usermeta` VALUES (12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (13,1,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (14,1,'dismissed_wp_pointers','');
INSERT INTO `wp_usermeta` VALUES (15,1,'show_welcome_panel','0');
INSERT INTO `wp_usermeta` VALUES (16,1,'session_tokens','a:2:{s:64:\"74040e647fa25d16574b320c206882c12c2e83cae9637c2c5758f7f16da7aeec\";a:4:{s:10:\"expiration\";i:1579485718;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36\";s:5:\"login\";i:1579312918;}s:64:\"a24bdd2a27f1e96d1a207af3012c9945ddb682c1611985e0b5fc1ed32cc8fb54\";a:4:{s:10:\"expiration\";i:1579578188;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36\";s:5:\"login\";i:1579405388;}}');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_dashboard_quick_press_last_post_id','4');
INSERT INTO `wp_usermeta` VALUES (18,1,'managenav-menuscolumnshidden','a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}');
INSERT INTO `wp_usermeta` VALUES (19,1,'metaboxhidden_nav-menus','a:2:{i:0;s:12:\"add-post_tag\";i:1;s:15:\"add-post_format\";}');
INSERT INTO `wp_usermeta` VALUES (20,1,'nav_menu_recently_edited','6');
INSERT INTO `wp_usermeta` VALUES (21,1,'wp_user-settings','editor=tinymce&hidetb=1&libraryContent=browse');
INSERT INTO `wp_usermeta` VALUES (22,1,'wp_user-settings-time','1579409255');
INSERT INTO `wp_usermeta` VALUES (23,1,'_yoast_wpseo_profile_updated','1579409282');
INSERT INTO `wp_usermeta` VALUES (24,1,'wpseo_title','');
INSERT INTO `wp_usermeta` VALUES (25,1,'wpseo_metadesc','');
INSERT INTO `wp_usermeta` VALUES (26,1,'wpseo_noindex_author','');
INSERT INTO `wp_usermeta` VALUES (27,1,'wpseo_content_analysis_disable','');
INSERT INTO `wp_usermeta` VALUES (28,1,'wpseo_keyword_analysis_disable','');
INSERT INTO `wp_usermeta` VALUES (29,1,'facebook','');
INSERT INTO `wp_usermeta` VALUES (30,1,'instagram','');
INSERT INTO `wp_usermeta` VALUES (31,1,'linkedin','');
INSERT INTO `wp_usermeta` VALUES (32,1,'myspace','');
INSERT INTO `wp_usermeta` VALUES (33,1,'pinterest','');
INSERT INTO `wp_usermeta` VALUES (34,1,'soundcloud','');
INSERT INTO `wp_usermeta` VALUES (35,1,'tumblr','');
INSERT INTO `wp_usermeta` VALUES (36,1,'twitter','');
INSERT INTO `wp_usermeta` VALUES (37,1,'youtube','');
INSERT INTO `wp_usermeta` VALUES (38,1,'wikipedia','');
INSERT INTO `wp_usermeta` VALUES (39,1,'last_login_time','2020-01-19 22:16:26');
INSERT INTO `wp_usermeta` VALUES (40,1,'signup_ip','127.0.0.1');
INSERT INTO `wp_usermeta` VALUES (41,1,'community-events-location','a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'flaugher','$P$BeRnE0EZYLGM8ys8UYD9r42.srK4sk0','flaugher','flaugher@gmail.com','','2020-01-18 01:51:57','',0,'Robert');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_yoast_seo_links`
--

DROP TABLE IF EXISTS `wp_yoast_seo_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_yoast_seo_links` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL,
  `target_post_id` bigint(20) unsigned NOT NULL,
  `type` varchar(8) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `link_direction` (`post_id`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_yoast_seo_links`
--

LOCK TABLES `wp_yoast_seo_links` WRITE;
/*!40000 ALTER TABLE `wp_yoast_seo_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_yoast_seo_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_yoast_seo_meta`
--

DROP TABLE IF EXISTS `wp_yoast_seo_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_yoast_seo_meta` (
  `object_id` bigint(20) unsigned NOT NULL,
  `internal_link_count` int(10) unsigned DEFAULT NULL,
  `incoming_link_count` int(10) unsigned DEFAULT NULL,
  UNIQUE KEY `object_id` (`object_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_yoast_seo_meta`
--

LOCK TABLES `wp_yoast_seo_meta` WRITE;
/*!40000 ALTER TABLE `wp_yoast_seo_meta` DISABLE KEYS */;
INSERT INTO `wp_yoast_seo_meta` VALUES (21,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (22,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (34,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (40,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (63,0,0);
/*!40000 ALTER TABLE `wp_yoast_seo_meta` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-01-20 10:19:48
