-- MySQL dump 10.11
--
-- Host: localhost    Database: wordpress
-- ------------------------------------------------------
-- Server version	5.0.83-community

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
-- Table structure for table `@@DB_MAIN_PREFIX@@wp_commentmeta`
--

DROP TABLE IF EXISTS `@@DB_MAIN_PREFIX@@wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `@@DB_MAIN_PREFIX@@wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL auto_increment,
  `comment_id` bigint(20) unsigned NOT NULL default '0',
  `meta_key` varchar(255) default NULL,
  `meta_value` longtext,
  PRIMARY KEY  (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `@@DB_MAIN_PREFIX@@wp_commentmeta`
--

LOCK TABLES `@@DB_MAIN_PREFIX@@wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `@@DB_MAIN_PREFIX@@wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `@@DB_MAIN_PREFIX@@wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `@@DB_MAIN_PREFIX@@wp_comments`
--

DROP TABLE IF EXISTS `@@DB_MAIN_PREFIX@@wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `@@DB_MAIN_PREFIX@@wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL auto_increment,
  `comment_post_ID` bigint(20) unsigned NOT NULL default '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL default '',
  `comment_author_url` varchar(200) NOT NULL default '',
  `comment_author_IP` varchar(100) NOT NULL default '',
  `comment_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL default '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL default '0',
  `comment_approved` varchar(20) NOT NULL default '1',
  `comment_agent` varchar(255) NOT NULL default '',
  `comment_type` varchar(20) NOT NULL default '',
  `comment_parent` bigint(20) unsigned NOT NULL default '0',
  `user_id` bigint(20) unsigned NOT NULL default '0',
  PRIMARY KEY  (`comment_ID`),
  KEY `comment_approved` (`comment_approved`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `@@DB_MAIN_PREFIX@@wp_comments`
--

LOCK TABLES `@@DB_MAIN_PREFIX@@wp_comments` WRITE;
/*!40000 ALTER TABLE `@@DB_MAIN_PREFIX@@wp_comments` DISABLE KEYS */;
INSERT INTO `@@DB_MAIN_PREFIX@@wp_comments` VALUES (1,1,'Mr WordPress','','http://wordpress.org/','',now(),now(),'Hi, this is a comment.<br />To delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.',0,'1','','',0,0);
/*!40000 ALTER TABLE `@@DB_MAIN_PREFIX@@wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `@@DB_MAIN_PREFIX@@wp_links`
--

DROP TABLE IF EXISTS `@@DB_MAIN_PREFIX@@wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `@@DB_MAIN_PREFIX@@wp_links` (
  `link_id` bigint(20) unsigned NOT NULL auto_increment,
  `link_url` varchar(255) NOT NULL default '',
  `link_name` varchar(255) NOT NULL default '',
  `link_image` varchar(255) NOT NULL default '',
  `link_target` varchar(25) NOT NULL default '',
  `link_description` varchar(255) NOT NULL default '',
  `link_visible` varchar(20) NOT NULL default 'Y',
  `link_owner` bigint(20) unsigned NOT NULL default '1',
  `link_rating` int(11) NOT NULL default '0',
  `link_updated` datetime NOT NULL default '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL default '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `@@DB_MAIN_PREFIX@@wp_links`
--

LOCK TABLES `@@DB_MAIN_PREFIX@@wp_links` WRITE;
/*!40000 ALTER TABLE `@@DB_MAIN_PREFIX@@wp_links` DISABLE KEYS */;
INSERT INTO `@@DB_MAIN_PREFIX@@wp_links` VALUES (1,'http://codex.wordpress.org/','Documentation','','','','Y',1,0,'0000-00-00 00:00:00','','',''),
(2,'http://wordpress.org/news/','WordPress Blog','','','','Y',1,0,'0000-00-00 00:00:00','','','http://wordpress.org/news/feed/'),
(3,'http://wordpress.org/extend/ideas/','Suggest Ideas','','','','Y',1,0,'0000-00-00 00:00:00','','',''),
(4,'http://wordpress.org/support/','Support Forum','','','','Y',1,0,'0000-00-00 00:00:00','','',''),
(5,'http://wordpress.org/extend/plugins/','Plugins','','','','Y',1,0,'0000-00-00 00:00:00','','',''),
(6,'http://wordpress.org/extend/themes/','Themes','','','','Y',1,0,'0000-00-00 00:00:00','','',''),
(7,'http://planet.wordpress.org/','WordPress Planet','','','','Y',1,0,'0000-00-00 00:00:00','','','');
/*!40000 ALTER TABLE `@@DB_MAIN_PREFIX@@wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `@@DB_MAIN_PREFIX@@wp_options`
--

DROP TABLE IF EXISTS `@@DB_MAIN_PREFIX@@wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `@@DB_MAIN_PREFIX@@wp_options` (
  `option_id` bigint(20) unsigned NOT NULL auto_increment,
  `blog_id` int(11) NOT NULL default '0',
  `option_name` varchar(64) NOT NULL default '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL default 'yes',
  PRIMARY KEY  (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=MyISAM AUTO_INCREMENT=107 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `@@DB_MAIN_PREFIX@@wp_options`
--

LOCK TABLES `@@DB_MAIN_PREFIX@@wp_options` WRITE;
/*!40000 ALTER TABLE `@@DB_MAIN_PREFIX@@wp_options` DISABLE KEYS */;
INSERT INTO `@@DB_MAIN_PREFIX@@wp_options` VALUES (1,0,'_site_transient_timeout_theme_roots','1326382284','yes'),
(2,0,'_site_transient_theme_roots','a:4:{s:7:\"classic\";s:7:\"/themes\";s:7:\"default\";s:7:\"/themes\";s:12:\"twentyeleven\";s:7:\"/themes\";s:9:\"twentyten\";s:7:\"/themes\";}','yes'),
(3,0,'siteurl','@@ROOT_URL@@','yes'),
(4,0,'blogname','@@TITLE@@','yes'),
(5,0,'blogdescription','Just another WordPress site','yes'),
(6,0,'users_can_register','0','yes'),
(7,0,'admin_email','@@ADMIN_EMAIL@@','yes'),
(8,0,'start_of_week','1','yes'),
(9,0,'use_balanceTags','0','yes'),
(10,0,'use_smilies','1','yes'),
(11,0,'require_name_email','1','yes'),
(12,0,'comments_notify','1','yes'),
(13,0,'posts_per_rss','10','yes'),
(14,0,'rss_use_excerpt','0','yes'),
(15,0,'mailserver_url','mail.example.com','yes'),
(16,0,'mailserver_login','login@example.com','yes'),
(17,0,'mailserver_pass','password','yes'),
(18,0,'mailserver_port','110','yes'),
(19,0,'default_category','1','yes'),
(20,0,'default_comment_status','open','yes'),
(21,0,'default_ping_status','open','yes'),
(22,0,'default_pingback_flag','0','yes'),
(23,0,'default_post_edit_rows','20','yes'),
(24,0,'posts_per_page','10','yes'),
(25,0,'date_format','F j, Y','yes'),
(26,0,'time_format','g:i a','yes'),
(27,0,'links_updated_date_format','F j, Y g:i a','yes'),
(28,0,'links_recently_updated_prepend','<em>','yes'),
(29,0,'links_recently_updated_append','</em>','yes'),
(30,0,'links_recently_updated_time','120','yes'),
(31,0,'comment_moderation','0','yes'),
(32,0,'moderation_notify','1','yes'),
(33,0,'permalink_structure','','yes'),
(34,0,'gzipcompression','0','yes'),
(35,0,'hack_file','0','yes'),
(36,0,'blog_charset','UTF-8','yes'),
(37,0,'moderation_keys','','no'),
(38,0,'active_plugins','a:0:{}','yes'),
(39,0,'home','@@ROOT_URL@@','yes'),
(40,0,'category_base','','yes'),
(41,0,'ping_sites','http://rpc.pingomatic.com/','yes'),
(42,0,'advanced_edit','0','yes'),
(43,0,'comment_max_links','2','yes'),
(44,0,'gmt_offset','0','yes'),
(45,0,'default_email_category','1','yes'),
(46,0,'recently_edited','','no'),
(47,0,'template','twentyeleven','yes'),
(48,0,'stylesheet','twentyeleven','yes'),
(49,0,'comment_whitelist','1','yes'),
(50,0,'blacklist_keys','','no'),
(51,0,'comment_registration','0','yes'),
(52,0,'rss_language','en','yes'),
(53,0,'html_type','text/html','yes'),
(54,0,'use_trackback','0','yes'),
(55,0,'default_role','subscriber','yes'),
(56,0,'db_version','19470','yes'),
(57,0,'uploads_use_yearmonth_folders','1','yes'),
(58,0,'upload_path','','yes'),
(59,0,'blog_public','1','yes'),
(60,0,'default_link_category','2','yes'),
(61,0,'show_on_front','posts','yes'),
(62,0,'tag_base','','yes'),
(63,0,'show_avatars','1','yes'),
(64,0,'avatar_rating','G','yes'),
(65,0,'upload_url_path','','yes'),
(66,0,'thumbnail_size_w','150','yes'),
(67,0,'thumbnail_size_h','150','yes'),
(68,0,'thumbnail_crop','1','yes'),
(69,0,'medium_size_w','300','yes'),
(70,0,'medium_size_h','300','yes'),
(71,0,'avatar_default','mystery','yes'),
(72,0,'enable_app','0','yes'),
(73,0,'enable_xmlrpc','0','yes'),
(74,0,'large_size_w','1024','yes'),
(75,0,'large_size_h','1024','yes'),
(76,0,'image_default_link_type','file','yes'),
(77,0,'image_default_size','','yes'),
(78,0,'image_default_align','','yes'),
(79,0,'close_comments_for_old_posts','0','yes'),
(80,0,'close_comments_days_old','14','yes'),
(81,0,'thread_comments','1','yes'),
(82,0,'thread_comments_depth','5','yes'),
(83,0,'page_comments','0','yes'),
(84,0,'comments_per_page','50','yes'),
(85,0,'default_comments_page','newest','yes'),
(86,0,'comment_order','asc','yes'),
(87,0,'sticky_posts','a:0:{}','yes'),
(88,0,'widget_categories','a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes'),
(89,0,'widget_text','a:0:{}','yes'),
(90,0,'widget_rss','a:0:{}','yes'),
(91,0,'timezone_string','','yes'),
(92,0,'embed_autourls','1','yes'),
(93,0,'embed_size_w','','yes'),
(94,0,'embed_size_h','600','yes'),
(95,0,'page_for_posts','0','yes'),
(96,0,'page_on_front','0','yes'),
(97,0,'default_post_format','0','yes'),
(98,0,'initial_db_version','19470','yes'),
(99,0,'@@DB_MAIN_PREFIX@@wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:62:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:9:\"add_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes'),
(100,0,'widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes'),
(101,0,'widget_recent-posts','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes'),
(102,0,'widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes'),
(103,0,'widget_archives','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes'),
(104,0,'widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes'),
(105,0,'sidebars_widgets','a:7:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}s:9:\"sidebar-4\";a:0:{}s:9:\"sidebar-5\";a:0:{}s:13:\"array_version\";i:3;}','yes'),
(106,0,'cron','a:2:{i:1326375092;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}s:7:\"version\";i:2;}','yes');
/*!40000 ALTER TABLE `@@DB_MAIN_PREFIX@@wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `@@DB_MAIN_PREFIX@@wp_postmeta`
--

DROP TABLE IF EXISTS `@@DB_MAIN_PREFIX@@wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `@@DB_MAIN_PREFIX@@wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL auto_increment,
  `post_id` bigint(20) unsigned NOT NULL default '0',
  `meta_key` varchar(255) default NULL,
  `meta_value` longtext,
  PRIMARY KEY  (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `@@DB_MAIN_PREFIX@@wp_postmeta`
--

LOCK TABLES `@@DB_MAIN_PREFIX@@wp_postmeta` WRITE;
/*!40000 ALTER TABLE `@@DB_MAIN_PREFIX@@wp_postmeta` DISABLE KEYS */;
INSERT INTO `@@DB_MAIN_PREFIX@@wp_postmeta` VALUES (1,2,'_wp_page_template','default');
/*!40000 ALTER TABLE `@@DB_MAIN_PREFIX@@wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `@@DB_MAIN_PREFIX@@wp_posts`
--

DROP TABLE IF EXISTS `@@DB_MAIN_PREFIX@@wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `@@DB_MAIN_PREFIX@@wp_posts` (
  `ID` bigint(20) unsigned NOT NULL auto_increment,
  `post_author` bigint(20) unsigned NOT NULL default '0',
  `post_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL default '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL default 'publish',
  `comment_status` varchar(20) NOT NULL default 'open',
  `ping_status` varchar(20) NOT NULL default 'open',
  `post_password` varchar(20) NOT NULL default '',
  `post_name` varchar(200) NOT NULL default '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL default '0000-00-00 00:00:00',
  `post_content_filtered` text NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL default '0',
  `guid` varchar(255) NOT NULL default '',
  `menu_order` int(11) NOT NULL default '0',
  `post_type` varchar(20) NOT NULL default 'post',
  `post_mime_type` varchar(100) NOT NULL default '',
  `comment_count` bigint(20) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `post_name` (`post_name`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `@@DB_MAIN_PREFIX@@wp_posts`
--

LOCK TABLES `@@DB_MAIN_PREFIX@@wp_posts` WRITE;
/*!40000 ALTER TABLE `@@DB_MAIN_PREFIX@@wp_posts` DISABLE KEYS */;
INSERT INTO `@@DB_MAIN_PREFIX@@wp_posts` VALUES (1,1,now(),now(),'Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!','Hello world!','','publish','open','open','','hello-world','','',now(),now(),'',0,'@@ROOT_URL@@/?p=1',0,'post','',1),
(2,1,now(),now(),'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my blog. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickies to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"@@ROOT_URL@@/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!','Sample Page','','publish','open','open','','sample-page','','',now(),now(),'',0,'@@ROOT_URL@@/?page_id=2',0,'page','',0);
/*!40000 ALTER TABLE `@@DB_MAIN_PREFIX@@wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `@@DB_MAIN_PREFIX@@wp_term_relationships`
--

DROP TABLE IF EXISTS `@@DB_MAIN_PREFIX@@wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `@@DB_MAIN_PREFIX@@wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL default '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL default '0',
  `term_order` int(11) NOT NULL default '0',
  PRIMARY KEY  (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `@@DB_MAIN_PREFIX@@wp_term_relationships`
--

LOCK TABLES `@@DB_MAIN_PREFIX@@wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `@@DB_MAIN_PREFIX@@wp_term_relationships` DISABLE KEYS */;
INSERT INTO `@@DB_MAIN_PREFIX@@wp_term_relationships` VALUES (1,2,0),
(2,2,0),
(3,2,0),
(4,2,0),
(5,2,0),
(6,2,0),
(7,2,0),
(1,1,0);
/*!40000 ALTER TABLE `@@DB_MAIN_PREFIX@@wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `@@DB_MAIN_PREFIX@@wp_term_taxonomy`
--

DROP TABLE IF EXISTS `@@DB_MAIN_PREFIX@@wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `@@DB_MAIN_PREFIX@@wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL auto_increment,
  `term_id` bigint(20) unsigned NOT NULL default '0',
  `taxonomy` varchar(32) NOT NULL default '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL default '0',
  `count` bigint(20) NOT NULL default '0',
  PRIMARY KEY  (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `@@DB_MAIN_PREFIX@@wp_term_taxonomy`
--

LOCK TABLES `@@DB_MAIN_PREFIX@@wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `@@DB_MAIN_PREFIX@@wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `@@DB_MAIN_PREFIX@@wp_term_taxonomy` VALUES (1,1,'category','',0,1),
(2,2,'link_category','',0,7);
/*!40000 ALTER TABLE `@@DB_MAIN_PREFIX@@wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `@@DB_MAIN_PREFIX@@wp_terms`
--

DROP TABLE IF EXISTS `@@DB_MAIN_PREFIX@@wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `@@DB_MAIN_PREFIX@@wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL auto_increment,
  `name` varchar(200) NOT NULL default '',
  `slug` varchar(200) NOT NULL default '',
  `term_group` bigint(10) NOT NULL default '0',
  PRIMARY KEY  (`term_id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `@@DB_MAIN_PREFIX@@wp_terms`
--

LOCK TABLES `@@DB_MAIN_PREFIX@@wp_terms` WRITE;
/*!40000 ALTER TABLE `@@DB_MAIN_PREFIX@@wp_terms` DISABLE KEYS */;
INSERT INTO `@@DB_MAIN_PREFIX@@wp_terms` VALUES (1,'Uncategorized','uncategorized',0),
(2,'Blogroll','blogroll',0);
/*!40000 ALTER TABLE `@@DB_MAIN_PREFIX@@wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `@@DB_MAIN_PREFIX@@wp_usermeta`
--

DROP TABLE IF EXISTS `@@DB_MAIN_PREFIX@@wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `@@DB_MAIN_PREFIX@@wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL auto_increment,
  `user_id` bigint(20) unsigned NOT NULL default '0',
  `meta_key` varchar(255) default NULL,
  `meta_value` longtext,
  PRIMARY KEY  (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `@@DB_MAIN_PREFIX@@wp_usermeta`
--

LOCK TABLES `@@DB_MAIN_PREFIX@@wp_usermeta` WRITE;
/*!40000 ALTER TABLE `@@DB_MAIN_PREFIX@@wp_usermeta` DISABLE KEYS */;
INSERT INTO `@@DB_MAIN_PREFIX@@wp_usermeta` VALUES (1,1,'first_name',''),
(2,1,'last_name',''),
(3,1,'nickname','@@ADMIN_NAME@@'),
(4,1,'description',''),
(5,1,'rich_editing','true'),
(6,1,'comment_shortcuts','false'),
(7,1,'admin_color','fresh'),
(8,1,'use_ssl','0'),
(9,1,'show_admin_bar_front','true'),
(10,1,'@@DB_MAIN_PREFIX@@wp_capabilities','a:1:{s:13:\"administrator\";s:1:\"1\";}'),
(11,1,'@@DB_MAIN_PREFIX@@wp_user_level','10'),
(12,1,'dismissed_wp_pointers','wp330_toolbar,wp330_media_uploader,wp330_saving_widgets'),
(13,1,'show_welcome_panel','1');
/*!40000 ALTER TABLE `@@DB_MAIN_PREFIX@@wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `@@DB_MAIN_PREFIX@@wp_users`
--

DROP TABLE IF EXISTS `@@DB_MAIN_PREFIX@@wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `@@DB_MAIN_PREFIX@@wp_users` (
  `ID` bigint(20) unsigned NOT NULL auto_increment,
  `user_login` varchar(60) NOT NULL default '',
  `user_pass` varchar(64) NOT NULL default '',
  `user_nicename` varchar(50) NOT NULL default '',
  `user_email` varchar(100) NOT NULL default '',
  `user_url` varchar(100) NOT NULL default '',
  `user_registered` datetime NOT NULL default '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL default '',
  `user_status` int(11) NOT NULL default '0',
  `display_name` varchar(250) NOT NULL default '',
  PRIMARY KEY  (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `@@DB_MAIN_PREFIX@@wp_users`
--

LOCK TABLES `@@DB_MAIN_PREFIX@@wp_users` WRITE;
/*!40000 ALTER TABLE `@@DB_MAIN_PREFIX@@wp_users` DISABLE KEYS */;
INSERT INTO `@@DB_MAIN_PREFIX@@wp_users` VALUES (1,'@@ADMIN_NAME@@','@@ADMIN_PASSWORD@@','@@ADMIN_NAME@@','@@ADMIN_EMAIL@@','','now()','',0,'@@ADMIN_NAME@@');
/*!40000 ALTER TABLE `@@DB_MAIN_PREFIX@@wp_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-01-12 16:33:05
