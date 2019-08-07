-- MySQL dump 10.13  Distrib 8.0.12, for macos10.13 (x86_64)
--
-- Host: localhost    Database: schauraum
-- ------------------------------------------------------
-- Server version	8.0.12

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
-- Table structure for table `pma__bookmark`
--

DROP TABLE IF EXISTS `pma__bookmark`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `pma__bookmark` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dbase` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pma__bookmark`
--

LOCK TABLES `pma__bookmark` WRITE;
/*!40000 ALTER TABLE `pma__bookmark` DISABLE KEYS */;
/*!40000 ALTER TABLE `pma__bookmark` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pma__central_columns`
--

DROP TABLE IF EXISTS `pma__central_columns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `col_length` text CHARACTER SET utf8 COLLATE utf8_bin,
  `col_collation` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '',
  `col_default` text CHARACTER SET utf8 COLLATE utf8_bin,
  PRIMARY KEY (`db_name`,`col_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pma__central_columns`
--

LOCK TABLES `pma__central_columns` WRITE;
/*!40000 ALTER TABLE `pma__central_columns` DISABLE KEYS */;
/*!40000 ALTER TABLE `pma__central_columns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pma__column_info`
--

DROP TABLE IF EXISTS `pma__column_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `pma__column_info` (
  `id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `db_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pma__column_info`
--

LOCK TABLES `pma__column_info` WRITE;
/*!40000 ALTER TABLE `pma__column_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `pma__column_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pma__designer_settings`
--

DROP TABLE IF EXISTS `pma__designer_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `settings_data` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pma__designer_settings`
--

LOCK TABLES `pma__designer_settings` WRITE;
/*!40000 ALTER TABLE `pma__designer_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `pma__designer_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pma__export_templates`
--

DROP TABLE IF EXISTS `pma__export_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `pma__export_templates` (
  `id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `template_data` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pma__export_templates`
--

LOCK TABLES `pma__export_templates` WRITE;
/*!40000 ALTER TABLE `pma__export_templates` DISABLE KEYS */;
/*!40000 ALTER TABLE `pma__export_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pma__favorite`
--

DROP TABLE IF EXISTS `pma__favorite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `pma__favorite` (
  `username` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `tables` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pma__favorite`
--

LOCK TABLES `pma__favorite` WRITE;
/*!40000 ALTER TABLE `pma__favorite` DISABLE KEYS */;
/*!40000 ALTER TABLE `pma__favorite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pma__history`
--

DROP TABLE IF EXISTS `pma__history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `pma__history` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `username` (`username`,`db`,`table`,`timevalue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pma__history`
--

LOCK TABLES `pma__history` WRITE;
/*!40000 ALTER TABLE `pma__history` DISABLE KEYS */;
/*!40000 ALTER TABLE `pma__history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pma__navigationhiding`
--

DROP TABLE IF EXISTS `pma__navigationhiding`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pma__navigationhiding`
--

LOCK TABLES `pma__navigationhiding` WRITE;
/*!40000 ALTER TABLE `pma__navigationhiding` DISABLE KEYS */;
/*!40000 ALTER TABLE `pma__navigationhiding` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pma__pdf_pages`
--

DROP TABLE IF EXISTS `pma__pdf_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`page_nr`),
  KEY `db_name` (`db_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pma__pdf_pages`
--

LOCK TABLES `pma__pdf_pages` WRITE;
/*!40000 ALTER TABLE `pma__pdf_pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `pma__pdf_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pma__recent`
--

DROP TABLE IF EXISTS `pma__recent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `pma__recent` (
  `username` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `tables` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pma__recent`
--

LOCK TABLES `pma__recent` WRITE;
/*!40000 ALTER TABLE `pma__recent` DISABLE KEYS */;
/*!40000 ALTER TABLE `pma__recent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pma__relation`
--

DROP TABLE IF EXISTS `pma__relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `pma__relation` (
  `master_db` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  KEY `foreign_field` (`foreign_db`,`foreign_table`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pma__relation`
--

LOCK TABLES `pma__relation` WRITE;
/*!40000 ALTER TABLE `pma__relation` DISABLE KEYS */;
/*!40000 ALTER TABLE `pma__relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pma__savedsearches`
--

DROP TABLE IF EXISTS `pma__savedsearches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `pma__savedsearches` (
  `id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pma__savedsearches`
--

LOCK TABLES `pma__savedsearches` WRITE;
/*!40000 ALTER TABLE `pma__savedsearches` DISABLE KEYS */;
/*!40000 ALTER TABLE `pma__savedsearches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pma__table_coords`
--

DROP TABLE IF EXISTS `pma__table_coords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float unsigned NOT NULL DEFAULT '0',
  `y` float unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pma__table_coords`
--

LOCK TABLES `pma__table_coords` WRITE;
/*!40000 ALTER TABLE `pma__table_coords` DISABLE KEYS */;
/*!40000 ALTER TABLE `pma__table_coords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pma__table_info`
--

DROP TABLE IF EXISTS `pma__table_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`db_name`,`table_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pma__table_info`
--

LOCK TABLES `pma__table_info` WRITE;
/*!40000 ALTER TABLE `pma__table_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `pma__table_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pma__table_uiprefs`
--

DROP TABLE IF EXISTS `pma__table_uiprefs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `prefs` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`username`,`db_name`,`table_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pma__table_uiprefs`
--

LOCK TABLES `pma__table_uiprefs` WRITE;
/*!40000 ALTER TABLE `pma__table_uiprefs` DISABLE KEYS */;
/*!40000 ALTER TABLE `pma__table_uiprefs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pma__tracking`
--

DROP TABLE IF EXISTS `pma__tracking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `version` int(10) unsigned NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `schema_sql` text CHARACTER SET utf8 COLLATE utf8_bin,
  `data_sql` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`db_name`,`table_name`,`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pma__tracking`
--

LOCK TABLES `pma__tracking` WRITE;
/*!40000 ALTER TABLE `pma__tracking` DISABLE KEYS */;
/*!40000 ALTER TABLE `pma__tracking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pma__userconfig`
--

DROP TABLE IF EXISTS `pma__userconfig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `pma__userconfig` (
  `username` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pma__userconfig`
--

LOCK TABLES `pma__userconfig` WRITE;
/*!40000 ALTER TABLE `pma__userconfig` DISABLE KEYS */;
/*!40000 ALTER TABLE `pma__userconfig` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pma__usergroups`
--

DROP TABLE IF EXISTS `pma__usergroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT 'N',
  PRIMARY KEY (`usergroup`,`tab`,`allowed`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pma__usergroups`
--

LOCK TABLES `pma__usergroups` WRITE;
/*!40000 ALTER TABLE `pma__usergroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `pma__usergroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pma__users`
--

DROP TABLE IF EXISTS `pma__users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `pma__users` (
  `username` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`,`usergroup`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pma__users`
--

LOCK TABLES `pma__users` WRITE;
/*!40000 ALTER TABLE `pma__users` DISABLE KEYS */;
/*!40000 ALTER TABLE `pma__users` ENABLE KEYS */;
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
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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
  `comment_author` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2018-07-10 10:01:51','2018-07-10 10:01:51','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.',0,'1','','',0,0),(2,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2018-07-10 10:01:51','2018-07-10 10:01:51','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.',0,'1','','',0,0),(3,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2018-07-10 10:01:51','2018-07-10 10:01:51','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.',0,'1','','',0,0),(24,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2018-07-10 10:01:51','2018-07-10 10:01:51','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.',0,'1','','',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_layerslider`
--

DROP TABLE IF EXISTS `wp_layerslider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_layerslider` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `author` int(10) NOT NULL DEFAULT '0',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_c` int(10) NOT NULL,
  `date_m` int(11) NOT NULL,
  `flag_hidden` tinyint(1) NOT NULL DEFAULT '0',
  `flag_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_layerslider`
--

LOCK TABLES `wp_layerslider` WRITE;
/*!40000 ALTER TABLE `wp_layerslider` DISABLE KEYS */;
INSERT INTO `wp_layerslider` VALUES (1,0,'Enfold - most beautiful theme ever','','{\"properties\":{\"title\":\"Enfold - most beautiful theme ever\",\"width\":\"100%\",\"height\":\"470\",\"responsive\":\"on\",\"forceresponsive\":\"on\",\"responsiveunder\":\"1140\",\"sublayercontainer\":\"1140\",\"firstlayer\":\"1\",\"animatefirstlayer\":\"on\",\"twowayslideshow\":\"on\",\"loops\":\"0\",\"forceloopnum\":\"on\",\"autoplayvideos\":\"on\",\"autopauseslideshow\":\"auto\",\"youtubepreview\":\"maxresdefault.jpg\",\"keybnav\":\"on\",\"touchnav\":\"on\",\"skin\":\"fullwidth\",\"backgroundcolor\":\"\",\"backgroundimage\":\"\",\"sliderstyle\":\"\",\"navprevnext\":\"on\",\"navstartstop\":\"on\",\"navbuttons\":\"on\",\"hoverprevnext\":\"on\",\"hoverbottomnav\":\"on\",\"thumb_nav\":\"disabled\",\"thumb_width\":\"80\",\"thumb_height\":\"60\",\"thumb_container_width\":\"60%\",\"thumb_active_opacity\":\"35\",\"thumb_inactive_opacity\":\"100\",\"imgpreload\":\"on\",\"relativeurls\":\"on\",\"yourlogo\":\"\",\"yourlogostyle\":\"\",\"yourlogolink\":\"\",\"yourlogotarget\":\"_self\",\"cbinit\":\"function(element) { }\",\"cbstart\":\"function(data) { }\",\"cbstop\":\"function(data) { }\",\"cbpause\":\"function(data) { }\",\"cbanimstart\":\"function(data) { }\",\"cbanimstop\":\"function(data) { }\",\"cbprev\":\"function(data) { }\",\"cbnext\":\"function(data) { }\"},\"layers\":[{\"properties\":{\"3d_transitions\":\"all\",\"2d_transitions\":\"11,13,23\",\"custom_3d_transitions\":\"\",\"custom_2d_transitions\":\"\",\"background\":\"\\/wp-content\\/uploads\\/2019\\/08\\/xdssss-1.jpg\",\"thumbnail\":\"\",\"slidedelay\":\"7000\",\"new_transitions\":\"on\",\"slidedirection\":\"top\",\"timeshift\":\"0\",\"durationin\":\"1500\",\"easingin\":\"easeInOutQuint\",\"delayin\":\"0\",\"durationout\":\"1500\",\"easingout\":\"easeInOutQuint\",\"delayout\":\"500\",\"layer_link\":\"\",\"layer_link_target\":\"_self\",\"id\":\"\",\"deeplink\":\"\",\"backgroundId\":34,\"backgroundThumb\":\"http:\\/\\/schauraum.at.w019acaa.kasserver.com\\/wp-content\\/uploads\\/2019\\/08\\/xdssss-1.jpg\"},\"sublayers\":[]}]}',1531217156,1565127407,0,0),(2,0,'Why Enfold - Small Header','','{\"properties\":{\"title\":\"Why Enfold - Small Header\",\"width\":\"100%\",\"height\":\"150\",\"responsive\":\"on\",\"forceresponsive\":\"on\",\"responsiveunder\":\"1140\",\"sublayercontainer\":\"1140\",\"firstlayer\":\"1\",\"animatefirstlayer\":\"on\",\"twowayslideshow\":\"on\",\"loops\":\"1\",\"forceloopnum\":\"on\",\"autoplayvideos\":\"on\",\"autopauseslideshow\":\"auto\",\"youtubepreview\":\"maxresdefault.jpg\",\"skin\":\"fullwidth\",\"backgroundcolor\":\"#aac98e\",\"backgroundimage\":\"\",\"sliderstyle\":\"\",\"thumb_nav\":\"disabled\",\"thumb_width\":\"100\",\"thumb_height\":\"60\",\"thumb_container_width\":\"60%\",\"thumb_active_opacity\":\"35\",\"thumb_inactive_opacity\":\"100\",\"imgpreload\":\"on\",\"yourlogo\":\"\",\"yourlogostyle\":\"left: 10px; top: 10px;\",\"yourlogolink\":\"\",\"yourlogotarget\":\"_self\",\"cbinit\":\"function(element) { }\",\"cbstart\":\"function(data) { }\",\"cbstop\":\"function(data) { }\",\"cbpause\":\"function(data) { }\",\"cbanimstart\":\"function(data) { }\",\"cbanimstop\":\"function(data) { }\",\"cbprev\":\"function(data) { }\",\"cbnext\":\"function(data) { }\"},\"layers\":[{\"properties\":{\"3d_transitions\":\"\",\"2d_transitions\":\"\",\"custom_3d_transitions\":\"\",\"custom_2d_transitions\":\"\",\"background\":\"http:\\/\\/dieerdenmutter.at\\/wp-content\\/themes\\/Enfold\\/Enfold\\/config-layerslider\\/LayerSlider\\/avia-samples\\/slide3_Layer_1.png\",\"thumbnail\":\"\",\"slidedelay\":\"4000\",\"new_transitions\":\"on\",\"slidedirection\":\"right\",\"timeshift\":\"0\",\"durationin\":\"1500\",\"easingin\":\"easeInOutQuint\",\"delayin\":\"0\",\"durationout\":\"1500\",\"easingout\":\"easeInOutQuint\",\"delayout\":\"0\",\"layer_link\":\"\",\"layer_link_target\":\"_self\",\"id\":\"\",\"deeplink\":\"\"},\"sublayers\":[{\"subtitle\":\"Layer #1 copy\",\"type\":\"img\",\"image\":\"http:\\/\\/dieerdenmutter.at\\/wp-content\\/themes\\/Enfold\\/Enfold\\/config-layerslider\\/LayerSlider\\/avia-samples\\/slide3_l16.png\",\"html\":\"\",\"slidedirection\":\"bottom\",\"durationin\":\"1200\",\"easingin\":\"easeInOutQuint\",\"delayin\":\"150\",\"rotatein\":\"0\",\"scalein\":\"1.0\",\"slideoutdirection\":\"bottom\",\"durationout\":\"1500\",\"easingout\":\"easeInOutQuint\",\"delayout\":\"0\",\"rotateout\":\"0\",\"scaleout\":\"1.0\",\"level\":\"-1\",\"showuntil\":\"0\",\"url\":\"\",\"target\":\"_self\",\"styles\":\"{}\",\"top\":\"-18px\",\"left\":\"800px\",\"style\":\"\",\"id\":\"\",\"class\":\"\",\"title\":\"\",\"alt\":\"\",\"rel\":\"\"},{\"subtitle\":\"Layer #1 copy\",\"type\":\"img\",\"image\":\"http:\\/\\/dieerdenmutter.at\\/wp-content\\/themes\\/Enfold\\/Enfold\\/config-layerslider\\/LayerSlider\\/avia-samples\\/slide3_l13.png\",\"html\":\"\",\"slidedirection\":\"top\",\"durationin\":\"1300\",\"easingin\":\"easeInOutQuint\",\"delayin\":\"200\",\"rotatein\":\"0\",\"scalein\":\"1.0\",\"slideoutdirection\":\"top\",\"durationout\":\"1500\",\"easingout\":\"easeInOutQuint\",\"delayout\":\"0\",\"rotateout\":\"0\",\"scaleout\":\"1.0\",\"level\":\"-1\",\"showuntil\":\"0\",\"url\":\"\",\"target\":\"_self\",\"styles\":\"{}\",\"top\":\"-156px\",\"left\":\"842px\",\"style\":\"\",\"id\":\"\",\"class\":\"\",\"title\":\"\",\"alt\":\"\",\"rel\":\"\"},{\"subtitle\":\"Layer #1 copy copy\",\"type\":\"img\",\"image\":\"http:\\/\\/dieerdenmutter.at\\/wp-content\\/themes\\/Enfold\\/Enfold\\/config-layerslider\\/LayerSlider\\/avia-samples\\/slide3_l17.png\",\"html\":\"\",\"slidedirection\":\"top\",\"durationin\":\"1800\",\"easingin\":\"easeInOutQuint\",\"delayin\":\"350\",\"rotatein\":\"0\",\"scalein\":\"1.0\",\"slideoutdirection\":\"top\",\"durationout\":\"1500\",\"easingout\":\"easeInOutQuint\",\"delayout\":\"0\",\"rotateout\":\"0\",\"scaleout\":\"1.0\",\"level\":\"-1\",\"showuntil\":\"0\",\"url\":\"\",\"target\":\"_self\",\"styles\":\"{}\",\"top\":\"-279px\",\"left\":\"951px\",\"style\":\"\",\"id\":\"\",\"class\":\"\",\"title\":\"\",\"alt\":\"\",\"rel\":\"\"},{\"subtitle\":\"Layer #1\",\"type\":\"img\",\"image\":\"http:\\/\\/dieerdenmutter.at\\/wp-content\\/themes\\/Enfold\\/Enfold\\/config-layerslider\\/LayerSlider\\/avia-samples\\/slide3_l13.png\",\"html\":\"\",\"slidedirection\":\"top\",\"durationin\":\"1500\",\"easingin\":\"easeInOutQuint\",\"delayin\":\"450\",\"rotatein\":\"0\",\"scalein\":\"1.0\",\"slideoutdirection\":\"top\",\"durationout\":\"1500\",\"easingout\":\"easeInOutQuint\",\"delayout\":\"0\",\"rotateout\":\"0\",\"scaleout\":\"1.0\",\"level\":\"-1\",\"showuntil\":\"0\",\"url\":\"\",\"target\":\"_self\",\"styles\":\"{}\",\"top\":\"-156px\",\"left\":\"51px\",\"style\":\"\",\"id\":\"\",\"class\":\"\",\"title\":\"\",\"alt\":\"\",\"rel\":\"\"},{\"subtitle\":\"Layer #1 copy copy\",\"type\":\"img\",\"image\":\"http:\\/\\/dieerdenmutter.at\\/wp-content\\/themes\\/Enfold\\/Enfold\\/config-layerslider\\/LayerSlider\\/avia-samples\\/slide3_l16.png\",\"html\":\"\",\"slidedirection\":\"bottom\",\"durationin\":\"2500\",\"easingin\":\"easeInOutQuint\",\"delayin\":\"600\",\"rotatein\":\"0\",\"scalein\":\"1.0\",\"slideoutdirection\":\"bottom\",\"durationout\":\"1500\",\"easingout\":\"easeInOutQuint\",\"delayout\":\"0\",\"rotateout\":\"0\",\"scaleout\":\"1.0\",\"level\":\"-1\",\"showuntil\":\"0\",\"url\":\"\",\"target\":\"_self\",\"styles\":\"{}\",\"top\":\"-22px\",\"left\":\"-107px\",\"style\":\"\",\"id\":\"\",\"class\":\"\",\"title\":\"\",\"alt\":\"\",\"rel\":\"\"},{\"subtitle\":\"Layer #6\",\"type\":\"h2\",\"image\":\"\",\"html\":\"Why you should choose\",\"slidedirection\":\"left\",\"durationin\":\"1500\",\"easingin\":\"easeInOutQuint\",\"delayin\":\"650\",\"rotatein\":\"0\",\"scalein\":\"1.0\",\"slideoutdirection\":\"auto\",\"durationout\":\"1500\",\"easingout\":\"easeInOutQuint\",\"delayout\":\"0\",\"rotateout\":\"0\",\"scaleout\":\"1.0\",\"level\":\"-1\",\"showuntil\":\"0\",\"url\":\"\",\"target\":\"_self\",\"styles\":\"{\\\\\\\"font-size\\\\\\\":\\\\\\\"40px\\\\\\\",\\\\\\\"color\\\\\\\":\\\\\\\"white\\\\\\\"}\",\"top\":\"68px\",\"left\":\"214px\",\"style\":\"\",\"id\":\"\",\"class\":\"\",\"title\":\"\",\"alt\":\"\",\"rel\":\"\"},{\"subtitle\":\"Layer #7\",\"type\":\"img\",\"image\":\"http:\\/\\/dieerdenmutter.at\\/wp-content\\/themes\\/Enfold\\/Enfold\\/config-layerslider\\/LayerSlider\\/avia-samples\\/slide1_Layer_2.png\",\"html\":\"\",\"slidedirection\":\"bottom\",\"durationin\":\"1000\",\"easingin\":\"easeInOutQuint\",\"delayin\":\"800\",\"rotatein\":\"0\",\"scalein\":\"1.0\",\"slideoutdirection\":\"auto\",\"durationout\":\"1500\",\"easingout\":\"easeInOutQuint\",\"delayout\":\"0\",\"rotateout\":\"0\",\"scaleout\":\"1.0\",\"level\":\"-1\",\"showuntil\":\"0\",\"url\":\"\",\"target\":\"_self\",\"styles\":\"{}\",\"top\":\"20px\",\"left\":\"684px\",\"style\":\"\",\"id\":\"\",\"class\":\"\",\"title\":\"\",\"alt\":\"\",\"rel\":\"\"}]}]}',1531217156,1531217156,0,0);
/*!40000 ALTER TABLE `wp_layerslider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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
  `option_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=293 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://schauraum.at.w019acaa.kasserver.com','yes'),
(2,'home','http://schauraum.at.w019acaa.kasserver.com','yes'),
(3,'blogname','wordpress base with enfold','yes'),
(4,'blogdescription','Just another WordPress site','yes'),
(5,'users_can_register','0','yes'),
(6,'admin_email','abpprkonsalting@gmail.com','yes'),
(7,'start_of_week','1','yes'),
(8,'use_balanceTags','0','yes'),
(9,'use_smilies','1','yes'),
(10,'require_name_email','1','yes'),
(11,'comments_notify','1','yes'),
(12,'posts_per_rss','10','yes'),
(13,'rss_use_excerpt','0','yes'),
(14,'mailserver_url','mail.example.com','yes'),
(15,'mailserver_login','login@example.com','yes'),
(16,'mailserver_pass','password','yes'),
(17,'mailserver_port','110','yes'),
(18,'default_category','1','yes'),
(19,'default_comment_status','open','yes'),
(20,'default_ping_status','open','yes'),
(21,'default_pingback_flag','1','yes'),
(22,'posts_per_page','10','yes'),
(23,'date_format','F j, Y','yes'),
(24,'time_format','g:i a','yes'),
(25,'links_updated_date_format','F j, Y g:i a','yes'),
(26,'comment_moderation','0','yes'),
(27,'moderation_notify','1','yes'),
(28,'permalink_structure','','yes'),
(29,'rewrite_rules','','yes'),
(30,'hack_file','0','yes'),
(31,'blog_charset','UTF-8','yes'),
(32,'moderation_keys','','no'),
(33,'active_plugins','a:0:{}','yes'),
(34,'category_base','','yes'),
(35,'ping_sites','http://rpc.pingomatic.com/','yes'),
(36,'comment_max_links','2','yes'),
(37,'gmt_offset','0','yes'),
(38,'default_email_category','1','yes'),
(39,'recently_edited','a:2:{i:0;s:148:\"/home/scarface/Documentos/Proyectos_Wordpress(Luis)/shauraum/repo/schauraum.at.w019acaa.kasserver.com/site/wp-content/themes/Enfold/Enfold/style.css\";i:1;s:0:\"\";}','no'),
(40,'template','Enfold/Enfold','yes'),
(41,'stylesheet','Enfold/Enfold','yes'),
(42,'comment_whitelist','1','yes'),
(43,'blacklist_keys','','no'),
(44,'comment_registration','0','yes'),
(45,'html_type','text/html','yes'),
(46,'use_trackback','0','yes'),
(47,'default_role','subscriber','yes'),
(48,'db_version','38590','yes'),
(49,'uploads_use_yearmonth_folders','1','yes'),
(50,'upload_path','','yes'),
(51,'blog_public','1','yes'),
(52,'default_link_category','2','yes'),
(53,'show_on_front','posts','yes'),
(54,'tag_base','','yes'),
(55,'show_avatars','1','yes'),
(56,'avatar_rating','G','yes'),
(57,'upload_url_path','','yes'),
(58,'thumbnail_size_w','80','yes'),
(59,'thumbnail_size_h','80','yes'),
(60,'thumbnail_crop','1','yes'),
(61,'medium_size_w','300','yes'),
(62,'medium_size_h','300','yes'),
(63,'avatar_default','mystery','yes'),
(64,'large_size_w','1030','yes'),
(65,'large_size_h','1030','yes'),
(66,'image_default_link_type','none','yes'),
(67,'image_default_size','','yes'),
(68,'image_default_align','','yes'),
(69,'close_comments_for_old_posts','0','yes'),
(70,'close_comments_days_old','14','yes'),
(71,'thread_comments','1','yes'),
(72,'thread_comments_depth','5','yes'),
(73,'page_comments','0','yes'),
(74,'comments_per_page','50','yes'),
(75,'default_comments_page','newest','yes'),
(76,'comment_order','asc','yes'),
(77,'sticky_posts','a:0:{}','yes'),
(78,'widget_categories','a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes'),
(79,'widget_text','a:3:{i:1;a:0:{}i:2;a:4:{s:5:\"title\";s:7:\"Kontakt\";s:4:\"text\";s:0:\"\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;}','yes'),
(80,'widget_rss','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes'),
(81,'uninstall_plugins','a:3:{i:0;b:0;s:223:\"home/scarface/Documentos/Proyectos_Wordpress(Luis)/shauraum/repo/schauraum.at.w019acaa.kasserver.com/site/wp-content/themes/Enfold/Enfold/config-layerslider/LayerSlider/layerslider.php\";s:29:\"layerslider_uninstall_scripts\";s:141:\"Volumes/Proyectos Mac/schauraum.at.w019acaa.kasserver.com/site/wp-content/themes/Enfold/Enfold/config-layerslider/LayerSlider/layerslider.php\";s:29:\"layerslider_uninstall_scripts\";}','yes'),
(82,'timezone_string','','yes'),
(84,'page_on_front','0','yes'),
(85,'default_post_format','0','yes'),
(86,'link_manager_enabled','0','yes'),
(87,'finished_splitting_shared_terms','1','yes'),
(88,'site_icon','30','yes'),
(89,'medium_large_size_w','768','yes'),
(90,'medium_large_size_h','0','yes'),
(91,'wp_page_for_privacy_policy','3','yes'),
(92,'initial_db_version','38590','yes'),
(93,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes'),
(94,'fresh_site','0','yes'),
(95,'widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes'),
(96,'widget_recent-posts','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes'),
(97,'widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes'),
(98,'widget_archives','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes'),
(99,'widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes'),
(100,'sidebars_widgets','a:8:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"av_everywhere\";a:0:{}s:7:\"av_blog\";a:0:{}s:8:\"av_pages\";a:0:{}s:11:\"av_footer_1\";a:1:{i:0;s:13:\"custom_html-3\";}s:11:\"av_footer_2\";a:0:{}s:11:\"av_footer_3\";a:0:{}s:13:\"array_version\";i:3;}','yes'),
(101,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
(102,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
(103,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
(104,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
(105,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
(106,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
(107,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
(108,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
(109,'widget_custom_html','a:3:{s:12:\"_multiwidget\";i:1;i:3;a:2:{s:5:\"title\";s:0:\"\";s:7:\"content\";s:159:\"<div id=\"footc12\" style=\"padding:70px; width:300px\">\r\n	<table>	\r\n	<tr>\r\n		Kontakt\r\n	</tr>\r\n	<tr>\r\n		Impressum\r\n	</tr>\r\n		<tr>\r\n		AGB\r\n	</tr>\r\n	</table>\r\n</div>\";}i:4;a:2:{s:5:\"title\";s:0:\"\";s:7:\"content\";s:50:\"<div id=\"footc11\">\r\n	<p>\r\n		Kontakt\r\n	</p>\r\n</div>\";}}','yes'),
(110,'cron','a:5:{i:1565179312;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1565189532;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1565215312;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1565258618;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}','yes'),
(111,'theme_mods_twentyseventeen','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1531217156;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}','yes'),
(115,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:6:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.2.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.2.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.2.2\";s:7:\"version\";s:5:\"5.2.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.2.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.2.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.2.2\";s:7:\"version\";s:5:\"5.2.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.2.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.2.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.2.1\";s:7:\"version\";s:5:\"5.2.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:3;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.2.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.2-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.2\";s:7:\"version\";s:3:\"5.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:4;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.1.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.1.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.1.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.1.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.1.1\";s:7:\"version\";s:5:\"5.1.1\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:5;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.0.4.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.0.4.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.0.4-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.0.4-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.0.4\";s:7:\"version\";s:5:\"5.0.4\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1565176586;s:15:\"version_checked\";s:6:\"4.9.10\";s:12:\"translations\";a:0:{}}','no'),
(125,'can_compress_scripts','0','no'),
(138,'current_theme','Enfold','yes'),
(139,'theme_mods_Enfold/Enfold','a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:4:\"avia\";i:2;}s:18:\"custom_css_post_id\";i:-1;}','yes'),
(140,'theme_switched','','yes'),
(141,'widget_newsbox','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
(142,'widget_portfoliobox','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
(143,'widget_avia_socialcount','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
(144,'widget_avia_combo_widget','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
(145,'widget_avia_partner_widget','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
(146,'widget_avia_google_maps','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
(147,'widget_avia_fb_likebox','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
(148,'widget_avia-instagram-feed','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
(149,'widget_avia_mailchimp_widget','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
(150,'ls-plugin-version','5.6.8','yes'),
(151,'ls-db-version','5.0.0','yes'),
(152,'ls-installed','1','yes'),
(153,'ls-google-fonts','a:0:{}','yes'),
(154,'ls-date-installed','1531217156','yes'),
(156,'enfold_layerslider_activated','1','yes'),
(157,'enfold_initial_version','3.8.4','yes'),
(158,'enfold_fixed_random','1','yes'),
(159,'shop_catalog_image_size','a:3:{s:5:\"width\";i:450;s:6:\"height\";i:450;s:4:\"crop\";b:1;}','yes'),
(160,'shop_single_image_size','a:3:{s:5:\"width\";i:450;s:6:\"height\";i:999;s:4:\"crop\";b:0;}','yes'),
(161,'shop_thumbnail_image_size','a:3:{s:5:\"width\";i:120;s:6:\"height\";i:120;s:4:\"crop\";b:1;}','yes'),
(162,'avia_woocommerce_column_count','3','yes'),
(163,'avia_woocommerce_product_count','15','yes'),
(164,'woocommerce_single_image_crop','no','yes'),
(165,'avia_permalink_settings','a:2:{s:24:\"portfolio_permalink_base\";s:14:\"portfolio-item\";s:31:\"portfolio_entries_taxonomy_base\";s:17:\"portfolio_entries\";}','yes'),
(166,'avia_options_enfold','a:1:{s:4:\"avia\";a:159:{s:9:\"frontpage\";s:2:\"11\";s:9:\"undefined\";s:25:\"menu_display::burger_menu\";s:8:\"blogpage\";s:0:\"\";s:4:\"logo\";s:77:\"http://schauraum.at.w019acaa.kasserver.com/wp-content/uploads/2019/08/ico.png\";s:7:\"favicon\";s:0:\"\";s:9:\"preloader\";s:8:\"disabled\";s:21:\"preloader_transitions\";s:21:\"preloader_transitions\";s:14:\"preloader_logo\";s:0:\"\";s:15:\"lightbox_active\";s:15:\"lightbox_active\";s:8:\"lock_alb\";s:8:\"disabled\";s:19:\"lock_alb_for_admins\";s:8:\"disabled\";s:6:\"markup\";s:0:\"\";s:16:\"color-body_style\";s:9:\"stretched\";s:17:\"color-frame_width\";s:2:\"20\";s:15:\"header_position\";s:10:\"header_top\";s:20:\"layout_align_content\";s:20:\"content_align_center\";s:18:\"sidebarmenu_sticky\";s:18:\"conditional_sticky\";s:19:\"sidebarmenu_widgets\";s:0:\"\";s:18:\"sidebarmenu_social\";s:8:\"disabled\";s:17:\"responsive_active\";s:17:\"responsive_active\";s:15:\"responsive_size\";s:6:\"1310px\";s:13:\"content_width\";s:2:\"73\";s:14:\"combined_width\";s:3:\"100\";s:12:\"color_scheme\";s:9:\"Greyscale\";s:24:\"colorset-header_color-bg\";s:7:\"#ffffff\";s:25:\"colorset-header_color-bg2\";s:7:\"#f8f8f8\";s:29:\"colorset-header_color-primary\";s:7:\"#c05f5f\";s:31:\"colorset-header_color-secondary\";s:7:\"#88bbc8\";s:27:\"colorset-header_color-color\";s:7:\"#333333\";s:26:\"colorset-header_color-meta\";s:7:\"#808080\";s:29:\"colorset-header_color-heading\";s:7:\"#000000\";s:28:\"colorset-header_color-border\";s:7:\"#e1e1e1\";s:25:\"colorset-header_color-img\";s:0:\"\";s:33:\"colorset-header_color-customimage\";s:0:\"\";s:25:\"colorset-header_color-pos\";s:13:\"center center\";s:28:\"colorset-header_color-repeat\";s:6:\"repeat\";s:28:\"colorset-header_color-attach\";s:6:\"scroll\";s:22:\"colorset-main_color-bg\";s:7:\"#ffffff\";s:23:\"colorset-main_color-bg2\";s:7:\"#f8f8f8\";s:27:\"colorset-main_color-primary\";s:7:\"#c05f5f\";s:29:\"colorset-main_color-secondary\";s:7:\"#88bbc8\";s:25:\"colorset-main_color-color\";s:7:\"#666666\";s:24:\"colorset-main_color-meta\";s:7:\"#919191\";s:27:\"colorset-main_color-heading\";s:7:\"#222222\";s:26:\"colorset-main_color-border\";s:7:\"#e1e1e1\";s:23:\"colorset-main_color-img\";s:0:\"\";s:31:\"colorset-main_color-customimage\";s:0:\"\";s:23:\"colorset-main_color-pos\";s:13:\"center center\";s:26:\"colorset-main_color-repeat\";s:6:\"repeat\";s:26:\"colorset-main_color-attach\";s:6:\"scroll\";s:27:\"colorset-alternate_color-bg\";s:7:\"#444444\";s:28:\"colorset-alternate_color-bg2\";s:7:\"#333333\";s:32:\"colorset-alternate_color-primary\";s:7:\"#88bbc8\";s:34:\"colorset-alternate_color-secondary\";s:7:\"#c05f5f\";s:30:\"colorset-alternate_color-color\";s:7:\"#eeeeee\";s:29:\"colorset-alternate_color-meta\";s:7:\"#a2a2a2\";s:32:\"colorset-alternate_color-heading\";s:7:\"#ffffff\";s:31:\"colorset-alternate_color-border\";s:7:\"#555555\";s:28:\"colorset-alternate_color-img\";s:0:\"\";s:36:\"colorset-alternate_color-customimage\";s:0:\"\";s:28:\"colorset-alternate_color-pos\";s:13:\"center center\";s:31:\"colorset-alternate_color-repeat\";s:6:\"repeat\";s:31:\"colorset-alternate_color-attach\";s:6:\"scroll\";s:24:\"colorset-footer_color-bg\";s:7:\"#393939\";s:25:\"colorset-footer_color-bg2\";s:7:\"#333333\";s:29:\"colorset-footer_color-primary\";s:7:\"#ffffff\";s:31:\"colorset-footer_color-secondary\";s:7:\"#aaaaaa\";s:27:\"colorset-footer_color-color\";s:7:\"#eeeeee\";s:26:\"colorset-footer_color-meta\";s:7:\"#9c9c9c\";s:29:\"colorset-footer_color-heading\";s:7:\"#9c9c9c\";s:28:\"colorset-footer_color-border\";s:7:\"#444444\";s:25:\"colorset-footer_color-img\";s:0:\"\";s:33:\"colorset-footer_color-customimage\";s:0:\"\";s:25:\"colorset-footer_color-pos\";s:13:\"center center\";s:28:\"colorset-footer_color-repeat\";s:6:\"repeat\";s:28:\"colorset-footer_color-attach\";s:6:\"scroll\";s:24:\"colorset-socket_color-bg\";s:7:\"#222222\";s:25:\"colorset-socket_color-bg2\";s:7:\"#000000\";s:29:\"colorset-socket_color-primary\";s:7:\"#ffffff\";s:31:\"colorset-socket_color-secondary\";s:7:\"#eeeeee\";s:27:\"colorset-socket_color-color\";s:7:\"#eeeeee\";s:26:\"colorset-socket_color-meta\";s:7:\"#919191\";s:29:\"colorset-socket_color-heading\";s:7:\"#ffffff\";s:28:\"colorset-socket_color-border\";s:7:\"#333333\";s:25:\"colorset-socket_color-img\";s:0:\"\";s:33:\"colorset-socket_color-customimage\";s:0:\"\";s:25:\"colorset-socket_color-pos\";s:13:\"center center\";s:28:\"colorset-socket_color-repeat\";s:6:\"repeat\";s:28:\"colorset-socket_color-attach\";s:6:\"scroll\";s:16:\"color-body_color\";s:7:\"#222222\";s:14:\"color-body_img\";s:0:\"\";s:22:\"color-body_customimage\";s:0:\"\";s:14:\"color-body_pos\";s:13:\"center center\";s:17:\"color-body_repeat\";s:6:\"repeat\";s:17:\"color-body_attach\";s:6:\"scroll\";s:14:\"google_webfont\";s:17:\"Open Sans:400,600\";s:12:\"default_font\";s:17:\"Open Sans:400,600\";s:23:\"color-default_font_size\";s:0:\"\";s:9:\"quick_css\";s:0:\"\";s:16:\"advanced_styling\";a:1:{i:0;a:7:{s:2:\"id\";s:9:\"main_menu\";s:5:\"color\";s:7:\"#ffffff\";s:16:\"background_color\";s:7:\"#3a4096\";s:12:\"border_color\";s:0:\"\";s:9:\"font_size\";s:0:\"\";s:11:\"font_family\";s:0:\"\";s:12:\"hover_active\";s:4:\"true\";}}s:13:\"header_layout\";s:37:\"logo_left bottom_nav_header menu_left\";s:11:\"header_size\";s:5:\"large\";s:18:\"header_custom_size\";s:3:\"150\";s:12:\"menu_display\";s:0:\"\";s:18:\"header_menu_border\";s:0:\"\";s:12:\"header_style\";s:14:\"minimal_header\";s:16:\"header_title_bar\";s:16:\"hidden_title_bar\";s:13:\"header_sticky\";s:13:\"header_sticky\";s:16:\"header_shrinking\";s:8:\"disabled\";s:18:\"header_unstick_top\";s:8:\"disabled\";s:14:\"header_stretch\";s:8:\"disabled\";s:17:\"header_searchicon\";s:8:\"disabled\";s:13:\"header_social\";s:0:\"\";s:21:\"header_secondary_menu\";s:0:\"\";s:19:\"header_phone_active\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:23:\"header_replacement_logo\";s:0:\"\";s:23:\"header_replacement_menu\";s:0:\"\";s:24:\"header_mobile_activation\";s:17:\"mobile_menu_phone\";s:22:\"header_mobile_behavior\";s:8:\"disabled\";s:14:\"archive_layout\";s:8:\"fullsize\";s:11:\"blog_layout\";s:8:\"fullsize\";s:13:\"single_layout\";s:8:\"fullsize\";s:11:\"page_layout\";s:8:\"fullsize\";s:19:\"smartphones_sidebar\";s:8:\"disabled\";s:16:\"page_nesting_nav\";s:8:\"disabled\";s:15:\"sidebar_styling\";s:17:\"no_sidebar_border\";s:22:\"display_widgets_socket\";s:3:\"all\";s:14:\"footer_columns\";s:1:\"3\";s:9:\"copyright\";s:0:\"\";s:13:\"footer_social\";s:8:\"disabled\";s:17:\"blog_global_style\";s:0:\"\";s:10:\"blog_style\";s:12:\"single-small\";s:17:\"single_post_style\";s:10:\"single-big\";s:27:\"single_post_related_entries\";s:24:\"av-related-style-tooltip\";s:16:\"blog-meta-author\";s:16:\"blog-meta-author\";s:18:\"blog-meta-comments\";s:18:\"blog-meta-comments\";s:18:\"blog-meta-category\";s:18:\"blog-meta-category\";s:14:\"blog-meta-date\";s:14:\"blog-meta-date\";s:19:\"blog-meta-html-info\";s:19:\"blog-meta-html-info\";s:13:\"blog-meta-tag\";s:13:\"blog-meta-tag\";s:14:\"share_facebook\";s:14:\"share_facebook\";s:13:\"share_twitter\";s:13:\"share_twitter\";s:15:\"share_pinterest\";s:15:\"share_pinterest\";s:11:\"share_gplus\";s:11:\"share_gplus\";s:12:\"share_reddit\";s:12:\"share_reddit\";s:14:\"share_linkedin\";s:14:\"share_linkedin\";s:12:\"share_tumblr\";s:12:\"share_tumblr\";s:8:\"share_vk\";s:8:\"share_vk\";s:10:\"share_mail\";s:10:\"share_mail\";s:12:\"social_icons\";a:2:{i:0;a:2:{s:11:\"social_icon\";s:7:\"twitter\";s:16:\"social_icon_link\";s:25:\"http://twitter.com/kriesi\";}i:1;a:2:{s:11:\"social_icon\";s:8:\"dribbble\";s:16:\"social_icon_link\";s:26:\"http://dribbble.com/kriesi\";}}s:13:\"mailchimp_api\";s:0:\"\";s:9:\"analytics\";s:0:\"\";s:8:\"gmap_api\";s:0:\"\";s:17:\"avia-nonce-import\";s:10:\"6cc661aeeb\";s:18:\"config_file_upload\";s:0:\"\";s:15:\"iconfont_upload\";s:0:\"\";s:16:\"updates_username\";s:0:\"\";s:15:\"updates_api_key\";s:0:\"\";}}','yes'),
(167,'Enfold_version','3.8.4','yes'),
(168,'avia_stylesheet_dir_writableenfold','true','yes'),
(169,'avia_stylesheet_existsenfold','true','yes'),
(170,'avia_stylesheet_dynamic_versionenfold','5d4ab5ede2870','yes'),
(171,'enfold_woo_settings_enabled','1','yes'),
(193,'avia_rewrite_flush','1','yes'),
(198,'layerslider_update_info','O:8:\"stdClass\":1:{s:7:\"checked\";i:1550442683;}','yes'),
(201,'recently_activated','a:0:{}','yes'),
(230,'WPLANG','','yes'),
(231,'new_admin_email','abpprkonsalting@gmail.com','yes'),
(241,'_site_transient_timeout_browser_0b658a9e61726056cb3e3f5c6ae0f301','1565657970','no'),
(242,'_site_transient_browser_0b658a9e61726056cb3e3f5c6ae0f301','a:10:{s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:4:\"59.0\";s:8:\"platform\";s:5:\"Linux\";s:10:\"update_url\";s:24:\"https://www.firefox.com/\";s:7:\"img_src\";s:44:\"http://s.w.org/images/browsers/firefox.png?1\";s:11:\"img_src_ssl\";s:45:\"https://s.w.org/images/browsers/firefox.png?1\";s:15:\"current_version\";s:2:\"56\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no'),
(256,'nav_menu_options','a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}','yes'),
(265,'portfolio_entries_children','a:0:{}','yes'),
(268,'_site_transient_timeout_browser_d7ae52416e9bfca1ebaeaf3a977dd584','1565730685','no'),
(269,'_site_transient_browser_d7ae52416e9bfca1ebaeaf3a977dd584','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"75.0.3770.142\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no'),
(287,'_site_transient_timeout_theme_roots','1565178388','no'),
(288,'_site_transient_theme_roots','a:4:{s:13:\"Enfold/Enfold\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}','no'),
(289,'_site_transient_update_themes','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1565176590;s:7:\"checked\";a:4:{s:13:\"Enfold/Enfold\";s:5:\"3.8.4\";s:13:\"twentyfifteen\";s:3:\"2.0\";s:15:\"twentyseventeen\";s:3:\"1.7\";s:13:\"twentysixteen\";s:3:\"1.5\";}s:8:\"response\";a:3:{s:13:\"twentyfifteen\";a:6:{s:5:\"theme\";s:13:\"twentyfifteen\";s:11:\"new_version\";s:3:\"2.5\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentyfifteen/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/twentyfifteen.2.5.zip\";s:8:\"requires\";s:3:\"4.1\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentyseventeen\";a:6:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"2.2\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.2.2.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:13:\"twentysixteen\";a:6:{s:5:\"theme\";s:13:\"twentysixteen\";s:11:\"new_version\";s:3:\"2.0\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentysixteen/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/twentysixteen.2.0.zip\";s:8:\"requires\";s:3:\"4.4\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:12:\"translations\";a:0:{}}','no'),
(290,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1565176591;s:7:\"checked\";a:3:{s:19:\"akismet/akismet.php\";s:3:\"4.1\";s:9:\"hello.php\";s:3:\"1.7\";s:47:\"live-composer-page-builder/ds-live-composer.php\";s:5:\"1.1.4\";}s:8:\"response\";a:3:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.2.2\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:9:\"hello.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.2.2\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:47:\"live-composer-page-builder/ds-live-composer.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:40:\"w.org/plugins/live-composer-page-builder\";s:4:\"slug\";s:26:\"live-composer-page-builder\";s:6:\"plugin\";s:47:\"live-composer-page-builder/ds-live-composer.php\";s:11:\"new_version\";s:6:\"1.4.10\";s:3:\"url\";s:57:\"https://wordpress.org/plugins/live-composer-page-builder/\";s:7:\"package\";s:76:\"https://downloads.wordpress.org/plugin/live-composer-page-builder.1.4.10.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:79:\"https://ps.w.org/live-composer-page-builder/assets/icon-256x256.png?rev=1415112\";s:2:\"1x\";s:71:\"https://ps.w.org/live-composer-page-builder/assets/icon.svg?rev=1415112\";s:3:\"svg\";s:71:\"https://ps.w.org/live-composer-page-builder/assets/icon.svg?rev=1415112\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:82:\"https://ps.w.org/live-composer-page-builder/assets/banner-1544x500.png?rev=1364490\";s:2:\"1x\";s:81:\"https://ps.w.org/live-composer-page-builder/assets/banner-772x250.png?rev=1364490\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.2.2\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:0:{}}','no'),
(291,'_transient_timeout_ls-slider-data-1','1565198720','no'),
(292,'_transient_ls-slider-data-1','a:3:{s:4:\"init\";s:975:\"<script data-cfasync=\"false\" type=\"text/javascript\">var lsjQuery = jQuery;</script><script data-cfasync=\"false\" type=\"text/javascript\">\r\nlsjQuery(document).ready(function() {\r\nif(typeof lsjQuery.fn.layerSlider == \"undefined\") { lsShowNotice(\'layerslider_1\',\'jquery\'); }\r\nelse {\r\nlsjQuery(\"#layerslider_1\").layerSlider({responsiveUnder: 1140, layersContainer: 1140, autoStart: false, startInViewport: false, pauseOnHover: false, twoWaySlideshow: true, skin: \'fullwidth\', hoverBottomNav: true, showCircleTimer: false, thumbnailNavigation: \'disabled\', tnWidth: 80, lazyLoad: false, yourLogoStyle: \'\', cbInit: function(element) { }, cbStart: function(data) { }, cbStop: function(data) { }, cbPause: function(data) { }, cbAnimStart: function(data) { }, cbAnimStop: function(data) { }, cbPrev: function(data) { }, cbNext: function(data) { }, skinsPath: \'http://schauraum.at.w019acaa.kasserver.com/wp-content/themes/Enfold/Enfold/config-layerslider/LayerSlider/static/skins/\'})\r\n}\r\n});\r\n</script>\";s:9:\"container\";s:192:\"<div class=\"ls-wp-fullwidth-container\" style=\"height:470px;\"><div class=\"ls-wp-fullwidth-helper\"><div id=\"layerslider_1\" class=\"ls-wp-container\" style=\"width:100%;height:470px;margin:0 auto;\">\";s:6:\"markup\";s:254:\"<div class=\"ls-slide\" data-ls=\"slidedelay:7000;transition2d:11,13,23;transition3d:all;slidedirection:top;\"><img src=\"http://schauraum.at.w019acaa.kasserver.com/wp-content/uploads/2019/08/xdssss-1.jpg\" class=\"ls-bg\" alt=\"xdssss\" /></div></div></div></div>\";}','no');
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
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=215 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default'),(2,3,'_wp_page_template','default'),(3,10,'_wp_attached_file','2019/08/Schau-Raum_Website_0_0000s_0000s_0003_Ebene-1.png'),(4,10,'_wp_attachment_metadata','a:4:{s:5:\"width\";i:1300;s:6:\"height\";i:2757;s:4:\"file\";s:57:\"2019/08/Schau-Raum_Website_0_0000s_0000s_0003_Ebene-1.png\";s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),(5,11,'_edit_last','1'),(6,11,'_edit_lock','1565127197:1'),(7,11,'_wp_page_template','default'),(8,11,'_aviaLayoutBuilder_active','active'),(9,11,'_aviaLayoutBuilderCleanData','[av_layerslider id=\'1\']\r\n\r\n[av_textblock size=\'\' font_color=\'\' color=\'\']\r\n<h2 style=\"text-align: center;\"><strong>WILLKOMMEN BEIM SCHAU RAUM WEBSHOP</strong></h2>\r\n[/av_textblock]\r\n\r\n[av_hr class=\'short\' height=\'50\' shadow=\'no-shadow\' position=\'center\' custom_border=\'av-border-thin\' custom_width=\'50px\' custom_border_color=\'\' custom_margin_top=\'30px\' custom_margin_bottom=\'30px\' icon_select=\'yes\' custom_icon_color=\'\' icon=\'ue8ae\' font=\'entypo-fontello\']\r\n\r\n[av_textblock size=\'\' font_color=\'custom\' color=\'\']\r\n<p style=\"text-align: center;\">The Template Builder allows you to build <strong style=\"color: red\">any number</strong> of cool Portfolio layouts, 3 of them are featured bellow.</p>\r\n<p style=\"text-align: center;\">Once you have created one or multiple layouts you like, simply save them as template and reuse as often as you need</p>\r\n[/av_textblock]\r\n\r\n[av_one_full first min_height=\'\' vertical_alignment=\'\' space=\'\' custom_margin=\'\' margin=\'0px\' padding=\'0px\' border=\'\' border_color=\'\' radius=\'0px\' background_color=\'\' src=\'\' background_position=\'top left\' background_repeat=\'no-repeat\' animation=\'\' mobile_display=\'\']\r\n[av_masonry_gallery ids=\'61,62,64\' items=\'3\' columns=\'3\' paginate=\'pagination\' size=\'fixed masonry\' gap=\'no\' overlay_fx=\'active\' container_links=\'active\' id=\'\' caption_elements=\'excerpt\' caption_styling=\'\' caption_display=\'always\' color=\'\' custom_bg=\'\']\r\n[/av_one_full]\r\n\r\n'),(10,11,'layout',''),(11,11,'sidebar',''),(12,11,'footer',''),(13,11,'header_title_bar',''),(14,11,'header_transparency',''),(15,11,'_avia_hide_featured_image','0'),(16,15,'_edit_last','1'),(17,15,'_wp_page_template','default'),(18,15,'_aviaLayoutBuilder_active',''),(19,15,'_aviaLayoutBuilderCleanData',''),(20,15,'layout',''),(21,15,'sidebar',''),(22,15,'footer',''),(23,15,'header_title_bar',''),(24,15,'header_transparency',''),(25,15,'_avia_hide_featured_image','0'),(26,15,'_edit_lock','1565103160:1'),(27,17,'_edit_last','1'),(28,17,'_wp_page_template','default'),(29,17,'_aviaLayoutBuilder_active',''),(30,17,'_aviaLayoutBuilderCleanData',''),(31,17,'layout',''),(32,17,'sidebar',''),(33,17,'footer',''),(34,17,'header_title_bar',''),(35,17,'header_transparency',''),(36,17,'_avia_hide_featured_image','0'),(37,17,'_edit_lock','1565103176:1'),(38,19,'_edit_last','1'),(39,19,'_wp_page_template','default'),(40,19,'_aviaLayoutBuilder_active',''),(41,19,'_aviaLayoutBuilderCleanData',''),(42,19,'layout',''),(43,19,'sidebar',''),(44,19,'footer',''),(45,19,'header_title_bar',''),(46,19,'header_transparency',''),(47,19,'_avia_hide_featured_image','0'),(48,19,'_edit_lock','1565103204:1'),(49,21,'_edit_last','1'),(50,21,'_edit_lock','1565103221:1'),(51,21,'_wp_page_template','default'),(52,21,'_aviaLayoutBuilder_active',''),(53,21,'_aviaLayoutBuilderCleanData',''),(54,21,'layout',''),(55,21,'sidebar',''),(56,21,'footer',''),(57,21,'header_title_bar',''),(58,21,'header_transparency',''),(59,21,'_avia_hide_featured_image','0'),(60,3,'_wp_trash_meta_status','draft'),(61,3,'_wp_trash_meta_time','1565103371'),(62,3,'_wp_desired_post_slug','privacy-policy'),(63,2,'_wp_trash_meta_status','publish'),(64,2,'_wp_trash_meta_time','1565103374'),(65,2,'_wp_desired_post_slug','sample-page'),(66,25,'_menu_item_type','post_type'),(67,25,'_menu_item_menu_item_parent','0'),(68,25,'_menu_item_object_id','21'),(69,25,'_menu_item_object','page'),(70,25,'_menu_item_target',''),(71,25,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(72,25,'_menu_item_xfn',''),(73,25,'_menu_item_url',''),(75,25,'_menu-item-avia-megamenu',''),(76,25,'_menu-item-avia-division',''),(77,25,'_menu-item-avia-textarea',''),(78,25,'_menu-item-avia-style',''),(79,26,'_menu_item_type','post_type'),(80,26,'_menu_item_menu_item_parent','0'),(81,26,'_menu_item_object_id','19'),(82,26,'_menu_item_object','page'),(83,26,'_menu_item_target',''),(84,26,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(85,26,'_menu_item_xfn',''),(86,26,'_menu_item_url',''),(88,26,'_menu-item-avia-megamenu',''),(89,26,'_menu-item-avia-division',''),(90,26,'_menu-item-avia-textarea',''),(91,26,'_menu-item-avia-style',''),(92,27,'_menu_item_type','post_type'),(93,27,'_menu_item_menu_item_parent','0'),(94,27,'_menu_item_object_id','17'),(95,27,'_menu_item_object','page'),(96,27,'_menu_item_target',''),(97,27,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(98,27,'_menu_item_xfn',''),(99,27,'_menu_item_url',''),(101,27,'_menu-item-avia-megamenu','active'),(102,27,'_menu-item-avia-division',''),(103,27,'_menu-item-avia-textarea',''),(104,27,'_menu-item-avia-style',''),(105,28,'_menu_item_type','post_type'),(106,28,'_menu_item_menu_item_parent','0'),(107,28,'_menu_item_object_id','15'),(108,28,'_menu_item_object','page'),(109,28,'_menu_item_target',''),(110,28,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(111,28,'_menu_item_xfn',''),(112,28,'_menu_item_url',''),(114,28,'_menu-item-avia-megamenu','active'),(115,28,'_menu-item-avia-division',''),(116,28,'_menu-item-avia-textarea',''),(117,28,'_menu-item-avia-style',''),(118,29,'_menu_item_type','post_type'),(119,29,'_menu_item_menu_item_parent','0'),(120,29,'_menu_item_object_id','11'),(121,29,'_menu_item_object','page'),(122,29,'_menu_item_target',''),(123,29,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(124,29,'_menu_item_xfn',''),(125,29,'_menu_item_url',''),(127,29,'_menu-item-avia-megamenu',''),(128,29,'_menu-item-avia-division',''),(129,29,'_menu-item-avia-textarea',''),(130,29,'_menu-item-avia-style',''),(131,30,'_wp_attached_file','2019/08/ico.png'),(132,30,'_wp_attachment_metadata','a:4:{s:5:\"width\";i:123;s:6:\"height\";i:121;s:4:\"file\";s:15:\"2019/08/ico.png\";s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),(133,31,'_wp_trash_meta_status','publish'),(134,31,'_wp_trash_meta_time','1565103640'),(135,32,'_edit_lock','1565104993:1'),(136,32,'_wp_trash_meta_status','publish'),(137,32,'_wp_trash_meta_time','1565105036'),(138,34,'_wp_attached_file','2019/08/xdssss-1.jpg'),(139,34,'_wp_attachment_metadata','a:4:{s:5:\"width\";i:1297;s:6:\"height\";i:461;s:4:\"file\";s:20:\"2019/08/xdssss-1.jpg\";s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),(140,11,'_avia_builder_shortcode_tree','a:5:{i:0;a:3:{s:3:\"tag\";s:14:\"av_layerslider\";s:7:\"content\";a:0:{}s:5:\"index\";i:0;}i:1;a:3:{s:3:\"tag\";s:12:\"av_textblock\";s:7:\"content\";a:0:{}s:5:\"index\";i:1;}i:2;a:3:{s:3:\"tag\";s:5:\"av_hr\";s:7:\"content\";a:0:{}s:5:\"index\";i:2;}i:3;a:3:{s:3:\"tag\";s:12:\"av_textblock\";s:7:\"content\";a:0:{}s:5:\"index\";i:3;}i:4;a:3:{s:3:\"tag\";s:11:\"av_one_full\";s:7:\"content\";a:1:{i:0;a:3:{s:3:\"tag\";s:18:\"av_masonry_gallery\";s:7:\"content\";a:0:{}s:5:\"index\";i:5;}}s:5:\"index\";i:4;}}'),(141,41,'_edit_last','1'),(142,41,'_edit_lock','1565105976:1'),(143,41,'_wp_trash_meta_status','draft'),(144,41,'_wp_trash_meta_time','1565113554'),(145,41,'_wp_desired_post_slug',''),(146,58,'_edit_last','1'),(147,58,'_edit_lock','1565114431:1'),(148,58,'_aviaLayoutBuilder_active',''),(149,58,'_aviaLayoutBuilderCleanData',''),(150,58,'_portfolio_custom_link',''),(151,58,'_portfolio_custom_link_url','http://'),(152,58,'_preview_ids',''),(153,58,'_preview_display','gallery'),(154,58,'_preview_autorotation','disabled'),(155,58,'_preview_columns','6'),(156,58,'_preview_text',''),(157,58,'layout',''),(158,58,'sidebar',''),(159,58,'footer',''),(160,58,'header_title_bar',''),(161,58,'header_transparency',''),(162,58,'breadcrumb_parent',''),(163,58,'_avia_hide_featured_image','0'),(164,59,'_edit_last','1'),(165,59,'_edit_lock','1565114412:1'),(166,59,'_aviaLayoutBuilder_active',''),(167,59,'_aviaLayoutBuilderCleanData',''),(168,59,'_portfolio_custom_link',''),(169,59,'_portfolio_custom_link_url','http://'),(170,59,'_preview_ids',''),(171,59,'_preview_display','gallery'),(172,59,'_preview_autorotation','disabled'),(173,59,'_preview_columns','6'),(174,59,'_preview_text',''),(175,59,'layout',''),(176,59,'sidebar',''),(177,59,'footer',''),(178,59,'header_title_bar',''),(179,59,'header_transparency',''),(180,59,'breadcrumb_parent',''),(181,59,'_avia_hide_featured_image','0'),(182,60,'_edit_last','1'),(183,60,'_edit_lock','1565114398:1'),(184,60,'_aviaLayoutBuilder_active',''),(185,60,'_aviaLayoutBuilderCleanData',''),(186,60,'_portfolio_custom_link',''),(187,60,'_portfolio_custom_link_url','http://'),(188,60,'_preview_ids',''),(189,60,'_preview_display','gallery'),(190,60,'_preview_autorotation','disabled'),(191,60,'_preview_columns','6'),(192,60,'_preview_text',''),(193,60,'layout',''),(194,60,'sidebar',''),(195,60,'footer',''),(196,60,'header_title_bar',''),(197,60,'header_transparency',''),(198,60,'breadcrumb_parent',''),(199,60,'_avia_hide_featured_image','0'),(200,61,'_wp_attached_file','2019/08/prod1.png'),(201,61,'_wp_attachment_metadata','a:4:{s:5:\"width\";i:344;s:6:\"height\";i:265;s:4:\"file\";s:17:\"2019/08/prod1.png\";s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),(202,62,'_wp_attached_file','2019/08/prod2.png'),(203,62,'_wp_attachment_metadata','a:4:{s:5:\"width\";i:343;s:6:\"height\";i:270;s:4:\"file\";s:17:\"2019/08/prod2.png\";s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),(204,64,'_wp_attached_file','2019/08/prod3.png'),(205,64,'_wp_attachment_metadata','a:4:{s:5:\"width\";i:344;s:6:\"height\";i:271;s:4:\"file\";s:17:\"2019/08/prod3.png\";s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),(206,60,'_wp_trash_meta_status','publish'),(207,60,'_wp_trash_meta_time','1565114896'),(208,60,'_wp_desired_post_slug','wohn-und-tischkultur'),(209,59,'_wp_trash_meta_status','publish'),(210,59,'_wp_trash_meta_time','1565114898'),(211,59,'_wp_desired_post_slug','schmuck'),(212,58,'_wp_trash_meta_status','publish'),(213,58,'_wp_trash_meta_time','1565114900'),(214,58,'_wp_desired_post_slug','mode-accesoires');
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
  `post_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2018-07-10 10:01:51','2018-07-10 10:01:51','Welcome to WordPress. This is your first post. Edit or delete it, then start writing!','Hello world!','','publish','open','open','','hello-world','','','2018-07-10 10:01:51','2018-07-10 10:01:51','',0,'http://schauraum.at.w019acaa.kasserver.com/?p=1',0,'post','',1),(2,1,'2018-07-10 10:01:51','2018-07-10 10:01:51','This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://schauraum.at.w019acaa.kasserver.com/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!','Sample Page','','trash','closed','open','','sample-page__trashed','','','2019-08-06 14:56:14','2019-08-06 14:56:14','',0,'http://schauraum.at.w019acaa.kasserver.com/?page_id=2',0,'page','',0),(3,1,'2018-07-10 10:01:51','2018-07-10 10:01:51','<h2>Who we are</h2><p>Our website address is: http://schauraum.at.w019acaa.kasserver.com.</p><h2>What personal data we collect and why we collect it</h2><h3>Comments</h3><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><h3>Media</h3><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><h3>Contact forms</h3><h3>Cookies</h3><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><h3>Embedded content from other websites</h3><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><h3>Analytics</h3><h2>Who we share your data with</h2><h2>How long we retain your data</h2><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><h2>What rights you have over your data</h2><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><h2>Where we send your data</h2><p>Visitor comments may be checked through an automated spam detection service.</p><h2>Your contact information</h2><h2>Additional information</h2><h3>How we protect your data</h3><h3>What data breach procedures we have in place</h3><h3>What third parties we receive data from</h3><h3>What automated decision making and/or profiling we do with user data</h3><h3>Industry regulatory disclosure requirements</h3>','Privacy Policy','','trash','closed','open','','privacy-policy__trashed','','','2019-08-06 14:56:11','2019-08-06 14:56:11','',0,'http://schauraum.at.w019acaa.kasserver.com/?page_id=3',0,'page','',0),(5,1,'2018-07-10 10:05:57','0000-00-00 00:00:00','','avia_logo','','draft','closed','closed','','','','','2018-07-10 10:05:57','0000-00-00 00:00:00','',0,'http://schauraum.at.w019acaa.kasserver.com/?post_type=avia_framework_post&p=5',0,'avia_framework_post','',0),(6,1,'2018-07-10 10:05:57','0000-00-00 00:00:00','','avia_favicon','','draft','closed','closed','','','','','2018-07-10 10:05:57','0000-00-00 00:00:00','',0,'http://schauraum.at.w019acaa.kasserver.com/?post_type=avia_framework_post&p=6',0,'avia_framework_post','',0),(7,1,'2018-07-10 10:05:57','0000-00-00 00:00:00','','avia_custom_logo_for_preloader','','draft','closed','closed','','','','','2018-07-10 10:05:57','0000-00-00 00:00:00','',0,'http://schauraum.at.w019acaa.kasserver.com/?post_type=avia_framework_post&p=7',0,'avia_framework_post','',0),(8,1,'2018-07-10 10:05:57','0000-00-00 00:00:00','','avia_custom_background_image','','draft','closed','closed','','','','','2018-07-10 10:05:57','0000-00-00 00:00:00','',0,'http://schauraum.at.w019acaa.kasserver.com/?post_type=avia_framework_post&p=8',0,'avia_framework_post','',0),(9,1,'2018-07-10 10:05:57','0000-00-00 00:00:00','','avia_transparency_logo','','draft','closed','closed','','','','','2018-07-10 10:05:57','0000-00-00 00:00:00','',0,'http://schauraum.at.w019acaa.kasserver.com/?post_type=avia_framework_post&p=9',0,'avia_framework_post','',0),(10,1,'2019-08-06 14:32:41','2019-08-06 14:32:41','','Schau-Raum_Website_0_0000s_0000s_0003_Ebene-1','','inherit','open','closed','','schau-raum_website_0_0000s_0000s_0003_ebene-1','','','2019-08-06 14:32:41','2019-08-06 14:32:41','',0,'http://schauraum.at.w019acaa.kasserver.com/wp-content/uploads/2019/08/Schau-Raum_Website_0_0000s_0000s_0003_Ebene-1.png',0,'attachment','image/png',0),(11,1,'2019-08-06 14:53:05','2019-08-06 14:53:05','[av_layerslider id=\'1\']\r\n\r\n[av_textblock size=\'\' font_color=\'\' color=\'\']\r\n<h2 style=\"text-align: center;\"><strong>WILLKOMMEN BEIM SCHAU RAUM WEBSHOP</strong></h2>\r\n[/av_textblock]\r\n\r\n[av_hr class=\'short\' height=\'50\' shadow=\'no-shadow\' position=\'center\' custom_border=\'av-border-thin\' custom_width=\'50px\' custom_border_color=\'\' custom_margin_top=\'30px\' custom_margin_bottom=\'30px\' icon_select=\'yes\' custom_icon_color=\'\' icon=\'ue8ae\' font=\'entypo-fontello\']\r\n\r\n[av_textblock size=\'\' font_color=\'custom\' color=\'\']\r\n<p style=\"text-align: center;\">The Template Builder allows you to build <strong style=\"color: red;\">any number</strong> of cool Portfolio layouts, 3 of them are featured bellow.</p>\r\n<p style=\"text-align: center;\">Once you have created one or multiple layouts you like, simply save them as template and reuse as often as you need</p>\r\n[/av_textblock]\r\n\r\n[av_one_full first min_height=\'\' vertical_alignment=\'\' space=\'\' custom_margin=\'\' margin=\'0px\' padding=\'0px\' border=\'\' border_color=\'\' radius=\'0px\' background_color=\'\' src=\'\' background_position=\'top left\' background_repeat=\'no-repeat\' animation=\'\' mobile_display=\'\']\r\n[av_masonry_gallery ids=\'61,62,64\' items=\'3\' columns=\'3\' paginate=\'pagination\' size=\'fixed masonry\' gap=\'no\' overlay_fx=\'active\' container_links=\'active\' id=\'\' caption_elements=\'excerpt\' caption_styling=\'\' caption_display=\'always\' color=\'\' custom_bg=\'\']\r\n[/av_one_full]','HOME','','publish','closed','closed','','home','','','2019-08-06 21:32:48','2019-08-06 21:32:48','',0,'http://schauraum.at.w019acaa.kasserver.com/?page_id=11',0,'page','',0),(12,1,'2019-08-06 14:52:12','0000-00-00 00:00:00','','avia_template_builder_snippets','','draft','closed','closed','','','','','2019-08-06 14:52:12','0000-00-00 00:00:00','',0,'http://schauraum.at.w019acaa.kasserver.com/?post_type=avia_framework_post&p=12',0,'avia_framework_post','',0),(13,1,'2019-08-06 14:53:05','2019-08-06 14:53:05','','HOME','','inherit','closed','closed','','11-revision-v1','','','2019-08-06 14:53:05','2019-08-06 14:53:05','',11,'http://schauraum.at.w019acaa.kasserver.com/2019/08/06/11-revision-v1/',0,'revision','',0),(15,1,'2019-08-06 14:55:00','2019-08-06 14:55:00','','MODE','','publish','closed','closed','','mode','','','2019-08-06 14:55:00','2019-08-06 14:55:00','',0,'http://schauraum.at.w019acaa.kasserver.com/?page_id=15',0,'page','',0),(16,1,'2019-08-06 14:55:00','2019-08-06 14:55:00','','MODE','','inherit','closed','closed','','15-revision-v1','','','2019-08-06 14:55:00','2019-08-06 14:55:00','',15,'http://schauraum.at.w019acaa.kasserver.com/?p=16',0,'revision','',0),(17,1,'2019-08-06 14:55:19','2019-08-06 14:55:19','','ACCESOIRES','','publish','closed','closed','','accesoires','','','2019-08-06 14:55:19','2019-08-06 14:55:19','',0,'http://schauraum.at.w019acaa.kasserver.com/?page_id=17',0,'page','',0),(18,1,'2019-08-06 14:55:19','2019-08-06 14:55:19','','ACCESOIRES','','inherit','closed','closed','','17-revision-v1','','','2019-08-06 14:55:19','2019-08-06 14:55:19','',17,'http://schauraum.at.w019acaa.kasserver.com/?p=18',0,'revision','',0),(19,1,'2019-08-06 14:55:35','2019-08-06 14:55:35','','SCHMUCK','','publish','closed','closed','','schmuck','','','2019-08-06 14:55:35','2019-08-06 14:55:35','',0,'http://schauraum.at.w019acaa.kasserver.com/?page_id=19',0,'page','',0),(20,1,'2019-08-06 14:55:35','2019-08-06 14:55:35','','SCHMUCK','','inherit','closed','closed','','19-revision-v1','','','2019-08-06 14:55:35','2019-08-06 14:55:35','',19,'http://schauraum.at.w019acaa.kasserver.com/?p=20',0,'revision','',0),(21,1,'2019-08-06 14:56:03','2019-08-06 14:56:03','','WOHNKULTUR','','publish','closed','closed','','wohnkultur','','','2019-08-06 14:56:03','2019-08-06 14:56:03','',0,'http://schauraum.at.w019acaa.kasserver.com/?page_id=21',0,'page','',0),(22,1,'2019-08-06 14:56:03','2019-08-06 14:56:03','','WOHNKULTUR','','inherit','closed','closed','','21-revision-v1','','','2019-08-06 14:56:03','2019-08-06 14:56:03','',21,'http://schauraum.at.w019acaa.kasserver.com/?p=22',0,'revision','',0),(23,1,'2019-08-06 14:56:11','2019-08-06 14:56:11','<h2>Who we are</h2><p>Our website address is: http://schauraum.at.w019acaa.kasserver.com.</p><h2>What personal data we collect and why we collect it</h2><h3>Comments</h3><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><h3>Media</h3><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><h3>Contact forms</h3><h3>Cookies</h3><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><h3>Embedded content from other websites</h3><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><h3>Analytics</h3><h2>Who we share your data with</h2><h2>How long we retain your data</h2><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><h2>What rights you have over your data</h2><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><h2>Where we send your data</h2><p>Visitor comments may be checked through an automated spam detection service.</p><h2>Your contact information</h2><h2>Additional information</h2><h3>How we protect your data</h3><h3>What data breach procedures we have in place</h3><h3>What third parties we receive data from</h3><h3>What automated decision making and/or profiling we do with user data</h3><h3>Industry regulatory disclosure requirements</h3>','Privacy Policy','','inherit','closed','closed','','3-revision-v1','','','2019-08-06 14:56:11','2019-08-06 14:56:11','',3,'http://schauraum.at.w019acaa.kasserver.com/?p=23',0,'revision','',0),(24,1,'2019-08-06 14:56:14','2019-08-06 14:56:14','This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://schauraum.at.w019acaa.kasserver.com/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!','Sample Page','','inherit','closed','closed','','2-revision-v1','','','2019-08-06 14:56:14','2019-08-06 14:56:14','',2,'http://schauraum.at.w019acaa.kasserver.com/?p=24',0,'revision','',0),(25,1,'2019-08-06 14:57:46','2019-08-06 14:57:46',' ','','','publish','closed','closed','','25','','','2019-08-07 11:27:10','2019-08-07 11:27:10','',0,'http://schauraum.at.w019acaa.kasserver.com/?p=25',1,'nav_menu_item','',0),(26,1,'2019-08-06 14:57:46','2019-08-06 14:57:46',' ','','','publish','closed','closed','','26','','','2019-08-07 11:27:10','2019-08-07 11:27:10','',0,'http://schauraum.at.w019acaa.kasserver.com/?p=26',2,'nav_menu_item','',0),(27,1,'2019-08-06 14:57:46','2019-08-06 14:57:46',' ','','','publish','closed','closed','','27','','','2019-08-07 11:27:10','2019-08-07 11:27:10','',0,'http://schauraum.at.w019acaa.kasserver.com/?p=27',3,'nav_menu_item','',0),(28,1,'2019-08-06 14:57:46','2019-08-06 14:57:46',' ','','','publish','closed','closed','','28','','','2019-08-07 11:27:10','2019-08-07 11:27:10','',0,'http://schauraum.at.w019acaa.kasserver.com/?p=28',4,'nav_menu_item','',0),(29,1,'2019-08-06 14:57:46','2019-08-06 14:57:46',' ','','','publish','closed','closed','','29','','','2019-08-07 11:27:10','2019-08-07 11:27:10','',0,'http://schauraum.at.w019acaa.kasserver.com/?p=29',5,'nav_menu_item','',0),(30,1,'2019-08-06 14:59:46','2019-08-06 14:59:46','','ico','','inherit','open','closed','','ico','','','2019-08-06 14:59:46','2019-08-06 14:59:46','',0,'http://schauraum.at.w019acaa.kasserver.com/wp-content/uploads/2019/08/ico.png',0,'attachment','image/png',0),(31,1,'2019-08-06 15:00:40','2019-08-06 15:00:40','{\n    \"site_icon\": {\n        \"value\": 30,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-08-06 15:00:40\"\n    }\n}','','','trash','closed','closed','','db9d57ff-078e-49ca-9a15-8e648ecff960','','','2019-08-06 15:00:40','2019-08-06 15:00:40','',0,'http://schauraum.at.w019acaa.kasserver.com/?p=31',0,'customize_changeset','',0),(32,1,'2019-08-06 15:23:56','2019-08-06 15:23:56','{\n    \"sidebars_widgets[av_footer_1]\": {\n        \"value\": [\n            \"custom_html-3\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-08-06 15:22:56\"\n    },\n    \"widget_custom_html[3]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToyOntzOjU6InRpdGxlIjtzOjA6IiI7czo3OiJjb250ZW50IjtzOjE1OToiPGRpdiBpZD0iZm9vdGMxMiIgc3R5bGU9InBhZGRpbmc6NzBweDsgd2lkdGg6MzAwcHgiPg0KCTx0YWJsZT4JDQoJPHRyPg0KCQlLb250YWt0DQoJPC90cj4NCgk8dHI+DQoJCUltcHJlc3N1bQ0KCTwvdHI+DQoJCTx0cj4NCgkJQUdCDQoJPC90cj4NCgk8L3RhYmxlPg0KPC9kaXY+Ijt9\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"302da3e780b4948a81fad8152f7f1fd0\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-08-06 15:23:56\"\n    },\n    \"widget_custom_html[4]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToyOntzOjU6InRpdGxlIjtzOjA6IiI7czo3OiJjb250ZW50IjtzOjUwOiI8ZGl2IGlkPSJmb290YzExIj4NCgk8cD4NCgkJS29udGFrdA0KCTwvcD4NCjwvZGl2PiI7fQ==\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"29728d98e1bef005cd313e854e4375b2\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-08-06 15:11:56\"\n    }\n}','','','trash','closed','closed','','00359d10-174b-4aba-80b8-62d5a6bc82b7','','','2019-08-06 15:23:56','2019-08-06 15:23:56','',0,'http://schauraum.at.w019acaa.kasserver.com/?p=32',0,'customize_changeset','',0),(33,1,'2019-08-06 21:26:54','2019-08-06 21:26:54','[av_fullscreen size=\'extra_large\' image_attachment=\'fixed\' animation=\'slide_up\' autoplay=\'false\' interval=\'5\' control_layout=\'av-control-default\']\n[av_fullscreen_slide slide_type=\'image\' id=\'34\' position=\'top left\' video=\'\' mobile_image=\'\' video_cover=\'\' title=\'\' custom_title_size=\'\' custom_content_size=\'\' caption_pos=\'caption_right caption_right_framed caption_framed\' link_apply=\'\' link_target=\'\' button_label=\'\' button_color=\'light\' link_target1=\'\' button_label2=\'\' button_color2=\'light\' link_target2=\'\' font_color=\'\' custom_title=\'\' custom_content=\'\' overlay_opacity=\'0.1\' overlay_color=\'\' overlay_pattern=\'\' overlay_custom_pattern=\'\' video_controls=\'\' video_mute=\'\' video_loop=\'\' video_autoplay=\'\' link=\'\' link1=\'\' link2=\'\' overlay_enable=\'\'][/av_fullscreen_slide]\n[/av_fullscreen]\n\n[av_slideshow size=\'featured\' animation=\'slide\' autoplay=\'false\' interval=\'5\' control_layout=\'av-control-default\']\n[av_slide id=\'34\'][/av_slide]\n\n\n[/av_slideshow]\n\n[av_textblock size=\'\' font_color=\'\' color=\'\']\n<h2 style=\"text-align: center;\"><strong>WILLKOMMEN BEIM SCHAU RAUM WEBSHOP</strong></h2>\n[/av_textblock]\n\n[av_hr class=\'short\' height=\'50\' shadow=\'no-shadow\' position=\'center\' custom_border=\'av-border-thin\' custom_width=\'50px\' custom_border_color=\'\' custom_margin_top=\'30px\' custom_margin_bottom=\'30px\' icon_select=\'yes\' custom_icon_color=\'\' icon=\'ue8ae\' font=\'entypo-fontello\']\n\n[av_textblock size=\'\' font_color=\'custom\' color=\'\']\n<p style=\"text-align: center;\">The Template Builder allows you to build <strong style=\"color: red\">any number</strong> of cool Portfolio layouts, 3 of them are featured bellow.</p>\n<p style=\"text-align: center;\">Once you have created one or multiple layouts you like, simply save them as template and reuse as often as you need</p>\n[/av_textblock]\n\n[av_one_full first min_height=\'\' vertical_alignment=\'\' space=\'\' custom_margin=\'\' margin=\'0px\' padding=\'0px\' border=\'\' border_color=\'\' radius=\'0px\' background_color=\'\' src=\'\' background_position=\'top left\' background_repeat=\'no-repeat\' animation=\'\' mobile_display=\'\']\n[av_masonry_gallery ids=\'61,62,64\' items=\'3\' columns=\'3\' paginate=\'pagination\' size=\'fixed masonry\' gap=\'no\' overlay_fx=\'active\' container_links=\'active\' id=\'\' caption_elements=\'excerpt\' caption_styling=\'\' caption_display=\'always\' color=\'\' custom_bg=\'\']\n[/av_one_full]\n\n','HOME','','inherit','closed','closed','','11-autosave-v1','','','2019-08-06 21:26:54','2019-08-06 21:26:54','',11,'http://schauraum.at.w019acaa.kasserver.com/?p=33',0,'revision','',0),(34,1,'2019-08-06 15:28:59','2019-08-06 15:28:59','','xdssss','','inherit','open','closed','','xdssss','','','2019-08-06 15:28:59','2019-08-06 15:28:59','',11,'http://schauraum.at.w019acaa.kasserver.com/wp-content/uploads/2019/08/xdssss-1.jpg',0,'attachment','image/jpeg',0),(35,1,'2019-08-06 15:29:09','2019-08-06 15:29:09','[av_textblock size=\'\' font_color=\'\' color=\'\']\r\n<img class=\"alignnone size-full wp-image-34\" src=\"http://schauraum.at.w019acaa.kasserver.com/wp-content/uploads/2019/08/xdssss-1.jpg\" alt=\"\" width=\"1297\" height=\"461\" />Click here to add your own text\r\n[/av_textblock]','HOME','','inherit','closed','closed','','11-revision-v1','','','2019-08-06 15:29:09','2019-08-06 15:29:09','',11,'http://schauraum.at.w019acaa.kasserver.com/?p=35',0,'revision','',0),(36,1,'2019-08-06 15:29:46','2019-08-06 15:29:46','[av_one_full first min_height=\'\' vertical_alignment=\'av-align-top\' space=\'\' margin=\'0px\' margin_sync=\'true\' padding=\'0px\' padding_sync=\'true\' border=\'\' border_color=\'\' radius=\'0px\' radius_sync=\'true\' background_color=\'\' src=\'http://schauraum.at.w019acaa.kasserver.com/wp-content/uploads/2019/08/xdssss-1.jpg\' attachment=\'34\' attachment_size=\'full\' background_position=\'top left\' background_repeat=\'no-repeat\' animation=\'\' mobile_display=\'\'][/av_one_full]','HOME','','inherit','closed','closed','','11-revision-v1','','','2019-08-06 15:29:46','2019-08-06 15:29:46','',11,'http://schauraum.at.w019acaa.kasserver.com/?p=36',0,'revision','',0),(37,1,'2019-08-06 15:30:27','2019-08-06 15:30:27','[av_one_full first min_height=\'\' vertical_alignment=\'av-align-top\' space=\'\' margin=\'0px\' margin_sync=\'true\' padding=\'300px\' padding_sync=\'true\' border=\'\' border_color=\'\' radius=\'0px\' radius_sync=\'true\' background_color=\'\' src=\'http://schauraum.at.w019acaa.kasserver.com/wp-content/uploads/2019/08/xdssss-1.jpg\' attachment=\'34\' attachment_size=\'full\' background_position=\'top center\' background_repeat=\'no-repeat\' animation=\'\' mobile_display=\'\'][/av_one_full]','HOME','','inherit','closed','closed','','11-revision-v1','','','2019-08-06 15:30:27','2019-08-06 15:30:27','',11,'http://schauraum.at.w019acaa.kasserver.com/?p=37',0,'revision','',0),(38,1,'2019-08-06 15:32:39','2019-08-06 15:32:39','[av_image src=\'http://schauraum.at.w019acaa.kasserver.com/wp-content/uploads/2019/08/xdssss-1.jpg\' attachment=\'34\' attachment_size=\'full\' align=\'center\' styling=\'\' hover=\'\' target=\'\' caption=\'\' font_size=\'\' appearance=\'\' overlay_opacity=\'0.4\' overlay_color=\'#000000\' overlay_text_color=\'#ffffff\' animation=\'no-animation\'][/av_image]','HOME','','inherit','closed','closed','','11-revision-v1','','','2019-08-06 15:32:39','2019-08-06 15:32:39','',11,'http://schauraum.at.w019acaa.kasserver.com/?p=38',0,'revision','',0),(39,1,'2019-08-06 15:35:21','2019-08-06 15:35:21','[av_fullscreen size=\'extra_large\' image_attachment=\'fixed\' animation=\'slide\' autoplay=\'false\' interval=\'5\' control_layout=\'av-control-default\']\r\n[av_fullscreen_slide slide_type=\'image\' id=\'34\' position=\'top left\' video=\'\' mobile_image=\'\' video_cover=\'\' title=\'\' custom_title_size=\'\' custom_content_size=\'\' caption_pos=\'caption_right caption_right_framed caption_framed\' link_apply=\'\' link_target=\'\' button_label=\'\' button_color=\'light\' link_target1=\'\' button_label2=\'\' button_color2=\'light\' link_target2=\'\' font_color=\'\' custom_title=\'\' custom_content=\'\' overlay_opacity=\'0.1\' overlay_color=\'\' overlay_pattern=\'\' overlay_custom_pattern=\'\'][/av_fullscreen_slide]\r\n\r\n[/av_fullscreen]','HOME','','inherit','closed','closed','','11-revision-v1','','','2019-08-06 15:35:21','2019-08-06 15:35:21','',11,'http://schauraum.at.w019acaa.kasserver.com/?p=39',0,'revision','',0),(40,1,'2019-08-06 15:35:48','2019-08-06 15:35:48','[av_fullscreen size=\'extra_large\' image_attachment=\'fixed\' animation=\'slide\' autoplay=\'false\' interval=\'5\' control_layout=\'av-control-default\']\r\n[av_fullscreen_slide slide_type=\'image\' id=\'34\' position=\'top left\' video=\'\' mobile_image=\'\' video_cover=\'\' title=\'\' custom_title_size=\'\' custom_content_size=\'\' caption_pos=\'caption_right caption_right_framed caption_framed\' link_apply=\'\' link_target=\'\' button_label=\'\' button_color=\'light\' link_target1=\'\' button_label2=\'\' button_color2=\'light\' link_target2=\'\' font_color=\'\' custom_title=\'\' custom_content=\'\' overlay_opacity=\'0.1\' overlay_color=\'\' overlay_pattern=\'\' overlay_custom_pattern=\'\'][/av_fullscreen_slide]\r\n[/av_fullscreen]\r\n\r\n[av_one_full first min_height=\'\' vertical_alignment=\'\' space=\'\' custom_margin=\'\' margin=\'0px\' padding=\'0px\' border=\'\' border_color=\'\' radius=\'0px\' background_color=\'\' src=\'\' background_position=\'top left\' background_repeat=\'no-repeat\' animation=\'\' mobile_display=\'\'][/av_one_full]','HOME','','inherit','closed','closed','','11-revision-v1','','','2019-08-06 15:35:48','2019-08-06 15:35:48','',11,'http://schauraum.at.w019acaa.kasserver.com/?p=40',0,'revision','',0),(41,1,'2019-08-06 17:45:54','2019-08-06 17:45:54','','WILLKOMMEN BEIM SCHAU RAUM WEBSHOP','','trash','open','closed','','__trashed','','','2019-08-06 17:45:54','2019-08-06 17:45:54','',0,'http://schauraum.at.w019acaa.kasserver.com/?post_type=portfolio&#038;p=41',0,'portfolio','',0),(42,1,'2019-08-06 15:40:28','2019-08-06 15:40:28','[av_fullscreen size=\'extra_large\' image_attachment=\'fixed\' animation=\'slide\' autoplay=\'false\' interval=\'5\' control_layout=\'av-control-default\']\r\n[av_fullscreen_slide slide_type=\'image\' id=\'34\' position=\'top left\' video=\'\' mobile_image=\'\' video_cover=\'\' title=\'\' custom_title_size=\'\' custom_content_size=\'\' caption_pos=\'caption_right caption_right_framed caption_framed\' link_apply=\'\' link_target=\'\' button_label=\'\' button_color=\'light\' link_target1=\'\' button_label2=\'\' button_color2=\'light\' link_target2=\'\' font_color=\'\' custom_title=\'\' custom_content=\'\' overlay_opacity=\'0.1\' overlay_color=\'\' overlay_pattern=\'\' overlay_custom_pattern=\'\'][/av_fullscreen_slide]\r\n[/av_fullscreen]\r\n\r\n[av_textblock size=\'\' font_color=\'\' color=\'\']\r\n<h4 style=\"text-align: center;\"><strong>WILLKOMMEN BEIM SCHAU RAUM WEBSHOP</strong></h4>\r\n[/av_textblock]\r\n\r\n[av_one_full first min_height=\'\' vertical_alignment=\'\' space=\'\' custom_margin=\'\' margin=\'0px\' padding=\'0px\' border=\'\' border_color=\'\' radius=\'0px\' background_color=\'\' src=\'\' background_position=\'top left\' background_repeat=\'no-repeat\' animation=\'\' mobile_display=\'\'][/av_one_full]','HOME','','inherit','closed','closed','','11-revision-v1','','','2019-08-06 15:40:28','2019-08-06 15:40:28','',11,'http://schauraum.at.w019acaa.kasserver.com/?p=42',0,'revision','',0),(43,1,'2019-08-06 15:41:25','2019-08-06 15:41:25','[av_fullscreen size=\'extra_large\' image_attachment=\'fixed\' animation=\'slide\' autoplay=\'false\' interval=\'5\' control_layout=\'av-control-default\']\r\n[av_fullscreen_slide slide_type=\'image\' id=\'34\' position=\'top left\' video=\'\' mobile_image=\'\' video_cover=\'\' title=\'\' custom_title_size=\'\' custom_content_size=\'\' caption_pos=\'caption_right caption_right_framed caption_framed\' link_apply=\'\' link_target=\'\' button_label=\'\' button_color=\'light\' link_target1=\'\' button_label2=\'\' button_color2=\'light\' link_target2=\'\' font_color=\'\' custom_title=\'\' custom_content=\'\' overlay_opacity=\'0.1\' overlay_color=\'\' overlay_pattern=\'\' overlay_custom_pattern=\'\'][/av_fullscreen_slide]\r\n[/av_fullscreen]\r\n\r\n[av_textblock size=\'\' font_color=\'\' color=\'\']\r\n<h2 style=\"text-align: center;\"><strong>WILLKOMMEN BEIM SCHAU RAUM WEBSHOP</strong></h2>\r\n[/av_textblock]\r\n\r\n[av_one_full first min_height=\'\' vertical_alignment=\'\' space=\'\' custom_margin=\'\' margin=\'0px\' padding=\'0px\' border=\'\' border_color=\'\' radius=\'0px\' background_color=\'\' src=\'\' background_position=\'top left\' background_repeat=\'no-repeat\' animation=\'\' mobile_display=\'\'][/av_one_full]','HOME','','inherit','closed','closed','','11-revision-v1','','','2019-08-06 15:41:25','2019-08-06 15:41:25','',11,'http://schauraum.at.w019acaa.kasserver.com/?p=43',0,'revision','',0),(44,1,'2019-08-06 15:42:22','2019-08-06 15:42:22','[av_fullscreen size=\'extra_large\' image_attachment=\'fixed\' animation=\'slide_up\' autoplay=\'false\' interval=\'5\' control_layout=\'av-control-default\']\r\n[av_fullscreen_slide slide_type=\'image\' id=\'34\' position=\'top left\' video=\'\' mobile_image=\'\' video_cover=\'\' title=\'\' custom_title_size=\'\' custom_content_size=\'\' caption_pos=\'caption_right caption_right_framed caption_framed\' link_apply=\'\' link_target=\'\' button_label=\'\' button_color=\'light\' link_target1=\'\' button_label2=\'\' button_color2=\'light\' link_target2=\'\' font_color=\'\' custom_title=\'\' custom_content=\'\' overlay_opacity=\'0.1\' overlay_color=\'\' overlay_pattern=\'\' overlay_custom_pattern=\'\' video_controls=\'\' video_mute=\'\' video_loop=\'\' video_autoplay=\'\' link=\'\' link1=\'\' link2=\'\' overlay_enable=\'\'][/av_fullscreen_slide]\r\n\r\n[/av_fullscreen]\r\n\r\n[av_textblock size=\'\' font_color=\'\' color=\'\']\r\n<h2 style=\"text-align: center;\"><strong>WILLKOMMEN BEIM SCHAU RAUM WEBSHOP</strong></h2>\r\n[/av_textblock]\r\n\r\n[av_one_full first min_height=\'\' vertical_alignment=\'\' space=\'\' custom_margin=\'\' margin=\'0px\' padding=\'0px\' border=\'\' border_color=\'\' radius=\'0px\' background_color=\'\' src=\'\' background_position=\'top left\' background_repeat=\'no-repeat\' animation=\'\' mobile_display=\'\'][/av_one_full]','HOME','','inherit','closed','closed','','11-revision-v1','','','2019-08-06 15:42:22','2019-08-06 15:42:22','',11,'http://schauraum.at.w019acaa.kasserver.com/?p=44',0,'revision','',0),(45,1,'2019-08-06 15:43:02','2019-08-06 15:43:02','[av_fullscreen size=\'extra_large\' image_attachment=\'fixed\' animation=\'slide_up\' autoplay=\'false\' interval=\'5\' control_layout=\'av-control-default\']\r\n[av_fullscreen_slide slide_type=\'image\' id=\'34\' position=\'top left\' video=\'\' mobile_image=\'\' video_cover=\'\' title=\'\' custom_title_size=\'\' custom_content_size=\'\' caption_pos=\'caption_right caption_right_framed caption_framed\' link_apply=\'\' link_target=\'\' button_label=\'\' button_color=\'light\' link_target1=\'\' button_label2=\'\' button_color2=\'light\' link_target2=\'\' font_color=\'\' custom_title=\'\' custom_content=\'\' overlay_opacity=\'0.1\' overlay_color=\'\' overlay_pattern=\'\' overlay_custom_pattern=\'\' video_controls=\'\' video_mute=\'\' video_loop=\'\' video_autoplay=\'\' link=\'\' link1=\'\' link2=\'\' overlay_enable=\'\'][/av_fullscreen_slide]\r\n[/av_fullscreen]\r\n\r\n[av_textblock size=\'\' font_color=\'\' color=\'\']\r\n<h2 style=\"text-align: center;\"><strong>WILLKOMMEN BEIM SCHAU RAUM WEBSHOP</strong></h2>\r\n[/av_textblock]\r\n\r\n[av_hr class=\'custom\' height=\'50\' shadow=\'no-shadow\' position=\'center\' custom_border=\'av-border-thin\' custom_width=\'50px\' custom_border_color=\'\' custom_margin_top=\'30px\' custom_margin_bottom=\'30px\' icon_select=\'yes\' custom_icon_color=\'\' icon=\'ue808\' font=\'entypo-fontello\']\r\n\r\n[av_one_full first min_height=\'\' vertical_alignment=\'\' space=\'\' custom_margin=\'\' margin=\'0px\' padding=\'0px\' border=\'\' border_color=\'\' radius=\'0px\' background_color=\'\' src=\'\' background_position=\'top left\' background_repeat=\'no-repeat\' animation=\'\' mobile_display=\'\'][/av_one_full]','HOME','','inherit','closed','closed','','11-revision-v1','','','2019-08-06 15:43:02','2019-08-06 15:43:02','',11,'http://schauraum.at.w019acaa.kasserver.com/?p=45',0,'revision','',0),(46,1,'2019-08-06 15:44:59','2019-08-06 15:44:59','[av_fullscreen size=\'extra_large\' image_attachment=\'fixed\' animation=\'slide_up\' autoplay=\'false\' interval=\'5\' control_layout=\'av-control-default\']\r\n[av_fullscreen_slide slide_type=\'image\' id=\'34\' position=\'top left\' video=\'\' mobile_image=\'\' video_cover=\'\' title=\'\' custom_title_size=\'\' custom_content_size=\'\' caption_pos=\'caption_right caption_right_framed caption_framed\' link_apply=\'\' link_target=\'\' button_label=\'\' button_color=\'light\' link_target1=\'\' button_label2=\'\' button_color2=\'light\' link_target2=\'\' font_color=\'\' custom_title=\'\' custom_content=\'\' overlay_opacity=\'0.1\' overlay_color=\'\' overlay_pattern=\'\' overlay_custom_pattern=\'\' video_controls=\'\' video_mute=\'\' video_loop=\'\' video_autoplay=\'\' link=\'\' link1=\'\' link2=\'\' overlay_enable=\'\'][/av_fullscreen_slide]\r\n[/av_fullscreen]\r\n\r\n[av_textblock size=\'\' font_color=\'\' color=\'\']\r\n<h2 style=\"text-align: center;\"><strong>WILLKOMMEN BEIM SCHAU RAUM WEBSHOP</strong></h2>\r\n[/av_textblock]\r\n\r\n[av_hr class=\'custom\' height=\'50\' shadow=\'no-shadow\' position=\'center\' custom_border=\'av-border-thin\' custom_width=\'100px\' custom_border_color=\'\' custom_margin_top=\'30px\' custom_margin_bottom=\'30px\' icon_select=\'yes\' custom_icon_color=\'\' icon=\'ue8ae\' font=\'entypo-fontello\']\r\n\r\n[av_one_full first min_height=\'\' vertical_alignment=\'\' space=\'\' custom_margin=\'\' margin=\'0px\' padding=\'0px\' border=\'\' border_color=\'\' radius=\'0px\' background_color=\'\' src=\'\' background_position=\'top left\' background_repeat=\'no-repeat\' animation=\'\' mobile_display=\'\'][/av_one_full]','HOME','','inherit','closed','closed','','11-revision-v1','','','2019-08-06 15:44:59','2019-08-06 15:44:59','',11,'http://schauraum.at.w019acaa.kasserver.com/?p=46',0,'revision','',0),(47,1,'2019-08-06 15:45:24','2019-08-06 15:45:24','[av_fullscreen size=\'extra_large\' image_attachment=\'fixed\' animation=\'slide_up\' autoplay=\'false\' interval=\'5\' control_layout=\'av-control-default\']\r\n[av_fullscreen_slide slide_type=\'image\' id=\'34\' position=\'top left\' video=\'\' mobile_image=\'\' video_cover=\'\' title=\'\' custom_title_size=\'\' custom_content_size=\'\' caption_pos=\'caption_right caption_right_framed caption_framed\' link_apply=\'\' link_target=\'\' button_label=\'\' button_color=\'light\' link_target1=\'\' button_label2=\'\' button_color2=\'light\' link_target2=\'\' font_color=\'\' custom_title=\'\' custom_content=\'\' overlay_opacity=\'0.1\' overlay_color=\'\' overlay_pattern=\'\' overlay_custom_pattern=\'\' video_controls=\'\' video_mute=\'\' video_loop=\'\' video_autoplay=\'\' link=\'\' link1=\'\' link2=\'\' overlay_enable=\'\'][/av_fullscreen_slide]\r\n[/av_fullscreen]\r\n\r\n[av_textblock size=\'\' font_color=\'\' color=\'\']\r\n<h2 style=\"text-align: center;\"><strong>WILLKOMMEN BEIM SCHAU RAUM WEBSHOP</strong></h2>\r\n[/av_textblock]\r\n\r\n[av_hr class=\'custom\' height=\'50\' shadow=\'no-shadow\' position=\'center\' custom_border=\'av-border-thin\' custom_width=\'100px\' custom_border_color=\'\' custom_margin_top=\'30px\' custom_margin_bottom=\'30px\' icon_select=\'no\' custom_icon_color=\'\' icon=\'ue8ae\' font=\'entypo-fontello\']\r\n\r\n[av_one_full first min_height=\'\' vertical_alignment=\'\' space=\'\' custom_margin=\'\' margin=\'0px\' padding=\'0px\' border=\'\' border_color=\'\' radius=\'0px\' background_color=\'\' src=\'\' background_position=\'top left\' background_repeat=\'no-repeat\' animation=\'\' mobile_display=\'\'][/av_one_full]','HOME','','inherit','closed','closed','','11-revision-v1','','','2019-08-06 15:45:24','2019-08-06 15:45:24','',11,'http://schauraum.at.w019acaa.kasserver.com/?p=47',0,'revision','',0),(48,1,'2019-08-06 15:45:39','2019-08-06 15:45:39','[av_fullscreen size=\'extra_large\' image_attachment=\'fixed\' animation=\'slide_up\' autoplay=\'false\' interval=\'5\' control_layout=\'av-control-default\']\r\n[av_fullscreen_slide slide_type=\'image\' id=\'34\' position=\'top left\' video=\'\' mobile_image=\'\' video_cover=\'\' title=\'\' custom_title_size=\'\' custom_content_size=\'\' caption_pos=\'caption_right caption_right_framed caption_framed\' link_apply=\'\' link_target=\'\' button_label=\'\' button_color=\'light\' link_target1=\'\' button_label2=\'\' button_color2=\'light\' link_target2=\'\' font_color=\'\' custom_title=\'\' custom_content=\'\' overlay_opacity=\'0.1\' overlay_color=\'\' overlay_pattern=\'\' overlay_custom_pattern=\'\' video_controls=\'\' video_mute=\'\' video_loop=\'\' video_autoplay=\'\' link=\'\' link1=\'\' link2=\'\' overlay_enable=\'\'][/av_fullscreen_slide]\r\n[/av_fullscreen]\r\n\r\n[av_textblock size=\'\' font_color=\'\' color=\'\']\r\n<h2 style=\"text-align: center;\"><strong>WILLKOMMEN BEIM SCHAU RAUM WEBSHOP</strong></h2>\r\n[/av_textblock]\r\n\r\n[av_hr class=\'default\' height=\'50\' shadow=\'no-shadow\' position=\'center\' custom_border=\'av-border-thin\' custom_width=\'50px\' custom_border_color=\'\' custom_margin_top=\'30px\' custom_margin_bottom=\'30px\' icon_select=\'yes\' custom_icon_color=\'\' icon=\'ue808\']\r\n\r\n[av_one_full first min_height=\'\' vertical_alignment=\'\' space=\'\' custom_margin=\'\' margin=\'0px\' padding=\'0px\' border=\'\' border_color=\'\' radius=\'0px\' background_color=\'\' src=\'\' background_position=\'top left\' background_repeat=\'no-repeat\' animation=\'\' mobile_display=\'\'][/av_one_full]','HOME','','inherit','closed','closed','','11-revision-v1','','','2019-08-06 15:45:39','2019-08-06 15:45:39','',11,'http://schauraum.at.w019acaa.kasserver.com/?p=48',0,'revision','',0),(49,1,'2019-08-06 15:46:21','2019-08-06 15:46:21','[av_fullscreen size=\'extra_large\' image_attachment=\'fixed\' animation=\'slide_up\' autoplay=\'false\' interval=\'5\' control_layout=\'av-control-default\']\r\n[av_fullscreen_slide slide_type=\'image\' id=\'34\' position=\'top left\' video=\'\' mobile_image=\'\' video_cover=\'\' title=\'\' custom_title_size=\'\' custom_content_size=\'\' caption_pos=\'caption_right caption_right_framed caption_framed\' link_apply=\'\' link_target=\'\' button_label=\'\' button_color=\'light\' link_target1=\'\' button_label2=\'\' button_color2=\'light\' link_target2=\'\' font_color=\'\' custom_title=\'\' custom_content=\'\' overlay_opacity=\'0.1\' overlay_color=\'\' overlay_pattern=\'\' overlay_custom_pattern=\'\' video_controls=\'\' video_mute=\'\' video_loop=\'\' video_autoplay=\'\' link=\'\' link1=\'\' link2=\'\' overlay_enable=\'\'][/av_fullscreen_slide]\r\n[/av_fullscreen]\r\n\r\n[av_textblock size=\'\' font_color=\'\' color=\'\']\r\n<h2 style=\"text-align: center;\"><strong>WILLKOMMEN BEIM SCHAU RAUM WEBSHOP</strong></h2>\r\n[/av_textblock]\r\n\r\n[av_hr class=\'custom\' height=\'50\' shadow=\'no-shadow\' position=\'center\' custom_border=\'av-border-none\' custom_width=\'50px\' custom_border_color=\'\' custom_margin_top=\'30px\' custom_margin_bottom=\'30px\' icon_select=\'yes\' custom_icon_color=\'\' icon=\'ue808\' font=\'entypo-fontello\']\r\n\r\n[av_one_full first min_height=\'\' vertical_alignment=\'\' space=\'\' custom_margin=\'\' margin=\'0px\' padding=\'0px\' border=\'\' border_color=\'\' radius=\'0px\' background_color=\'\' src=\'\' background_position=\'top left\' background_repeat=\'no-repeat\' animation=\'\' mobile_display=\'\'][/av_one_full]','HOME','','inherit','closed','closed','','11-revision-v1','','','2019-08-06 15:46:21','2019-08-06 15:46:21','',11,'http://schauraum.at.w019acaa.kasserver.com/?p=49',0,'revision','',0),(50,1,'2019-08-06 15:47:51','2019-08-06 15:47:51','[av_fullscreen size=\'extra_large\' image_attachment=\'fixed\' animation=\'slide_up\' autoplay=\'false\' interval=\'5\' control_layout=\'av-control-default\']\r\n[av_fullscreen_slide slide_type=\'image\' id=\'34\' position=\'top left\' video=\'\' mobile_image=\'\' video_cover=\'\' title=\'\' custom_title_size=\'\' custom_content_size=\'\' caption_pos=\'caption_right caption_right_framed caption_framed\' link_apply=\'\' link_target=\'\' button_label=\'\' button_color=\'light\' link_target1=\'\' button_label2=\'\' button_color2=\'light\' link_target2=\'\' font_color=\'\' custom_title=\'\' custom_content=\'\' overlay_opacity=\'0.1\' overlay_color=\'\' overlay_pattern=\'\' overlay_custom_pattern=\'\' video_controls=\'\' video_mute=\'\' video_loop=\'\' video_autoplay=\'\' link=\'\' link1=\'\' link2=\'\' overlay_enable=\'\'][/av_fullscreen_slide]\r\n[/av_fullscreen]\r\n\r\n[av_textblock size=\'\' font_color=\'\' color=\'\']\r\n<h2 style=\"text-align: center;\"><strong>WILLKOMMEN BEIM SCHAU RAUM WEBSHOP</strong></h2>\r\n[/av_textblock]\r\n\r\n[av_hr class=\'custom\' height=\'50\' shadow=\'no-shadow\' position=\'center\' custom_border=\'av-border-thin\' custom_width=\'50px\' custom_border_color=\'\' custom_margin_top=\'30px\' custom_margin_bottom=\'30px\' icon_select=\'yes\' custom_icon_color=\'\' icon=\'ue8ae\' font=\'entypo-fontello\']\r\n\r\n[av_one_full first min_height=\'\' vertical_alignment=\'\' space=\'\' custom_margin=\'\' margin=\'0px\' padding=\'0px\' border=\'\' border_color=\'\' radius=\'0px\' background_color=\'\' src=\'\' background_position=\'top left\' background_repeat=\'no-repeat\' animation=\'\' mobile_display=\'\'][/av_one_full]','HOME','','inherit','closed','closed','','11-revision-v1','','','2019-08-06 15:47:51','2019-08-06 15:47:51','',11,'http://schauraum.at.w019acaa.kasserver.com/?p=50',0,'revision','',0),(51,1,'2019-08-06 15:49:05','2019-08-06 15:49:05','[av_fullscreen size=\'extra_large\' image_attachment=\'fixed\' animation=\'slide_up\' autoplay=\'false\' interval=\'5\' control_layout=\'av-control-default\']\r\n[av_fullscreen_slide slide_type=\'image\' id=\'34\' position=\'top left\' video=\'\' mobile_image=\'\' video_cover=\'\' title=\'\' custom_title_size=\'\' custom_content_size=\'\' caption_pos=\'caption_right caption_right_framed caption_framed\' link_apply=\'\' link_target=\'\' button_label=\'\' button_color=\'light\' link_target1=\'\' button_label2=\'\' button_color2=\'light\' link_target2=\'\' font_color=\'\' custom_title=\'\' custom_content=\'\' overlay_opacity=\'0.1\' overlay_color=\'\' overlay_pattern=\'\' overlay_custom_pattern=\'\' video_controls=\'\' video_mute=\'\' video_loop=\'\' video_autoplay=\'\' link=\'\' link1=\'\' link2=\'\' overlay_enable=\'\'][/av_fullscreen_slide]\r\n[/av_fullscreen]\r\n\r\n[av_textblock size=\'\' font_color=\'\' color=\'\']\r\n<h2 style=\"text-align: center;\"><strong>WILLKOMMEN BEIM SCHAU RAUM WEBSHOP</strong></h2>\r\n[/av_textblock]\r\n\r\n[av_hr class=\'short\' height=\'50\' shadow=\'no-shadow\' position=\'center\' custom_border=\'av-border-thin\' custom_width=\'50px\' custom_border_color=\'\' custom_margin_top=\'30px\' custom_margin_bottom=\'30px\' icon_select=\'yes\' custom_icon_color=\'\' icon=\'ue8ae\' font=\'entypo-fontello\']\r\n\r\n[av_one_full first min_height=\'\' vertical_alignment=\'\' space=\'\' custom_margin=\'\' margin=\'0px\' padding=\'0px\' border=\'\' border_color=\'\' radius=\'0px\' background_color=\'\' src=\'\' background_position=\'top left\' background_repeat=\'no-repeat\' animation=\'\' mobile_display=\'\'][/av_one_full]','HOME','','inherit','closed','closed','','11-revision-v1','','','2019-08-06 15:49:05','2019-08-06 15:49:05','',11,'http://schauraum.at.w019acaa.kasserver.com/?p=51',0,'revision','',0),(52,1,'2019-08-06 15:49:59','2019-08-06 15:49:59','[av_fullscreen size=\'extra_large\' image_attachment=\'\' animation=\'slide_up\' autoplay=\'false\' interval=\'5\' control_layout=\'av-control-default\']\r\n[av_fullscreen_slide slide_type=\'image\' id=\'34\' position=\'top left\' video=\'\' mobile_image=\'\' video_cover=\'\' title=\'\' custom_title_size=\'\' custom_content_size=\'\' caption_pos=\'caption_right caption_right_framed caption_framed\' link_apply=\'\' link_target=\'\' button_label=\'\' button_color=\'light\' link_target1=\'\' button_label2=\'\' button_color2=\'light\' link_target2=\'\' font_color=\'\' custom_title=\'\' custom_content=\'\' overlay_opacity=\'0.1\' overlay_color=\'\' overlay_pattern=\'\' overlay_custom_pattern=\'\' video_controls=\'\' video_mute=\'\' video_loop=\'\' video_autoplay=\'\' link=\'\' link1=\'\' link2=\'\' overlay_enable=\'\'][/av_fullscreen_slide]\r\n\r\n[/av_fullscreen]\r\n\r\n[av_textblock size=\'\' font_color=\'\' color=\'\']\r\n<h2 style=\"text-align: center;\"><strong>WILLKOMMEN BEIM SCHAU RAUM WEBSHOP</strong></h2>\r\n[/av_textblock]\r\n\r\n[av_hr class=\'short\' height=\'50\' shadow=\'no-shadow\' position=\'center\' custom_border=\'av-border-thin\' custom_width=\'50px\' custom_border_color=\'\' custom_margin_top=\'30px\' custom_margin_bottom=\'30px\' icon_select=\'yes\' custom_icon_color=\'\' icon=\'ue8ae\' font=\'entypo-fontello\']\r\n\r\n[av_one_full first min_height=\'\' vertical_alignment=\'\' space=\'\' custom_margin=\'\' margin=\'0px\' padding=\'0px\' border=\'\' border_color=\'\' radius=\'0px\' background_color=\'\' src=\'\' background_position=\'top left\' background_repeat=\'no-repeat\' animation=\'\' mobile_display=\'\'][/av_one_full]','HOME','','inherit','closed','closed','','11-revision-v1','','','2019-08-06 15:49:59','2019-08-06 15:49:59','',11,'http://schauraum.at.w019acaa.kasserver.com/?p=52',0,'revision','',0),(53,1,'2019-08-06 15:50:19','2019-08-06 15:50:19','[av_fullscreen size=\'extra_large\' image_attachment=\'fixed\' animation=\'slide_up\' autoplay=\'false\' interval=\'5\' control_layout=\'av-control-default\']\r\n[av_fullscreen_slide slide_type=\'image\' id=\'34\' position=\'top left\' video=\'\' mobile_image=\'\' video_cover=\'\' title=\'\' custom_title_size=\'\' custom_content_size=\'\' caption_pos=\'caption_right caption_right_framed caption_framed\' link_apply=\'\' link_target=\'\' button_label=\'\' button_color=\'light\' link_target1=\'\' button_label2=\'\' button_color2=\'light\' link_target2=\'\' font_color=\'\' custom_title=\'\' custom_content=\'\' overlay_opacity=\'0.1\' overlay_color=\'\' overlay_pattern=\'\' overlay_custom_pattern=\'\' video_controls=\'\' video_mute=\'\' video_loop=\'\' video_autoplay=\'\' link=\'\' link1=\'\' link2=\'\' overlay_enable=\'\'][/av_fullscreen_slide]\r\n\r\n[/av_fullscreen]\r\n\r\n[av_textblock size=\'\' font_color=\'\' color=\'\']\r\n<h2 style=\"text-align: center;\"><strong>WILLKOMMEN BEIM SCHAU RAUM WEBSHOP</strong></h2>\r\n[/av_textblock]\r\n\r\n[av_hr class=\'short\' height=\'50\' shadow=\'no-shadow\' position=\'center\' custom_border=\'av-border-thin\' custom_width=\'50px\' custom_border_color=\'\' custom_margin_top=\'30px\' custom_margin_bottom=\'30px\' icon_select=\'yes\' custom_icon_color=\'\' icon=\'ue8ae\' font=\'entypo-fontello\']\r\n\r\n[av_one_full first min_height=\'\' vertical_alignment=\'\' space=\'\' custom_margin=\'\' margin=\'0px\' padding=\'0px\' border=\'\' border_color=\'\' radius=\'0px\' background_color=\'\' src=\'\' background_position=\'top left\' background_repeat=\'no-repeat\' animation=\'\' mobile_display=\'\'][/av_one_full]','HOME','','inherit','closed','closed','','11-revision-v1','','','2019-08-06 15:50:19','2019-08-06 15:50:19','',11,'http://schauraum.at.w019acaa.kasserver.com/?p=53',0,'revision','',0),(54,1,'2019-08-06 15:55:12','2019-08-06 15:55:12','[av_fullscreen size=\'extra_large\' image_attachment=\'fixed\' animation=\'slide_up\' autoplay=\'false\' interval=\'5\' control_layout=\'av-control-default\']\r\n[av_fullscreen_slide slide_type=\'image\' id=\'34\' position=\'top left\' video=\'\' mobile_image=\'\' video_cover=\'\' title=\'\' custom_title_size=\'\' custom_content_size=\'\' caption_pos=\'caption_right caption_right_framed caption_framed\' link_apply=\'\' link_target=\'\' button_label=\'\' button_color=\'light\' link_target1=\'\' button_label2=\'\' button_color2=\'light\' link_target2=\'\' font_color=\'\' custom_title=\'\' custom_content=\'\' overlay_opacity=\'0.1\' overlay_color=\'\' overlay_pattern=\'\' overlay_custom_pattern=\'\' video_controls=\'\' video_mute=\'\' video_loop=\'\' video_autoplay=\'\' link=\'\' link1=\'\' link2=\'\' overlay_enable=\'\'][/av_fullscreen_slide]\r\n[/av_fullscreen]\r\n\r\n[av_textblock size=\'\' font_color=\'\' color=\'\']\r\n<h2 style=\"text-align: center;\"><strong>WILLKOMMEN BEIM SCHAU RAUM WEBSHOP</strong></h2>\r\n[/av_textblock]\r\n\r\n[av_hr class=\'short\' height=\'50\' shadow=\'no-shadow\' position=\'center\' custom_border=\'av-border-thin\' custom_width=\'50px\' custom_border_color=\'\' custom_margin_top=\'30px\' custom_margin_bottom=\'30px\' icon_select=\'yes\' custom_icon_color=\'\' icon=\'ue8ae\' font=\'entypo-fontello\']\r\n\r\n[av_textblock size=\'\' font_color=\'\' color=\'\']\r\n<p style=\"text-align: center;\">The Template Builder allows you to build any number of cool Portfolio layouts, 3 of them are featured bellow. Once you have created one or multiple layouts you like, simply save them as template and reuse as often as you need</p>\r\n[/av_textblock]\r\n\r\n[av_one_full first min_height=\'\' vertical_alignment=\'\' space=\'\' custom_margin=\'\' margin=\'0px\' padding=\'0px\' border=\'\' border_color=\'\' radius=\'0px\' background_color=\'\' src=\'\' background_position=\'top left\' background_repeat=\'no-repeat\' animation=\'\' mobile_display=\'\'][/av_one_full]','HOME','','inherit','closed','closed','','11-revision-v1','','','2019-08-06 15:55:12','2019-08-06 15:55:12','',11,'http://schauraum.at.w019acaa.kasserver.com/?p=54',0,'revision','',0),(55,1,'2019-08-06 15:55:52','2019-08-06 15:55:52','[av_fullscreen size=\'extra_large\' image_attachment=\'fixed\' animation=\'slide_up\' autoplay=\'false\' interval=\'5\' control_layout=\'av-control-default\']\r\n[av_fullscreen_slide slide_type=\'image\' id=\'34\' position=\'top left\' video=\'\' mobile_image=\'\' video_cover=\'\' title=\'\' custom_title_size=\'\' custom_content_size=\'\' caption_pos=\'caption_right caption_right_framed caption_framed\' link_apply=\'\' link_target=\'\' button_label=\'\' button_color=\'light\' link_target1=\'\' button_label2=\'\' button_color2=\'light\' link_target2=\'\' font_color=\'\' custom_title=\'\' custom_content=\'\' overlay_opacity=\'0.1\' overlay_color=\'\' overlay_pattern=\'\' overlay_custom_pattern=\'\' video_controls=\'\' video_mute=\'\' video_loop=\'\' video_autoplay=\'\' link=\'\' link1=\'\' link2=\'\' overlay_enable=\'\'][/av_fullscreen_slide]\r\n[/av_fullscreen]\r\n\r\n[av_textblock size=\'\' font_color=\'\' color=\'\']\r\n<h2 style=\"text-align: center;\"><strong>WILLKOMMEN BEIM SCHAU RAUM WEBSHOP</strong></h2>\r\n[/av_textblock]\r\n\r\n[av_hr class=\'short\' height=\'50\' shadow=\'no-shadow\' position=\'center\' custom_border=\'av-border-thin\' custom_width=\'50px\' custom_border_color=\'\' custom_margin_top=\'30px\' custom_margin_bottom=\'30px\' icon_select=\'yes\' custom_icon_color=\'\' icon=\'ue8ae\' font=\'entypo-fontello\']\r\n\r\n[av_textblock size=\'\' font_color=\'\' color=\'\']\r\n<p style=\"text-align: center;\">The Template Builder allows you to build any number of cool Portfolio layouts, 3 of them are featured bellow.</p>\r\n<p style=\"text-align: center;\">Once you have created one or multiple layouts you like, simply save them as template and reuse as often as you need</p>\r\n[/av_textblock]\r\n\r\n[av_one_full first min_height=\'\' vertical_alignment=\'\' space=\'\' custom_margin=\'\' margin=\'0px\' padding=\'0px\' border=\'\' border_color=\'\' radius=\'0px\' background_color=\'\' src=\'\' background_position=\'top left\' background_repeat=\'no-repeat\' animation=\'\' mobile_display=\'\'][/av_one_full]','HOME','','inherit','closed','closed','','11-revision-v1','','','2019-08-06 15:55:52','2019-08-06 15:55:52','',11,'http://schauraum.at.w019acaa.kasserver.com/?p=55',0,'revision','',0),(56,1,'2019-08-06 16:00:02','2019-08-06 16:00:02','[av_fullscreen size=\'extra_large\' image_attachment=\'fixed\' animation=\'slide_up\' autoplay=\'false\' interval=\'5\' control_layout=\'av-control-default\']\r\n[av_fullscreen_slide slide_type=\'image\' id=\'34\' position=\'top left\' video=\'\' mobile_image=\'\' video_cover=\'\' title=\'\' custom_title_size=\'\' custom_content_size=\'\' caption_pos=\'caption_right caption_right_framed caption_framed\' link_apply=\'\' link_target=\'\' button_label=\'\' button_color=\'light\' link_target1=\'\' button_label2=\'\' button_color2=\'light\' link_target2=\'\' font_color=\'\' custom_title=\'\' custom_content=\'\' overlay_opacity=\'0.1\' overlay_color=\'\' overlay_pattern=\'\' overlay_custom_pattern=\'\' video_controls=\'\' video_mute=\'\' video_loop=\'\' video_autoplay=\'\' link=\'\' link1=\'\' link2=\'\' overlay_enable=\'\'][/av_fullscreen_slide]\r\n[/av_fullscreen]\r\n\r\n[av_textblock size=\'\' font_color=\'\' color=\'\']\r\n<h2 style=\"text-align: center;\"><strong>WILLKOMMEN BEIM SCHAU RAUM WEBSHOP</strong></h2>\r\n[/av_textblock]\r\n\r\n[av_hr class=\'short\' height=\'50\' shadow=\'no-shadow\' position=\'center\' custom_border=\'av-border-thin\' custom_width=\'50px\' custom_border_color=\'\' custom_margin_top=\'30px\' custom_margin_bottom=\'30px\' icon_select=\'yes\' custom_icon_color=\'\' icon=\'ue8ae\' font=\'entypo-fontello\']\r\n\r\n[av_textblock size=\'\' font_color=\'custom\' color=\'\']\r\n<p style=\"text-align: center;\">The Template Builder allows you to build <strong style=\"color: red;\">any number</strong> of cool Portfolio layouts, 3 of them are featured bellow.</p>\r\n<p style=\"text-align: center;\">Once you have created one or multiple layouts you like, simply save them as template and reuse as often as you need</p>\r\n[/av_textblock]\r\n\r\n[av_one_full first min_height=\'\' vertical_alignment=\'\' space=\'\' custom_margin=\'\' margin=\'0px\' padding=\'0px\' border=\'\' border_color=\'\' radius=\'0px\' background_color=\'\' src=\'\' background_position=\'top left\' background_repeat=\'no-repeat\' animation=\'\' mobile_display=\'\'][/av_one_full]','HOME','','inherit','closed','closed','','11-revision-v1','','','2019-08-06 16:00:02','2019-08-06 16:00:02','',11,'http://schauraum.at.w019acaa.kasserver.com/?p=56',0,'revision','',0),(57,1,'2019-08-06 17:45:42','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2019-08-06 17:45:42','0000-00-00 00:00:00','',0,'http://schauraum.at.w019acaa.kasserver.com/?p=57',0,'post','',0),(58,1,'2019-08-06 17:46:45','2019-08-06 17:46:45','<img class=\"alignnone size-full wp-image-61\" src=\"http://schauraum.at.w019acaa.kasserver.com/wp-content/uploads/2019/08/prod1.png\" alt=\"\" width=\"344\" height=\"265\" />','MODE ACCESOIRES','','trash','open','closed','','mode-accesoires__trashed','','','2019-08-06 18:08:20','2019-08-06 18:08:20','',0,'http://schauraum.at.w019acaa.kasserver.com/?post_type=portfolio&#038;p=58',0,'portfolio','',0),(59,1,'2019-08-06 17:47:19','2019-08-06 17:47:19','<img class=\"alignnone size-full wp-image-62\" src=\"http://schauraum.at.w019acaa.kasserver.com/wp-content/uploads/2019/08/prod2.png\" alt=\"\" width=\"343\" height=\"270\" />','SCHMUCK','','trash','open','closed','','schmuck__trashed','','','2019-08-06 18:08:18','2019-08-06 18:08:18','',0,'http://schauraum.at.w019acaa.kasserver.com/?post_type=portfolio&#038;p=59',0,'portfolio','',0),(60,1,'2019-08-06 17:48:19','2019-08-06 17:48:19','<img class=\"alignnone size-full wp-image-64\" src=\"http://schauraum.at.w019acaa.kasserver.com/wp-content/uploads/2019/08/prod3.png\" alt=\"\" width=\"344\" height=\"271\" />','WOHN- UND TISCHKULTUR','','trash','open','closed','','wohn-und-tischkultur__trashed','','','2019-08-06 18:08:17','2019-08-06 18:08:17','',0,'http://schauraum.at.w019acaa.kasserver.com/?post_type=portfolio&#038;p=60',0,'portfolio','',0),(61,1,'2019-08-06 17:48:40','2019-08-06 17:48:40','','prod1','MODE ACCESOIRES','inherit','open','closed','','prod1','','','2019-08-06 18:14:27','2019-08-06 18:14:27','',60,'http://schauraum.at.w019acaa.kasserver.com/wp-content/uploads/2019/08/prod1.png',0,'attachment','image/png',0),(62,1,'2019-08-06 17:49:20','2019-08-06 17:49:20','','prod2','SCHMUCK','inherit','open','closed','','prod2','','','2019-08-06 18:14:38','2019-08-06 18:14:38','',59,'http://schauraum.at.w019acaa.kasserver.com/wp-content/uploads/2019/08/prod2.png',0,'attachment','image/png',0),(63,1,'2019-08-06 17:49:31','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','closed','','','','','2019-08-06 17:49:31','0000-00-00 00:00:00','',0,'http://schauraum.at.w019acaa.kasserver.com/?post_type=portfolio&p=63',0,'portfolio','',0),(64,1,'2019-08-06 17:50:12','2019-08-06 17:50:12','','prod3','WOHN- UND TISCHKULTUR','inherit','open','closed','','prod3','','','2019-08-06 18:14:59','2019-08-06 18:14:59','',60,'http://schauraum.at.w019acaa.kasserver.com/wp-content/uploads/2019/08/prod3.png',0,'attachment','image/png',0),(65,1,'2019-08-06 17:51:51','2019-08-06 17:51:51','[av_fullscreen size=\'extra_large\' image_attachment=\'fixed\' animation=\'slide_up\' autoplay=\'false\' interval=\'5\' control_layout=\'av-control-default\']\r\n[av_fullscreen_slide slide_type=\'image\' id=\'34\' position=\'top left\' video=\'\' mobile_image=\'\' video_cover=\'\' title=\'\' custom_title_size=\'\' custom_content_size=\'\' caption_pos=\'caption_right caption_right_framed caption_framed\' link_apply=\'\' link_target=\'\' button_label=\'\' button_color=\'light\' link_target1=\'\' button_label2=\'\' button_color2=\'light\' link_target2=\'\' font_color=\'\' custom_title=\'\' custom_content=\'\' overlay_opacity=\'0.1\' overlay_color=\'\' overlay_pattern=\'\' overlay_custom_pattern=\'\' video_controls=\'\' video_mute=\'\' video_loop=\'\' video_autoplay=\'\' link=\'\' link1=\'\' link2=\'\' overlay_enable=\'\'][/av_fullscreen_slide]\r\n[/av_fullscreen]\r\n\r\n[av_textblock size=\'\' font_color=\'\' color=\'\']\r\n<h2 style=\"text-align: center;\"><strong>WILLKOMMEN BEIM SCHAU RAUM WEBSHOP</strong></h2>\r\n[/av_textblock]\r\n\r\n[av_hr class=\'short\' height=\'50\' shadow=\'no-shadow\' position=\'center\' custom_border=\'av-border-thin\' custom_width=\'50px\' custom_border_color=\'\' custom_margin_top=\'30px\' custom_margin_bottom=\'30px\' icon_select=\'yes\' custom_icon_color=\'\' icon=\'ue8ae\' font=\'entypo-fontello\']\r\n\r\n[av_textblock size=\'\' font_color=\'custom\' color=\'\']\r\n<p style=\"text-align: center;\">The Template Builder allows you to build <strong style=\"color: red;\">any number</strong> of cool Portfolio layouts, 3 of them are featured bellow.</p>\r\n<p style=\"text-align: center;\">Once you have created one or multiple layouts you like, simply save them as template and reuse as often as you need</p>\r\n[/av_textblock]\r\n\r\n[av_one_full first min_height=\'\' vertical_alignment=\'\' space=\'\' custom_margin=\'\' margin=\'0px\' padding=\'0px\' border=\'\' border_color=\'\' radius=\'0px\' background_color=\'\' src=\'\' background_position=\'top left\' background_repeat=\'no-repeat\' animation=\'\' mobile_display=\'\'][/av_one_full]\r\n\r\n[av_one_full first min_height=\'\' vertical_alignment=\'\' space=\'\' custom_margin=\'\' margin=\'0px\' padding=\'0px\' border=\'\' border_color=\'\' radius=\'0px\' background_color=\'\' src=\'\' background_position=\'top left\' background_repeat=\'no-repeat\' animation=\'\' mobile_display=\'\']\r\n\r\n[av_portfolio columns=\'3\' one_column_template=\'special\' items=\'3\' contents=\'only_excerpt\' preview_mode=\'auto\' image_size=\'portfolio\' linking=\'\' sort=\'yes\' paginate=\'yes\' query_orderby=\'date\' query_order=\'DESC\']\r\n\r\n[/av_one_full]','HOME','','inherit','closed','closed','','11-revision-v1','','','2019-08-06 17:51:51','2019-08-06 17:51:51','',11,'http://schauraum.at.w019acaa.kasserver.com/?p=65',0,'revision','',0),(66,1,'2019-08-06 17:54:39','2019-08-06 17:54:39','[av_fullscreen size=\'extra_large\' image_attachment=\'fixed\' animation=\'slide_up\' autoplay=\'false\' interval=\'5\' control_layout=\'av-control-default\']\r\n[av_fullscreen_slide slide_type=\'image\' id=\'34\' position=\'top left\' video=\'\' mobile_image=\'\' video_cover=\'\' title=\'\' custom_title_size=\'\' custom_content_size=\'\' caption_pos=\'caption_right caption_right_framed caption_framed\' link_apply=\'\' link_target=\'\' button_label=\'\' button_color=\'light\' link_target1=\'\' button_label2=\'\' button_color2=\'light\' link_target2=\'\' font_color=\'\' custom_title=\'\' custom_content=\'\' overlay_opacity=\'0.1\' overlay_color=\'\' overlay_pattern=\'\' overlay_custom_pattern=\'\' video_controls=\'\' video_mute=\'\' video_loop=\'\' video_autoplay=\'\' link=\'\' link1=\'\' link2=\'\' overlay_enable=\'\'][/av_fullscreen_slide]\r\n[/av_fullscreen]\r\n\r\n[av_textblock size=\'\' font_color=\'\' color=\'\']\r\n<h2 style=\"text-align: center;\"><strong>WILLKOMMEN BEIM SCHAU RAUM WEBSHOP</strong></h2>\r\n[/av_textblock]\r\n\r\n[av_hr class=\'short\' height=\'50\' shadow=\'no-shadow\' position=\'center\' custom_border=\'av-border-thin\' custom_width=\'50px\' custom_border_color=\'\' custom_margin_top=\'30px\' custom_margin_bottom=\'30px\' icon_select=\'yes\' custom_icon_color=\'\' icon=\'ue8ae\' font=\'entypo-fontello\']\r\n\r\n[av_textblock size=\'\' font_color=\'custom\' color=\'\']\r\n<p style=\"text-align: center;\">The Template Builder allows you to build <strong style=\"color: red;\">any number</strong> of cool Portfolio layouts, 3 of them are featured bellow.</p>\r\n<p style=\"text-align: center;\">Once you have created one or multiple layouts you like, simply save them as template and reuse as often as you need</p>\r\n[/av_textblock]\r\n\r\n[av_one_full first min_height=\'\' vertical_alignment=\'\' space=\'\' custom_margin=\'\' margin=\'0px\' padding=\'0px\' border=\'\' border_color=\'\' radius=\'0px\' background_color=\'\' src=\'\' background_position=\'top left\' background_repeat=\'no-repeat\' animation=\'\' mobile_display=\'\'][/av_one_full]\r\n\r\n[av_one_full first min_height=\'\' vertical_alignment=\'\' space=\'\' custom_margin=\'\' margin=\'0px\' padding=\'0px\' border=\'\' border_color=\'\' radius=\'0px\' background_color=\'\' src=\'\' background_position=\'top left\' background_repeat=\'no-repeat\' animation=\'\' mobile_display=\'\']\r\n\r\n[av_portfolio columns=\'3\' one_column_template=\'special\' items=\'3\' contents=\'only_excerpt\' preview_mode=\'auto\' image_size=\'portfolio\' linking=\'ajax\' sort=\'yes\' paginate=\'yes\' query_orderby=\'date\' query_order=\'DESC\']\r\n\r\n[/av_one_full]','HOME','','inherit','closed','closed','','11-revision-v1','','','2019-08-06 17:54:39','2019-08-06 17:54:39','',11,'http://schauraum.at.w019acaa.kasserver.com/?p=66',0,'revision','',0),(67,1,'2019-08-06 17:56:15','2019-08-06 17:56:15','[av_fullscreen size=\'extra_large\' image_attachment=\'fixed\' animation=\'slide_up\' autoplay=\'false\' interval=\'5\' control_layout=\'av-control-default\']\r\n[av_fullscreen_slide slide_type=\'image\' id=\'34\' position=\'top left\' video=\'\' mobile_image=\'\' video_cover=\'\' title=\'\' custom_title_size=\'\' custom_content_size=\'\' caption_pos=\'caption_right caption_right_framed caption_framed\' link_apply=\'\' link_target=\'\' button_label=\'\' button_color=\'light\' link_target1=\'\' button_label2=\'\' button_color2=\'light\' link_target2=\'\' font_color=\'\' custom_title=\'\' custom_content=\'\' overlay_opacity=\'0.1\' overlay_color=\'\' overlay_pattern=\'\' overlay_custom_pattern=\'\' video_controls=\'\' video_mute=\'\' video_loop=\'\' video_autoplay=\'\' link=\'\' link1=\'\' link2=\'\' overlay_enable=\'\'][/av_fullscreen_slide]\r\n[/av_fullscreen]\r\n\r\n[av_textblock size=\'\' font_color=\'\' color=\'\']\r\n<h2 style=\"text-align: center;\"><strong>WILLKOMMEN BEIM SCHAU RAUM WEBSHOP</strong></h2>\r\n[/av_textblock]\r\n\r\n[av_hr class=\'short\' height=\'50\' shadow=\'no-shadow\' position=\'center\' custom_border=\'av-border-thin\' custom_width=\'50px\' custom_border_color=\'\' custom_margin_top=\'30px\' custom_margin_bottom=\'30px\' icon_select=\'yes\' custom_icon_color=\'\' icon=\'ue8ae\' font=\'entypo-fontello\']\r\n\r\n[av_textblock size=\'\' font_color=\'custom\' color=\'\']\r\n<p style=\"text-align: center;\">The Template Builder allows you to build <strong style=\"color: red;\">any number</strong> of cool Portfolio layouts, 3 of them are featured bellow.</p>\r\n<p style=\"text-align: center;\">Once you have created one or multiple layouts you like, simply save them as template and reuse as often as you need</p>\r\n[/av_textblock]\r\n\r\n[av_portfolio columns=\'3\' one_column_template=\'special\' items=\'3\' contents=\'excerpt\' preview_mode=\'auto\' image_size=\'portfolio\' linking=\'lightbox\' sort=\'yes\' paginate=\'yes\' query_orderby=\'date\' query_order=\'DESC\']','HOME','','inherit','closed','closed','','11-revision-v1','','','2019-08-06 17:56:15','2019-08-06 17:56:15','',11,'http://schauraum.at.w019acaa.kasserver.com/?p=67',0,'revision','',0),(68,1,'2019-08-06 17:57:05','2019-08-06 17:57:05','[av_fullscreen size=\'extra_large\' image_attachment=\'fixed\' animation=\'slide_up\' autoplay=\'false\' interval=\'5\' control_layout=\'av-control-default\']\r\n[av_fullscreen_slide slide_type=\'image\' id=\'34\' position=\'top left\' video=\'\' mobile_image=\'\' video_cover=\'\' title=\'\' custom_title_size=\'\' custom_content_size=\'\' caption_pos=\'caption_right caption_right_framed caption_framed\' link_apply=\'\' link_target=\'\' button_label=\'\' button_color=\'light\' link_target1=\'\' button_label2=\'\' button_color2=\'light\' link_target2=\'\' font_color=\'\' custom_title=\'\' custom_content=\'\' overlay_opacity=\'0.1\' overlay_color=\'\' overlay_pattern=\'\' overlay_custom_pattern=\'\' video_controls=\'\' video_mute=\'\' video_loop=\'\' video_autoplay=\'\' link=\'\' link1=\'\' link2=\'\' overlay_enable=\'\'][/av_fullscreen_slide]\r\n[/av_fullscreen]\r\n\r\n[av_textblock size=\'\' font_color=\'\' color=\'\']\r\n<h2 style=\"text-align: center;\"><strong>WILLKOMMEN BEIM SCHAU RAUM WEBSHOP</strong></h2>\r\n[/av_textblock]\r\n\r\n[av_hr class=\'short\' height=\'50\' shadow=\'no-shadow\' position=\'center\' custom_border=\'av-border-thin\' custom_width=\'50px\' custom_border_color=\'\' custom_margin_top=\'30px\' custom_margin_bottom=\'30px\' icon_select=\'yes\' custom_icon_color=\'\' icon=\'ue8ae\' font=\'entypo-fontello\']\r\n\r\n[av_textblock size=\'\' font_color=\'custom\' color=\'\']\r\n<p style=\"text-align: center;\">The Template Builder allows you to build <strong style=\"color: red;\">any number</strong> of cool Portfolio layouts, 3 of them are featured bellow.</p>\r\n<p style=\"text-align: center;\">Once you have created one or multiple layouts you like, simply save them as template and reuse as often as you need</p>\r\n[/av_textblock]\r\n\r\n[av_portfolio columns=\'3\' one_column_template=\'special\' items=\'3\' contents=\'excerpt\' preview_mode=\'auto\' image_size=\'portfolio\' linking=\'ajax\' sort=\'yes\' paginate=\'yes\' query_orderby=\'date\' query_order=\'DESC\']','HOME','','inherit','closed','closed','','11-revision-v1','','','2019-08-06 17:57:05','2019-08-06 17:57:05','',11,'http://schauraum.at.w019acaa.kasserver.com/?p=68',0,'revision','',0),(69,1,'2019-08-06 17:58:02','2019-08-06 17:58:02','[av_fullscreen size=\'extra_large\' image_attachment=\'fixed\' animation=\'slide_up\' autoplay=\'false\' interval=\'5\' control_layout=\'av-control-default\']\r\n[av_fullscreen_slide slide_type=\'image\' id=\'34\' position=\'top left\' video=\'\' mobile_image=\'\' video_cover=\'\' title=\'\' custom_title_size=\'\' custom_content_size=\'\' caption_pos=\'caption_right caption_right_framed caption_framed\' link_apply=\'\' link_target=\'\' button_label=\'\' button_color=\'light\' link_target1=\'\' button_label2=\'\' button_color2=\'light\' link_target2=\'\' font_color=\'\' custom_title=\'\' custom_content=\'\' overlay_opacity=\'0.1\' overlay_color=\'\' overlay_pattern=\'\' overlay_custom_pattern=\'\' video_controls=\'\' video_mute=\'\' video_loop=\'\' video_autoplay=\'\' link=\'\' link1=\'\' link2=\'\' overlay_enable=\'\'][/av_fullscreen_slide]\r\n[/av_fullscreen]\r\n\r\n[av_textblock size=\'\' font_color=\'\' color=\'\']\r\n<h2 style=\"text-align: center;\"><strong>WILLKOMMEN BEIM SCHAU RAUM WEBSHOP</strong></h2>\r\n[/av_textblock]\r\n\r\n[av_hr class=\'short\' height=\'50\' shadow=\'no-shadow\' position=\'center\' custom_border=\'av-border-thin\' custom_width=\'50px\' custom_border_color=\'\' custom_margin_top=\'30px\' custom_margin_bottom=\'30px\' icon_select=\'yes\' custom_icon_color=\'\' icon=\'ue8ae\' font=\'entypo-fontello\']\r\n\r\n[av_textblock size=\'\' font_color=\'custom\' color=\'\']\r\n<p style=\"text-align: center;\">The Template Builder allows you to build <strong style=\"color: red;\">any number</strong> of cool Portfolio layouts, 3 of them are featured bellow.</p>\r\n<p style=\"text-align: center;\">Once you have created one or multiple layouts you like, simply save them as template and reuse as often as you need</p>\r\n[/av_textblock]\r\n\r\n[av_portfolio columns=\'3\' one_column_template=\'special\' items=\'3\' contents=\'excerpt\' preview_mode=\'auto\' image_size=\'portfolio\' linking=\'lightbox\' sort=\'yes\' paginate=\'yes\' query_orderby=\'date\' query_order=\'DESC\']','HOME','','inherit','closed','closed','','11-revision-v1','','','2019-08-06 17:58:02','2019-08-06 17:58:02','',11,'http://schauraum.at.w019acaa.kasserver.com/?p=69',0,'revision','',0),(70,1,'2019-08-06 17:58:39','2019-08-06 17:58:39','[av_fullscreen size=\'extra_large\' image_attachment=\'fixed\' animation=\'slide_up\' autoplay=\'false\' interval=\'5\' control_layout=\'av-control-default\']\r\n[av_fullscreen_slide slide_type=\'image\' id=\'34\' position=\'top left\' video=\'\' mobile_image=\'\' video_cover=\'\' title=\'\' custom_title_size=\'\' custom_content_size=\'\' caption_pos=\'caption_right caption_right_framed caption_framed\' link_apply=\'\' link_target=\'\' button_label=\'\' button_color=\'light\' link_target1=\'\' button_label2=\'\' button_color2=\'light\' link_target2=\'\' font_color=\'\' custom_title=\'\' custom_content=\'\' overlay_opacity=\'0.1\' overlay_color=\'\' overlay_pattern=\'\' overlay_custom_pattern=\'\' video_controls=\'\' video_mute=\'\' video_loop=\'\' video_autoplay=\'\' link=\'\' link1=\'\' link2=\'\' overlay_enable=\'\'][/av_fullscreen_slide]\r\n[/av_fullscreen]\r\n\r\n[av_textblock size=\'\' font_color=\'\' color=\'\']\r\n<h2 style=\"text-align: center;\"><strong>WILLKOMMEN BEIM SCHAU RAUM WEBSHOP</strong></h2>\r\n[/av_textblock]\r\n\r\n[av_hr class=\'short\' height=\'50\' shadow=\'no-shadow\' position=\'center\' custom_border=\'av-border-thin\' custom_width=\'50px\' custom_border_color=\'\' custom_margin_top=\'30px\' custom_margin_bottom=\'30px\' icon_select=\'yes\' custom_icon_color=\'\' icon=\'ue8ae\' font=\'entypo-fontello\']\r\n\r\n[av_textblock size=\'\' font_color=\'custom\' color=\'\']\r\n<p style=\"text-align: center;\">The Template Builder allows you to build <strong style=\"color: red;\">any number</strong> of cool Portfolio layouts, 3 of them are featured bellow.</p>\r\n<p style=\"text-align: center;\">Once you have created one or multiple layouts you like, simply save them as template and reuse as often as you need</p>\r\n[/av_textblock]\r\n\r\n[av_one_full first min_height=\'\' vertical_alignment=\'\' space=\'\' custom_margin=\'\' margin=\'0px\' padding=\'0px\' border=\'\' border_color=\'\' radius=\'0px\' background_color=\'\' src=\'\' background_position=\'top left\' background_repeat=\'no-repeat\' animation=\'\' mobile_display=\'\']\r\n\r\n[av_portfolio columns=\'3\' one_column_template=\'special\' items=\'3\' contents=\'excerpt\' preview_mode=\'auto\' image_size=\'portfolio\' linking=\'lightbox\' sort=\'yes\' paginate=\'yes\' query_orderby=\'date\' query_order=\'DESC\']\r\n\r\n[/av_one_full]','HOME','','inherit','closed','closed','','11-revision-v1','','','2019-08-06 17:58:39','2019-08-06 17:58:39','',11,'http://schauraum.at.w019acaa.kasserver.com/?p=70',0,'revision','',0),(71,1,'2019-08-06 18:01:43','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','closed','','','','','2019-08-06 18:01:43','0000-00-00 00:00:00','',0,'http://schauraum.at.w019acaa.kasserver.com/?post_type=portfolio&p=71',0,'portfolio','',0),(72,1,'2019-08-06 18:03:24','2019-08-06 18:03:24','[av_fullscreen size=\'extra_large\' image_attachment=\'fixed\' animation=\'slide_up\' autoplay=\'false\' interval=\'5\' control_layout=\'av-control-default\']\r\n[av_fullscreen_slide slide_type=\'image\' id=\'34\' position=\'top left\' video=\'\' mobile_image=\'\' video_cover=\'\' title=\'\' custom_title_size=\'\' custom_content_size=\'\' caption_pos=\'caption_right caption_right_framed caption_framed\' link_apply=\'\' link_target=\'\' button_label=\'\' button_color=\'light\' link_target1=\'\' button_label2=\'\' button_color2=\'light\' link_target2=\'\' font_color=\'\' custom_title=\'\' custom_content=\'\' overlay_opacity=\'0.1\' overlay_color=\'\' overlay_pattern=\'\' overlay_custom_pattern=\'\' video_controls=\'\' video_mute=\'\' video_loop=\'\' video_autoplay=\'\' link=\'\' link1=\'\' link2=\'\' overlay_enable=\'\'][/av_fullscreen_slide]\r\n[/av_fullscreen]\r\n\r\n[av_textblock size=\'\' font_color=\'\' color=\'\']\r\n<h2 style=\"text-align: center;\"><strong>WILLKOMMEN BEIM SCHAU RAUM WEBSHOP</strong></h2>\r\n[/av_textblock]\r\n\r\n[av_hr class=\'short\' height=\'50\' shadow=\'no-shadow\' position=\'center\' custom_border=\'av-border-thin\' custom_width=\'50px\' custom_border_color=\'\' custom_margin_top=\'30px\' custom_margin_bottom=\'30px\' icon_select=\'yes\' custom_icon_color=\'\' icon=\'ue8ae\' font=\'entypo-fontello\']\r\n\r\n[av_textblock size=\'\' font_color=\'custom\' color=\'\']\r\n<p style=\"text-align: center;\">The Template Builder allows you to build <strong style=\"color: red;\">any number</strong> of cool Portfolio layouts, 3 of them are featured bellow.</p>\r\n<p style=\"text-align: center;\">Once you have created one or multiple layouts you like, simply save them as template and reuse as often as you need</p>\r\n[/av_textblock]\r\n\r\n[av_one_full first min_height=\'\' vertical_alignment=\'\' space=\'\' custom_margin=\'\' margin=\'0px\' padding=\'0px\' border=\'\' border_color=\'\' radius=\'0px\' background_color=\'\' src=\'\' background_position=\'top left\' background_repeat=\'no-repeat\' animation=\'\' mobile_display=\'\']\r\n\r\n[av_portfolio categories=\'3\' columns=\'3\' one_column_template=\'special\' items=\'3\' contents=\'excerpt\' preview_mode=\'auto\' image_size=\'portfolio\' linking=\'lightbox\' sort=\'yes\' paginate=\'yes\' query_orderby=\'title\' query_order=\'ASC\']\r\n\r\n[/av_one_full]','HOME','','inherit','closed','closed','','11-revision-v1','','','2019-08-06 18:03:24','2019-08-06 18:03:24','',11,'http://schauraum.at.w019acaa.kasserver.com/?p=72',0,'revision','',0),(73,1,'2019-08-06 18:04:11','2019-08-06 18:04:11','[av_fullscreen size=\'extra_large\' image_attachment=\'fixed\' animation=\'slide_up\' autoplay=\'false\' interval=\'5\' control_layout=\'av-control-default\']\r\n[av_fullscreen_slide slide_type=\'image\' id=\'34\' position=\'top left\' video=\'\' mobile_image=\'\' video_cover=\'\' title=\'\' custom_title_size=\'\' custom_content_size=\'\' caption_pos=\'caption_right caption_right_framed caption_framed\' link_apply=\'\' link_target=\'\' button_label=\'\' button_color=\'light\' link_target1=\'\' button_label2=\'\' button_color2=\'light\' link_target2=\'\' font_color=\'\' custom_title=\'\' custom_content=\'\' overlay_opacity=\'0.1\' overlay_color=\'\' overlay_pattern=\'\' overlay_custom_pattern=\'\' video_controls=\'\' video_mute=\'\' video_loop=\'\' video_autoplay=\'\' link=\'\' link1=\'\' link2=\'\' overlay_enable=\'\'][/av_fullscreen_slide]\r\n[/av_fullscreen]\r\n\r\n[av_textblock size=\'\' font_color=\'\' color=\'\']\r\n<h2 style=\"text-align: center;\"><strong>WILLKOMMEN BEIM SCHAU RAUM WEBSHOP</strong></h2>\r\n[/av_textblock]\r\n\r\n[av_hr class=\'short\' height=\'50\' shadow=\'no-shadow\' position=\'center\' custom_border=\'av-border-thin\' custom_width=\'50px\' custom_border_color=\'\' custom_margin_top=\'30px\' custom_margin_bottom=\'30px\' icon_select=\'yes\' custom_icon_color=\'\' icon=\'ue8ae\' font=\'entypo-fontello\']\r\n\r\n[av_textblock size=\'\' font_color=\'custom\' color=\'\']\r\n<p style=\"text-align: center;\">The Template Builder allows you to build <strong style=\"color: red;\">any number</strong> of cool Portfolio layouts, 3 of them are featured bellow.</p>\r\n<p style=\"text-align: center;\">Once you have created one or multiple layouts you like, simply save them as template and reuse as often as you need</p>\r\n[/av_textblock]\r\n\r\n[av_one_full first min_height=\'\' vertical_alignment=\'\' space=\'\' custom_margin=\'\' margin=\'0px\' padding=\'0px\' border=\'\' border_color=\'\' radius=\'0px\' background_color=\'\' src=\'\' background_position=\'top left\' background_repeat=\'no-repeat\' animation=\'\' mobile_display=\'\']\r\n\r\n[av_portfolio categories=\'3\' columns=\'3\' one_column_template=\'special\' items=\'3\' contents=\'excerpt\' preview_mode=\'auto\' image_size=\'portfolio\' linking=\'\' sort=\'yes\' paginate=\'yes\' query_orderby=\'title\' query_order=\'ASC\']\r\n\r\n[/av_one_full]','HOME','','inherit','closed','closed','','11-revision-v1','','','2019-08-06 18:04:11','2019-08-06 18:04:11','',11,'http://schauraum.at.w019acaa.kasserver.com/?p=73',0,'revision','',0),(74,1,'2019-08-06 18:08:27','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','closed','','','','','2019-08-06 18:08:27','0000-00-00 00:00:00','',0,'http://schauraum.at.w019acaa.kasserver.com/?post_type=portfolio&p=74',0,'portfolio','',0),(75,1,'2019-08-06 18:15:29','2019-08-06 18:15:29','[av_fullscreen size=\'extra_large\' image_attachment=\'fixed\' animation=\'slide_up\' autoplay=\'false\' interval=\'5\' control_layout=\'av-control-default\']\r\n[av_fullscreen_slide slide_type=\'image\' id=\'34\' position=\'top left\' video=\'\' mobile_image=\'\' video_cover=\'\' title=\'\' custom_title_size=\'\' custom_content_size=\'\' caption_pos=\'caption_right caption_right_framed caption_framed\' link_apply=\'\' link_target=\'\' button_label=\'\' button_color=\'light\' link_target1=\'\' button_label2=\'\' button_color2=\'light\' link_target2=\'\' font_color=\'\' custom_title=\'\' custom_content=\'\' overlay_opacity=\'0.1\' overlay_color=\'\' overlay_pattern=\'\' overlay_custom_pattern=\'\' video_controls=\'\' video_mute=\'\' video_loop=\'\' video_autoplay=\'\' link=\'\' link1=\'\' link2=\'\' overlay_enable=\'\'][/av_fullscreen_slide]\r\n[/av_fullscreen]\r\n\r\n[av_textblock size=\'\' font_color=\'\' color=\'\']\r\n<h2 style=\"text-align: center;\"><strong>WILLKOMMEN BEIM SCHAU RAUM WEBSHOP</strong></h2>\r\n[/av_textblock]\r\n\r\n[av_hr class=\'short\' height=\'50\' shadow=\'no-shadow\' position=\'center\' custom_border=\'av-border-thin\' custom_width=\'50px\' custom_border_color=\'\' custom_margin_top=\'30px\' custom_margin_bottom=\'30px\' icon_select=\'yes\' custom_icon_color=\'\' icon=\'ue8ae\' font=\'entypo-fontello\']\r\n\r\n[av_textblock size=\'\' font_color=\'custom\' color=\'\']\r\n<p style=\"text-align: center;\">The Template Builder allows you to build <strong style=\"color: red;\">any number</strong> of cool Portfolio layouts, 3 of them are featured bellow.</p>\r\n<p style=\"text-align: center;\">Once you have created one or multiple layouts you like, simply save them as template and reuse as often as you need</p>\r\n[/av_textblock]\r\n\r\n[av_one_full first min_height=\'\' vertical_alignment=\'\' space=\'\' custom_margin=\'\' margin=\'0px\' padding=\'0px\' border=\'\' border_color=\'\' radius=\'0px\' background_color=\'\' src=\'\' background_position=\'top left\' background_repeat=\'no-repeat\' animation=\'\' mobile_display=\'\']\r\n\r\n[av_masonry_gallery ids=\'61,62,64\' items=\'3\' columns=\'3\' paginate=\'pagination\' size=\'fixed\' gap=\'large\' overlay_fx=\'active\' container_links=\'active\' id=\'\' caption_elements=\'title excerpt\' caption_styling=\'\' caption_display=\'always\' color=\'\' custom_bg=\'\']\r\n\r\n[/av_one_full]','HOME','','inherit','closed','closed','','11-revision-v1','','','2019-08-06 18:15:29','2019-08-06 18:15:29','',11,'http://schauraum.at.w019acaa.kasserver.com/?p=75',0,'revision','',0),(76,1,'2019-08-06 18:16:14','2019-08-06 18:16:14','[av_fullscreen size=\'extra_large\' image_attachment=\'fixed\' animation=\'slide_up\' autoplay=\'false\' interval=\'5\' control_layout=\'av-control-default\']\r\n[av_fullscreen_slide slide_type=\'image\' id=\'34\' position=\'top left\' video=\'\' mobile_image=\'\' video_cover=\'\' title=\'\' custom_title_size=\'\' custom_content_size=\'\' caption_pos=\'caption_right caption_right_framed caption_framed\' link_apply=\'\' link_target=\'\' button_label=\'\' button_color=\'light\' link_target1=\'\' button_label2=\'\' button_color2=\'light\' link_target2=\'\' font_color=\'\' custom_title=\'\' custom_content=\'\' overlay_opacity=\'0.1\' overlay_color=\'\' overlay_pattern=\'\' overlay_custom_pattern=\'\' video_controls=\'\' video_mute=\'\' video_loop=\'\' video_autoplay=\'\' link=\'\' link1=\'\' link2=\'\' overlay_enable=\'\'][/av_fullscreen_slide]\r\n[/av_fullscreen]\r\n\r\n[av_textblock size=\'\' font_color=\'\' color=\'\']\r\n<h2 style=\"text-align: center;\"><strong>WILLKOMMEN BEIM SCHAU RAUM WEBSHOP</strong></h2>\r\n[/av_textblock]\r\n\r\n[av_hr class=\'short\' height=\'50\' shadow=\'no-shadow\' position=\'center\' custom_border=\'av-border-thin\' custom_width=\'50px\' custom_border_color=\'\' custom_margin_top=\'30px\' custom_margin_bottom=\'30px\' icon_select=\'yes\' custom_icon_color=\'\' icon=\'ue8ae\' font=\'entypo-fontello\']\r\n\r\n[av_textblock size=\'\' font_color=\'custom\' color=\'\']\r\n<p style=\"text-align: center;\">The Template Builder allows you to build <strong style=\"color: red;\">any number</strong> of cool Portfolio layouts, 3 of them are featured bellow.</p>\r\n<p style=\"text-align: center;\">Once you have created one or multiple layouts you like, simply save them as template and reuse as often as you need</p>\r\n[/av_textblock]\r\n\r\n[av_one_full first min_height=\'\' vertical_alignment=\'\' space=\'\' custom_margin=\'\' margin=\'0px\' padding=\'0px\' border=\'\' border_color=\'\' radius=\'0px\' background_color=\'\' src=\'\' background_position=\'top left\' background_repeat=\'no-repeat\' animation=\'\' mobile_display=\'\']\r\n\r\n[av_masonry_gallery ids=\'61,62,64\' items=\'3\' columns=\'3\' paginate=\'pagination\' size=\'fixed\' gap=\'large\' overlay_fx=\'active\' container_links=\'active\' id=\'\' caption_elements=\'excerpt\' caption_styling=\'\' caption_display=\'always\' color=\'\' custom_bg=\'\']\r\n\r\n[/av_one_full]','HOME','','inherit','closed','closed','','11-revision-v1','','','2019-08-06 18:16:14','2019-08-06 18:16:14','',11,'http://schauraum.at.w019acaa.kasserver.com/?p=76',0,'revision','',0),(77,1,'2019-08-06 18:16:41','2019-08-06 18:16:41','[av_fullscreen size=\'extra_large\' image_attachment=\'fixed\' animation=\'slide_up\' autoplay=\'false\' interval=\'5\' control_layout=\'av-control-default\']\r\n[av_fullscreen_slide slide_type=\'image\' id=\'34\' position=\'top left\' video=\'\' mobile_image=\'\' video_cover=\'\' title=\'\' custom_title_size=\'\' custom_content_size=\'\' caption_pos=\'caption_right caption_right_framed caption_framed\' link_apply=\'\' link_target=\'\' button_label=\'\' button_color=\'light\' link_target1=\'\' button_label2=\'\' button_color2=\'light\' link_target2=\'\' font_color=\'\' custom_title=\'\' custom_content=\'\' overlay_opacity=\'0.1\' overlay_color=\'\' overlay_pattern=\'\' overlay_custom_pattern=\'\' video_controls=\'\' video_mute=\'\' video_loop=\'\' video_autoplay=\'\' link=\'\' link1=\'\' link2=\'\' overlay_enable=\'\'][/av_fullscreen_slide]\r\n[/av_fullscreen]\r\n\r\n[av_textblock size=\'\' font_color=\'\' color=\'\']\r\n<h2 style=\"text-align: center;\"><strong>WILLKOMMEN BEIM SCHAU RAUM WEBSHOP</strong></h2>\r\n[/av_textblock]\r\n\r\n[av_hr class=\'short\' height=\'50\' shadow=\'no-shadow\' position=\'center\' custom_border=\'av-border-thin\' custom_width=\'50px\' custom_border_color=\'\' custom_margin_top=\'30px\' custom_margin_bottom=\'30px\' icon_select=\'yes\' custom_icon_color=\'\' icon=\'ue8ae\' font=\'entypo-fontello\']\r\n\r\n[av_textblock size=\'\' font_color=\'custom\' color=\'\']\r\n<p style=\"text-align: center;\">The Template Builder allows you to build <strong style=\"color: red;\">any number</strong> of cool Portfolio layouts, 3 of them are featured bellow.</p>\r\n<p style=\"text-align: center;\">Once you have created one or multiple layouts you like, simply save them as template and reuse as often as you need</p>\r\n[/av_textblock]\r\n\r\n[av_one_full first min_height=\'\' vertical_alignment=\'\' space=\'\' custom_margin=\'\' margin=\'0px\' padding=\'0px\' border=\'\' border_color=\'\' radius=\'0px\' background_color=\'\' src=\'\' background_position=\'top left\' background_repeat=\'no-repeat\' animation=\'\' mobile_display=\'\']\r\n\r\n[av_masonry_gallery ids=\'61,62,64\' items=\'3\' columns=\'flexible\' paginate=\'pagination\' size=\'fixed\' gap=\'large\' overlay_fx=\'active\' container_links=\'active\' id=\'\' caption_elements=\'excerpt\' caption_styling=\'\' caption_display=\'always\' color=\'\' custom_bg=\'\']\r\n\r\n[/av_one_full]','HOME','','inherit','closed','closed','','11-revision-v1','','','2019-08-06 18:16:41','2019-08-06 18:16:41','',11,'http://schauraum.at.w019acaa.kasserver.com/?p=77',0,'revision','',0),(78,1,'2019-08-06 18:17:13','2019-08-06 18:17:13','[av_fullscreen size=\'extra_large\' image_attachment=\'fixed\' animation=\'slide_up\' autoplay=\'false\' interval=\'5\' control_layout=\'av-control-default\']\r\n[av_fullscreen_slide slide_type=\'image\' id=\'34\' position=\'top left\' video=\'\' mobile_image=\'\' video_cover=\'\' title=\'\' custom_title_size=\'\' custom_content_size=\'\' caption_pos=\'caption_right caption_right_framed caption_framed\' link_apply=\'\' link_target=\'\' button_label=\'\' button_color=\'light\' link_target1=\'\' button_label2=\'\' button_color2=\'light\' link_target2=\'\' font_color=\'\' custom_title=\'\' custom_content=\'\' overlay_opacity=\'0.1\' overlay_color=\'\' overlay_pattern=\'\' overlay_custom_pattern=\'\' video_controls=\'\' video_mute=\'\' video_loop=\'\' video_autoplay=\'\' link=\'\' link1=\'\' link2=\'\' overlay_enable=\'\'][/av_fullscreen_slide]\r\n[/av_fullscreen]\r\n\r\n[av_textblock size=\'\' font_color=\'\' color=\'\']\r\n<h2 style=\"text-align: center;\"><strong>WILLKOMMEN BEIM SCHAU RAUM WEBSHOP</strong></h2>\r\n[/av_textblock]\r\n\r\n[av_hr class=\'short\' height=\'50\' shadow=\'no-shadow\' position=\'center\' custom_border=\'av-border-thin\' custom_width=\'50px\' custom_border_color=\'\' custom_margin_top=\'30px\' custom_margin_bottom=\'30px\' icon_select=\'yes\' custom_icon_color=\'\' icon=\'ue8ae\' font=\'entypo-fontello\']\r\n\r\n[av_textblock size=\'\' font_color=\'custom\' color=\'\']\r\n<p style=\"text-align: center;\">The Template Builder allows you to build <strong style=\"color: red;\">any number</strong> of cool Portfolio layouts, 3 of them are featured bellow.</p>\r\n<p style=\"text-align: center;\">Once you have created one or multiple layouts you like, simply save them as template and reuse as often as you need</p>\r\n[/av_textblock]\r\n\r\n[av_one_full first min_height=\'\' vertical_alignment=\'\' space=\'\' custom_margin=\'\' margin=\'0px\' padding=\'0px\' border=\'\' border_color=\'\' radius=\'0px\' background_color=\'\' src=\'\' background_position=\'top left\' background_repeat=\'no-repeat\' animation=\'\' mobile_display=\'\']\r\n\r\n[av_masonry_gallery ids=\'61,62,64\' items=\'3\' columns=\'3\' paginate=\'pagination\' size=\'fixed masonry\' gap=\'large\' overlay_fx=\'active\' container_links=\'active\' id=\'\' caption_elements=\'excerpt\' caption_styling=\'\' caption_display=\'always\' color=\'\' custom_bg=\'\']\r\n\r\n[/av_one_full]','HOME','','inherit','closed','closed','','11-revision-v1','','','2019-08-06 18:17:13','2019-08-06 18:17:13','',11,'http://schauraum.at.w019acaa.kasserver.com/?p=78',0,'revision','',0),(79,1,'2019-08-06 18:17:40','2019-08-06 18:17:40','[av_fullscreen size=\'extra_large\' image_attachment=\'fixed\' animation=\'slide_up\' autoplay=\'false\' interval=\'5\' control_layout=\'av-control-default\']\r\n[av_fullscreen_slide slide_type=\'image\' id=\'34\' position=\'top left\' video=\'\' mobile_image=\'\' video_cover=\'\' title=\'\' custom_title_size=\'\' custom_content_size=\'\' caption_pos=\'caption_right caption_right_framed caption_framed\' link_apply=\'\' link_target=\'\' button_label=\'\' button_color=\'light\' link_target1=\'\' button_label2=\'\' button_color2=\'light\' link_target2=\'\' font_color=\'\' custom_title=\'\' custom_content=\'\' overlay_opacity=\'0.1\' overlay_color=\'\' overlay_pattern=\'\' overlay_custom_pattern=\'\' video_controls=\'\' video_mute=\'\' video_loop=\'\' video_autoplay=\'\' link=\'\' link1=\'\' link2=\'\' overlay_enable=\'\'][/av_fullscreen_slide]\r\n[/av_fullscreen]\r\n\r\n[av_textblock size=\'\' font_color=\'\' color=\'\']\r\n<h2 style=\"text-align: center;\"><strong>WILLKOMMEN BEIM SCHAU RAUM WEBSHOP</strong></h2>\r\n[/av_textblock]\r\n\r\n[av_hr class=\'short\' height=\'50\' shadow=\'no-shadow\' position=\'center\' custom_border=\'av-border-thin\' custom_width=\'50px\' custom_border_color=\'\' custom_margin_top=\'30px\' custom_margin_bottom=\'30px\' icon_select=\'yes\' custom_icon_color=\'\' icon=\'ue8ae\' font=\'entypo-fontello\']\r\n\r\n[av_textblock size=\'\' font_color=\'custom\' color=\'\']\r\n<p style=\"text-align: center;\">The Template Builder allows you to build <strong style=\"color: red;\">any number</strong> of cool Portfolio layouts, 3 of them are featured bellow.</p>\r\n<p style=\"text-align: center;\">Once you have created one or multiple layouts you like, simply save them as template and reuse as often as you need</p>\r\n[/av_textblock]\r\n\r\n[av_one_full first min_height=\'\' vertical_alignment=\'\' space=\'\' custom_margin=\'\' margin=\'0px\' padding=\'0px\' border=\'\' border_color=\'\' radius=\'0px\' background_color=\'\' src=\'\' background_position=\'top left\' background_repeat=\'no-repeat\' animation=\'\' mobile_display=\'\']\r\n\r\n[av_masonry_gallery ids=\'61,62,64\' items=\'3\' columns=\'3\' paginate=\'pagination\' size=\'fixed masonry\' gap=\'no\' overlay_fx=\'active\' container_links=\'active\' id=\'\' caption_elements=\'excerpt\' caption_styling=\'\' caption_display=\'always\' color=\'\' custom_bg=\'\']\r\n\r\n[/av_one_full]','HOME','','inherit','closed','closed','','11-revision-v1','','','2019-08-06 18:17:40','2019-08-06 18:17:40','',11,'http://schauraum.at.w019acaa.kasserver.com/?p=79',0,'revision','',0),(80,1,'2019-08-06 21:26:57','2019-08-06 21:26:57','[av_slideshow size=\'featured\' animation=\'slide\' autoplay=\'false\' interval=\'5\' control_layout=\'av-control-default\']\r\n[av_slide id=\'34\'][/av_slide]\r\n\r\n[/av_slideshow]\r\n\r\n[av_textblock size=\'\' font_color=\'\' color=\'\']\r\n<h2 style=\"text-align: center;\"><strong>WILLKOMMEN BEIM SCHAU RAUM WEBSHOP</strong></h2>\r\n[/av_textblock]\r\n\r\n[av_hr class=\'short\' height=\'50\' shadow=\'no-shadow\' position=\'center\' custom_border=\'av-border-thin\' custom_width=\'50px\' custom_border_color=\'\' custom_margin_top=\'30px\' custom_margin_bottom=\'30px\' icon_select=\'yes\' custom_icon_color=\'\' icon=\'ue8ae\' font=\'entypo-fontello\']\r\n\r\n[av_textblock size=\'\' font_color=\'custom\' color=\'\']\r\n<p style=\"text-align: center;\">The Template Builder allows you to build <strong style=\"color: red;\">any number</strong> of cool Portfolio layouts, 3 of them are featured bellow.</p>\r\n<p style=\"text-align: center;\">Once you have created one or multiple layouts you like, simply save them as template and reuse as often as you need</p>\r\n[/av_textblock]\r\n\r\n[av_one_full first min_height=\'\' vertical_alignment=\'\' space=\'\' custom_margin=\'\' margin=\'0px\' padding=\'0px\' border=\'\' border_color=\'\' radius=\'0px\' background_color=\'\' src=\'\' background_position=\'top left\' background_repeat=\'no-repeat\' animation=\'\' mobile_display=\'\']\r\n[av_masonry_gallery ids=\'61,62,64\' items=\'3\' columns=\'3\' paginate=\'pagination\' size=\'fixed masonry\' gap=\'no\' overlay_fx=\'active\' container_links=\'active\' id=\'\' caption_elements=\'excerpt\' caption_styling=\'\' caption_display=\'always\' color=\'\' custom_bg=\'\']\r\n[/av_one_full]','HOME','','inherit','closed','closed','','11-revision-v1','','','2019-08-06 21:26:57','2019-08-06 21:26:57','',11,'http://schauraum.at.w019acaa.kasserver.com/?p=80',0,'revision','',0),(81,1,'2019-08-06 21:27:25','2019-08-06 21:27:25','[av_slideshow size=\'no scaling\' animation=\'slide\' autoplay=\'false\' interval=\'5\' control_layout=\'av-control-default\']\r\n[av_slide id=\'34\' slide_type=\'\' video=\'http://\' mobile_image=\'\' video_ratio=\'16:9\' video_controls=\'\' video_mute=\'\' video_loop=\'\' video_autoplay=\'\' title=\'\' link_apply=\'\' link=\'\' link_target=\'\'][/av_slide]\r\n\r\n[/av_slideshow]\r\n\r\n[av_textblock size=\'\' font_color=\'\' color=\'\']\r\n<h2 style=\"text-align: center;\"><strong>WILLKOMMEN BEIM SCHAU RAUM WEBSHOP</strong></h2>\r\n[/av_textblock]\r\n\r\n[av_hr class=\'short\' height=\'50\' shadow=\'no-shadow\' position=\'center\' custom_border=\'av-border-thin\' custom_width=\'50px\' custom_border_color=\'\' custom_margin_top=\'30px\' custom_margin_bottom=\'30px\' icon_select=\'yes\' custom_icon_color=\'\' icon=\'ue8ae\' font=\'entypo-fontello\']\r\n\r\n[av_textblock size=\'\' font_color=\'custom\' color=\'\']\r\n<p style=\"text-align: center;\">The Template Builder allows you to build <strong style=\"color: red;\">any number</strong> of cool Portfolio layouts, 3 of them are featured bellow.</p>\r\n<p style=\"text-align: center;\">Once you have created one or multiple layouts you like, simply save them as template and reuse as often as you need</p>\r\n[/av_textblock]\r\n\r\n[av_one_full first min_height=\'\' vertical_alignment=\'\' space=\'\' custom_margin=\'\' margin=\'0px\' padding=\'0px\' border=\'\' border_color=\'\' radius=\'0px\' background_color=\'\' src=\'\' background_position=\'top left\' background_repeat=\'no-repeat\' animation=\'\' mobile_display=\'\']\r\n[av_masonry_gallery ids=\'61,62,64\' items=\'3\' columns=\'3\' paginate=\'pagination\' size=\'fixed masonry\' gap=\'no\' overlay_fx=\'active\' container_links=\'active\' id=\'\' caption_elements=\'excerpt\' caption_styling=\'\' caption_display=\'always\' color=\'\' custom_bg=\'\']\r\n[/av_one_full]','HOME','','inherit','closed','closed','','11-revision-v1','','','2019-08-06 21:27:25','2019-08-06 21:27:25','',11,'http://schauraum.at.w019acaa.kasserver.com/?p=81',0,'revision','',0),(82,1,'2019-08-06 21:27:44','2019-08-06 21:27:44','[av_section min_height=\'\' min_height_px=\'500px\' padding=\'default\' shadow=\'no-shadow\' bottom_border=\'no-border-styling\' bottom_border_diagonal_color=\'#333333\' bottom_border_diagonal_direction=\'scroll\' bottom_border_style=\'scroll\' scroll_down=\'\' id=\'\' color=\'main_color\' custom_bg=\'\' src=\'\' attach=\'scroll\' position=\'top left\' repeat=\'no-repeat\' video=\'\' video_ratio=\'16:9\' video_mobile_disabled=\'\' overlay_enable=\'\' overlay_opacity=\'0.5\' overlay_color=\'\' overlay_pattern=\'\' overlay_custom_pattern=\'\']\r\n\r\n[av_slideshow size=\'no scaling\' animation=\'slide\' autoplay=\'false\' interval=\'5\' control_layout=\'av-control-default\']\r\n[av_slide id=\'34\' slide_type=\'\' video=\'http://\' mobile_image=\'\' video_ratio=\'16:9\' video_controls=\'\' video_mute=\'\' video_loop=\'\' video_autoplay=\'\' title=\'\' link_apply=\'\' link=\'\' link_target=\'\'][/av_slide]\r\n[/av_slideshow]\r\n\r\n[/av_section][av_textblock size=\'\' font_color=\'\' color=\'\']\r\n<h2 style=\"text-align: center;\"><strong>WILLKOMMEN BEIM SCHAU RAUM WEBSHOP</strong></h2>\r\n[/av_textblock]\r\n\r\n[av_hr class=\'short\' height=\'50\' shadow=\'no-shadow\' position=\'center\' custom_border=\'av-border-thin\' custom_width=\'50px\' custom_border_color=\'\' custom_margin_top=\'30px\' custom_margin_bottom=\'30px\' icon_select=\'yes\' custom_icon_color=\'\' icon=\'ue8ae\' font=\'entypo-fontello\']\r\n\r\n[av_textblock size=\'\' font_color=\'custom\' color=\'\']\r\n<p style=\"text-align: center;\">The Template Builder allows you to build <strong style=\"color: red;\">any number</strong> of cool Portfolio layouts, 3 of them are featured bellow.</p>\r\n<p style=\"text-align: center;\">Once you have created one or multiple layouts you like, simply save them as template and reuse as often as you need</p>\r\n[/av_textblock]\r\n\r\n[av_one_full first min_height=\'\' vertical_alignment=\'\' space=\'\' custom_margin=\'\' margin=\'0px\' padding=\'0px\' border=\'\' border_color=\'\' radius=\'0px\' background_color=\'\' src=\'\' background_position=\'top left\' background_repeat=\'no-repeat\' animation=\'\' mobile_display=\'\']\r\n[av_masonry_gallery ids=\'61,62,64\' items=\'3\' columns=\'3\' paginate=\'pagination\' size=\'fixed masonry\' gap=\'no\' overlay_fx=\'active\' container_links=\'active\' id=\'\' caption_elements=\'excerpt\' caption_styling=\'\' caption_display=\'always\' color=\'\' custom_bg=\'\']\r\n[/av_one_full]','HOME','','inherit','closed','closed','','11-revision-v1','','','2019-08-06 21:27:44','2019-08-06 21:27:44','',11,'http://schauraum.at.w019acaa.kasserver.com/?p=82',0,'revision','',0),(83,1,'2019-08-06 21:28:32','2019-08-06 21:28:32','[av_section min_height=\'\' min_height_px=\'500px\' padding=\'no-padding\' shadow=\'no-border-styling\' bottom_border=\'no-border-styling\' bottom_border_diagonal_color=\'#333333\' bottom_border_diagonal_direction=\'\' bottom_border_style=\'\' id=\'\' color=\'main_color\' custom_bg=\'\' src=\'\' attachment=\'\' attachment_size=\'\' attach=\'scroll\' position=\'top left\' repeat=\'no-repeat\' video=\'\' video_ratio=\'16:9\' overlay_opacity=\'0.5\' overlay_color=\'\' overlay_pattern=\'\' overlay_custom_pattern=\'\']\r\n[av_slideshow size=\'no scaling\' animation=\'slide\' autoplay=\'false\' interval=\'5\' control_layout=\'av-control-default\']\r\n[av_slide id=\'34\' slide_type=\'\' video=\'http://\' mobile_image=\'\' video_ratio=\'16:9\' video_controls=\'\' video_mute=\'\' video_loop=\'\' video_autoplay=\'\' title=\'\' link_apply=\'\' link=\'\' link_target=\'\'][/av_slide]\r\n[/av_slideshow]\r\n[/av_section]\r\n\r\n[av_textblock size=\'\' font_color=\'\' color=\'\']\r\n<h2 style=\"text-align: center;\"><strong>WILLKOMMEN BEIM SCHAU RAUM WEBSHOP</strong></h2>\r\n[/av_textblock]\r\n\r\n[av_hr class=\'short\' height=\'50\' shadow=\'no-shadow\' position=\'center\' custom_border=\'av-border-thin\' custom_width=\'50px\' custom_border_color=\'\' custom_margin_top=\'30px\' custom_margin_bottom=\'30px\' icon_select=\'yes\' custom_icon_color=\'\' icon=\'ue8ae\' font=\'entypo-fontello\']\r\n\r\n[av_textblock size=\'\' font_color=\'custom\' color=\'\']\r\n<p style=\"text-align: center;\">The Template Builder allows you to build <strong style=\"color: red;\">any number</strong> of cool Portfolio layouts, 3 of them are featured bellow.</p>\r\n<p style=\"text-align: center;\">Once you have created one or multiple layouts you like, simply save them as template and reuse as often as you need</p>\r\n[/av_textblock]\r\n\r\n[av_one_full first min_height=\'\' vertical_alignment=\'\' space=\'\' custom_margin=\'\' margin=\'0px\' padding=\'0px\' border=\'\' border_color=\'\' radius=\'0px\' background_color=\'\' src=\'\' background_position=\'top left\' background_repeat=\'no-repeat\' animation=\'\' mobile_display=\'\']\r\n[av_masonry_gallery ids=\'61,62,64\' items=\'3\' columns=\'3\' paginate=\'pagination\' size=\'fixed masonry\' gap=\'no\' overlay_fx=\'active\' container_links=\'active\' id=\'\' caption_elements=\'excerpt\' caption_styling=\'\' caption_display=\'always\' color=\'\' custom_bg=\'\']\r\n[/av_one_full]','HOME','','inherit','closed','closed','','11-revision-v1','','','2019-08-06 21:28:32','2019-08-06 21:28:32','',11,'http://schauraum.at.w019acaa.kasserver.com/?p=83',0,'revision','',0),(84,1,'2019-08-06 21:31:54','2019-08-06 21:31:54','[av_one_full first min_height=\'\' vertical_alignment=\'av-align-top\' space=\'no_margin\' margin=\'0px\' margin_sync=\'true\' padding=\'0px\' padding_sync=\'true\' border=\'\' border_color=\'\' radius=\'0px\' radius_sync=\'true\' background_color=\'\' src=\'\' attachment=\'\' attachment_size=\'\' background_position=\'top left\' background_repeat=\'no-repeat\' animation=\'\' mobile_display=\'\']\r\n\r\n[av_slideshow size=\'no scaling\' animation=\'slide\' autoplay=\'false\' interval=\'5\' control_layout=\'av-control-default\']\r\n[av_slide id=\'34\' slide_type=\'\' video=\'http://\' mobile_image=\'\' video_ratio=\'16:9\' video_controls=\'\' video_mute=\'\' video_loop=\'\' video_autoplay=\'\' title=\'\' link_apply=\'\' link=\'\' link_target=\'\'][/av_slide]\r\n[/av_slideshow]\r\n\r\n[/av_one_full][av_section min_height=\'\' min_height_px=\'500px\' padding=\'no-padding\' shadow=\'no-border-styling\' bottom_border=\'no-border-styling\' bottom_border_diagonal_color=\'#333333\' bottom_border_diagonal_direction=\'\' bottom_border_style=\'\' id=\'\' color=\'main_color\' custom_bg=\'\' src=\'\' attachment=\'\' attachment_size=\'\' attach=\'scroll\' position=\'top left\' repeat=\'no-repeat\' video=\'\' video_ratio=\'16:9\' overlay_opacity=\'0.5\' overlay_color=\'\' overlay_pattern=\'\' overlay_custom_pattern=\'\']\r\n\r\n[/av_section][av_textblock size=\'\' font_color=\'\' color=\'\']\r\n<h2 style=\"text-align: center;\"><strong>WILLKOMMEN BEIM SCHAU RAUM WEBSHOP</strong></h2>\r\n[/av_textblock]\r\n\r\n[av_hr class=\'short\' height=\'50\' shadow=\'no-shadow\' position=\'center\' custom_border=\'av-border-thin\' custom_width=\'50px\' custom_border_color=\'\' custom_margin_top=\'30px\' custom_margin_bottom=\'30px\' icon_select=\'yes\' custom_icon_color=\'\' icon=\'ue8ae\' font=\'entypo-fontello\']\r\n\r\n[av_textblock size=\'\' font_color=\'custom\' color=\'\']\r\n<p style=\"text-align: center;\">The Template Builder allows you to build <strong style=\"color: red;\">any number</strong> of cool Portfolio layouts, 3 of them are featured bellow.</p>\r\n<p style=\"text-align: center;\">Once you have created one or multiple layouts you like, simply save them as template and reuse as often as you need</p>\r\n[/av_textblock]\r\n\r\n[av_one_full first min_height=\'\' vertical_alignment=\'\' space=\'\' custom_margin=\'\' margin=\'0px\' padding=\'0px\' border=\'\' border_color=\'\' radius=\'0px\' background_color=\'\' src=\'\' background_position=\'top left\' background_repeat=\'no-repeat\' animation=\'\' mobile_display=\'\']\r\n[av_masonry_gallery ids=\'61,62,64\' items=\'3\' columns=\'3\' paginate=\'pagination\' size=\'fixed masonry\' gap=\'no\' overlay_fx=\'active\' container_links=\'active\' id=\'\' caption_elements=\'excerpt\' caption_styling=\'\' caption_display=\'always\' color=\'\' custom_bg=\'\']\r\n[/av_one_full]','HOME','','inherit','closed','closed','','11-revision-v1','','','2019-08-06 21:31:54','2019-08-06 21:31:54','',11,'http://schauraum.at.w019acaa.kasserver.com/?p=84',0,'revision','',0),(85,1,'2019-08-06 21:32:48','2019-08-06 21:32:48','[av_layerslider id=\'1\']\r\n\r\n[av_textblock size=\'\' font_color=\'\' color=\'\']\r\n<h2 style=\"text-align: center;\"><strong>WILLKOMMEN BEIM SCHAU RAUM WEBSHOP</strong></h2>\r\n[/av_textblock]\r\n\r\n[av_hr class=\'short\' height=\'50\' shadow=\'no-shadow\' position=\'center\' custom_border=\'av-border-thin\' custom_width=\'50px\' custom_border_color=\'\' custom_margin_top=\'30px\' custom_margin_bottom=\'30px\' icon_select=\'yes\' custom_icon_color=\'\' icon=\'ue8ae\' font=\'entypo-fontello\']\r\n\r\n[av_textblock size=\'\' font_color=\'custom\' color=\'\']\r\n<p style=\"text-align: center;\">The Template Builder allows you to build <strong style=\"color: red;\">any number</strong> of cool Portfolio layouts, 3 of them are featured bellow.</p>\r\n<p style=\"text-align: center;\">Once you have created one or multiple layouts you like, simply save them as template and reuse as often as you need</p>\r\n[/av_textblock]\r\n\r\n[av_one_full first min_height=\'\' vertical_alignment=\'\' space=\'\' custom_margin=\'\' margin=\'0px\' padding=\'0px\' border=\'\' border_color=\'\' radius=\'0px\' background_color=\'\' src=\'\' background_position=\'top left\' background_repeat=\'no-repeat\' animation=\'\' mobile_display=\'\']\r\n[av_masonry_gallery ids=\'61,62,64\' items=\'3\' columns=\'3\' paginate=\'pagination\' size=\'fixed masonry\' gap=\'no\' overlay_fx=\'active\' container_links=\'active\' id=\'\' caption_elements=\'excerpt\' caption_styling=\'\' caption_display=\'always\' color=\'\' custom_bg=\'\']\r\n[/av_one_full]','HOME','','inherit','closed','closed','','11-revision-v1','','','2019-08-06 21:32:48','2019-08-06 21:32:48','',11,'http://schauraum.at.w019acaa.kasserver.com/?p=85',0,'revision','',0);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0),(25,2,0),(26,2,0),(27,2,0),(28,2,0),(29,2,0),(58,3,0),(59,3,0),(60,3,0);
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
  `taxonomy` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,1),(2,2,'nav_menu','',0,5),(3,3,'portfolio_entries','',0,0);
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
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0),(2,'main_menu','main_menu',0),(3,'images_p','images_p',0);
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
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','admin'),(2,1,'first_name',''),(3,1,'last_name',''),(4,1,'description',''),(5,1,'rich_editing','true'),(6,1,'syntax_highlighting','true'),(7,1,'comment_shortcuts','false'),(8,1,'admin_color','fresh'),(9,1,'use_ssl','0'),(10,1,'show_admin_bar_front','true'),(11,1,'locale',''),(12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}'),(13,1,'wp_user_level','10'),(14,1,'dismissed_wp_pointers','wp496_privacy,builder-button-pointer,text_widget_custom_html,theme_editor_notice'),(15,1,'show_welcome_panel','1'),(16,1,'session_tokens','a:5:{s:64:\"0c4c5dc71dd145326556fdca0dab886a664be656b70005329b21e163f218b7cc\";a:4:{s:10:\"expiration\";i:1565225948;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:76:\"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:59.0) Gecko/20100101 Firefox/59.0\";s:5:\"login\";i:1565053148;}s:64:\"283a5b21bb89c70f4447c8e43a345b284bf252a92bba0d083c391ec1142c276e\";a:4:{s:10:\"expiration\";i:1565270732;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:76:\"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:59.0) Gecko/20100101 Firefox/59.0\";s:5:\"login\";i:1565097932;}s:64:\"78dc068e8c81fa32a728c0c8f78f9871807515bb0162e28f94877e3b39498b84\";a:4:{s:10:\"expiration\";i:1565274675;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:76:\"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:59.0) Gecko/20100101 Firefox/59.0\";s:5:\"login\";i:1565101875;}s:64:\"96a99c8bb58b6530be1531a32d555beb239e64de19193264b1bd7806f719a947\";a:4:{s:10:\"expiration\";i:1566312720;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:76:\"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:59.0) Gecko/20100101 Firefox/59.0\";s:5:\"login\";i:1565103120;}s:64:\"16a93a6a34d85978cb322d28a783d4759ca5d1a60880c050c6a123548fe25218\";a:4:{s:10:\"expiration\";i:1565298683;s:2:\"ip\";s:12:\"192.168.88.2\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36\";s:5:\"login\";i:1565125883;}}'),(17,1,'wp_dashboard_quick_press_last_post_id','57'),(18,1,'community-events-location','a:1:{s:2:\"ip\";s:12:\"192.168.88.0\";}'),(19,1,'wp_user-settings','libraryContent=browse&editor=tinymce'),(20,1,'wp_user-settings-time','1565114474'),(21,1,'managenav-menuscolumnshidden','a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),(22,1,'metaboxhidden_nav-menus','a:4:{i:0;s:23:\"add-post-type-portfolio\";i:1;s:12:\"add-post_tag\";i:2;s:15:\"add-post_format\";i:3;s:21:\"add-portfolio_entries\";}'),(23,1,'nav_menu_recently_edited','2'),(24,1,'layerslider_help_wp_pointer','1');
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
  `user_login` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'admin','$P$BgPRuKkYf0HCRSMEhIiMbq36O3Khw2.','admin','abpprkonsalting@gmail.com','','2018-07-10 10:01:51','',0,'admin');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-08-07 13:31:39
