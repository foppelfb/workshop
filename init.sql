-- MariaDB dump 10.19  Distrib 10.5.15-MariaDB, for osx12.0 (arm64)
--
-- Host: localhost    Database: workshop
-- ------------------------------------------------------
-- Server version	10.5.15-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tt_content`
--

DROP TABLE IF EXISTS `tt_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tt_content` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rowDescription` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pid` int(11) NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `fe_group` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT 0,
  `editlock` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l18n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_source` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l18n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `CType` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `header` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `header_position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `bodytext` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bullets_type` smallint(5) unsigned NOT NULL DEFAULT 0,
  `uploads_description` smallint(5) unsigned NOT NULL DEFAULT 0,
  `uploads_type` smallint(5) unsigned NOT NULL DEFAULT 0,
  `assets` int(10) unsigned NOT NULL DEFAULT 0,
  `image` int(10) unsigned NOT NULL DEFAULT 0,
  `imagewidth` int(10) unsigned NOT NULL DEFAULT 0,
  `imageorient` smallint(5) unsigned NOT NULL DEFAULT 0,
  `imagecols` smallint(5) unsigned NOT NULL DEFAULT 0,
  `imageborder` smallint(5) unsigned NOT NULL DEFAULT 0,
  `media` int(10) unsigned NOT NULL DEFAULT 0,
  `layout` int(10) unsigned NOT NULL DEFAULT 0,
  `frame_class` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `cols` int(10) unsigned NOT NULL DEFAULT 0,
  `space_before_class` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `space_after_class` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `records` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pages` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `colPos` int(10) unsigned NOT NULL DEFAULT 0,
  `subheader` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `header_link` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image_zoom` smallint(5) unsigned NOT NULL DEFAULT 0,
  `header_layout` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `list_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sectionIndex` smallint(5) unsigned NOT NULL DEFAULT 0,
  `linkToTop` smallint(5) unsigned NOT NULL DEFAULT 0,
  `file_collections` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filelink_size` smallint(5) unsigned NOT NULL DEFAULT 0,
  `filelink_sorting` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `filelink_sorting_direction` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `target` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `date` int(10) unsigned NOT NULL DEFAULT 0,
  `recursive` smallint(5) unsigned NOT NULL DEFAULT 0,
  `imageheight` int(10) unsigned NOT NULL DEFAULT 0,
  `pi_flexform` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `accessibility_title` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `accessibility_bypass` smallint(5) unsigned NOT NULL DEFAULT 0,
  `accessibility_bypass_text` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `category_field` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `table_class` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `table_caption` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_delimiter` smallint(5) unsigned NOT NULL DEFAULT 0,
  `table_enclosure` smallint(5) unsigned NOT NULL DEFAULT 0,
  `table_header_position` smallint(5) unsigned NOT NULL DEFAULT 0,
  `table_tfoot` smallint(5) unsigned NOT NULL DEFAULT 0,
  `categories` int(10) unsigned NOT NULL DEFAULT 0,
  `selected_categories` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `teaser` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aspect_ratio` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1.3333333333333',
  `items_per_page` int(10) unsigned DEFAULT 10,
  `readmore_label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `quote_source` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `quote_link` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `panel_class` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `file_folder` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `icon_set` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `icon_file` int(10) unsigned DEFAULT 0,
  `icon_position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `icon_size` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `icon_type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `icon_color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `icon_background` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `external_media_source` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `external_media_ratio` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tx_bootstrappackage_card_group_item` int(10) unsigned DEFAULT 0,
  `tx_bootstrappackage_carousel_item` int(10) unsigned DEFAULT 0,
  `tx_bootstrappackage_accordion_item` int(10) unsigned DEFAULT 0,
  `tx_bootstrappackage_icon_group_item` int(10) unsigned DEFAULT 0,
  `tx_bootstrappackage_tab_item` int(10) unsigned DEFAULT 0,
  `tx_bootstrappackage_timeline_item` int(10) unsigned DEFAULT 0,
  `frame_layout` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `background_color_class` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `background_image` int(10) unsigned DEFAULT 0,
  `background_image_options` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`sorting`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `language` (`l18n_parent`,`sys_language_uid`),
  KEY `translation_source` (`l10n_source`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tt_content`
--

LOCK TABLES `tt_content` WRITE;
/*!40000 ALTER TABLE `tt_content` DISABLE KEYS */;
INSERT INTO `tt_content` VALUES (1,'',1,1650463141,1650463141,1,0,0,0,0,'',256,0,0,0,0,NULL,0,'',0,0,0,0,'text','Unser Blog','','',0,0,0,0,0,0,0,1,0,0,0,'default',0,'','',NULL,NULL,0,'','',0,'0','',1,0,NULL,0,'','','',0,0,0,NULL,'',0,'','','',NULL,124,0,0,0,0,NULL,NULL,'1.3333333333333',10,'','','','default',NULL,'','',0,'','default','default','#FFFFFF','#333333','','',0,0,0,0,0,0,'default','none',0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"parallax\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"fade\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"filter\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>'),(2,'',1,1650466086,1650464320,1,0,0,0,0,'',512,0,0,0,0,NULL,0,'{\"CType\":\"\",\"colPos\":\"\",\"header\":\"\",\"header_layout\":\"\",\"header_position\":\"\",\"date\":\"\",\"header_link\":\"\",\"subheader\":\"\",\"list_type\":\"\",\"pi_flexform\":\"\",\"pages\":\"\",\"recursive\":\"\",\"layout\":\"\",\"frame_class\":\"\",\"space_before_class\":\"\",\"space_after_class\":\"\",\"frame_layout\":\"\",\"background_color_class\":\"\",\"background_image\":\"\",\"background_image_options\":\"\",\"sectionIndex\":\"\",\"linkToTop\":\"\",\"sys_language_uid\":\"\",\"hidden\":\"\",\"starttime\":\"\",\"endtime\":\"\",\"fe_group\":\"\",\"editlock\":\"\",\"categories\":\"\",\"rowDescription\":\"\"}',0,0,0,0,'list','','',NULL,0,0,0,0,0,0,0,1,0,0,0,'default',0,'','',NULL,'2',0,'','',0,'0','workshopblog_latest',1,0,NULL,0,'','','',0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"settings.detailPage\">\n                    <value index=\"vDEF\">3</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'','','',NULL,124,0,0,0,0,NULL,NULL,'1.3333333333333',10,'','','','default',NULL,'','',0,'','default','default','#FFFFFF','#333333','','',0,0,0,0,0,0,'default','none',0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"parallax\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"fade\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"filter\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>'),(3,'',4,1650466138,1650466116,1,0,0,0,0,'',256,0,0,0,0,NULL,0,'{\"CType\":\"\",\"colPos\":\"\",\"header\":\"\",\"header_layout\":\"\",\"header_position\":\"\",\"date\":\"\",\"header_link\":\"\",\"subheader\":\"\",\"list_type\":\"\",\"pi_flexform\":\"\",\"pages\":\"\",\"recursive\":\"\",\"layout\":\"\",\"frame_class\":\"\",\"space_before_class\":\"\",\"space_after_class\":\"\",\"frame_layout\":\"\",\"background_color_class\":\"\",\"background_image\":\"\",\"background_image_options\":\"\",\"sectionIndex\":\"\",\"linkToTop\":\"\",\"sys_language_uid\":\"\",\"hidden\":\"\",\"starttime\":\"\",\"endtime\":\"\",\"fe_group\":\"\",\"editlock\":\"\",\"categories\":\"\",\"rowDescription\":\"\"}',0,0,0,0,'list','','',NULL,0,0,0,0,0,0,0,1,0,0,0,'default',0,'','',NULL,'2',0,'','',0,'0','workshopblog_list',1,0,NULL,0,'','','',0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"settings.detailPage\">\n                    <value index=\"vDEF\">3</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'','','',NULL,124,0,0,0,0,NULL,NULL,'1.3333333333333',10,'','','','default',NULL,'','',0,'','default','default','#FFFFFF','#333333','','',0,0,0,0,0,0,'default','none',0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"parallax\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"fade\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"filter\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>'),(4,'',3,1650466163,1650466155,1,0,0,0,0,'',256,0,0,0,0,NULL,0,'{\"CType\":\"\",\"colPos\":\"\",\"header\":\"\",\"header_layout\":\"\",\"header_position\":\"\",\"date\":\"\",\"header_link\":\"\",\"subheader\":\"\",\"list_type\":\"\",\"pages\":\"\",\"recursive\":\"\",\"layout\":\"\",\"frame_class\":\"\",\"space_before_class\":\"\",\"space_after_class\":\"\",\"frame_layout\":\"\",\"background_color_class\":\"\",\"background_image\":\"\",\"background_image_options\":\"\",\"sectionIndex\":\"\",\"linkToTop\":\"\",\"sys_language_uid\":\"\",\"hidden\":\"\",\"starttime\":\"\",\"endtime\":\"\",\"fe_group\":\"\",\"editlock\":\"\",\"categories\":\"\",\"rowDescription\":\"\"}',0,0,0,0,'list','','',NULL,0,0,0,0,0,0,0,1,0,0,0,'default',0,'','',NULL,'2',0,'','',0,'0','workshopblog_detail',1,0,NULL,0,'','','',0,0,0,NULL,'',0,'','','',NULL,124,0,0,0,0,NULL,NULL,'1.3333333333333',10,'','','','default',NULL,'','',0,'','default','default','#FFFFFF','#333333','','',0,0,0,0,0,0,'default','none',0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"parallax\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"fade\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"filter\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>');
/*!40000 ALTER TABLE `tt_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `fe_group` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT 0,
  `rowDescription` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `editlock` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_source` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `perms_userid` int(10) unsigned NOT NULL DEFAULT 0,
  `perms_groupid` int(10) unsigned NOT NULL DEFAULT 0,
  `perms_user` smallint(5) unsigned NOT NULL DEFAULT 0,
  `perms_group` smallint(5) unsigned NOT NULL DEFAULT 0,
  `perms_everybody` smallint(5) unsigned NOT NULL DEFAULT 0,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `doktype` int(10) unsigned NOT NULL DEFAULT 0,
  `TSconfig` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_siteroot` smallint(6) NOT NULL DEFAULT 0,
  `php_tree_stop` smallint(6) NOT NULL DEFAULT 0,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `shortcut` int(10) unsigned NOT NULL DEFAULT 0,
  `shortcut_mode` int(10) unsigned NOT NULL DEFAULT 0,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `layout` int(10) unsigned NOT NULL DEFAULT 0,
  `target` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `media` int(10) unsigned NOT NULL DEFAULT 0,
  `lastUpdated` int(10) unsigned NOT NULL DEFAULT 0,
  `keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cache_timeout` int(10) unsigned NOT NULL DEFAULT 0,
  `cache_tags` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `newUntil` int(10) unsigned NOT NULL DEFAULT 0,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_search` smallint(5) unsigned NOT NULL DEFAULT 0,
  `SYS_LASTCHANGED` int(10) unsigned NOT NULL DEFAULT 0,
  `abstract` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `module` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extendToSubpages` smallint(5) unsigned NOT NULL DEFAULT 0,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `author_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `nav_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `nav_hide` smallint(6) NOT NULL DEFAULT 0,
  `content_from_pid` int(10) unsigned NOT NULL DEFAULT 0,
  `mount_pid` int(10) unsigned NOT NULL DEFAULT 0,
  `mount_pid_ol` smallint(6) NOT NULL DEFAULT 0,
  `l18n_cfg` smallint(6) NOT NULL DEFAULT 0,
  `fe_login_mode` smallint(6) NOT NULL DEFAULT 0,
  `backend_layout` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `backend_layout_next_level` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tsconfig_includes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `categories` int(10) unsigned NOT NULL DEFAULT 0,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `no_index` smallint(6) NOT NULL DEFAULT 0,
  `no_follow` smallint(6) NOT NULL DEFAULT 0,
  `og_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `og_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `og_image` int(10) unsigned NOT NULL DEFAULT 0,
  `twitter_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `twitter_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_image` int(10) unsigned NOT NULL DEFAULT 0,
  `twitter_card` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `canonical_link` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sitemap_priority` decimal(2,1) NOT NULL DEFAULT 0.5,
  `sitemap_changefreq` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `nav_icon_set` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `nav_icon_identifier` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `nav_icon` int(10) unsigned DEFAULT 0,
  `thumbnail` int(10) unsigned DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `determineSiteRoot` (`is_siteroot`),
  KEY `language_identifier` (`l10n_parent`,`sys_language_uid`),
  KEY `slug` (`slug`(127)),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `translation_source` (`l10n_source`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,0,1650463105,1650462577,1,0,0,0,0,'',0,NULL,0,0,0,0,NULL,0,'{\"doktype\":\"\",\"title\":\"\",\"slug\":\"\",\"nav_title\":\"\",\"subtitle\":\"\",\"nav_icon_set\":\"\",\"nav_icon\":\"\",\"seo_title\":\"\",\"description\":\"\",\"no_index\":\"\",\"no_follow\":\"\",\"sitemap_changefreq\":\"\",\"sitemap_priority\":\"\",\"og_title\":\"\",\"og_description\":\"\",\"og_image\":\"\",\"twitter_title\":\"\",\"twitter_description\":\"\",\"twitter_image\":\"\",\"twitter_card\":\"\",\"abstract\":\"\",\"keywords\":\"\",\"author\":\"\",\"author_email\":\"\",\"lastUpdated\":\"\",\"layout\":\"\",\"newUntil\":\"\",\"backend_layout\":\"\",\"backend_layout_next_level\":\"\",\"thumbnail\":\"\",\"content_from_pid\":\"\",\"target\":\"\",\"cache_timeout\":\"\",\"cache_tags\":\"\",\"is_siteroot\":\"\",\"no_search\":\"\",\"php_tree_stop\":\"\",\"module\":\"\",\"media\":\"\",\"tsconfig_includes\":\"\",\"TSconfig\":\"\",\"l18n_cfg\":\"\",\"hidden\":\"\",\"nav_hide\":\"\",\"starttime\":\"\",\"endtime\":\"\",\"extendToSubpages\":\"\",\"fe_group\":\"\",\"fe_login_mode\":\"\",\"editlock\":\"\",\"categories\":\"\",\"rowDescription\":\"\"}',0,0,0,0,1,1,31,31,1,'Home','/',1,NULL,1,0,'',0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,1650463141,NULL,'',0,'','','',0,0,0,0,0,0,'pagets__simple','pagets__simple',NULL,0,'',0,0,'',NULL,0,'',NULL,0,'summary','',0.5,'','','',0,0),(2,1,1650464385,1650464339,1,0,0,0,0,'0',256,NULL,0,0,0,0,NULL,0,'{\"doktype\":\"\",\"title\":\"\",\"slug\":\"\",\"backend_layout\":\"\",\"backend_layout_next_level\":\"\",\"module\":\"\",\"media\":\"\",\"tsconfig_includes\":\"\",\"TSconfig\":\"\",\"hidden\":\"\",\"editlock\":\"\",\"categories\":\"\",\"rowDescription\":\"\"}',0,0,0,0,1,1,31,31,0,'Articles','/articles',254,NULL,0,0,'',0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,0,0,'','',NULL,0,'',0,0,'',NULL,0,'',NULL,0,'summary','',0.5,'','','',0,0),(3,1,1650464356,1650464346,1,0,0,0,0,'',128,NULL,0,0,0,0,NULL,0,'{\"doktype\":\"\",\"title\":\"\",\"slug\":\"\",\"nav_title\":\"\",\"subtitle\":\"\",\"nav_icon_set\":\"\",\"nav_icon\":\"\",\"seo_title\":\"\",\"description\":\"\",\"no_index\":\"\",\"no_follow\":\"\",\"canonical_link\":\"\",\"sitemap_changefreq\":\"\",\"sitemap_priority\":\"\",\"og_title\":\"\",\"og_description\":\"\",\"og_image\":\"\",\"twitter_title\":\"\",\"twitter_description\":\"\",\"twitter_image\":\"\",\"twitter_card\":\"\",\"abstract\":\"\",\"keywords\":\"\",\"author\":\"\",\"author_email\":\"\",\"lastUpdated\":\"\",\"layout\":\"\",\"newUntil\":\"\",\"backend_layout\":\"\",\"backend_layout_next_level\":\"\",\"thumbnail\":\"\",\"content_from_pid\":\"\",\"target\":\"\",\"cache_timeout\":\"\",\"cache_tags\":\"\",\"is_siteroot\":\"\",\"no_search\":\"\",\"php_tree_stop\":\"\",\"module\":\"\",\"media\":\"\",\"tsconfig_includes\":\"\",\"TSconfig\":\"\",\"l18n_cfg\":\"\",\"hidden\":\"\",\"nav_hide\":\"\",\"starttime\":\"\",\"endtime\":\"\",\"extendToSubpages\":\"\",\"fe_group\":\"\",\"fe_login_mode\":\"\",\"editlock\":\"\",\"categories\":\"\",\"rowDescription\":\"\"}',0,0,0,0,1,1,31,31,0,'Detail','/detail',1,NULL,0,0,'',0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,1650464356,NULL,'',0,'','','',1,0,0,0,0,0,'','',NULL,0,'',0,0,'',NULL,0,'',NULL,0,'summary','',0.5,'','','',0,0),(4,1,1650464375,1650464366,1,0,0,0,0,'',64,NULL,0,0,0,0,NULL,0,'{\"doktype\":\"\",\"title\":\"\",\"slug\":\"\",\"nav_title\":\"\",\"subtitle\":\"\",\"nav_icon_set\":\"\",\"nav_icon\":\"\",\"seo_title\":\"\",\"description\":\"\",\"no_index\":\"\",\"no_follow\":\"\",\"canonical_link\":\"\",\"sitemap_changefreq\":\"\",\"sitemap_priority\":\"\",\"og_title\":\"\",\"og_description\":\"\",\"og_image\":\"\",\"twitter_title\":\"\",\"twitter_description\":\"\",\"twitter_image\":\"\",\"twitter_card\":\"\",\"abstract\":\"\",\"keywords\":\"\",\"author\":\"\",\"author_email\":\"\",\"lastUpdated\":\"\",\"layout\":\"\",\"newUntil\":\"\",\"backend_layout\":\"\",\"backend_layout_next_level\":\"\",\"thumbnail\":\"\",\"content_from_pid\":\"\",\"target\":\"\",\"cache_timeout\":\"\",\"cache_tags\":\"\",\"is_siteroot\":\"\",\"no_search\":\"\",\"php_tree_stop\":\"\",\"module\":\"\",\"media\":\"\",\"tsconfig_includes\":\"\",\"TSconfig\":\"\",\"l18n_cfg\":\"\",\"hidden\":\"\",\"nav_hide\":\"\",\"starttime\":\"\",\"endtime\":\"\",\"extendToSubpages\":\"\",\"fe_group\":\"\",\"fe_login_mode\":\"\",\"editlock\":\"\",\"categories\":\"\",\"rowDescription\":\"\"}',0,0,0,0,1,1,31,31,0,'Archive','/archive',1,NULL,0,0,'',0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,1650464375,NULL,'',0,'','','',0,0,0,0,0,0,'','',NULL,0,'',0,0,'',NULL,0,'',NULL,0,'summary','',0.5,'','','',0,0);
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_workshopblog_domain_model_comment`
--

DROP TABLE IF EXISTS `tx_workshopblog_domain_model_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_workshopblog_domain_model_comment` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `commentor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` int(11) NOT NULL DEFAULT 0,
  `blog` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_workshopblog_domain_model_comment`
--

LOCK TABLES `tx_workshopblog_domain_model_comment` WRITE;
/*!40000 ALTER TABLE `tx_workshopblog_domain_model_comment` DISABLE KEYS */;
INSERT INTO `tx_workshopblog_domain_model_comment` VALUES (1,2,1650471246,1650466272,0,1,0,'Itsa me Mario','great content!',1650466273,1),(2,2,1650471246,1650466272,0,1,0,'Itsa me Mario','great content!',1650466273,1),(3,2,1650471246,1650466411,0,1,0,'mario','noch ein kommentar',1650466411,1),(4,2,1650471246,1650468828,0,1,0,'test','test',1650468828,1),(5,2,1650471246,1650468828,0,1,0,'test','test',1650468828,1),(6,2,1650471246,1650469551,0,1,0,'test2','test2',1650469551,1),(7,2,1650471246,1650470557,0,1,0,'test 3','test 3',1650470558,1);
/*!40000 ALTER TABLE `tx_workshopblog_domain_model_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_workshopblog_domain_model_blog`
--

DROP TABLE IF EXISTS `tx_workshopblog_domain_model_blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_workshopblog_domain_model_blog` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `date` int(11) NOT NULL DEFAULT 0,
  `teaser` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bodytext` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_workshopblog_domain_model_blog`
--

LOCK TABLES `tx_workshopblog_domain_model_blog` WRITE;
/*!40000 ALTER TABLE `tx_workshopblog_domain_model_blog` DISABLE KEYS */;
INSERT INTO `tx_workshopblog_domain_model_blog` VALUES (1,2,1650471127,1650466021,1,0,0,'Welcome to Vienna 2022!',1650456000,'Finally a real TYPO3 Event again','<p>lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;</p>'),(2,2,1650472018,1650472018,1,0,0,'Welcome to Vienna 2022!',1650456000,'Finally a real TYPO3 Event again','<p>lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;</p>'),(3,2,1650472020,1650472020,1,0,0,'Welcome to Vienna 2022!',1650456000,'Finally a real TYPO3 Event again','<p>lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;</p>'),(4,2,1650472022,1650472022,1,0,0,'Welcome to Vienna 2022!',1650456000,'Finally a real TYPO3 Event again','<p>lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;</p>');
/*!40000 ALTER TABLE `tx_workshopblog_domain_model_blog` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-20 18:52:12
