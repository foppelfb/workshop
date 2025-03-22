
-- Dump of TYPO3 Connection "Default"
/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19  Distrib 10.11.9-MariaDB, for osx15.0 (arm64)
--
-- Host: localhost    Database: workshop13
-- ------------------------------------------------------
-- Server version	10.11.9-MariaDB

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
-- Table structure for table `backend_layout`
--

DROP TABLE IF EXISTS `backend_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `backend_layout` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `config` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `icon` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backend_layout`
--

LOCK TABLES `backend_layout` WRITE;
/*!40000 ALTER TABLE `backend_layout` DISABLE KEYS */;
/*!40000 ALTER TABLE `backend_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `be_groups`
--

DROP TABLE IF EXISTS `be_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `be_groups` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `tables_select` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `title` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `db_mountpoints` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `file_mountpoints` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '',
  `file_permissions` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `workspace_perms` smallint(5) unsigned NOT NULL DEFAULT 0,
  `pagetypes_select` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `tables_modify` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `non_exclude_fields` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `explicit_allowdeny` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `allowed_languages` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `custom_options` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `groupMods` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `mfa_providers` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `TSconfig` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `subgroup` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '',
  `category_perms` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `be_groups`
--

LOCK TABLES `be_groups` WRITE;
/*!40000 ALTER TABLE `be_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `be_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `be_sessions`
--

DROP TABLE IF EXISTS `be_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `be_sessions` (
  `ses_id` varchar(190) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `ses_iplock` varchar(39) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `ses_userid` int(10) unsigned NOT NULL DEFAULT 0,
  `ses_tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `ses_data` longblob DEFAULT NULL,
  PRIMARY KEY (`ses_id`),
  KEY `ses_tstamp` (`ses_tstamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `be_sessions`
--

LOCK TABLES `be_sessions` WRITE;
/*!40000 ALTER TABLE `be_sessions` DISABLE KEYS */;
INSERT INTO `be_sessions` VALUES
('21bd30de1e19927aff163d5db8e5bd6bd87e6c47fd1a1d06fe571a690d535e3e','[DISABLED]',1,1742600973,'a:1:{s:26:\"formProtectionSessionToken\";s:64:\"b1644ae92043f952d360ff26aa97038a8c8455d50bbbbbfa0516aadc59d7619f\";}');
/*!40000 ALTER TABLE `be_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `be_users`
--

DROP TABLE IF EXISTS `be_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `be_users` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `disable` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `lang` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'default',
  `uc` mediumblob DEFAULT NULL,
  `workspace_id` int(11) NOT NULL DEFAULT 0,
  `mfa` mediumblob DEFAULT NULL,
  `password_reset_token` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `username` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `password` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `usergroup` varchar(512) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '',
  `avatar` int(10) unsigned NOT NULL DEFAULT 0,
  `db_mountpoints` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `file_mountpoints` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '',
  `email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `realName` varchar(80) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `admin` smallint(5) unsigned NOT NULL DEFAULT 0,
  `options` smallint(5) unsigned NOT NULL DEFAULT 3,
  `file_permissions` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `workspace_perms` smallint(5) unsigned NOT NULL DEFAULT 1,
  `userMods` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `allowed_languages` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `TSconfig` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `lastlogin` bigint(20) NOT NULL DEFAULT 0,
  `category_perms` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `username` (`username`),
  KEY `parent` (`pid`,`deleted`,`disable`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `be_users`
--

LOCK TABLES `be_users` WRITE;
/*!40000 ALTER TABLE `be_users` DISABLE KEYS */;
INSERT INTO `be_users` VALUES
(1,0,1742600390,1742600390,0,0,0,0,NULL,'default','a:5:{s:10:\"moduleData\";a:4:{s:57:\"TYPO3\\CMS\\Backend\\Utility\\BackendUtility::getUpdateSignal\";a:0:{}s:6:\"web_ts\";a:1:{s:6:\"action\";s:25:\"web_typoscript_infomodify\";}s:25:\"web_typoscript_infomodify\";a:1:{s:23:\"selectedTemplatePerPage\";a:1:{i:1;i:1;}}s:10:\"FormEngine\";a:2:{i:0;a:3:{s:32:\"86205c5935270b8ee413592ec1b62292\";a:5:{i:0;s:8:\"NEW SITE\";i:1;a:5:{s:4:\"edit\";a:1:{s:12:\"sys_template\";a:1:{i:1;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;}i:2;s:35:\"&edit%5Bsys_template%5D%5B1%5D=edit\";i:3;a:5:{s:5:\"table\";s:12:\"sys_template\";s:3:\"uid\";i:1;s:3:\"pid\";i:1;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}i:4;s:89:\"/typo3/module/web/typoscript/overview?token=0b4e2658adddea468c1951016ce8c393014846c0&id=1\";}s:32:\"530f3bd603737a68b52a132d0677a9e1\";a:5:{i:0;s:23:\"Welcome to Vienna 2022!\";i:1;a:5:{s:4:\"edit\";a:1:{s:33:\"tx_workshopblog_domain_model_blog\";a:1:{i:1;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;}i:2;s:56:\"&edit%5Btx_workshopblog_domain_model_blog%5D%5B1%5D=edit\";i:3;a:5:{s:5:\"table\";s:33:\"tx_workshopblog_domain_model_blog\";s:3:\"uid\";i:1;s:3:\"pid\";i:2;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}i:4;s:91:\"/typo3/module/web/list?token=9db7af48b7dc70f12b666fe88cbd53b627734f13&id=2&table=&pointer=1\";}s:32:\"8a5a873ff6f3ef551a581eb7a3b1f786\";a:5:{i:0;s:10:\"Hello Jena\";i:1;a:5:{s:4:\"edit\";a:1:{s:33:\"tx_workshopblog_domain_model_blog\";a:1:{i:5;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;}i:2;s:56:\"&edit%5Btx_workshopblog_domain_model_blog%5D%5B5%5D=edit\";i:3;a:5:{s:5:\"table\";s:33:\"tx_workshopblog_domain_model_blog\";s:3:\"uid\";i:5;s:3:\"pid\";i:2;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}i:4;s:91:\"/typo3/module/web/list?token=9db7af48b7dc70f12b666fe88cbd53b627734f13&id=2&table=&pointer=1\";}}i:1;s:32:\"8a5a873ff6f3ef551a581eb7a3b1f786\";}}s:14:\"emailMeAtLogin\";i:0;s:8:\"titleLen\";i:50;s:20:\"edit_docModuleUpload\";s:1:\"1\";s:15:\"moduleSessionID\";a:4:{s:57:\"TYPO3\\CMS\\Backend\\Utility\\BackendUtility::getUpdateSignal\";s:40:\"7953800f48d98478bd7555517d6bb84844a2f514\";s:6:\"web_ts\";s:40:\"7953800f48d98478bd7555517d6bb84844a2f514\";s:25:\"web_typoscript_infomodify\";s:40:\"7953800f48d98478bd7555517d6bb84844a2f514\";s:10:\"FormEngine\";s:40:\"7953800f48d98478bd7555517d6bb84844a2f514\";}}',0,NULL,'','admin','$argon2i$v=19$m=65536,t=16,p=1$dUUzWHRHV3YxWmp0RmdRTA$XXXrrK6K+59phuTS+PH3w21+MRFS+592Z7rIxdtsPcE','',0,NULL,'','test@test.de','',1,3,NULL,1,NULL,'',NULL,1742600484,NULL),
(2,0,1742600612,1742600612,0,0,0,0,NULL,'default','a:4:{s:10:\"moduleData\";a:0:{}s:14:\"emailMeAtLogin\";i:0;s:8:\"titleLen\";i:50;s:20:\"edit_docModuleUpload\";s:1:\"1\";}',0,NULL,'','_cli_','$argon2i$v=19$m=65536,t=16,p=1$SWVlbmw2VUsxeFlzbHFrNw$1+/fbsN502WVOAeuNu1zTSGeJSiO2WbGcHMPrm6ddkE','',0,NULL,'','','',1,3,NULL,1,NULL,'',NULL,0,NULL);
/*!40000 ALTER TABLE `be_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_hash`
--

DROP TABLE IF EXISTS `cache_hash`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_hash` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `expires` int(10) unsigned NOT NULL DEFAULT 0,
  `content` longblob DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(180),`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_hash`
--

LOCK TABLES `cache_hash` WRITE;
/*!40000 ALTER TABLE `cache_hash` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_hash` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_hash_tags`
--

DROP TABLE IF EXISTS `cache_hash_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_hash_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `tag` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(191)),
  KEY `cache_tag` (`tag`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_hash_tags`
--

LOCK TABLES `cache_hash_tags` WRITE;
/*!40000 ALTER TABLE `cache_hash_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_hash_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_pages`
--

DROP TABLE IF EXISTS `cache_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `expires` int(10) unsigned NOT NULL DEFAULT 0,
  `content` longblob DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(180),`expires`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_pages`
--

LOCK TABLES `cache_pages` WRITE;
/*!40000 ALTER TABLE `cache_pages` DISABLE KEYS */;
INSERT INTO `cache_pages` VALUES
(1,'1_e3088e888e703b42',1742687380,'xúÌkì€∂ÒsÓW¿l”O°ƒá(Q∫ì2ÒŸâ›ƒâ«Á4”©;7 J»ëK@:´ô¸˜.\0í¢(J˜∞=I:—Ã≈≈bw±ÿ≈ÓûπŒÏ1õÃ¨/È5ã≠s6sœ5Ñ\\“\\ZÊzﬁ‘ùYOû˝p˘ˆüØü£ïÃ“≈ŸÖz†ÁÀπEsK(ég>ïë.ïsk-;å≥ã\'∂çŒ>{äçœë\\Q$—SŒ•ê%.–kLn@m—Söˇå3ñ£oπî»∆≤≥·ˆˆv’Ï¬tû\rœŒ>{ªb›“H0I|-¯--Å–3¨lƒrQ∞íÂKTP^§IéKü@wç˝0JJJ/hé_óÑ¢K£Ù\nÁ¿0S_ø.qFoyyDôd8M∑àîK√Ò[,\nZ¢´åÀˇ·<F)#4W\nXÁ1¥}Û˝è√o^7h±&ºÿñlπí»ùNC€sº\0Ò§KlÄûøq„9H[“V7@’≤ï∫…60ê€úñÿºÃ^fXB?-èöÍíEkêçñÂ∂‡˛ÄóÀ·ôm´…KY~”π≈†èÖV%MÊ÷\Zòe1úF°ác<\rq‚SB¸„àz”IÏ<\rÜ/°ó&x£∫‡üÖÄr®s∏…„A∆H…O‰@≥\0£íL¶tÒÇgÙbhæüÎRb⁄Ù?k∂ô[ÔÌ5∂a˛UîRUÊ;∑^>ü”xI≠∫W”5∑ñtÅ%/[òF˚óØÆ:∏Fo^ Í-ãÂjSµıÀıÙ€Ç‡îŒ›/ÿ-À÷Y\rËP-yˆ€¢…¿ﬁë4Â∑\\yÀ§§Âå‡2nıÎ,√Â∂Éå0h;„É∏Å\r\0õ‡ÔÎ%Á]ïpæÏ`ÄwÂ\"S∂ˆg_»mJ≈äRŸÿÄ∂I≥bXC„ûïw†+Ü^8äî˛(¿o\Z˚aB¸ÿè¢âG)åi2vCGôL¶^H›Äé<eDNêÑ—F§(\rà_∫ìë7vú©„Y(£1√0˙4U„zò¨ p¿Q¿%á-ó4∂}èL<è`/Èd‚Oóå:é&Œt4\n«#”0ˆßî∫cOH‡ÖÿçC‚\Z8 €ó/¸ÿÚMFì)«	¶#:r› ä/âGAî8qDB€œõ¿â‹pÏ∏q<{”àL\' 9tzZ>ÛiIIpŒsÜ‹i\raC≥‚_D<ﬁ\"œ≠¬JAÏπ)∂ã‘#•ö⁄éékvPVAÛ8≈[æñ∂`ôZÖ´∑ò&xùJmt1€h¬í÷‚bØ¨∏(Œv¥T∏*Ó(±Õ≥ÈI8øaT≠<*úU·I8G1ñj—h5€†n…T@3‡}qb˚o¡S{–78]ÉÎ¯„@	ßàﬁüæˆ≤ÅR -Oˇâ¢µPkªjèÂìÅ˘ÄÊO1⁄ãõ¿R‘<UtÑ0≥ÜÛÉñTÍ∏Q!(àñåÊ!x@î¨)+iÃD∆ƒI}√%bÚ…c9`Ωƒû†ˇïB¯Pç«4ﬂûbÚå/˙XÚ 7Oëˇé‚2G/ÕA9˙)•kº˚≈FÏ %H]%ßh3HzJ≥‡`…Le:\'dÜÃîg•\\“\rø1˘8iÁ°TÖÑÙá|Tí)\'¯.<ú(æÖd}\rYÁˆí«\'u“%]Çƒ8˝üÙrwGª\n,M–ˇQıπ¿u∞Ÿ0±V	æΩb1∏∑ùp≤juî≥≈\r+l„ó&H˛%√,œ!›]\Z.\ZöÕ`W–I-∞\nÌp€£÷»Cº¯hbip]‡›)TÖ¯È%J eTéB ÖáﬁqyvÛ®í≥úòÏDq©#nù@®˙±´àp˝∞˜ÁØÜV˘I˝∫¬¬÷L\r–πä±◊V¶¢‘‰ÄGÛÕ>jg;]VD£RïjÌ√tóêufCÛgŸ≤èéùÚ%∑sUBF\'JÚ†*N±√¶`ØÍıÅÿ,-ÑS®¥Ÿ( UıË‹\n E7UìŸ}gé˜^ÓñõÂZB}˝±$Y—˚#8”fxvv–`\Z°»ñ`H˚Cì|	ïó≤ã4≈ÖP3e±¡Æ÷∞HTà îb´CY WÑKÜµ´ó<f\\Õê√Ån)8HÇSEUCS–d˛o5Ot`•f)ÓàmJ˜›‚j∆—Vã¶\0ΩˆXΩ⁄_-Ì≥]âo2*®=¢Q…‚¿òŒ:|\rLK∞N;#ÄG€ª∫7™©3R‰¨GÿmR•ôöä=≤N‚VÎ.…ämËi‹ñÄ∫¯´øËïÍt◊«7\Z]ó•ﬁv06x≤√qµ›…´k∂ftíæÔ¬æœWFÖw‚ùñ†∑€ÒÒ∆„ΩZë&.yÛ€‹ŒhææcX˚≥_ùı7•l—„\\{_.ÜÎt—ÔÉùı`Û±Ëv6ˇ–ÑÁnä÷ ‘ö1\\Ëµª	˜uö”ç˜\\ß8ê>íN\0V’zCÍ˘Wo._\\GêSÊjt\'˝Ó[˘)T=[õÌqÔi|∑U±€=Aâ⁄W6ˇõÑ√º©ÿ†-∂zﬂﬂ5©ÄÇ˝∑€œ≤PÌ√,K»≈cHÚö!X(Å6ö@˘x«	§_mpŒ[tLV“I‚Z\n2]na7ôPèïÎ·†øœ§é”⁄ecù˜û	ªõ⁄)ô\ZŸvˇé‘dÎJ∏\'ùŒüzp.V^Mú¶˙Ë¢NyQüÚı\Zı#‘K%z\nyPﬂ¢NÈÌ[uØL\r\'ﬁ[kMøß∑3˚ÆÃ=DÓŸ‘ÓÄÍ±a~‘ÖΩ{ªp ƒü.|˘C∫pü≠∂Yî˙Hßè9‰≠∂ÎuuΩ\nP\0Vâ[LaXÈóÚ˝µ:f+^D‡ë◊¸yÎ@Ûyln@√Yq~[Ω)‹‡4ZU2@6ØêüÌìX¨Ê„qH‚Ä˙ì¿wGì Ùº(ˆ£&âÔªS‹ê˙º†i —ﬂiéë}–Ëy«®sŒé‚É5\'8 ˚ÎµXH*‰≈∞x\r§èhT%R™¿l¯Õ<öùw…75{$svQ2}B˜«û ‚ÑﬁIﬁõéñ‚⁄´„Ô‹Ï›“U‰ÖÅó$û;—h\ZFA‡S\'â\"–dÍQ“cˆ?—îLﬂ0¯£P \"∞rÔIü8g§|¿˚ƒ>5Àı5å`f”ÍRƒÛç ÜÒV–ˇ7ˇ¯‘s~oˇÿ€ô¨üøi”kP;Ö¸¬Æ«£™¶⁄·ÕvÏÆ‚™∂qª◊¡Ón{Ïù≤Í¢Æ¢:Eï°a˜ø⁄Í2√ëı¶ùä}XæÙ•EøõÙÁQç<Õƒ©3πû⁄˚Éÿú`◊±è{±;·üè˚ÎŸèÜ§µæiÒ‡·jzÎT{sM‰ZÔ#’öKù›•}∑ÿmvbs˚¨ocˆËÄö$¿DÜ˙é°Ω“w¿Ê÷Û|	‘Íéö:∂¬}ÙŒ[gEUõ^{MG∑∏és˙˝òJsi°∂ôƒõuû´[î∑LÆv≥¶.ÊUó4õ+Ñ0o’≈u”ycô{E9¨∂	-KuÚ∆’MKµÈ®£&CﬂN‹#{ÚÚÁCx\\7U¸:Û˘cN£‡D]>e˘çxú”∑˜0{iµNKZz„ÆÛº?[?m´YÄÃ∑ˆMÜ˚|>¶ﬂÉ÷oëÓöØU¢±ßú]l‹®⁄{‹U*Ç®“@È◊ëÁJÉTAß°’\rÜ÷°˚ài◊ˇ‡T¥9\'6˜™ìË¿\nYùlﬂ„&h‡M£»\'ûƒƒôå&±ÎDQ‡ä‚∂éI8áé«P∫∏4t¬$âFd4¶˛x‰~ﬁª™‘\",åTÍÇ•>ÄQw˛ıØ‹Ê«o’ù+\0y£ô•$4“ysÌﬂ‹˙◊? òY/øÀrr•I[ÁxÊÃ~˘Z∆˚-◊Í n◊:2øLx´â…ä™6W˝faŒÃÖÌwóØÆﬁ]¬ˇÓuç˘Ó\r%ºåõ˜◊%ﬂ0µë¢\0Euï‹:Ú¿b\0Tz˙gï\nBG	Ïœ,ï->√_Iu∫ÊÎCß◊<ed˚Ü.aÂ+∑≥Ÿ_≥µ‘ß”ó™ä‘F&¥Zf÷ø˛≠9MAeJ¸∑x)4)ˆõ9ÁÕo/ƒµ€˙ÌÖÅåƒS“83Kl≈u¬Rj|ù∂†JXu¿4è∫ù<\rév“Õ„j¢§ºÆ¶◊õ¬5~p»‘’\\á◊èiz≠!ãMó©Í‹ßK†µ·‹ﬂhoO}æ)˝ÖÙ2Vhøj}Øóäf‚√âˇÎˇ\0ˆˇ'),
(2,'3_6460514088ff5ee7',1742687382,'xúÌ;kì€∂µüªø·mÚ…î¯)ÌJmºvúm„ÿı∫ÌuèA	^í`Jk%≥ˇΩ\0IQîV˚»f⁄;s5≥K8o‡ú@xb[ì_≈$ò^–9ãçS6qOU·yEÛ Ä7€qFˆƒ8˚Í≈õÛ˜ﬁæDÀ*Kg\'gÚÅRú/¶Õ\rŸ@q<;A9ÀhÖY‚R–jj¨™ƒ‚‰Ï+”D\'xéçœQµ§Hæq—sŒ+Qï∏@o1πqP¥Aœi˛g,GÂUÖL`\\b2^__¢¡,4¬ÄlxrÚá˜K&–5ç´(ÇØø¶%∞zöïâX.\nV≤|Å\n ãî¢ä#¬“Ø\0]¡\0FII)‚Õë‡´íPtÆçÇ^„fÚÎw%ŒË5/ØÄ(´N”\r\"%≈ïÊ¯W,\nZ¢À+åÀ%ˇåp£îöK¨Ú˙^˝¯˜·´∑?:¨	/6%[,+dè«°ÈXéèx“\'6@/øÄ8ÇÒ§-i\rÄ¡¥¨D%R±5(rù”R\0õã<·eÜ+¿SÚ»°.Y¥“\rUkÂjSpw¿À≈ƒ4Â‡•,øäÈ‘`Äc†eIì©1úc£,Ü„(¥‚pÑ«!N\\JàbQgƒqGcxXbò‡µD¿?\n‰20Ápù«ÉåëíûT≈ú™bUJg/¿üXz6‘o\'⁄ø§†&˝y≈÷S„ãπ¬&x@zE)5PÌ¿S„‚Âî∆j4X9ÿ‘XP∞ÆxŸÅ‘ˆ?}ŸÉ]3z]≤ÍÄ^≥∏ZNc\n™PSΩ<k¿ßtj?C‡π,[eMCèj…#‡MÓÂY¬”î_˜`´kVU¥ú\\∆± 2\\nz¿∏\0ó631x¿D0°¡$∏¿ªv…yﬂ$ú/z0ørëÇ3ª„/™MJ≈í“™ıÂ-ÕäaÌÌ≠ÁÁ0∫bËÑ^Ñ«ƒw=Œ8v√Ñ∏±EÅC)åi2≤CG	Ç±R€ßû#›»Úì0\ZÇFí“ÄÒ\';úëeç-«@çÌ”TÍı0Y•„¿TÅI9Ãhπ†±È:$pÇù0§A‡éõå:äkÏy·»31\rcwL©=≤q@|\'ƒvõPﬂä@)gWæ©Âº`ƒqÇ©G=€ˆ£»ríÿÛ£ƒä#ö6ÃΩ\0^Hdá#Àé„—»Gd8\0d—Òq˘Ùß#%¡9œ8r+d¨¶§1eÜzÂ?ãxºA,û\ZÖnîÇSZL…GJ◊45m3V≤ŸB¯Õ„o¯™2À‰j\\ø≈4¡´¥RÆ≥µ\"\\Ò¬òù\r·u¶k.í≥-$¨å?Rx˝l1	ÁWå HÜµ:LâÁ(∆ï\\::›&Ωb2∞ÈÊ˝ÒbÛo`æ\0_„t»˘R8IÙ˛Ù’\\H“ÚÒR¥rçó}‚±|2p\"∞¸1F;ÒXäÜßåínVi`|–ÇV*~GTTDKFsíD Z6èï4f\"c‚®Ω_Ò\n±Í´«r¿j°=Bˇ[	[-”|så…J`ñ—«íó3Ù˘(.sîÒÚ—‰t?∆·°tıÏ>F1¬Ç≥û§.äc¥$?•Ypd&3û#2CÜ ≥áR.Èö_È∏|;iÎ°TEIyRí)\'¯.<ú(æÜ§}ŸÁÊú«Gm“%]Äƒ8˝ùÂˆñvX⁄‡°˛£˙sÜõ`≥fb%}s…bòﬁf¬…J»QTQŒW¨0ıº‘°Ú2ÃÚ“ﬁÖ∂·¨•Ÿ*3ª$π¿JP¥ÖÌj≠Äáxˆdb©Ê¶–ªS®\Z˜ó(ÅƒQN¸#I8§·nóg;é2ï—ÀâŒN$ó&‚6	Ñ¨#€f9nÊÓ¯5≠u~“º.±0U!”4®\\E˚k\'Sëfr¿£˝fﬁÍ\'[[÷D£Rñl›Õ¥MÀåﬁh(˛,[¢c¶|¡Õ\\VÉê◊âí<®öìl≈∞-‹Î∫} ÷·ÍÂ6íGe]:5|H‘uÌd@éﬂ„ùóªÂf˘öñPg?ï‰5Ωß–‡Dπ·……^áÓÑbªG⁄U≠‚®ø§_§).ÑTLó«\Z∫^√\"QJW“Äù≈Aµø‚ \\2¨¶z…S°ı⁄ÎÜlKaÇ$8ïTUk\n∂É¸ˇΩ‚âˆºT/≈1u	ø]\\µ]≥(\nÄµ√ÍıÓh®9€ó∏ùM⁄ÕåhM2€s¶ì_›¶$X•=\r‡—ùÖ˚({ÑÓ›5Uáô	)rv@ÿ\Zﬂ⁄%?“2\r”3é¬÷Î.…í≠ÈqÿéÄ™læ®ïÍ8Í„;µèÆ Rm>h<äpªŸÓ‰’w[≠]EøÙ·°œ∑⁄Ñw¬ó†∑ˆ˚ÒÌù∑cu\"M\\Ú\"Ê◊πô—|uáZªÛ∞<*7:‹ï≤ŸÅ…µÛÂl∏JgáÁ`o=¬xÃ˙»∫‚Í‹O—:ôZ´√ôZª€pﬂ§9˝x_∑´“G“¿r√Zm^æ¸ˆ›˘˜Ûr \\ÓÜn•ﬂ˛Ô\Zø&ÖÍgg3£´˜é≈∑[^+&J‰˛≤˛ﬂ&˙M∆p[—ºÔÓö‘çÇ˝“«”Å¨◊(˜a%‰‚1§y√<î@M†|‹o«	§_›ÊúwËË¨§óƒu§Q$la∂ô–/Ω\r¬¡A¯C.u;≠m6÷{?0`wS;&S+€ˆ_ﬂâwﬂ∫‰Kµ#‹g\n¡Œ¥ùÆ∑.˝ô„,w è`∂¯≥ÓÙπæ=˚û¶)G°9|{ˇäYE‘≈√W2ØÂdâ2∫Ñ<ÍÙ>ôÜ⁄#-sŒ3yd#⁄Â∑ˇë ù\"≈‡vó2´ï¢›Y˝Sıe.ñƒí‰†s›¸µˇ\\~Ìøò\nº¶5◊opVúﬁäRß~êïI4}ö¢0»˜X,ßëoç¸(∂7àÇ–ıÏ0∂\"œÚ«1±Ì`ú»›·j…cµã®>0®9z+˛≥ºXUu“™KæÙ∞`ÁsHJ(D¸Ú”«?”Ê4ÎìÅöMœ\ZÁ9‡h¯õYlÕ∞Â°çÒ‘ı∏l)«OE≤˙ïr›-ÌÔ˘/oÚÍó7ü?å.≤Ô>«Ø“uƒ.Úwﬁ∞ø\\˝Îﬂ-Ò?ØŸ˜ıË«ú}»æ¨ˇµQ˝_ﬁ∞˚‚≥ƒ}y\r∞ü#«∑H6—´lt;–ºzó∆Øæ+¢Ûã ˘€t:¢^\'!&~`Ò≈c/Ä–@∞yNO\\Ö<ÖK˙Û\nVë≠≤ø~ÛÛäWß[—Ô˝Ë:ânyV√oá{°vˇP=v;`qÏfÏ/£8º±MÇò„–√◊ë„z˛»\r…à8Pk>Zˇ™\\	(>ﬂB“U(£bO˝f¢kÎ∆®U∫iôœ´Xµ©€Ìõg;xc\r˚Ÿ!¬ˆÕM8^‡˘ò:∂Îè¨ªÅ—ÿÒIà=lç-{Ïáa=ÿù5æ]–lÄZÜOe„ßè[%∂fª£nÜET\'á“U\\Œ>»£	)H#b∑vó¶ÏV’¿=•nMª◊@“èY)ÍÊõ‘\0≤e%J/È›ÀÆ•Z-:ì¬„í‚√\n>H©O5=\ZøÉJ;ÉU9Ç?≥(ô:ÓÆ«G¨¢åU≠Ω/!6˙+O9\"ÃŸP≤?ú\\®ÛX›•¥Bø∂hjﬂgÇlÀ˙˙T5ﬁ\0Z\rﬂ›mlûè+¶v≤f_ßÌ<lã†›∂¥W’PH˚Õ∆\Z≤jR6Ω≈∫≠¢Í≠Ÿ~µ∑c€’ΩW*ù5ïQØP“4Ã√Ø¶º¶–Mò˙©˜ìî1ˇ°jÂø¶*yTÁO=p2?POˇ&6Gÿı¸„^ÏéÃœ=é∑œ◊=≤O§Ô´⁄‹ûx∞∫äﬁ*U≥π!2W{C\ráˆbFo«hwZl70±æYvh≥ıVÖpÔ˛àzmnö+´ªº„55^ÊãîâÂjÍs°\Zˆ—{jΩuUngÌt›∫yu;ßˇáiØ>‘c†(∑ syOÚöUÀÌÿ…ãwı5Ãˆí å[}¯0è`8Ø}o(ÁMb≈ΩºK)ó\"{‰`®˚á;dè^Ô|èΩ•íﬂ@m)¸ﬂF¡âº^ Ú+Ò∏©ﬂ›ù<H´s“P{åwù‘˝ÔÔ€´ ˝≠{G·>üßt‚{–˙O$Ω˙kùnÏgõ	Îi‘ÏˆµÖë rá@÷7ëÁR5…{™µæõ–9ŒÔmÒ˜Œ;€`}°Æ3\0ÅU}f}èõûæ3é\"{îD8àâxAl[Q˙8víÑ∏æÈÜ#£–¬Ò»w©MC+Lí»#ﬁà∫#œ|ﬁπË)T\"Ã¥TÚÍ§:Zë∑˙’}ªΩ˛ˇ^ﬁ¶Ç&«õ®rXù∂˚ıΩ~ıÅâqÒ„{ñìKE⁄8≈kÚÎ\rÙåv{Ê≤®ﬁˆz˙∑Ô•·œ1YRŸgÀ_%x·D_»˛È¸ıÂOÁ∞ƒˇÙ∂Å¸È%ºå€˜∑%_3yõD~ıéﬁÈçzÉ(Ä≥B˛¥°1BËHë›â!≥∆∏¬óïº‚‹pvÈ-OŸº£X˚ ÕdÚ«lU©ìÁsπù§‹L(√Låèüß1M*/Ñ\"¥ÿƒ:m_!ÊÆ¢€‚…%ç51ƒFÃñ“π›¸√wZ•∞Úú_w{}$G∂˙∑\"©ÓQó∑\"‘ÉWUÛz»µL!¥ª˛dãÄÀÚpûÒò¶s’‚K1Ä{Œ‡um>/X¨≈±•uB-œE,Õs£‰S∑m©há,\\≤õü$S');
/*!40000 ALTER TABLE `cache_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_pages_tags`
--

DROP TABLE IF EXISTS `cache_pages_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_pages_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `tag` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(191)),
  KEY `cache_tag` (`tag`(191))
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_pages_tags`
--

LOCK TABLES `cache_pages_tags` WRITE;
/*!40000 ALTER TABLE `cache_pages_tags` DISABLE KEYS */;
INSERT INTO `cache_pages_tags` VALUES
(1,'1_e3088e888e703b42','pages_1'),
(2,'1_e3088e888e703b42','pages_4'),
(3,'1_e3088e888e703b42','sys_file_1'),
(4,'1_e3088e888e703b42','sys_file_metadata_1'),
(5,'1_e3088e888e703b42','sys_file_2'),
(6,'1_e3088e888e703b42','sys_file_metadata_2'),
(7,'1_e3088e888e703b42','tt_content_1'),
(8,'1_e3088e888e703b42','tt_content_2'),
(9,'1_e3088e888e703b42','tx_workshopblog_domain_model_blog_pid_2'),
(10,'1_e3088e888e703b42','tx_workshopblog_domain_model_blog_5'),
(11,'1_e3088e888e703b42','tx_workshopblog_domain_model_blog_1'),
(12,'1_e3088e888e703b42','pages_3'),
(13,'1_e3088e888e703b42','pageId_1'),
(14,'3_6460514088ff5ee7','pages_3'),
(15,'3_6460514088ff5ee7','pages_4'),
(16,'3_6460514088ff5ee7','sys_file_1'),
(17,'3_6460514088ff5ee7','sys_file_metadata_1'),
(18,'3_6460514088ff5ee7','sys_file_2'),
(19,'3_6460514088ff5ee7','sys_file_metadata_2'),
(20,'3_6460514088ff5ee7','pages_1'),
(21,'3_6460514088ff5ee7','tt_content_4'),
(22,'3_6460514088ff5ee7','tx_workshopblog_domain_model_blog_5'),
(23,'3_6460514088ff5ee7','tx_workshopblog_domain_model_comment_pid_2'),
(24,'3_6460514088ff5ee7','pageId_3');
/*!40000 ALTER TABLE `cache_pages_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_rootline`
--

DROP TABLE IF EXISTS `cache_rootline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_rootline` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `expires` int(10) unsigned NOT NULL DEFAULT 0,
  `content` longblob DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(180),`expires`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_rootline`
--

LOCK TABLES `cache_rootline` WRITE;
/*!40000 ALTER TABLE `cache_rootline` DISABLE KEYS */;
INSERT INTO `cache_rootline` VALUES
(1,'1__0_0_0_0',1745192980,'xúuVMo€0˝/>õù4mßûÜmXC/i;	ä%;BlÀì‰¶A—ˇ>⁄˙¢íÏf=ííHÒ=öëäºKR>0rø\"ÔÜ¨I1I^<HR=,´—≠JX›í¬\ZÀ˙q1ﬂn õ€uUnú•÷úYë,´Õ›XæŒñ…M”Æw§‡¢V‡ù˜ís1\0¬‡$m≠ÏE¿ L#˜§hmµö‡JÜî§(úüQ⁄ °\r~’\r)¥:˛¶÷r¥R¡9O.^pi;U¢+\\≈úÌÿ–N¨tJ˘W)∫™Ë»¥Ïl‘§Îxπ™∞]\nÛ‰1ª¶JÀÔªÒû\\6Mÿn∑Yë‚Ω‡Í`O£( πOÖÖ€˙O”M≠˚\Zÿ+≈ÜiáV≥Q÷\nÆ!léxo°p0G5rﬁä Åã∑∏jT◊©£ñVÙl§ı %\Z-˛Ê¯®%‰jOU->	Vá&{®∫Oˆ(≠ÖŒAA∫àÜ+·5”‹!lg¨fµØ√AúéJs„mì›+çø)§ ;átÃÿóqÓpÄìöBA≈Òe∞¡u«ÍÙ)≈9FÒfi\'^Ö±˚©ﬂ\rÒ0x˝E≠z:Ûœ91›Ü\'¨YΩt¶B<¬C¨ı˘HCÁW–JŸ¯tF0]Ô›r‹è‘j!†=’Ë†^Ò)∫b0∞Å5ûf®ª	*Ô‡Á≠É}=™˚Å÷ç_y2«vÉuhŒ»ÍeÌoê6V€i7¬+˙s\"√√™S≠(\\6Ñ\n˚:X—B”Ö3ﬁˆQ8Å±ÎWËÖxXhr÷;‘˘\n‹&8;\n›:ã^“ºj%d(q¿åÆ+ø=ÚO¯&‡–>˙¥S¸vãc\n|É‡=™>|.R1ì‚ãW»†*>î0æßS*≈-Ñ”»:«Á=œ\r›!Ü\rê»÷S u¬‹˚%è¢ïv\0%ˆBÛ«ë 9A“ÆU¥Ë1‚k:$2ﬁ•◊…âÑ˙\0—)À)rµ?ü+–\\âmH‰∑∂Ù˜∑ÌÛ˜«oOø~˛¿cÙ∆øBî®e#»ÿì•‡SRÖºé!ˇ…-ôÊ{∆ŸëßHã∆‚Ö,•Y›´	õç UzÑ®®+rV£©}&¶ùs∂ÜBwˆ£ª˘jsÓãEˆøa’π\"oqT#-…äñff^¥0*Sa“ºLàcΩ—\r9üá·%éD‰\rÀg#≤}%WádÏ¯|PÊmíMLˇ\'5ı=”ßp…ö\rjê5Îh\'á√YW^L}ßÂÁÕ‚qOÆ˝/‰7»˛VÚ¨¢	⁄ÿH°/{v˘Ø…ﬁ*Õ÷\0|¸≠”x¬'),
(2,'4__0_0_0_0',1745192980,'xúÌVKè„6˛/>];œYÕi–-∫áb.ô=Ù$(∂Ï±-Wí\',Êøó≤ﬁväES47Ò£$≈è$A+Ùù°‚ë†XI¥FŸ»™Ïë°Õ„$\rF*@⁄°LIE∫av€|≥€¨˜[£)EEç5ªh>kÕ(©¿·û= *⁄RE\'$7ÁO¨™hÔ\08/	•XG«h_≈» jä¡G0I¢eôŸ\'πP¨oÙæùˆ£ÿ†LÀ*K¡≈8<Ùl.†S-/œÓŒlëWâ[“7#i(∂·òt ⁄\"ÔÒ@Ì’ñ|•∑Æ»¨¶»<[L≠1¨âÔ›⁄ù´kw	X∑_°Ï{VÒ≥∫4Ô~»Xkó≤≥Í…+é„1í¥íïÃ†*EÏn „√U#≥õc÷WÙÕK5o[~1bIzﬁ≥í¥∏e˝Ÿ^»Ì»ÄÀÑê÷Ç˛û‚É`‡ø∫\Zî7ÒÎ -\0åu6\0¶§St»AãìNq„xIDerîJê“∆ÊLØ.*iu£:qØ1∏¿ZÉ¥D™oÉN˚ W>∫ ”À∑^π≠GRû!yqº#≈pOﬂnÈ+µG‘iÏéΩ˛KAŒ·ZkRöMD4Ó[KRû(÷¸OXà4÷&±˛¡πÚﬂ))Â…à√i¿JP\n)Àuº\Z]†; ±K0®f5}Ÿéyøl„Q<Ù∏¨≠dÓSdó∞ûÍìËXnÑ7pªz·áÒ8¿/⁄w<Ìù‘ÚÜıåu«≠mm È‹ÒY-\0Ï=3UG≠_!;xƒÕ‹ÅôVÉZrﬂÄõ\0è*:âu%Ö∞X;|r&R‰ÒçÆ{}¥?‡[áC˙àÎëWW˜4hSLa|ÇØfØì%q™ ¶~\"A£Î≥≠9÷ÿ‡÷‘1∞$N&Á®v(…!´–mE¥QëÜ%–IïcrÿaÊ\'Cô˜%-‹\0u⁄≤)4Ká∞	‹7I†©ZGÃ\rèxÓ¡úîRQFDƒJ|Ú¨è¢öwH≥¿ª®~;‡_ü/?}}z˛ÂÁ/ã.˜˚b5][zFÓ∏‡Làê≠h—˛JK[Pi;}gI›tÙçöÊ¢@ÖVﬁÒ¶ı ÊmÙ	æfDYëÚ€) Åge5ÿ∏⁄Œïq}çºﬂ£•Ã∑Í®n$a	=3\rãkï¡ı–/ÉãæÂEvl–º˜π≈∑øh7ƒ$ÌÉëÓ3∫Ÿ}NßM1MÑ§;⁄QjÏ:\"ÆŒ»Y√OÛn—·\rÛÛ∑”étk6H-H¶ï‘+ØÇƒé’åäeVNsMÚW°è:¯]ˇƒr‡-íÅ◊UîŸ¿ª.Ú?xW€˝˛#ºéˇ¡yw˚·Á›˚l{ümÔ≥ÌòmãŸlÔ+ÔÊÉ-‹˘ÈüO¥ﬁç˚D˚oO¥ÎbS‹\'⁄ø5—jT˚¨$ÜÏÏc˘_∏∑è›Á›ˇ„º˚˛7∆Óù'),
(3,'3__0_0_0_0',1745192980,'xúÌVKè€8˛/>[;â\'©ÊTt€C1óL{KqÑÿñ+…ì	ä˘Ô•≠∑`Å≈≤hn‚G=Hä¸HÇË\'G≈#AX)¥DŸ¿iˆ»—Úqíz# =†L+M⁄~ |ı∞ZñFSIJ4ã5´QÛi‘äIÓY£å≤Üi6!π9‡î≤Œp^íZÛñ9é±é∆»e{Ük)0I°eôŸßÑ‘º´ß¿ä §8=1UIﬁk.‡•gs£\\7¢:∫K0FùnHW§fÿ∆c“(käº√=ë¨”∞É¨ºyEÓ`=ÖÊŸbzâÖ‰u|oiwRæﬂªK¿∫ıe?3*é˙‹≥‹˚êi∞÷.U3‘f’ëW+Ü]$çJ^	0ÉÈ±ªôà”(Ff∑¿º£ÏÕK{—4‚dƒät¢„ip√ª£Ωêk÷íW!€Kˆ#≈{…¡}6®®„◊A∫0\00ﬁ¬Oÿ\0ú∏÷êO—!]útä+«+\"©A»NiI*õ#;üÑ§ Í}2^cpÅ7ià“ﬂ˚1Ô©ŒbpAfßÔùv[w§:Bˆ‚xGä·éΩi‹∞WfèË√–Ó:ˇ¸óÜú√{)Z<V•ŸDdÌæµ\"’Å·±@¸\"µıá+<˛ÇB˚ÔTå»Í`ƒ˛–c-ÉîΩÅZAËäÖÿá¥Á5]’yøl\rl„Ql:\\Ì≠dK‹ß ».a}≠O¢+s#ºÅ€ÙElá]øhﬂÒuÔ§F‘º√`¨;Ê ⁄∆A≥\ZíŒüq`Ôô°Ω|ÖÏQmÊ<©î	jã˚\n\\Í∏g≤Ux§¬¿Ñ≈“·ì3ë\"èLt\\ÿÎ£˝/È#œ;AœÓi–òJ14˚ƒÙòQ \0#NbÛ#ıäëû-„XkÄ%˝ø\Z;‚TrnéÓ$dcWëMƒ—p£Çb“’êvò˘«¿Úû–¬\r‡ã≠•–Cl1ÑM‡ºIŸ\0M\\’mxƒWæqÃI* á®¨ü|ÕGÈ@Á=í,T]‘\0∂oÒ∑œ€ó/_??ˇıÁ”EìÖ˚=UMÅ«∂8#˜\0º®ò!Àg—˛Jâ-®F;}_I›t≈Î≤uÏˇsz\nùº(\"l|‘ÉX4—\'x∆à≤\"≠nßÄ¸ùëj∞qQŒï1ªFﬁØ—\"Ûç:bç$,°c¶aqç2∏∫ep—7º»éöw>7û¯ÊÌÜò§]0“}BW€°œÈ¥%¶âêÙF;I\rmK‰Ÿ9k˜iﬁ]ÙwS˘˘Â¥cÉÆM©…¨ízÂUêxPc{Œ‰eVNSMÚW°ã:¯}¸âÀy∑HÊ]«(≥ywY‰ÂıywQÆ◊∑0Ô∫⁄¯NªÂÕOª˜…ˆ>Ÿﬁ\'€òlãŸdÑ˜U¥nÈÊZ∏Û„øühΩ˜âˆøûhó≈™∏Ÿâ÷µ≈€òhGtÙY+ŸŸˆ∆ÚpØªœªø„º˚˛r·ÌÍ');
/*!40000 ALTER TABLE `cache_rootline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_rootline_tags`
--

DROP TABLE IF EXISTS `cache_rootline_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_rootline_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `tag` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(191)),
  KEY `cache_tag` (`tag`(191))
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_rootline_tags`
--

LOCK TABLES `cache_rootline_tags` WRITE;
/*!40000 ALTER TABLE `cache_rootline_tags` DISABLE KEYS */;
INSERT INTO `cache_rootline_tags` VALUES
(1,'1__0_0_0_0','pageId_1'),
(2,'4__0_0_0_0','pageId_1'),
(3,'4__0_0_0_0','pageId_4'),
(4,'3__0_0_0_0','pageId_1'),
(5,'3__0_0_0_0','pageId_3');
/*!40000 ALTER TABLE `cache_rootline_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_groups`
--

DROP TABLE IF EXISTS `fe_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fe_groups` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `title` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `subgroup` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_groups`
--

LOCK TABLES `fe_groups` WRITE;
/*!40000 ALTER TABLE `fe_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_sessions`
--

DROP TABLE IF EXISTS `fe_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fe_sessions` (
  `ses_id` varchar(190) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `ses_iplock` varchar(39) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `ses_userid` int(10) unsigned NOT NULL DEFAULT 0,
  `ses_tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `ses_data` mediumblob DEFAULT NULL,
  `ses_permanent` smallint(5) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`ses_id`),
  KEY `ses_tstamp` (`ses_tstamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_sessions`
--

LOCK TABLES `fe_sessions` WRITE;
/*!40000 ALTER TABLE `fe_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_users`
--

DROP TABLE IF EXISTS `fe_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fe_users` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `disable` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `tx_extbase_type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '0',
  `uc` blob DEFAULT NULL,
  `is_online` int(10) unsigned NOT NULL DEFAULT 0,
  `mfa` mediumblob DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `password` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `usergroup` varchar(512) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '',
  `name` varchar(160) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `first_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `middle_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `last_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `address` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `telephone` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `fax` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `title` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `zip` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `city` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `country` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `www` varchar(80) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `company` varchar(80) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `image` int(10) unsigned NOT NULL DEFAULT 0,
  `lastlogin` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`username`(100)),
  KEY `username` (`username`(100)),
  KEY `is_online` (`is_online`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_users`
--

LOCK TABLES `fe_users` WRITE;
/*!40000 ALTER TABLE `fe_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `fe_group` varchar(255) NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT 0,
  `rowDescription` text DEFAULT NULL,
  `editlock` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_source` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
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
  `title` varchar(255) NOT NULL DEFAULT '',
  `slug` text DEFAULT NULL,
  `doktype` int(10) unsigned NOT NULL DEFAULT 0,
  `TSconfig` longtext DEFAULT NULL,
  `is_siteroot` smallint(5) unsigned NOT NULL DEFAULT 0,
  `php_tree_stop` smallint(5) unsigned NOT NULL DEFAULT 0,
  `url` varchar(255) NOT NULL DEFAULT '',
  `shortcut` int(10) unsigned NOT NULL DEFAULT 0,
  `shortcut_mode` int(10) unsigned NOT NULL DEFAULT 0,
  `subtitle` varchar(255) NOT NULL DEFAULT '',
  `layout` int(10) unsigned NOT NULL DEFAULT 0,
  `target` varchar(80) NOT NULL DEFAULT '',
  `media` int(10) unsigned NOT NULL DEFAULT 0,
  `lastUpdated` bigint(20) NOT NULL DEFAULT 0,
  `keywords` longtext DEFAULT NULL,
  `cache_timeout` int(10) unsigned NOT NULL DEFAULT 0,
  `cache_tags` varchar(255) NOT NULL DEFAULT '',
  `newUntil` bigint(20) NOT NULL DEFAULT 0,
  `description` longtext DEFAULT NULL,
  `no_search` smallint(5) unsigned NOT NULL DEFAULT 0,
  `SYS_LASTCHANGED` int(10) unsigned NOT NULL DEFAULT 0,
  `abstract` longtext DEFAULT NULL,
  `module` varchar(255) NOT NULL DEFAULT '',
  `extendToSubpages` smallint(5) unsigned NOT NULL DEFAULT 0,
  `author` varchar(255) NOT NULL DEFAULT '',
  `author_email` varchar(255) NOT NULL DEFAULT '',
  `nav_title` varchar(255) NOT NULL DEFAULT '',
  `nav_hide` smallint(5) unsigned NOT NULL DEFAULT 0,
  `content_from_pid` int(10) unsigned NOT NULL DEFAULT 0,
  `mount_pid` int(10) unsigned NOT NULL DEFAULT 0,
  `mount_pid_ol` smallint(6) NOT NULL DEFAULT 0,
  `l18n_cfg` smallint(5) unsigned NOT NULL DEFAULT 0,
  `fe_login_mode` smallint(6) NOT NULL DEFAULT 0,
  `backend_layout` varchar(64) NOT NULL DEFAULT '',
  `backend_layout_next_level` varchar(64) NOT NULL DEFAULT '',
  `tsconfig_includes` longtext DEFAULT NULL,
  `categories` int(10) unsigned NOT NULL DEFAULT 0,
  `seo_title` varchar(255) NOT NULL DEFAULT '',
  `no_index` smallint(5) unsigned NOT NULL DEFAULT 0,
  `no_follow` smallint(5) unsigned NOT NULL DEFAULT 0,
  `og_title` varchar(255) NOT NULL DEFAULT '',
  `og_description` longtext DEFAULT NULL,
  `og_image` int(10) unsigned NOT NULL DEFAULT 0,
  `twitter_title` varchar(255) NOT NULL DEFAULT '',
  `twitter_description` longtext DEFAULT NULL,
  `twitter_image` int(10) unsigned NOT NULL DEFAULT 0,
  `twitter_card` varchar(255) NOT NULL DEFAULT '',
  `canonical_link` text NOT NULL DEFAULT '',
  `sitemap_priority` decimal(2,1) NOT NULL DEFAULT 0.5,
  `sitemap_changefreq` varchar(10) NOT NULL DEFAULT '',
  `nav_icon_set` varchar(255) NOT NULL DEFAULT '',
  `nav_icon_identifier` varchar(255) NOT NULL DEFAULT '',
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
INSERT INTO `pages` VALUES
(1,0,1650463105,1650462577,1,0,0,0,0,'',0,NULL,0,0,0,0,NULL,0,'{\"doktype\":\"\",\"title\":\"\",\"slug\":\"\",\"nav_title\":\"\",\"subtitle\":\"\",\"nav_icon_set\":\"\",\"nav_icon\":\"\",\"seo_title\":\"\",\"description\":\"\",\"no_index\":\"\",\"no_follow\":\"\",\"sitemap_changefreq\":\"\",\"sitemap_priority\":\"\",\"og_title\":\"\",\"og_description\":\"\",\"og_image\":\"\",\"twitter_title\":\"\",\"twitter_description\":\"\",\"twitter_image\":\"\",\"twitter_card\":\"\",\"abstract\":\"\",\"keywords\":\"\",\"author\":\"\",\"author_email\":\"\",\"lastUpdated\":\"\",\"layout\":\"\",\"newUntil\":\"\",\"backend_layout\":\"\",\"backend_layout_next_level\":\"\",\"thumbnail\":\"\",\"content_from_pid\":\"\",\"target\":\"\",\"cache_timeout\":\"\",\"cache_tags\":\"\",\"is_siteroot\":\"\",\"no_search\":\"\",\"php_tree_stop\":\"\",\"module\":\"\",\"media\":\"\",\"tsconfig_includes\":\"\",\"TSconfig\":\"\",\"l18n_cfg\":\"\",\"hidden\":\"\",\"nav_hide\":\"\",\"starttime\":\"\",\"endtime\":\"\",\"extendToSubpages\":\"\",\"fe_group\":\"\",\"fe_login_mode\":\"\",\"editlock\":\"\",\"categories\":\"\",\"rowDescription\":\"\"}',0,0,0,0,1,1,31,31,1,'Home','/',1,NULL,1,0,'',0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,1650463141,NULL,'',0,'','','',0,0,0,0,0,0,'pagets__simple','pagets__simple',NULL,0,'',0,0,'',NULL,0,'',NULL,0,'summary','',0.5,'','','',0,0),
(2,1,1650464385,1650464339,1,0,0,0,0,'0',256,NULL,0,0,0,0,NULL,0,'{\"doktype\":\"\",\"title\":\"\",\"slug\":\"\",\"backend_layout\":\"\",\"backend_layout_next_level\":\"\",\"module\":\"\",\"media\":\"\",\"tsconfig_includes\":\"\",\"TSconfig\":\"\",\"hidden\":\"\",\"editlock\":\"\",\"categories\":\"\",\"rowDescription\":\"\"}',0,0,0,0,1,1,31,31,0,'Articles','/articles',254,NULL,0,0,'',0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,0,0,'','',NULL,0,'',0,0,'',NULL,0,'',NULL,0,'summary','',0.5,'','','',0,0),
(3,1,1650464356,1650464346,1,0,0,0,0,'',128,NULL,0,0,0,0,NULL,0,'{\"doktype\":\"\",\"title\":\"\",\"slug\":\"\",\"nav_title\":\"\",\"subtitle\":\"\",\"nav_icon_set\":\"\",\"nav_icon\":\"\",\"seo_title\":\"\",\"description\":\"\",\"no_index\":\"\",\"no_follow\":\"\",\"canonical_link\":\"\",\"sitemap_changefreq\":\"\",\"sitemap_priority\":\"\",\"og_title\":\"\",\"og_description\":\"\",\"og_image\":\"\",\"twitter_title\":\"\",\"twitter_description\":\"\",\"twitter_image\":\"\",\"twitter_card\":\"\",\"abstract\":\"\",\"keywords\":\"\",\"author\":\"\",\"author_email\":\"\",\"lastUpdated\":\"\",\"layout\":\"\",\"newUntil\":\"\",\"backend_layout\":\"\",\"backend_layout_next_level\":\"\",\"thumbnail\":\"\",\"content_from_pid\":\"\",\"target\":\"\",\"cache_timeout\":\"\",\"cache_tags\":\"\",\"is_siteroot\":\"\",\"no_search\":\"\",\"php_tree_stop\":\"\",\"module\":\"\",\"media\":\"\",\"tsconfig_includes\":\"\",\"TSconfig\":\"\",\"l18n_cfg\":\"\",\"hidden\":\"\",\"nav_hide\":\"\",\"starttime\":\"\",\"endtime\":\"\",\"extendToSubpages\":\"\",\"fe_group\":\"\",\"fe_login_mode\":\"\",\"editlock\":\"\",\"categories\":\"\",\"rowDescription\":\"\"}',0,0,0,0,1,1,31,31,0,'Detail','/detail',1,NULL,0,0,'',0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,1650464356,NULL,'',0,'','','',1,0,0,0,0,0,'','',NULL,0,'',0,0,'',NULL,0,'',NULL,0,'summary','',0.5,'','','',0,0),
(4,1,1650464375,1650464366,1,0,0,0,0,'',64,NULL,0,0,0,0,NULL,0,'{\"doktype\":\"\",\"title\":\"\",\"slug\":\"\",\"nav_title\":\"\",\"subtitle\":\"\",\"nav_icon_set\":\"\",\"nav_icon\":\"\",\"seo_title\":\"\",\"description\":\"\",\"no_index\":\"\",\"no_follow\":\"\",\"canonical_link\":\"\",\"sitemap_changefreq\":\"\",\"sitemap_priority\":\"\",\"og_title\":\"\",\"og_description\":\"\",\"og_image\":\"\",\"twitter_title\":\"\",\"twitter_description\":\"\",\"twitter_image\":\"\",\"twitter_card\":\"\",\"abstract\":\"\",\"keywords\":\"\",\"author\":\"\",\"author_email\":\"\",\"lastUpdated\":\"\",\"layout\":\"\",\"newUntil\":\"\",\"backend_layout\":\"\",\"backend_layout_next_level\":\"\",\"thumbnail\":\"\",\"content_from_pid\":\"\",\"target\":\"\",\"cache_timeout\":\"\",\"cache_tags\":\"\",\"is_siteroot\":\"\",\"no_search\":\"\",\"php_tree_stop\":\"\",\"module\":\"\",\"media\":\"\",\"tsconfig_includes\":\"\",\"TSconfig\":\"\",\"l18n_cfg\":\"\",\"hidden\":\"\",\"nav_hide\":\"\",\"starttime\":\"\",\"endtime\":\"\",\"extendToSubpages\":\"\",\"fe_group\":\"\",\"fe_login_mode\":\"\",\"editlock\":\"\",\"categories\":\"\",\"rowDescription\":\"\"}',0,0,0,0,1,1,31,31,0,'Archive','/archive',1,NULL,0,0,'',0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,1650464375,NULL,'',0,'','','',0,0,0,0,0,0,'','',NULL,0,'',0,0,'',NULL,0,'',NULL,0,'summary','',0.5,'','','',0,0);
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_be_shortcuts`
--

DROP TABLE IF EXISTS `sys_be_shortcuts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_be_shortcuts` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL DEFAULT 0,
  `route` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `arguments` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `sorting` int(11) NOT NULL DEFAULT 0,
  `sc_group` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `event` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_be_shortcuts`
--

LOCK TABLES `sys_be_shortcuts` WRITE;
/*!40000 ALTER TABLE `sys_be_shortcuts` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_be_shortcuts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_category`
--

DROP TABLE IF EXISTS `sys_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_category` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `items` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `parent` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `category_parent` (`parent`),
  KEY `category_list` (`pid`,`deleted`,`sys_language_uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_category`
--

LOCK TABLES `sys_category` WRITE;
/*!40000 ALTER TABLE `sys_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_category_record_mm`
--

DROP TABLE IF EXISTS `sys_category_record_mm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_category_record_mm` (
  `uid_local` int(10) unsigned NOT NULL DEFAULT 0,
  `uid_foreign` int(10) unsigned NOT NULL DEFAULT 0,
  `sorting` int(10) unsigned NOT NULL DEFAULT 0,
  `sorting_foreign` int(10) unsigned NOT NULL DEFAULT 0,
  `tablenames` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `fieldname` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`uid_local`,`uid_foreign`,`tablenames`,`fieldname`),
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_category_record_mm`
--

LOCK TABLES `sys_category_record_mm` WRITE;
/*!40000 ALTER TABLE `sys_category_record_mm` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_category_record_mm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_csp_resolution`
--

DROP TABLE IF EXISTS `sys_csp_resolution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_csp_resolution` (
  `summary` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `created` int(10) unsigned NOT NULL,
  `scope` varchar(264) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `mutation_identifier` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `mutation_collection` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `meta` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`summary`),
  KEY `created` (`created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_csp_resolution`
--

LOCK TABLES `sys_csp_resolution` WRITE;
/*!40000 ALTER TABLE `sys_csp_resolution` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_csp_resolution` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file`
--

DROP TABLE IF EXISTS `sys_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `last_indexed` int(11) NOT NULL DEFAULT 0,
  `identifier` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `identifier_hash` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `folder_hash` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `extension` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `name` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `sha1` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `creation_date` int(11) NOT NULL DEFAULT 0,
  `modification_date` int(11) NOT NULL DEFAULT 0,
  `storage` int(10) unsigned NOT NULL DEFAULT 0,
  `type` int(10) unsigned NOT NULL DEFAULT 0,
  `mime_type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `size` int(11) NOT NULL DEFAULT 0,
  `missing` smallint(5) unsigned NOT NULL DEFAULT 0,
  `metadata` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `sel01` (`storage`,`identifier_hash`),
  KEY `folder` (`storage`,`folder_hash`),
  KEY `tstamp` (`tstamp`),
  KEY `lastindex` (`last_indexed`),
  KEY `sha1` (`sha1`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file`
--

LOCK TABLES `sys_file` WRITE;
/*!40000 ALTER TABLE `sys_file` DISABLE KEYS */;
INSERT INTO `sys_file` VALUES
(1,0,1742600900,1742600900,'/_assets/9b80d86a98af3ecc38aabe297d2c3695/Images/BootstrapPackage.svg','760d1af8a806b3df149ba4826a7f15c966215a7c','5e8c86041e2022a51f63bbaf56b3ae90109db902','svg','BootstrapPackage.svg','a6fb0cc7b50579d6255f16171147695a55b93c27',1742600112,1728925893,0,2,'image/svg+xml',3843,0,0),
(2,0,1742600900,1742600900,'/_assets/9b80d86a98af3ecc38aabe297d2c3695/Images/BootstrapPackageInverted.svg','f4a6353e4d97d78f98f9d3ab740020169d2f33db','5e8c86041e2022a51f63bbaf56b3ae90109db902','svg','BootstrapPackageInverted.svg','493f5cd69ede03cf7d436e92481422145674b907',1742600112,1728925893,0,2,'image/svg+xml',3784,0,0);
/*!40000 ALTER TABLE `sys_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_collection`
--

DROP TABLE IF EXISTS `sys_file_collection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_collection` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `title` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `type` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'static',
  `files` int(10) unsigned NOT NULL DEFAULT 0,
  `folder_identifier` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `recursive` smallint(5) unsigned NOT NULL DEFAULT 0,
  `category` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_collection`
--

LOCK TABLES `sys_file_collection` WRITE;
/*!40000 ALTER TABLE `sys_file_collection` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_file_collection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_metadata`
--

DROP TABLE IF EXISTS `sys_file_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_metadata` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `title` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `alternative` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `categories` int(10) unsigned NOT NULL DEFAULT 0,
  `file` int(10) unsigned NOT NULL DEFAULT 0,
  `description` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `width` int(11) NOT NULL DEFAULT 0,
  `height` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `file` (`file`),
  KEY `fal_filelist` (`l10n_parent`,`sys_language_uid`),
  KEY `parent` (`pid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_metadata`
--

LOCK TABLES `sys_file_metadata` WRITE;
/*!40000 ALTER TABLE `sys_file_metadata` DISABLE KEYS */;
INSERT INTO `sys_file_metadata` VALUES
(1,0,1742600900,1742600900,0,0,NULL,'',0,0,0,0,NULL,NULL,0,1,NULL,244,68),
(2,0,1742600900,1742600900,0,0,NULL,'',0,0,0,0,NULL,NULL,0,2,NULL,244,68);
/*!40000 ALTER TABLE `sys_file_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_processedfile`
--

DROP TABLE IF EXISTS `sys_file_processedfile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_processedfile` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `tstamp` int(11) NOT NULL DEFAULT 0,
  `crdate` int(11) NOT NULL DEFAULT 0,
  `storage` int(11) NOT NULL DEFAULT 0,
  `original` int(11) NOT NULL DEFAULT 0,
  `identifier` varchar(512) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `name` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `processing_url` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `configuration` blob DEFAULT NULL,
  `configurationsha1` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `originalfilesha1` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `task_type` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `checksum` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `width` int(11) DEFAULT 0,
  `height` int(11) DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `combined_1` (`original`,`task_type`(100),`configurationsha1`),
  KEY `identifier` (`storage`,`identifier`(180))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_processedfile`
--

LOCK TABLES `sys_file_processedfile` WRITE;
/*!40000 ALTER TABLE `sys_file_processedfile` DISABLE KEYS */;
INSERT INTO `sys_file_processedfile` VALUES
(1,1742600900,1742600900,0,1,'',NULL,'','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','24f48d5b4de7d99b7144e6559156976855e74b5d','a6fb0cc7b50579d6255f16171147695a55b93c27','Image.CropScaleMask','e5bc13ea38',244,68),
(2,1742600900,1742600900,0,2,'',NULL,'','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','24f48d5b4de7d99b7144e6559156976855e74b5d','493f5cd69ede03cf7d436e92481422145674b907','Image.CropScaleMask','47629fef06',244,68);
/*!40000 ALTER TABLE `sys_file_processedfile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_reference`
--

DROP TABLE IF EXISTS `sys_file_reference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_reference` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `uid_local` int(11) NOT NULL DEFAULT 0,
  `title` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `alternative` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `uid_foreign` int(11) NOT NULL DEFAULT 0,
  `tablenames` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `fieldname` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `sorting_foreign` int(11) NOT NULL DEFAULT 0,
  `link` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `description` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `crop` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `autoplay` smallint(5) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `tablenames_fieldname` (`tablenames`(32),`fieldname`(12)),
  KEY `deleted` (`deleted`),
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`),
  KEY `combined_1` (`l10n_parent`,`t3ver_oid`,`t3ver_wsid`,`t3ver_state`,`deleted`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_reference`
--

LOCK TABLES `sys_file_reference` WRITE;
/*!40000 ALTER TABLE `sys_file_reference` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_file_reference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_storage`
--

DROP TABLE IF EXISTS `sys_file_storage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_storage` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `is_public` smallint(6) NOT NULL DEFAULT 0,
  `processingfolder` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `is_browsable` smallint(5) unsigned NOT NULL DEFAULT 1,
  `is_default` smallint(5) unsigned NOT NULL DEFAULT 0,
  `is_writable` smallint(5) unsigned NOT NULL DEFAULT 1,
  `is_online` smallint(5) unsigned NOT NULL DEFAULT 1,
  `auto_extract_metadata` smallint(5) unsigned NOT NULL DEFAULT 1,
  `driver` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `configuration` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_storage`
--

LOCK TABLES `sys_file_storage` WRITE;
/*!40000 ALTER TABLE `sys_file_storage` DISABLE KEYS */;
INSERT INTO `sys_file_storage` VALUES
(1,0,1742600900,1742600900,0,'This is the local fileadmin/ directory. This storage mount has been created automatically by TYPO3.',1,NULL,'fileadmin',1,1,1,1,1,'Local','<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"basePath\">\n                    <value index=\"vDEF\">fileadmin/</value>\n                </field>\n                <field index=\"pathType\">\n                    <value index=\"vDEF\">relative</value>\n                </field>\n                <field index=\"caseSensitive\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>');
/*!40000 ALTER TABLE `sys_file_storage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_filemounts`
--

DROP TABLE IF EXISTS `sys_filemounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_filemounts` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `identifier` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `read_only` smallint(5) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_filemounts`
--

LOCK TABLES `sys_filemounts` WRITE;
/*!40000 ALTER TABLE `sys_filemounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_filemounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_history`
--

DROP TABLE IF EXISTS `sys_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_history` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `actiontype` smallint(6) NOT NULL DEFAULT 0,
  `usertype` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'BE',
  `userid` int(10) unsigned DEFAULT NULL,
  `originaluserid` int(10) unsigned DEFAULT NULL,
  `recuid` int(11) NOT NULL DEFAULT 0,
  `tablename` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `history_data` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `workspace` int(11) DEFAULT 0,
  `correlation_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `recordident_1` (`tablename`(100),`recuid`),
  KEY `recordident_2` (`tablename`(100),`tstamp`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_history`
--

LOCK TABLES `sys_history` WRITE;
/*!40000 ALTER TABLE `sys_history` DISABLE KEYS */;
INSERT INTO `sys_history` VALUES
(1,1742600500,1,'BE',1,0,1,'pages','{\"doktype\":\"1\",\"slug\":\"\\/\",\"categories\":\"0\",\"layout\":\"0\",\"lastUpdated\":0,\"newUntil\":0,\"cache_timeout\":\"0\",\"shortcut\":0,\"shortcut_mode\":\"0\",\"content_from_pid\":0,\"mount_pid\":0,\"module\":\"\",\"hidden\":1,\"starttime\":0,\"endtime\":0,\"l10n_parent\":0,\"l10n_diffsource\":\"\",\"sitemap_priority\":\"0.5\",\"twitter_card\":\"\",\"pid\":0,\"sorting\":256,\"perms_userid\":1,\"perms_groupid\":1,\"perms_user\":31,\"perms_group\":31,\"perms_everybody\":0,\"title\":\"Blog\",\"crdate\":1742600500,\"t3ver_stage\":0,\"tstamp\":1742600500,\"uid\":1}',0,'0400$f4390ff7cbc11e4e869388b55e4fa9c3:e175f7045d7ccbfb26ffcf279422c2e5'),
(2,1742600505,1,'BE',1,0,2,'pages','{\"doktype\":\"1\",\"slug\":\"\\/detail\",\"categories\":\"0\",\"layout\":\"0\",\"lastUpdated\":0,\"newUntil\":0,\"cache_timeout\":\"0\",\"shortcut\":0,\"shortcut_mode\":\"0\",\"content_from_pid\":0,\"mount_pid\":0,\"module\":\"\",\"hidden\":1,\"starttime\":0,\"endtime\":0,\"l10n_parent\":0,\"l10n_diffsource\":\"\",\"sitemap_priority\":\"0.5\",\"twitter_card\":\"\",\"pid\":1,\"sorting\":256,\"perms_userid\":1,\"perms_groupid\":1,\"perms_user\":31,\"perms_group\":31,\"perms_everybody\":0,\"title\":\"Detail\",\"sys_language_uid\":0,\"crdate\":1742600505,\"t3ver_stage\":0,\"tstamp\":1742600505,\"uid\":2}',0,'0400$0e90cac2a1311c182c28593410c61d5a:f11830df10b4b0bca2db34810c2241b3'),
(3,1742600660,1,'BE',1,0,1,'sys_template','{\"root\":1,\"basedOn\":\"\",\"includeStaticAfterBasedOn\":0,\"static_file_mode\":\"0\",\"hidden\":0,\"starttime\":0,\"endtime\":0,\"pid\":1,\"sorting\":256,\"title\":\"NEW SITE\",\"clear\":3,\"config\":\"\\n# Default PAGE object:\\npage = PAGE\\npage.10 = TEXT\\npage.10.value = HELLO WORLD!\\n\",\"crdate\":1742600660,\"tstamp\":1742600660,\"uid\":1}',0,'0400$b1d08724662973ab53e7d0ea084c7d86:35af6288617af54964e77af08c30949a'),
(4,1742600927,4,'BE',1,0,2,'tx_workshopblog_domain_model_blog',NULL,0,'0400$6d26eb1fd5b3c494a3df775917b0a5ef:78712413e200075b116302481b1a8ab5'),
(5,1742600927,4,'BE',1,0,3,'tx_workshopblog_domain_model_blog',NULL,0,'0400$6d26eb1fd5b3c494a3df775917b0a5ef:357c83e4eb191618eed181aad7ad2c96'),
(6,1742600927,4,'BE',1,0,4,'tx_workshopblog_domain_model_blog',NULL,0,'0400$6d26eb1fd5b3c494a3df775917b0a5ef:01e322eea7f94cf10df66770efaded11'),
(7,1742600958,1,'BE',1,0,5,'tx_workshopblog_domain_model_blog','{\"hidden\":\"1\",\"pid\":2,\"date\":1742600940,\"title\":\"Hello Jena\",\"teaser\":\"test\",\"bodytext\":\"<p>und noch mehr info<\\/p>\",\"crdate\":1742600958,\"tstamp\":1742600958,\"uid\":5}',0,'0400$232e00d518c0bb4fc4109fa9f7b051fb:0aa4d0cc73199f8ee76fd3c1bb645ef2'),
(8,1742600973,2,'BE',1,0,5,'tx_workshopblog_domain_model_blog','{\"oldRecord\":{\"hidden\":1},\"newRecord\":{\"hidden\":\"0\"}}',0,'0400$2166c3029257d67962ff4d49ef8a0645:0aa4d0cc73199f8ee76fd3c1bb645ef2');
/*!40000 ALTER TABLE `sys_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_http_report`
--

DROP TABLE IF EXISTS `sys_http_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_http_report` (
  `uuid` varchar(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `status` smallint(5) unsigned NOT NULL DEFAULT 0,
  `created` int(10) unsigned NOT NULL,
  `changed` int(10) unsigned NOT NULL,
  `type` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `scope` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `request_time` bigint(20) unsigned NOT NULL,
  `meta` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `details` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `summary` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`uuid`),
  KEY `type_scope` (`type`,`scope`),
  KEY `created` (`created`),
  KEY `changed` (`changed`),
  KEY `request_time` (`request_time`),
  KEY `summary_created` (`summary`,`created`),
  KEY `all_conditions` (`type`,`status`,`scope`,`summary`,`request_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_http_report`
--

LOCK TABLES `sys_http_report` WRITE;
/*!40000 ALTER TABLE `sys_http_report` DISABLE KEYS */;
INSERT INTO `sys_http_report` VALUES
('00fc6563-0f61-4fbe-8d41-043eadc127b7',0,1742600973,1742600973,'csp-report','backend',1742600973484619,'{\"addr\":\"::\",\"agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/133.0.0.0 Safari\\/537.36\"}','{\"document-uri\":\"http:\\/\\/localhost:8080\\/typo3\\/record\\/edit?edit%5Btx_workshopblog_domain_model_blog%5D%5B5%5D=edit&returnUrl=%2Ftypo3%2Fmodule%2Fweb%2Flist%3Ftoken%3D9db7af48b7dc70f12b666fe88cbd53b627734f13%26id%3D2%26table%3D%26pointer%3D1\",\"referrer\":\"http:\\/\\/localhost:8080\\/typo3\\/record\\/edit?edit%5Btx_workshopblog_domain_model_blog%5D%5B5%5D=edit&returnUrl=%2Ftypo3%2Fmodule%2Fweb%2Flist%3Ftoken%3D9db7af48b7dc70f12b666fe88cbd53b627734f13%26id%3D2%26table%3D%26pointer%3D1\",\"violated-directive\":\"script-src\",\"effective-directive\":\"script-src\",\"original-policy\":\"default-src \'self\'; script-src \'self\' \'nonce-s07ryq3tGT9Zm2R30bO9Dv7SXk-sgR2Iu-8LKTIEhlHA9jEJMLCqFQ\' \'report-sample\'; style-src \'self\' \'unsafe-inline\' \'report-sample\'; style-src-attr \'unsafe-inline\' \'report-sample\'; img-src \'self\' data: *.ytimg.com *.vimeocdn.com https:\\/\\/extensions.typo3.org; frame-src \'self\' *.youtube-nocookie.com *.youtube.com *.vimeo.com; base-uri \'none\'; object-src \'none\'; report-uri http:\\/\\/localhost:8080\\/typo3\\/@http-reporting?csp=report&requestTime=1742600973484619&requestHash=cde8b244f3043cd98aae8c56801de9d3666a3866\",\"disposition\":\"enforce\",\"blocked-uri\":\"eval\",\"line-number\":1,\"column-number\":33690,\"source-file\":\"http:\\/\\/localhost:8080\\/_assets\\/937be57c7660e085d41e9dabf38b8aa1\\/Contrib\\/@ckeditor\\/ckeditor5-inspector.js\",\"status-code\":200,\"script-sample\":\"(function anonymous(\\n) {\\nreturn this\\n})\"}','378355cd4d16291224bc9de777af6340bc7d514f'),
('368483ed-33d0-4719-b55f-9c102773ec92',0,1742600959,1742600959,'csp-report','backend',1742600958841100,'{\"addr\":\"::\",\"agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/133.0.0.0 Safari\\/537.36\"}','{\"document-uri\":\"http:\\/\\/localhost:8080\\/typo3\\/record\\/edit?edit%5Btx_workshopblog_domain_model_blog%5D%5B5%5D=edit&returnUrl=%2Ftypo3%2Fmodule%2Fweb%2Flist%3Ftoken%3D9db7af48b7dc70f12b666fe88cbd53b627734f13%26id%3D2%26table%3D%26pointer%3D1\",\"referrer\":\"http:\\/\\/localhost:8080\\/typo3\\/record\\/edit?edit%5Btx_workshopblog_domain_model_blog%5D%5B2%5D=new&returnUrl=%2Ftypo3%2Fmodule%2Fweb%2Flist%3Ftoken%3D9db7af48b7dc70f12b666fe88cbd53b627734f13%26id%3D2%26table%3D%26pointer%3D1\",\"violated-directive\":\"script-src\",\"effective-directive\":\"script-src\",\"original-policy\":\"default-src \'self\'; script-src \'self\' \'nonce-mOAJtrfKI9k9cr7qOv9CVdYR0HKVDVaU62wiNshyaQ-h6_BLZbRKbQ\' \'report-sample\'; style-src \'self\' \'unsafe-inline\' \'report-sample\'; style-src-attr \'unsafe-inline\' \'report-sample\'; img-src \'self\' data: *.ytimg.com *.vimeocdn.com https:\\/\\/extensions.typo3.org; frame-src \'self\' *.youtube-nocookie.com *.youtube.com *.vimeo.com; base-uri \'none\'; object-src \'none\'; report-uri http:\\/\\/localhost:8080\\/typo3\\/@http-reporting?csp=report&requestTime=1742600958841100&requestHash=3ac135f0d2951823d56f9faa59d5d4b569dfb8c3\",\"disposition\":\"enforce\",\"blocked-uri\":\"eval\",\"line-number\":1,\"column-number\":33690,\"source-file\":\"http:\\/\\/localhost:8080\\/_assets\\/937be57c7660e085d41e9dabf38b8aa1\\/Contrib\\/@ckeditor\\/ckeditor5-inspector.js\",\"status-code\":200,\"script-sample\":\"(function anonymous(\\n) {\\nreturn this\\n})\"}','378355cd4d16291224bc9de777af6340bc7d514f'),
('640142f2-c762-49a3-a6ff-46cc2fe552f3',0,1742600943,1742600943,'csp-report','backend',1742600943068635,'{\"addr\":\"::\",\"agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/133.0.0.0 Safari\\/537.36\"}','{\"document-uri\":\"http:\\/\\/localhost:8080\\/typo3\\/record\\/edit?edit%5Btx_workshopblog_domain_model_blog%5D%5B2%5D=new&returnUrl=%2Ftypo3%2Fmodule%2Fweb%2Flist%3Ftoken%3D9db7af48b7dc70f12b666fe88cbd53b627734f13%26id%3D2%26table%3D%26pointer%3D1\",\"referrer\":\"http:\\/\\/localhost:8080\\/typo3\\/module\\/web\\/list?id=2\",\"violated-directive\":\"script-src\",\"effective-directive\":\"script-src\",\"original-policy\":\"default-src \'self\'; script-src \'self\' \'nonce-qCeuPauhfSNvafOufhTEucFPxOkytyL0G6EYcnVUjxbXM-5q6bk5dQ\' \'report-sample\'; style-src \'self\' \'unsafe-inline\' \'report-sample\'; style-src-attr \'unsafe-inline\' \'report-sample\'; img-src \'self\' data: *.ytimg.com *.vimeocdn.com https:\\/\\/extensions.typo3.org; frame-src \'self\' *.youtube-nocookie.com *.youtube.com *.vimeo.com; base-uri \'none\'; object-src \'none\'; report-uri http:\\/\\/localhost:8080\\/typo3\\/@http-reporting?csp=report&requestTime=1742600943068635&requestHash=d1d2a6a0402927adf38385d847c6ae2ff6513db4\",\"disposition\":\"enforce\",\"blocked-uri\":\"eval\",\"line-number\":1,\"column-number\":33690,\"source-file\":\"http:\\/\\/localhost:8080\\/_assets\\/937be57c7660e085d41e9dabf38b8aa1\\/Contrib\\/@ckeditor\\/ckeditor5-inspector.js\",\"status-code\":200,\"script-sample\":\"(function anonymous(\\n) {\\nreturn this\\n})\"}','378355cd4d16291224bc9de777af6340bc7d514f'),
('efd67d39-4123-4c1c-9f38-bb48c0b3729c',0,1742600929,1742600929,'csp-report','backend',1742600929523518,'{\"addr\":\"::\",\"agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/133.0.0.0 Safari\\/537.36\"}','{\"document-uri\":\"http:\\/\\/localhost:8080\\/typo3\\/record\\/edit?edit%5Btx_workshopblog_domain_model_blog%5D%5B1%5D=edit&returnUrl=%2Ftypo3%2Fmodule%2Fweb%2Flist%3Ftoken%3D9db7af48b7dc70f12b666fe88cbd53b627734f13%26id%3D2%26table%3D%26pointer%3D1\",\"referrer\":\"http:\\/\\/localhost:8080\\/typo3\\/module\\/web\\/list?id=2\",\"violated-directive\":\"script-src\",\"effective-directive\":\"script-src\",\"original-policy\":\"default-src \'self\'; script-src \'self\' \'nonce-IO6xKtFOIiKJa3eBoux3XC-RBJEkiFJsCcLX3OjhPc6uHJ26fEBZhg\' \'report-sample\'; style-src \'self\' \'unsafe-inline\' \'report-sample\'; style-src-attr \'unsafe-inline\' \'report-sample\'; img-src \'self\' data: *.ytimg.com *.vimeocdn.com https:\\/\\/extensions.typo3.org; frame-src \'self\' *.youtube-nocookie.com *.youtube.com *.vimeo.com; base-uri \'none\'; object-src \'none\'; report-uri http:\\/\\/localhost:8080\\/typo3\\/@http-reporting?csp=report&requestTime=1742600929523518&requestHash=55d844ecd1cef639b5fd346ac56039fa312c4d5d\",\"disposition\":\"enforce\",\"blocked-uri\":\"eval\",\"line-number\":1,\"column-number\":33690,\"source-file\":\"http:\\/\\/localhost:8080\\/_assets\\/937be57c7660e085d41e9dabf38b8aa1\\/Contrib\\/@ckeditor\\/ckeditor5-inspector.js\",\"status-code\":200,\"script-sample\":\"(function anonymous(\\n) {\\nreturn this\\n})\"}','378355cd4d16291224bc9de777af6340bc7d514f');
/*!40000 ALTER TABLE `sys_http_report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_lockedrecords`
--

DROP TABLE IF EXISTS `sys_lockedrecords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_lockedrecords` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `record_table` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `record_uid` int(11) NOT NULL DEFAULT 0,
  `record_pid` int(11) NOT NULL DEFAULT 0,
  `username` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `feuserid` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `event` (`userid`,`tstamp`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_lockedrecords`
--

LOCK TABLES `sys_lockedrecords` WRITE;
/*!40000 ALTER TABLE `sys_lockedrecords` DISABLE KEYS */;
INSERT INTO `sys_lockedrecords` VALUES
(6,1,1742600973,'tx_workshopblog_domain_model_blog',5,0,'admin',0);
/*!40000 ALTER TABLE `sys_lockedrecords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_log`
--

DROP TABLE IF EXISTS `sys_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_log` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `userid` int(10) unsigned NOT NULL DEFAULT 0,
  `action` smallint(5) unsigned NOT NULL DEFAULT 0,
  `recuid` int(10) unsigned NOT NULL DEFAULT 0,
  `tablename` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `recpid` int(11) NOT NULL DEFAULT 0,
  `error` smallint(5) unsigned NOT NULL DEFAULT 0,
  `details` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `type` smallint(5) unsigned NOT NULL DEFAULT 0,
  `channel` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'default',
  `details_nr` smallint(6) NOT NULL DEFAULT 0,
  `IP` varchar(39) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `log_data` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `event_pid` int(11) NOT NULL DEFAULT -1,
  `workspace` int(11) NOT NULL DEFAULT 0,
  `request_id` varchar(13) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `time_micro` double NOT NULL DEFAULT 0,
  `component` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `level` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'info',
  `message` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `data` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `event` (`userid`,`event_pid`),
  KEY `recuidIdx` (`recuid`),
  KEY `user_auth` (`type`,`action`,`tstamp`),
  KEY `request` (`request_id`),
  KEY `combined_1` (`tstamp`,`type`,`userid`),
  KEY `errorcount` (`tstamp`,`error`),
  KEY `index_channel` (`channel`),
  KEY `index_level` (`level`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_log`
--

LOCK TABLES `sys_log` WRITE;
/*!40000 ALTER TABLE `sys_log` DISABLE KEYS */;
INSERT INTO `sys_log` VALUES
(1,1742600467,0,3,0,'',0,3,'Login-attempt from ###IP###, username \'%s\', password not accepted!',255,'user',0,'::1','[\"admin\"]',-1,-99,'',0,'','info',NULL,NULL),
(2,1742600475,0,3,0,'',0,3,'Login-attempt from ###IP###, username \'%s\', password not accepted!',255,'user',0,'::1','[\"admin\"]',-1,-99,'',0,'','info',NULL,NULL),
(3,1742600484,1,1,0,'',0,0,'User %s logged in from ###IP###',255,'user',0,'::1','[\"admin\"]',-1,-99,'',0,'','info',NULL,NULL),
(4,1742600500,1,1,1,'pages',0,0,'Record {table}:{uid} was inserted on page {pid}',1,'content',0,'::1','{\"table\":\"pages\",\"uid\":1,\"pid\":0}',0,0,'',0,'','info',NULL,NULL),
(5,1742600505,1,1,2,'pages',0,0,'Record {table}:{uid} was inserted on page {pid}',1,'content',0,'::1','{\"table\":\"pages\",\"uid\":2,\"pid\":1}',1,0,'',0,'','info',NULL,NULL),
(6,1742600627,1,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: #1607585445: No TypoScript record found! | TYPO3\\CMS\\Core\\Error\\Http\\InternalServerErrorException thrown in file /Users/frank/Talks/cache-workshop/vendor/typo3/cms-frontend/Classes/Controller/ErrorController.php in line 48. Requested URL: http://localhost:8080/',5,'php',0,'::1','',-1,0,'',0,'','error',NULL,NULL),
(7,1742600629,1,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: #1607585445: No TypoScript record found! | TYPO3\\CMS\\Core\\Error\\Http\\InternalServerErrorException thrown in file /Users/frank/Talks/cache-workshop/vendor/typo3/cms-frontend/Classes/Controller/ErrorController.php in line 48. Requested URL: http://localhost:8080/',5,'php',0,'::1','',-1,0,'',0,'','error',NULL,NULL),
(8,1742600660,1,1,1,'sys_template',0,0,'Record {table}:{uid} was inserted on page {pid}',1,'content',0,'::1','{\"table\":\"sys_template\",\"uid\":1,\"pid\":1}',1,0,'',0,'','info',NULL,NULL),
(9,1742600927,1,3,2,'tx_workshopblog_domain_model_blog',0,0,'Record {table}:{uid} was deleted from pages:{pid}',1,'content',0,'::1','{\"table\":\"tx_workshopblog_domain_model_blog\",\"uid\":2,\"pid\":2}',2,0,'',0,'','info',NULL,NULL),
(10,1742600927,1,3,3,'tx_workshopblog_domain_model_blog',0,0,'Record {table}:{uid} was deleted from pages:{pid}',1,'content',0,'::1','{\"table\":\"tx_workshopblog_domain_model_blog\",\"uid\":3,\"pid\":2}',2,0,'',0,'','info',NULL,NULL),
(11,1742600927,1,3,4,'tx_workshopblog_domain_model_blog',0,0,'Record {table}:{uid} was deleted from pages:{pid}',1,'content',0,'::1','{\"table\":\"tx_workshopblog_domain_model_blog\",\"uid\":4,\"pid\":2}',2,0,'',0,'','info',NULL,NULL),
(12,1742600958,1,1,5,'tx_workshopblog_domain_model_blog',0,0,'Record {table}:{uid} was inserted on page {pid}',1,'content',0,'::1','{\"table\":\"tx_workshopblog_domain_model_blog\",\"uid\":5,\"pid\":2}',2,0,'',0,'','info',NULL,NULL),
(13,1742600965,1,1,0,'',0,0,'User {username} has cleared the cache (cacheCmd={command})',3,'default',0,'::1','{\"username\":\"admin\",\"command\":\"pages\"}',-1,0,'',0,'','info',NULL,NULL),
(14,1742600973,1,2,5,'tx_workshopblog_domain_model_blog',0,0,'Record {table}:{uid} was updated',1,'content',0,'::1','{\"table\":\"tx_workshopblog_domain_model_blog\",\"uid\":5,\"history\":\"8\"}',2,0,'',0,'','info',NULL,NULL),
(15,1742600978,1,1,0,'',0,0,'User {username} has cleared the cache (cacheCmd={command})',3,'default',0,'::1','{\"username\":\"admin\",\"command\":\"pages\"}',-1,0,'',0,'','info',NULL,NULL);
/*!40000 ALTER TABLE `sys_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_messenger_messages`
--

DROP TABLE IF EXISTS `sys_messenger_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_messenger_messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `body` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `headers` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `queue_name` varchar(190) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `available_at` datetime NOT NULL,
  `delivered_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `queue_name` (`queue_name`),
  KEY `available_at` (`available_at`),
  KEY `delivered_at` (`delivered_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_messenger_messages`
--

LOCK TABLES `sys_messenger_messages` WRITE;
/*!40000 ALTER TABLE `sys_messenger_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_messenger_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_news`
--

DROP TABLE IF EXISTS `sys_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_news` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `content` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_news`
--

LOCK TABLES `sys_news` WRITE;
/*!40000 ALTER TABLE `sys_news` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_refindex`
--

DROP TABLE IF EXISTS `sys_refindex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_refindex` (
  `hash` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `tablename` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `recuid` int(10) unsigned NOT NULL DEFAULT 0,
  `field` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 2147483647,
  `t3ver_state` int(10) unsigned NOT NULL DEFAULT 0,
  `flexpointer` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `softref_key` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `softref_id` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `sorting` int(11) NOT NULL DEFAULT 0,
  `workspace` int(10) unsigned NOT NULL DEFAULT 0,
  `ref_table` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `ref_uid` int(11) NOT NULL DEFAULT 0,
  `ref_field` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `ref_hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `ref_starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `ref_endtime` int(10) unsigned NOT NULL DEFAULT 2147483647,
  `ref_t3ver_state` int(10) unsigned NOT NULL DEFAULT 0,
  `ref_sorting` int(11) NOT NULL DEFAULT 0,
  `ref_string` varchar(1024) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`hash`),
  KEY `lookup_rec` (`tablename`,`recuid`,`field`,`workspace`,`ref_t3ver_state`,`ref_hidden`,`ref_starttime`,`ref_endtime`),
  KEY `lookup_ref` (`ref_table`,`ref_uid`,`tablename`,`workspace`,`t3ver_state`,`hidden`,`starttime`,`endtime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_refindex`
--

LOCK TABLES `sys_refindex` WRITE;
/*!40000 ALTER TABLE `sys_refindex` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_refindex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_registry`
--

DROP TABLE IF EXISTS `sys_registry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_registry` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_namespace` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `entry_key` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `entry_value` mediumblob DEFAULT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `entry_identifier` (`entry_namespace`,`entry_key`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_registry`
--

LOCK TABLES `sys_registry` WRITE;
/*!40000 ALTER TABLE `sys_registry` DISABLE KEYS */;
INSERT INTO `sys_registry` VALUES
(1,'installUpdate','TYPO3\\CMS\\Install\\Updates\\BackendGroupsExplicitAllowDenyMigration','i:1;'),
(2,'installUpdate','TYPO3\\CMS\\Install\\Updates\\BackendModulePermissionMigration','i:1;'),
(3,'installUpdate','TYPO3\\CMS\\Install\\Updates\\IndexedSearchCTypeMigration','i:1;'),
(4,'installUpdate','TYPO3\\CMS\\Install\\Updates\\MigrateSiteSettingsConfigUpdate','i:1;'),
(5,'installUpdate','TYPO3\\CMS\\Install\\Updates\\PagesRecyclerDoktypeMigration','i:1;'),
(6,'installUpdate','TYPO3\\CMS\\Install\\Updates\\SynchronizeColPosAndCTypeWithDefaultLanguage','i:1;'),
(7,'installUpdate','TYPO3\\CMS\\Install\\Updates\\SysFileCollectionIdentifierMigration','i:1;'),
(8,'installUpdate','TYPO3\\CMS\\Install\\Updates\\SysFileMountIdentifierMigration','i:1;'),
(9,'installUpdate','TYPO3\\CMS\\Install\\Updates\\SysLogSerializationUpdate','i:1;'),
(10,'installUpdate','TYPO3\\CMS\\Install\\Updates\\SysTemplateNoWorkspaceMigration','i:1;'),
(11,'installUpdate','TYPO3\\CMS\\Extensionmanager\\Updates\\FeLoginModeExtractionUpdate','i:1;'),
(12,'installUpdateRows','rowUpdatersDone','a:1:{i:0;s:69:\"TYPO3\\CMS\\Install\\Updates\\RowUpdater\\SysRedirectRootPageMoveMigration\";}'),
(13,'core','formProtectionSessionToken:1','s:64:\"b1644ae92043f952d360ff26aa97038a8c8455d50bbbbbfa0516aadc59d7619f\";');
/*!40000 ALTER TABLE `sys_registry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_template`
--

DROP TABLE IF EXISTS `sys_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_template` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `root` smallint(5) unsigned NOT NULL DEFAULT 0,
  `clear` smallint(5) unsigned NOT NULL DEFAULT 0,
  `constants` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `include_static_file` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `basedOn` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `includeStaticAfterBasedOn` smallint(5) unsigned NOT NULL DEFAULT 0,
  `config` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `static_file_mode` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `roottemplate` (`deleted`,`hidden`,`root`),
  KEY `parent` (`pid`,`deleted`,`hidden`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_template`
--

LOCK TABLES `sys_template` WRITE;
/*!40000 ALTER TABLE `sys_template` DISABLE KEYS */;
INSERT INTO `sys_template` VALUES
(1,1,1650463198,1650462577,0,0,0,0,0,'This is an Empty Site Package TypoScript template.\r\n\r\nFor each website you need a TypoScript template on the main page of your website (on the top level). For better maintenance all TypoScript should be extracted into external files via @import \'EXT:site_myproject/Configuration/TypoScript/setup.typoscript\'','Main TypoScript Rendering',1,1,'','EXT:fluid_styled_content/Configuration/TypoScript/,EXT:fluid_styled_content/Configuration/TypoScript/Styling/,EXT:bootstrap_package/Configuration/TypoScript/ContentElement,EXT:bootstrap_package/Configuration/TypoScript',NULL,0,'',0);
/*!40000 ALTER TABLE `sys_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tt_content`
--

DROP TABLE IF EXISTS `tt_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tt_content` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rowDescription` text DEFAULT NULL,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `fe_group` varchar(255) NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT 0,
  `editlock` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l18n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_source` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l18n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `CType` varchar(255) NOT NULL DEFAULT '',
  `header` varchar(255) NOT NULL DEFAULT '',
  `header_position` varchar(255) NOT NULL DEFAULT '',
  `bodytext` longtext DEFAULT NULL,
  `bullets_type` int(10) unsigned NOT NULL DEFAULT 0,
  `uploads_description` smallint(5) unsigned NOT NULL DEFAULT 0,
  `uploads_type` int(10) unsigned NOT NULL DEFAULT 0,
  `assets` int(10) unsigned NOT NULL DEFAULT 0,
  `image` int(10) unsigned NOT NULL DEFAULT 0,
  `imagewidth` int(10) unsigned NOT NULL DEFAULT 0,
  `imageorient` int(10) unsigned NOT NULL DEFAULT 0,
  `imagecols` int(10) unsigned NOT NULL DEFAULT 0,
  `imageborder` smallint(5) unsigned NOT NULL DEFAULT 0,
  `media` int(10) unsigned NOT NULL DEFAULT 0,
  `layout` int(10) unsigned NOT NULL DEFAULT 0,
  `frame_class` varchar(60) NOT NULL DEFAULT 'default',
  `cols` int(10) unsigned NOT NULL DEFAULT 0,
  `space_before_class` varchar(60) NOT NULL DEFAULT '',
  `space_after_class` varchar(60) NOT NULL DEFAULT '',
  `records` longtext DEFAULT NULL,
  `pages` longtext DEFAULT NULL,
  `colPos` int(10) unsigned NOT NULL DEFAULT 0,
  `subheader` varchar(255) NOT NULL DEFAULT '',
  `header_link` text NOT NULL DEFAULT '',
  `image_zoom` smallint(5) unsigned NOT NULL DEFAULT 0,
  `header_layout` int(10) unsigned NOT NULL DEFAULT 0,
  `list_type` varchar(255) NOT NULL DEFAULT '',
  `sectionIndex` smallint(5) unsigned NOT NULL DEFAULT 1,
  `linkToTop` smallint(5) unsigned NOT NULL DEFAULT 0,
  `file_collections` longtext DEFAULT NULL,
  `filelink_size` smallint(5) unsigned NOT NULL DEFAULT 0,
  `filelink_sorting` varchar(64) NOT NULL DEFAULT '',
  `filelink_sorting_direction` varchar(4) NOT NULL DEFAULT '',
  `target` varchar(30) NOT NULL DEFAULT '',
  `date` bigint(20) NOT NULL DEFAULT 0,
  `recursive` int(10) unsigned NOT NULL DEFAULT 0,
  `imageheight` int(10) unsigned NOT NULL DEFAULT 0,
  `pi_flexform` longtext DEFAULT NULL,
  `accessibility_title` varchar(30) NOT NULL DEFAULT '',
  `accessibility_bypass` smallint(5) unsigned NOT NULL DEFAULT 0,
  `accessibility_bypass_text` varchar(30) NOT NULL DEFAULT '',
  `category_field` varchar(64) NOT NULL DEFAULT '',
  `table_class` varchar(60) NOT NULL DEFAULT '',
  `table_caption` varchar(255) DEFAULT NULL,
  `table_delimiter` int(10) unsigned NOT NULL DEFAULT 0,
  `table_enclosure` int(10) unsigned NOT NULL DEFAULT 0,
  `table_header_position` int(10) unsigned NOT NULL DEFAULT 0,
  `table_tfoot` smallint(5) unsigned NOT NULL DEFAULT 0,
  `categories` int(10) unsigned NOT NULL DEFAULT 0,
  `selected_categories` longtext DEFAULT NULL,
  `teaser` text DEFAULT NULL,
  `aspect_ratio` varchar(255) NOT NULL DEFAULT '1.3333333333333',
  `items_per_page` int(10) unsigned DEFAULT 10,
  `readmore_label` varchar(255) NOT NULL DEFAULT '',
  `quote_source` varchar(255) NOT NULL DEFAULT '',
  `quote_link` varchar(1024) NOT NULL DEFAULT '',
  `panel_class` varchar(60) NOT NULL DEFAULT 'default',
  `file_folder` text DEFAULT NULL,
  `icon` varchar(255) NOT NULL DEFAULT '',
  `icon_set` varchar(255) NOT NULL DEFAULT '',
  `icon_file` int(10) unsigned DEFAULT 0,
  `icon_position` varchar(255) NOT NULL DEFAULT '',
  `icon_size` varchar(60) NOT NULL DEFAULT 'default',
  `icon_type` varchar(60) NOT NULL DEFAULT 'default',
  `icon_color` varchar(255) NOT NULL DEFAULT '',
  `icon_background` varchar(255) NOT NULL DEFAULT '',
  `external_media_source` varchar(1024) NOT NULL DEFAULT '',
  `external_media_ratio` varchar(10) NOT NULL DEFAULT '',
  `tx_bootstrappackage_card_group_item` int(10) unsigned DEFAULT 0,
  `tx_bootstrappackage_carousel_item` int(10) unsigned DEFAULT 0,
  `tx_bootstrappackage_accordion_item` int(10) unsigned DEFAULT 0,
  `tx_bootstrappackage_icon_group_item` int(10) unsigned DEFAULT 0,
  `tx_bootstrappackage_tab_item` int(10) unsigned DEFAULT 0,
  `tx_bootstrappackage_timeline_item` int(10) unsigned DEFAULT 0,
  `frame_layout` varchar(255) NOT NULL DEFAULT 'default',
  `background_color_class` varchar(255) NOT NULL DEFAULT '',
  `background_image` int(10) unsigned DEFAULT 0,
  `background_image_options` mediumtext DEFAULT NULL,
  `header_class` varchar(60) NOT NULL DEFAULT '',
  `subheader_class` varchar(60) NOT NULL DEFAULT '',
  `external_media_title` varchar(255) NOT NULL DEFAULT '',
  `frame_options` varchar(255) NOT NULL DEFAULT '',
  `subitems_header_layout` int(10) unsigned NOT NULL DEFAULT 4,
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
INSERT INTO `tt_content` VALUES
(1,'',1,1650463141,1650463141,1,0,0,0,0,'',256,0,0,0,0,NULL,0,'',0,0,0,0,'text','Unser Blog','','',0,0,0,0,0,0,0,1,0,0,0,'default',0,'','',NULL,NULL,0,'','',0,0,'',1,0,NULL,0,'','','',0,0,0,NULL,'',0,'','','',NULL,124,0,0,0,0,NULL,NULL,'1.3333333333333',10,'','','','default',NULL,'','',0,'','default','default','#FFFFFF','#333333','','',0,0,0,0,0,0,'default','none',0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"parallax\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"fade\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"filter\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','','','','',4),
(2,'',1,1650466086,1650464320,1,0,0,0,0,'',512,0,0,0,0,NULL,0,'{\"CType\":\"\",\"colPos\":\"\",\"header\":\"\",\"header_layout\":\"\",\"header_position\":\"\",\"date\":\"\",\"header_link\":\"\",\"subheader\":\"\",\"list_type\":\"\",\"pi_flexform\":\"\",\"pages\":\"\",\"recursive\":\"\",\"layout\":\"\",\"frame_class\":\"\",\"space_before_class\":\"\",\"space_after_class\":\"\",\"frame_layout\":\"\",\"background_color_class\":\"\",\"background_image\":\"\",\"background_image_options\":\"\",\"sectionIndex\":\"\",\"linkToTop\":\"\",\"sys_language_uid\":\"\",\"hidden\":\"\",\"starttime\":\"\",\"endtime\":\"\",\"fe_group\":\"\",\"editlock\":\"\",\"categories\":\"\",\"rowDescription\":\"\"}',0,0,0,0,'list','','',NULL,0,0,0,0,0,0,0,1,0,0,0,'default',0,'','',NULL,'2',0,'','',0,0,'workshopblog_latest',1,0,NULL,0,'','','',0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"settings.detailPage\">\n                    <value index=\"vDEF\">3</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'','','',NULL,124,0,0,0,0,NULL,NULL,'1.3333333333333',10,'','','','default',NULL,'','',0,'','default','default','#FFFFFF','#333333','','',0,0,0,0,0,0,'default','none',0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"parallax\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"fade\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"filter\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','','','','',4),
(3,'',4,1650466138,1650466116,1,0,0,0,0,'',256,0,0,0,0,NULL,0,'{\"CType\":\"\",\"colPos\":\"\",\"header\":\"\",\"header_layout\":\"\",\"header_position\":\"\",\"date\":\"\",\"header_link\":\"\",\"subheader\":\"\",\"list_type\":\"\",\"pi_flexform\":\"\",\"pages\":\"\",\"recursive\":\"\",\"layout\":\"\",\"frame_class\":\"\",\"space_before_class\":\"\",\"space_after_class\":\"\",\"frame_layout\":\"\",\"background_color_class\":\"\",\"background_image\":\"\",\"background_image_options\":\"\",\"sectionIndex\":\"\",\"linkToTop\":\"\",\"sys_language_uid\":\"\",\"hidden\":\"\",\"starttime\":\"\",\"endtime\":\"\",\"fe_group\":\"\",\"editlock\":\"\",\"categories\":\"\",\"rowDescription\":\"\"}',0,0,0,0,'list','','',NULL,0,0,0,0,0,0,0,1,0,0,0,'default',0,'','',NULL,'2',0,'','',0,0,'workshopblog_list',1,0,NULL,0,'','','',0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"settings.detailPage\">\n                    <value index=\"vDEF\">3</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'','','',NULL,124,0,0,0,0,NULL,NULL,'1.3333333333333',10,'','','','default',NULL,'','',0,'','default','default','#FFFFFF','#333333','','',0,0,0,0,0,0,'default','none',0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"parallax\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"fade\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"filter\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','','','','',4),
(4,'',3,1650466163,1650466155,1,0,0,0,0,'',256,0,0,0,0,NULL,0,'{\"CType\":\"\",\"colPos\":\"\",\"header\":\"\",\"header_layout\":\"\",\"header_position\":\"\",\"date\":\"\",\"header_link\":\"\",\"subheader\":\"\",\"list_type\":\"\",\"pages\":\"\",\"recursive\":\"\",\"layout\":\"\",\"frame_class\":\"\",\"space_before_class\":\"\",\"space_after_class\":\"\",\"frame_layout\":\"\",\"background_color_class\":\"\",\"background_image\":\"\",\"background_image_options\":\"\",\"sectionIndex\":\"\",\"linkToTop\":\"\",\"sys_language_uid\":\"\",\"hidden\":\"\",\"starttime\":\"\",\"endtime\":\"\",\"fe_group\":\"\",\"editlock\":\"\",\"categories\":\"\",\"rowDescription\":\"\"}',0,0,0,0,'list','','',NULL,0,0,0,0,0,0,0,1,0,0,0,'default',0,'','',NULL,'2',0,'','',0,0,'workshopblog_detail',1,0,NULL,0,'','','',0,0,0,NULL,'',0,'','','',NULL,124,0,0,0,0,NULL,NULL,'1.3333333333333',10,'','','','default',NULL,'','',0,'','default','default','#FFFFFF','#333333','','',0,0,0,0,0,0,'default','none',0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"parallax\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"fade\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"filter\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','','','','',4);
/*!40000 ALTER TABLE `tt_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_bootstrappackage_accordion_item`
--

DROP TABLE IF EXISTS `tx_bootstrappackage_accordion_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_bootstrappackage_accordion_item` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `tt_content` int(10) unsigned DEFAULT 0,
  `header` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `bodytext` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `media` int(10) unsigned DEFAULT 0,
  `mediaorient` varchar(60) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'left',
  `imagecols` smallint(5) unsigned NOT NULL DEFAULT 1,
  `image_zoom` smallint(5) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_bootstrappackage_accordion_item`
--

LOCK TABLES `tx_bootstrappackage_accordion_item` WRITE;
/*!40000 ALTER TABLE `tx_bootstrappackage_accordion_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_bootstrappackage_accordion_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_bootstrappackage_card_group_item`
--

DROP TABLE IF EXISTS `tx_bootstrappackage_card_group_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_bootstrappackage_card_group_item` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `tt_content` int(10) unsigned DEFAULT 0,
  `header` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `subheader` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `image` int(11) NOT NULL DEFAULT 0,
  `bodytext` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `link` varchar(1024) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `link_title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `link_icon_set` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `link_icon_identifier` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `link_icon` int(10) unsigned DEFAULT 0,
  `link_class` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_bootstrappackage_card_group_item`
--

LOCK TABLES `tx_bootstrappackage_card_group_item` WRITE;
/*!40000 ALTER TABLE `tx_bootstrappackage_card_group_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_bootstrappackage_card_group_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_bootstrappackage_carousel_item`
--

DROP TABLE IF EXISTS `tx_bootstrappackage_carousel_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_bootstrappackage_carousel_item` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `tt_content` int(10) unsigned DEFAULT 0,
  `item_type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `layout` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `header` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `header_layout` smallint(5) unsigned NOT NULL DEFAULT 1,
  `header_position` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'center',
  `header_class` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `subheader` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `subheader_layout` smallint(5) unsigned NOT NULL DEFAULT 2,
  `subheader_class` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `nav_title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `button_text` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `bodytext` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `image` int(10) unsigned DEFAULT 0,
  `link` varchar(1024) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `text_color` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `background_color` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `background_image` int(10) unsigned DEFAULT 0,
  `background_image_options` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_bootstrappackage_carousel_item`
--

LOCK TABLES `tx_bootstrappackage_carousel_item` WRITE;
/*!40000 ALTER TABLE `tx_bootstrappackage_carousel_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_bootstrappackage_carousel_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_bootstrappackage_icon_group_item`
--

DROP TABLE IF EXISTS `tx_bootstrappackage_icon_group_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_bootstrappackage_icon_group_item` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `tt_content` int(10) unsigned DEFAULT 0,
  `header` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `subheader` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `bodytext` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `link` varchar(1024) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `icon_set` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `icon_identifier` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `icon_file` int(10) unsigned DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_bootstrappackage_icon_group_item`
--

LOCK TABLES `tx_bootstrappackage_icon_group_item` WRITE;
/*!40000 ALTER TABLE `tx_bootstrappackage_icon_group_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_bootstrappackage_icon_group_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_bootstrappackage_tab_item`
--

DROP TABLE IF EXISTS `tx_bootstrappackage_tab_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_bootstrappackage_tab_item` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `tt_content` int(10) unsigned DEFAULT 0,
  `header` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `bodytext` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `media` int(10) unsigned DEFAULT 0,
  `mediaorient` varchar(60) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'left',
  `imagecols` smallint(5) unsigned NOT NULL DEFAULT 1,
  `image_zoom` smallint(5) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_bootstrappackage_tab_item`
--

LOCK TABLES `tx_bootstrappackage_tab_item` WRITE;
/*!40000 ALTER TABLE `tx_bootstrappackage_tab_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_bootstrappackage_tab_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_bootstrappackage_timeline_item`
--

DROP TABLE IF EXISTS `tx_bootstrappackage_timeline_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_bootstrappackage_timeline_item` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `tt_content` int(10) unsigned DEFAULT 0,
  `date` datetime DEFAULT NULL,
  `header` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `bodytext` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `icon_set` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `icon_identifier` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `icon_file` int(10) unsigned DEFAULT 0,
  `image` int(10) unsigned DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_bootstrappackage_timeline_item`
--

LOCK TABLES `tx_bootstrappackage_timeline_item` WRITE;
/*!40000 ALTER TABLE `tx_bootstrappackage_timeline_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_bootstrappackage_timeline_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_extensionmanager_domain_model_extension`
--

DROP TABLE IF EXISTS `tx_extensionmanager_domain_model_extension`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_extensionmanager_domain_model_extension` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `extension_key` varchar(60) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `remote` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'ter',
  `version` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `alldownloadcounter` int(10) unsigned NOT NULL DEFAULT 0,
  `downloadcounter` int(10) unsigned NOT NULL DEFAULT 0,
  `title` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `serialized_dependencies` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `author_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `author_email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `ownerusername` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `md5hash` varchar(35) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `authorcompany` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `integer_version` int(11) NOT NULL DEFAULT 0,
  `lastreviewedversion` int(11) NOT NULL DEFAULT 0,
  `documentation_link` varchar(2048) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `distribution_image` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `distribution_welcome_image` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `state` int(10) unsigned NOT NULL DEFAULT 0,
  `category` int(10) unsigned NOT NULL DEFAULT 0,
  `last_updated` bigint(20) NOT NULL DEFAULT 0,
  `update_comment` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `current_version` smallint(5) unsigned NOT NULL DEFAULT 0,
  `review_state` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `versionextrepo` (`extension_key`,`version`,`remote`),
  KEY `index_extrepo` (`extension_key`,`remote`),
  KEY `index_versionrepo` (`integer_version`,`remote`,`extension_key`),
  KEY `index_currentversions` (`current_version`,`review_state`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_extensionmanager_domain_model_extension`
--

LOCK TABLES `tx_extensionmanager_domain_model_extension` WRITE;
/*!40000 ALTER TABLE `tx_extensionmanager_domain_model_extension` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_extensionmanager_domain_model_extension` ENABLE KEYS */;
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
  `title` varchar(255) NOT NULL DEFAULT '',
  `date` int(11) NOT NULL DEFAULT 0,
  `teaser` text DEFAULT NULL,
  `bodytext` text DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_workshopblog_domain_model_blog`
--

LOCK TABLES `tx_workshopblog_domain_model_blog` WRITE;
/*!40000 ALTER TABLE `tx_workshopblog_domain_model_blog` DISABLE KEYS */;
INSERT INTO `tx_workshopblog_domain_model_blog` VALUES
(1,2,1650471127,1650466021,1,0,0,'Welcome to Vienna 2022!',1650456000,'Finally a real TYPO3 Event again','<p>lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;</p>'),
(2,2,1742600927,1650472018,1,1,0,'Welcome to Vienna 2022!',1650456000,'Finally a real TYPO3 Event again','<p>lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;</p>'),
(3,2,1742600927,1650472020,1,1,0,'Welcome to Vienna 2022!',1650456000,'Finally a real TYPO3 Event again','<p>lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;</p>'),
(4,2,1742600927,1650472022,1,1,0,'Welcome to Vienna 2022!',1650456000,'Finally a real TYPO3 Event again','<p>lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;lorem ipsum vitae dolor sit amet&nbsp;</p>'),
(5,2,1742600973,1742600958,0,0,0,'Hello Jena',1742600940,'test','<p>und noch mehr info</p>');
/*!40000 ALTER TABLE `tx_workshopblog_domain_model_blog` ENABLE KEYS */;
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
  `commentor` varchar(255) NOT NULL DEFAULT '',
  `comment` text DEFAULT NULL,
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
INSERT INTO `tx_workshopblog_domain_model_comment` VALUES
(1,2,1650471246,1650466272,0,1,0,'Itsa me Mario','great content!',1650466273,1),
(2,2,1650471246,1650466272,0,1,0,'Itsa me Mario','great content!',1650466273,1),
(3,2,1650471246,1650466411,0,1,0,'mario','noch ein kommentar',1650466411,1),
(4,2,1650471246,1650468828,0,1,0,'test','test',1650468828,1),
(5,2,1650471246,1650468828,0,1,0,'test','test',1650468828,1),
(6,2,1650471246,1650469551,0,1,0,'test2','test2',1650469551,1),
(7,2,1650471246,1650470557,0,1,0,'test 3','test 3',1650470558,1);
/*!40000 ALTER TABLE `tx_workshopblog_domain_model_comment` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-22  0:50:18
