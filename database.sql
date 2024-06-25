-- MySQL dump 10.13  Distrib 5.7.44, for osx10.19 (x86_64)
--
-- Host: 127.0.0.1    Database: shofy
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `activations`
--

DROP TABLE IF EXISTS `activations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `code` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activations_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activations`
--

LOCK TABLES `activations` WRITE;
/*!40000 ALTER TABLE `activations` DISABLE KEYS */;
INSERT INTO `activations` VALUES (1,1,'DbV6XP9KoJ6WoOA7Wqx1xoKyTxxZFL3V',1,'2024-06-04 23:59:38','2024-06-04 23:59:38','2024-06-04 23:59:38');
/*!40000 ALTER TABLE `activations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_notifications`
--

DROP TABLE IF EXISTS `admin_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_notifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_notifications`
--

LOCK TABLES `admin_notifications` WRITE;
/*!40000 ALTER TABLE `admin_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads`
--

DROP TABLE IF EXISTS `ads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ads` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expired_at` datetime DEFAULT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clicked` bigint NOT NULL DEFAULT '0',
  `order` int DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `open_in_new_tab` tinyint(1) NOT NULL DEFAULT '1',
  `tablet_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ads_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_adsense_slot_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ads_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads`
--

LOCK TABLES `ads` WRITE;
/*!40000 ALTER TABLE `ads` DISABLE KEYS */;
INSERT INTO `ads` VALUES (1,'Ads 1','2029-06-05 00:00:00','not_set','UROL9F9ZZVAA','main/banners/1.jpg','/products',0,1,'published','2024-06-04 23:59:49','2024-06-04 23:59:49',1,NULL,NULL,NULL,NULL),(2,'Ads 2','2029-06-05 00:00:00','not_set','B30VDBKO7SBF','main/banners/2.jpg','/products',0,2,'published','2024-06-04 23:59:49','2024-06-04 23:59:49',1,NULL,NULL,NULL,NULL),(3,'Ads 3','2029-06-05 00:00:00','not_set','BN3ZCHLIE95I','main/gadgets/gadget-banner-1.jpg','/products',0,3,'published','2024-06-04 23:59:49','2024-06-04 23:59:49',1,NULL,NULL,NULL,NULL),(4,'Ads 4','2029-06-05 00:00:00','not_set','QGPRRJ2MPZYA','main/gadgets/gadget-banner-2.jpg','/products',0,4,'published','2024-06-04 23:59:49','2024-06-04 23:59:49',1,NULL,NULL,NULL,NULL),(5,'Ads 5','2029-06-05 00:00:00','not_set','B5ZA76ZWMWAE','main/banners/slider-1.png','http://shofy.test',0,5,'published','2024-06-04 23:59:49','2024-06-04 23:59:49',1,NULL,NULL,NULL,NULL),(6,'Ads 6','2029-06-05 00:00:00','not_set','F1LTQS976YPY','main/banners/slider-2.png','http://shofy.test',0,6,'published','2024-06-04 23:59:49','2024-06-04 23:59:49',1,NULL,NULL,NULL,NULL),(7,'Ads 7','2029-06-05 00:00:00','not_set','IHPZ2WBSYJUK','main/banners/slider-3.png','http://shofy.test/products/sony-x950h-4k-ultra-hd-smart-led-tv',0,7,'published','2024-06-04 23:59:49','2024-06-04 23:59:49',1,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `ads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads_translations`
--

DROP TABLE IF EXISTS `ads_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ads_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ads_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ads_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads_translations`
--

LOCK TABLES `ads_translations` WRITE;
/*!40000 ALTER TABLE `ads_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ads_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `announcements`
--

DROP TABLE IF EXISTS `announcements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `announcements` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `has_action` tinyint(1) NOT NULL DEFAULT '0',
  `action_label` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_url` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_open_new_tab` tinyint(1) NOT NULL DEFAULT '0',
  `dismissible` tinyint(1) NOT NULL DEFAULT '0',
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcements`
--

LOCK TABLES `announcements` WRITE;
/*!40000 ALTER TABLE `announcements` DISABLE KEYS */;
INSERT INTO `announcements` VALUES (1,'Announcement 1','Enjoy free shipping on all orders over $99! Shop now and save on delivery costs.',0,NULL,NULL,0,1,'2024-06-05 06:59:45',NULL,1,'2024-06-04 23:59:45','2024-06-04 23:59:45'),(2,'Announcement 2','Need assistance? Our customer support is available 24/7 to help you with any questions or concerns.',0,NULL,NULL,0,1,'2024-06-05 06:59:45',NULL,1,'2024-06-04 23:59:45','2024-06-04 23:59:45'),(3,'Announcement 3','Shop with confidence! We offer a hassle-free 30 days return service for your peace of mind.',0,NULL,NULL,0,1,'2024-06-05 06:59:45',NULL,1,'2024-06-04 23:59:45','2024-06-04 23:59:45');
/*!40000 ALTER TABLE `announcements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `announcements_translations`
--

DROP TABLE IF EXISTS `announcements_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `announcements_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `announcements_id` bigint unsigned NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`announcements_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcements_translations`
--

LOCK TABLES `announcements_translations` WRITE;
/*!40000 ALTER TABLE `announcements_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `announcements_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_histories`
--

DROP TABLE IF EXISTS `audit_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `audit_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `module` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` longtext COLLATE utf8mb4_unicode_ci,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_user` bigint unsigned NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `audit_histories_user_id_index` (`user_id`),
  KEY `audit_histories_module_index` (`module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_histories`
--

LOCK TABLES `audit_histories` WRITE;
/*!40000 ALTER TABLE `audit_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `audit_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categories_parent_id_index` (`parent_id`),
  KEY `categories_status_index` (`status`),
  KEY `categories_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Crisp Bread &amp; Cake',0,'Quas veritatis et perspiciatis neque ad sint. Repellat corporis in quia exercitationem quo sit recusandae. Dolor est quis sed quo quas neque atque. Quisquam sunt eos nam.','published',1,'Botble\\ACL\\Models\\User',NULL,0,0,0,'2024-06-04 23:59:42','2024-06-04 23:59:42'),(2,'Fashion',0,'Quae qui similique suscipit. Temporibus accusantium et magni sapiente eos autem excepturi. In sit non pariatur quos.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-06-04 23:59:42','2024-06-04 23:59:42'),(3,'Electronic',0,'Quo delectus incidunt necessitatibus sunt a et. Ipsum sequi voluptatem iusto ea rerum. Minus et officia enim.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-06-04 23:59:42','2024-06-04 23:59:42'),(4,'Commercial',0,'Voluptatem saepe quas voluptatum dolorum unde. Occaecati dolorum autem sed eligendi omnis. Officia maiores neque ut id ab qui fugit. Quam unde reiciendis nemo.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-06-04 23:59:42','2024-06-04 23:59:42'),(5,'Organic Fruits',0,'Consequatur omnis ut laborum vero odit ducimus. Necessitatibus enim est quo. Esse et est soluta eligendi. Sed aspernatur omnis perspiciatis repudiandae ut quis aut.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-06-04 23:59:42','2024-06-04 23:59:42'),(6,'Ecological',0,'Qui doloribus iusto consequuntur totam quas ipsam. Veniam fugit odit enim vitae voluptatem ut voluptates. Minima consectetur molestiae molestias est non a perferendis consequatur.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-06-04 23:59:42','2024-06-04 23:59:42');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_translations`
--

DROP TABLE IF EXISTS `categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_translations`
--

LOCK TABLES `categories_translations` WRITE;
/*!40000 ALTER TABLE `categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state_id` bigint unsigned DEFAULT NULL,
  `country_id` bigint unsigned DEFAULT NULL,
  `record_id` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cities_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities_translations`
--

DROP TABLE IF EXISTS `cities_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cities_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cities_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`cities_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities_translations`
--

LOCK TABLES `cities_translations` WRITE;
/*!40000 ALTER TABLE `cities_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_field_options`
--

DROP TABLE IF EXISTS `contact_custom_field_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_custom_field_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `custom_field_id` bigint unsigned NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT '999',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_field_options`
--

LOCK TABLES `contact_custom_field_options` WRITE;
/*!40000 ALTER TABLE `contact_custom_field_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_field_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_field_options_translations`
--

DROP TABLE IF EXISTS `contact_custom_field_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_custom_field_options_translations` (
  `contact_custom_field_options_id` bigint unsigned NOT NULL,
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`contact_custom_field_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_field_options_translations`
--

LOCK TABLES `contact_custom_field_options_translations` WRITE;
/*!40000 ALTER TABLE `contact_custom_field_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_field_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_fields`
--

DROP TABLE IF EXISTS `contact_custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_custom_fields` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `placeholder` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int NOT NULL DEFAULT '999',
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_fields`
--

LOCK TABLES `contact_custom_fields` WRITE;
/*!40000 ALTER TABLE `contact_custom_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_fields_translations`
--

DROP TABLE IF EXISTS `contact_custom_fields_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_custom_fields_translations` (
  `contact_custom_fields_id` bigint unsigned NOT NULL,
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `placeholder` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`contact_custom_fields_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_fields_translations`
--

LOCK TABLES `contact_custom_fields_translations` WRITE;
/*!40000 ALTER TABLE `contact_custom_fields_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_fields_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_replies`
--

DROP TABLE IF EXISTS `contact_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_replies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_replies`
--

LOCK TABLES `contact_replies` WRITE;
/*!40000 ALTER TABLE `contact_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_fields` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (1,'Dr. Richie DuBuque I','roxanne.nikolaus@example.org','651-960-9608','2462 Dietrich Street\nSouth Maudeville, MN 83119-5249','Quasi odio saepe sed.','Sapiente alias in consectetur et ut expedita est mollitia. Enim illum sed ut doloremque quia possimus minima. Dolore nostrum et ipsa quisquam. Quia iure vitae qui aut non unde. Asperiores voluptas perspiciatis doloremque soluta. Quidem et dolor eum suscipit. Ducimus nihil molestiae consequatur atque eius dolores libero quidem. Praesentium consequuntur tempora beatae. Dolore deleniti aut mollitia.',NULL,'read','2024-06-04 23:59:41','2024-06-04 23:59:41'),(2,'Prof. Berta Lockman PhD','trenton.thiel@example.org','1-616-274-4830','11748 Alexanne Rapid Suite 253\nLarkinbury, HI 36362-4444','Voluptatem sed ipsa sint molestias eos ut.','Itaque odio sint ullam incidunt enim id eos recusandae. Et fugiat sint voluptatibus consequatur. Consequatur aut incidunt incidunt incidunt. Beatae itaque quidem facilis ipsam. Quaerat qui eius est exercitationem facere. Aliquid eveniet deleniti est dolore dicta labore ea. Veniam sit suscipit dolor rem voluptates fugit dolorem. Quaerat voluptas voluptatibus distinctio autem ut ut omnis. Et et aut omnis. Et corrupti similique autem dolores pariatur ut. Autem eum dignissimos officiis illo velit.',NULL,'unread','2024-06-04 23:59:41','2024-06-04 23:59:41'),(3,'Dawn Kuhic II','alejandrin74@example.net','1-231-847-1476','93091 Ludwig Ford\nLindseyberg, RI 82927','Doloribus labore alias unde et ut.','Ipsa assumenda placeat necessitatibus totam laudantium necessitatibus. Non possimus assumenda iure eligendi accusantium sed. Quia dignissimos rem qui qui illo accusamus ut. Doloribus illo earum autem. Hic numquam voluptates dolor numquam esse fugiat. Veritatis dolorem voluptatem rem. Quasi inventore praesentium cum. Corporis optio et pariatur qui. Assumenda corrupti aut iure voluptatem consectetur.',NULL,'read','2024-06-04 23:59:41','2024-06-04 23:59:41'),(4,'Daija Adams','hershel.bauch@example.com','+1.347.389.6426','54937 Rippin Crest\nGrimestown, WI 04233','Facere possimus natus eveniet cum.','Quia autem a ea consequatur aliquid. Cumque temporibus aut in provident est. Saepe adipisci asperiores quam. Voluptate dolorem sed velit dolorem ea voluptatem. Quaerat voluptatem reprehenderit a perspiciatis quibusdam in at. Voluptatem quod et quis reiciendis deserunt ipsa. Tempora voluptatibus atque perspiciatis consequatur. Dolores saepe est libero beatae aut maiores. Ipsum labore tempora omnis corrupti ut porro. Facilis quia et laudantium officiis. Quidem esse corporis incidunt.',NULL,'read','2024-06-04 23:59:41','2024-06-04 23:59:41'),(5,'Lue Kautzer III','ndibbert@example.net','952-961-4195','431 Howe Tunnel Apt. 140\nLake Cassandra, CA 12613','Consequatur modi placeat sit est nihil.','Facere vero eligendi nesciunt saepe maxime nisi id. Dolorem delectus est illo nulla sint. In deleniti magnam et ea. Odio ut culpa velit quasi. Et voluptas voluptatibus maiores debitis eos nam ut. Aut perferendis totam placeat. Eaque et expedita facere earum. Necessitatibus consequuntur sit dolorem possimus tenetur. Distinctio nulla dolores facere voluptatem autem impedit voluptas.',NULL,'read','2024-06-04 23:59:41','2024-06-04 23:59:41'),(6,'Dr. Aryanna O\'Keefe DDS','ihuels@example.net','862-450-1671','412 Maxine Plaza\nVadatown, ND 48099','Omnis cumque aspernatur possimus quos dicta eum.','Illo recusandae cum distinctio placeat. Dignissimos ut et ullam sit. Eos earum nihil hic dolorem consectetur magnam. Molestias eius earum alias placeat id minus. Eveniet et sit aliquam eveniet. Animi dolor vitae et repellendus eos. Iure nisi saepe ut et. Et minima dolores eaque quo dicta quae eius. Odit placeat voluptas aliquam doloremque nemo. Sint ut adipisci et consequatur veritatis. Sed explicabo facere ullam fuga. Et et voluptatem impedit facilis et.',NULL,'unread','2024-06-04 23:59:41','2024-06-04 23:59:41'),(7,'Mr. Bret Steuber MD','doyle.nicholaus@example.com','+1.820.210.3010','58509 Ruben Ferry\nHeathcoteland, WA 83499-8728','Rerum dolores nisi in voluptates delectus quis.','Est autem laudantium impedit quaerat rerum. Maxime ut quia autem repudiandae enim. Quasi quos consequatur ut quaerat in. Ut at repellendus eum quia ad minus nihil. Vel asperiores vel amet omnis modi sit. Consequatur ut qui recusandae repudiandae recusandae a. Laudantium amet a incidunt quasi. Et sit eligendi est quo quos qui. Occaecati debitis voluptatem quis dolor eum rerum vero.',NULL,'unread','2024-06-04 23:59:41','2024-06-04 23:59:41'),(8,'Miss Alda Christiansen I','viva93@example.com','+1 (774) 943-5143','471 Travon Lodge Apt. 228\nWest Deshaun, NM 14119','Facilis nesciunt eum architecto consequatur.','Inventore est voluptates nihil temporibus qui. Amet quae iusto debitis quis ut. Et deserunt est fugit dolores unde. Cupiditate vel nihil aliquam animi. Blanditiis dolor impedit quod pariatur sunt hic sit. A repellat debitis ipsa. Repudiandae assumenda est at dignissimos omnis. Unde eos veniam rem est. Fugit quis ut dolore libero. Et odit et quod nemo. Voluptatem et optio ullam officia. Saepe magni corrupti ad.',NULL,'unread','2024-06-04 23:59:41','2024-06-04 23:59:41'),(9,'Jolie West','turcotte.heaven@example.com','+12562546050','16291 Witting Lock\nAnnettemouth, CO 49011-7200','Quia ab commodi mollitia eos maxime.','Beatae dolor qui error quibusdam. Enim hic voluptatem incidunt ipsam illo eum. Est sint officiis debitis perferendis ullam. Labore facilis nulla et adipisci id. Qui veritatis iusto rem et dolorem. Perferendis a nesciunt cum nihil. Natus nemo cum ea voluptate veritatis in esse. Excepturi soluta quo quia ut. Harum deserunt molestiae tenetur id omnis molestiae sunt.',NULL,'read','2024-06-04 23:59:41','2024-06-04 23:59:41'),(10,'Gunnar Feeney II','lkuhic@example.net','(812) 621-7819','132 Lemuel Union Suite 598\nLeannonstad, RI 19121','Quo esse et error labore ut at.','Illum non sit aut placeat voluptates rem eveniet. Aut fuga cumque in corrupti iste. Et sunt numquam perferendis natus. Dolores reprehenderit libero maxime eos officia. Et laborum ullam facere. Quia inventore sed adipisci sit architecto quis. At eligendi impedit suscipit animi aperiam. Quo ut repudiandae quia corporis. Asperiores quis quod odio officiis mollitia. Recusandae et ea culpa quam qui minima.',NULL,'unread','2024-06-04 23:59:41','2024-06-04 23:59:41');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `countries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries_translations`
--

DROP TABLE IF EXISTS `countries_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `countries_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `countries_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`countries_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries_translations`
--

LOCK TABLES `countries_translations` WRITE;
/*!40000 ALTER TABLE `countries_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widget_settings`
--

DROP TABLE IF EXISTS `dashboard_widget_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dashboard_widget_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned NOT NULL,
  `widget_id` bigint unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `status` tinyint unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  KEY `dashboard_widget_settings_widget_id_index` (`widget_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widget_settings`
--

LOCK TABLES `dashboard_widget_settings` WRITE;
/*!40000 ALTER TABLE `dashboard_widget_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widget_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widgets`
--

DROP TABLE IF EXISTS `dashboard_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dashboard_widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widgets`
--

LOCK TABLES `dashboard_widgets` WRITE;
/*!40000 ALTER TABLE `dashboard_widgets` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands`
--

DROP TABLE IF EXISTS `ec_brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_brands` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `website` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_brands`
--

LOCK TABLES `ec_brands` WRITE;
/*!40000 ALTER TABLE `ec_brands` DISABLE KEYS */;
INSERT INTO `ec_brands` VALUES (1,'FoodPound','New Snacks Release',NULL,'main/brands/1.png','published',0,1,'2024-06-04 23:59:38','2024-06-04 23:59:38'),(2,'iTea JSC','Happy Tea 100% Organic. From $29.9',NULL,'main/brands/2.png','published',1,1,'2024-06-04 23:59:38','2024-06-04 23:59:38'),(3,'Soda Brand','Fresh Meat Sausage. BUY 2 GET 1!',NULL,'main/brands/3.png','published',2,1,'2024-06-04 23:59:38','2024-06-04 23:59:38'),(4,'Shofy','Fresh Meat Sausage. BUY 2 GET 1!',NULL,'main/brands/4.png','published',3,1,'2024-06-04 23:59:38','2024-06-04 23:59:38'),(5,'Soda Brand','Fresh Meat Sausage. BUY 2 GET 1!',NULL,'main/brands/5.png','published',4,1,'2024-06-04 23:59:38','2024-06-04 23:59:38');
/*!40000 ALTER TABLE `ec_brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands_translations`
--

DROP TABLE IF EXISTS `ec_brands_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_brands_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_brands_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_brands_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_brands_translations`
--

LOCK TABLES `ec_brands_translations` WRITE;
/*!40000 ALTER TABLE `ec_brands_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_brands_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_cart`
--

DROP TABLE IF EXISTS `ec_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_cart` (
  `identifier` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`identifier`,`instance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_cart`
--

LOCK TABLES `ec_cart` WRITE;
/*!40000 ALTER TABLE `ec_cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_currencies`
--

DROP TABLE IF EXISTS `ec_currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_currencies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_prefix_symbol` tinyint unsigned NOT NULL DEFAULT '0',
  `decimals` tinyint unsigned DEFAULT '0',
  `order` int unsigned DEFAULT '0',
  `is_default` tinyint NOT NULL DEFAULT '0',
  `exchange_rate` double NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_currencies`
--

LOCK TABLES `ec_currencies` WRITE;
/*!40000 ALTER TABLE `ec_currencies` DISABLE KEYS */;
INSERT INTO `ec_currencies` VALUES (1,'USD','$',1,2,0,1,1,'2024-06-04 23:59:38','2024-06-04 23:59:38'),(2,'EUR','€',0,2,1,0,0.84,'2024-06-04 23:59:38','2024-06-04 23:59:38'),(3,'VND','₫',0,0,2,0,23203,'2024-06-04 23:59:38','2024-06-04 23:59:38'),(4,'NGN','₦',1,2,2,0,895.52,'2024-06-04 23:59:38','2024-06-04 23:59:38');
/*!40000 ALTER TABLE `ec_currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_addresses`
--

DROP TABLE IF EXISTS `ec_customer_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_customer_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` bigint unsigned NOT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_addresses`
--

LOCK TABLES `ec_customer_addresses` WRITE;
/*!40000 ALTER TABLE `ec_customer_addresses` DISABLE KEYS */;
INSERT INTO `ec_customer_addresses` VALUES (1,'Lane Mante','customer@botble.com','+17659681536','TF','Maine','Eichmannborough','4165 Miller Highway',1,1,'2024-06-04 23:59:39','2024-06-04 23:59:39','17900'),(2,'Lane Mante','customer@botble.com','+13218943527','CR','Oklahoma','West Robinhaven','90856 Hand Loaf',1,0,'2024-06-04 23:59:39','2024-06-04 23:59:39','97965-9661'),(3,'Leonel Sanford','vendor@botble.com','+13202688022','JM','South Dakota','Port Anaisland','465 Moshe Brooks Apt. 978',2,1,'2024-06-04 23:59:39','2024-06-04 23:59:39','09080'),(4,'Leonel Sanford','vendor@botble.com','+19076740249','PS','Minnesota','North Yoshiko','453 Hamill Keys',2,0,'2024-06-04 23:59:39','2024-06-04 23:59:39','35559'),(5,'Alfreda Hettinger','wiza.katrine@example.org','+18659964482','KW','Ohio','Marlinchester','49409 Anya Islands',3,1,'2024-06-04 23:59:39','2024-06-04 23:59:39','45692'),(6,'Dr. Al Marvin DDS','qmosciski@example.net','+18727614818','CV','Pennsylvania','Walterhaven','9328 Becker Vista',4,1,'2024-06-04 23:59:40','2024-06-04 23:59:40','31145-6230'),(7,'Anibal Huel','addie.hirthe@example.com','+18483706456','KR','Wisconsin','Creminstad','6744 Feeney Turnpike',5,1,'2024-06-04 23:59:40','2024-06-04 23:59:40','67010'),(8,'June Lesch','hermann.chadrick@example.net','+14794780818','ST','Idaho','New Anderson','533 Willms Road Apt. 571',6,1,'2024-06-04 23:59:40','2024-06-04 23:59:40','11222'),(9,'Keyon Konopelski','thalvorson@example.net','+12405059464','BE','Alabama','East Edwardofort','42149 Tremaine Forest',7,1,'2024-06-04 23:59:40','2024-06-04 23:59:40','74504'),(10,'Dr. Danial Lowe III','gaston60@example.net','+18543928633','NO','New Mexico','South Robynburgh','49288 Lenore Manor',8,1,'2024-06-04 23:59:41','2024-06-04 23:59:41','85992-7416'),(11,'Dr. Emerson Schoen','aaufderhar@example.net','+16093669916','MA','Kentucky','Nitzschechester','421 Angelina Grove',9,1,'2024-06-04 23:59:41','2024-06-04 23:59:41','15954-0065'),(12,'Clay Block','isac74@example.net','+13209456121','DJ','Mississippi','Johnsonland','682 Abraham Station',10,1,'2024-06-04 23:59:41','2024-06-04 23:59:41','56828');
/*!40000 ALTER TABLE `ec_customer_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_deletion_requests`
--

DROP TABLE IF EXISTS `ec_customer_deletion_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_customer_deletion_requests` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'waiting_for_confirmation',
  `reason` text COLLATE utf8mb4_unicode_ci,
  `confirmed_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_customer_deletion_requests_token_unique` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_deletion_requests`
--

LOCK TABLES `ec_customer_deletion_requests` WRITE;
/*!40000 ALTER TABLE `ec_customer_deletion_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_deletion_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_password_resets`
--

DROP TABLE IF EXISTS `ec_customer_password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_customer_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `ec_customer_password_resets_email_index` (`email`),
  KEY `ec_customer_password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_password_resets`
--

LOCK TABLES `ec_customer_password_resets` WRITE;
/*!40000 ALTER TABLE `ec_customer_password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_recently_viewed_products`
--

DROP TABLE IF EXISTS `ec_customer_recently_viewed_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_customer_recently_viewed_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_recently_viewed_products`
--

LOCK TABLES `ec_customer_recently_viewed_products` WRITE;
/*!40000 ALTER TABLE `ec_customer_recently_viewed_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_recently_viewed_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_used_coupons`
--

DROP TABLE IF EXISTS `ec_customer_used_coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_customer_used_coupons` (
  `discount_id` bigint unsigned NOT NULL,
  `customer_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_used_coupons`
--

LOCK TABLES `ec_customer_used_coupons` WRITE;
/*!40000 ALTER TABLE `ec_customer_used_coupons` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_used_coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customers`
--

DROP TABLE IF EXISTS `ec_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_customers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `email_verify_token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_vendor` tinyint(1) NOT NULL DEFAULT '0',
  `vendor_verified_at` datetime DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'activated',
  `private_notes` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_customers_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customers`
--

LOCK TABLES `ec_customers` WRITE;
/*!40000 ALTER TABLE `ec_customers` DISABLE KEYS */;
INSERT INTO `ec_customers` VALUES (1,'Lane Mante','customer@botble.com','$2y$12$VDvUMtQpw0/vsBqx14QPVefHDw9qSndi4GCgszmlpHx2sos5kHPMe','main/customers/3.jpg','1987-06-02','+19308676368',NULL,'2024-06-04 23:59:39','2024-06-04 23:59:39','2024-06-05 06:59:39',NULL,0,NULL,'activated',NULL),(2,'Leonel Sanford','vendor@botble.com','$2y$12$gXFhxUzj82z13vVq6b8oA.ojdCd/zJ8bc3oQFMdisJzWMG/sBvOUW','main/customers/8.jpg','1998-05-27','+19515274444',NULL,'2024-06-04 23:59:39','2024-06-04 23:59:43','2024-06-05 06:59:39',NULL,1,'2024-06-05 06:59:43','activated',NULL),(3,'Alfreda Hettinger','wiza.katrine@example.org','$2y$12$V2sH9Wlml8DBGxAlVllPY.eOi4K2cugThEf7fV4b3m4RgUYKb87.6','main/customers/1.jpg','2002-05-08','+18573476622',NULL,'2024-06-04 23:59:39','2024-06-04 23:59:43','2024-06-05 06:59:39',NULL,1,'2024-06-05 06:59:43','activated',NULL),(4,'Dr. Al Marvin DDS','qmosciski@example.net','$2y$12$OuOHKr5kRUZAjRyWCVANdukP2AokHfPlSgLoGGXj7Kq4sy1/xPJrC','main/customers/2.jpg','1985-05-14','+16516827736',NULL,'2024-06-04 23:59:40','2024-06-04 23:59:44','2024-06-05 06:59:39',NULL,1,'2024-06-05 06:59:43','activated',NULL),(5,'Anibal Huel','addie.hirthe@example.com','$2y$12$CfUF6v4f11WZTVEfM/YC9uxByFfrSo/L32fb1u6uWzaAcCbsg3oom','main/customers/3.jpg','1979-06-04','+12513778877',NULL,'2024-06-04 23:59:40','2024-06-04 23:59:44','2024-06-05 06:59:39',NULL,1,'2024-06-05 06:59:43','activated',NULL),(6,'June Lesch','hermann.chadrick@example.net','$2y$12$AyGHI1rB5fnT0JnaSk2a0uEZGOk0utjBR7ouxUgtPbZBg68xvTezC','main/customers/4.jpg','1987-05-24','+17208737988',NULL,'2024-06-04 23:59:40','2024-06-04 23:59:44','2024-06-05 06:59:39',NULL,1,'2024-06-05 06:59:43','activated',NULL),(7,'Keyon Konopelski','thalvorson@example.net','$2y$12$.N3q7L64yaAWFm5VDqxxru7UHZSToeIOmpqwpnwRfjPP35SXxAiaa','main/customers/5.jpg','1990-06-02','+17738478896',NULL,'2024-06-04 23:59:40','2024-06-04 23:59:44','2024-06-05 06:59:39',NULL,1,'2024-06-05 06:59:43','activated',NULL),(8,'Dr. Danial Lowe III','gaston60@example.net','$2y$12$OXtb2LrWLPiWFuHQP.5/te9qd4xyxEAKyH.T3bNk1tMDX48tDqcHC','main/customers/6.jpg','2001-05-25','+15049646223',NULL,'2024-06-04 23:59:41','2024-06-04 23:59:45','2024-06-05 06:59:39',NULL,1,'2024-06-05 06:59:43','activated',NULL),(9,'Dr. Emerson Schoen','aaufderhar@example.net','$2y$12$x6YuWwf6Ar7q/QL4u9Tuw.KZ5ZTM57T9xjR86LHFXBF5WkZAyw5iS','main/customers/7.jpg','1981-05-19','+16192083122',NULL,'2024-06-04 23:59:41','2024-06-04 23:59:45','2024-06-05 06:59:39',NULL,0,NULL,'activated',NULL),(10,'Clay Block','isac74@example.net','$2y$12$enMHzh0SuMyFtRlZMaZf/.0BC0ifcWr3P0XvjeP/QABEZS5KTp6XC','main/customers/8.jpg','1975-06-04','+19546470633',NULL,'2024-06-04 23:59:41','2024-06-04 23:59:45','2024-06-05 06:59:39',NULL,0,NULL,'activated',NULL);
/*!40000 ALTER TABLE `ec_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_customers`
--

DROP TABLE IF EXISTS `ec_discount_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_discount_customers` (
  `discount_id` bigint unsigned NOT NULL,
  `customer_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_customers`
--

LOCK TABLES `ec_discount_customers` WRITE;
/*!40000 ALTER TABLE `ec_discount_customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_product_categories`
--

DROP TABLE IF EXISTS `ec_discount_product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_discount_product_categories` (
  `discount_id` bigint unsigned NOT NULL,
  `product_category_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_product_categories`
--

LOCK TABLES `ec_discount_product_categories` WRITE;
/*!40000 ALTER TABLE `ec_discount_product_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_product_collections`
--

DROP TABLE IF EXISTS `ec_discount_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_discount_product_collections` (
  `discount_id` bigint unsigned NOT NULL,
  `product_collection_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_collection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_product_collections`
--

LOCK TABLES `ec_discount_product_collections` WRITE;
/*!40000 ALTER TABLE `ec_discount_product_collections` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_products`
--

DROP TABLE IF EXISTS `ec_discount_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_discount_products` (
  `discount_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_products`
--

LOCK TABLES `ec_discount_products` WRITE;
/*!40000 ALTER TABLE `ec_discount_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discounts`
--

DROP TABLE IF EXISTS `ec_discounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_discounts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `total_used` int unsigned NOT NULL DEFAULT '0',
  `value` double DEFAULT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'coupon',
  `can_use_with_promotion` tinyint(1) NOT NULL DEFAULT '0',
  `discount_on` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_quantity` int unsigned DEFAULT NULL,
  `type_option` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'amount',
  `target` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all-orders',
  `min_order_price` decimal(15,2) DEFAULT NULL,
  `apply_via_url` tinyint(1) NOT NULL DEFAULT '0',
  `display_at_checkout` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `store_id` bigint unsigned DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_discounts_code_unique` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discounts`
--

LOCK TABLES `ec_discounts` WRITE;
/*!40000 ALTER TABLE `ec_discounts` DISABLE KEYS */;
INSERT INTO `ec_discounts` VALUES (1,'Discount 1','2VMVZUDWASDZ','2024-06-04 06:59:42',NULL,NULL,0,208,'coupon',0,NULL,NULL,'shipping','all-orders',NULL,0,1,'2024-06-04 23:59:42','2024-06-04 23:59:42',NULL,NULL),(2,'Discount 2','6EVHUJMYJQY3','2024-06-04 06:59:42',NULL,NULL,0,337,'coupon',0,NULL,NULL,'same-price','all-orders',NULL,0,1,'2024-06-04 23:59:42','2024-06-04 23:59:42',NULL,NULL),(3,'Discount 3','WFR2CL1WMWRW','2024-06-04 06:59:42','2024-06-27 06:59:42',NULL,0,705,'coupon',0,NULL,NULL,'same-price','all-orders',NULL,0,1,'2024-06-04 23:59:42','2024-06-04 23:59:42',NULL,NULL),(4,'Discount 4','AHKB7QSLZZ9X','2024-06-04 06:59:42','2024-07-02 06:59:42',NULL,0,224,'coupon',0,NULL,NULL,'same-price','all-orders',NULL,0,1,'2024-06-04 23:59:42','2024-06-04 23:59:42',NULL,NULL),(5,'Discount 5','LCG6QN9BAK2F','2024-06-04 06:59:42',NULL,NULL,0,456,'coupon',0,NULL,NULL,'same-price','all-orders',NULL,0,1,'2024-06-04 23:59:42','2024-06-04 23:59:42',NULL,NULL),(6,'Discount 6','XA1DUNU69VUU','2024-06-04 06:59:42','2024-06-16 06:59:42',NULL,0,261,'coupon',0,NULL,NULL,'amount','all-orders',NULL,0,1,'2024-06-04 23:59:42','2024-06-04 23:59:42',NULL,NULL),(7,'Discount 7','IIDWRQC8IHST','2024-06-04 06:59:42',NULL,NULL,0,833,'coupon',0,NULL,NULL,'shipping','all-orders',NULL,0,1,'2024-06-04 23:59:42','2024-06-04 23:59:42',NULL,NULL),(8,'Discount 8','IBHYLTZKO6FM','2024-06-04 06:59:42',NULL,NULL,0,236,'coupon',0,NULL,NULL,'shipping','all-orders',NULL,0,1,'2024-06-04 23:59:42','2024-06-04 23:59:42',NULL,NULL),(9,'Discount 9','V5W00QRVKSVI','2024-06-04 06:59:42',NULL,NULL,0,792,'coupon',0,NULL,NULL,'same-price','all-orders',NULL,0,1,'2024-06-04 23:59:42','2024-06-04 23:59:42',NULL,NULL),(10,'Discount 10','APV17FH9DJLZ','2024-06-04 06:59:42','2024-06-22 06:59:42',NULL,0,502,'coupon',0,NULL,NULL,'amount','all-orders',NULL,0,1,'2024-06-04 23:59:42','2024-06-04 23:59:42',NULL,NULL);
/*!40000 ALTER TABLE `ec_discounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sale_products`
--

DROP TABLE IF EXISTS `ec_flash_sale_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_flash_sale_products` (
  `flash_sale_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `price` double unsigned DEFAULT NULL,
  `quantity` int unsigned DEFAULT NULL,
  `sold` int unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sale_products`
--

LOCK TABLES `ec_flash_sale_products` WRITE;
/*!40000 ALTER TABLE `ec_flash_sale_products` DISABLE KEYS */;
INSERT INTO `ec_flash_sale_products` VALUES (1,1,400.52,13,4),(1,2,1584.12,6,1),(1,3,1715.4,8,1),(1,4,313.39,8,1),(1,5,323.76,13,3),(1,6,787.51,8,4),(1,7,407.1,6,4),(1,8,225.03,10,1),(1,9,45,8,1),(1,10,1120.36,14,2);
/*!40000 ALTER TABLE `ec_flash_sale_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales`
--

DROP TABLE IF EXISTS `ec_flash_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_flash_sales` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` datetime NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales`
--

LOCK TABLES `ec_flash_sales` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales` DISABLE KEYS */;
INSERT INTO `ec_flash_sales` VALUES (1,'Winter Sale','2024-06-25 00:00:00','published','2024-06-04 23:59:49','2024-06-04 23:59:49');
/*!40000 ALTER TABLE `ec_flash_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales_translations`
--

DROP TABLE IF EXISTS `ec_flash_sales_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_flash_sales_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_flash_sales_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_flash_sales_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales_translations`
--

LOCK TABLES `ec_flash_sales_translations` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_flash_sales_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_option_value`
--

DROP TABLE IF EXISTS `ec_global_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_global_option_value` (
  `option_id` bigint unsigned NOT NULL COMMENT 'option id',
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `option_value` tinytext COLLATE utf8mb4_unicode_ci COMMENT 'option value',
  `affect_price` double DEFAULT NULL COMMENT 'value of price of this option affect',
  `order` int NOT NULL DEFAULT '9999',
  `affect_type` tinyint NOT NULL DEFAULT '0' COMMENT '0. fixed 1. percent',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_option_value`
--

LOCK TABLES `ec_global_option_value` WRITE;
/*!40000 ALTER TABLE `ec_global_option_value` DISABLE KEYS */;
INSERT INTO `ec_global_option_value` VALUES (1,1,'1 Year',0,9999,0,'2024-06-04 23:59:42','2024-06-04 23:59:42'),(1,2,'2 Year',10,9999,0,'2024-06-04 23:59:42','2024-06-04 23:59:42'),(1,3,'3 Year',20,9999,0,'2024-06-04 23:59:42','2024-06-04 23:59:42'),(2,4,'4GB',0,9999,0,'2024-06-04 23:59:42','2024-06-04 23:59:42'),(2,5,'8GB',10,9999,0,'2024-06-04 23:59:42','2024-06-04 23:59:42'),(2,6,'16GB',20,9999,0,'2024-06-04 23:59:42','2024-06-04 23:59:42'),(3,7,'Core i5',0,9999,0,'2024-06-04 23:59:42','2024-06-04 23:59:42'),(3,8,'Core i7',10,9999,0,'2024-06-04 23:59:42','2024-06-04 23:59:42'),(3,9,'Core i9',20,9999,0,'2024-06-04 23:59:42','2024-06-04 23:59:42'),(4,10,'128GB',0,9999,0,'2024-06-04 23:59:42','2024-06-04 23:59:42'),(4,11,'256GB',10,9999,0,'2024-06-04 23:59:42','2024-06-04 23:59:42'),(4,12,'512GB',20,9999,0,'2024-06-04 23:59:42','2024-06-04 23:59:42');
/*!40000 ALTER TABLE `ec_global_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_option_value_translations`
--

DROP TABLE IF EXISTS `ec_global_option_value_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_global_option_value_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_global_option_value_id` bigint unsigned NOT NULL,
  `option_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_global_option_value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_option_value_translations`
--

LOCK TABLES `ec_global_option_value_translations` WRITE;
/*!40000 ALTER TABLE `ec_global_option_value_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_global_option_value_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_options`
--

DROP TABLE IF EXISTS `ec_global_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_global_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of options',
  `option_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'option type',
  `required` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Checked if this option is required',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_options`
--

LOCK TABLES `ec_global_options` WRITE;
/*!40000 ALTER TABLE `ec_global_options` DISABLE KEYS */;
INSERT INTO `ec_global_options` VALUES (1,'Warranty','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2024-06-04 23:59:42','2024-06-04 23:59:42'),(2,'RAM','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2024-06-04 23:59:42','2024-06-04 23:59:42'),(3,'CPU','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2024-06-04 23:59:42','2024-06-04 23:59:42'),(4,'HDD','Botble\\Ecommerce\\Option\\OptionType\\Dropdown',0,'2024-06-04 23:59:42','2024-06-04 23:59:42');
/*!40000 ALTER TABLE `ec_global_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_options_translations`
--

DROP TABLE IF EXISTS `ec_global_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_global_options_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_global_options_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_global_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_options_translations`
--

LOCK TABLES `ec_global_options_translations` WRITE;
/*!40000 ALTER TABLE `ec_global_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_global_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_grouped_products`
--

DROP TABLE IF EXISTS `ec_grouped_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_grouped_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `parent_product_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `fixed_qty` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_grouped_products`
--

LOCK TABLES `ec_grouped_products` WRITE;
/*!40000 ALTER TABLE `ec_grouped_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_grouped_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_invoice_items`
--

DROP TABLE IF EXISTS `ec_invoice_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_invoice_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `invoice_id` bigint unsigned NOT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int unsigned NOT NULL,
  `price` decimal(15,2) NOT NULL DEFAULT '0.00',
  `sub_total` decimal(15,2) unsigned NOT NULL,
  `tax_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `amount` decimal(15,2) unsigned NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_invoice_items_reference_type_reference_id_index` (`reference_type`,`reference_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_invoice_items`
--

LOCK TABLES `ec_invoice_items` WRITE;
/*!40000 ALTER TABLE `ec_invoice_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_invoice_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_invoices`
--

DROP TABLE IF EXISTS `ec_invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_invoices` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_tax_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_total` decimal(15,2) unsigned NOT NULL,
  `tax_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `shipping_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `shipping_option` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `coupon_code` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `payment_id` bigint unsigned DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `paid_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_invoices_code_unique` (`code`),
  KEY `ec_invoices_reference_type_reference_id_index` (`reference_type`,`reference_id`),
  KEY `ec_invoices_payment_id_index` (`payment_id`),
  KEY `ec_invoices_status_index` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_invoices`
--

LOCK TABLES `ec_invoices` WRITE;
/*!40000 ALTER TABLE `ec_invoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_option_value`
--

DROP TABLE IF EXISTS `ec_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_option_value` (
  `option_id` bigint unsigned NOT NULL COMMENT 'option id',
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `option_value` tinytext COLLATE utf8mb4_unicode_ci COMMENT 'option value',
  `affect_price` double DEFAULT NULL COMMENT 'value of price of this option affect',
  `order` int NOT NULL DEFAULT '9999',
  `affect_type` tinyint NOT NULL DEFAULT '0' COMMENT '0. fixed 1. percent',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_option_value`
--

LOCK TABLES `ec_option_value` WRITE;
/*!40000 ALTER TABLE `ec_option_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_option_value_translations`
--

DROP TABLE IF EXISTS `ec_option_value_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_option_value_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_option_value_id` bigint unsigned NOT NULL,
  `option_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_option_value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_option_value_translations`
--

LOCK TABLES `ec_option_value_translations` WRITE;
/*!40000 ALTER TABLE `ec_option_value_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_option_value_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_options`
--

DROP TABLE IF EXISTS `ec_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of options',
  `option_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'option type',
  `product_id` bigint unsigned NOT NULL DEFAULT '0',
  `order` int NOT NULL DEFAULT '9999',
  `required` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Checked if this option is required',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_options`
--

LOCK TABLES `ec_options` WRITE;
/*!40000 ALTER TABLE `ec_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_options_translations`
--

DROP TABLE IF EXISTS `ec_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_options_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_options_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_options_translations`
--

LOCK TABLES `ec_options_translations` WRITE;
/*!40000 ALTER TABLE `ec_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_addresses`
--

DROP TABLE IF EXISTS `ec_order_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_order_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'shipping_address',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_addresses`
--

LOCK TABLES `ec_order_addresses` WRITE;
/*!40000 ALTER TABLE `ec_order_addresses` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_histories`
--

DROP TABLE IF EXISTS `ec_order_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_order_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL,
  `extras` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_histories`
--

LOCK TABLES `ec_order_histories` WRITE;
/*!40000 ALTER TABLE `ec_order_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_product`
--

DROP TABLE IF EXISTS `ec_order_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_order_product` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `qty` int NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `product_options` text COLLATE utf8mb4_unicode_ci COMMENT 'product option data',
  `product_id` bigint unsigned DEFAULT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` double(8,2) DEFAULT '0.00',
  `restock_quantity` int unsigned DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'physical',
  `times_downloaded` int NOT NULL DEFAULT '0',
  `license_code` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_product`
--

LOCK TABLES `ec_order_product` WRITE;
/*!40000 ALTER TABLE `ec_order_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_referrals`
--

DROP TABLE IF EXISTS `ec_order_referrals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_order_referrals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_domain` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_page` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_params` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referral` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gclid` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fclid` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_source` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_campaign` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_medium` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_term` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_content` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referrer_url` text COLLATE utf8mb4_unicode_ci,
  `referrer_domain` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_order_referrals_order_id_index` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_referrals`
--

LOCK TABLES `ec_order_referrals` WRITE;
/*!40000 ALTER TABLE `ec_order_referrals` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_referrals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_return_histories`
--

DROP TABLE IF EXISTS `ec_order_return_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_order_return_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned DEFAULT NULL,
  `order_return_id` bigint unsigned NOT NULL,
  `action` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reason` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_return_histories`
--

LOCK TABLES `ec_order_return_histories` WRITE;
/*!40000 ALTER TABLE `ec_order_return_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_return_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_return_items`
--

DROP TABLE IF EXISTS `ec_order_return_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_order_return_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_return_id` bigint unsigned NOT NULL COMMENT 'Order return id',
  `order_product_id` bigint unsigned NOT NULL COMMENT 'Order product id',
  `product_id` bigint unsigned NOT NULL COMMENT 'Product id',
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int NOT NULL COMMENT 'Quantity return',
  `price` decimal(15,2) NOT NULL COMMENT 'Price Product',
  `reason` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `refund_amount` decimal(12,2) DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_return_items`
--

LOCK TABLES `ec_order_return_items` WRITE;
/*!40000 ALTER TABLE `ec_order_return_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_return_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_returns`
--

DROP TABLE IF EXISTS `ec_order_returns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_order_returns` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL COMMENT 'Order ID',
  `store_id` bigint unsigned DEFAULT NULL COMMENT 'Store ID',
  `user_id` bigint unsigned NOT NULL COMMENT 'Customer ID',
  `reason` text COLLATE utf8mb4_unicode_ci COMMENT 'Reason return order',
  `order_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Order current status',
  `return_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Return status',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_order_returns_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_returns`
--

LOCK TABLES `ec_order_returns` WRITE;
/*!40000 ALTER TABLE `ec_order_returns` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_returns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_tax_information`
--

DROP TABLE IF EXISTS `ec_order_tax_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_order_tax_information` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `company_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_tax_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_order_tax_information_order_id_index` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_tax_information`
--

LOCK TABLES `ec_order_tax_information` WRITE;
/*!40000 ALTER TABLE `ec_order_tax_information` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_tax_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_orders`
--

DROP TABLE IF EXISTS `ec_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL,
  `shipping_option` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `amount` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) DEFAULT NULL,
  `shipping_amount` decimal(15,2) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `coupon_code` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_amount` decimal(15,2) DEFAULT NULL,
  `sub_total` decimal(15,2) NOT NULL,
  `is_confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `discount_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_finished` tinyint(1) DEFAULT '0',
  `cancellation_reason` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cancellation_reason_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `completed_at` timestamp NULL DEFAULT NULL,
  `token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `store_id` bigint unsigned DEFAULT NULL,
  `proof_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_orders_code_unique` (`code`),
  KEY `ec_orders_user_id_status_created_at_index` (`user_id`,`status`,`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_orders`
--

LOCK TABLES `ec_orders` WRITE;
/*!40000 ALTER TABLE `ec_orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_attribute_sets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_layout` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'swatch_dropdown',
  `is_searchable` tinyint unsigned NOT NULL DEFAULT '1',
  `is_comparable` tinyint unsigned NOT NULL DEFAULT '1',
  `is_use_in_product_listing` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `use_image_from_product_variation` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attribute_sets`
--

LOCK TABLES `ec_product_attribute_sets` WRITE;
/*!40000 ALTER TABLE `ec_product_attribute_sets` DISABLE KEYS */;
INSERT INTO `ec_product_attribute_sets` VALUES (1,'Color','color','visual',1,1,1,'published',0,'2024-06-04 23:59:38','2024-06-04 23:59:38',0),(2,'Size','size','text',1,1,1,'published',1,'2024-06-04 23:59:38','2024-06-04 23:59:38',0),(3,'Weight','weight','text',1,1,1,'published',0,'2024-06-04 23:59:38','2024-06-04 23:59:38',0),(4,'Boxes','boxes','text',1,1,1,'published',1,'2024-06-04 23:59:38','2024-06-04 23:59:38',0);
/*!40000 ALTER TABLE `ec_product_attribute_sets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets_translations`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_attribute_sets_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attribute_sets_id` bigint unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attribute_sets_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attribute_sets_translations`
--

LOCK TABLES `ec_product_attribute_sets_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_attribute_sets_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_attribute_sets_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes`
--

DROP TABLE IF EXISTS `ec_product_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_attributes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_set_id` bigint unsigned NOT NULL,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `attribute_set_status_index` (`attribute_set_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attributes`
--

LOCK TABLES `ec_product_attributes` WRITE;
/*!40000 ALTER TABLE `ec_product_attributes` DISABLE KEYS */;
INSERT INTO `ec_product_attributes` VALUES (1,1,'Green','green','#5FB7D4',NULL,1,1,'2024-06-04 23:59:38','2024-06-04 23:59:38'),(2,1,'Blue','blue','#333333',NULL,0,2,'2024-06-04 23:59:38','2024-06-04 23:59:38'),(3,1,'Red','red','#DA323F',NULL,0,3,'2024-06-04 23:59:38','2024-06-04 23:59:38'),(4,1,'Black','black','#2F366C',NULL,0,4,'2024-06-04 23:59:38','2024-06-04 23:59:38'),(5,1,'Brown','brown','#87554B',NULL,0,5,'2024-06-04 23:59:38','2024-06-04 23:59:38'),(6,2,'S','s',NULL,NULL,1,1,'2024-06-04 23:59:38','2024-06-04 23:59:38'),(7,2,'M','m',NULL,NULL,0,2,'2024-06-04 23:59:38','2024-06-04 23:59:38'),(8,2,'L','l',NULL,NULL,0,3,'2024-06-04 23:59:38','2024-06-04 23:59:38'),(9,2,'XL','xl',NULL,NULL,0,4,'2024-06-04 23:59:38','2024-06-04 23:59:38'),(10,2,'XXL','xxl',NULL,NULL,0,5,'2024-06-04 23:59:38','2024-06-04 23:59:38'),(11,3,'1KG','1kg',NULL,NULL,1,1,'2024-06-04 23:59:38','2024-06-04 23:59:38'),(12,3,'2KG','2kg',NULL,NULL,0,2,'2024-06-04 23:59:38','2024-06-04 23:59:38'),(13,3,'3KG','3kg',NULL,NULL,0,3,'2024-06-04 23:59:38','2024-06-04 23:59:38'),(14,3,'4KG','4kg',NULL,NULL,0,4,'2024-06-04 23:59:38','2024-06-04 23:59:38'),(15,3,'5KG','5kg',NULL,NULL,0,5,'2024-06-04 23:59:38','2024-06-04 23:59:38'),(16,4,'1 Box','1-box',NULL,NULL,1,1,'2024-06-04 23:59:38','2024-06-04 23:59:38'),(17,4,'2 Boxes','2-boxes',NULL,NULL,0,2,'2024-06-04 23:59:38','2024-06-04 23:59:38'),(18,4,'3 Boxes','3-boxes',NULL,NULL,0,3,'2024-06-04 23:59:38','2024-06-04 23:59:38'),(19,4,'4 Boxes','4-boxes',NULL,NULL,0,4,'2024-06-04 23:59:38','2024-06-04 23:59:38'),(20,4,'5 Boxes','5-boxes',NULL,NULL,0,5,'2024-06-04 23:59:38','2024-06-04 23:59:38');
/*!40000 ALTER TABLE `ec_product_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes_translations`
--

DROP TABLE IF EXISTS `ec_product_attributes_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_attributes_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attributes_id` bigint unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attributes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attributes_translations`
--

LOCK TABLES `ec_product_attributes_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_attributes_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_attributes_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories`
--

DROP TABLE IF EXISTS `ec_product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` int unsigned NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_categories_parent_id_status_created_at_index` (`parent_id`,`status`,`created_at`),
  KEY `ec_product_categories_parent_id_status_index` (`parent_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories`
--

LOCK TABLES `ec_product_categories` WRITE;
/*!40000 ALTER TABLE `ec_product_categories` DISABLE KEYS */;
INSERT INTO `ec_product_categories` VALUES (1,'New Arrivals',0,NULL,'published',0,NULL,0,'2024-06-04 23:59:46','2024-06-04 23:59:46','ti ti-home',NULL),(2,'Electronics',0,NULL,'published',1,NULL,0,'2024-06-04 23:59:46','2024-06-04 23:59:46','ti ti-device-tv',NULL),(3,'Featured',2,NULL,'published',0,'main/product-categories/menu-1.jpg',0,'2024-06-04 23:59:46','2024-06-04 23:59:46',NULL,NULL),(4,'New Arrivals',3,NULL,'published',0,NULL,0,'2024-06-04 23:59:46','2024-06-04 23:59:46',NULL,NULL),(5,'Best Sellers',3,NULL,'published',1,NULL,0,'2024-06-04 23:59:46','2024-06-04 23:59:46',NULL,NULL),(6,'Mobile Phone',3,NULL,'published',2,'main/product-categories/2.png',1,'2024-06-04 23:59:46','2024-06-04 23:59:46',NULL,NULL),(7,'Computers & Laptops',2,NULL,'published',1,'main/product-categories/menu-2.jpg',1,'2024-06-04 23:59:46','2024-06-04 23:59:46',NULL,NULL),(8,'Top Brands',7,NULL,'published',0,NULL,0,'2024-06-04 23:59:46','2024-06-04 23:59:46',NULL,NULL),(9,'Weekly Best Selling',7,NULL,'published',1,NULL,0,'2024-06-04 23:59:46','2024-06-04 23:59:46',NULL,NULL),(10,'CPU Heat Pipes',7,NULL,'published',2,'main/product-categories/3.png',1,'2024-06-04 23:59:46','2024-06-04 23:59:46',NULL,NULL),(11,'CPU Coolers',7,NULL,'published',3,'main/product-categories/category-thumb-9.jpg',0,'2024-06-04 23:59:46','2024-06-04 23:59:46',NULL,NULL),(12,'Accessories',2,NULL,'published',2,'main/product-categories/menu-3.jpg',0,'2024-06-04 23:59:46','2024-06-04 23:59:46',NULL,NULL),(13,'Headphones',12,NULL,'published',0,'main/product-categories/1.png',1,'2024-06-04 23:59:46','2024-06-04 23:59:46',NULL,NULL),(14,'Wireless Headphones',12,NULL,'published',1,'main/product-categories/category-thumb-1.jpg',0,'2024-06-04 23:59:46','2024-06-04 23:59:46',NULL,NULL),(15,'TWS Earphones',12,NULL,'published',2,'main/product-categories/category-thumb-6.jpg',0,'2024-06-04 23:59:46','2024-06-04 23:59:46',NULL,NULL),(16,'Smart Watch',12,NULL,'published',3,'main/product-categories/4.png',1,'2024-06-04 23:59:46','2024-06-04 23:59:46',NULL,NULL),(17,'Gaming Console',2,NULL,'published',3,'main/product-categories/category-thumb-8.jpg',0,'2024-06-04 23:59:46','2024-06-04 23:59:46',NULL,NULL),(18,'Playstation',2,NULL,'published',4,'main/product-categories/category-thumb-12.jpg',0,'2024-06-04 23:59:46','2024-06-04 23:59:46',NULL,NULL),(19,'Gifts',0,NULL,'published',2,NULL,0,'2024-06-04 23:59:46','2024-06-04 23:59:46','ti ti-gift',NULL),(20,'Computers',0,NULL,'published',3,NULL,0,'2024-06-04 23:59:46','2024-06-04 23:59:46','ti ti-device-laptop',NULL),(21,'Desktop',20,NULL,'published',0,'main/product-categories/category-thumb-5.jpg',0,'2024-06-04 23:59:46','2024-06-04 23:59:46','ti ti-device-desktop',NULL),(22,'Laptop',20,NULL,'published',1,'main/product-categories/category-thumb-3.jpg',0,'2024-06-04 23:59:46','2024-06-04 23:59:46','ti ti-device-laptop',NULL),(23,'Tablet',20,NULL,'published',2,'main/product-categories/category-thumb-4.jpg',0,'2024-06-04 23:59:46','2024-06-04 23:59:46','ti ti-device-tablet',NULL),(24,'Accessories',20,NULL,'published',3,NULL,0,'2024-06-04 23:59:46','2024-06-04 23:59:46','ti ti-keyboard',NULL),(25,'Smartphones & Tablets',0,NULL,'published',4,'main/product-categories/category-thumb-10.jpg',0,'2024-06-04 23:59:46','2024-06-04 23:59:46','ti ti-device-mobile',NULL),(26,'TV,\n                Video & Music',0,NULL,'published',5,NULL,0,'2024-06-04 23:59:46','2024-06-04 23:59:46','ti ti-device-tv',NULL),(27,'Cameras',0,NULL,'published',6,NULL,0,'2024-06-04 23:59:46','2024-06-04 23:59:46','ti ti-camera',NULL),(28,'Cooking',0,NULL,'published',7,NULL,0,'2024-06-04 23:59:46','2024-06-04 23:59:46','ti ti-grill-spatula',NULL),(29,'Accessories',0,NULL,'published',8,NULL,0,'2024-06-04 23:59:46','2024-06-04 23:59:46','ti ti-building-store',NULL),(30,'With Bluetooth',29,NULL,'published',0,'main/product-categories/5.png',1,'2024-06-04 23:59:46','2024-06-04 23:59:46',NULL,NULL),(31,'Sports',0,NULL,'published',9,NULL,0,'2024-06-04 23:59:46','2024-06-04 23:59:46','ti ti-ball-football',NULL),(32,'Electronics Gadgets',0,NULL,'published',10,NULL,0,'2024-06-04 23:59:46','2024-06-04 23:59:46','ti ti-cpu-2',NULL),(33,'Micrscope',32,NULL,'published',0,NULL,0,'2024-06-04 23:59:46','2024-06-04 23:59:46',NULL,NULL),(34,'Remote Control',32,NULL,'published',1,NULL,0,'2024-06-04 23:59:46','2024-06-04 23:59:46',NULL,NULL),(35,'Monitor',32,NULL,'published',2,NULL,0,'2024-06-04 23:59:46','2024-06-04 23:59:46',NULL,NULL),(36,'Thermometer',32,NULL,'published',3,NULL,0,'2024-06-04 23:59:46','2024-06-04 23:59:46',NULL,NULL),(37,'Backpack',32,NULL,'published',4,NULL,0,'2024-06-04 23:59:46','2024-06-04 23:59:46',NULL,NULL),(38,'Headphones',32,NULL,'published',5,'main/product-categories/category-thumb-1.jpg',0,'2024-06-04 23:59:46','2024-06-04 23:59:46',NULL,NULL);
/*!40000 ALTER TABLE `ec_product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories_translations`
--

DROP TABLE IF EXISTS `ec_product_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_categories_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_product_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories_translations`
--

LOCK TABLES `ec_product_categories_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categorizables`
--

DROP TABLE IF EXISTS `ec_product_categorizables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_categorizables` (
  `category_id` bigint unsigned NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`category_id`,`reference_id`,`reference_type`),
  KEY `ec_product_categorizables_category_id_index` (`category_id`),
  KEY `ec_product_categorizables_reference_id_index` (`reference_id`),
  KEY `ec_product_categorizables_reference_type_index` (`reference_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categorizables`
--

LOCK TABLES `ec_product_categorizables` WRITE;
/*!40000 ALTER TABLE `ec_product_categorizables` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_categorizables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_category_product`
--

DROP TABLE IF EXISTS `ec_product_category_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_category_product` (
  `category_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`),
  KEY `ec_product_category_product_category_id_index` (`category_id`),
  KEY `ec_product_category_product_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_category_product`
--

LOCK TABLES `ec_product_category_product` WRITE;
/*!40000 ALTER TABLE `ec_product_category_product` DISABLE KEYS */;
INSERT INTO `ec_product_category_product` VALUES (1,5),(1,30),(1,36),(1,47),(1,50),(1,51),(2,4),(2,8),(2,13),(2,25),(2,32),(2,56),(2,57),(3,5),(3,9),(3,19),(3,34),(3,38),(3,47),(4,18),(4,29),(4,42),(4,47),(5,24),(5,41),(5,54),(5,55),(6,8),(6,11),(6,33),(6,35),(6,39),(6,40),(6,53),(6,54),(6,57),(7,3),(7,17),(7,33),(7,39),(7,46),(8,16),(8,17),(8,27),(8,32),(8,34),(8,37),(8,45),(8,50),(9,12),(9,26),(9,36),(9,43),(9,46),(9,49),(9,55),(10,7),(10,10),(10,12),(10,15),(10,17),(10,23),(10,26),(10,31),(10,40),(10,46),(10,49),(10,50),(11,23),(11,25),(11,37),(12,6),(12,10),(12,14),(12,22),(12,23),(12,26),(12,35),(12,39),(12,44),(13,2),(13,3),(13,18),(13,21),(13,24),(13,30),(13,43),(13,45),(13,56),(14,9),(14,48),(14,57),(15,14),(15,15),(15,30),(15,34),(15,38),(15,42),(15,49),(16,5),(16,13),(16,14),(16,16),(16,21),(16,22),(16,38),(16,45),(16,55),(17,1),(17,6),(17,7),(17,31),(17,40),(17,48),(17,53),(18,2),(18,9),(18,19),(18,35),(18,36),(18,38),(19,6),(19,10),(19,22),(19,37),(20,10),(20,15),(20,29),(20,43),(20,56),(21,27),(21,41),(21,43),(21,44),(22,3),(22,11),(22,13),(22,15),(22,21),(22,23),(22,24),(22,26),(22,41),(22,51),(23,16),(23,20),(23,27),(23,42),(23,48),(23,53),(24,4),(24,14),(24,18),(24,25),(24,35),(24,42),(24,51),(25,1),(25,5),(25,21),(25,24),(25,33),(25,52),(26,22),(26,32),(26,44),(26,47),(27,3),(27,4),(27,12),(27,16),(27,27),(27,50),(27,55),(28,11),(28,13),(28,29),(28,32),(28,39),(28,52),(29,17),(29,19),(29,29),(29,41),(30,6),(30,8),(30,30),(30,31),(30,33),(30,34),(30,49),(30,51),(31,12),(31,25),(31,57),(32,9),(32,20),(32,28),(32,36),(32,44),(33,20),(33,31),(33,54),(34,28),(34,46),(34,48),(34,53),(35,1),(35,20),(35,40),(35,52),(36,2),(36,7),(36,11),(36,28),(36,37),(36,45),(36,54),(37,2),(37,7),(37,8),(37,18),(37,19),(37,56),(38,1),(38,4),(38,28),(38,52);
/*!40000 ALTER TABLE `ec_product_category_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collection_products`
--

DROP TABLE IF EXISTS `ec_product_collection_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_collection_products` (
  `product_collection_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`product_collection_id`),
  KEY `ec_product_collection_products_product_collection_id_index` (`product_collection_id`),
  KEY `ec_product_collection_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collection_products`
--

LOCK TABLES `ec_product_collection_products` WRITE;
/*!40000 ALTER TABLE `ec_product_collection_products` DISABLE KEYS */;
INSERT INTO `ec_product_collection_products` VALUES (1,2),(1,5),(1,10),(1,15),(1,16),(1,17),(1,20),(1,22),(1,25),(1,27),(1,28),(1,31),(1,41),(1,42),(1,48),(1,53),(1,54),(1,55),(2,9),(2,11),(2,12),(2,14),(2,18),(2,21),(2,24),(2,32),(2,35),(2,38),(2,45),(2,49),(2,52),(3,4),(3,6),(3,7),(3,13),(3,29),(3,30),(3,34),(3,36),(3,37),(3,39),(3,40),(3,43),(3,44),(3,46),(3,51),(3,57),(4,1),(4,3),(4,8),(4,19),(4,23),(4,26),(4,33),(4,47),(4,50),(4,56);
/*!40000 ALTER TABLE `ec_product_collection_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections`
--

DROP TABLE IF EXISTS `ec_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_collections` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collections`
--

LOCK TABLES `ec_product_collections` WRITE;
/*!40000 ALTER TABLE `ec_product_collections` DISABLE KEYS */;
INSERT INTO `ec_product_collections` VALUES (1,'Weekly Gadget Spotlight','weekly-gadget-spotlight',NULL,NULL,'published','2024-06-04 23:59:46','2024-06-04 23:59:46',0),(2,'Electronics Trendsetters','electronics-trendsetters',NULL,NULL,'published','2024-06-04 23:59:46','2024-06-04 23:59:46',0),(3,'Digital Workspace Gear','digital-workspace-gear',NULL,NULL,'published','2024-06-04 23:59:46','2024-06-04 23:59:46',0),(4,'Cutting-Edge Tech Showcase','cutting-edge-tech-showcase',NULL,NULL,'published','2024-06-04 23:59:46','2024-06-04 23:59:46',0);
/*!40000 ALTER TABLE `ec_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections_translations`
--

DROP TABLE IF EXISTS `ec_product_collections_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_collections_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_collections_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_collections_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collections_translations`
--

LOCK TABLES `ec_product_collections_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_collections_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_collections_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_cross_sale_relations`
--

DROP TABLE IF EXISTS `ec_product_cross_sale_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_cross_sale_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  `is_variant` tinyint(1) NOT NULL DEFAULT '0',
  `price` decimal(15,2) DEFAULT '0.00',
  `price_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'fixed',
  `apply_to_all_variations` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_cross_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_cross_sale_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_cross_sale_relations`
--

LOCK TABLES `ec_product_cross_sale_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` DISABLE KEYS */;
INSERT INTO `ec_product_cross_sale_relations` VALUES (1,7,0,0.00,'fixed',1),(1,11,0,0.00,'fixed',1),(1,16,0,0.00,'fixed',1),(1,26,0,0.00,'fixed',1),(1,35,0,0.00,'fixed',1),(1,42,0,0.00,'fixed',1),(2,3,0,0.00,'fixed',1),(2,31,0,0.00,'fixed',1),(2,32,0,0.00,'fixed',1),(2,41,0,0.00,'fixed',1),(2,48,0,0.00,'fixed',1),(2,50,0,0.00,'fixed',1),(2,57,0,0.00,'fixed',1),(3,4,0,0.00,'fixed',1),(3,34,0,0.00,'fixed',1),(3,37,0,0.00,'fixed',1),(3,46,0,0.00,'fixed',1),(3,47,0,0.00,'fixed',1),(3,55,0,0.00,'fixed',1),(4,3,0,0.00,'fixed',1),(4,10,0,0.00,'fixed',1),(4,21,0,0.00,'fixed',1),(4,22,0,0.00,'fixed',1),(4,30,0,0.00,'fixed',1),(4,37,0,0.00,'fixed',1),(5,1,0,0.00,'fixed',1),(5,2,0,0.00,'fixed',1),(5,9,0,0.00,'fixed',1),(5,15,0,0.00,'fixed',1),(5,22,0,0.00,'fixed',1),(5,36,0,0.00,'fixed',1),(5,46,0,0.00,'fixed',1),(6,4,0,0.00,'fixed',1),(6,12,0,0.00,'fixed',1),(6,17,0,0.00,'fixed',1),(6,20,0,0.00,'fixed',1),(6,24,0,0.00,'fixed',1),(6,32,0,0.00,'fixed',1),(6,53,0,0.00,'fixed',1),(7,5,0,0.00,'fixed',1),(7,14,0,0.00,'fixed',1),(7,17,0,0.00,'fixed',1),(7,23,0,0.00,'fixed',1),(7,42,0,0.00,'fixed',1),(7,47,0,0.00,'fixed',1),(7,50,0,0.00,'fixed',1),(8,3,0,0.00,'fixed',1),(8,4,0,0.00,'fixed',1),(8,9,0,0.00,'fixed',1),(8,10,0,0.00,'fixed',1),(8,40,0,0.00,'fixed',1),(8,47,0,0.00,'fixed',1),(8,55,0,0.00,'fixed',1),(9,5,0,0.00,'fixed',1),(9,7,0,0.00,'fixed',1),(9,14,0,0.00,'fixed',1),(9,26,0,0.00,'fixed',1),(9,33,0,0.00,'fixed',1),(9,42,0,0.00,'fixed',1),(9,44,0,0.00,'fixed',1),(10,6,0,0.00,'fixed',1),(10,8,0,0.00,'fixed',1),(10,35,0,0.00,'fixed',1),(10,51,0,0.00,'fixed',1),(10,52,0,0.00,'fixed',1),(10,53,0,0.00,'fixed',1),(10,57,0,0.00,'fixed',1),(11,4,0,0.00,'fixed',1),(11,8,0,0.00,'fixed',1),(11,20,0,0.00,'fixed',1),(11,26,0,0.00,'fixed',1),(11,41,0,0.00,'fixed',1),(11,44,0,0.00,'fixed',1),(11,45,0,0.00,'fixed',1),(12,13,0,0.00,'fixed',1),(12,26,0,0.00,'fixed',1),(12,28,0,0.00,'fixed',1),(12,31,0,0.00,'fixed',1),(12,32,0,0.00,'fixed',1),(12,35,0,0.00,'fixed',1),(13,11,0,0.00,'fixed',1),(13,17,0,0.00,'fixed',1),(13,20,0,0.00,'fixed',1),(13,28,0,0.00,'fixed',1),(13,45,0,0.00,'fixed',1),(13,46,0,0.00,'fixed',1),(13,54,0,0.00,'fixed',1),(14,6,0,0.00,'fixed',1),(14,10,0,0.00,'fixed',1),(14,15,0,0.00,'fixed',1),(14,27,0,0.00,'fixed',1),(14,34,0,0.00,'fixed',1),(14,52,0,0.00,'fixed',1),(15,19,0,0.00,'fixed',1),(15,22,0,0.00,'fixed',1),(15,37,0,0.00,'fixed',1),(15,42,0,0.00,'fixed',1),(15,48,0,0.00,'fixed',1),(15,56,0,0.00,'fixed',1),(16,20,0,0.00,'fixed',1),(16,28,0,0.00,'fixed',1),(16,31,0,0.00,'fixed',1),(16,36,0,0.00,'fixed',1),(16,37,0,0.00,'fixed',1),(16,40,0,0.00,'fixed',1),(16,51,0,0.00,'fixed',1),(17,7,0,0.00,'fixed',1),(17,11,0,0.00,'fixed',1),(17,15,0,0.00,'fixed',1),(17,21,0,0.00,'fixed',1),(17,30,0,0.00,'fixed',1),(17,50,0,0.00,'fixed',1),(17,54,0,0.00,'fixed',1),(18,12,0,0.00,'fixed',1),(18,17,0,0.00,'fixed',1),(18,19,0,0.00,'fixed',1),(18,37,0,0.00,'fixed',1),(18,46,0,0.00,'fixed',1),(18,52,0,0.00,'fixed',1),(18,55,0,0.00,'fixed',1),(19,5,0,0.00,'fixed',1),(19,8,0,0.00,'fixed',1),(19,26,0,0.00,'fixed',1),(19,27,0,0.00,'fixed',1),(19,42,0,0.00,'fixed',1),(19,52,0,0.00,'fixed',1),(19,54,0,0.00,'fixed',1),(20,13,0,0.00,'fixed',1),(20,14,0,0.00,'fixed',1),(20,25,0,0.00,'fixed',1),(20,29,0,0.00,'fixed',1),(20,36,0,0.00,'fixed',1),(20,53,0,0.00,'fixed',1),(20,57,0,0.00,'fixed',1),(21,29,0,0.00,'fixed',1),(21,34,0,0.00,'fixed',1),(21,39,0,0.00,'fixed',1),(21,41,0,0.00,'fixed',1),(21,45,0,0.00,'fixed',1),(21,48,0,0.00,'fixed',1),(21,50,0,0.00,'fixed',1),(22,5,0,0.00,'fixed',1),(22,12,0,0.00,'fixed',1),(22,37,0,0.00,'fixed',1),(22,39,0,0.00,'fixed',1),(22,46,0,0.00,'fixed',1),(22,50,0,0.00,'fixed',1),(22,56,0,0.00,'fixed',1),(23,5,0,0.00,'fixed',1),(23,8,0,0.00,'fixed',1),(23,17,0,0.00,'fixed',1),(23,36,0,0.00,'fixed',1),(23,38,0,0.00,'fixed',1),(23,48,0,0.00,'fixed',1),(24,2,0,0.00,'fixed',1),(24,22,0,0.00,'fixed',1),(24,46,0,0.00,'fixed',1),(24,50,0,0.00,'fixed',1),(24,53,0,0.00,'fixed',1),(24,57,0,0.00,'fixed',1),(25,9,0,0.00,'fixed',1),(25,11,0,0.00,'fixed',1),(25,15,0,0.00,'fixed',1),(25,23,0,0.00,'fixed',1),(25,26,0,0.00,'fixed',1),(25,47,0,0.00,'fixed',1),(25,56,0,0.00,'fixed',1),(26,12,0,0.00,'fixed',1),(26,17,0,0.00,'fixed',1),(26,19,0,0.00,'fixed',1),(26,44,0,0.00,'fixed',1),(26,46,0,0.00,'fixed',1),(26,56,0,0.00,'fixed',1),(26,57,0,0.00,'fixed',1),(27,1,0,0.00,'fixed',1),(27,10,0,0.00,'fixed',1),(27,22,0,0.00,'fixed',1),(27,32,0,0.00,'fixed',1),(27,41,0,0.00,'fixed',1),(27,54,0,0.00,'fixed',1),(27,55,0,0.00,'fixed',1),(28,15,0,0.00,'fixed',1),(28,16,0,0.00,'fixed',1),(28,24,0,0.00,'fixed',1),(28,25,0,0.00,'fixed',1),(28,41,0,0.00,'fixed',1),(28,45,0,0.00,'fixed',1),(28,48,0,0.00,'fixed',1),(29,13,0,0.00,'fixed',1),(29,26,0,0.00,'fixed',1),(29,32,0,0.00,'fixed',1),(29,40,0,0.00,'fixed',1),(29,42,0,0.00,'fixed',1),(29,50,0,0.00,'fixed',1),(29,53,0,0.00,'fixed',1),(30,17,0,0.00,'fixed',1),(30,23,0,0.00,'fixed',1),(30,32,0,0.00,'fixed',1),(30,33,0,0.00,'fixed',1),(30,44,0,0.00,'fixed',1),(30,51,0,0.00,'fixed',1),(30,57,0,0.00,'fixed',1),(31,2,0,0.00,'fixed',1),(31,7,0,0.00,'fixed',1),(31,21,0,0.00,'fixed',1),(31,30,0,0.00,'fixed',1),(31,38,0,0.00,'fixed',1),(31,48,0,0.00,'fixed',1),(31,57,0,0.00,'fixed',1),(32,5,0,0.00,'fixed',1),(32,8,0,0.00,'fixed',1),(32,28,0,0.00,'fixed',1),(32,39,0,0.00,'fixed',1),(32,42,0,0.00,'fixed',1),(32,54,0,0.00,'fixed',1),(32,55,0,0.00,'fixed',1),(33,5,0,0.00,'fixed',1),(33,7,0,0.00,'fixed',1),(33,10,0,0.00,'fixed',1),(33,18,0,0.00,'fixed',1),(33,27,0,0.00,'fixed',1),(33,36,0,0.00,'fixed',1),(33,41,0,0.00,'fixed',1),(34,4,0,0.00,'fixed',1),(34,13,0,0.00,'fixed',1),(34,21,0,0.00,'fixed',1),(34,22,0,0.00,'fixed',1),(34,27,0,0.00,'fixed',1),(34,38,0,0.00,'fixed',1),(34,48,0,0.00,'fixed',1),(35,6,0,0.00,'fixed',1),(35,12,0,0.00,'fixed',1),(35,13,0,0.00,'fixed',1),(35,36,0,0.00,'fixed',1),(35,44,0,0.00,'fixed',1),(35,45,0,0.00,'fixed',1),(36,4,0,0.00,'fixed',1),(36,15,0,0.00,'fixed',1),(36,31,0,0.00,'fixed',1),(36,40,0,0.00,'fixed',1),(36,47,0,0.00,'fixed',1),(36,53,0,0.00,'fixed',1),(37,2,0,0.00,'fixed',1),(37,24,0,0.00,'fixed',1),(37,26,0,0.00,'fixed',1),(37,38,0,0.00,'fixed',1),(37,41,0,0.00,'fixed',1),(37,50,0,0.00,'fixed',1),(38,7,0,0.00,'fixed',1),(38,9,0,0.00,'fixed',1),(38,16,0,0.00,'fixed',1),(38,29,0,0.00,'fixed',1),(38,32,0,0.00,'fixed',1),(38,54,0,0.00,'fixed',1),(38,55,0,0.00,'fixed',1),(39,4,0,0.00,'fixed',1),(39,6,0,0.00,'fixed',1),(39,11,0,0.00,'fixed',1),(39,17,0,0.00,'fixed',1),(39,43,0,0.00,'fixed',1),(39,51,0,0.00,'fixed',1),(40,13,0,0.00,'fixed',1),(40,17,0,0.00,'fixed',1),(40,18,0,0.00,'fixed',1),(40,22,0,0.00,'fixed',1),(40,26,0,0.00,'fixed',1),(40,38,0,0.00,'fixed',1),(40,45,0,0.00,'fixed',1),(41,3,0,0.00,'fixed',1),(41,6,0,0.00,'fixed',1),(41,14,0,0.00,'fixed',1),(41,15,0,0.00,'fixed',1),(41,40,0,0.00,'fixed',1),(41,49,0,0.00,'fixed',1),(41,50,0,0.00,'fixed',1),(42,8,0,0.00,'fixed',1),(42,13,0,0.00,'fixed',1),(42,24,0,0.00,'fixed',1),(42,26,0,0.00,'fixed',1),(42,47,0,0.00,'fixed',1),(42,53,0,0.00,'fixed',1),(43,6,0,0.00,'fixed',1),(43,9,0,0.00,'fixed',1),(43,22,0,0.00,'fixed',1),(43,41,0,0.00,'fixed',1),(43,49,0,0.00,'fixed',1),(44,15,0,0.00,'fixed',1),(44,16,0,0.00,'fixed',1),(44,22,0,0.00,'fixed',1),(44,29,0,0.00,'fixed',1),(44,42,0,0.00,'fixed',1),(44,48,0,0.00,'fixed',1),(44,54,0,0.00,'fixed',1),(45,8,0,0.00,'fixed',1),(45,25,0,0.00,'fixed',1),(45,29,0,0.00,'fixed',1),(45,31,0,0.00,'fixed',1),(45,32,0,0.00,'fixed',1),(45,44,0,0.00,'fixed',1),(45,52,0,0.00,'fixed',1),(46,3,0,0.00,'fixed',1),(46,14,0,0.00,'fixed',1),(46,15,0,0.00,'fixed',1),(46,22,0,0.00,'fixed',1),(46,23,0,0.00,'fixed',1),(46,32,0,0.00,'fixed',1),(46,39,0,0.00,'fixed',1),(47,13,0,0.00,'fixed',1),(47,14,0,0.00,'fixed',1),(47,16,0,0.00,'fixed',1),(47,39,0,0.00,'fixed',1),(47,52,0,0.00,'fixed',1),(47,53,0,0.00,'fixed',1),(48,12,0,0.00,'fixed',1),(48,14,0,0.00,'fixed',1),(48,26,0,0.00,'fixed',1),(48,28,0,0.00,'fixed',1),(48,53,0,0.00,'fixed',1),(48,54,0,0.00,'fixed',1),(49,5,0,0.00,'fixed',1),(49,14,0,0.00,'fixed',1),(49,27,0,0.00,'fixed',1),(49,39,0,0.00,'fixed',1),(49,46,0,0.00,'fixed',1),(49,48,0,0.00,'fixed',1),(49,55,0,0.00,'fixed',1),(50,10,0,0.00,'fixed',1),(50,24,0,0.00,'fixed',1),(50,33,0,0.00,'fixed',1),(50,40,0,0.00,'fixed',1),(50,46,0,0.00,'fixed',1),(50,48,0,0.00,'fixed',1),(50,55,0,0.00,'fixed',1),(51,4,0,0.00,'fixed',1),(51,7,0,0.00,'fixed',1),(51,10,0,0.00,'fixed',1),(51,17,0,0.00,'fixed',1),(51,41,0,0.00,'fixed',1),(51,44,0,0.00,'fixed',1),(51,56,0,0.00,'fixed',1),(52,8,0,0.00,'fixed',1),(52,18,0,0.00,'fixed',1),(52,25,0,0.00,'fixed',1),(52,28,0,0.00,'fixed',1),(52,34,0,0.00,'fixed',1),(52,40,0,0.00,'fixed',1),(52,45,0,0.00,'fixed',1),(53,3,0,0.00,'fixed',1),(53,15,0,0.00,'fixed',1),(53,16,0,0.00,'fixed',1),(53,23,0,0.00,'fixed',1),(53,24,0,0.00,'fixed',1),(53,29,0,0.00,'fixed',1),(53,45,0,0.00,'fixed',1),(54,6,0,0.00,'fixed',1),(54,18,0,0.00,'fixed',1),(54,23,0,0.00,'fixed',1),(54,25,0,0.00,'fixed',1),(54,30,0,0.00,'fixed',1),(54,37,0,0.00,'fixed',1),(54,46,0,0.00,'fixed',1),(55,12,0,0.00,'fixed',1),(55,13,0,0.00,'fixed',1),(55,17,0,0.00,'fixed',1),(55,29,0,0.00,'fixed',1),(55,35,0,0.00,'fixed',1),(55,42,0,0.00,'fixed',1),(55,51,0,0.00,'fixed',1),(56,6,0,0.00,'fixed',1),(56,9,0,0.00,'fixed',1),(56,11,0,0.00,'fixed',1),(56,33,0,0.00,'fixed',1),(56,48,0,0.00,'fixed',1),(56,50,0,0.00,'fixed',1),(57,1,0,0.00,'fixed',1),(57,2,0,0.00,'fixed',1),(57,19,0,0.00,'fixed',1),(57,28,0,0.00,'fixed',1),(57,30,0,0.00,'fixed',1),(57,36,0,0.00,'fixed',1),(57,46,0,0.00,'fixed',1);
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_files`
--

DROP TABLE IF EXISTS `ec_product_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned DEFAULT NULL,
  `url` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extras` mediumtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_files_product_id_index` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_files`
--

LOCK TABLES `ec_product_files` WRITE;
/*!40000 ALTER TABLE `ec_product_files` DISABLE KEYS */;
INSERT INTO `ec_product_files` VALUES (1,4,'ecommerce/digital-product-files/product-1.jpg','{\"filename\":\"product-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-06-05 06:59:48\",\"name\":\"product-1\",\"extension\":\"jpg\"}','2024-06-04 23:59:48','2024-06-04 23:59:48'),(2,4,'ecommerce/digital-product-files/product-17.jpg','{\"filename\":\"product-17.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-17.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-06-05 06:59:48\",\"name\":\"product-17\",\"extension\":\"jpg\"}','2024-06-04 23:59:48','2024-06-04 23:59:48'),(3,8,'ecommerce/digital-product-files/product-1.jpg','{\"filename\":\"product-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-06-05 06:59:48\",\"name\":\"product-1\",\"extension\":\"jpg\"}','2024-06-04 23:59:48','2024-06-04 23:59:48'),(4,8,'ecommerce/digital-product-files/product-details-desc-2.jpg','{\"filename\":\"product-details-desc-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-details-desc-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-06-05 06:59:48\",\"name\":\"product-details-desc-2\",\"extension\":\"jpg\"}','2024-06-04 23:59:48','2024-06-04 23:59:48'),(5,12,'ecommerce/digital-product-files/product-18.jpg','{\"filename\":\"product-18.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-18.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-06-05 06:59:48\",\"name\":\"product-18\",\"extension\":\"jpg\"}','2024-06-04 23:59:48','2024-06-04 23:59:48'),(6,12,'ecommerce/digital-product-files/product-7.jpg','{\"filename\":\"product-7.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-7.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-06-05 06:59:48\",\"name\":\"product-7\",\"extension\":\"jpg\"}','2024-06-04 23:59:48','2024-06-04 23:59:48'),(7,16,'ecommerce/digital-product-files/product-12.jpg','{\"filename\":\"product-12.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-12.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-06-05 06:59:48\",\"name\":\"product-12\",\"extension\":\"jpg\"}','2024-06-04 23:59:48','2024-06-04 23:59:48'),(8,16,'ecommerce/digital-product-files/product-details-desc-2.jpg','{\"filename\":\"product-details-desc-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-details-desc-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-06-05 06:59:48\",\"name\":\"product-details-desc-2\",\"extension\":\"jpg\"}','2024-06-04 23:59:48','2024-06-04 23:59:48'),(9,20,'ecommerce/digital-product-files/product-details-desc-3.jpg','{\"filename\":\"product-details-desc-3.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-details-desc-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-06-05 06:59:48\",\"name\":\"product-details-desc-3\",\"extension\":\"jpg\"}','2024-06-04 23:59:48','2024-06-04 23:59:48'),(10,20,'ecommerce/digital-product-files/product-details-desc-2.jpg','{\"filename\":\"product-details-desc-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-details-desc-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-06-05 06:59:48\",\"name\":\"product-details-desc-2\",\"extension\":\"jpg\"}','2024-06-04 23:59:48','2024-06-04 23:59:48'),(11,24,'ecommerce/digital-product-files/product-16.jpg','{\"filename\":\"product-16.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-16.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-06-05 06:59:48\",\"name\":\"product-16\",\"extension\":\"jpg\"}','2024-06-04 23:59:48','2024-06-04 23:59:48'),(12,24,'ecommerce/digital-product-files/product-7.jpg','{\"filename\":\"product-7.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-7.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-06-05 06:59:48\",\"name\":\"product-7\",\"extension\":\"jpg\"}','2024-06-04 23:59:48','2024-06-04 23:59:48'),(13,28,'ecommerce/digital-product-files/product-3.jpg','{\"filename\":\"product-3.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-06-05 06:59:48\",\"name\":\"product-3\",\"extension\":\"jpg\"}','2024-06-04 23:59:48','2024-06-04 23:59:48'),(14,28,'ecommerce/digital-product-files/product-7.jpg','{\"filename\":\"product-7.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-7.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-06-05 06:59:48\",\"name\":\"product-7\",\"extension\":\"jpg\"}','2024-06-04 23:59:48','2024-06-04 23:59:48'),(15,32,'ecommerce/digital-product-files/product-3.jpg','{\"filename\":\"product-3.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-06-05 06:59:48\",\"name\":\"product-3\",\"extension\":\"jpg\"}','2024-06-04 23:59:48','2024-06-04 23:59:48'),(16,32,'ecommerce/digital-product-files/product-10.jpg','{\"filename\":\"product-10.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-10.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-06-05 06:59:48\",\"name\":\"product-10\",\"extension\":\"jpg\"}','2024-06-04 23:59:48','2024-06-04 23:59:48'),(17,36,'ecommerce/digital-product-files/product-6.jpg','{\"filename\":\"product-6.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-6.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-06-05 06:59:48\",\"name\":\"product-6\",\"extension\":\"jpg\"}','2024-06-04 23:59:48','2024-06-04 23:59:48'),(18,36,'ecommerce/digital-product-files/product-details-desc-3.jpg','{\"filename\":\"product-details-desc-3.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-details-desc-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-06-05 06:59:48\",\"name\":\"product-details-desc-3\",\"extension\":\"jpg\"}','2024-06-04 23:59:48','2024-06-04 23:59:48'),(19,40,'ecommerce/digital-product-files/product-details-desc-2.jpg','{\"filename\":\"product-details-desc-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-details-desc-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-06-05 06:59:48\",\"name\":\"product-details-desc-2\",\"extension\":\"jpg\"}','2024-06-04 23:59:48','2024-06-04 23:59:48'),(20,40,'ecommerce/digital-product-files/product-13.jpg','{\"filename\":\"product-13.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-13.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-06-05 06:59:48\",\"name\":\"product-13\",\"extension\":\"jpg\"}','2024-06-04 23:59:48','2024-06-04 23:59:48'),(21,44,'ecommerce/digital-product-files/product-20.jpg','{\"filename\":\"product-20.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-20.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-06-05 06:59:48\",\"name\":\"product-20\",\"extension\":\"jpg\"}','2024-06-04 23:59:48','2024-06-04 23:59:48'),(22,44,'ecommerce/digital-product-files/product-4.jpg','{\"filename\":\"product-4.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-4.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-06-05 06:59:48\",\"name\":\"product-4\",\"extension\":\"jpg\"}','2024-06-04 23:59:48','2024-06-04 23:59:48'),(23,48,'ecommerce/digital-product-files/product-1.jpg','{\"filename\":\"product-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-06-05 06:59:48\",\"name\":\"product-1\",\"extension\":\"jpg\"}','2024-06-04 23:59:48','2024-06-04 23:59:48'),(24,48,'ecommerce/digital-product-files/product-details-desc-3.jpg','{\"filename\":\"product-details-desc-3.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-details-desc-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-06-05 06:59:48\",\"name\":\"product-details-desc-3\",\"extension\":\"jpg\"}','2024-06-04 23:59:48','2024-06-04 23:59:48'),(25,52,'ecommerce/digital-product-files/product-4.jpg','{\"filename\":\"product-4.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-4.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-06-05 06:59:48\",\"name\":\"product-4\",\"extension\":\"jpg\"}','2024-06-04 23:59:48','2024-06-04 23:59:48'),(26,52,'ecommerce/digital-product-files/product-7.jpg','{\"filename\":\"product-7.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-7.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-06-05 06:59:48\",\"name\":\"product-7\",\"extension\":\"jpg\"}','2024-06-04 23:59:48','2024-06-04 23:59:48'),(27,56,'ecommerce/digital-product-files/product-19.jpg','{\"filename\":\"product-19.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-19.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-06-05 06:59:48\",\"name\":\"product-19\",\"extension\":\"jpg\"}','2024-06-04 23:59:48','2024-06-04 23:59:48'),(28,56,'ecommerce/digital-product-files/product-7.jpg','{\"filename\":\"product-7.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-7.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-06-05 06:59:48\",\"name\":\"product-7\",\"extension\":\"jpg\"}','2024-06-04 23:59:48','2024-06-04 23:59:48'),(29,69,'ecommerce/digital-product-files/product-7.jpg','{\"filename\":\"product-7.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-7.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-06-05 06:59:48\",\"name\":\"product-7\",\"extension\":\"jpg\"}','2024-06-04 23:59:48','2024-06-04 23:59:48'),(30,70,'ecommerce/digital-product-files/product-10.jpg','{\"filename\":\"product-10.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-10.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-06-05 06:59:48\",\"name\":\"product-10\",\"extension\":\"jpg\"}','2024-06-04 23:59:48','2024-06-04 23:59:48'),(31,71,'ecommerce/digital-product-files/product-20.jpg','{\"filename\":\"product-20.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-20.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-06-05 06:59:48\",\"name\":\"product-20\",\"extension\":\"jpg\"}','2024-06-04 23:59:48','2024-06-04 23:59:48'),(32,72,'ecommerce/digital-product-files/product-18.jpg','{\"filename\":\"product-18.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-18.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-06-05 06:59:48\",\"name\":\"product-18\",\"extension\":\"jpg\"}','2024-06-04 23:59:48','2024-06-04 23:59:48'),(33,78,'ecommerce/digital-product-files/product-details-desc-2.jpg','{\"filename\":\"product-details-desc-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-details-desc-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-06-05 06:59:48\",\"name\":\"product-details-desc-2\",\"extension\":\"jpg\"}','2024-06-04 23:59:48','2024-06-04 23:59:48'),(34,79,'ecommerce/digital-product-files/product-8.jpg','{\"filename\":\"product-8.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-8.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-06-05 06:59:48\",\"name\":\"product-8\",\"extension\":\"jpg\"}','2024-06-04 23:59:48','2024-06-04 23:59:48'),(35,94,'ecommerce/digital-product-files/product-7.jpg','{\"filename\":\"product-7.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-7.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-06-05 06:59:48\",\"name\":\"product-7\",\"extension\":\"jpg\"}','2024-06-04 23:59:48','2024-06-04 23:59:48'),(36,109,'ecommerce/digital-product-files/product-13.jpg','{\"filename\":\"product-13.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-13.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-06-05 06:59:48\",\"name\":\"product-13\",\"extension\":\"jpg\"}','2024-06-04 23:59:48','2024-06-04 23:59:48'),(37,110,'ecommerce/digital-product-files/product-6.jpg','{\"filename\":\"product-6.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-6.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-06-05 06:59:48\",\"name\":\"product-6\",\"extension\":\"jpg\"}','2024-06-04 23:59:48','2024-06-04 23:59:48'),(38,111,'ecommerce/digital-product-files/product-12.jpg','{\"filename\":\"product-12.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-12.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-06-05 06:59:48\",\"name\":\"product-12\",\"extension\":\"jpg\"}','2024-06-04 23:59:48','2024-06-04 23:59:48'),(39,119,'ecommerce/digital-product-files/product-4.jpg','{\"filename\":\"product-4.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-4.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-06-05 06:59:48\",\"name\":\"product-4\",\"extension\":\"jpg\"}','2024-06-04 23:59:48','2024-06-04 23:59:48'),(40,120,'ecommerce/digital-product-files/product-18.jpg','{\"filename\":\"product-18.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-18.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-06-05 06:59:48\",\"name\":\"product-18\",\"extension\":\"jpg\"}','2024-06-04 23:59:48','2024-06-04 23:59:48'),(41,121,'ecommerce/digital-product-files/product-8.jpg','{\"filename\":\"product-8.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-8.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-06-05 06:59:48\",\"name\":\"product-8\",\"extension\":\"jpg\"}','2024-06-04 23:59:48','2024-06-04 23:59:48');
/*!40000 ALTER TABLE `ec_product_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_label_products`
--

DROP TABLE IF EXISTS `ec_product_label_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_label_products` (
  `product_label_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_label_id`,`product_id`),
  KEY `ec_product_label_products_product_label_id_index` (`product_label_id`),
  KEY `ec_product_label_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_label_products`
--

LOCK TABLES `ec_product_label_products` WRITE;
/*!40000 ALTER TABLE `ec_product_label_products` DISABLE KEYS */;
INSERT INTO `ec_product_label_products` VALUES (1,6),(1,42),(1,45),(1,57),(2,12),(2,15),(2,21),(2,24),(2,33),(2,36),(2,39),(2,51),(2,54),(3,3),(3,9),(3,18),(3,27),(3,30),(3,48);
/*!40000 ALTER TABLE `ec_product_label_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels`
--

DROP TABLE IF EXISTS `ec_product_labels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_labels` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_labels`
--

LOCK TABLES `ec_product_labels` WRITE;
/*!40000 ALTER TABLE `ec_product_labels` DISABLE KEYS */;
INSERT INTO `ec_product_labels` VALUES (1,'Hot','#AC2200','published','2024-06-04 23:59:38','2024-06-04 23:59:38'),(2,'New','#006554','published','2024-06-04 23:59:38','2024-06-04 23:59:38'),(3,'Sale','#9A3B00','published','2024-06-04 23:59:38','2024-06-04 23:59:38');
/*!40000 ALTER TABLE `ec_product_labels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels_translations`
--

DROP TABLE IF EXISTS `ec_product_labels_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_labels_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_labels_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_labels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_labels_translations`
--

LOCK TABLES `ec_product_labels_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_labels_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_labels_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_related_relations`
--

DROP TABLE IF EXISTS `ec_product_related_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_related_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_related_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_related_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_related_relations`
--

LOCK TABLES `ec_product_related_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_related_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_related_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tag_product`
--

DROP TABLE IF EXISTS `ec_product_tag_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_tag_product` (
  `product_id` bigint unsigned NOT NULL,
  `tag_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`tag_id`),
  KEY `ec_product_tag_product_product_id_index` (`product_id`),
  KEY `ec_product_tag_product_tag_id_index` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tag_product`
--

LOCK TABLES `ec_product_tag_product` WRITE;
/*!40000 ALTER TABLE `ec_product_tag_product` DISABLE KEYS */;
INSERT INTO `ec_product_tag_product` VALUES (1,1),(1,2),(1,5),(2,2),(2,5),(2,6),(3,1),(3,2),(3,5),(4,1),(4,2),(4,6),(5,2),(5,4),(5,6),(6,2),(6,3),(6,4),(7,1),(7,4),(7,5),(8,1),(8,3),(8,5),(9,1),(9,4),(9,6),(10,2),(10,3),(10,6),(11,1),(11,2),(11,3),(12,1),(12,5),(12,6),(13,1),(13,3),(13,6),(14,2),(14,3),(14,4),(15,2),(15,3),(15,4),(16,2),(16,3),(16,4),(17,1),(17,4),(17,6),(18,3),(18,4),(18,6),(19,2),(19,5),(19,6),(20,1),(20,3),(20,4),(21,1),(21,3),(21,6),(22,2),(22,3),(22,4),(23,4),(23,5),(23,6),(24,1),(24,2),(24,5),(25,1),(25,2),(25,6),(26,2),(26,3),(26,5),(27,1),(27,2),(27,5),(28,1),(28,4),(28,6),(29,1),(29,2),(29,5),(30,2),(30,4),(30,5),(31,1),(31,3),(31,6),(32,4),(32,5),(32,6),(33,1),(33,3),(33,4),(34,1),(34,3),(34,5),(35,1),(35,2),(35,4),(36,3),(36,5),(36,6),(37,2),(37,3),(37,6),(38,1),(38,3),(38,4),(39,1),(39,2),(39,6),(40,1),(40,5),(40,6),(41,1),(41,3),(41,6),(42,1),(42,3),(42,5),(43,4),(43,5),(43,6),(44,1),(44,2),(44,5),(45,1),(45,2),(45,3),(46,4),(46,5),(46,6),(47,3),(47,5),(47,6),(48,2),(48,3),(48,6),(49,1),(49,4),(49,5),(50,2),(50,5),(50,6),(51,1),(51,2),(51,5),(52,1),(52,2),(52,4),(53,1),(53,4),(53,5),(54,1),(54,4),(54,5),(55,1),(55,3),(55,6),(56,2),(56,4),(56,5),(57,1),(57,5),(57,6);
/*!40000 ALTER TABLE `ec_product_tag_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags`
--

DROP TABLE IF EXISTS `ec_product_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags`
--

LOCK TABLES `ec_product_tags` WRITE;
/*!40000 ALTER TABLE `ec_product_tags` DISABLE KEYS */;
INSERT INTO `ec_product_tags` VALUES (1,'Electronic',NULL,'published','2024-06-04 23:59:41','2024-06-04 23:59:41'),(2,'Mobile',NULL,'published','2024-06-04 23:59:41','2024-06-04 23:59:41'),(3,'Iphone',NULL,'published','2024-06-04 23:59:41','2024-06-04 23:59:41'),(4,'Printer',NULL,'published','2024-06-04 23:59:41','2024-06-04 23:59:41'),(5,'Office',NULL,'published','2024-06-04 23:59:41','2024-06-04 23:59:41'),(6,'IT',NULL,'published','2024-06-04 23:59:41','2024-06-04 23:59:41');
/*!40000 ALTER TABLE `ec_product_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags_translations`
--

DROP TABLE IF EXISTS `ec_product_tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_tags_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_tags_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags_translations`
--

LOCK TABLES `ec_product_tags_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_tags_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_up_sale_relations`
--

DROP TABLE IF EXISTS `ec_product_up_sale_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_up_sale_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_up_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_up_sale_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_up_sale_relations`
--

LOCK TABLES `ec_product_up_sale_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_up_sale_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_up_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variation_items`
--

DROP TABLE IF EXISTS `ec_product_variation_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_variation_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_id` bigint unsigned NOT NULL,
  `variation_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_product_variation_items_attribute_id_variation_id_unique` (`attribute_id`,`variation_id`),
  KEY `attribute_variation_index` (`attribute_id`,`variation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=153 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variation_items`
--

LOCK TABLES `ec_product_variation_items` WRITE;
/*!40000 ALTER TABLE `ec_product_variation_items` DISABLE KEYS */;
INSERT INTO `ec_product_variation_items` VALUES (5,1,3),(19,1,10),(23,1,12),(29,1,15),(33,1,17),(53,1,27),(61,1,31),(63,1,32),(65,1,33),(67,1,34),(9,2,5),(13,2,7),(27,2,14),(49,2,25),(59,2,30),(1,3,1),(7,3,4),(11,3,6),(17,3,9),(41,3,21),(51,3,26),(57,3,29),(3,4,2),(15,4,8),(21,4,11),(47,4,24),(55,4,28),(69,4,35),(25,5,13),(31,5,16),(35,5,18),(37,5,19),(39,5,20),(43,5,22),(45,5,23),(71,5,36),(18,6,9),(36,6,18),(48,6,24),(4,7,2),(6,7,3),(10,7,5),(32,7,16),(44,7,22),(50,7,25),(58,7,29),(70,7,35),(72,7,36),(2,8,1),(16,8,8),(22,8,11),(26,8,13),(34,8,17),(38,8,19),(40,8,20),(42,8,21),(46,8,23),(56,8,28),(8,9,4),(12,9,6),(20,9,10),(24,9,12),(30,9,15),(54,9,27),(64,9,32),(66,9,33),(68,9,34),(14,10,7),(28,10,14),(52,10,26),(60,10,30),(62,10,31),(75,11,38),(89,11,45),(91,11,46),(93,11,47),(105,11,53),(109,11,55),(121,11,61),(141,11,71),(97,12,49),(107,12,54),(123,12,62),(135,12,68),(137,12,69),(73,13,37),(81,13,41),(99,13,50),(117,13,59),(125,13,63),(131,13,66),(133,13,67),(143,13,72),(149,13,75),(151,13,76),(77,14,39),(83,14,42),(101,14,51),(113,14,57),(115,14,58),(139,14,70),(145,14,73),(147,14,74),(79,15,40),(85,15,43),(87,15,44),(95,15,48),(103,15,52),(111,15,56),(119,15,60),(127,15,64),(129,15,65),(76,16,38),(82,16,41),(86,16,43),(90,16,45),(94,16,47),(106,16,53),(126,16,63),(128,16,64),(136,16,68),(140,16,70),(144,16,72),(146,16,73),(148,16,74),(74,17,37),(78,17,39),(80,17,40),(84,17,42),(100,17,50),(116,17,58),(124,17,62),(132,17,66),(134,17,67),(138,17,69),(88,18,44),(92,18,46),(96,18,48),(98,18,49),(102,18,51),(108,18,54),(114,18,57),(130,18,65),(142,18,71),(150,18,75),(152,18,76),(110,19,55),(122,19,61),(104,20,52),(112,20,56),(118,20,59),(120,20,60);
/*!40000 ALTER TABLE `ec_product_variation_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variations`
--

DROP TABLE IF EXISTS `ec_product_variations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_variations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned DEFAULT NULL,
  `configurable_product_id` bigint unsigned NOT NULL,
  `is_default` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_product_variations_product_id_configurable_product_id_unique` (`product_id`,`configurable_product_id`),
  KEY `configurable_product_index` (`product_id`,`configurable_product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variations`
--

LOCK TABLES `ec_product_variations` WRITE;
/*!40000 ALTER TABLE `ec_product_variations` DISABLE KEYS */;
INSERT INTO `ec_product_variations` VALUES (1,58,2,1),(2,59,2,0),(3,60,2,0),(4,61,2,0),(5,62,3,1),(6,63,7,1),(7,64,7,0),(8,65,7,0),(9,66,7,0),(10,67,7,0),(11,68,10,1),(12,69,12,1),(13,70,12,0),(14,71,12,0),(15,72,12,0),(16,73,13,1),(17,74,13,0),(18,75,15,1),(19,76,15,0),(20,77,15,0),(21,78,20,1),(22,79,20,0),(23,80,21,1),(24,81,21,0),(25,82,22,1),(26,83,22,0),(27,84,22,0),(28,85,22,0),(29,86,23,1),(30,87,23,0),(31,88,25,1),(32,89,25,0),(33,90,25,0),(34,91,26,1),(35,92,26,0),(36,93,26,0),(37,94,28,1),(38,95,29,1),(39,96,29,0),(40,97,29,0),(41,98,33,1),(42,99,33,0),(43,100,33,0),(44,101,35,1),(45,102,35,0),(46,103,35,0),(47,104,37,1),(48,105,37,0),(49,106,37,0),(50,107,38,1),(51,108,38,0),(52,109,40,1),(53,110,40,0),(54,111,40,0),(55,112,41,1),(56,113,41,0),(57,114,41,0),(58,115,41,0),(59,116,42,1),(60,117,43,1),(61,118,43,0),(62,119,44,1),(63,120,44,0),(64,121,44,0),(65,122,47,1),(66,123,47,0),(67,124,50,1),(68,125,50,0),(69,126,50,0),(70,127,51,1),(71,128,53,1),(72,129,53,0),(73,130,57,1),(74,131,57,0),(75,132,57,0),(76,133,57,0);
/*!40000 ALTER TABLE `ec_product_variations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_views`
--

DROP TABLE IF EXISTS `ec_product_views`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_views` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned NOT NULL,
  `views` int NOT NULL DEFAULT '1',
  `date` date NOT NULL DEFAULT '2024-06-05',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_product_views_product_id_date_unique` (`product_id`,`date`),
  KEY `ec_product_views_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_views`
--

LOCK TABLES `ec_product_views` WRITE;
/*!40000 ALTER TABLE `ec_product_views` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_views` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_with_attribute_set`
--

DROP TABLE IF EXISTS `ec_product_with_attribute_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_with_attribute_set` (
  `attribute_set_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`attribute_set_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_with_attribute_set`
--

LOCK TABLES `ec_product_with_attribute_set` WRITE;
/*!40000 ALTER TABLE `ec_product_with_attribute_set` DISABLE KEYS */;
INSERT INTO `ec_product_with_attribute_set` VALUES (1,2,0),(2,2,0),(1,3,0),(2,3,0),(1,7,0),(2,7,0),(1,10,0),(2,10,0),(1,12,0),(2,12,0),(1,13,0),(2,13,0),(1,15,0),(2,15,0),(1,20,0),(2,20,0),(1,21,0),(2,21,0),(1,22,0),(2,22,0),(1,23,0),(2,23,0),(1,25,0),(2,25,0),(1,26,0),(2,26,0),(3,28,0),(4,28,0),(3,29,0),(4,29,0),(3,33,0),(4,33,0),(3,35,0),(4,35,0),(3,37,0),(4,37,0),(3,38,0),(4,38,0),(3,40,0),(4,40,0),(3,41,0),(4,41,0),(3,42,0),(4,42,0),(3,43,0),(4,43,0),(3,44,0),(4,44,0),(3,47,0),(4,47,0),(3,50,0),(4,50,0),(3,51,0),(4,51,0),(3,53,0),(4,53,0),(3,57,0),(4,57,0);
/*!40000 ALTER TABLE `ec_product_with_attribute_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products`
--

DROP TABLE IF EXISTS `ec_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `images` text COLLATE utf8mb4_unicode_ci,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int unsigned NOT NULL DEFAULT '0',
  `quantity` int unsigned DEFAULT NULL,
  `allow_checkout_when_out_of_stock` tinyint unsigned NOT NULL DEFAULT '0',
  `with_storehouse_management` tinyint unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `brand_id` bigint unsigned DEFAULT NULL,
  `is_variation` tinyint NOT NULL DEFAULT '0',
  `sale_type` tinyint NOT NULL DEFAULT '0',
  `price` double unsigned DEFAULT NULL,
  `sale_price` double unsigned DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `length` double(8,2) DEFAULT NULL,
  `wide` double(8,2) DEFAULT NULL,
  `height` double(8,2) DEFAULT NULL,
  `weight` double(8,2) DEFAULT NULL,
  `tax_id` bigint unsigned DEFAULT NULL,
  `views` bigint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `stock_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'in_stock',
  `store_id` bigint unsigned DEFAULT NULL,
  `created_by_id` bigint unsigned DEFAULT '0',
  `created_by_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `approved_by` bigint unsigned DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'physical',
  `barcode` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cost_per_item` double DEFAULT NULL,
  `generate_license_code` tinyint(1) NOT NULL DEFAULT '0',
  `minimum_order_quantity` int unsigned DEFAULT '0',
  `maximum_order_quantity` int unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ec_products_brand_id_status_is_variation_created_at_index` (`brand_id`,`status`,`is_variation`,`created_at`),
  KEY `sale_type_index` (`sale_type`),
  KEY `start_date_index` (`start_date`),
  KEY `end_date_index` (`end_date`),
  KEY `sale_price_index` (`sale_price`),
  KEY `is_variation_index` (`is_variation`),
  KEY `ec_products_sku_index` (`sku`)
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products`
--

LOCK TABLES `ec_products` WRITE;
/*!40000 ALTER TABLE `ec_products` DISABLE KEYS */;
INSERT INTO `ec_products` VALUES (1,'EcoTech Marine Radion XR30w G5 Pro LED Light Fixture','Jabra Evolve2 75 USB-A MS Teams Stereo Headset The Jabra Evolve2 75 USB-A MS Teams Stereo Headset has replaced previous hybrid working standards. Industry-leading call quality thanks to top-notch audio engineering.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-5.jpg\"]','7J-189',0,18,0,1,0,3,0,0,1301,646,NULL,NULL,11.00,16.00,16.00,900.00,NULL,56508,'2024-06-04 23:59:47','2024-06-04 23:59:47','in_stock',7,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(2,'Philips Hue White and Color Ambiance A19 LED Smart Bulb','With this intelligent headset, you can stay connected and productive from the first call of the day to the last train home. With an ergonomic earcup design, this headset invented a brand-new dual-foam technology. You will be comfortable from the first call to the last thanks to the re-engineered leatherette ear cushion design that allows for better airflow.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-6.jpg\"]','WZ-109-A1',0,11,0,1,1,5,0,0,1842,NULL,NULL,NULL,10.00,18.00,14.00,794.00,NULL,44962,'2024-06-04 23:59:47','2024-06-04 23:59:48','in_stock',3,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(3,'Samsung Galaxy Tab S7+ 12.4-Inch Android Tablet','We can provide exceptional noise isolation and the best all-day comfort by mixing firm foam for the outer with soft foam for the interior of the ear cushions. So that you may receive Active Noise-Cancellation (ANC) performance that is even greater in a headset that you can wear for whatever length you wish.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-details-desc-2.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-15.jpg\"]','V2-170-A1',0,20,0,1,0,3,0,0,1906,NULL,NULL,NULL,20.00,16.00,16.00,801.00,NULL,112428,'2024-06-04 23:59:47','2024-06-04 23:59:48','in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(4,'Apple MacBook Pro 16-Inch Laptop (Digital)','Additionally, this includes a redesigned microphone boom arm that is 33 percent shorter than the Evolve 75 and offers the industry-leading call performance for which Jabra headsets are known.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-2.jpg\"]','OP-182',0,13,0,1,0,4,0,0,1919,847,NULL,NULL,16.00,18.00,15.00,756.00,NULL,49865,'2024-06-04 23:59:47','2024-06-04 23:59:47','in_stock',6,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(5,'Sony WH-1000XM4 Wireless Noise-Canceling Headphones','It complies with Microsoft\'s Open Office criteria and is specially tuned for outstanding conversations in open-plan workplaces and other loud environments when the microphone boom arm is lowered in Performance Mode','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-4.jpg\"]','S6-145',0,20,0,1,0,1,0,0,1058,852,NULL,NULL,17.00,11.00,11.00,846.00,NULL,164345,'2024-06-04 23:59:47','2024-06-04 23:59:47','in_stock',8,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(6,'DJI Mavic Air 2 Drone','With this intelligent headset, you can stay connected and productive from the first call of the day to the last train home. With an ergonomic earcup design, this headset invented a brand-new dual-foam technology. You will be comfortable from the first call to the last thanks to the re-engineered leatherette ear cushion design that allows for better airflow.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]','DP-109',0,18,0,1,0,5,0,0,2419,1291,NULL,NULL,10.00,20.00,11.00,551.00,NULL,93674,'2024-06-04 23:59:47','2024-06-04 23:59:47','in_stock',8,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(7,'GoPro HERO9 Black Action Camera','The headset also offers MS Teams Certifications and other features like Busylight, Calls controls, Voice guiding, and Wireless range (ft): Up to 100 feet. Best-in-class. Boom The most recent Jabra Evolve2 75 USB-A MS Teams Stereo Headset offers professional-grade call performance that leads the industry, yet Evolve2 75 wins best-in-class.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-details-desc-2.jpg\",\"main\\/products\\/product-18.jpg\"]','KG-150-A1',0,10,0,1,1,3,0,0,1357,NULL,NULL,NULL,11.00,12.00,11.00,672.00,NULL,141999,'2024-06-04 23:59:47','2024-06-04 23:59:48','in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(8,'Bose SoundLink Revolve+ Portable Bluetooth Speaker (Digital)','The headset also offers MS Teams Certifications and other features like Busylight, Calls controls, Voice guiding, and Wireless range (ft): Up to 100 feet. Best-in-class. Boom The most recent Jabra Evolve2 75 USB-A MS Teams Stereo Headset offers professional-grade call performance that leads the industry, yet Evolve2 75 wins best-in-class.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-details-desc-2.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]','CL-139',0,14,0,1,1,5,0,0,2287,577,NULL,NULL,18.00,12.00,14.00,859.00,NULL,88934,'2024-06-04 23:59:47','2024-06-04 23:59:47','in_stock',3,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(9,'Nest Learning Thermostat (3rd Generation)','With this intelligent headset, you can stay connected and productive from the first call of the day to the last train home. With an ergonomic earcup design, this headset invented a brand-new dual-foam technology. You will be comfortable from the first call to the last thanks to the re-engineered leatherette ear cushion design that allows for better airflow.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-10.jpg\"]','PQ-101',0,12,0,1,1,1,0,0,291,90,NULL,NULL,18.00,15.00,19.00,788.00,NULL,107745,'2024-06-04 23:59:47','2024-06-04 23:59:47','in_stock',2,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(10,'Ring Video Doorbell Pro','With this intelligent headset, you can stay connected and productive from the first call of the day to the last train home. With an ergonomic earcup design, this headset invented a brand-new dual-foam technology. You will be comfortable from the first call to the last thanks to the re-engineered leatherette ear cushion design that allows for better airflow.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-details-desc-2.jpg\",\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-details-desc-3.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-6.jpg\"]','R3-161-A1',0,12,0,1,0,4,0,0,1514,NULL,NULL,NULL,10.00,16.00,15.00,503.00,NULL,152006,'2024-06-04 23:59:47','2024-06-04 23:59:48','in_stock',7,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(11,'Amazon Echo Show 10 (3rd Gen)','It complies with Microsoft\'s Open Office criteria and is specially tuned for outstanding conversations in open-plan workplaces and other loud environments when the microphone boom arm is lowered in Performance Mode','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]','JM-187',0,20,0,1,1,5,0,0,2184,281,NULL,NULL,11.00,20.00,20.00,589.00,NULL,23251,'2024-06-04 23:59:47','2024-06-04 23:59:47','in_stock',3,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(12,'Samsung QN90A Neo QLED 4K Smart TV (Digital)','It complies with Microsoft\'s Open Office criteria and is specially tuned for outstanding conversations in open-plan workplaces and other loud environments when the microphone boom arm is lowered in Performance Mode','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-20.jpg\"]','QW-197-A1',0,18,0,1,1,2,0,0,2066,1673.46,NULL,NULL,18.00,12.00,10.00,890.00,NULL,160714,'2024-06-04 23:59:47','2024-06-04 23:59:48','in_stock',4,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(13,'LG OLED C1 Series 4K Smart TV','Jabra Evolve2 75 USB-A MS Teams Stereo Headset The Jabra Evolve2 75 USB-A MS Teams Stereo Headset has replaced previous hybrid working standards. Industry-leading call quality thanks to top-notch audio engineering.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-details-desc-3.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-details-desc-2.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-15.jpg\"]','GW-112-A1',0,15,0,1,1,3,0,0,669,NULL,NULL,NULL,10.00,18.00,20.00,839.00,NULL,58955,'2024-06-04 23:59:47','2024-06-04 23:59:48','in_stock',7,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(14,'Sony X950H 4K Ultra HD Smart LED TV','We can provide exceptional noise isolation and the best all-day comfort by mixing firm foam for the outer with soft foam for the interior of the ear cushions. So that you may receive Active Noise-Cancellation (ANC) performance that is even greater in a headset that you can wear for whatever length you wish.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-14.jpg\"]','ZS-133',0,19,0,1,0,3,0,0,1207,440,NULL,NULL,18.00,20.00,10.00,577.00,NULL,79727,'2024-06-04 23:59:47','2024-06-04 23:59:47','in_stock',4,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(15,'Apple Watch Series 7','We can provide exceptional noise isolation and the best all-day comfort by mixing firm foam for the outer with soft foam for the interior of the ear cushions. So that you may receive Active Noise-Cancellation (ANC) performance that is even greater in a headset that you can wear for whatever length you wish.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-10.jpg\"]','MC-167-A1',0,12,0,1,0,2,0,0,1179,NULL,NULL,NULL,13.00,17.00,19.00,570.00,NULL,114443,'2024-06-04 23:59:47','2024-06-04 23:59:48','in_stock',4,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(16,'Fitbit Charge 5 Fitness Tracker (Digital)','With this intelligent headset, you can stay connected and productive from the first call of the day to the last train home. With an ergonomic earcup design, this headset invented a brand-new dual-foam technology. You will be comfortable from the first call to the last thanks to the re-engineered leatherette ear cushion design that allows for better airflow.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-details-desc-2.jpg\",\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-details-desc-3.jpg\",\"main\\/products\\/product-20.jpg\"]','GL-142',0,13,0,1,1,1,0,0,820,467,NULL,NULL,14.00,20.00,19.00,867.00,NULL,190076,'2024-06-04 23:59:47','2024-06-04 23:59:47','in_stock',4,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(17,'Garmin Fenix 7X Sapphire Solar GPS Watch','Jabra Evolve2 75 USB-A MS Teams Stereo Headset The Jabra Evolve2 75 USB-A MS Teams Stereo Headset has replaced previous hybrid working standards. Industry-leading call quality thanks to top-notch audio engineering.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-1.jpg\"]','AJ-144',0,13,0,1,1,5,0,0,2458,791,NULL,NULL,14.00,16.00,20.00,606.00,NULL,136918,'2024-06-04 23:59:47','2024-06-04 23:59:47','in_stock',5,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(18,'Microsoft Surface Pro 8','Jabra Evolve2 75 USB-A MS Teams Stereo Headset The Jabra Evolve2 75 USB-A MS Teams Stereo Headset has replaced previous hybrid working standards. Industry-leading call quality thanks to top-notch audio engineering.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]','PK-170',0,14,0,1,1,3,0,0,349,35,NULL,NULL,14.00,20.00,13.00,778.00,NULL,198877,'2024-06-04 23:59:47','2024-06-04 23:59:47','in_stock',2,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(19,'Lenovo ThinkPad X1 Carbon Gen 9 Laptop','It complies with Microsoft\'s Open Office criteria and is specially tuned for outstanding conversations in open-plan workplaces and other loud environments when the microphone boom arm is lowered in Performance Mode','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]','LH-116',0,10,0,1,0,5,0,0,1079,680,NULL,NULL,13.00,17.00,17.00,718.00,NULL,97480,'2024-06-04 23:59:47','2024-06-04 23:59:47','in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(20,'HP Spectre x360 14-Inch Convertible Laptop (Digital)','It complies with Microsoft\'s Open Office criteria and is specially tuned for outstanding conversations in open-plan workplaces and other loud environments when the microphone boom arm is lowered in Performance Mode','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-details-desc-3.jpg\",\"main\\/products\\/product-details-desc-2.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-12.jpg\"]','M1-139-A1',0,10,0,1,1,3,0,0,1864,1621.68,NULL,NULL,10.00,16.00,14.00,638.00,NULL,152061,'2024-06-04 23:59:47','2024-06-04 23:59:48','in_stock',5,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(21,'Razer Blade 15 Advanced Gaming Laptop','With this intelligent headset, you can stay connected and productive from the first call of the day to the last train home. With an ergonomic earcup design, this headset invented a brand-new dual-foam technology. You will be comfortable from the first call to the last thanks to the re-engineered leatherette ear cushion design that allows for better airflow.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-details-desc-2.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-11.jpg\"]','YI-172-A1',0,18,0,1,1,1,0,0,2234,NULL,NULL,NULL,12.00,13.00,20.00,524.00,NULL,115347,'2024-06-04 23:59:47','2024-06-04 23:59:48','in_stock',3,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(22,'Alienware m15 R6 Gaming Laptop','With this intelligent headset, you can stay connected and productive from the first call of the day to the last train home. With an ergonomic earcup design, this headset invented a brand-new dual-foam technology. You will be comfortable from the first call to the last thanks to the re-engineered leatherette ear cushion design that allows for better airflow.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-10.jpg\"]','PC-197-A1',0,16,0,1,0,5,0,0,607,NULL,NULL,NULL,16.00,19.00,17.00,659.00,NULL,180300,'2024-06-04 23:59:47','2024-06-04 23:59:48','in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(23,'Corsair K95 RGB Platinum XT Mechanical Gaming Keyboard','We can provide exceptional noise isolation and the best all-day comfort by mixing firm foam for the outer with soft foam for the interior of the ear cushions. So that you may receive Active Noise-Cancellation (ANC) performance that is even greater in a headset that you can wear for whatever length you wish.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-19.jpg\"]','SZ-149-A1',0,16,0,1,1,5,0,0,306,NULL,NULL,NULL,18.00,15.00,20.00,750.00,NULL,167904,'2024-06-04 23:59:47','2024-06-04 23:59:48','in_stock',2,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(24,'Logitech G Pro X Superlight Wireless Gaming Mouse (Digital)','Jabra Evolve2 75 USB-A MS Teams Stereo Headset The Jabra Evolve2 75 USB-A MS Teams Stereo Headset has replaced previous hybrid working standards. Industry-leading call quality thanks to top-notch audio engineering.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-1.jpg\"]','ZD-111',0,20,0,1,0,5,0,0,2224,264,NULL,NULL,20.00,12.00,16.00,758.00,NULL,106714,'2024-06-04 23:59:47','2024-06-04 23:59:47','in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(25,'SteelSeries Arctis Pro Wireless Gaming Headset','We can provide exceptional noise isolation and the best all-day comfort by mixing firm foam for the outer with soft foam for the interior of the ear cushions. So that you may receive Active Noise-Cancellation (ANC) performance that is even greater in a headset that you can wear for whatever length you wish.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-16.jpg\"]','5N-136-A1',0,11,0,1,1,5,0,0,2480,NULL,NULL,NULL,17.00,18.00,11.00,536.00,NULL,139540,'2024-06-04 23:59:47','2024-06-04 23:59:48','in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(26,'Elgato Stream Deck XL','Jabra Evolve2 75 USB-A MS Teams Stereo Headset The Jabra Evolve2 75 USB-A MS Teams Stereo Headset has replaced previous hybrid working standards. Industry-leading call quality thanks to top-notch audio engineering.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-12.jpg\"]','LI-199-A1',0,10,0,1,1,1,0,0,877,NULL,NULL,NULL,14.00,16.00,13.00,873.00,NULL,114202,'2024-06-04 23:59:47','2024-06-04 23:59:48','in_stock',2,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(27,'Nintendo Switch OLED Model','Jabra Evolve2 75 USB-A MS Teams Stereo Headset The Jabra Evolve2 75 USB-A MS Teams Stereo Headset has replaced previous hybrid working standards. Industry-leading call quality thanks to top-notch audio engineering.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-10.jpg\"]','EN-167',0,12,0,1,1,3,0,0,1046,112,NULL,NULL,14.00,14.00,17.00,687.00,NULL,108702,'2024-06-04 23:59:47','2024-06-04 23:59:47','in_stock',7,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(28,'PlayStation 5 Console (Digital)','With this intelligent headset, you can stay connected and productive from the first call of the day to the last train home. With an ergonomic earcup design, this headset invented a brand-new dual-foam technology. You will be comfortable from the first call to the last thanks to the re-engineered leatherette ear cushion design that allows for better airflow.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-1.jpg\"]','LI-121-A1',0,16,0,1,1,5,0,0,943,763.83,NULL,NULL,14.00,14.00,10.00,817.00,NULL,11812,'2024-06-04 23:59:47','2024-06-04 23:59:48','in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(29,'Xbox Series X Console','It complies with Microsoft\'s Open Office criteria and is specially tuned for outstanding conversations in open-plan workplaces and other loud environments when the microphone boom arm is lowered in Performance Mode','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-11.jpg\"]','VH-169-A1',0,12,0,1,1,3,0,0,1111,NULL,NULL,NULL,15.00,13.00,14.00,524.00,NULL,171892,'2024-06-04 23:59:47','2024-06-04 23:59:48','in_stock',3,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(30,'Oculus Quest 2 VR Headset','Jabra Evolve2 75 USB-A MS Teams Stereo Headset The Jabra Evolve2 75 USB-A MS Teams Stereo Headset has replaced previous hybrid working standards. Industry-leading call quality thanks to top-notch audio engineering.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-9.jpg\"]','QV-146',0,15,0,1,0,3,0,0,1778,1220,NULL,NULL,18.00,19.00,10.00,519.00,NULL,110354,'2024-06-04 23:59:47','2024-06-04 23:59:47','in_stock',7,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(31,'HTC Vive Cosmos Elite VR Headset','We can provide exceptional noise isolation and the best all-day comfort by mixing firm foam for the outer with soft foam for the interior of the ear cushions. So that you may receive Active Noise-Cancellation (ANC) performance that is even greater in a headset that you can wear for whatever length you wish.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-9.jpg\"]','QJ-143',0,11,0,1,1,1,0,0,1464,1325,NULL,NULL,16.00,17.00,15.00,857.00,NULL,32561,'2024-06-04 23:59:48','2024-06-04 23:59:48','in_stock',7,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(32,'Samsung Odyssey G9 49-Inch Curved Gaming Monitor (Digital)','It complies with Microsoft\'s Open Office criteria and is specially tuned for outstanding conversations in open-plan workplaces and other loud environments when the microphone boom arm is lowered in Performance Mode','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-5.jpg\"]','UD-163',0,17,0,1,0,1,0,0,1118,555,NULL,NULL,15.00,17.00,10.00,808.00,NULL,97138,'2024-06-04 23:59:48','2024-06-04 23:59:48','in_stock',6,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(33,'LG UltraGear 27GN950-B 4K Gaming Monitor','The headset also offers MS Teams Certifications and other features like Busylight, Calls controls, Voice guiding, and Wireless range (ft): Up to 100 feet. Best-in-class. Boom The most recent Jabra Evolve2 75 USB-A MS Teams Stereo Headset offers professional-grade call performance that leads the industry, yet Evolve2 75 wins best-in-class.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-details-desc-3.jpg\",\"main\\/products\\/product-12.jpg\"]','QA-105-A1',0,17,0,1,1,1,0,0,2010,NULL,NULL,NULL,14.00,11.00,18.00,877.00,NULL,87100,'2024-06-04 23:59:48','2024-06-04 23:59:48','in_stock',6,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(34,'Acer Predator X38 Pbmiphzx 38-Inch Curved Gaming Monitor','We can provide exceptional noise isolation and the best all-day comfort by mixing firm foam for the outer with soft foam for the interior of the ear cushions. So that you may receive Active Noise-Cancellation (ANC) performance that is even greater in a headset that you can wear for whatever length you wish.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-20.jpg\"]','IW-193',0,12,0,1,1,2,0,0,1826,161,NULL,NULL,15.00,17.00,18.00,763.00,NULL,110596,'2024-06-04 23:59:48','2024-06-04 23:59:48','in_stock',3,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(35,'ASUS ROG Swift PG279QM 27-Inch Gaming Monitor','Additionally, this includes a redesigned microphone boom arm that is 33 percent shorter than the Evolve 75 and offers the industry-leading call performance for which Jabra headsets are known.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-details-desc-2.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-4.jpg\"]','XD-117-A1',0,19,0,1,0,1,0,0,813,NULL,NULL,NULL,10.00,18.00,12.00,574.00,NULL,152180,'2024-06-04 23:59:48','2024-06-04 23:59:48','in_stock',3,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(36,'BenQ EW3280U 32-Inch 4K HDR Entertainment Monitor (Digital)','We can provide exceptional noise isolation and the best all-day comfort by mixing firm foam for the outer with soft foam for the interior of the ear cushions. So that you may receive Active Noise-Cancellation (ANC) performance that is even greater in a headset that you can wear for whatever length you wish.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-details-desc-3.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]','VU-136',0,20,0,1,1,3,0,0,298,14,NULL,NULL,14.00,19.00,13.00,700.00,NULL,119241,'2024-06-04 23:59:48','2024-06-04 23:59:48','in_stock',7,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(37,'Dell UltraSharp U2720Q 27-Inch 4K USB-C Monitor','With this intelligent headset, you can stay connected and productive from the first call of the day to the last train home. With an ergonomic earcup design, this headset invented a brand-new dual-foam technology. You will be comfortable from the first call to the last thanks to the re-engineered leatherette ear cushion design that allows for better airflow.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-details-desc-3.jpg\",\"main\\/products\\/product-15.jpg\"]','2K-155-A1',0,14,0,1,0,1,0,0,1499,NULL,NULL,NULL,11.00,12.00,10.00,659.00,NULL,176253,'2024-06-04 23:59:48','2024-06-04 23:59:48','in_stock',6,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(38,'HP Z27k G3 4K USB-C Monitor','With this intelligent headset, you can stay connected and productive from the first call of the day to the last train home. With an ergonomic earcup design, this headset invented a brand-new dual-foam technology. You will be comfortable from the first call to the last thanks to the re-engineered leatherette ear cushion design that allows for better airflow.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]','YY-185-A1',0,12,0,1,0,3,0,0,635,NULL,NULL,NULL,15.00,15.00,19.00,788.00,NULL,32230,'2024-06-04 23:59:48','2024-06-04 23:59:48','in_stock',4,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(39,'LG 27UK850-W 27-Inch 4K UHD IPS Monitor','We can provide exceptional noise isolation and the best all-day comfort by mixing firm foam for the outer with soft foam for the interior of the ear cushions. So that you may receive Active Noise-Cancellation (ANC) performance that is even greater in a headset that you can wear for whatever length you wish.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-details-desc-2.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-5.jpg\"]','DD-136',0,13,0,1,1,3,0,0,2384,152,NULL,NULL,12.00,10.00,10.00,654.00,NULL,98580,'2024-06-04 23:59:48','2024-06-04 23:59:48','in_stock',7,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(40,'Samsung Odyssey G7 32-Inch Curved Gaming Monitor (Digital)','It complies with Microsoft\'s Open Office criteria and is specially tuned for outstanding conversations in open-plan workplaces and other loud environments when the microphone boom arm is lowered in Performance Mode','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-details-desc-2.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-19.jpg\"]','9Q-191-A1',0,15,0,1,0,4,0,0,758,644.3,NULL,NULL,20.00,19.00,12.00,757.00,NULL,61570,'2024-06-04 23:59:48','2024-06-04 23:59:48','in_stock',4,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(41,'Sony X900H 4K Ultra HD Smart LED TV','Additionally, this includes a redesigned microphone boom arm that is 33 percent shorter than the Evolve 75 and offers the industry-leading call performance for which Jabra headsets are known.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-details-desc-2.jpg\",\"main\\/products\\/product-details-desc-3.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-9.jpg\"]','6H-177-A1',0,12,0,1,0,3,0,0,927,NULL,NULL,NULL,13.00,17.00,18.00,676.00,NULL,151439,'2024-06-04 23:59:48','2024-06-04 23:59:48','in_stock',6,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(42,'TCL 6-Series 4K UHD Dolby Vision HDR QLED Roku Smart TV','Jabra Evolve2 75 USB-A MS Teams Stereo Headset The Jabra Evolve2 75 USB-A MS Teams Stereo Headset has replaced previous hybrid working standards. Industry-leading call quality thanks to top-notch audio engineering.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]','UQ-127-A1',0,19,0,1,1,2,0,0,1914,NULL,NULL,NULL,20.00,16.00,17.00,862.00,NULL,172739,'2024-06-04 23:59:48','2024-06-04 23:59:48','in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(43,'Vizio OLED65-H1 65-Inch 4K OLED Smart TV','Jabra Evolve2 75 USB-A MS Teams Stereo Headset The Jabra Evolve2 75 USB-A MS Teams Stereo Headset has replaced previous hybrid working standards. Industry-leading call quality thanks to top-notch audio engineering.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-6.jpg\"]','KP-197-A1',0,17,0,1,0,3,0,0,2040,NULL,NULL,NULL,13.00,11.00,16.00,566.00,NULL,58985,'2024-06-04 23:59:48','2024-06-04 23:59:48','in_stock',6,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(44,'Hisense U8G Quantum Series 4K ULED Android TV (Digital)','We can provide exceptional noise isolation and the best all-day comfort by mixing firm foam for the outer with soft foam for the interior of the ear cushions. So that you may receive Active Noise-Cancellation (ANC) performance that is even greater in a headset that you can wear for whatever length you wish.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-17.jpg\"]','NF-172-A1',0,18,0,1,1,4,0,0,1120,896,NULL,NULL,13.00,19.00,14.00,647.00,NULL,64570,'2024-06-04 23:59:48','2024-06-04 23:59:48','in_stock',3,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(45,'LG C1 Series 4K OLED Smart TV','Jabra Evolve2 75 USB-A MS Teams Stereo Headset The Jabra Evolve2 75 USB-A MS Teams Stereo Headset has replaced previous hybrid working standards. Industry-leading call quality thanks to top-notch audio engineering.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-details-desc-2.jpg\",\"main\\/products\\/product-details-desc-3.jpg\",\"main\\/products\\/product-13.jpg\"]','TU-195',0,15,0,1,0,1,0,0,1904,1032,NULL,NULL,14.00,10.00,20.00,856.00,NULL,75225,'2024-06-04 23:59:48','2024-06-04 23:59:48','in_stock',2,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(46,'Samsung QN85A Neo QLED 4K Smart TV','We can provide exceptional noise isolation and the best all-day comfort by mixing firm foam for the outer with soft foam for the interior of the ear cushions. So that you may receive Active Noise-Cancellation (ANC) performance that is even greater in a headset that you can wear for whatever length you wish.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-2.jpg\"]','AG-129',0,17,0,1,1,1,0,0,777,526,NULL,NULL,11.00,19.00,17.00,691.00,NULL,174276,'2024-06-04 23:59:48','2024-06-04 23:59:48','in_stock',8,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(47,'Sony A90J 4K OLED Smart TV','With this intelligent headset, you can stay connected and productive from the first call of the day to the last train home. With an ergonomic earcup design, this headset invented a brand-new dual-foam technology. You will be comfortable from the first call to the last thanks to the re-engineered leatherette ear cushion design that allows for better airflow.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]','ZT-139-A1',0,15,0,1,1,4,0,0,2284,NULL,NULL,NULL,18.00,17.00,17.00,843.00,NULL,1066,'2024-06-04 23:59:48','2024-06-04 23:59:48','in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(48,'Apple TV 4K (2nd Generation) (Digital)','We can provide exceptional noise isolation and the best all-day comfort by mixing firm foam for the outer with soft foam for the interior of the ear cushions. So that you may receive Active Noise-Cancellation (ANC) performance that is even greater in a headset that you can wear for whatever length you wish.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-details-desc-3.jpg\",\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-13.jpg\"]','G9-169',0,16,0,1,0,5,0,0,1587,610,NULL,NULL,10.00,11.00,15.00,625.00,NULL,96506,'2024-06-04 23:59:48','2024-06-04 23:59:48','in_stock',2,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(49,'Roku Ultra 2020 Streaming Media Player','We can provide exceptional noise isolation and the best all-day comfort by mixing firm foam for the outer with soft foam for the interior of the ear cushions. So that you may receive Active Noise-Cancellation (ANC) performance that is even greater in a headset that you can wear for whatever length you wish.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-details-desc-2.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-7.jpg\"]','LM-172',0,14,0,1,1,3,0,0,663,122,NULL,NULL,12.00,12.00,15.00,746.00,NULL,85595,'2024-06-04 23:59:48','2024-06-04 23:59:48','in_stock',3,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(50,'Amazon Fire TV Stick 4K Max','The headset also offers MS Teams Certifications and other features like Busylight, Calls controls, Voice guiding, and Wireless range (ft): Up to 100 feet. Best-in-class. Boom The most recent Jabra Evolve2 75 USB-A MS Teams Stereo Headset offers professional-grade call performance that leads the industry, yet Evolve2 75 wins best-in-class.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-9.jpg\"]','5I-127-A1',0,20,0,1,0,1,0,0,947,NULL,NULL,NULL,13.00,20.00,13.00,593.00,NULL,24655,'2024-06-04 23:59:48','2024-06-04 23:59:48','in_stock',2,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(51,'Google Chromecast with Google TV','Jabra Evolve2 75 USB-A MS Teams Stereo Headset The Jabra Evolve2 75 USB-A MS Teams Stereo Headset has replaced previous hybrid working standards. Industry-leading call quality thanks to top-notch audio engineering.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-5.jpg\"]','OC-135-A1',0,19,0,1,1,1,0,0,1461,NULL,NULL,NULL,15.00,17.00,10.00,789.00,NULL,10280,'2024-06-04 23:59:48','2024-06-04 23:59:48','in_stock',2,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(52,'NVIDIA SHIELD TV Pro (Digital)','Jabra Evolve2 75 USB-A MS Teams Stereo Headset The Jabra Evolve2 75 USB-A MS Teams Stereo Headset has replaced previous hybrid working standards. Industry-leading call quality thanks to top-notch audio engineering.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-9.jpg\"]','3E-182',0,11,0,1,0,5,0,0,1487,83,NULL,NULL,17.00,10.00,18.00,598.00,NULL,121912,'2024-06-04 23:59:48','2024-06-04 23:59:48','in_stock',6,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(53,'Sonos Beam Gen 2 Soundbar','It complies with Microsoft\'s Open Office criteria and is specially tuned for outstanding conversations in open-plan workplaces and other loud environments when the microphone boom arm is lowered in Performance Mode','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-3.jpg\"]','UU-163-A1',0,13,0,1,1,1,0,0,2260,NULL,NULL,NULL,16.00,11.00,11.00,678.00,NULL,87645,'2024-06-04 23:59:48','2024-06-04 23:59:48','in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(54,'Bose Smart Soundbar 900','We can provide exceptional noise isolation and the best all-day comfort by mixing firm foam for the outer with soft foam for the interior of the ear cushions. So that you may receive Active Noise-Cancellation (ANC) performance that is even greater in a headset that you can wear for whatever length you wish.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]','RC-154',0,18,0,1,0,1,0,0,1729,207,NULL,NULL,16.00,13.00,12.00,527.00,NULL,108503,'2024-06-04 23:59:48','2024-06-04 23:59:48','in_stock',2,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(55,'JBL Bar 9.1 Soundbar with Dolby Atmos','It complies with Microsoft\'s Open Office criteria and is specially tuned for outstanding conversations in open-plan workplaces and other loud environments when the microphone boom arm is lowered in Performance Mode','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-8.jpg\"]','C2-196',0,15,0,1,1,3,0,0,1102,509,NULL,NULL,11.00,11.00,17.00,701.00,NULL,48241,'2024-06-04 23:59:48','2024-06-04 23:59:48','in_stock',7,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(56,'Sennheiser Ambeo Soundbar (Digital)','It complies with Microsoft\'s Open Office criteria and is specially tuned for outstanding conversations in open-plan workplaces and other loud environments when the microphone boom arm is lowered in Performance Mode','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-details-desc-3.jpg\",\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-2.jpg\"]','X4-156',0,15,0,1,1,4,0,0,549,522,NULL,NULL,19.00,12.00,10.00,868.00,NULL,96945,'2024-06-04 23:59:48','2024-06-04 23:59:48','in_stock',2,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(57,'Sony HT-A9 Home Theater System','Additionally, this includes a redesigned microphone boom arm that is 33 percent shorter than the Evolve 75 and offers the industry-leading call performance for which Jabra headsets are known.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-details-desc-3.jpg\",\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]','BH-124-A1',0,18,0,1,1,4,0,0,1838,NULL,NULL,NULL,20.00,13.00,19.00,622.00,NULL,133379,'2024-06-04 23:59:48','2024-06-04 23:59:48','in_stock',8,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(58,'Philips Hue White and Color Ambiance A19 LED Smart Bulb',NULL,NULL,'published','[\"main\\/products\\/product-16.jpg\"]','WZ-109-A1',0,11,0,1,0,5,1,0,1842,NULL,NULL,NULL,10.00,18.00,14.00,794.00,NULL,0,'2024-06-04 23:59:48','2024-06-04 23:59:48','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL),(59,'Philips Hue White and Color Ambiance A19 LED Smart Bulb',NULL,NULL,'published','[\"main\\/products\\/product-8.jpg\"]','WZ-109-A1-A2',0,11,0,1,0,5,1,0,1842,NULL,NULL,NULL,10.00,18.00,14.00,794.00,NULL,0,'2024-06-04 23:59:48','2024-06-04 23:59:48','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(60,'Philips Hue White and Color Ambiance A19 LED Smart Bulb',NULL,NULL,'published','[\"main\\/products\\/product-18.jpg\"]','WZ-109-A1-A3',0,11,0,1,0,5,1,0,1842,NULL,NULL,NULL,10.00,18.00,14.00,794.00,NULL,0,'2024-06-04 23:59:48','2024-06-04 23:59:48','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(61,'Philips Hue White and Color Ambiance A19 LED Smart Bulb',NULL,NULL,'published','[\"main\\/products\\/product-6.jpg\"]','WZ-109-A1-A4',0,11,0,1,0,5,1,0,1842,NULL,NULL,NULL,10.00,18.00,14.00,794.00,NULL,0,'2024-06-04 23:59:48','2024-06-04 23:59:48','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(62,'Samsung Galaxy Tab S7+ 12.4-Inch Android Tablet',NULL,NULL,'published','[\"main\\/products\\/product-18.jpg\"]','V2-170-A1',0,20,0,1,0,3,1,0,1906,NULL,NULL,NULL,20.00,16.00,16.00,801.00,NULL,0,'2024-06-04 23:59:48','2024-06-04 23:59:48','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL),(63,'GoPro HERO9 Black Action Camera',NULL,NULL,'published','[\"main\\/products\\/product-19.jpg\"]','KG-150-A1',0,10,0,1,0,3,1,0,1357,NULL,NULL,NULL,11.00,12.00,11.00,672.00,NULL,0,'2024-06-04 23:59:48','2024-06-04 23:59:48','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL),(64,'GoPro HERO9 Black Action Camera',NULL,NULL,'published','[\"main\\/products\\/product-9.jpg\"]','KG-150-A1-A2',0,10,0,1,0,3,1,0,1357,NULL,NULL,NULL,11.00,12.00,11.00,672.00,NULL,0,'2024-06-04 23:59:48','2024-06-04 23:59:48','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(65,'GoPro HERO9 Black Action Camera',NULL,NULL,'published','[\"main\\/products\\/product-details-desc-2.jpg\"]','KG-150-A1-A3',0,10,0,1,0,3,1,0,1357,NULL,NULL,NULL,11.00,12.00,11.00,672.00,NULL,0,'2024-06-04 23:59:48','2024-06-04 23:59:48','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(66,'GoPro HERO9 Black Action Camera',NULL,NULL,'published','[\"main\\/products\\/product-18.jpg\"]','KG-150-A1-A4',0,10,0,1,0,3,1,0,1357,NULL,NULL,NULL,11.00,12.00,11.00,672.00,NULL,0,'2024-06-04 23:59:48','2024-06-04 23:59:48','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(67,'GoPro HERO9 Black Action Camera',NULL,NULL,'published','[\"main\\/products\\/product-12.jpg\"]','KG-150-A1-A5',0,10,0,1,0,3,1,0,1357,NULL,NULL,NULL,11.00,12.00,11.00,672.00,NULL,0,'2024-06-04 23:59:48','2024-06-04 23:59:48','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(68,'Ring Video Doorbell Pro',NULL,NULL,'published','[\"main\\/products\\/product-details-desc-2.jpg\"]','R3-161-A1',0,12,0,1,0,4,1,0,1514,NULL,NULL,NULL,10.00,16.00,15.00,503.00,NULL,0,'2024-06-04 23:59:48','2024-06-04 23:59:48','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL),(69,'Samsung QN90A Neo QLED 4K Smart TV (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-7.jpg\"]','QW-197-A1',0,18,0,1,0,2,1,0,2066,1673.46,NULL,NULL,18.00,12.00,10.00,890.00,NULL,0,'2024-06-04 23:59:48','2024-06-04 23:59:48','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,NULL,NULL),(70,'Samsung QN90A Neo QLED 4K Smart TV (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-10.jpg\"]','QW-197-A1-A2',0,18,0,1,0,2,1,0,2066,1838.74,NULL,NULL,18.00,12.00,10.00,890.00,NULL,0,'2024-06-04 23:59:48','2024-06-04 23:59:48','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(71,'Samsung QN90A Neo QLED 4K Smart TV (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-20.jpg\"]','QW-197-A1-A3',0,18,0,1,0,2,1,0,2066,1528.84,NULL,NULL,18.00,12.00,10.00,890.00,NULL,0,'2024-06-04 23:59:48','2024-06-04 23:59:48','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(72,'Samsung QN90A Neo QLED 4K Smart TV (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-18.jpg\"]','QW-197-A1-A4',0,18,0,1,0,2,1,0,2066,1446.2,NULL,NULL,18.00,12.00,10.00,890.00,NULL,0,'2024-06-04 23:59:48','2024-06-04 23:59:48','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(73,'LG OLED C1 Series 4K Smart TV',NULL,NULL,'published','[\"main\\/products\\/product-13.jpg\"]','GW-112-A1',0,15,0,1,0,3,1,0,669,NULL,NULL,NULL,10.00,18.00,20.00,839.00,NULL,0,'2024-06-04 23:59:48','2024-06-04 23:59:48','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL),(74,'LG OLED C1 Series 4K Smart TV',NULL,NULL,'published','[\"main\\/products\\/product-2.jpg\"]','GW-112-A1-A2',0,15,0,1,0,3,1,0,669,NULL,NULL,NULL,10.00,18.00,20.00,839.00,NULL,0,'2024-06-04 23:59:48','2024-06-04 23:59:48','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(75,'Apple Watch Series 7',NULL,NULL,'published','[\"main\\/products\\/product-details-desc-1.jpg\"]','MC-167-A1',0,12,0,1,0,2,1,0,1179,NULL,NULL,NULL,13.00,17.00,19.00,570.00,NULL,0,'2024-06-04 23:59:48','2024-06-04 23:59:48','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL),(76,'Apple Watch Series 7',NULL,NULL,'published','[\"main\\/products\\/product-5.jpg\"]','MC-167-A1-A2',0,12,0,1,0,2,1,0,1179,NULL,NULL,NULL,13.00,17.00,19.00,570.00,NULL,0,'2024-06-04 23:59:48','2024-06-04 23:59:48','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(77,'Apple Watch Series 7',NULL,NULL,'published','[\"main\\/products\\/product-10.jpg\"]','MC-167-A1-A3',0,12,0,1,0,2,1,0,1179,NULL,NULL,NULL,13.00,17.00,19.00,570.00,NULL,0,'2024-06-04 23:59:48','2024-06-04 23:59:48','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(78,'HP Spectre x360 14-Inch Convertible Laptop (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-details-desc-2.jpg\"]','M1-139-A1',0,10,0,1,0,3,1,0,1864,1621.68,NULL,NULL,10.00,16.00,14.00,638.00,NULL,0,'2024-06-04 23:59:48','2024-06-04 23:59:48','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,NULL,NULL),(79,'HP Spectre x360 14-Inch Convertible Laptop (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-8.jpg\"]','M1-139-A1-A2',0,10,0,1,0,3,1,0,1864,1565.76,NULL,NULL,10.00,16.00,14.00,638.00,NULL,0,'2024-06-04 23:59:48','2024-06-04 23:59:48','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(80,'Razer Blade 15 Advanced Gaming Laptop',NULL,NULL,'published','[\"main\\/products\\/product-17.jpg\"]','YI-172-A1',0,18,0,1,0,1,1,0,2234,NULL,NULL,NULL,12.00,13.00,20.00,524.00,NULL,0,'2024-06-04 23:59:48','2024-06-04 23:59:48','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL),(81,'Razer Blade 15 Advanced Gaming Laptop',NULL,NULL,'published','[\"main\\/products\\/product-8.jpg\"]','YI-172-A1-A2',0,18,0,1,0,1,1,0,2234,NULL,NULL,NULL,12.00,13.00,20.00,524.00,NULL,0,'2024-06-04 23:59:48','2024-06-04 23:59:48','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(82,'Alienware m15 R6 Gaming Laptop',NULL,NULL,'published','[\"main\\/products\\/product-13.jpg\"]','PC-197-A1',0,16,0,1,0,5,1,0,607,NULL,NULL,NULL,16.00,19.00,17.00,659.00,NULL,0,'2024-06-04 23:59:48','2024-06-04 23:59:48','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL),(83,'Alienware m15 R6 Gaming Laptop',NULL,NULL,'published','[\"main\\/products\\/product-2.jpg\"]','PC-197-A1-A2',0,16,0,1,0,5,1,0,607,NULL,NULL,NULL,16.00,19.00,17.00,659.00,NULL,0,'2024-06-04 23:59:48','2024-06-04 23:59:48','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(84,'Alienware m15 R6 Gaming Laptop',NULL,NULL,'published','[\"main\\/products\\/product-15.jpg\"]','PC-197-A1-A3',0,16,0,1,0,5,1,0,607,NULL,NULL,NULL,16.00,19.00,17.00,659.00,NULL,0,'2024-06-04 23:59:48','2024-06-04 23:59:48','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(85,'Alienware m15 R6 Gaming Laptop',NULL,NULL,'published','[\"main\\/products\\/product-5.jpg\"]','PC-197-A1-A4',0,16,0,1,0,5,1,0,607,NULL,NULL,NULL,16.00,19.00,17.00,659.00,NULL,0,'2024-06-04 23:59:48','2024-06-04 23:59:48','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(86,'Corsair K95 RGB Platinum XT Mechanical Gaming Keyboard',NULL,NULL,'published','[\"main\\/products\\/product-18.jpg\"]','SZ-149-A1',0,16,0,1,0,5,1,0,306,NULL,NULL,NULL,18.00,15.00,20.00,750.00,NULL,0,'2024-06-04 23:59:48','2024-06-04 23:59:48','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL),(87,'Corsair K95 RGB Platinum XT Mechanical Gaming Keyboard',NULL,NULL,'published','[\"main\\/products\\/product-17.jpg\"]','SZ-149-A1-A2',0,16,0,1,0,5,1,0,306,NULL,NULL,NULL,18.00,15.00,20.00,750.00,NULL,0,'2024-06-04 23:59:48','2024-06-04 23:59:48','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(88,'SteelSeries Arctis Pro Wireless Gaming Headset',NULL,NULL,'published','[\"main\\/products\\/product-10.jpg\"]','5N-136-A1',0,11,0,1,0,5,1,0,2480,NULL,NULL,NULL,17.00,18.00,11.00,536.00,NULL,0,'2024-06-04 23:59:48','2024-06-04 23:59:48','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL),(89,'SteelSeries Arctis Pro Wireless Gaming Headset',NULL,NULL,'published','[\"main\\/products\\/product-18.jpg\"]','5N-136-A1-A2',0,11,0,1,0,5,1,0,2480,NULL,NULL,NULL,17.00,18.00,11.00,536.00,NULL,0,'2024-06-04 23:59:48','2024-06-04 23:59:48','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(90,'SteelSeries Arctis Pro Wireless Gaming Headset',NULL,NULL,'published','[\"main\\/products\\/product-details-desc-1.jpg\"]','5N-136-A1-A3',0,11,0,1,0,5,1,0,2480,NULL,NULL,NULL,17.00,18.00,11.00,536.00,NULL,0,'2024-06-04 23:59:48','2024-06-04 23:59:48','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(91,'Elgato Stream Deck XL',NULL,NULL,'published','[\"main\\/products\\/product-8.jpg\"]','LI-199-A1',0,10,0,1,0,1,1,0,877,NULL,NULL,NULL,14.00,16.00,13.00,873.00,NULL,0,'2024-06-04 23:59:48','2024-06-04 23:59:48','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL),(92,'Elgato Stream Deck XL',NULL,NULL,'published','[\"main\\/products\\/product-9.jpg\"]','LI-199-A1-A2',0,10,0,1,0,1,1,0,877,NULL,NULL,NULL,14.00,16.00,13.00,873.00,NULL,0,'2024-06-04 23:59:48','2024-06-04 23:59:48','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(93,'Elgato Stream Deck XL',NULL,NULL,'published','[\"main\\/products\\/product-15.jpg\"]','LI-199-A1-A3',0,10,0,1,0,1,1,0,877,NULL,NULL,NULL,14.00,16.00,13.00,873.00,NULL,0,'2024-06-04 23:59:48','2024-06-04 23:59:48','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(94,'PlayStation 5 Console (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-7.jpg\"]','LI-121-A1',0,16,0,1,0,5,1,0,943,763.83,NULL,NULL,14.00,14.00,10.00,817.00,NULL,0,'2024-06-04 23:59:48','2024-06-04 23:59:48','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,NULL,NULL),(95,'Xbox Series X Console',NULL,NULL,'published','[\"main\\/products\\/product-16.jpg\"]','VH-169-A1',0,12,0,1,0,3,1,0,1111,NULL,NULL,NULL,15.00,13.00,14.00,524.00,NULL,0,'2024-06-04 23:59:48','2024-06-04 23:59:48','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL),(96,'Xbox Series X Console',NULL,NULL,'published','[\"main\\/products\\/product-17.jpg\"]','VH-169-A1-A2',0,12,0,1,0,3,1,0,1111,NULL,NULL,NULL,15.00,13.00,14.00,524.00,NULL,0,'2024-06-04 23:59:48','2024-06-04 23:59:48','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(97,'Xbox Series X Console',NULL,NULL,'published','[\"main\\/products\\/product-19.jpg\"]','VH-169-A1-A3',0,12,0,1,0,3,1,0,1111,NULL,NULL,NULL,15.00,13.00,14.00,524.00,NULL,0,'2024-06-04 23:59:48','2024-06-04 23:59:48','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(98,'LG UltraGear 27GN950-B 4K Gaming Monitor',NULL,NULL,'published','[\"main\\/products\\/product-18.jpg\"]','QA-105-A1',0,17,0,1,0,1,1,0,2010,NULL,NULL,NULL,14.00,11.00,18.00,877.00,NULL,0,'2024-06-04 23:59:48','2024-06-04 23:59:48','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL),(99,'LG UltraGear 27GN950-B 4K Gaming Monitor',NULL,NULL,'published','[\"main\\/products\\/product-details-desc-1.jpg\"]','QA-105-A1-A2',0,17,0,1,0,1,1,0,2010,NULL,NULL,NULL,14.00,11.00,18.00,877.00,NULL,0,'2024-06-04 23:59:48','2024-06-04 23:59:48','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(100,'LG UltraGear 27GN950-B 4K Gaming Monitor',NULL,NULL,'published','[\"main\\/products\\/product-2.jpg\"]','QA-105-A1-A3',0,17,0,1,0,1,1,0,2010,NULL,NULL,NULL,14.00,11.00,18.00,877.00,NULL,0,'2024-06-04 23:59:48','2024-06-04 23:59:48','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(101,'ASUS ROG Swift PG279QM 27-Inch Gaming Monitor',NULL,NULL,'published','[\"main\\/products\\/product-12.jpg\"]','XD-117-A1',0,19,0,1,0,1,1,0,813,NULL,NULL,NULL,10.00,18.00,12.00,574.00,NULL,0,'2024-06-04 23:59:48','2024-06-04 23:59:48','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL),(102,'ASUS ROG Swift PG279QM 27-Inch Gaming Monitor',NULL,NULL,'published','[\"main\\/products\\/product-6.jpg\"]','XD-117-A1-A2',0,19,0,1,0,1,1,0,813,NULL,NULL,NULL,10.00,18.00,12.00,574.00,NULL,0,'2024-06-04 23:59:48','2024-06-04 23:59:48','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(103,'ASUS ROG Swift PG279QM 27-Inch Gaming Monitor',NULL,NULL,'published','[\"main\\/products\\/product-2.jpg\"]','XD-117-A1-A3',0,19,0,1,0,1,1,0,813,NULL,NULL,NULL,10.00,18.00,12.00,574.00,NULL,0,'2024-06-04 23:59:48','2024-06-04 23:59:48','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(104,'Dell UltraSharp U2720Q 27-Inch 4K USB-C Monitor',NULL,NULL,'published','[\"main\\/products\\/product-2.jpg\"]','2K-155-A1',0,14,0,1,0,1,1,0,1499,NULL,NULL,NULL,11.00,12.00,10.00,659.00,NULL,0,'2024-06-04 23:59:48','2024-06-04 23:59:48','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL),(105,'Dell UltraSharp U2720Q 27-Inch 4K USB-C Monitor',NULL,NULL,'published','[\"main\\/products\\/product-20.jpg\"]','2K-155-A1-A2',0,14,0,1,0,1,1,0,1499,NULL,NULL,NULL,11.00,12.00,10.00,659.00,NULL,0,'2024-06-04 23:59:48','2024-06-04 23:59:48','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(106,'Dell UltraSharp U2720Q 27-Inch 4K USB-C Monitor',NULL,NULL,'published','[\"main\\/products\\/product-1.jpg\"]','2K-155-A1-A3',0,14,0,1,0,1,1,0,1499,NULL,NULL,NULL,11.00,12.00,10.00,659.00,NULL,0,'2024-06-04 23:59:48','2024-06-04 23:59:48','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(107,'HP Z27k G3 4K USB-C Monitor',NULL,NULL,'published','[\"main\\/products\\/product-12.jpg\"]','YY-185-A1',0,12,0,1,0,3,1,0,635,NULL,NULL,NULL,15.00,15.00,19.00,788.00,NULL,0,'2024-06-04 23:59:48','2024-06-04 23:59:48','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL),(108,'HP Z27k G3 4K USB-C Monitor',NULL,NULL,'published','[\"main\\/products\\/product-10.jpg\"]','YY-185-A1-A2',0,12,0,1,0,3,1,0,635,NULL,NULL,NULL,15.00,15.00,19.00,788.00,NULL,0,'2024-06-04 23:59:48','2024-06-04 23:59:48','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(109,'Samsung Odyssey G7 32-Inch Curved Gaming Monitor (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-13.jpg\"]','9Q-191-A1',0,15,0,1,0,4,1,0,758,644.3,NULL,NULL,20.00,19.00,12.00,757.00,NULL,0,'2024-06-04 23:59:48','2024-06-04 23:59:48','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,NULL,NULL),(110,'Samsung Odyssey G7 32-Inch Curved Gaming Monitor (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-6.jpg\"]','9Q-191-A1-A2',0,15,0,1,0,4,1,0,758,591.24,NULL,NULL,20.00,19.00,12.00,757.00,NULL,0,'2024-06-04 23:59:48','2024-06-04 23:59:48','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(111,'Samsung Odyssey G7 32-Inch Curved Gaming Monitor (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-12.jpg\"]','9Q-191-A1-A3',0,15,0,1,0,4,1,0,758,644.3,NULL,NULL,20.00,19.00,12.00,757.00,NULL,0,'2024-06-04 23:59:48','2024-06-04 23:59:48','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(112,'Sony X900H 4K Ultra HD Smart LED TV',NULL,NULL,'published','[\"main\\/products\\/product-details-desc-1.jpg\"]','6H-177-A1',0,12,0,1,0,3,1,0,927,NULL,NULL,NULL,13.00,17.00,18.00,676.00,NULL,0,'2024-06-04 23:59:48','2024-06-04 23:59:48','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL),(113,'Sony X900H 4K Ultra HD Smart LED TV',NULL,NULL,'published','[\"main\\/products\\/product-8.jpg\"]','6H-177-A1-A2',0,12,0,1,0,3,1,0,927,NULL,NULL,NULL,13.00,17.00,18.00,676.00,NULL,0,'2024-06-04 23:59:48','2024-06-04 23:59:48','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(114,'Sony X900H 4K Ultra HD Smart LED TV',NULL,NULL,'published','[\"main\\/products\\/product-details-desc-2.jpg\"]','6H-177-A1-A3',0,12,0,1,0,3,1,0,927,NULL,NULL,NULL,13.00,17.00,18.00,676.00,NULL,0,'2024-06-04 23:59:48','2024-06-04 23:59:48','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(115,'Sony X900H 4K Ultra HD Smart LED TV',NULL,NULL,'published','[\"main\\/products\\/product-details-desc-3.jpg\"]','6H-177-A1-A4',0,12,0,1,0,3,1,0,927,NULL,NULL,NULL,13.00,17.00,18.00,676.00,NULL,0,'2024-06-04 23:59:48','2024-06-04 23:59:48','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(116,'TCL 6-Series 4K UHD Dolby Vision HDR QLED Roku Smart TV',NULL,NULL,'published','[\"main\\/products\\/product-1.jpg\"]','UQ-127-A1',0,19,0,1,0,2,1,0,1914,NULL,NULL,NULL,20.00,16.00,17.00,862.00,NULL,0,'2024-06-04 23:59:48','2024-06-04 23:59:48','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL),(117,'Vizio OLED65-H1 65-Inch 4K OLED Smart TV',NULL,NULL,'published','[\"main\\/products\\/product-1.jpg\"]','KP-197-A1',0,17,0,1,0,3,1,0,2040,NULL,NULL,NULL,13.00,11.00,16.00,566.00,NULL,0,'2024-06-04 23:59:48','2024-06-04 23:59:48','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL),(118,'Vizio OLED65-H1 65-Inch 4K OLED Smart TV',NULL,NULL,'published','[\"main\\/products\\/product-2.jpg\"]','KP-197-A1-A2',0,17,0,1,0,3,1,0,2040,NULL,NULL,NULL,13.00,11.00,16.00,566.00,NULL,0,'2024-06-04 23:59:48','2024-06-04 23:59:48','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(119,'Hisense U8G Quantum Series 4K ULED Android TV (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-4.jpg\"]','NF-172-A1',0,18,0,1,0,4,1,0,1120,896,NULL,NULL,13.00,19.00,14.00,647.00,NULL,0,'2024-06-04 23:59:48','2024-06-04 23:59:48','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,NULL,NULL),(120,'Hisense U8G Quantum Series 4K ULED Android TV (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-18.jpg\"]','NF-172-A1-A2',0,18,0,1,0,4,1,0,1120,851.2,NULL,NULL,13.00,19.00,14.00,647.00,NULL,0,'2024-06-04 23:59:48','2024-06-04 23:59:48','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(121,'Hisense U8G Quantum Series 4K ULED Android TV (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-8.jpg\"]','NF-172-A1-A3',0,18,0,1,0,4,1,0,1120,996.8,NULL,NULL,13.00,19.00,14.00,647.00,NULL,0,'2024-06-04 23:59:48','2024-06-04 23:59:48','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(122,'Sony A90J 4K OLED Smart TV',NULL,NULL,'published','[\"main\\/products\\/product-11.jpg\"]','ZT-139-A1',0,15,0,1,0,4,1,0,2284,NULL,NULL,NULL,18.00,17.00,17.00,843.00,NULL,0,'2024-06-04 23:59:48','2024-06-04 23:59:48','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL),(123,'Sony A90J 4K OLED Smart TV',NULL,NULL,'published','[\"main\\/products\\/product-3.jpg\"]','ZT-139-A1-A2',0,15,0,1,0,4,1,0,2284,NULL,NULL,NULL,18.00,17.00,17.00,843.00,NULL,0,'2024-06-04 23:59:48','2024-06-04 23:59:48','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(124,'Amazon Fire TV Stick 4K Max',NULL,NULL,'published','[\"main\\/products\\/product-17.jpg\"]','5I-127-A1',0,20,0,1,0,1,1,0,947,NULL,NULL,NULL,13.00,20.00,13.00,593.00,NULL,0,'2024-06-04 23:59:48','2024-06-04 23:59:48','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL),(125,'Amazon Fire TV Stick 4K Max',NULL,NULL,'published','[\"main\\/products\\/product-11.jpg\"]','5I-127-A1-A2',0,20,0,1,0,1,1,0,947,NULL,NULL,NULL,13.00,20.00,13.00,593.00,NULL,0,'2024-06-04 23:59:48','2024-06-04 23:59:48','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(126,'Amazon Fire TV Stick 4K Max',NULL,NULL,'published','[\"main\\/products\\/product-9.jpg\"]','5I-127-A1-A3',0,20,0,1,0,1,1,0,947,NULL,NULL,NULL,13.00,20.00,13.00,593.00,NULL,0,'2024-06-04 23:59:48','2024-06-04 23:59:48','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(127,'Google Chromecast with Google TV',NULL,NULL,'published','[\"main\\/products\\/product-6.jpg\"]','OC-135-A1',0,19,0,1,0,1,1,0,1461,NULL,NULL,NULL,15.00,17.00,10.00,789.00,NULL,0,'2024-06-04 23:59:48','2024-06-04 23:59:48','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL),(128,'Sonos Beam Gen 2 Soundbar',NULL,NULL,'published','[\"main\\/products\\/product-20.jpg\"]','UU-163-A1',0,13,0,1,0,1,1,0,2260,NULL,NULL,NULL,16.00,11.00,11.00,678.00,NULL,0,'2024-06-04 23:59:48','2024-06-04 23:59:48','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL),(129,'Sonos Beam Gen 2 Soundbar',NULL,NULL,'published','[\"main\\/products\\/product-3.jpg\"]','UU-163-A1-A2',0,13,0,1,0,1,1,0,2260,NULL,NULL,NULL,16.00,11.00,11.00,678.00,NULL,0,'2024-06-04 23:59:48','2024-06-04 23:59:48','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(130,'Sony HT-A9 Home Theater System',NULL,NULL,'published','[\"main\\/products\\/product-details-desc-3.jpg\"]','BH-124-A1',0,18,0,1,0,4,1,0,1838,NULL,NULL,NULL,20.00,13.00,19.00,622.00,NULL,0,'2024-06-04 23:59:48','2024-06-04 23:59:48','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL),(131,'Sony HT-A9 Home Theater System',NULL,NULL,'published','[\"main\\/products\\/product-2.jpg\"]','BH-124-A1-A2',0,18,0,1,0,4,1,0,1838,NULL,NULL,NULL,20.00,13.00,19.00,622.00,NULL,0,'2024-06-04 23:59:48','2024-06-04 23:59:48','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(132,'Sony HT-A9 Home Theater System',NULL,NULL,'published','[\"main\\/products\\/product-12.jpg\"]','BH-124-A1-A3',0,18,0,1,0,4,1,0,1838,NULL,NULL,NULL,20.00,13.00,19.00,622.00,NULL,0,'2024-06-04 23:59:48','2024-06-04 23:59:48','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(133,'Sony HT-A9 Home Theater System',NULL,NULL,'published','[\"main\\/products\\/product-details-desc-2.jpg\"]','BH-124-A1-A4',0,18,0,1,0,4,1,0,1838,NULL,NULL,NULL,20.00,13.00,19.00,622.00,NULL,0,'2024-06-04 23:59:48','2024-06-04 23:59:48','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0);
/*!40000 ALTER TABLE `ec_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products_translations`
--

DROP TABLE IF EXISTS `ec_products_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_products_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_products_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_products_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products_translations`
--

LOCK TABLES `ec_products_translations` WRITE;
/*!40000 ALTER TABLE `ec_products_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_products_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_review_replies`
--

DROP TABLE IF EXISTS `ec_review_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_review_replies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `review_id` bigint unsigned NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_review_replies_review_id_user_id_unique` (`review_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_review_replies`
--

LOCK TABLES `ec_review_replies` WRITE;
/*!40000 ALTER TABLE `ec_review_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_review_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_reviews`
--

DROP TABLE IF EXISTS `ec_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_reviews` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned DEFAULT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` bigint unsigned NOT NULL,
  `star` double(8,2) NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_reviews_product_id_customer_id_unique` (`product_id`,`customer_id`),
  KEY `ec_reviews_product_id_customer_id_status_created_at_index` (`product_id`,`customer_id`,`status`,`created_at`),
  KEY `review_relation_index` (`product_id`,`customer_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_reviews`
--

LOCK TABLES `ec_reviews` WRITE;
/*!40000 ALTER TABLE `ec_reviews` DISABLE KEYS */;
INSERT INTO `ec_reviews` VALUES (1,8,NULL,NULL,14,4.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-18.jpg\"]'),(2,5,NULL,NULL,25,4.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(3,10,NULL,NULL,57,5.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-19.jpg\"]'),(4,5,NULL,NULL,33,5.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-9.jpg\"]'),(5,6,NULL,NULL,28,4.00,'Good app, good backup service and support. Good documentation.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-9.jpg\"]'),(6,3,NULL,NULL,11,3.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-15.jpg\"]'),(7,7,NULL,NULL,56,4.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-6.jpg\"]'),(8,5,NULL,NULL,14,1.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-details-desc-1.jpg\"]'),(9,2,NULL,NULL,2,2.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-8.jpg\"]'),(10,6,NULL,NULL,23,5.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(11,8,NULL,NULL,38,4.00,'Clean & perfect source code','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-5.jpg\"]'),(12,7,NULL,NULL,45,4.00,'Good app, good backup service and support. Good documentation.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-13.jpg\"]'),(13,2,NULL,NULL,30,1.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-16.jpg\"]'),(14,2,NULL,NULL,20,1.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-16.jpg\"]'),(15,10,NULL,NULL,35,2.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-3.jpg\"]'),(16,1,NULL,NULL,32,2.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-4.jpg\"]'),(17,6,NULL,NULL,18,4.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(18,2,NULL,NULL,10,2.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(19,4,NULL,NULL,16,3.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(20,3,NULL,NULL,38,3.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-16.jpg\"]'),(21,5,NULL,NULL,39,5.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-20.jpg\"]'),(22,3,NULL,NULL,37,1.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-18.jpg\"]'),(23,6,NULL,NULL,22,3.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-17.jpg\"]'),(24,2,NULL,NULL,54,1.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-18.jpg\"]'),(25,4,NULL,NULL,27,3.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-18.jpg\"]'),(26,7,NULL,NULL,51,1.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-16.jpg\"]'),(27,10,NULL,NULL,3,4.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-6.jpg\"]'),(28,2,NULL,NULL,39,4.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(29,8,NULL,NULL,20,3.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(30,7,NULL,NULL,35,5.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-16.jpg\"]'),(31,10,NULL,NULL,7,2.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-14.jpg\"]'),(32,2,NULL,NULL,25,4.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-19.jpg\"]'),(33,4,NULL,NULL,12,4.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(34,8,NULL,NULL,35,3.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-3.jpg\"]'),(35,7,NULL,NULL,3,2.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-20.jpg\"]'),(36,2,NULL,NULL,36,1.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-15.jpg\"]'),(37,5,NULL,NULL,13,5.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-14.jpg\"]'),(38,1,NULL,NULL,4,2.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-4.jpg\"]'),(39,5,NULL,NULL,18,1.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-20.jpg\"]'),(40,6,NULL,NULL,36,1.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-15.jpg\"]'),(41,10,NULL,NULL,11,4.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-12.jpg\"]'),(42,4,NULL,NULL,57,4.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(43,5,NULL,NULL,8,4.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(44,6,NULL,NULL,21,1.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-18.jpg\"]'),(45,10,NULL,NULL,27,5.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-12.jpg\"]'),(46,5,NULL,NULL,41,5.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-19.jpg\"]'),(47,2,NULL,NULL,45,3.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-5.jpg\"]'),(48,3,NULL,NULL,39,1.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(49,10,NULL,NULL,15,1.00,'Good app, good backup service and support. Good documentation.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-20.jpg\"]'),(50,8,NULL,NULL,43,1.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-17.jpg\"]'),(51,10,NULL,NULL,50,3.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-20.jpg\"]'),(53,4,NULL,NULL,52,3.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(54,1,NULL,NULL,10,3.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-4.jpg\"]'),(55,2,NULL,NULL,52,1.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(56,8,NULL,NULL,33,1.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-details-desc-3.jpg\"]'),(57,5,NULL,NULL,5,3.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(58,1,NULL,NULL,17,2.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(59,1,NULL,NULL,24,4.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-18.jpg\"]'),(60,8,NULL,NULL,37,4.00,'Good app, good backup service and support. Good documentation.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-13.jpg\"]'),(61,4,NULL,NULL,56,2.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(62,3,NULL,NULL,2,4.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-20.jpg\"]'),(63,10,NULL,NULL,55,1.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(64,10,NULL,NULL,5,1.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-11.jpg\"]'),(66,2,NULL,NULL,42,5.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-19.jpg\"]'),(67,6,NULL,NULL,11,1.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-9.jpg\"]'),(68,10,NULL,NULL,1,4.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-17.jpg\"]'),(69,1,NULL,NULL,37,4.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(70,6,NULL,NULL,44,5.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-7.jpg\"]'),(71,6,NULL,NULL,43,4.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-16.jpg\"]'),(72,9,NULL,NULL,46,2.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-17.jpg\"]'),(74,6,NULL,NULL,20,3.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-20.jpg\"]'),(75,7,NULL,NULL,37,5.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-19.jpg\"]'),(76,4,NULL,NULL,21,5.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-19.jpg\"]'),(77,2,NULL,NULL,40,4.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-11.jpg\"]'),(78,2,NULL,NULL,7,3.00,'Best ecommerce CMS online store!','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-17.jpg\"]'),(79,9,NULL,NULL,49,2.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-20.jpg\"]'),(80,1,NULL,NULL,13,2.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(82,4,NULL,NULL,14,2.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-16.jpg\"]'),(83,4,NULL,NULL,48,3.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-details-desc-2.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(84,7,NULL,NULL,29,2.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-17.jpg\"]'),(86,10,NULL,NULL,2,4.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-16.jpg\"]'),(87,8,NULL,NULL,24,5.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-15.jpg\"]'),(88,9,NULL,NULL,8,2.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-16.jpg\"]'),(89,5,NULL,NULL,50,2.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-details-desc-3.jpg\"]'),(90,1,NULL,NULL,18,2.00,'Clean & perfect source code','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(91,6,NULL,NULL,6,2.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-14.jpg\"]'),(93,10,NULL,NULL,51,3.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-15.jpg\"]'),(94,5,NULL,NULL,30,1.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-10.jpg\"]'),(95,4,NULL,NULL,28,4.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-15.jpg\"]'),(96,6,NULL,NULL,7,3.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-7.jpg\"]'),(97,10,NULL,NULL,29,2.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(99,1,NULL,NULL,33,2.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(100,9,NULL,NULL,52,5.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(101,3,NULL,NULL,42,1.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(102,5,NULL,NULL,36,5.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(103,4,NULL,NULL,36,4.00,'Good app, good backup service and support. Good documentation.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-13.jpg\"]'),(104,3,NULL,NULL,46,5.00,'Good app, good backup service and support. Good documentation.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-18.jpg\"]'),(105,6,NULL,NULL,45,3.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-18.jpg\"]'),(106,2,NULL,NULL,28,1.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-6.jpg\"]'),(107,6,NULL,NULL,55,2.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-10.jpg\"]'),(108,7,NULL,NULL,30,2.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-17.jpg\"]'),(109,9,NULL,NULL,21,3.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(110,3,NULL,NULL,27,1.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(111,9,NULL,NULL,54,1.00,'Good app, good backup service and support. Good documentation.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-8.jpg\"]'),(112,6,NULL,NULL,3,3.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-19.jpg\"]'),(113,8,NULL,NULL,21,2.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-19.jpg\"]'),(115,9,NULL,NULL,42,2.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-20.jpg\"]'),(117,6,NULL,NULL,13,4.00,'Best ecommerce CMS online store!','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-5.jpg\"]'),(118,3,NULL,NULL,54,3.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-19.jpg\"]'),(120,7,NULL,NULL,5,3.00,'Good app, good backup service and support. Good documentation.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-18.jpg\"]'),(121,1,NULL,NULL,57,4.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-15.jpg\"]'),(122,6,NULL,NULL,17,4.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-12.jpg\"]'),(123,10,NULL,NULL,24,3.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(124,2,NULL,NULL,21,4.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-17.jpg\"]'),(125,1,NULL,NULL,31,3.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-18.jpg\"]'),(126,7,NULL,NULL,39,2.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-18.jpg\"]'),(127,3,NULL,NULL,6,5.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-20.jpg\"]'),(128,1,NULL,NULL,23,4.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-18.jpg\"]'),(130,9,NULL,NULL,6,2.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-4.jpg\"]'),(132,7,NULL,NULL,12,1.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-10.jpg\"]'),(134,3,NULL,NULL,20,1.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-17.jpg\"]'),(135,5,NULL,NULL,51,4.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-20.jpg\"]'),(137,3,NULL,NULL,18,4.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-7.jpg\"]'),(138,9,NULL,NULL,48,1.00,'Best ecommerce CMS online store!','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-20.jpg\"]'),(143,7,NULL,NULL,18,5.00,'Clean & perfect source code','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-details-desc-3.jpg\"]'),(144,10,NULL,NULL,37,1.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-17.jpg\"]'),(146,1,NULL,NULL,25,4.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-16.jpg\"]'),(147,4,NULL,NULL,25,1.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-17.jpg\"]'),(151,1,NULL,NULL,54,4.00,'Best ecommerce CMS online store!','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-14.jpg\"]'),(152,8,NULL,NULL,51,4.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-9.jpg\"]'),(153,10,NULL,NULL,20,1.00,'Clean & perfect source code','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(154,1,NULL,NULL,21,1.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(155,9,NULL,NULL,20,2.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-11.jpg\"]'),(156,9,NULL,NULL,35,1.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-20.jpg\"]'),(157,7,NULL,NULL,43,3.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(158,5,NULL,NULL,24,4.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-20.jpg\"]'),(159,5,NULL,NULL,46,2.00,'Good app, good backup service and support. Good documentation.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-14.jpg\"]'),(160,8,NULL,NULL,5,3.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-7.jpg\"]'),(161,3,NULL,NULL,56,5.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-19.jpg\"]'),(162,4,NULL,NULL,38,1.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-3.jpg\"]'),(163,1,NULL,NULL,48,3.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(165,4,NULL,NULL,44,3.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-17.jpg\"]'),(166,3,NULL,NULL,43,2.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-2.jpg\"]'),(167,3,NULL,NULL,26,3.00,'Best ecommerce CMS online store!','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-18.jpg\"]'),(168,7,NULL,NULL,28,4.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-15.jpg\"]'),(169,8,NULL,NULL,26,2.00,'Best ecommerce CMS online store!','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-18.jpg\"]'),(170,10,NULL,NULL,49,3.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(171,4,NULL,NULL,42,5.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-9.jpg\"]'),(172,8,NULL,NULL,15,5.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-10.jpg\"]'),(173,9,NULL,NULL,2,1.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-11.jpg\"]'),(174,5,NULL,NULL,53,5.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(176,6,NULL,NULL,4,1.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(177,5,NULL,NULL,7,4.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(178,8,NULL,NULL,3,4.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(180,6,NULL,NULL,16,1.00,'Best ecommerce CMS online store!','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-17.jpg\"]'),(182,4,NULL,NULL,49,4.00,'Clean & perfect source code','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-15.jpg\"]'),(183,6,NULL,NULL,42,3.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-10.jpg\"]'),(184,1,NULL,NULL,30,1.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-19.jpg\"]'),(185,7,NULL,NULL,57,2.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-16.jpg\"]'),(186,2,NULL,NULL,51,3.00,'Clean & perfect source code','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-15.jpg\"]'),(188,7,NULL,NULL,14,5.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-16.jpg\"]'),(189,8,NULL,NULL,57,2.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-15.jpg\"]'),(190,1,NULL,NULL,46,3.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-14.jpg\"]'),(191,8,NULL,NULL,4,4.00,'Clean & perfect source code','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-20.jpg\"]'),(193,5,NULL,NULL,34,1.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-17.jpg\"]'),(194,9,NULL,NULL,28,1.00,'Best ecommerce CMS online store!','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(195,10,NULL,NULL,47,4.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(196,8,NULL,NULL,31,3.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(197,8,NULL,NULL,29,4.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(198,6,NULL,NULL,12,1.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-12.jpg\"]'),(199,9,NULL,NULL,19,4.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-9.jpg\"]'),(200,3,NULL,NULL,49,3.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-20.jpg\"]'),(201,7,NULL,NULL,21,4.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(203,6,NULL,NULL,5,4.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(204,7,NULL,NULL,6,4.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-12.jpg\"]'),(206,6,NULL,NULL,53,1.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-20.jpg\"]'),(207,5,NULL,NULL,54,2.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-10.jpg\"]'),(208,6,NULL,NULL,31,3.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-13.jpg\"]'),(209,3,NULL,NULL,3,2.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-details-desc-3.jpg\"]'),(212,2,NULL,NULL,26,4.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-18.jpg\"]'),(214,10,NULL,NULL,32,4.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-15.jpg\"]'),(215,1,NULL,NULL,19,3.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-17.jpg\"]'),(216,2,NULL,NULL,23,1.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(217,1,NULL,NULL,12,4.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(218,6,NULL,NULL,32,4.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(219,5,NULL,NULL,32,2.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-14.jpg\"]'),(220,5,NULL,NULL,47,3.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(223,10,NULL,NULL,23,2.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-12.jpg\"]'),(224,1,NULL,NULL,41,3.00,'Best ecommerce CMS online store!','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-5.jpg\"]'),(225,1,NULL,NULL,29,3.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(226,7,NULL,NULL,20,3.00,'Clean & perfect source code','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-20.jpg\"]'),(229,10,NULL,NULL,22,1.00,'Good app, good backup service and support. Good documentation.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(231,3,NULL,NULL,22,5.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(232,6,NULL,NULL,19,2.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(233,4,NULL,NULL,47,5.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-4.jpg\"]'),(234,9,NULL,NULL,36,2.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-14.jpg\"]'),(235,8,NULL,NULL,8,3.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-11.jpg\"]'),(236,7,NULL,NULL,17,3.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-14.jpg\"]'),(238,4,NULL,NULL,26,2.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-18.jpg\"]'),(241,6,NULL,NULL,39,2.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(242,5,NULL,NULL,11,3.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-18.jpg\"]'),(244,3,NULL,NULL,15,2.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(245,2,NULL,NULL,37,1.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-20.jpg\"]'),(247,1,NULL,NULL,7,2.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-15.jpg\"]'),(249,6,NULL,NULL,30,4.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(250,1,NULL,NULL,26,1.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-5.jpg\"]'),(251,1,NULL,NULL,14,3.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-16.jpg\"]'),(252,2,NULL,NULL,29,5.00,'Clean & perfect source code','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-15.jpg\"]'),(253,1,NULL,NULL,15,1.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-8.jpg\"]'),(254,10,NULL,NULL,36,2.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-8.jpg\"]'),(259,8,NULL,NULL,13,4.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-8.jpg\"]'),(260,1,NULL,NULL,27,4.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-20.jpg\"]'),(262,9,NULL,NULL,7,1.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-11.jpg\"]'),(263,7,NULL,NULL,40,1.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-8.jpg\"]'),(265,8,NULL,NULL,55,1.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(266,7,NULL,NULL,22,3.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-6.jpg\"]'),(267,3,NULL,NULL,47,4.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-17.jpg\"]'),(268,6,NULL,NULL,33,1.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-2.jpg\"]'),(269,10,NULL,NULL,17,1.00,'Clean & perfect source code','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-12.jpg\"]'),(271,6,NULL,NULL,14,4.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-8.jpg\"]'),(272,4,NULL,NULL,13,2.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-17.jpg\"]'),(273,6,NULL,NULL,15,4.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-16.jpg\"]'),(275,3,NULL,NULL,45,5.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(277,1,NULL,NULL,51,4.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-19.jpg\"]'),(279,3,NULL,NULL,21,3.00,'Best ecommerce CMS online store!','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-16.jpg\"]'),(282,2,NULL,NULL,56,3.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(283,4,NULL,NULL,24,3.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-13.jpg\"]'),(285,4,NULL,NULL,19,2.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(286,4,NULL,NULL,18,1.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(287,4,NULL,NULL,23,5.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-8.jpg\"]'),(288,3,NULL,NULL,8,4.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-5.jpg\"]'),(289,3,NULL,NULL,7,4.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-11.jpg\"]'),(290,1,NULL,NULL,2,2.00,'Clean & perfect source code','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-10.jpg\"]'),(291,4,NULL,NULL,46,2.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(292,5,NULL,NULL,4,5.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(294,9,NULL,NULL,14,5.00,'Good app, good backup service and support. Good documentation.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-15.jpg\"]'),(297,9,NULL,NULL,13,4.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-19.jpg\"]'),(298,1,NULL,NULL,39,2.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-15.jpg\"]'),(299,4,NULL,NULL,17,5.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-14.jpg\"]'),(301,5,NULL,NULL,3,2.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-9.jpg\"]'),(302,4,NULL,NULL,2,4.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(304,2,NULL,NULL,48,1.00,'Clean & perfect source code','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-4.jpg\"]'),(305,4,NULL,NULL,53,3.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(306,10,NULL,NULL,4,1.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-6.jpg\"]'),(308,5,NULL,NULL,31,3.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-6.jpg\"]'),(309,1,NULL,NULL,49,5.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-17.jpg\"]'),(312,4,NULL,NULL,1,3.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-4.jpg\"]'),(313,3,NULL,NULL,31,5.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-details-desc-2.jpg\"]'),(318,9,NULL,NULL,34,2.00,'Best ecommerce CMS online store!','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-17.jpg\"]'),(320,4,NULL,NULL,45,5.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(322,4,NULL,NULL,54,4.00,'Clean & perfect source code','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(323,9,NULL,NULL,40,4.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-20.jpg\"]'),(325,9,NULL,NULL,15,4.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-16.jpg\"]'),(326,1,NULL,NULL,47,5.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-13.jpg\"]'),(327,3,NULL,NULL,23,5.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-18.jpg\"]'),(330,3,NULL,NULL,13,3.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-16.jpg\"]'),(331,4,NULL,NULL,11,5.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-12.jpg\"]'),(332,5,NULL,NULL,12,1.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-11.jpg\"]'),(333,4,NULL,NULL,31,3.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-details-desc-3.jpg\"]'),(338,8,NULL,NULL,16,2.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-17.jpg\"]'),(339,8,NULL,NULL,17,4.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-12.jpg\"]'),(341,2,NULL,NULL,24,3.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-16.jpg\"]'),(344,5,NULL,NULL,55,5.00,'Good app, good backup service and support. Good documentation.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-10.jpg\"]'),(345,6,NULL,NULL,37,1.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-17.jpg\"]'),(346,6,NULL,NULL,2,3.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-17.jpg\"]'),(348,1,NULL,NULL,8,1.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(349,7,NULL,NULL,10,5.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-18.jpg\"]'),(350,1,NULL,NULL,38,5.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-15.jpg\"]'),(352,5,NULL,NULL,10,1.00,'Clean & perfect source code','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-18.jpg\"]'),(355,4,NULL,NULL,34,3.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-1.jpg\"]'),(357,9,NULL,NULL,23,4.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(361,2,NULL,NULL,22,3.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-18.jpg\"]'),(364,10,NULL,NULL,10,1.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-11.jpg\"]'),(366,7,NULL,NULL,49,2.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-9.jpg\"]'),(367,5,NULL,NULL,9,1.00,'Good app, good backup service and support. Good documentation.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-19.jpg\"]'),(371,6,NULL,NULL,48,4.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-13.jpg\"]'),(372,3,NULL,NULL,17,4.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-15.jpg\"]'),(373,7,NULL,NULL,38,3.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-19.jpg\"]'),(374,6,NULL,NULL,54,3.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-6.jpg\"]'),(378,9,NULL,NULL,29,3.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(379,3,NULL,NULL,40,2.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-2.jpg\"]'),(380,5,NULL,NULL,56,3.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(384,9,NULL,NULL,17,4.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-14.jpg\"]'),(386,4,NULL,NULL,35,3.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-details-desc-1.jpg\"]'),(387,8,NULL,NULL,32,4.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(388,4,NULL,NULL,4,2.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-18.jpg\"]'),(390,5,NULL,NULL,40,2.00,'Clean & perfect source code','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-18.jpg\"]'),(392,2,NULL,NULL,16,5.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-20.jpg\"]'),(393,3,NULL,NULL,28,2.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-19.jpg\"]'),(394,2,NULL,NULL,19,5.00,'Best ecommerce CMS online store!','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-13.jpg\"]'),(396,2,NULL,NULL,8,5.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-14.jpg\"]'),(397,1,NULL,NULL,45,3.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(398,1,NULL,NULL,36,5.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-19.jpg\"]'),(402,8,NULL,NULL,52,5.00,'Good app, good backup service and support. Good documentation.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(406,9,NULL,NULL,11,5.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-15.jpg\"]'),(408,8,NULL,NULL,7,3.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-19.jpg\"]'),(409,4,NULL,NULL,7,2.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-20.jpg\"]'),(410,7,NULL,NULL,11,4.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-15.jpg\"]'),(412,3,NULL,NULL,19,1.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(413,2,NULL,NULL,13,2.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(416,2,NULL,NULL,14,1.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-18.jpg\"]'),(417,8,NULL,NULL,28,5.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-19.jpg\"]'),(418,10,NULL,NULL,34,2.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-18.jpg\"]'),(421,2,NULL,NULL,31,4.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(422,10,NULL,NULL,16,2.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-11.jpg\"]'),(423,5,NULL,NULL,19,3.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-9.jpg\"]'),(427,10,NULL,NULL,12,1.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-8.jpg\"]'),(429,7,NULL,NULL,16,4.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-20.jpg\"]'),(430,7,NULL,NULL,4,5.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(437,2,NULL,NULL,12,5.00,'Best ecommerce CMS online store!','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-5.jpg\"]'),(442,5,NULL,NULL,43,4.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-13.jpg\"]'),(447,8,NULL,NULL,11,3.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-20.jpg\"]'),(448,9,NULL,NULL,33,5.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(449,10,NULL,NULL,54,2.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-4.jpg\"]'),(458,3,NULL,NULL,52,5.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-8.jpg\"]'),(459,2,NULL,NULL,35,3.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(463,9,NULL,NULL,24,5.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-20.jpg\"]'),(466,7,NULL,NULL,25,1.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(472,9,NULL,NULL,50,3.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-20.jpg\"]'),(473,9,NULL,NULL,1,4.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(476,8,NULL,NULL,30,1.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-1.jpg\"]'),(478,4,NULL,NULL,29,4.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-details-desc-3.jpg\"]'),(482,9,NULL,NULL,26,4.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-19.jpg\"]'),(485,9,NULL,NULL,53,1.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-17.jpg\"]'),(486,1,NULL,NULL,42,3.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-16.jpg\"]'),(487,1,NULL,NULL,52,2.00,'Good app, good backup service and support. Good documentation.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-6.jpg\"]'),(488,3,NULL,NULL,10,1.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-13.jpg\"]'),(493,10,NULL,NULL,26,2.00,'Best ecommerce CMS online store!','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(497,8,NULL,NULL,42,3.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-20.jpg\"]'),(515,7,NULL,NULL,27,5.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-17.jpg\"]'),(520,7,NULL,NULL,24,2.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-details-desc-1.jpg\"]'),(525,4,NULL,NULL,55,1.00,'Best ecommerce CMS online store!','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-15.jpg\"]'),(528,6,NULL,NULL,29,3.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-14.jpg\"]'),(529,6,NULL,NULL,50,3.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-9.jpg\"]'),(533,5,NULL,NULL,17,5.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(534,9,NULL,NULL,43,2.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(538,7,NULL,NULL,19,1.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-details-desc-3.jpg\"]'),(542,5,NULL,NULL,38,4.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(555,4,NULL,NULL,40,5.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-11.jpg\"]'),(556,7,NULL,NULL,47,1.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-14.jpg\"]'),(559,6,NULL,NULL,34,2.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(562,6,NULL,NULL,35,1.00,'Good app, good backup service and support. Good documentation.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-20.jpg\"]'),(564,8,NULL,NULL,19,2.00,'Clean & perfect source code','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(566,6,NULL,NULL,41,3.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-19.jpg\"]'),(567,7,NULL,NULL,13,1.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-13.jpg\"]'),(568,8,NULL,NULL,22,4.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-19.jpg\"]'),(570,10,NULL,NULL,28,1.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(571,9,NULL,NULL,27,5.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-details-desc-2.jpg\"]'),(573,8,NULL,NULL,1,3.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-details-desc-2.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(576,7,NULL,NULL,34,4.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(577,10,NULL,NULL,45,1.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(578,8,NULL,NULL,53,3.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-20.jpg\"]'),(581,5,NULL,NULL,35,1.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-details-desc-2.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(584,1,NULL,NULL,11,5.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-5.jpg\"]'),(587,7,NULL,NULL,32,4.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-18.jpg\"]'),(588,6,NULL,NULL,24,4.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-15.jpg\"]'),(592,10,NULL,NULL,6,5.00,'Good app, good backup service and support. Good documentation.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-15.jpg\"]'),(593,3,NULL,NULL,24,2.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-9.jpg\"]'),(598,5,NULL,NULL,49,1.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(599,6,NULL,NULL,9,5.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-15.jpg\"]'),(601,3,NULL,NULL,57,5.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-18.jpg\"]'),(602,9,NULL,NULL,4,3.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-5.jpg\"]'),(603,2,NULL,NULL,57,5.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-8.jpg\"]'),(610,8,NULL,NULL,27,4.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(613,1,NULL,NULL,5,1.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-13.jpg\"]'),(617,10,NULL,NULL,42,1.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(619,8,NULL,NULL,54,1.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-2.jpg\"]'),(625,2,NULL,NULL,9,5.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(630,2,NULL,NULL,38,2.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(637,5,NULL,NULL,48,5.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-20.jpg\"]'),(641,8,NULL,NULL,44,1.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-18.jpg\"]'),(642,1,NULL,NULL,55,4.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-17.jpg\"]'),(643,5,NULL,NULL,21,1.00,'Best ecommerce CMS online store!','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-20.jpg\"]'),(647,2,NULL,NULL,11,4.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-19.jpg\"]'),(653,4,NULL,NULL,39,5.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-20.jpg\"]'),(658,9,NULL,NULL,55,2.00,'Good app, good backup service and support. Good documentation.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-20.jpg\"]'),(659,9,NULL,NULL,22,3.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(660,9,NULL,NULL,31,4.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-14.jpg\"]'),(665,7,NULL,NULL,48,3.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(669,8,NULL,NULL,39,4.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-7.jpg\"]'),(671,7,NULL,NULL,41,1.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-details-desc-3.jpg\"]'),(672,2,NULL,NULL,55,3.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-details-desc-2.jpg\"]'),(674,3,NULL,NULL,1,4.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-16.jpg\"]'),(675,6,NULL,NULL,8,1.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-20.jpg\"]'),(677,7,NULL,NULL,26,4.00,'Best ecommerce CMS online store!','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-6.jpg\"]'),(678,9,NULL,NULL,56,1.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-16.jpg\"]'),(680,7,NULL,NULL,7,2.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-18.jpg\"]'),(684,9,NULL,NULL,47,2.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-17.jpg\"]'),(685,4,NULL,NULL,37,2.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-details-desc-1.jpg\"]'),(687,2,NULL,NULL,53,5.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(692,10,NULL,NULL,52,3.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-12.jpg\"]'),(693,1,NULL,NULL,3,1.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-3.jpg\"]'),(694,4,NULL,NULL,32,3.00,'Good app, good backup service and support. Good documentation.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-19.jpg\"]'),(699,1,NULL,NULL,9,2.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-18.jpg\"]'),(703,8,NULL,NULL,2,2.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(705,8,NULL,NULL,34,2.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-9.jpg\"]'),(706,3,NULL,NULL,25,2.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-details-desc-3.jpg\"]'),(709,7,NULL,NULL,8,5.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-19.jpg\"]'),(710,1,NULL,NULL,16,3.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(711,10,NULL,NULL,53,4.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-9.jpg\"]'),(716,9,NULL,NULL,30,2.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(718,9,NULL,NULL,57,4.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-15.jpg\"]'),(719,5,NULL,NULL,15,3.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-17.jpg\"]'),(720,10,NULL,NULL,40,2.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(722,8,NULL,NULL,56,2.00,'Clean & perfect source code','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-9.jpg\"]'),(724,2,NULL,NULL,27,4.00,'Best ecommerce CMS online store!','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-19.jpg\"]'),(725,10,NULL,NULL,33,4.00,'Clean & perfect source code','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(726,5,NULL,NULL,26,5.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(728,9,NULL,NULL,3,4.00,'Clean & perfect source code','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(729,5,NULL,NULL,45,5.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-15.jpg\"]'),(730,6,NULL,NULL,56,4.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-14.jpg\"]'),(733,2,NULL,NULL,4,2.00,'Clean & perfect source code','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-20.jpg\"]'),(739,2,NULL,NULL,49,5.00,'Best ecommerce CMS online store!','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-15.jpg\"]'),(740,6,NULL,NULL,52,5.00,'Clean & perfect source code','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(751,10,NULL,NULL,38,1.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-19.jpg\"]'),(752,5,NULL,NULL,28,2.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(753,2,NULL,NULL,41,4.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-6.jpg\"]'),(756,2,NULL,NULL,18,4.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-17.jpg\"]'),(762,8,NULL,NULL,6,3.00,'Good app, good backup service and support. Good documentation.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(764,6,NULL,NULL,47,2.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-13.jpg\"]'),(767,4,NULL,NULL,9,4.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-details-desc-2.jpg\"]'),(776,2,NULL,NULL,15,4.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-9.jpg\"]'),(780,3,NULL,NULL,53,5.00,'Good app, good backup service and support. Good documentation.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-19.jpg\"]'),(784,2,NULL,NULL,47,5.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-17.jpg\"]'),(785,1,NULL,NULL,43,4.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-17.jpg\"]'),(786,9,NULL,NULL,39,2.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-20.jpg\"]'),(795,10,NULL,NULL,25,3.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-6.jpg\"]'),(797,10,NULL,NULL,56,3.00,'Good app, good backup service and support. Good documentation.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-5.jpg\"]'),(803,6,NULL,NULL,51,4.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-3.jpg\"]'),(804,2,NULL,NULL,17,5.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-20.jpg\"]'),(806,8,NULL,NULL,41,5.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-16.jpg\"]'),(809,9,NULL,NULL,12,4.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(812,1,NULL,NULL,20,3.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-14.jpg\"]'),(813,10,NULL,NULL,13,5.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(822,2,NULL,NULL,44,1.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(823,8,NULL,NULL,9,5.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(826,1,NULL,NULL,6,2.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-3.jpg\"]'),(828,3,NULL,NULL,33,5.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-11.jpg\"]'),(831,9,NULL,NULL,5,2.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-details-desc-2.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(833,8,NULL,NULL,46,4.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-17.jpg\"]'),(835,7,NULL,NULL,54,3.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(842,7,NULL,NULL,31,5.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-12.jpg\"]'),(849,1,NULL,NULL,40,3.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(855,2,NULL,NULL,32,5.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(857,9,NULL,NULL,45,1.00,'Clean & perfect source code','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-15.jpg\"]'),(858,5,NULL,NULL,1,1.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(859,6,NULL,NULL,49,3.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-8.jpg\"]'),(861,10,NULL,NULL,41,5.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(868,3,NULL,NULL,41,5.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(871,6,NULL,NULL,40,2.00,'Good app, good backup service and support. Good documentation.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-13.jpg\"]'),(875,2,NULL,NULL,50,2.00,'Best ecommerce CMS online store!','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-17.jpg\"]'),(896,4,NULL,NULL,10,3.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-19.jpg\"]'),(903,7,NULL,NULL,33,2.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-details-desc-3.jpg\"]'),(905,2,NULL,NULL,33,1.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-13.jpg\"]'),(906,3,NULL,NULL,4,1.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(908,10,NULL,NULL,21,4.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-16.jpg\"]'),(920,5,NULL,NULL,37,3.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-13.jpg\"]'),(923,8,NULL,NULL,10,1.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-20.jpg\"]'),(925,7,NULL,NULL,9,2.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-15.jpg\"]'),(926,3,NULL,NULL,35,1.00,'Best ecommerce CMS online store!','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(930,10,NULL,NULL,43,3.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-12.jpg\"]'),(931,9,NULL,NULL,10,4.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(938,1,NULL,NULL,28,2.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-20.jpg\"]'),(943,9,NULL,NULL,51,4.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-19.jpg\"]'),(944,5,NULL,NULL,22,1.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-15.jpg\"]'),(953,6,NULL,NULL,1,2.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-18.jpg\"]'),(974,3,NULL,NULL,36,4.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-12.jpg\"]'),(980,8,NULL,NULL,36,3.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-20.jpg\"]'),(990,10,NULL,NULL,14,3.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(995,10,NULL,NULL,9,5.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(998,7,NULL,NULL,15,5.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-8.jpg\"]'),(999,5,NULL,NULL,23,1.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(1000,4,NULL,NULL,8,2.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-06-04 23:59:49','2024-06-04 23:59:49','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]');
/*!40000 ALTER TABLE `ec_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipment_histories`
--

DROP TABLE IF EXISTS `ec_shipment_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_shipment_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `shipment_id` bigint unsigned NOT NULL,
  `order_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipment_histories`
--

LOCK TABLES `ec_shipment_histories` WRITE;
/*!40000 ALTER TABLE `ec_shipment_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shipment_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipments`
--

DROP TABLE IF EXISTS `ec_shipments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_shipments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `weight` double(8,2) DEFAULT '0.00',
  `shipment_id` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate_id` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cod_amount` decimal(15,2) DEFAULT '0.00',
  `cod_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cross_checking_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `price` decimal(15,2) DEFAULT '0.00',
  `store_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tracking_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tracking_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estimate_date_shipped` datetime DEFAULT NULL,
  `date_shipped` datetime DEFAULT NULL,
  `label_url` text COLLATE utf8mb4_unicode_ci,
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipments`
--

LOCK TABLES `ec_shipments` WRITE;
/*!40000 ALTER TABLE `ec_shipments` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shipments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping`
--

DROP TABLE IF EXISTS `ec_shipping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_shipping` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping`
--

LOCK TABLES `ec_shipping` WRITE;
/*!40000 ALTER TABLE `ec_shipping` DISABLE KEYS */;
INSERT INTO `ec_shipping` VALUES (1,'All',NULL,'2024-06-04 23:59:41','2024-06-04 23:59:41');
/*!40000 ALTER TABLE `ec_shipping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rule_items`
--

DROP TABLE IF EXISTS `ec_shipping_rule_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_shipping_rule_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `shipping_rule_id` bigint unsigned NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adjustment_price` decimal(15,2) DEFAULT '0.00',
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rule_items`
--

LOCK TABLES `ec_shipping_rule_items` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rule_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shipping_rule_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rules`
--

DROP TABLE IF EXISTS `ec_shipping_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_shipping_rules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_id` bigint unsigned NOT NULL,
  `type` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT 'based_on_price',
  `from` decimal(15,2) DEFAULT '0.00',
  `to` decimal(15,2) DEFAULT '0.00',
  `price` decimal(15,2) DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rules`
--

LOCK TABLES `ec_shipping_rules` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rules` DISABLE KEYS */;
INSERT INTO `ec_shipping_rules` VALUES (1,'Free delivery',1,'based_on_price',0.00,NULL,0.00,'2024-06-04 23:59:41','2024-06-04 23:59:41');
/*!40000 ALTER TABLE `ec_shipping_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_store_locators`
--

DROP TABLE IF EXISTS `ec_store_locators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_store_locators` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_primary` tinyint(1) DEFAULT '0',
  `is_shipping_location` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_store_locators`
--

LOCK TABLES `ec_store_locators` WRITE;
/*!40000 ALTER TABLE `ec_store_locators` DISABLE KEYS */;
INSERT INTO `ec_store_locators` VALUES (1,'Shofy','sales@botble.com','1800979769','502 New Street','AU','Brighton VIC','Brighton VIC',1,1,'2024-06-04 23:59:42','2024-06-04 23:59:42',NULL);
/*!40000 ALTER TABLE `ec_store_locators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_tax_products`
--

DROP TABLE IF EXISTS `ec_tax_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_tax_products` (
  `tax_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`tax_id`),
  KEY `ec_tax_products_tax_id_index` (`tax_id`),
  KEY `ec_tax_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_tax_products`
--

LOCK TABLES `ec_tax_products` WRITE;
/*!40000 ALTER TABLE `ec_tax_products` DISABLE KEYS */;
INSERT INTO `ec_tax_products` VALUES (1,6),(1,8),(1,12),(1,13),(1,14),(1,17),(1,21),(1,23),(1,26),(1,27),(1,28),(1,30),(1,31),(1,34),(1,35),(1,36),(1,37),(1,39),(1,40),(1,43),(1,48),(1,52),(1,54),(1,55),(2,1),(2,2),(2,4),(2,10),(2,11),(2,15),(2,18),(2,19),(2,20),(2,25),(2,29),(2,32),(2,50),(2,56),(2,57),(3,3),(3,5),(3,7),(3,9),(3,16),(3,22),(3,24),(3,33),(3,38),(3,41),(3,42),(3,44),(3,45),(3,46),(3,47),(3,49),(3,51),(3,53);
/*!40000 ALTER TABLE `ec_tax_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_tax_rules`
--

DROP TABLE IF EXISTS `ec_tax_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_tax_rules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tax_id` bigint unsigned NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority` int DEFAULT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_tax_rules`
--

LOCK TABLES `ec_tax_rules` WRITE;
/*!40000 ALTER TABLE `ec_tax_rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_tax_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_taxes`
--

DROP TABLE IF EXISTS `ec_taxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_taxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percentage` double(8,6) DEFAULT NULL,
  `priority` int DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_taxes`
--

LOCK TABLES `ec_taxes` WRITE;
/*!40000 ALTER TABLE `ec_taxes` DISABLE KEYS */;
INSERT INTO `ec_taxes` VALUES (1,'VAT',10.000000,1,'published','2024-06-04 23:59:41','2024-06-04 23:59:41'),(2,'None',0.000000,2,'published','2024-06-04 23:59:41','2024-06-04 23:59:41'),(3,'Import Tax',15.000000,3,'published','2024-06-04 23:59:41','2024-06-04 23:59:41');
/*!40000 ALTER TABLE `ec_taxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_wish_lists`
--

DROP TABLE IF EXISTS `ec_wish_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_wish_lists` (
  `customer_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`customer_id`,`product_id`),
  KEY `wishlist_relation_index` (`product_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_wish_lists`
--

LOCK TABLES `ec_wish_lists` WRITE;
/*!40000 ALTER TABLE `ec_wish_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_wish_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories`
--

DROP TABLE IF EXISTS `faq_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faq_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories`
--

LOCK TABLES `faq_categories` WRITE;
/*!40000 ALTER TABLE `faq_categories` DISABLE KEYS */;
INSERT INTO `faq_categories` VALUES (1,'Shipping',0,'published','2024-06-04 23:59:38','2024-06-04 23:59:38',NULL),(2,'Payment',1,'published','2024-06-04 23:59:38','2024-06-04 23:59:38',NULL),(3,'Order &amp; Returns',2,'published','2024-06-04 23:59:38','2024-06-04 23:59:38',NULL);
/*!40000 ALTER TABLE `faq_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories_translations`
--

DROP TABLE IF EXISTS `faq_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faq_categories_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faq_categories_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`faq_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories_translations`
--

LOCK TABLES `faq_categories_translations` WRITE;
/*!40000 ALTER TABLE `faq_categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `faq_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faqs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint unsigned NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs`
--

LOCK TABLES `faqs` WRITE;
/*!40000 ALTER TABLE `faqs` DISABLE KEYS */;
INSERT INTO `faqs` VALUES (1,'What Shipping Methods Are Available?','Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.',1,'published','2024-06-04 23:59:38','2024-06-04 23:59:38'),(2,'Do You Ship Internationally?','Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.',1,'published','2024-06-04 23:59:38','2024-06-04 23:59:38'),(3,'How Long Will It Take To Get My Package?','Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.',1,'published','2024-06-04 23:59:38','2024-06-04 23:59:38'),(4,'What Payment Methods Are Accepted?','Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.',2,'published','2024-06-04 23:59:38','2024-06-04 23:59:38'),(5,'Is Buying On-Line Safe?','Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.',2,'published','2024-06-04 23:59:38','2024-06-04 23:59:38'),(6,'How do I place an Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level. Raw denim polaroid paleo farm-to-table, put a bird on it lo-fi tattooed Wes Anderson Pinterest letterpress. Fingerstache McSweeney’s pour-over, letterpress Schlitz photo booth master cleanse bespoke hashtag chillwave gentrify.',3,'published','2024-06-04 23:59:38','2024-06-04 23:59:38'),(7,'How Can I Cancel Or Change My Order?','Plaid letterpress leggings craft beer meh ethical Pinterest. Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth.',3,'published','2024-06-04 23:59:38','2024-06-04 23:59:38'),(8,'Do I need an account to place an order?','Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY. Cray ugh 3 wolf moon fap, fashion axe irony butcher cornhole typewriter chambray VHS banjo street art.',3,'published','2024-06-04 23:59:38','2024-06-04 23:59:38'),(9,'How Do I Track My Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb @Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level.',3,'published','2024-06-04 23:59:38','2024-06-04 23:59:38'),(10,'How Can I Return a Product?','Kale chips Truffaut Williamsburg, hashtag fixie Pinterest raw denim c hambray drinking vinegar Carles street art Bushwick gastropub. Wolf Tumblr paleo church-key. Plaid food truck Echo Park YOLO bitters hella, direct trade Thundercats leggings quinoa before they sold out. You probably haven’t heard of them wayfarers authentic umami drinking vinegar Pinterest Cosby sweater, fingerstache fap High Life.',3,'published','2024-06-04 23:59:38','2024-06-04 23:59:38');
/*!40000 ALTER TABLE `faqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs_translations`
--

DROP TABLE IF EXISTS `faqs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faqs_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faqs_id` bigint unsigned NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci,
  `answer` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`faqs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs_translations`
--

LOCK TABLES `faqs_translations` WRITE;
/*!40000 ALTER TABLE `faqs_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `faqs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galleries`
--

DROP TABLE IF EXISTS `galleries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `galleries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `galleries_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galleries`
--

LOCK TABLES `galleries` WRITE;
/*!40000 ALTER TABLE `galleries` DISABLE KEYS */;
INSERT INTO `galleries` VALUES (1,'Perfect','The Queen had never heard before, \'Sure then I\'m here! Digging for apples, indeed!\' said Alice, as she did not quite sure whether it would like the look of the court was a good deal on where you.',1,0,'main/galleries/1.jpg',1,'published','2024-06-04 23:59:49','2024-06-04 23:59:49'),(2,'New Day','I\'m a deal faster than it does.\' \'Which would NOT be an advantage,\' said Alice, (she had grown to her full size by this time.) \'You\'re nothing but a pack of cards: the Knave was standing before.',1,0,'main/galleries/2.jpg',1,'published','2024-06-04 23:59:49','2024-06-04 23:59:49'),(3,'Happy Day','Hatter. \'He won\'t stand beating. Now, if you wouldn\'t keep appearing and vanishing so suddenly: you make one repeat lessons!\' thought Alice; \'I can\'t remember things as I tell you!\' said Alice.',1,0,'main/galleries/3.jpg',1,'published','2024-06-04 23:59:49','2024-06-04 23:59:49'),(4,'Nature','What would become of me?\' Luckily for Alice, the little thing was waving its right ear and left foot, so as to bring but one; Bill\'s got to the beginning of the treat. When the pie was all very well.',1,0,'main/galleries/4.jpg',1,'published','2024-06-04 23:59:49','2024-06-04 23:59:49'),(5,'Morning','CAN all that green stuff be?\' said Alice. \'Why not?\' said the Mock Turtle: \'nine the next, and so on; then, when you\'ve cleared all the while, till at last it sat down a good deal frightened by this.',1,0,'main/galleries/5.jpg',1,'published','2024-06-04 23:59:49','2024-06-04 23:59:49');
/*!40000 ALTER TABLE `galleries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galleries_translations`
--

DROP TABLE IF EXISTS `galleries_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `galleries_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `galleries_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`galleries_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galleries_translations`
--

LOCK TABLES `galleries_translations` WRITE;
/*!40000 ALTER TABLE `galleries_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `galleries_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gallery_meta`
--

DROP TABLE IF EXISTS `gallery_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gallery_meta` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `images` text COLLATE utf8mb4_unicode_ci,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `gallery_meta_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gallery_meta`
--

LOCK TABLES `gallery_meta` WRITE;
/*!40000 ALTER TABLE `gallery_meta` DISABLE KEYS */;
INSERT INTO `gallery_meta` VALUES (1,'[{\"img\":\"main\\/galleries\\/4.jpg\",\"description\":\"Footman. \'That\'s the first position in dancing.\' Alice said; but was dreadfully puzzled by the hedge!\' then silence, and then a great crash, as if she had found the fan and gloves, and, as there.\"},{\"img\":\"main\\/galleries\\/5.jpg\",\"description\":\"EVER happen in a hurry that she was now about a whiting to a shriek, \'and just as I get SOMEWHERE,\' Alice added as an unusually large saucepan flew close by it, and then treading on her toes when.\"},{\"img\":\"main\\/galleries\\/2.jpg\",\"description\":\"The Queen had only one way of escape, and wondering whether she could see it pop down a good many little girls in my size; and as he spoke, and added \'It isn\'t mine,\' said the King. \'When did you do.\"}]',1,'Botble\\Gallery\\Models\\Gallery','2024-06-04 23:59:49','2024-06-04 23:59:49'),(2,'[{\"img\":\"main\\/galleries\\/4.jpg\",\"description\":\"Footman. \'That\'s the first position in dancing.\' Alice said; but was dreadfully puzzled by the hedge!\' then silence, and then a great crash, as if she had found the fan and gloves, and, as there.\"},{\"img\":\"main\\/galleries\\/5.jpg\",\"description\":\"EVER happen in a hurry that she was now about a whiting to a shriek, \'and just as I get SOMEWHERE,\' Alice added as an unusually large saucepan flew close by it, and then treading on her toes when.\"},{\"img\":\"main\\/galleries\\/2.jpg\",\"description\":\"The Queen had only one way of escape, and wondering whether she could see it pop down a good many little girls in my size; and as he spoke, and added \'It isn\'t mine,\' said the King. \'When did you do.\"}]',2,'Botble\\Gallery\\Models\\Gallery','2024-06-04 23:59:49','2024-06-04 23:59:49'),(3,'[{\"img\":\"main\\/galleries\\/4.jpg\",\"description\":\"Footman. \'That\'s the first position in dancing.\' Alice said; but was dreadfully puzzled by the hedge!\' then silence, and then a great crash, as if she had found the fan and gloves, and, as there.\"},{\"img\":\"main\\/galleries\\/5.jpg\",\"description\":\"EVER happen in a hurry that she was now about a whiting to a shriek, \'and just as I get SOMEWHERE,\' Alice added as an unusually large saucepan flew close by it, and then treading on her toes when.\"},{\"img\":\"main\\/galleries\\/2.jpg\",\"description\":\"The Queen had only one way of escape, and wondering whether she could see it pop down a good many little girls in my size; and as he spoke, and added \'It isn\'t mine,\' said the King. \'When did you do.\"}]',3,'Botble\\Gallery\\Models\\Gallery','2024-06-04 23:59:49','2024-06-04 23:59:49'),(4,'[{\"img\":\"main\\/galleries\\/4.jpg\",\"description\":\"Footman. \'That\'s the first position in dancing.\' Alice said; but was dreadfully puzzled by the hedge!\' then silence, and then a great crash, as if she had found the fan and gloves, and, as there.\"},{\"img\":\"main\\/galleries\\/5.jpg\",\"description\":\"EVER happen in a hurry that she was now about a whiting to a shriek, \'and just as I get SOMEWHERE,\' Alice added as an unusually large saucepan flew close by it, and then treading on her toes when.\"},{\"img\":\"main\\/galleries\\/2.jpg\",\"description\":\"The Queen had only one way of escape, and wondering whether she could see it pop down a good many little girls in my size; and as he spoke, and added \'It isn\'t mine,\' said the King. \'When did you do.\"}]',4,'Botble\\Gallery\\Models\\Gallery','2024-06-04 23:59:49','2024-06-04 23:59:49'),(5,'[{\"img\":\"main\\/galleries\\/4.jpg\",\"description\":\"Footman. \'That\'s the first position in dancing.\' Alice said; but was dreadfully puzzled by the hedge!\' then silence, and then a great crash, as if she had found the fan and gloves, and, as there.\"},{\"img\":\"main\\/galleries\\/5.jpg\",\"description\":\"EVER happen in a hurry that she was now about a whiting to a shriek, \'and just as I get SOMEWHERE,\' Alice added as an unusually large saucepan flew close by it, and then treading on her toes when.\"},{\"img\":\"main\\/galleries\\/2.jpg\",\"description\":\"The Queen had only one way of escape, and wondering whether she could see it pop down a good many little girls in my size; and as he spoke, and added \'It isn\'t mine,\' said the King. \'When did you do.\"}]',5,'Botble\\Gallery\\Models\\Gallery','2024-06-04 23:59:49','2024-06-04 23:59:49');
/*!40000 ALTER TABLE `gallery_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gallery_meta_translations`
--

DROP TABLE IF EXISTS `gallery_meta_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gallery_meta_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gallery_meta_id` bigint unsigned NOT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`gallery_meta_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gallery_meta_translations`
--

LOCK TABLES `gallery_meta_translations` WRITE;
/*!40000 ALTER TABLE `gallery_meta_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `gallery_meta_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language_meta`
--

DROP TABLE IF EXISTS `language_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `language_meta` (
  `lang_meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_meta_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_meta_origin` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`lang_meta_id`),
  KEY `language_meta_reference_id_index` (`reference_id`),
  KEY `meta_code_index` (`lang_meta_code`),
  KEY `meta_origin_index` (`lang_meta_origin`),
  KEY `meta_reference_type_index` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_meta`
--

LOCK TABLES `language_meta` WRITE;
/*!40000 ALTER TABLE `language_meta` DISABLE KEYS */;
INSERT INTO `language_meta` VALUES (1,'en_US','0c4174a777cd188369ba5f5dc5dcce99',1,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(2,'en_US','87af658a800258bb962a27846de2f13e',1,'Botble\\Menu\\Models\\MenuLocation'),(3,'en_US','7e97a890ccd1ebad75a9367f85e6db59',1,'Botble\\Menu\\Models\\Menu'),(4,'en_US','22d568910c0bd46297d724a6e5909a1f',2,'Botble\\Menu\\Models\\Menu'),(5,'en_US','2b857627372ba06fa8195ef7c8bf1fcb',3,'Botble\\Menu\\Models\\Menu');
/*!40000 ALTER TABLE `language_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `languages` (
  `lang_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_flag` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `lang_order` int NOT NULL DEFAULT '0',
  `lang_is_rtl` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  KEY `lang_locale_index` (`lang_locale`),
  KEY `lang_code_index` (`lang_code`),
  KEY `lang_is_default_index` (`lang_is_default`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'English','en','en_US','us',1,0,0);
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_files`
--

DROP TABLE IF EXISTS `media_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `folder_id` bigint unsigned NOT NULL DEFAULT '0',
  `mime_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `visibility` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'public',
  PRIMARY KEY (`id`),
  KEY `media_files_user_id_index` (`user_id`),
  KEY `media_files_index` (`folder_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=158 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_files`
--

LOCK TABLES `media_files` WRITE;
/*!40000 ALTER TABLE `media_files` DISABLE KEYS */;
INSERT INTO `media_files` VALUES (1,0,'404','404',2,'image/png',15820,'main/general/404.png','[]','2024-06-04 23:59:37','2024-06-04 23:59:37',NULL,'public'),(2,0,'about-1','about-1',2,'image/jpeg',9222,'main/general/about-1.jpg','[]','2024-06-04 23:59:37','2024-06-04 23:59:37',NULL,'public'),(3,0,'about-2','about-2',2,'image/jpeg',5105,'main/general/about-2.jpg','[]','2024-06-04 23:59:37','2024-06-04 23:59:37',NULL,'public'),(4,0,'breadcrumb','breadcrumb',2,'image/jpeg',5276,'main/general/breadcrumb.jpg','[]','2024-06-04 23:59:37','2024-06-04 23:59:37',NULL,'public'),(5,0,'contact-img','contact-img',2,'image/jpeg',13078,'main/general/contact-img.jpg','[]','2024-06-04 23:59:37','2024-06-04 23:59:37',NULL,'public'),(6,0,'cta-shape-1','cta-shape-1',2,'image/png',22860,'main/general/cta-shape-1.png','[]','2024-06-04 23:59:37','2024-06-04 23:59:37',NULL,'public'),(7,0,'cta-shape-2','cta-shape-2',2,'image/png',16796,'main/general/cta-shape-2.png','[]','2024-06-04 23:59:37','2024-06-04 23:59:37',NULL,'public'),(8,0,'cta-thumb-1','cta-thumb-1',2,'image/jpeg',6053,'main/general/cta-thumb-1.jpg','[]','2024-06-04 23:59:37','2024-06-04 23:59:37',NULL,'public'),(9,0,'favicon','favicon',2,'image/png',1831,'main/general/favicon.png','[]','2024-06-04 23:59:37','2024-06-04 23:59:37',NULL,'public'),(10,0,'footer-pay','footer-pay',2,'image/png',490,'main/general/footer-pay.png','[]','2024-06-04 23:59:37','2024-06-04 23:59:37',NULL,'public'),(11,0,'logo-white','logo-white',2,'image/png',22020,'main/general/logo-white.png','[]','2024-06-04 23:59:37','2024-06-04 23:59:37',NULL,'public'),(12,0,'logo','logo',2,'image/png',22398,'main/general/logo.png','[]','2024-06-04 23:59:37','2024-06-04 23:59:37',NULL,'public'),(13,0,'newsletter-popup','newsletter-popup',2,'image/png',17253,'main/general/newsletter-popup.png','[]','2024-06-04 23:59:37','2024-06-04 23:59:37',NULL,'public'),(14,0,'placeholder','placeholder',2,'image/png',2100,'main/general/placeholder.png','[]','2024-06-04 23:59:37','2024-06-04 23:59:37',NULL,'public'),(15,0,'preloader-icon','preloader-icon',2,'image/png',4182,'main/general/preloader-icon.png','[]','2024-06-04 23:59:37','2024-06-04 23:59:37',NULL,'public'),(16,0,'signature','signature',2,'image/png',2117,'main/general/signature.png','[]','2024-06-04 23:59:37','2024-06-04 23:59:37',NULL,'public'),(17,0,'slider-offer','slider-offer',2,'image/png',970,'main/general/slider-offer.png','[]','2024-06-04 23:59:37','2024-06-04 23:59:37',NULL,'public'),(28,0,'1','1',4,'image/png',948,'main/brands/1.png','[]','2024-06-04 23:59:38','2024-06-04 23:59:38',NULL,'public'),(29,0,'2','2',4,'image/png',948,'main/brands/2.png','[]','2024-06-04 23:59:38','2024-06-04 23:59:38',NULL,'public'),(30,0,'3','3',4,'image/png',948,'main/brands/3.png','[]','2024-06-04 23:59:38','2024-06-04 23:59:38',NULL,'public'),(31,0,'4','4',4,'image/png',948,'main/brands/4.png','[]','2024-06-04 23:59:38','2024-06-04 23:59:38',NULL,'public'),(32,0,'5','5',4,'image/png',948,'main/brands/5.png','[]','2024-06-04 23:59:38','2024-06-04 23:59:38',NULL,'public'),(33,0,'1','1',5,'image/jpeg',4294,'main/customers/1.jpg','[]','2024-06-04 23:59:38','2024-06-04 23:59:38',NULL,'public'),(34,0,'10','10',5,'image/jpeg',4294,'main/customers/10.jpg','[]','2024-06-04 23:59:38','2024-06-04 23:59:38',NULL,'public'),(35,0,'2','2',5,'image/jpeg',4294,'main/customers/2.jpg','[]','2024-06-04 23:59:39','2024-06-04 23:59:39',NULL,'public'),(36,0,'3','3',5,'image/jpeg',4294,'main/customers/3.jpg','[]','2024-06-04 23:59:39','2024-06-04 23:59:39',NULL,'public'),(37,0,'4','4',5,'image/jpeg',4294,'main/customers/4.jpg','[]','2024-06-04 23:59:39','2024-06-04 23:59:39',NULL,'public'),(38,0,'5','5',5,'image/jpeg',4294,'main/customers/5.jpg','[]','2024-06-04 23:59:39','2024-06-04 23:59:39',NULL,'public'),(39,0,'6','6',5,'image/jpeg',4294,'main/customers/6.jpg','[]','2024-06-04 23:59:39','2024-06-04 23:59:39',NULL,'public'),(40,0,'7','7',5,'image/jpeg',4294,'main/customers/7.jpg','[]','2024-06-04 23:59:39','2024-06-04 23:59:39',NULL,'public'),(41,0,'8','8',5,'image/jpeg',4294,'main/customers/8.jpg','[]','2024-06-04 23:59:39','2024-06-04 23:59:39',NULL,'public'),(42,0,'9','9',5,'image/jpeg',4294,'main/customers/9.jpg','[]','2024-06-04 23:59:39','2024-06-04 23:59:39',NULL,'public'),(43,0,'blog-big-1','blog-big-1',6,'image/jpeg',13885,'main/blog/blog-big-1.jpg','[]','2024-06-04 23:59:41','2024-06-04 23:59:41',NULL,'public'),(44,0,'blog-details-sm-1','blog-details-sm-1',6,'image/jpeg',8166,'main/blog/blog-details-sm-1.jpg','[]','2024-06-04 23:59:41','2024-06-04 23:59:41',NULL,'public'),(45,0,'post-1','post-1',6,'image/jpeg',6189,'main/blog/post-1.jpg','[]','2024-06-04 23:59:41','2024-06-04 23:59:41',NULL,'public'),(46,0,'post-10','post-10',6,'image/jpeg',5907,'main/blog/post-10.jpg','[]','2024-06-04 23:59:41','2024-06-04 23:59:41',NULL,'public'),(47,0,'post-11','post-11',6,'image/jpeg',5907,'main/blog/post-11.jpg','[]','2024-06-04 23:59:41','2024-06-04 23:59:41',NULL,'public'),(48,0,'post-12','post-12',6,'image/jpeg',5907,'main/blog/post-12.jpg','[]','2024-06-04 23:59:41','2024-06-04 23:59:41',NULL,'public'),(49,0,'post-2','post-2',6,'image/jpeg',6189,'main/blog/post-2.jpg','[]','2024-06-04 23:59:41','2024-06-04 23:59:41',NULL,'public'),(50,0,'post-3','post-3',6,'image/jpeg',6189,'main/blog/post-3.jpg','[]','2024-06-04 23:59:42','2024-06-04 23:59:42',NULL,'public'),(51,0,'post-4','post-4',6,'image/jpeg',6045,'main/blog/post-4.jpg','[]','2024-06-04 23:59:42','2024-06-04 23:59:42',NULL,'public'),(52,0,'post-5','post-5',6,'image/jpeg',6045,'main/blog/post-5.jpg','[]','2024-06-04 23:59:42','2024-06-04 23:59:42',NULL,'public'),(53,0,'post-6','post-6',6,'image/jpeg',6045,'main/blog/post-6.jpg','[]','2024-06-04 23:59:42','2024-06-04 23:59:42',NULL,'public'),(54,0,'post-7','post-7',6,'image/jpeg',5907,'main/blog/post-7.jpg','[]','2024-06-04 23:59:42','2024-06-04 23:59:42',NULL,'public'),(55,0,'post-8','post-8',6,'image/jpeg',5907,'main/blog/post-8.jpg','[]','2024-06-04 23:59:42','2024-06-04 23:59:42',NULL,'public'),(56,0,'post-9','post-9',6,'image/jpeg',5907,'main/blog/post-9.jpg','[]','2024-06-04 23:59:42','2024-06-04 23:59:42',NULL,'public'),(57,0,'1','1',3,'image/jpeg',4068,'main/users/1.jpg','[]','2024-06-04 23:59:42','2024-06-04 23:59:42',NULL,'public'),(58,0,'10','10',3,'image/jpeg',7599,'main/users/10.jpg','[]','2024-06-04 23:59:42','2024-06-04 23:59:42',NULL,'public'),(59,0,'2','2',3,'image/jpeg',7599,'main/users/2.jpg','[]','2024-06-04 23:59:42','2024-06-04 23:59:42',NULL,'public'),(60,0,'3','3',3,'image/jpeg',6387,'main/users/3.jpg','[]','2024-06-04 23:59:42','2024-06-04 23:59:42',NULL,'public'),(61,0,'4','4',3,'image/jpeg',7599,'main/users/4.jpg','[]','2024-06-04 23:59:42','2024-06-04 23:59:42',NULL,'public'),(62,0,'5','5',3,'image/jpeg',6387,'main/users/5.jpg','[]','2024-06-04 23:59:42','2024-06-04 23:59:42',NULL,'public'),(63,0,'6','6',3,'image/jpeg',7599,'main/users/6.jpg','[]','2024-06-04 23:59:42','2024-06-04 23:59:42',NULL,'public'),(64,0,'7','7',3,'image/jpeg',6387,'main/users/7.jpg','[]','2024-06-04 23:59:42','2024-06-04 23:59:42',NULL,'public'),(65,0,'8','8',3,'image/jpeg',7599,'main/users/8.jpg','[]','2024-06-04 23:59:42','2024-06-04 23:59:42',NULL,'public'),(66,0,'9','9',3,'image/jpeg',6387,'main/users/9.jpg','[]','2024-06-04 23:59:42','2024-06-04 23:59:42',NULL,'public'),(67,0,'1','1',7,'image/png',9133,'main/stores/1.png','[]','2024-06-04 23:59:42','2024-06-04 23:59:42',NULL,'public'),(68,0,'10','10',7,'image/png',4263,'main/stores/10.png','[]','2024-06-04 23:59:42','2024-06-04 23:59:42',NULL,'public'),(69,0,'11','11',7,'image/png',4420,'main/stores/11.png','[]','2024-06-04 23:59:42','2024-06-04 23:59:42',NULL,'public'),(70,0,'12','12',7,'image/png',4908,'main/stores/12.png','[]','2024-06-04 23:59:42','2024-06-04 23:59:42',NULL,'public'),(71,0,'13','13',7,'image/png',3441,'main/stores/13.png','[]','2024-06-04 23:59:43','2024-06-04 23:59:43',NULL,'public'),(72,0,'14','14',7,'image/png',4209,'main/stores/14.png','[]','2024-06-04 23:59:43','2024-06-04 23:59:43',NULL,'public'),(73,0,'15','15',7,'image/png',5113,'main/stores/15.png','[]','2024-06-04 23:59:43','2024-06-04 23:59:43',NULL,'public'),(74,0,'16','16',7,'image/png',4563,'main/stores/16.png','[]','2024-06-04 23:59:43','2024-06-04 23:59:43',NULL,'public'),(75,0,'17','17',7,'image/png',4896,'main/stores/17.png','[]','2024-06-04 23:59:43','2024-06-04 23:59:43',NULL,'public'),(76,0,'2','2',7,'image/png',9008,'main/stores/2.png','[]','2024-06-04 23:59:43','2024-06-04 23:59:43',NULL,'public'),(77,0,'3','3',7,'image/png',8006,'main/stores/3.png','[]','2024-06-04 23:59:43','2024-06-04 23:59:43',NULL,'public'),(78,0,'4','4',7,'image/png',8728,'main/stores/4.png','[]','2024-06-04 23:59:43','2024-06-04 23:59:43',NULL,'public'),(79,0,'5','5',7,'image/png',10689,'main/stores/5.png','[]','2024-06-04 23:59:43','2024-06-04 23:59:43',NULL,'public'),(80,0,'6','6',7,'image/png',10989,'main/stores/6.png','[]','2024-06-04 23:59:43','2024-06-04 23:59:43',NULL,'public'),(81,0,'7','7',7,'image/png',3730,'main/stores/7.png','[]','2024-06-04 23:59:43','2024-06-04 23:59:43',NULL,'public'),(82,0,'8','8',7,'image/png',4030,'main/stores/8.png','[]','2024-06-04 23:59:43','2024-06-04 23:59:43',NULL,'public'),(83,0,'9','9',7,'image/png',3810,'main/stores/9.png','[]','2024-06-04 23:59:43','2024-06-04 23:59:43',NULL,'public'),(84,0,'cover-1','cover-1',7,'image/png',4208,'main/stores/cover-1.png','[]','2024-06-04 23:59:43','2024-06-04 23:59:43',NULL,'public'),(85,0,'cover-2','cover-2',7,'image/png',8798,'main/stores/cover-2.png','[]','2024-06-04 23:59:43','2024-06-04 23:59:43',NULL,'public'),(86,0,'cover-3','cover-3',7,'image/png',3888,'main/stores/cover-3.png','[]','2024-06-04 23:59:43','2024-06-04 23:59:43',NULL,'public'),(87,0,'cover-4','cover-4',7,'image/png',11893,'main/stores/cover-4.png','[]','2024-06-04 23:59:43','2024-06-04 23:59:43',NULL,'public'),(88,0,'cover-5','cover-5',7,'image/png',8798,'main/stores/cover-5.png','[]','2024-06-04 23:59:43','2024-06-04 23:59:43',NULL,'public'),(89,0,'shape-1','shape-1',8,'image/png',18992,'main/sliders/shape-1.png','[]','2024-06-04 23:59:45','2024-06-04 23:59:45',NULL,'public'),(90,0,'shape-2','shape-2',8,'image/png',803,'main/sliders/shape-2.png','[]','2024-06-04 23:59:45','2024-06-04 23:59:45',NULL,'public'),(91,0,'shape-3','shape-3',8,'image/png',658,'main/sliders/shape-3.png','[]','2024-06-04 23:59:45','2024-06-04 23:59:45',NULL,'public'),(92,0,'shape-4','shape-4',8,'image/png',475,'main/sliders/shape-4.png','[]','2024-06-04 23:59:45','2024-06-04 23:59:45',NULL,'public'),(93,0,'slider-1','slider-1',8,'image/png',7405,'main/sliders/slider-1.png','[]','2024-06-04 23:59:45','2024-06-04 23:59:45',NULL,'public'),(94,0,'slider-2','slider-2',8,'image/png',8434,'main/sliders/slider-2.png','[]','2024-06-04 23:59:45','2024-06-04 23:59:45',NULL,'public'),(95,0,'slider-3','slider-3',8,'image/png',7794,'main/sliders/slider-3.png','[]','2024-06-04 23:59:45','2024-06-04 23:59:45',NULL,'public'),(96,0,'1','1',9,'image/png',4294,'main/product-categories/1.png','[]','2024-06-04 23:59:45','2024-06-04 23:59:45',NULL,'public'),(97,0,'2','2',9,'image/png',4294,'main/product-categories/2.png','[]','2024-06-04 23:59:45','2024-06-04 23:59:45',NULL,'public'),(98,0,'3','3',9,'image/png',4294,'main/product-categories/3.png','[]','2024-06-04 23:59:45','2024-06-04 23:59:45',NULL,'public'),(99,0,'4','4',9,'image/png',4294,'main/product-categories/4.png','[]','2024-06-04 23:59:45','2024-06-04 23:59:45',NULL,'public'),(100,0,'5','5',9,'image/png',4294,'main/product-categories/5.png','[]','2024-06-04 23:59:45','2024-06-04 23:59:45',NULL,'public'),(101,0,'category-thumb-1','category-thumb-1',9,'image/jpeg',4294,'main/product-categories/category-thumb-1.jpg','[]','2024-06-04 23:59:45','2024-06-04 23:59:45',NULL,'public'),(102,0,'category-thumb-10','category-thumb-10',9,'image/jpeg',4294,'main/product-categories/category-thumb-10.jpg','[]','2024-06-04 23:59:46','2024-06-04 23:59:46',NULL,'public'),(103,0,'category-thumb-11','category-thumb-11',9,'image/jpeg',4294,'main/product-categories/category-thumb-11.jpg','[]','2024-06-04 23:59:46','2024-06-04 23:59:46',NULL,'public'),(104,0,'category-thumb-12','category-thumb-12',9,'image/jpeg',4294,'main/product-categories/category-thumb-12.jpg','[]','2024-06-04 23:59:46','2024-06-04 23:59:46',NULL,'public'),(105,0,'category-thumb-3','category-thumb-3',9,'image/jpeg',4294,'main/product-categories/category-thumb-3.jpg','[]','2024-06-04 23:59:46','2024-06-04 23:59:46',NULL,'public'),(106,0,'category-thumb-4','category-thumb-4',9,'image/jpeg',4294,'main/product-categories/category-thumb-4.jpg','[]','2024-06-04 23:59:46','2024-06-04 23:59:46',NULL,'public'),(107,0,'category-thumb-5','category-thumb-5',9,'image/jpeg',4294,'main/product-categories/category-thumb-5.jpg','[]','2024-06-04 23:59:46','2024-06-04 23:59:46',NULL,'public'),(108,0,'category-thumb-6','category-thumb-6',9,'image/jpeg',4294,'main/product-categories/category-thumb-6.jpg','[]','2024-06-04 23:59:46','2024-06-04 23:59:46',NULL,'public'),(109,0,'category-thumb-8','category-thumb-8',9,'image/jpeg',4294,'main/product-categories/category-thumb-8.jpg','[]','2024-06-04 23:59:46','2024-06-04 23:59:46',NULL,'public'),(110,0,'category-thumb-9','category-thumb-9',9,'image/jpeg',4294,'main/product-categories/category-thumb-9.jpg','[]','2024-06-04 23:59:46','2024-06-04 23:59:46',NULL,'public'),(111,0,'menu-1','menu-1',9,'image/jpeg',4294,'main/product-categories/menu-1.jpg','[]','2024-06-04 23:59:46','2024-06-04 23:59:46',NULL,'public'),(112,0,'menu-2','menu-2',9,'image/jpeg',4294,'main/product-categories/menu-2.jpg','[]','2024-06-04 23:59:46','2024-06-04 23:59:46',NULL,'public'),(113,0,'menu-3','menu-3',9,'image/jpeg',4294,'main/product-categories/menu-3.jpg','[]','2024-06-04 23:59:46','2024-06-04 23:59:46',NULL,'public'),(114,0,'product-1','product-1',10,'image/jpeg',9803,'main/products/product-1.jpg','[]','2024-06-04 23:59:46','2024-06-04 23:59:46',NULL,'public'),(115,0,'product-10','product-10',10,'image/jpeg',9803,'main/products/product-10.jpg','[]','2024-06-04 23:59:46','2024-06-04 23:59:46',NULL,'public'),(116,0,'product-11','product-11',10,'image/jpeg',9803,'main/products/product-11.jpg','[]','2024-06-04 23:59:46','2024-06-04 23:59:46',NULL,'public'),(117,0,'product-12','product-12',10,'image/jpeg',9803,'main/products/product-12.jpg','[]','2024-06-04 23:59:46','2024-06-04 23:59:46',NULL,'public'),(118,0,'product-13','product-13',10,'image/jpeg',9803,'main/products/product-13.jpg','[]','2024-06-04 23:59:46','2024-06-04 23:59:46',NULL,'public'),(119,0,'product-14','product-14',10,'image/jpeg',9803,'main/products/product-14.jpg','[]','2024-06-04 23:59:46','2024-06-04 23:59:46',NULL,'public'),(120,0,'product-15','product-15',10,'image/jpeg',9803,'main/products/product-15.jpg','[]','2024-06-04 23:59:46','2024-06-04 23:59:46',NULL,'public'),(121,0,'product-16','product-16',10,'image/jpeg',9803,'main/products/product-16.jpg','[]','2024-06-04 23:59:46','2024-06-04 23:59:46',NULL,'public'),(122,0,'product-17','product-17',10,'image/jpeg',9803,'main/products/product-17.jpg','[]','2024-06-04 23:59:46','2024-06-04 23:59:46',NULL,'public'),(123,0,'product-18','product-18',10,'image/jpeg',9803,'main/products/product-18.jpg','[]','2024-06-04 23:59:46','2024-06-04 23:59:46',NULL,'public'),(124,0,'product-19','product-19',10,'image/jpeg',9803,'main/products/product-19.jpg','[]','2024-06-04 23:59:47','2024-06-04 23:59:47',NULL,'public'),(125,0,'product-2','product-2',10,'image/jpeg',9803,'main/products/product-2.jpg','[]','2024-06-04 23:59:47','2024-06-04 23:59:47',NULL,'public'),(126,0,'product-20','product-20',10,'image/jpeg',9803,'main/products/product-20.jpg','[]','2024-06-04 23:59:47','2024-06-04 23:59:47',NULL,'public'),(127,0,'product-3','product-3',10,'image/jpeg',9803,'main/products/product-3.jpg','[]','2024-06-04 23:59:47','2024-06-04 23:59:47',NULL,'public'),(128,0,'product-4','product-4',10,'image/jpeg',9803,'main/products/product-4.jpg','[]','2024-06-04 23:59:47','2024-06-04 23:59:47',NULL,'public'),(129,0,'product-5','product-5',10,'image/jpeg',9803,'main/products/product-5.jpg','[]','2024-06-04 23:59:47','2024-06-04 23:59:47',NULL,'public'),(130,0,'product-6','product-6',10,'image/jpeg',9803,'main/products/product-6.jpg','[]','2024-06-04 23:59:47','2024-06-04 23:59:47',NULL,'public'),(131,0,'product-7','product-7',10,'image/jpeg',9803,'main/products/product-7.jpg','[]','2024-06-04 23:59:47','2024-06-04 23:59:47',NULL,'public'),(132,0,'product-8','product-8',10,'image/jpeg',9803,'main/products/product-8.jpg','[]','2024-06-04 23:59:47','2024-06-04 23:59:47',NULL,'public'),(133,0,'product-9','product-9',10,'image/jpeg',9803,'main/products/product-9.jpg','[]','2024-06-04 23:59:47','2024-06-04 23:59:47',NULL,'public'),(134,0,'product-details-desc-1','product-details-desc-1',10,'image/jpeg',9803,'main/products/product-details-desc-1.jpg','[]','2024-06-04 23:59:47','2024-06-04 23:59:47',NULL,'public'),(135,0,'product-details-desc-2','product-details-desc-2',10,'image/jpeg',9803,'main/products/product-details-desc-2.jpg','[]','2024-06-04 23:59:47','2024-06-04 23:59:47',NULL,'public'),(136,0,'product-details-desc-3','product-details-desc-3',10,'image/jpeg',9803,'main/products/product-details-desc-3.jpg','[]','2024-06-04 23:59:47','2024-06-04 23:59:47',NULL,'public'),(137,0,'1','1',11,'image/jpeg',6309,'main/banners/1.jpg','[]','2024-06-04 23:59:48','2024-06-04 23:59:48',NULL,'public'),(138,0,'2','2',11,'image/jpeg',6275,'main/banners/2.jpg','[]','2024-06-04 23:59:48','2024-06-04 23:59:48',NULL,'public'),(139,0,'slider-1','slider-1',11,'image/png',8207,'main/banners/slider-1.png','[]','2024-06-04 23:59:49','2024-06-04 23:59:49',NULL,'public'),(140,0,'slider-2','slider-2',11,'image/png',8497,'main/banners/slider-2.png','[]','2024-06-04 23:59:49','2024-06-04 23:59:49',NULL,'public'),(141,0,'slider-3','slider-3',11,'image/png',6239,'main/banners/slider-3.png','[]','2024-06-04 23:59:49','2024-06-04 23:59:49',NULL,'public'),(142,0,'gadget-banner-1','gadget-banner-1',12,'image/jpeg',3870,'main/gadgets/gadget-banner-1.jpg','[]','2024-06-04 23:59:49','2024-06-04 23:59:49',NULL,'public'),(143,0,'gadget-banner-2','gadget-banner-2',12,'image/jpeg',3870,'main/gadgets/gadget-banner-2.jpg','[]','2024-06-04 23:59:49','2024-06-04 23:59:49',NULL,'public'),(144,0,'gadget-girl','gadget-girl',12,'image/png',4417,'main/gadgets/gadget-girl.png','[]','2024-06-04 23:59:49','2024-06-04 23:59:49',NULL,'public'),(145,0,'1','1',13,'image/jpeg',4294,'main/galleries/1.jpg','[]','2024-06-04 23:59:49','2024-06-04 23:59:49',NULL,'public'),(146,0,'2','2',13,'image/jpeg',4294,'main/galleries/2.jpg','[]','2024-06-04 23:59:49','2024-06-04 23:59:49',NULL,'public'),(147,0,'3','3',13,'image/jpeg',4294,'main/galleries/3.jpg','[]','2024-06-04 23:59:49','2024-06-04 23:59:49',NULL,'public'),(148,0,'4','4',13,'image/jpeg',4294,'main/galleries/4.jpg','[]','2024-06-04 23:59:49','2024-06-04 23:59:49',NULL,'public'),(149,0,'5','5',13,'image/jpeg',4294,'main/galleries/5.jpg','[]','2024-06-04 23:59:49','2024-06-04 23:59:49',NULL,'public'),(153,0,'icon-1','icon-1',14,'image/png',4469,'main/contact/icon-1.png','[]','2024-06-04 23:59:49','2024-06-04 23:59:49',NULL,'public'),(154,0,'icon-2','icon-2',14,'image/png',5977,'main/contact/icon-2.png','[]','2024-06-04 23:59:49','2024-06-04 23:59:49',NULL,'public'),(155,0,'icon-3','icon-3',14,'image/png',6082,'main/contact/icon-3.png','[]','2024-06-04 23:59:49','2024-06-04 23:59:49',NULL,'public'),(156,0,'line','line',15,'image/png',6152,'main/shapes/line.png','[]','2024-06-04 23:59:49','2024-06-04 23:59:49',NULL,'public'),(157,0,'quote','quote',15,'image/png',595,'main/shapes/quote.png','[]','2024-06-04 23:59:49','2024-06-04 23:59:49',NULL,'public');
/*!40000 ALTER TABLE `media_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_folders`
--

DROP TABLE IF EXISTS `media_folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media_folders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_folders_user_id_index` (`user_id`),
  KEY `media_folders_index` (`parent_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_folders`
--

LOCK TABLES `media_folders` WRITE;
/*!40000 ALTER TABLE `media_folders` DISABLE KEYS */;
INSERT INTO `media_folders` VALUES (1,0,'main',NULL,'main',0,'2024-06-04 23:59:37','2024-06-04 23:59:37',NULL),(2,0,'general',NULL,'general',1,'2024-06-04 23:59:37','2024-06-04 23:59:37',NULL),(3,0,'users',NULL,'users',1,'2024-06-04 23:59:37','2024-06-04 23:59:37',NULL),(4,0,'brands',NULL,'brands',1,'2024-06-04 23:59:38','2024-06-04 23:59:38',NULL),(5,0,'customers',NULL,'customers',1,'2024-06-04 23:59:38','2024-06-04 23:59:38',NULL),(6,0,'blog',NULL,'blog',1,'2024-06-04 23:59:41','2024-06-04 23:59:41',NULL),(7,0,'stores',NULL,'stores',1,'2024-06-04 23:59:42','2024-06-04 23:59:42',NULL),(8,0,'sliders',NULL,'sliders',1,'2024-06-04 23:59:45','2024-06-04 23:59:45',NULL),(9,0,'product-categories',NULL,'product-categories',1,'2024-06-04 23:59:45','2024-06-04 23:59:45',NULL),(10,0,'products',NULL,'products',1,'2024-06-04 23:59:46','2024-06-04 23:59:46',NULL),(11,0,'banners',NULL,'banners',1,'2024-06-04 23:59:48','2024-06-04 23:59:48',NULL),(12,0,'gadgets',NULL,'gadgets',1,'2024-06-04 23:59:49','2024-06-04 23:59:49',NULL),(13,0,'galleries',NULL,'galleries',1,'2024-06-04 23:59:49','2024-06-04 23:59:49',NULL),(14,0,'contact',NULL,'contact',1,'2024-06-04 23:59:49','2024-06-04 23:59:49',NULL),(15,0,'shapes',NULL,'shapes',1,'2024-06-04 23:59:49','2024-06-04 23:59:49',NULL);
/*!40000 ALTER TABLE `media_folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_settings`
--

DROP TABLE IF EXISTS `media_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `media_id` bigint unsigned DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_settings`
--

LOCK TABLES `media_settings` WRITE;
/*!40000 ALTER TABLE `media_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `media_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_locations`
--

DROP TABLE IF EXISTS `menu_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_locations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_locations_menu_id_created_at_index` (`menu_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_locations`
--

LOCK TABLES `menu_locations` WRITE;
/*!40000 ALTER TABLE `menu_locations` DISABLE KEYS */;
INSERT INTO `menu_locations` VALUES (1,1,'main-menu','2024-06-04 23:59:49','2024-06-04 23:59:49');
/*!40000 ALTER TABLE `menu_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_nodes`
--

DROP TABLE IF EXISTS `menu_nodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_nodes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `reference_id` bigint unsigned DEFAULT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_font` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `has_child` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_nodes_menu_id_index` (`menu_id`),
  KEY `menu_nodes_parent_id_index` (`parent_id`),
  KEY `reference_id` (`reference_id`),
  KEY `reference_type` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_nodes`
--

LOCK TABLES `menu_nodes` WRITE;
/*!40000 ALTER TABLE `menu_nodes` DISABLE KEYS */;
INSERT INTO `menu_nodes` VALUES (1,1,0,1,'Botble\\Page\\Models\\Page','/home',NULL,0,'Home',NULL,'_self',1,'2024-06-04 23:59:49','2024-06-04 23:59:49'),(2,1,1,NULL,NULL,'https://shofy.botble.com',NULL,0,'Electronics',NULL,'_self',0,'2024-06-04 23:59:49','2024-06-04 23:59:49'),(3,1,1,NULL,NULL,'https://shofy-fashion.botble.com',NULL,0,'Fashion',NULL,'_self',0,'2024-06-04 23:59:49','2024-06-04 23:59:49'),(4,1,1,NULL,NULL,'https://shofy-beauty.botble.com',NULL,0,'Beauty',NULL,'_self',0,'2024-06-04 23:59:49','2024-06-04 23:59:49'),(5,1,1,NULL,NULL,'https://shofy-jewelry.botble.com',NULL,0,'Jewelry',NULL,'_self',0,'2024-06-04 23:59:49','2024-06-04 23:59:49'),(6,1,1,NULL,NULL,'https://shofy-grocery.botble.com',NULL,0,'Grocery',NULL,'_self',0,'2024-06-04 23:59:49','2024-06-04 23:59:49'),(7,1,0,NULL,NULL,NULL,NULL,0,'Shop',NULL,'_self',1,'2024-06-04 23:59:49','2024-06-04 23:59:49'),(8,1,7,2,'Botble\\Page\\Models\\Page','/product-categories',NULL,0,'Shop Categories',NULL,'_self',0,'2024-06-04 23:59:49','2024-06-04 23:59:49'),(9,1,7,NULL,NULL,'/products?layout=list',NULL,0,'Shop List',NULL,'_self',0,'2024-06-04 23:59:49','2024-06-04 23:59:49'),(10,1,7,NULL,NULL,'/products?layout=grid',NULL,0,'Shop Grid',NULL,'_self',0,'2024-06-04 23:59:49','2024-06-04 23:59:49'),(11,1,7,NULL,NULL,'/products/sony-x950h-4k-ultra-hd-smart-led-tv',NULL,0,'Product Detail',NULL,'_self',0,'2024-06-04 23:59:49','2024-06-04 23:59:49'),(12,1,7,3,'Botble\\Page\\Models\\Page','/coupons',NULL,0,'Grab Coupons',NULL,'_self',0,'2024-06-04 23:59:49','2024-06-04 23:59:49'),(13,1,7,NULL,NULL,'/cart',NULL,0,'Cart',NULL,'_self',0,'2024-06-04 23:59:49','2024-06-04 23:59:49'),(14,1,7,NULL,NULL,'/compare',NULL,0,'Compare',NULL,'_self',0,'2024-06-04 23:59:49','2024-06-04 23:59:49'),(15,1,7,NULL,NULL,'/wishlist',NULL,0,'Wishlist',NULL,'_self',0,'2024-06-04 23:59:49','2024-06-04 23:59:49'),(16,1,7,NULL,NULL,'/orders/tracking',NULL,0,'Track Your Order',NULL,'_self',0,'2024-06-04 23:59:49','2024-06-04 23:59:49'),(17,1,0,NULL,NULL,'/stores',NULL,0,'Vendors',NULL,'_self',0,'2024-06-04 23:59:49','2024-06-04 23:59:49'),(18,1,0,NULL,NULL,NULL,NULL,0,'Pages',NULL,'_self',1,'2024-06-04 23:59:49','2024-06-04 23:59:49'),(19,1,18,6,'Botble\\Page\\Models\\Page','/faqs',NULL,0,'FAQs',NULL,'_self',0,'2024-06-04 23:59:49','2024-06-04 23:59:49'),(20,1,18,NULL,NULL,'/login',NULL,0,'Login',NULL,'_self',0,'2024-06-04 23:59:49','2024-06-04 23:59:49'),(21,1,18,NULL,NULL,'/register',NULL,0,'Register',NULL,'_self',0,'2024-06-04 23:59:49','2024-06-04 23:59:49'),(22,1,18,NULL,NULL,'/password/reset',NULL,0,'Forgot Password',NULL,'_self',0,'2024-06-04 23:59:49','2024-06-04 23:59:49'),(23,1,18,NULL,NULL,'/404',NULL,0,'404 Error',NULL,'_self',0,'2024-06-04 23:59:49','2024-06-04 23:59:49'),(24,1,18,NULL,NULL,'/coming-soon',NULL,0,'Coming Soon',NULL,'_self',0,'2024-06-04 23:59:49','2024-06-04 23:59:49'),(25,1,0,4,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Blog',NULL,'_self',1,'2024-06-04 23:59:49','2024-06-04 23:59:49'),(26,1,25,NULL,NULL,'/blog?layout=grid',NULL,0,'Blog Grid',NULL,'_self',0,'2024-06-04 23:59:49','2024-06-04 23:59:49'),(27,1,25,NULL,NULL,'/blog?layout=list',NULL,0,'Blog List',NULL,'_self',0,'2024-06-04 23:59:49','2024-06-04 23:59:49'),(28,1,25,NULL,NULL,'/blog/freelancer-days-2024-whats-new',NULL,0,'Blog Detail',NULL,'_self',0,'2024-06-04 23:59:49','2024-06-04 23:59:49'),(29,1,0,5,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Contact',NULL,'_self',0,'2024-06-04 23:59:49','2024-06-04 23:59:49'),(30,2,0,NULL,NULL,'/orders/tracking',NULL,1,'Track Orders',NULL,'_self',0,'2024-06-04 23:59:49','2024-06-04 23:59:49'),(31,2,0,10,'Botble\\Page\\Models\\Page','/shipping',NULL,1,'Shipping',NULL,'_self',0,'2024-06-04 23:59:49','2024-06-04 23:59:49'),(32,2,0,NULL,NULL,'/wishlist',NULL,1,'Wishlist',NULL,'_self',0,'2024-06-04 23:59:49','2024-06-04 23:59:49'),(33,2,0,NULL,NULL,'/customer/overview',NULL,1,'My Account',NULL,'_self',0,'2024-06-04 23:59:49','2024-06-04 23:59:49'),(34,2,0,NULL,NULL,'/customer/orders',NULL,1,'Order History',NULL,'_self',0,'2024-06-04 23:59:49','2024-06-04 23:59:49'),(35,2,0,NULL,NULL,'/customer/order-returns',NULL,1,'Returns',NULL,'_self',0,'2024-06-04 23:59:49','2024-06-04 23:59:49'),(36,3,0,8,'Botble\\Page\\Models\\Page','/our-story',NULL,2,'Our Story',NULL,'_self',0,'2024-06-04 23:59:49','2024-06-04 23:59:49'),(37,3,0,9,'Botble\\Page\\Models\\Page','/careers',NULL,2,'Careers',NULL,'_self',0,'2024-06-04 23:59:49','2024-06-04 23:59:49'),(38,3,0,7,'Botble\\Page\\Models\\Page','/cookie-policy',NULL,2,'Privacy Policy',NULL,'_self',0,'2024-06-04 23:59:49','2024-06-04 23:59:49'),(39,3,0,NULL,NULL,'/blog',NULL,2,'Latest News',NULL,'_self',0,'2024-06-04 23:59:49','2024-06-04 23:59:49'),(40,3,0,5,'Botble\\Page\\Models\\Page','/contact',NULL,2,'Contact Us',NULL,'_self',0,'2024-06-04 23:59:49','2024-06-04 23:59:49');
/*!40000 ALTER TABLE `menu_nodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menus` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'Main menu','main-menu','published','2024-06-04 23:59:49','2024-06-04 23:59:49'),(2,'My Account','my-account','published','2024-06-04 23:59:49','2024-06-04 23:59:49'),(3,'Information','information','published','2024-06-04 23:59:49','2024-06-04 23:59:49');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_boxes`
--

DROP TABLE IF EXISTS `meta_boxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meta_boxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `meta_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8mb4_unicode_ci,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `meta_boxes_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_boxes`
--

LOCK TABLES `meta_boxes` WRITE;
/*!40000 ALTER TABLE `meta_boxes` DISABLE KEYS */;
INSERT INTO `meta_boxes` VALUES (1,'background_color','[\"#115061\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-06-04 23:59:45','2024-06-04 23:59:45'),(2,'is_light','[0]',1,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-06-04 23:59:45','2024-06-04 23:59:45'),(3,'subtitle','[\"Starting at <b>$274.00<\\/b>\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-06-04 23:59:45','2024-06-04 23:59:45'),(4,'button_label','[\"Shop Now\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-06-04 23:59:45','2024-06-04 23:59:45'),(5,'background_color','[\"#115061\"]',2,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-06-04 23:59:45','2024-06-04 23:59:45'),(6,'is_light','[0]',2,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-06-04 23:59:45','2024-06-04 23:59:45'),(7,'subtitle','[\"Starting at <b>$999.00<\\/b>\"]',2,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-06-04 23:59:45','2024-06-04 23:59:45'),(8,'button_label','[\"Shop Now\"]',2,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-06-04 23:59:45','2024-06-04 23:59:45'),(9,'background_color','[\"#E3EDF6\"]',3,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-06-04 23:59:45','2024-06-04 23:59:45'),(10,'is_light','[1]',3,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-06-04 23:59:45','2024-06-04 23:59:45'),(11,'subtitle','[\"Starting at <b>$999.00<\\/b>\"]',3,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-06-04 23:59:45','2024-06-04 23:59:45'),(12,'button_label','[\"Shop Now\"]',3,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-06-04 23:59:45','2024-06-04 23:59:45'),(13,'faq_ids','[[1,3,6,7,9]]',1,'Botble\\Ecommerce\\Models\\Product','2024-06-04 23:59:47','2024-06-04 23:59:47'),(14,'faq_ids','[[3,4,6,9,10]]',2,'Botble\\Ecommerce\\Models\\Product','2024-06-04 23:59:47','2024-06-04 23:59:47'),(15,'faq_ids','[[1,6,7,8,9]]',3,'Botble\\Ecommerce\\Models\\Product','2024-06-04 23:59:47','2024-06-04 23:59:47'),(16,'faq_ids','[[4,5,7,8,10]]',4,'Botble\\Ecommerce\\Models\\Product','2024-06-04 23:59:47','2024-06-04 23:59:47'),(17,'faq_ids','[[3,4,6,7,8]]',5,'Botble\\Ecommerce\\Models\\Product','2024-06-04 23:59:47','2024-06-04 23:59:47'),(18,'faq_ids','[[1,4,5,6,8]]',6,'Botble\\Ecommerce\\Models\\Product','2024-06-04 23:59:47','2024-06-04 23:59:47'),(19,'faq_ids','[[2,4,5,8,10]]',7,'Botble\\Ecommerce\\Models\\Product','2024-06-04 23:59:47','2024-06-04 23:59:47'),(20,'faq_ids','[[4,5,7,9,10]]',8,'Botble\\Ecommerce\\Models\\Product','2024-06-04 23:59:47','2024-06-04 23:59:47'),(21,'faq_ids','[[3,5,6,9,10]]',9,'Botble\\Ecommerce\\Models\\Product','2024-06-04 23:59:47','2024-06-04 23:59:47'),(22,'faq_ids','[[2,4,6,9,10]]',10,'Botble\\Ecommerce\\Models\\Product','2024-06-04 23:59:47','2024-06-04 23:59:47'),(23,'faq_ids','[[2,6,8,9,10]]',11,'Botble\\Ecommerce\\Models\\Product','2024-06-04 23:59:47','2024-06-04 23:59:47'),(24,'faq_ids','[[1,2,5,7,8]]',12,'Botble\\Ecommerce\\Models\\Product','2024-06-04 23:59:47','2024-06-04 23:59:47'),(25,'faq_ids','[[1,3,5,7,9]]',13,'Botble\\Ecommerce\\Models\\Product','2024-06-04 23:59:47','2024-06-04 23:59:47'),(26,'faq_ids','[[2,4,7,8,10]]',14,'Botble\\Ecommerce\\Models\\Product','2024-06-04 23:59:47','2024-06-04 23:59:47'),(27,'faq_ids','[[2,3,7,9,10]]',15,'Botble\\Ecommerce\\Models\\Product','2024-06-04 23:59:47','2024-06-04 23:59:47'),(28,'faq_ids','[[4,5,7,8,10]]',16,'Botble\\Ecommerce\\Models\\Product','2024-06-04 23:59:47','2024-06-04 23:59:47'),(29,'faq_ids','[[3,4,5,8,10]]',17,'Botble\\Ecommerce\\Models\\Product','2024-06-04 23:59:47','2024-06-04 23:59:47'),(30,'faq_ids','[[1,6,7,9,10]]',18,'Botble\\Ecommerce\\Models\\Product','2024-06-04 23:59:47','2024-06-04 23:59:47'),(31,'faq_ids','[[2,3,5,8,10]]',19,'Botble\\Ecommerce\\Models\\Product','2024-06-04 23:59:47','2024-06-04 23:59:47'),(32,'faq_ids','[[2,3,6,7,10]]',20,'Botble\\Ecommerce\\Models\\Product','2024-06-04 23:59:47','2024-06-04 23:59:47'),(33,'faq_ids','[[3,5,6,7,9]]',21,'Botble\\Ecommerce\\Models\\Product','2024-06-04 23:59:47','2024-06-04 23:59:47'),(34,'faq_ids','[[1,2,5,6,7]]',22,'Botble\\Ecommerce\\Models\\Product','2024-06-04 23:59:47','2024-06-04 23:59:47'),(35,'faq_ids','[[3,4,5,9,10]]',23,'Botble\\Ecommerce\\Models\\Product','2024-06-04 23:59:47','2024-06-04 23:59:47'),(36,'faq_ids','[[2,3,4,5,8]]',24,'Botble\\Ecommerce\\Models\\Product','2024-06-04 23:59:47','2024-06-04 23:59:47'),(37,'faq_ids','[[2,3,5,7,9]]',25,'Botble\\Ecommerce\\Models\\Product','2024-06-04 23:59:47','2024-06-04 23:59:47'),(38,'faq_ids','[[2,5,6,7,8]]',26,'Botble\\Ecommerce\\Models\\Product','2024-06-04 23:59:47','2024-06-04 23:59:47'),(39,'faq_ids','[[1,2,6,7,10]]',27,'Botble\\Ecommerce\\Models\\Product','2024-06-04 23:59:47','2024-06-04 23:59:47'),(40,'faq_ids','[[1,2,3,6,9]]',28,'Botble\\Ecommerce\\Models\\Product','2024-06-04 23:59:47','2024-06-04 23:59:47'),(41,'faq_ids','[[1,4,7,8,9]]',29,'Botble\\Ecommerce\\Models\\Product','2024-06-04 23:59:47','2024-06-04 23:59:47'),(42,'faq_ids','[[2,3,5,7,10]]',30,'Botble\\Ecommerce\\Models\\Product','2024-06-04 23:59:47','2024-06-04 23:59:47'),(43,'faq_ids','[[3,4,7,8,10]]',31,'Botble\\Ecommerce\\Models\\Product','2024-06-04 23:59:48','2024-06-04 23:59:48'),(44,'faq_ids','[[3,4,6,7,10]]',32,'Botble\\Ecommerce\\Models\\Product','2024-06-04 23:59:48','2024-06-04 23:59:48'),(45,'faq_ids','[[1,2,7,8,10]]',33,'Botble\\Ecommerce\\Models\\Product','2024-06-04 23:59:48','2024-06-04 23:59:48'),(46,'faq_ids','[[3,6,7,8,9]]',34,'Botble\\Ecommerce\\Models\\Product','2024-06-04 23:59:48','2024-06-04 23:59:48'),(47,'faq_ids','[[5,6,8,9,10]]',35,'Botble\\Ecommerce\\Models\\Product','2024-06-04 23:59:48','2024-06-04 23:59:48'),(48,'faq_ids','[[2,5,6,7,9]]',36,'Botble\\Ecommerce\\Models\\Product','2024-06-04 23:59:48','2024-06-04 23:59:48'),(49,'faq_ids','[[5,6,7,9,10]]',37,'Botble\\Ecommerce\\Models\\Product','2024-06-04 23:59:48','2024-06-04 23:59:48'),(50,'faq_ids','[[1,4,5,6,10]]',38,'Botble\\Ecommerce\\Models\\Product','2024-06-04 23:59:48','2024-06-04 23:59:48'),(51,'faq_ids','[[3,4,6,8,9]]',39,'Botble\\Ecommerce\\Models\\Product','2024-06-04 23:59:48','2024-06-04 23:59:48'),(52,'faq_ids','[[3,4,5,7,8]]',40,'Botble\\Ecommerce\\Models\\Product','2024-06-04 23:59:48','2024-06-04 23:59:48'),(53,'faq_ids','[[2,4,7,9,10]]',41,'Botble\\Ecommerce\\Models\\Product','2024-06-04 23:59:48','2024-06-04 23:59:48'),(54,'faq_ids','[[1,5,6,7,9]]',42,'Botble\\Ecommerce\\Models\\Product','2024-06-04 23:59:48','2024-06-04 23:59:48'),(55,'faq_ids','[[2,4,8,9,10]]',43,'Botble\\Ecommerce\\Models\\Product','2024-06-04 23:59:48','2024-06-04 23:59:48'),(56,'faq_ids','[[2,3,5,9,10]]',44,'Botble\\Ecommerce\\Models\\Product','2024-06-04 23:59:48','2024-06-04 23:59:48'),(57,'faq_ids','[[1,2,3,4,5]]',45,'Botble\\Ecommerce\\Models\\Product','2024-06-04 23:59:48','2024-06-04 23:59:48'),(58,'faq_ids','[[1,3,5,6,7]]',46,'Botble\\Ecommerce\\Models\\Product','2024-06-04 23:59:48','2024-06-04 23:59:48'),(59,'faq_ids','[[1,4,5,8,9]]',47,'Botble\\Ecommerce\\Models\\Product','2024-06-04 23:59:48','2024-06-04 23:59:48'),(60,'faq_ids','[[2,5,8,9,10]]',48,'Botble\\Ecommerce\\Models\\Product','2024-06-04 23:59:48','2024-06-04 23:59:48'),(61,'faq_ids','[[2,3,5,7,8]]',49,'Botble\\Ecommerce\\Models\\Product','2024-06-04 23:59:48','2024-06-04 23:59:48'),(62,'faq_ids','[[1,2,3,6,8]]',50,'Botble\\Ecommerce\\Models\\Product','2024-06-04 23:59:48','2024-06-04 23:59:48'),(63,'faq_ids','[[1,4,8,9,10]]',51,'Botble\\Ecommerce\\Models\\Product','2024-06-04 23:59:48','2024-06-04 23:59:48'),(64,'faq_ids','[[2,4,5,7,8]]',52,'Botble\\Ecommerce\\Models\\Product','2024-06-04 23:59:48','2024-06-04 23:59:48'),(65,'faq_ids','[[2,3,5,8,10]]',53,'Botble\\Ecommerce\\Models\\Product','2024-06-04 23:59:48','2024-06-04 23:59:48'),(66,'faq_ids','[[1,3,7,8,9]]',54,'Botble\\Ecommerce\\Models\\Product','2024-06-04 23:59:48','2024-06-04 23:59:48'),(67,'faq_ids','[[1,3,4,5,9]]',55,'Botble\\Ecommerce\\Models\\Product','2024-06-04 23:59:48','2024-06-04 23:59:48'),(68,'faq_ids','[[1,4,5,9,10]]',56,'Botble\\Ecommerce\\Models\\Product','2024-06-04 23:59:48','2024-06-04 23:59:48'),(69,'faq_ids','[[1,5,6,7,8]]',57,'Botble\\Ecommerce\\Models\\Product','2024-06-04 23:59:48','2024-06-04 23:59:48'),(70,'title','[\"Smartphone \\n BLU G91 Pro 2022\"]',1,'Botble\\Ads\\Models\\Ads','2024-06-04 23:59:49','2024-06-04 23:59:49'),(71,'subtitle','[\"Sale 20% off all store\"]',1,'Botble\\Ads\\Models\\Ads','2024-06-04 23:59:49','2024-06-04 23:59:49'),(72,'button_label','[\"Shop Now\"]',1,'Botble\\Ads\\Models\\Ads','2024-06-04 23:59:49','2024-06-04 23:59:49'),(73,'title','[\"HyperX Cloud II \\n Wireless\"]',2,'Botble\\Ads\\Models\\Ads','2024-06-04 23:59:49','2024-06-04 23:59:49'),(74,'subtitle','[\"Sale 35% off\"]',2,'Botble\\Ads\\Models\\Ads','2024-06-04 23:59:49','2024-06-04 23:59:49'),(75,'button_label','[\"Shop Now\"]',2,'Botble\\Ads\\Models\\Ads','2024-06-04 23:59:49','2024-06-04 23:59:49'),(76,'title','[\"Selected novelty \\n Products\"]',3,'Botble\\Ads\\Models\\Ads','2024-06-04 23:59:49','2024-06-04 23:59:49'),(77,'subtitle','[\"Only $99.00\"]',3,'Botble\\Ads\\Models\\Ads','2024-06-04 23:59:49','2024-06-04 23:59:49'),(78,'title','[\"Top Rated \\n Products\"]',4,'Botble\\Ads\\Models\\Ads','2024-06-04 23:59:49','2024-06-04 23:59:49'),(79,'subtitle','[\"Only $55.00\"]',4,'Botble\\Ads\\Models\\Ads','2024-06-04 23:59:49','2024-06-04 23:59:49'),(80,'title','[\"Samsung Galaxy Tab S6, Wifi Tablet\"]',5,'Botble\\Ads\\Models\\Ads','2024-06-04 23:59:49','2024-06-04 23:59:49'),(81,'subtitle','[\"Tablet Collection 2023\"]',5,'Botble\\Ads\\Models\\Ads','2024-06-04 23:59:49','2024-06-04 23:59:49'),(82,'button_label','[\"Shop Now\"]',5,'Botble\\Ads\\Models\\Ads','2024-06-04 23:59:49','2024-06-04 23:59:49'),(83,'title','[\"Samsung Galaxy Tab S6, Wifi Tablet\"]',6,'Botble\\Ads\\Models\\Ads','2024-06-04 23:59:49','2024-06-04 23:59:49'),(84,'subtitle','[\"Tablet Collection 2023\"]',6,'Botble\\Ads\\Models\\Ads','2024-06-04 23:59:49','2024-06-04 23:59:49'),(85,'button_label','[\"Shop Now\"]',6,'Botble\\Ads\\Models\\Ads','2024-06-04 23:59:49','2024-06-04 23:59:49'),(86,'title','[\"Samsung Galaxy Tab S6, Wifi Tablet\"]',7,'Botble\\Ads\\Models\\Ads','2024-06-04 23:59:49','2024-06-04 23:59:49'),(87,'subtitle','[\"Tablet Collection 2023\"]',7,'Botble\\Ads\\Models\\Ads','2024-06-04 23:59:49','2024-06-04 23:59:49'),(88,'button_label','[\"Shop Now\"]',7,'Botble\\Ads\\Models\\Ads','2024-06-04 23:59:49','2024-06-04 23:59:49'),(89,'breadcrumb_style','[\"none\"]',1,'Botble\\Page\\Models\\Page','2024-06-04 23:59:49','2024-06-04 23:59:49'),(90,'breadcrumb_style','[\"align-center\"]',6,'Botble\\Page\\Models\\Page','2024-06-04 23:59:49','2024-06-04 23:59:49');
/*!40000 ALTER TABLE `meta_boxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=196 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2013_04_09_032329_create_base_tables',1),(2,'2013_04_09_062329_create_revisions_table',1),(3,'2014_10_12_000000_create_users_table',1),(4,'2014_10_12_100000_create_password_reset_tokens_table',1),(5,'2015_06_18_033822_create_blog_table',1),(6,'2015_06_29_025744_create_audit_history',1),(7,'2016_05_28_112028_create_system_request_logs_table',1),(8,'2016_06_10_230148_create_acl_tables',1),(9,'2016_06_14_230857_create_menus_table',1),(10,'2016_06_17_091537_create_contacts_table',1),(11,'2016_06_28_221418_create_pages_table',1),(12,'2016_10_03_032336_create_languages_table',1),(13,'2016_10_05_074239_create_setting_table',1),(14,'2016_10_07_193005_create_translations_table',1),(15,'2016_10_13_150201_create_galleries_table',1),(16,'2016_11_28_032840_create_dashboard_widget_tables',1),(17,'2016_12_16_084601_create_widgets_table',1),(18,'2017_05_09_070343_create_media_tables',1),(19,'2017_05_18_080441_create_payment_tables',1),(20,'2017_07_11_140018_create_simple_slider_table',1),(21,'2017_10_24_154832_create_newsletter_table',1),(22,'2017_11_03_070450_create_slug_table',1),(23,'2018_07_09_214610_create_testimonial_table',1),(24,'2018_07_09_221238_create_faq_table',1),(25,'2019_01_05_053554_create_jobs_table',1),(26,'2019_08_19_000000_create_failed_jobs_table',1),(27,'2019_11_18_061011_create_country_table',1),(28,'2019_12_14_000001_create_personal_access_tokens_table',1),(29,'2020_03_05_041139_create_ecommerce_tables',1),(30,'2020_11_18_150916_ads_create_ads_table',1),(31,'2021_01_01_044147_ecommerce_create_flash_sale_table',1),(32,'2021_01_17_082713_add_column_is_featured_to_product_collections_table',1),(33,'2021_01_18_024333_add_zip_code_into_table_customer_addresses',1),(34,'2021_02_16_092633_remove_default_value_for_author_type',1),(35,'2021_02_18_073505_update_table_ec_reviews',1),(36,'2021_03_10_024419_add_column_confirmed_at_to_table_ec_customers',1),(37,'2021_03_10_025153_change_column_tax_amount',1),(38,'2021_03_20_033103_add_column_availability_to_table_ec_products',1),(39,'2021_03_27_144913_add_customer_type_into_table_payments',1),(40,'2021_04_28_074008_ecommerce_create_product_label_table',1),(41,'2021_05_24_034720_make_column_currency_nullable',1),(42,'2021_05_31_173037_ecommerce_create_ec_products_translations',1),(43,'2021_07_06_030002_create_marketplace_table',1),(44,'2021_08_09_161302_add_metadata_column_to_payments_table',1),(45,'2021_08_17_105016_remove_column_currency_id_in_some_tables',1),(46,'2021_08_30_142128_add_images_column_to_ec_reviews_table',1),(47,'2021_09_04_150137_add_vendor_verified_at_to_ec_customers_table',1),(48,'2021_10_04_030050_add_column_created_by_to_table_ec_products',1),(49,'2021_10_04_033903_add_column_approved_by_into_table_ec_products',1),(50,'2021_10_05_122616_add_status_column_to_ec_customers_table',1),(51,'2021_10_06_124943_add_transaction_id_column_to_mp_customer_withdrawals_table',1),(52,'2021_10_10_054216_add_columns_to_mp_customer_revenues_table',1),(53,'2021_10_19_020859_update_metadata_field',1),(54,'2021_10_25_021023_fix-priority-load-for-language-advanced',1),(55,'2021_11_03_025806_nullable_phone_number_in_ec_customer_addresses',1),(56,'2021_11_23_071403_correct_languages_for_product_variations',1),(57,'2021_11_28_031808_add_product_tags_translations',1),(58,'2021_12_01_031123_add_featured_image_to_ec_products',1),(59,'2021_12_02_035301_add_ads_translations_table',1),(60,'2021_12_03_030600_create_blog_translations',1),(61,'2021_12_03_075608_create_page_translations',1),(62,'2021_12_03_082134_create_faq_translations',1),(63,'2021_12_03_082953_create_gallery_translations',1),(64,'2021_12_03_083642_create_testimonials_translations',1),(65,'2021_12_03_084118_create_location_translations',1),(66,'2021_12_03_094518_migrate_old_location_data',1),(67,'2021_12_06_031304_update_table_mp_customer_revenues',1),(68,'2021_12_10_034440_switch_plugin_location_to_use_language_advanced',1),(69,'2022_01_01_033107_update_table_ec_shipments',1),(70,'2022_01_16_085908_improve_plugin_location',1),(71,'2022_02_16_042457_improve_product_attribute_sets',1),(72,'2022_03_22_075758_correct_product_name',1),(73,'2022_04_19_113334_add_index_to_ec_products',1),(74,'2022_04_19_113923_add_index_to_table_posts',1),(75,'2022_04_20_100851_add_index_to_media_table',1),(76,'2022_04_20_101046_add_index_to_menu_table',1),(77,'2022_04_28_144405_remove_unused_table',1),(78,'2022_04_30_034048_create_gallery_meta_translations_table',1),(79,'2022_05_05_115015_create_ec_customer_recently_viewed_products_table',1),(80,'2022_05_18_143720_add_index_to_table_ec_product_categories',1),(81,'2022_06_16_095633_add_index_to_some_tables',1),(82,'2022_06_28_151901_activate_paypal_stripe_plugin',1),(83,'2022_06_30_035148_create_order_referrals_table',1),(84,'2022_07_07_153354_update_charge_id_in_table_payments',1),(85,'2022_07_10_034813_move_lang_folder_to_root',1),(86,'2022_07_24_153815_add_completed_at_to_ec_orders_table',1),(87,'2022_08_04_051940_add_missing_column_expires_at',1),(88,'2022_08_04_052122_delete_location_backup_tables',1),(89,'2022_08_14_032836_create_ec_order_returns_table',1),(90,'2022_08_14_033554_create_ec_order_return_items_table',1),(91,'2022_08_15_040324_add_billing_address',1),(92,'2022_08_30_091114_support_digital_products_table',1),(93,'2022_09_01_000001_create_admin_notifications_tables',1),(94,'2022_09_13_095744_create_options_table',1),(95,'2022_09_13_104347_create_option_value_table',1),(96,'2022_10_05_163518_alter_table_ec_order_product',1),(97,'2022_10_12_041517_create_invoices_table',1),(98,'2022_10_12_142226_update_orders_table',1),(99,'2022_10_13_024916_update_table_order_returns',1),(100,'2022_10_14_024629_drop_column_is_featured',1),(101,'2022_10_19_152916_add_columns_to_mp_stores_table',1),(102,'2022_10_20_062849_create_mp_category_sale_commissions_table',1),(103,'2022_10_21_030830_update_columns_in_ec_shipments_table',1),(104,'2022_10_28_021046_update_columns_in_ec_shipments_table',1),(105,'2022_11_02_071413_add_more_info_for_store',1),(106,'2022_11_02_080444_add_tax_info',1),(107,'2022_11_16_034522_update_type_column_in_ec_shipping_rules_table',1),(108,'2022_11_18_063357_add_missing_timestamp_in_table_settings',1),(109,'2022_11_19_041643_add_ec_tax_product_table',1),(110,'2022_12_02_093615_update_slug_index_columns',1),(111,'2022_12_12_063830_update_tax_defadult_in_ec_tax_products_table',1),(112,'2022_12_17_041532_fix_address_in_order_invoice',1),(113,'2022_12_26_070329_create_ec_product_views_table',1),(114,'2023_01_04_033051_fix_product_categories',1),(115,'2023_01_09_050400_add_ec_global_options_translations_table',1),(116,'2023_01_10_093754_add_missing_option_value_id',1),(117,'2023_01_17_082713_add_column_barcode_and_cost_per_item_to_product_table',1),(118,'2023_01_26_021854_add_ec_customer_used_coupons_table',1),(119,'2023_01_30_024431_add_alt_to_media_table',1),(120,'2023_02_01_062030_add_store_translations',1),(121,'2023_02_08_015900_update_options_column_in_ec_order_product_table',1),(122,'2023_02_13_032133_update_fee_column_mp_customer_revenues_table',1),(123,'2023_02_16_042611_drop_table_password_resets',1),(124,'2023_02_17_023648_fix_store_prefix',1),(125,'2023_02_27_095752_remove_duplicate_reviews',1),(126,'2023_03_20_115757_add_user_type_column_to_ec_shipment_histories_table',1),(127,'2023_04_17_062645_add_open_in_new_tab',1),(128,'2023_04_21_082427_create_ec_product_categorizables_table',1),(129,'2023_04_23_005903_add_column_permissions_to_admin_notifications',1),(130,'2023_04_23_061847_increase_state_translations_abbreviation_column',1),(131,'2023_05_03_011331_add_missing_column_price_into_invoice_items_table',1),(132,'2023_05_10_075124_drop_column_id_in_role_users_table',1),(133,'2023_05_17_025812_fix_invoice_issue',1),(134,'2023_05_26_073140_move_option_make_phone_field_optional_at_checkout_page_to_mandatory_fields',1),(135,'2023_05_27_144611_fix_exchange_rate_setting',1),(136,'2023_06_22_084331_add_generate_license_code_to_ec_products_table',1),(137,'2023_06_30_042512_create_ec_order_tax_information_table',1),(138,'2023_07_06_011444_create_slug_translations_table',1),(139,'2023_07_14_022724_remove_column_id_from_ec_product_collection_products',1),(140,'2023_07_26_041451_add_more_columns_to_location_table',1),(141,'2023_07_27_041451_add_more_columns_to_location_translation_table',1),(142,'2023_08_09_012940_remove_column_status_in_ec_product_attributes',1),(143,'2023_08_11_060908_create_announcements_table',1),(144,'2023_08_15_064505_create_ec_tax_rules_table',1),(145,'2023_08_15_073307_drop_unique_in_states_cities_translations',1),(146,'2023_08_21_021819_make_column_address_in_ec_customer_addresses_nullable',1),(147,'2023_08_21_090810_make_page_content_nullable',1),(148,'2023_08_22_094114_drop_unique_for_barcode',1),(149,'2023_08_29_074620_make_column_author_id_nullable',1),(150,'2023_08_29_075308_make_column_user_id_nullable',1),(151,'2023_08_30_031811_add_apply_via_url_column_to_ec_discounts_table',1),(152,'2023_09_07_094312_add_index_to_product_sku_and_translations',1),(153,'2023_09_14_021936_update_index_for_slugs_table',1),(154,'2023_09_14_022423_add_index_for_language_table',1),(155,'2023_09_19_024955_create_discount_product_categories_table',1),(156,'2023_10_17_070728_add_icon_and_icon_image_to_product_categories_table',1),(157,'2023_10_21_065016_make_state_id_in_table_cities_nullable',1),(158,'2023_11_07_023805_add_tablet_mobile_image',1),(159,'2023_11_10_080225_migrate_contact_blacklist_email_domains_to_core',1),(160,'2023_11_14_033417_change_request_column_in_table_audit_histories',1),(161,'2023_11_17_063408_add_description_column_to_faq_categories_table',1),(162,'2023_11_22_154643_add_unique_in_table_ec_products_variations',1),(163,'2023_11_27_032313_add_price_columns_to_ec_product_cross_sale_relations_table',1),(164,'2023_12_06_023945_add_display_on_checkout_column_to_ec_discounts_table',1),(165,'2023_12_06_100448_change_random_hash_for_media',1),(166,'2023_12_07_095130_add_color_column_to_media_folders_table',1),(167,'2023_12_12_105220_drop_translations_table',1),(168,'2023_12_17_162208_make_sure_column_color_in_media_folders_nullable',1),(169,'2023_12_25_040604_ec_create_review_replies_table',1),(170,'2023_12_26_090340_add_private_notes_column_to_ec_customers_table',1),(171,'2024_01_16_070706_fix_translation_tables',1),(172,'2024_01_23_075227_add_proof_file_to_ec_orders_table',1),(173,'2024_03_14_041050_migrate_lazy_load_theme_options',1),(174,'2024_03_20_080001_migrate_change_attribute_email_to_nullable_form_contacts_table',1),(175,'2024_03_21_100334_update_section_title_shape',1),(176,'2024_03_25_000001_update_captcha_settings_for_contact',1),(177,'2024_03_25_000001_update_captcha_settings_for_newsletter',1),(178,'2024_03_26_041531_add_cancel_reason_to_ec_orders_table',1),(179,'2024_03_27_062402_create_ec_customer_deletion_requests_table',1),(180,'2024_03_29_042242_migrate_old_captcha_settings',1),(181,'2024_03_29_093946_create_ec_order_return_histories_table',1),(182,'2024_04_01_043317_add_google_adsense_slot_id_to_ads_table',1),(183,'2024_04_01_063523_add_customer_columns_to_ec_reviews_table',1),(184,'2024_04_03_062451_add_cover_image_to_table_mp_stores',1),(185,'2024_04_04_110758_update_value_column_in_user_meta_table',1),(186,'2024_04_15_092654_migrate_ecommerce_google_tag_manager_code_setting',1),(187,'2024_04_16_035713_add_min_max_order_quantity_columns_to_products_table',1),(188,'2024_04_19_063914_create_custom_fields_table',1),(189,'2024_04_27_100730_improve_analytics_setting',1),(190,'2024_05_07_073153_improve_table_wishlist',1),(191,'2024_05_07_082630_create_mp_messages_table',1),(192,'2024_05_07_093703_add_missing_zip_code_into_table_store_locators',1),(193,'2024_05_12_091229_add_column_visibility_to_table_media_files',1),(194,'2024_05_15_021503_fix_invoice_path',1),(195,'2024_05_16_100000_change_random_hash_for_media',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_category_sale_commissions`
--

DROP TABLE IF EXISTS `mp_category_sale_commissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mp_category_sale_commissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_category_id` bigint unsigned NOT NULL,
  `commission_percentage` decimal(8,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mp_category_sale_commissions_product_category_id_unique` (`product_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_category_sale_commissions`
--

LOCK TABLES `mp_category_sale_commissions` WRITE;
/*!40000 ALTER TABLE `mp_category_sale_commissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_category_sale_commissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_customer_revenues`
--

DROP TABLE IF EXISTS `mp_customer_revenues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mp_customer_revenues` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned DEFAULT NULL,
  `order_id` bigint unsigned DEFAULT NULL,
  `sub_amount` decimal(15,2) DEFAULT '0.00',
  `fee` decimal(15,2) DEFAULT '0.00',
  `amount` decimal(15,2) DEFAULT '0.00',
  `current_balance` decimal(15,2) DEFAULT '0.00',
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_customer_revenues`
--

LOCK TABLES `mp_customer_revenues` WRITE;
/*!40000 ALTER TABLE `mp_customer_revenues` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_customer_revenues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_customer_withdrawals`
--

DROP TABLE IF EXISTS `mp_customer_withdrawals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mp_customer_withdrawals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned DEFAULT NULL,
  `fee` decimal(15,2) unsigned DEFAULT '0.00',
  `amount` decimal(15,2) unsigned DEFAULT '0.00',
  `current_balance` decimal(15,2) unsigned DEFAULT '0.00',
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `bank_info` text COLLATE utf8mb4_unicode_ci,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `images` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `transaction_id` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_customer_withdrawals`
--

LOCK TABLES `mp_customer_withdrawals` WRITE;
/*!40000 ALTER TABLE `mp_customer_withdrawals` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_customer_withdrawals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_messages`
--

DROP TABLE IF EXISTS `mp_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mp_messages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `store_id` bigint unsigned NOT NULL,
  `customer_id` bigint unsigned DEFAULT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_messages`
--

LOCK TABLES `mp_messages` WRITE;
/*!40000 ALTER TABLE `mp_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_stores`
--

DROP TABLE IF EXISTS `mp_stores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mp_stores` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` bigint unsigned DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `vendor_verified_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_stores`
--

LOCK TABLES `mp_stores` WRITE;
/*!40000 ALTER TABLE `mp_stores` DISABLE KEYS */;
INSERT INTO `mp_stores` VALUES (1,'GoPro','scotty69@example.net','+18484825962','1100 Bosco Mountain','KN','Colorado','Lake Angelo',5,'main/stores/1.png','main/stores/cover-2.png','Aliquam non aliquid iusto et. Eius omnis officia sunt animi. Sed accusantium corrupti fugit labore. Consequatur ut aut qui dolorem. Minus quo vel nam nam at libero earum. Temporibus ipsam similique sed. Ut dolorem deserunt aliquam ut saepe omnis ullam. Ut dolorem provident quas iste eum nam. Rerum enim ratione id libero cupiditate nam ducimus veritatis. Dolores minima fuga velit aliquam aut.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/main/blog/post-1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/main/blog/post-2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/main/blog/post-3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/main/blog/post-4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/main/blog/post-5.jpg\"></p>\n\n                <p> </p>\n                ','published',NULL,'2024-06-04 23:59:45','2024-06-04 23:59:45',NULL,NULL),(2,'Global Office','jacobson.amanda@example.net','+17275694549','6441 Daugherty Junction','BD','Illinois','Port Emely',4,'main/stores/2.png','main/stores/cover-2.png','Repellat repellendus non omnis similique ex in dolore. Omnis nihil molestiae perferendis numquam vel autem. At quas mollitia mollitia a vel consequatur necessitatibus in. Tempora dolorem iusto nulla non. Et iure aut facilis praesentium perferendis. Eum debitis voluptas ex saepe totam. Placeat deleniti aut esse nihil pariatur cum.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/main/blog/post-1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/main/blog/post-2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/main/blog/post-3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/main/blog/post-4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/main/blog/post-5.jpg\"></p>\n\n                <p> </p>\n                ','published',NULL,'2024-06-04 23:59:45','2024-06-04 23:59:45',NULL,NULL),(3,'Young Shop','rachelle00@example.net','+17269605324','620 Renner Spur Suite 341','AT','West Virginia','Waltonstad',8,'main/stores/3.png','main/stores/cover-1.png','Deserunt mollitia quas veniam neque. Sed molestias aut optio eos consequuntur necessitatibus quo. Sapiente odio error dolor ducimus reprehenderit. Beatae eius illum eveniet eligendi et. Deleniti explicabo incidunt velit eligendi. Culpa impedit ad voluptates nemo. Repellendus sed voluptatum nesciunt aut animi.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/main/blog/post-1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/main/blog/post-2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/main/blog/post-3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/main/blog/post-4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/main/blog/post-5.jpg\"></p>\n\n                <p> </p>\n                ','published',NULL,'2024-06-04 23:59:45','2024-06-04 23:59:45',NULL,NULL),(4,'Global Store','drew83@example.org','+17409590768','358 Kara Union Apt. 519','TZ','Rhode Island','Prosaccoland',6,'main/stores/4.png','main/stores/cover-1.png','Minima aperiam libero ut aut. Necessitatibus nam ipsum aspernatur laudantium recusandae. Est et dolorem fugit eaque vero. Ut perspiciatis incidunt est nostrum quae consectetur. Doloribus et placeat dolorem et pariatur quia maxime. Dolorem ut blanditiis voluptatem. Rem quam pariatur sit fuga quo nulla.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/main/blog/post-1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/main/blog/post-2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/main/blog/post-3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/main/blog/post-4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/main/blog/post-5.jpg\"></p>\n\n                <p> </p>\n                ','published',NULL,'2024-06-04 23:59:45','2024-06-04 23:59:45',NULL,NULL),(5,'Robert’s Store','karina85@example.com','+15679579192','5942 Sporer Knolls Suite 916','ST','Nevada','Elseton',4,'main/stores/5.png','main/stores/cover-4.png','Iure autem et saepe iure cupiditate consequuntur. Nihil excepturi at repudiandae. Perspiciatis accusamus quia dolor suscipit in. Suscipit sed voluptatem nemo sequi dolores dolor inventore. Aperiam dolor quo ut ut ut ut ducimus minus. Exercitationem commodi laboriosam quisquam dolorum suscipit.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/main/blog/post-1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/main/blog/post-2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/main/blog/post-3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/main/blog/post-4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/main/blog/post-5.jpg\"></p>\n\n                <p> </p>\n                ','published',NULL,'2024-06-04 23:59:45','2024-06-04 23:59:45',NULL,NULL),(6,'Stouffer','turcotte.emma@example.org','+19789161011','193 Jacquelyn Lodge','TC','Maine','Lake Helenefort',7,'main/stores/6.png','main/stores/cover-4.png','Dolores repellendus voluptatem earum fugit eveniet sapiente. Qui illum provident error adipisci nesciunt. Et inventore possimus dolor aliquam. Quaerat voluptatem eligendi dolores est libero veniam. Et non distinctio ut sint. Sunt inventore placeat optio ad quos sit occaecati. Ut quasi assumenda reiciendis aut animi sit sunt eum.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/main/blog/post-1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/main/blog/post-2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/main/blog/post-3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/main/blog/post-4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/main/blog/post-5.jpg\"></p>\n\n                <p> </p>\n                ','published',NULL,'2024-06-04 23:59:45','2024-06-04 23:59:45',NULL,NULL),(7,'StarKist','aiden07@example.com','+18627099880','40576 Kirlin Glen','IN','Oklahoma','Nienowhaven',6,'main/stores/7.png','main/stores/cover-2.png','Dolores autem nihil dolorum dolorum laborum consequatur qui. Temporibus similique et provident sed. At dolore nihil placeat cupiditate ducimus incidunt sed. Porro sed vel qui. Soluta non tempore omnis. Modi quae qui ducimus alias libero voluptatum necessitatibus. Adipisci autem voluptatem exercitationem nisi laborum recusandae distinctio.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/main/blog/post-1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/main/blog/post-2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/main/blog/post-3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/main/blog/post-4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/main/blog/post-5.jpg\"></p>\n\n                <p> </p>\n                ','published',NULL,'2024-06-04 23:59:45','2024-06-04 23:59:45',NULL,NULL),(8,'Old El Paso','qstoltenberg@example.org','+19295676898','98444 Bauch Plaza','IR','New Mexico','Magdalenshire',2,'main/stores/8.png','main/stores/cover-1.png','Accusantium sed temporibus et quaerat. Magnam qui adipisci illum. Quidem ut vel atque neque. Et iure possimus autem sed ducimus fugiat possimus pariatur. Consequatur qui omnis totam minima molestias. Sequi veritatis omnis harum et ex deserunt earum. Quis sed placeat sit error officiis voluptate quas molestiae.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/main/blog/post-1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/main/blog/post-2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/main/blog/post-3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/main/blog/post-4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/main/blog/post-5.jpg\"></p>\n\n                <p> </p>\n                ','published',NULL,'2024-06-04 23:59:45','2024-06-04 23:59:45',NULL,NULL);
/*!40000 ALTER TABLE `mp_stores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_stores_translations`
--

DROP TABLE IF EXISTS `mp_stores_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mp_stores_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mp_stores_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`mp_stores_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_stores_translations`
--

LOCK TABLES `mp_stores_translations` WRITE;
/*!40000 ALTER TABLE `mp_stores_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_stores_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_vendor_info`
--

DROP TABLE IF EXISTS `mp_vendor_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mp_vendor_info` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL DEFAULT '0',
  `balance` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total_fee` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total_revenue` decimal(15,2) NOT NULL DEFAULT '0.00',
  `signature` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_info` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `payout_payment_method` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT 'bank_transfer',
  `tax_info` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_vendor_info`
--

LOCK TABLES `mp_vendor_info` WRITE;
/*!40000 ALTER TABLE `mp_vendor_info` DISABLE KEYS */;
INSERT INTO `mp_vendor_info` VALUES (1,2,0.00,0.00,0.00,'$2y$12$Ta9tvczpHViQYMQRS.DnmuTOToiwxypN4GcmKAac3G40e/zjIrAbO','{\"name\":\"Lourdes Bailey\",\"number\":\"+18015931556\",\"full_name\":\"Miss Elta Berge Sr.\",\"description\":\"Israel Hammes\"}','2024-06-04 23:59:43','2024-06-04 23:59:43','bank_transfer',NULL),(2,3,0.00,0.00,0.00,'$2y$12$Nc.wbw9ascFNEAIqicR.7eWvd7if8bMROeyKrhBV/66NUb1FMj8Ei','{\"name\":\"Vergie Eichmann\",\"number\":\"+17377714920\",\"full_name\":\"Mr. Pierre Nienow II\",\"description\":\"Icie Kunze\"}','2024-06-04 23:59:44','2024-06-04 23:59:44','bank_transfer',NULL),(3,4,0.00,0.00,0.00,'$2y$12$kJocFxG65wmDvwLoHojKzuVU3oKoxaNwLhtUxqkoVVkqTxiidAK/2','{\"name\":\"Arne Bode\",\"number\":\"+13854222109\",\"full_name\":\"Salma Emmerich\",\"description\":\"Mrs. Norma Sipes\"}','2024-06-04 23:59:44','2024-06-04 23:59:44','bank_transfer',NULL),(4,5,0.00,0.00,0.00,'$2y$12$7oX.tAYscm9MUW7M5VPte.Lk1kLZZWjSCY6HB05x5EQ2/CvctDWHS','{\"name\":\"Roger Torp\",\"number\":\"+13095877056\",\"full_name\":\"Isadore Roberts\",\"description\":\"Corrine Schmidt\"}','2024-06-04 23:59:44','2024-06-04 23:59:44','bank_transfer',NULL),(5,6,0.00,0.00,0.00,'$2y$12$f0ffK/Q7//d1bJ0qyws5aOX.X18EkUl80NJ4y8lkHUpcKZyP6J5Bq','{\"name\":\"Icie Armstrong DVM\",\"number\":\"+14753231148\",\"full_name\":\"Alvena Stamm\",\"description\":\"Prof. Lorenz Labadie Jr.\"}','2024-06-04 23:59:44','2024-06-04 23:59:44','bank_transfer',NULL),(6,7,0.00,0.00,0.00,'$2y$12$Qwlz7fVgnM0a48YWSA0VQ.HrS5wm20byCMqGqIWFBn0IIdDrderhe','{\"name\":\"Ibrahim Tillman\",\"number\":\"+14847060549\",\"full_name\":\"Ephraim Stehr\",\"description\":\"Francesca Anderson\"}','2024-06-04 23:59:45','2024-06-04 23:59:45','bank_transfer',NULL),(7,8,0.00,0.00,0.00,'$2y$12$5FtgX964KV2LfTXnnoEi3u9jOCH2u0dXtTQEwoQk6wMGTnJmo14Za','{\"name\":\"Rachael Hegmann\",\"number\":\"+12602637555\",\"full_name\":\"Terence O\'Hara\",\"description\":\"Jazmyn Schneider\"}','2024-06-04 23:59:45','2024-06-04 23:59:45','bank_transfer',NULL);
/*!40000 ALTER TABLE `mp_vendor_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletters`
--

DROP TABLE IF EXISTS `newsletters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `newsletters` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'subscribed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsletters`
--

LOCK TABLES `newsletters` WRITE;
/*!40000 ALTER TABLE `newsletters` DISABLE KEYS */;
/*!40000 ALTER TABLE `newsletters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pages_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'Home','[simple-slider style=\"1\" key=\"home-slider\" customize_font_family_of_description=\"1\" font_family_of_description=\"Oregano\" shape_1=\"main/sliders/shape-1.png\" shape_2=\"main/sliders/shape-2.png\" shape_3=\"main/sliders/shape-3.png\" shape_4=\"main/sliders/shape-4.png\" is_autoplay=\"yes\" autoplay_speed=\"5000\"][/simple-slider][ecommerce-categories style=\"slider\" category_ids=\"6,10,13,16,30\" enable_lazy_loading=\"yes\"][/ecommerce-categories][site-features style=\"1\" quantity=\"4\" title_1=\"Free Delivery\" description_1=\"Orders from all item\" icon_1=\"ti ti-truck-delivery\" title_2=\"Return & Refund\" description_2=\"Money-back guarantee\" icon_2=\"ti ti-currency-dollar\" title_3=\"Member Discount\" description_3=\"Every order over $140.00\" icon_3=\"ti ti-discount-2\" title_4=\"Support 24/7\" description_4=\"Contact us 24 hours a day\" icon_4=\"ti ti-headset\" enable_lazy_loading=\"yes\"][/site-features][ecommerce-product-groups title=\"Trending Products\" limit=\"8\" tabs=\"all,featured,on-sale,trending,top-rated\" enable_lazy_loading=\"yes\"][/ecommerce-product-groups][ads style=\"1\" key_1=\"UROL9F9ZZVAA\" key_2=\"B30VDBKO7SBF\" enable_lazy_loading=\"yes\"][/ads][ecommerce-flash-sale style=\"1\" title=\"Deal of The Day\" flash_sale_id=\"1\" limit=\"4\" button_label=\"View All Deals\" button_url=\"/products\" enable_lazy_loading=\"yes\"][/ecommerce-flash-sale][ecommerce-products style=\"grid\" category_ids=\"20\" limit=\"12\" with_sidebar=\"on\" image=\"main/gadgets/gadget-girl.png\" action_label=\"More Products\" ads_ids=\"3,4\" enable_lazy_loading=\"yes\"][/ecommerce-products][ads style=\"4\" key_1=\"B5ZA76ZWMWAE\" key_2=\"F1LTQS976YPY\" key_3=\"IHPZ2WBSYJUK\" enable_lazy_loading=\"yes\"][/ads][ecommerce-products style=\"slider\" title=\"New Arrivals\" by=\"collection\" collection_ids=\"1\" limit=\"12\" enable_lazy_loading=\"yes\"][/ecommerce-products][ecommerce-product-groups style=\"columns\" limit=\"3\" tabs=\"on-sale,trending,top-rated\" enable_lazy_loading=\"yes\"][/ecommerce-product-groups][blog-posts title=\"Latest news & articles\" type=\"latest\" limit=\"3\" button_label=\"View All\" button_url=\"/blog\" enable_lazy_loading=\"yes\"][/blog-posts][gallery style=\"1\" limit=\"5\" enable_lazy_loading=\"yes\"][/gallery]',1,NULL,'full-width',NULL,'published','2024-06-04 23:59:49','2024-06-04 23:59:49'),(2,'Product Categories','[ads style=\"1\" key_1=\"UROL9F9ZZVAA\" key_2=\"B30VDBKO7SBF\" enable_lazy_loading=\"yes\"][/ads]<p>&nbsp;</p>[ecommerce-categories category_ids=\"11,14,17,18,21,22,23,25,38\" style=\"grid\" enable_lazy_loading=\"yes\"][/ecommerce-categories]<p>&nbsp;</p><p>&nbsp;</p>',1,NULL,'full-width',NULL,'published','2024-06-04 23:59:49','2024-06-04 23:59:49'),(3,'Coupons','[ecommerce-coupons coupon_ids=\"1,2,3,4,5,6\" enable_lazy_loading=\"yes\"][/ecommerce-coupons]',1,NULL,'full-width',NULL,'published','2024-06-04 23:59:49','2024-06-04 23:59:49'),(4,'Blog',NULL,1,NULL,'full-width',NULL,'published','2024-06-04 23:59:49','2024-06-04 23:59:49'),(5,'Contact','[contact-form show_contact_form=&quot;1&quot; title=&quot;Sent A Message&quot; quantity=&quot;2&quot; icon_1=&quot;main/contact/icon-1.png&quot; content_1=&quot;contact@shofy.com &lt;br&gt; &lt;strong&gt;+670 413 90 762&lt;/strong&gt;&quot; icon_2=&quot;main/contact/icon-2.png&quot; content_2=&quot;502 New St, Brighton VIC 3186, Australia&quot; show_social_info=&quot;1&quot; social_info_label=&quot;Find on social media&quot; social_info_icon=&quot;main/contact/icon-3.png&quot;][/contact-form][google-map]502 New Street, Brighton VIC, Australia[/google-map]',1,NULL,'full-width',NULL,'published','2024-06-04 23:59:49','2024-06-04 23:59:49'),(6,'FAQs','[faqs style=\"group\" title=\"Frequently Ask Questions\" description=\"Below are frequently asked questions, you may find the answer for yourself.\" category_ids=\"1,2,3\" expand_first_time=\"1\"][/faqs]',1,NULL,NULL,NULL,'published','2024-06-04 23:59:49','2024-06-04 23:59:49'),(7,'Cookie Policy','<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>',1,NULL,NULL,NULL,'published','2024-06-04 23:59:49','2024-06-04 23:59:49'),(8,'Our Story','<h4>A passion for handcrafted coffee, brewed with love and community.</h4>\n\n<p>\n    We are a small, family-owned coffee roaster dedicated to bringing the finest, ethically sourced beans to your cup. Our story began in a cozy kitchen, fueled by a shared passion for the rich aroma and invigorating taste of freshly brewed coffee. We dreamt of creating a space where people could connect over a warm cup, share stories, and experience the joy of handcrafted coffee.\n</p>\n\n<h4>From Humble Beginnings to Roasting Success:</h4>\n\n<p>\n    Our journey started with a small coffee roaster nestled in our garage. We spent countless hours experimenting with different roasting profiles, meticulously cupping each batch to achieve the perfect balance of flavor and aroma. Driven by a desire to make a difference, we built relationships with sustainable coffee farms around the world, ensuring fair trade practices and the highest quality beans.\n</p>\n\n<h4>Milestones and More to Come:</h4>\n\n<p>\n    Our dedication to quality and community resonated with coffee lovers, and our small business quickly grew. We opened our first cafe, a warm and inviting space where people could gather, savor our freshly roasted coffee, and connect with friends and neighbors. We\'ve continued to expand, now offering a variety of handcrafted coffee beverages, alongside delicious pastries and light bites.\n</p>\n\n<h4>Values at Our Core:</h4>\n\n<p>\n    At the heart of everything we do lies our commitment to ethical sourcing, sustainable practices, and building meaningful connections. We believe in supporting the communities that cultivate our coffee beans, ensuring fair wages and responsible farming methods. Every cup you enjoy contributes to a positive impact, one sip at a time.\n</p>\n\n<h4>Join us on our journey!</h4>\n\n<p>\n    We invite you to explore our world of coffee, from the rich diversity of our bean origins to the unique flavors crafted through meticulous roasting. Visit our cafe, discover your perfect cup, and become part of our ever-growing coffee community. Let\'s connect over a cup, share stories, and celebrate the simple joy of a well-brewed coffee.\n</p>\n',1,NULL,NULL,NULL,'published','2024-06-04 23:59:49','2024-06-04 23:59:49'),(9,'Careers','<h3>Careers: Be Part of Our Brewing Legacy</h3>\n\n<p>\n    At Shofy, we\'re not just brewing coffee, we\'re brewing a legacy. Since our humble beginnings in 2024, we\'ve grown from a small, family-owned roaster to a thriving coffee haven. But our passion for quality, community, and sustainability remains at the core of everything we do.\n</p>\n\n<h4>Why Join Our Team?</h4>\n\n<ul>\n    <li>\n        <p><strong>Become a Coffee Connoisseur</strong>: Immerse yourself in the world of coffee, learning from experienced roasters and baristas about bean origins, roasting techniques, and crafting the perfect cup.</p>\n    </li>\n    <li>\n        <p><strong>Fuel Your Passion</strong>: Contribute to our mission by sourcing ethically, promoting sustainable practices, and fostering positive relationships with coffee-growing communities around the globe.</p>\n    </li>\n    <li>\n        <p><strong>Grow with Us</strong>: We offer comprehensive training programs and opportunities for professional development, helping you refine your skills and advance your career in the coffee industry.</p>\n    </li>\n    <li>\n        <p><strong>Be Part of the Family</strong>: We cultivate a collaborative and supportive work environment where your unique talents and perspectives are valued.</p>\n    </li>\n</ul>\n\n<h4>Current Openings:</h4>\n\n<ul>\n    <li>\n        <p><strong>Coffee Roaster</strong>: Play a vital role in our roasting process, meticulously crafting unique flavor profiles and ensuring the highest quality beans reach our customers.</p>\n    </li>\n    <li>\n        <p><strong>Barista</strong>: Become a coffee ambassador, welcoming guests with a smile, crafting their perfect cup, and sharing your knowledge and passion for coffee.</p>\n    </li>\n    <li>\n        <p><strong>Cafe Manager</strong>: Lead your team in creating a warm and inviting atmosphere, overseeing daily operations, and ensuring exceptional customer service.</p>\n    </li>\n</ul>\n\n<h4>We are always looking for passionate individuals who share our values:</h4>\n\n<ul>\n    <li>\n        <p>A genuine love for coffee and a desire to learn everything there is to know about it.</p>\n    </li>\n    <li>\n        <p>A commitment to ethical sourcing, sustainability, and social responsibility.</p>\n    </li>\n    <li>\n        <p>Excellent communication and interpersonal skills to build rapport with colleagues and customers.</p>\n    </li>\n    <li>\n        <p>A positive attitude, a willingness to learn, and a collaborative spirit.</p>\n    </li>\n</ul>\n\n<p>Ready to join our brewing legacy?</p>\n\n<p>\n    Submit your resume and cover letter, telling us why you\'re a perfect fit for our team. We look forward to meeting passionate individuals who are ready to brew the future with us, one cup at a time.\n</p>\n',1,NULL,NULL,NULL,'published','2024-06-04 23:59:49','2024-06-04 23:59:49'),(10,'Shipping','<section>\n    <h2>Shipping Methods</h2>\n    <p>We offer several shipping methods to choose from:</p>\n    <ul>\n        <li>Standard Shipping - 3 to 5 business days</li>\n        <li>Express Shipping - 1 to 2 business days</li>\n        <li>International Shipping - 7 to 14 business days</li>\n    </ul>\n    <p>Please note that shipping times may vary depending on your location and other factors.</p>\n</section>\n\n<section>\n    <h2>Shipping Costs</h2>\n    <p>Shipping costs are calculated based on the weight of your order and the shipping method selected during checkout.</p>\n    <p>You can view the estimated shipping costs in your shopping cart before completing your purchase.</p>\n</section>\n\n<section>\n    <h2>Tracking Your Order</h2>\n    <p>Once your order has been shipped, you will receive a confirmation email with a tracking number.</p>\n    <p>You can use this tracking number to monitor the status of your delivery on our website or through the shipping carrier\'s website.</p>\n</section>\n\n<section>\n    <h2>Shipping Restrictions</h2>\n    <p>Some items may be subject to shipping restrictions due to size, weight, or destination.</p>\n    <p>If your order contains any restricted items, we will notify you during the checkout process.</p>\n</section>\n',1,NULL,NULL,NULL,'published','2024-06-04 23:59:49','2024-06-04 23:59:49'),(11,'Coming Soon','[coming-soon title=\"Get Notified When We Launch\" countdown_time=\"2024-12-22\" address=\" 58 Street Commercial Road Fratton, Australia\" hotline=\"+123456789\" business_hours=\"Mon – Sat: 8 am – 5 pm, Sunday: CLOSED\" show_social_links=\"0,1\" image=\"main/general/contact-img.jpg\"][/coming-soon]',1,NULL,'without-layout',NULL,'published','2024-06-04 23:59:49','2024-06-04 23:59:49');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_translations`
--

DROP TABLE IF EXISTS `pages_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pages_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`pages_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_translations`
--

LOCK TABLES `pages_translations` WRITE;
/*!40000 ALTER TABLE `pages_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `charge_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `order_id` bigint unsigned DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `payment_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'confirm',
  `customer_id` bigint unsigned DEFAULT NULL,
  `refunded_amount` decimal(15,2) unsigned DEFAULT NULL,
  `refund_note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `customer_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_categories`
--

DROP TABLE IF EXISTS `post_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_categories` (
  `category_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  KEY `post_categories_category_id_index` (`category_id`),
  KEY `post_categories_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_categories`
--

LOCK TABLES `post_categories` WRITE;
/*!40000 ALTER TABLE `post_categories` DISABLE KEYS */;
INSERT INTO `post_categories` VALUES (3,1),(2,1),(1,2),(4,2),(2,3),(4,3),(1,4),(4,4),(2,5),(1,5),(2,6),(6,6),(2,7),(6,8),(4,8),(5,9),(6,9),(3,10),(5,10),(4,11),(3,11),(2,12),(1,12),(5,13),(1,13),(5,14),(3,14),(4,15),(2,15),(2,16),(1,16),(4,17),(5,17),(2,18),(4,18);
/*!40000 ALTER TABLE `post_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_tags`
--

DROP TABLE IF EXISTS `post_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_tags` (
  `tag_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  KEY `post_tags_tag_id_index` (`tag_id`),
  KEY `post_tags_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_tags`
--

LOCK TABLES `post_tags` WRITE;
/*!40000 ALTER TABLE `post_tags` DISABLE KEYS */;
INSERT INTO `post_tags` VALUES (8,1),(3,1),(2,1),(7,2),(8,2),(7,3),(2,3),(1,3),(7,4),(5,4),(4,4),(4,5),(6,5),(3,6),(8,6),(4,6),(3,7),(7,7),(2,7),(6,8),(4,8),(5,8),(2,9),(3,9),(6,9),(8,10),(5,10),(7,11),(2,11),(3,11),(5,12),(8,12),(7,12),(2,13),(7,13),(5,14),(7,14),(8,14),(1,15),(3,15),(8,15),(8,16),(4,16),(2,16),(7,17),(3,17),(2,18),(3,18),(5,18);
/*!40000 ALTER TABLE `post_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int unsigned NOT NULL DEFAULT '0',
  `format_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_status_index` (`status`),
  KEY `posts_author_id_index` (`author_id`),
  KEY `posts_author_type_index` (`author_type`),
  KEY `posts_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'4 Expert Tips On How To Choose The Right Men’s Wallet','I can remember feeling a little scream of laughter. \'Oh, hush!\' the Rabbit was still in existence; \'and now for the next verse.\' \'But about his toes?\' the Mock Turtle: \'nine the next, and so on.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-4.jpg',658,NULL,'2024-06-04 23:59:42','2024-06-04 23:59:42'),(2,'Sexy Clutches: How to Buy &amp; Wear a Designer Clutch Bag','Alice, \'it\'s very rude.\' The Hatter looked at the righthand bit again, and the Mock Turtle; \'but it doesn\'t understand English,\' thought Alice; \'I can\'t explain it,\' said the Pigeon. \'I can tell you.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-12.jpg',574,NULL,'2024-06-04 23:59:42','2024-06-04 23:59:42'),(3,'The Top 2020 Handbag Trends to Know','Rabbit actually TOOK A WATCH OUT OF ITS WAISTCOAT-POCKET, and looked very anxiously into her eyes; and once again the tiny hands were clasped upon her face. \'Very,\' said Alice: \'besides, that\'s not.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-11.jpg',1871,NULL,'2024-06-04 23:59:42','2024-06-04 23:59:42'),(4,'How to Match the Color of Your Handbag With an Outfit','I hadn\'t quite finished my tea when I was going to say,\' said the Gryphon. \'I\'ve forgotten the Duchess began in a melancholy way, being quite unable to move. She soon got it out to sea. So they.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-6.jpg',2219,NULL,'2024-06-04 23:59:42','2024-06-04 23:59:42'),(5,'How to Care for Leather Bags','The cook threw a frying-pan after her as she swam about, trying to put down her anger as well say,\' added the Dormouse. \'Don\'t talk nonsense,\' said Alice very politely; but she was near enough to.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-6.jpg',1337,NULL,'2024-06-04 23:59:42','2024-06-04 23:59:42'),(6,'We\'re Crushing Hard on Summer\'s 10 Biggest Bag Trends','Hatter shook his head sadly. \'Do I look like it?\' he said. \'Fifteenth,\' said the Pigeon in a hot tureen! Who for such a curious croquet-ground in her pocket) till she had never left off staring at.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-12.jpg',1749,NULL,'2024-06-04 23:59:42','2024-06-04 23:59:42'),(7,'Essential Qualities of Highly Successful Music','Alice in a hoarse, feeble voice: \'I heard every word you fellows were saying.\' \'Tell us a story!\' said the Duchess, as she could. \'No,\' said the Queen, and in despair she put one arm out of the.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-4.jpg',2238,NULL,'2024-06-04 23:59:42','2024-06-04 23:59:42'),(8,'9 Things I Love About Shaving My Head','Dormouse. \'Don\'t talk nonsense,\' said Alice very meekly: \'I\'m growing.\' \'You\'ve no right to think,\' said Alice to herself, as she stood looking at it uneasily, shaking it every now and then; such.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-8.jpg',391,NULL,'2024-06-04 23:59:42','2024-06-04 23:59:42'),(9,'Why Teamwork Really Makes The Dream Work','Cat, \'if you only kept on good terms with him, he\'d do almost anything you liked with the clock. For instance, if you please! \"William the Conqueror, whose cause was favoured by the fire, stirring a.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-11.jpg',2103,NULL,'2024-06-04 23:59:42','2024-06-04 23:59:42'),(10,'The World Caters to Average People','ONE.\' \'One, indeed!\' said the Mock Turtle went on again:-- \'I didn\'t mean it!\' pleaded poor Alice. \'But you\'re so easily offended!\' \'You\'ll get used up.\' \'But what happens when you throw them, and.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-1.jpg',749,NULL,'2024-06-04 23:59:42','2024-06-04 23:59:42'),(11,'The litigants on the screen are not actors','However, the Multiplication Table doesn\'t signify: let\'s try Geography. London is the same thing a Lobster Quadrille The Mock Turtle repeated thoughtfully. \'I should like it put more simply--\"Never.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-12.jpg',1530,NULL,'2024-06-04 23:59:42','2024-06-04 23:59:42'),(12,'Hiring the Right Sales Team at the Right Time','However, this bottle was NOT marked \'poison,\' it is you hate--C and D,\' she added aloud. \'Do you know that Cheshire cats always grinned; in fact, a sort of mixed flavour of cherry-tart, custard.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-4.jpg',2220,NULL,'2024-06-04 23:59:42','2024-06-04 23:59:42'),(13,'Fully Embrace the Return of 90s fashion','HIS time of life. The King\'s argument was, that she was now the right size again; and the other paw, \'lives a March Hare. Alice sighed wearily. \'I think I should be like then?\' And she began again.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-4.jpg',1483,NULL,'2024-06-04 23:59:42','2024-06-04 23:59:42'),(14,'Exploring the English Countryside','Alice went on, spreading out the Fish-Footman was gone, and, by the fire, stirring a large arm-chair at one corner of it: for she had a pencil that squeaked. This of course, I meant,\' the King had.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-10.jpg',2140,NULL,'2024-06-04 23:59:42','2024-06-04 23:59:42'),(15,'Here’s the First Valentino’s New Makeup Collection','Duchess said to herself, \'whenever I eat one of the cakes, and was a large flower-pot that stood near the door, and knocked. \'There\'s no such thing!\' Alice was so long that they had any dispute with.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-10.jpg',629,NULL,'2024-06-04 23:59:42','2024-06-04 23:59:42'),(16,'Follow Your own Design process, whatever gets','Mabel, for I know I do!\' said Alice indignantly. \'Ah! then yours wasn\'t a really good school,\' said the Hatter, and here the Mock Turtle in the window, I only knew the right way to hear her try and.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-1.jpg',1587,NULL,'2024-06-04 23:59:42','2024-06-04 23:59:42'),(17,'Freelancer Days 2024, What’s new?','Duck: \'it\'s generally a ridge or furrow in the other. \'I beg pardon, your Majesty,\' he began, \'for bringing these in: but I think you\'d better finish the story for yourself.\' \'No, please go on!\'.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-1.jpg',1672,NULL,'2024-06-04 23:59:42','2024-06-04 23:59:42'),(18,'Quality Foods Requirments For Every Human Body’s','YOUR table,\' said Alice; \'living at the bottom of a good deal frightened by this time, as it was certainly English. \'I don\'t know where Dinn may be,\' said the Dormouse. \'Don\'t talk nonsense,\' said.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-6.jpg',764,NULL,'2024-06-04 23:59:42','2024-06-04 23:59:42');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_translations`
--

DROP TABLE IF EXISTS `posts_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `posts_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`posts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_translations`
--

LOCK TABLES `posts_translations` WRITE;
/*!40000 ALTER TABLE `posts_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `request_logs`
--

DROP TABLE IF EXISTS `request_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `request_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `status_code` int DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count` int unsigned NOT NULL DEFAULT '0',
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referrer` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `request_logs`
--

LOCK TABLES `request_logs` WRITE;
/*!40000 ALTER TABLE `request_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `request_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revisions`
--

DROP TABLE IF EXISTS `revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `revisions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `revisionable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci,
  `new_value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revisions`
--

LOCK TABLES `revisions` WRITE;
/*!40000 ALTER TABLE `revisions` DISABLE KEYS */;
/*!40000 ALTER TABLE `revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_users`
--

DROP TABLE IF EXISTS `role_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_users` (
  `user_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `role_users_user_id_index` (`user_id`),
  KEY `role_users_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_users`
--

LOCK TABLES `role_users` WRITE;
/*!40000 ALTER TABLE `role_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_by` bigint unsigned NOT NULL,
  `updated_by` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`),
  KEY `roles_created_by_index` (`created_by`),
  KEY `roles_updated_by_index` (`updated_by`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','Admin','{\"users.index\":true,\"users.create\":true,\"users.edit\":true,\"users.destroy\":true,\"roles.index\":true,\"roles.create\":true,\"roles.edit\":true,\"roles.destroy\":true,\"core.system\":true,\"core.cms\":true,\"core.manage.license\":true,\"systems.cronjob\":true,\"core.tools\":true,\"tools.data-synchronize\":true,\"media.index\":true,\"files.index\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.destroy\":true,\"folders.index\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.destroy\":true,\"settings.index\":true,\"settings.common\":true,\"settings.options\":true,\"settings.email\":true,\"settings.media\":true,\"settings.admin-appearance\":true,\"settings.cache\":true,\"settings.datatables\":true,\"settings.email.rules\":true,\"settings.others\":true,\"menus.index\":true,\"menus.create\":true,\"menus.edit\":true,\"menus.destroy\":true,\"optimize.settings\":true,\"pages.index\":true,\"pages.create\":true,\"pages.edit\":true,\"pages.destroy\":true,\"plugins.index\":true,\"plugins.edit\":true,\"plugins.remove\":true,\"plugins.marketplace\":true,\"core.appearance\":true,\"theme.index\":true,\"theme.activate\":true,\"theme.remove\":true,\"theme.options\":true,\"theme.custom-css\":true,\"theme.custom-js\":true,\"theme.custom-html\":true,\"theme.robots-txt\":true,\"settings.website-tracking\":true,\"widgets.index\":true,\"ads.index\":true,\"ads.create\":true,\"ads.edit\":true,\"ads.destroy\":true,\"ads.settings\":true,\"analytics.general\":true,\"analytics.page\":true,\"analytics.browser\":true,\"analytics.referrer\":true,\"analytics.settings\":true,\"announcements.index\":true,\"announcements.create\":true,\"announcements.edit\":true,\"announcements.destroy\":true,\"announcements.settings\":true,\"audit-log.index\":true,\"audit-log.destroy\":true,\"backups.index\":true,\"backups.create\":true,\"backups.restore\":true,\"backups.destroy\":true,\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"categories.index\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"blog.settings\":true,\"posts.export\":true,\"posts.import\":true,\"captcha.settings\":true,\"contacts.index\":true,\"contacts.edit\":true,\"contacts.destroy\":true,\"contact.settings\":true,\"plugins.ecommerce\":true,\"ecommerce.report.index\":true,\"products.index\":true,\"products.create\":true,\"products.edit\":true,\"products.destroy\":true,\"products.duplicate\":true,\"ecommerce.product-prices.index\":true,\"ecommerce.product-prices.edit\":true,\"ecommerce.product-inventory.index\":true,\"ecommerce.product-inventory.edit\":true,\"product-categories.index\":true,\"product-categories.create\":true,\"product-categories.edit\":true,\"product-categories.destroy\":true,\"product-tag.index\":true,\"product-tag.create\":true,\"product-tag.edit\":true,\"product-tag.destroy\":true,\"brands.index\":true,\"brands.create\":true,\"brands.edit\":true,\"brands.destroy\":true,\"product-collections.index\":true,\"product-collections.create\":true,\"product-collections.edit\":true,\"product-collections.destroy\":true,\"product-attribute-sets.index\":true,\"product-attribute-sets.create\":true,\"product-attribute-sets.edit\":true,\"product-attribute-sets.destroy\":true,\"product-attributes.index\":true,\"product-attributes.create\":true,\"product-attributes.edit\":true,\"product-attributes.destroy\":true,\"tax.index\":true,\"tax.create\":true,\"tax.edit\":true,\"tax.destroy\":true,\"reviews.index\":true,\"reviews.create\":true,\"reviews.destroy\":true,\"reviews.publish\":true,\"reviews.reply\":true,\"ecommerce.shipments.index\":true,\"ecommerce.shipments.create\":true,\"ecommerce.shipments.edit\":true,\"ecommerce.shipments.destroy\":true,\"orders.index\":true,\"orders.create\":true,\"orders.edit\":true,\"orders.destroy\":true,\"discounts.index\":true,\"discounts.create\":true,\"discounts.edit\":true,\"discounts.destroy\":true,\"customers.index\":true,\"customers.create\":true,\"customers.edit\":true,\"customers.destroy\":true,\"flash-sale.index\":true,\"flash-sale.create\":true,\"flash-sale.edit\":true,\"flash-sale.destroy\":true,\"product-label.index\":true,\"product-label.create\":true,\"product-label.edit\":true,\"product-label.destroy\":true,\"ecommerce.import.products.index\":true,\"ecommerce.export.products.index\":true,\"order_returns.index\":true,\"order_returns.edit\":true,\"order_returns.destroy\":true,\"global-option.index\":true,\"global-option.create\":true,\"global-option.edit\":true,\"global-option.destroy\":true,\"ecommerce.invoice.index\":true,\"ecommerce.invoice.edit\":true,\"ecommerce.invoice.destroy\":true,\"ecommerce.settings\":true,\"ecommerce.settings.general\":true,\"ecommerce.invoice-template.index\":true,\"ecommerce.settings.currencies\":true,\"ecommerce.settings.products\":true,\"ecommerce.settings.product-search\":true,\"ecommerce.settings.digital-products\":true,\"ecommerce.settings.store-locators\":true,\"ecommerce.settings.invoices\":true,\"ecommerce.settings.product-reviews\":true,\"ecommerce.settings.customers\":true,\"ecommerce.settings.shopping\":true,\"ecommerce.settings.taxes\":true,\"ecommerce.settings.shipping\":true,\"ecommerce.settings.tracking\":true,\"ecommerce.settings.standard-and-format\":true,\"ecommerce.settings.checkout\":true,\"ecommerce.settings.return\":true,\"ecommerce.settings.flash-sale\":true,\"plugin.faq\":true,\"faq.index\":true,\"faq.create\":true,\"faq.edit\":true,\"faq.destroy\":true,\"faq_category.index\":true,\"faq_category.create\":true,\"faq_category.edit\":true,\"faq_category.destroy\":true,\"faqs.settings\":true,\"galleries.index\":true,\"galleries.create\":true,\"galleries.edit\":true,\"galleries.destroy\":true,\"languages.index\":true,\"languages.create\":true,\"languages.edit\":true,\"languages.destroy\":true,\"plugin.location\":true,\"country.index\":true,\"country.create\":true,\"country.edit\":true,\"country.destroy\":true,\"state.index\":true,\"state.create\":true,\"state.edit\":true,\"state.destroy\":true,\"city.index\":true,\"city.create\":true,\"city.edit\":true,\"city.destroy\":true,\"marketplace.index\":true,\"marketplace.store.index\":true,\"marketplace.store.create\":true,\"marketplace.store.edit\":true,\"marketplace.store.destroy\":true,\"marketplace.store.view\":true,\"marketplace.store.revenue.create\":true,\"marketplace.withdrawal.index\":true,\"marketplace.withdrawal.edit\":true,\"marketplace.withdrawal.destroy\":true,\"marketplace.vendors.index\":true,\"marketplace.unverified-vendors.index\":true,\"marketplace.unverified-vendors.edit\":true,\"marketplace.reports\":true,\"marketplace.settings\":true,\"newsletter.index\":true,\"newsletter.destroy\":true,\"newsletter.settings\":true,\"payment.index\":true,\"payments.settings\":true,\"payment.destroy\":true,\"request-log.index\":true,\"request-log.destroy\":true,\"sale-popup.settings\":true,\"simple-slider.index\":true,\"simple-slider.create\":true,\"simple-slider.edit\":true,\"simple-slider.destroy\":true,\"simple-slider-item.index\":true,\"simple-slider-item.create\":true,\"simple-slider-item.edit\":true,\"simple-slider-item.destroy\":true,\"simple-slider.settings\":true,\"social-login.settings\":true,\"testimonial.index\":true,\"testimonial.create\":true,\"testimonial.edit\":true,\"testimonial.destroy\":true,\"plugins.translation\":true,\"translations.locales\":true,\"translations.theme-translations\":true,\"translations.index\":true,\"theme-translations.export\":true,\"other-translations.export\":true,\"theme-translations.import\":true,\"other-translations.import\":true}','Admin users role',1,1,1,'2024-06-04 23:59:38','2024-06-04 23:59:38');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'media_random_hash','d28c9aa4b50809c857bf84dfb3394e19',NULL,'2024-06-04 23:59:49'),(2,'api_enabled','0',NULL,'2024-06-04 23:59:49'),(3,'activated_plugins','[\"language\",\"language-advanced\",\"ads\",\"analytics\",\"announcement\",\"audit-log\",\"backup\",\"blog\",\"captcha\",\"contact\",\"cookie-consent\",\"ecommerce\",\"faq\",\"gallery\",\"location\",\"marketplace\",\"mollie\",\"newsletter\",\"payment\",\"paypal\",\"paypal-payout\",\"paystack\",\"razorpay\",\"request-log\",\"sale-popup\",\"shippo\",\"simple-slider\",\"social-login\",\"sslcommerz\",\"stripe\",\"testimonial\",\"translation\"]',NULL,'2024-06-04 23:59:49'),(6,'theme','shofy',NULL,'2024-06-04 23:59:49'),(7,'show_admin_bar','1',NULL,'2024-06-04 23:59:49'),(8,'payment_cod_status','1',NULL,'2024-06-04 23:59:49'),(9,'payment_bank_transfer_status','1',NULL,'2024-06-04 23:59:49'),(10,'admin_favicon','main/general/favicon.png',NULL,'2024-06-04 23:59:49'),(11,'admin_logo','main/general/logo-white.png',NULL,'2024-06-04 23:59:49'),(12,'permalink-botble-blog-models-post','blog',NULL,'2024-06-04 23:59:49'),(13,'permalink-botble-blog-models-category','blog',NULL,'2024-06-04 23:59:49'),(14,'payment_cod_description','Please pay money directly to the postman, if you choose cash on delivery method (COD).',NULL,'2024-06-04 23:59:49'),(15,'payment_bank_transfer_description','Please send money to our bank account: ACB - 69270 213 19.',NULL,'2024-06-04 23:59:49'),(16,'payment_stripe_payment_type','stripe_checkout',NULL,'2024-06-04 23:59:49'),(17,'plugins_ecommerce_customer_new_order_status','0',NULL,'2024-06-04 23:59:49'),(18,'plugins_ecommerce_admin_new_order_status','0',NULL,'2024-06-04 23:59:49'),(19,'ecommerce_is_enabled_support_digital_products','1',NULL,'2024-06-04 23:59:49'),(20,'ecommerce_load_countries_states_cities_from_location_plugin','0',NULL,'2024-06-04 23:59:49'),(21,'announcement_lazy_loading','1',NULL,'2024-06-04 23:59:49'),(22,'ecommerce_product_sku_format','SF-2443-%s%s%s%s',NULL,'2024-06-04 23:59:49'),(23,'language_hide_default','1',NULL,'2024-06-04 23:59:49'),(24,'language_switcher_display','dropdown',NULL,'2024-06-04 23:59:49'),(25,'language_display','all',NULL,'2024-06-04 23:59:49'),(26,'language_hide_languages','[]',NULL,'2024-06-04 23:59:49'),(27,'ecommerce_store_name','Shofy',NULL,'2024-06-04 23:59:49'),(28,'ecommerce_store_phone','1800979769',NULL,'2024-06-04 23:59:49'),(29,'ecommerce_store_address','502 New Street',NULL,'2024-06-04 23:59:49'),(30,'ecommerce_store_state','Brighton VIC',NULL,'2024-06-04 23:59:49'),(31,'ecommerce_store_city','Brighton VIC',NULL,'2024-06-04 23:59:49'),(32,'ecommerce_store_country','AU',NULL,'2024-06-04 23:59:49'),(33,'announcement_max_width','1390',NULL,'2024-06-04 23:59:49'),(34,'announcement_text_color','#fff',NULL,'2024-06-04 23:59:49'),(35,'announcement_background_color','transparent',NULL,'2024-06-04 23:59:49'),(36,'announcement_placement','theme',NULL,'2024-06-04 23:59:49'),(37,'announcement_text_alignment','start',NULL,'2024-06-04 23:59:49'),(38,'announcement_dismissible','0',NULL,'2024-06-04 23:59:49'),(39,'simple_slider_using_assets','0',NULL,'2024-06-04 23:59:49'),(40,'theme-shofy-site_name','Shofy',NULL,NULL),(41,'theme-shofy-site_title','Shofy - Multipurpose eCommerce Laravel Script',NULL,NULL),(42,'theme-shofy-seo_description','Shofy is a powerful tool eCommerce Laravel script for creating a professional and visually appealing online store.',NULL,NULL),(43,'theme-shofy-copyright','© %Y All Rights Reserved.',NULL,NULL),(44,'theme-shofy-tp_primary_font','Roboto',NULL,NULL),(45,'theme-shofy-primary_color','#0C55AA',NULL,NULL),(46,'theme-shofy-favicon','main/general/favicon.png',NULL,NULL),(47,'theme-shofy-logo','main/general/logo.png',NULL,NULL),(48,'theme-shofy-logo_light','main/general/logo-white.png',NULL,NULL),(49,'theme-shofy-header_style','1',NULL,NULL),(50,'theme-shofy-preloader_icon','main/general/preloader-icon.png',NULL,NULL),(51,'theme-shofy-address','502 New Street, Brighton VIC, Australia',NULL,NULL),(52,'theme-shofy-hotline','8 800 332 65-66',NULL,NULL),(53,'theme-shofy-email','contact@fartmart.co',NULL,NULL),(54,'theme-shofy-working_time','Mon - Fri: 07AM - 06PM',NULL,NULL),(55,'theme-shofy-homepage_id','1',NULL,NULL),(56,'theme-shofy-blog_page_id','4',NULL,NULL),(57,'theme-shofy-cookie_consent_message','Your experience on this site will be improved by allowing cookies ',NULL,NULL),(58,'theme-shofy-cookie_consent_learn_more_url','cookie-policy',NULL,NULL),(59,'theme-shofy-cookie_consent_learn_more_text','Cookie Policy',NULL,NULL),(60,'theme-shofy-number_of_products_per_page','24',NULL,NULL),(61,'theme-shofy-number_of_cross_sale_product','6',NULL,NULL),(62,'theme-shofy-ecommerce_products_page_layout','left_sidebar',NULL,NULL),(63,'theme-shofy-ecommerce_product_item_style','1',NULL,NULL),(64,'theme-shofy-404_page_image','main/general/404.png',NULL,NULL),(65,'theme-shofy-newsletter_popup_enable','1',NULL,NULL),(66,'theme-shofy-newsletter_popup_image','main/general/newsletter-popup.png',NULL,NULL),(67,'theme-shofy-newsletter_popup_title','Subscribe Now',NULL,NULL),(68,'theme-shofy-newsletter_popup_subtitle','Newsletter',NULL,NULL),(69,'theme-shofy-newsletter_popup_description','Subscribe to our newsletter and get 10% off your first purchase',NULL,NULL),(70,'theme-shofy-lazy_load_images','1',NULL,NULL),(71,'theme-shofy-lazy_load_placeholder_image','main/general/placeholder.png',NULL,NULL),(72,'theme-shofy-breadcrumb_background_image','main/general/breadcrumb.jpg',NULL,NULL),(73,'theme-shofy-section_title_shape_decorated','style-3',NULL,NULL),(74,'theme-shofy-social_links','[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\"}],[{\"key\":\"name\",\"value\":\"X\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/x.com\"}],[{\"key\":\"name\",\"value\":\"Youtube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-linkedin\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.linkedin.com\"}]]',NULL,NULL),(75,'theme-shofy-social_sharing','[[{\"key\":\"social\",\"value\":\"facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"}],[{\"key\":\"social\",\"value\":\"x\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"}],[{\"key\":\"social\",\"value\":\"pinterest\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"}],[{\"key\":\"social\",\"value\":\"linkedin\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-linkedin\"}],[{\"key\":\"social\",\"value\":\"whatsapp\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-whatsapp\"}],[{\"key\":\"social\",\"value\":\"email\"},{\"key\":\"icon\",\"value\":\"ti ti-mail\"}]]',NULL,NULL);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_slider_items`
--

DROP TABLE IF EXISTS `simple_slider_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `simple_slider_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `simple_slider_id` bigint unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `order` int unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_slider_items`
--

LOCK TABLES `simple_slider_items` WRITE;
/*!40000 ALTER TABLE `simple_slider_items` DISABLE KEYS */;
INSERT INTO `simple_slider_items` VALUES (1,1,'The best tablet Collection 2023','main/sliders/slider-1.png','/products','Exclusive offer <span>-35%</span> off this week',0,'2024-06-04 23:59:45','2024-06-04 23:59:45'),(2,1,'The best note book collection 2023','main/sliders/slider-2.png','/products','Exclusive offer <span>-10%</span> off this week',1,'2024-06-04 23:59:45','2024-06-04 23:59:45'),(3,1,'The best phone collection 2023','main/sliders/slider-3.png','/products','Exclusive offer <span>-10%</span> off this week',2,'2024-06-04 23:59:45','2024-06-04 23:59:45');
/*!40000 ALTER TABLE `simple_slider_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_sliders`
--

DROP TABLE IF EXISTS `simple_sliders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `simple_sliders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_sliders`
--

LOCK TABLES `simple_sliders` WRITE;
/*!40000 ALTER TABLE `simple_sliders` DISABLE KEYS */;
INSERT INTO `simple_sliders` VALUES (1,'Home slider','home-slider','The main slider on homepage','published','2024-06-04 23:59:45','2024-06-04 23:59:45');
/*!40000 ALTER TABLE `simple_sliders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs`
--

DROP TABLE IF EXISTS `slugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `slugs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `slugs_reference_id_index` (`reference_id`),
  KEY `slugs_key_index` (`key`),
  KEY `slugs_prefix_index` (`prefix`),
  KEY `slugs_reference_index` (`reference_id`,`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=239 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs`
--

LOCK TABLES `slugs` WRITE;
/*!40000 ALTER TABLE `slugs` DISABLE KEYS */;
INSERT INTO `slugs` VALUES (1,'foodpound',1,'Botble\\Ecommerce\\Models\\Brand','brands','2024-06-04 23:59:38','2024-06-04 23:59:38'),(2,'itea-jsc',2,'Botble\\Ecommerce\\Models\\Brand','brands','2024-06-04 23:59:38','2024-06-04 23:59:38'),(3,'soda-brand',3,'Botble\\Ecommerce\\Models\\Brand','brands','2024-06-04 23:59:38','2024-06-04 23:59:38'),(4,'shofy',4,'Botble\\Ecommerce\\Models\\Brand','brands','2024-06-04 23:59:38','2024-06-04 23:59:38'),(5,'soda-brand',5,'Botble\\Ecommerce\\Models\\Brand','brands','2024-06-04 23:59:38','2024-06-04 23:59:38'),(6,'electronic',1,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-06-04 23:59:41','2024-06-04 23:59:41'),(7,'mobile',2,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-06-04 23:59:41','2024-06-04 23:59:41'),(8,'iphone',3,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-06-04 23:59:41','2024-06-04 23:59:41'),(9,'printer',4,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-06-04 23:59:41','2024-06-04 23:59:41'),(10,'office',5,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-06-04 23:59:41','2024-06-04 23:59:41'),(11,'it',6,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-06-04 23:59:41','2024-06-04 23:59:41'),(12,'crisp-bread-cake',1,'Botble\\Blog\\Models\\Category','blog','2024-06-04 23:59:42','2024-06-04 23:59:42'),(13,'fashion',2,'Botble\\Blog\\Models\\Category','blog','2024-06-04 23:59:42','2024-06-04 23:59:42'),(14,'electronic',3,'Botble\\Blog\\Models\\Category','blog','2024-06-04 23:59:42','2024-06-04 23:59:42'),(15,'commercial',4,'Botble\\Blog\\Models\\Category','blog','2024-06-04 23:59:42','2024-06-04 23:59:42'),(16,'organic-fruits',5,'Botble\\Blog\\Models\\Category','blog','2024-06-04 23:59:42','2024-06-04 23:59:42'),(17,'ecological',6,'Botble\\Blog\\Models\\Category','blog','2024-06-04 23:59:42','2024-06-04 23:59:42'),(18,'general',1,'Botble\\Blog\\Models\\Tag','tag','2024-06-04 23:59:42','2024-06-04 23:59:42'),(19,'design',2,'Botble\\Blog\\Models\\Tag','tag','2024-06-04 23:59:42','2024-06-04 23:59:42'),(20,'fashion',3,'Botble\\Blog\\Models\\Tag','tag','2024-06-04 23:59:42','2024-06-04 23:59:42'),(21,'branding',4,'Botble\\Blog\\Models\\Tag','tag','2024-06-04 23:59:42','2024-06-04 23:59:42'),(22,'modern',5,'Botble\\Blog\\Models\\Tag','tag','2024-06-04 23:59:42','2024-06-04 23:59:42'),(23,'nature',6,'Botble\\Blog\\Models\\Tag','tag','2024-06-04 23:59:42','2024-06-04 23:59:42'),(24,'vintage',7,'Botble\\Blog\\Models\\Tag','tag','2024-06-04 23:59:42','2024-06-04 23:59:42'),(25,'sunglasses',8,'Botble\\Blog\\Models\\Tag','tag','2024-06-04 23:59:42','2024-06-04 23:59:42'),(26,'4-expert-tips-on-how-to-choose-the-right-mens-wallet',1,'Botble\\Blog\\Models\\Post','blog','2024-06-04 23:59:42','2024-06-04 23:59:42'),(27,'sexy-clutches-how-to-buy-wear-a-designer-clutch-bag',2,'Botble\\Blog\\Models\\Post','blog','2024-06-04 23:59:42','2024-06-04 23:59:42'),(28,'the-top-2020-handbag-trends-to-know',3,'Botble\\Blog\\Models\\Post','blog','2024-06-04 23:59:42','2024-06-04 23:59:42'),(29,'how-to-match-the-color-of-your-handbag-with-an-outfit',4,'Botble\\Blog\\Models\\Post','blog','2024-06-04 23:59:42','2024-06-04 23:59:42'),(30,'how-to-care-for-leather-bags',5,'Botble\\Blog\\Models\\Post','blog','2024-06-04 23:59:42','2024-06-04 23:59:42'),(31,'were-crushing-hard-on-summers-10-biggest-bag-trends',6,'Botble\\Blog\\Models\\Post','blog','2024-06-04 23:59:42','2024-06-04 23:59:42'),(32,'essential-qualities-of-highly-successful-music',7,'Botble\\Blog\\Models\\Post','blog','2024-06-04 23:59:42','2024-06-04 23:59:42'),(33,'9-things-i-love-about-shaving-my-head',8,'Botble\\Blog\\Models\\Post','blog','2024-06-04 23:59:42','2024-06-04 23:59:42'),(34,'why-teamwork-really-makes-the-dream-work',9,'Botble\\Blog\\Models\\Post','blog','2024-06-04 23:59:42','2024-06-04 23:59:42'),(35,'the-world-caters-to-average-people',10,'Botble\\Blog\\Models\\Post','blog','2024-06-04 23:59:42','2024-06-04 23:59:42'),(36,'the-litigants-on-the-screen-are-not-actors',11,'Botble\\Blog\\Models\\Post','blog','2024-06-04 23:59:42','2024-06-04 23:59:42'),(37,'hiring-the-right-sales-team-at-the-right-time',12,'Botble\\Blog\\Models\\Post','blog','2024-06-04 23:59:42','2024-06-04 23:59:42'),(38,'fully-embrace-the-return-of-90s-fashion',13,'Botble\\Blog\\Models\\Post','blog','2024-06-04 23:59:42','2024-06-04 23:59:42'),(39,'exploring-the-english-countryside',14,'Botble\\Blog\\Models\\Post','blog','2024-06-04 23:59:42','2024-06-04 23:59:42'),(40,'heres-the-first-valentinos-new-makeup-collection',15,'Botble\\Blog\\Models\\Post','blog','2024-06-04 23:59:42','2024-06-04 23:59:42'),(41,'follow-your-own-design-process-whatever-gets',16,'Botble\\Blog\\Models\\Post','blog','2024-06-04 23:59:42','2024-06-04 23:59:42'),(42,'freelancer-days-2024-whats-new',17,'Botble\\Blog\\Models\\Post','blog','2024-06-04 23:59:42','2024-06-04 23:59:42'),(43,'quality-foods-requirments-for-every-human-bodys',18,'Botble\\Blog\\Models\\Post','blog','2024-06-04 23:59:42','2024-06-04 23:59:42'),(44,'gopro',1,'Botble\\Marketplace\\Models\\Store','stores','2024-06-04 23:59:45','2024-06-04 23:59:45'),(45,'global-office',2,'Botble\\Marketplace\\Models\\Store','stores','2024-06-04 23:59:45','2024-06-04 23:59:45'),(46,'young-shop',3,'Botble\\Marketplace\\Models\\Store','stores','2024-06-04 23:59:45','2024-06-04 23:59:45'),(47,'global-store',4,'Botble\\Marketplace\\Models\\Store','stores','2024-06-04 23:59:45','2024-06-04 23:59:45'),(48,'roberts-store',5,'Botble\\Marketplace\\Models\\Store','stores','2024-06-04 23:59:45','2024-06-04 23:59:45'),(49,'stouffer',6,'Botble\\Marketplace\\Models\\Store','stores','2024-06-04 23:59:45','2024-06-04 23:59:45'),(50,'starkist',7,'Botble\\Marketplace\\Models\\Store','stores','2024-06-04 23:59:45','2024-06-04 23:59:45'),(51,'old-el-paso',8,'Botble\\Marketplace\\Models\\Store','stores','2024-06-04 23:59:45','2024-06-04 23:59:45'),(52,'new-arrivals',1,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-06-04 23:59:46','2024-06-04 23:59:46'),(53,'electronics',2,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-06-04 23:59:46','2024-06-04 23:59:46'),(54,'featured',3,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-06-04 23:59:46','2024-06-04 23:59:46'),(55,'new-arrivals',4,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-06-04 23:59:46','2024-06-04 23:59:46'),(56,'best-sellers',5,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-06-04 23:59:46','2024-06-04 23:59:46'),(57,'mobile-phone',6,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-06-04 23:59:46','2024-06-04 23:59:46'),(58,'computers-laptops',7,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-06-04 23:59:46','2024-06-04 23:59:46'),(59,'top-brands',8,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-06-04 23:59:46','2024-06-04 23:59:46'),(60,'weekly-best-selling',9,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-06-04 23:59:46','2024-06-04 23:59:46'),(61,'cpu-heat-pipes',10,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-06-04 23:59:46','2024-06-04 23:59:46'),(62,'cpu-coolers',11,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-06-04 23:59:46','2024-06-04 23:59:46'),(63,'accessories',12,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-06-04 23:59:46','2024-06-04 23:59:46'),(64,'headphones',13,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-06-04 23:59:46','2024-06-04 23:59:46'),(65,'wireless-headphones',14,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-06-04 23:59:46','2024-06-04 23:59:46'),(66,'tws-earphones',15,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-06-04 23:59:46','2024-06-04 23:59:46'),(67,'smart-watch',16,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-06-04 23:59:46','2024-06-04 23:59:46'),(68,'gaming-console',17,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-06-04 23:59:46','2024-06-04 23:59:46'),(69,'playstation',18,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-06-04 23:59:46','2024-06-04 23:59:46'),(70,'gifts',19,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-06-04 23:59:46','2024-06-04 23:59:46'),(71,'computers',20,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-06-04 23:59:46','2024-06-04 23:59:46'),(72,'desktop',21,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-06-04 23:59:46','2024-06-04 23:59:46'),(73,'laptop',22,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-06-04 23:59:46','2024-06-04 23:59:46'),(74,'tablet',23,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-06-04 23:59:46','2024-06-04 23:59:46'),(75,'accessories',24,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-06-04 23:59:46','2024-06-04 23:59:46'),(76,'smartphones-tablets',25,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-06-04 23:59:46','2024-06-04 23:59:46'),(77,'tv-video-music',26,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-06-04 23:59:46','2024-06-04 23:59:46'),(78,'cameras',27,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-06-04 23:59:46','2024-06-04 23:59:46'),(79,'cooking',28,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-06-04 23:59:46','2024-06-04 23:59:46'),(80,'accessories',29,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-06-04 23:59:46','2024-06-04 23:59:46'),(81,'with-bluetooth',30,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-06-04 23:59:46','2024-06-04 23:59:46'),(82,'sports',31,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-06-04 23:59:46','2024-06-04 23:59:46'),(83,'electronics-gadgets',32,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-06-04 23:59:46','2024-06-04 23:59:46'),(84,'micrscope',33,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-06-04 23:59:46','2024-06-04 23:59:46'),(85,'remote-control',34,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-06-04 23:59:46','2024-06-04 23:59:46'),(86,'monitor',35,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-06-04 23:59:46','2024-06-04 23:59:46'),(87,'thermometer',36,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-06-04 23:59:46','2024-06-04 23:59:46'),(88,'backpack',37,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-06-04 23:59:46','2024-06-04 23:59:46'),(89,'headphones',38,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-06-04 23:59:46','2024-06-04 23:59:46'),(90,'ecotech-marine-radion-xr30w-g5-pro-led-light-fixture',1,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:47','2024-06-04 23:59:47'),(91,'philips-hue-white-and-color-ambiance-a19-led-smart-bulb',2,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:47','2024-06-04 23:59:47'),(92,'samsung-galaxy-tab-s7-124-inch-android-tablet',3,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:47','2024-06-04 23:59:47'),(93,'apple-macbook-pro-16-inch-laptop-digital',4,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:47','2024-06-04 23:59:50'),(94,'sony-wh-1000xm4-wireless-noise-canceling-headphones',5,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:47','2024-06-04 23:59:47'),(95,'dji-mavic-air-2-drone',6,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:47','2024-06-04 23:59:47'),(96,'gopro-hero9-black-action-camera',7,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:47','2024-06-04 23:59:47'),(97,'bose-soundlink-revolve-portable-bluetooth-speaker-digital',8,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:47','2024-06-04 23:59:50'),(98,'nest-learning-thermostat-3rd-generation',9,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:47','2024-06-04 23:59:47'),(99,'ring-video-doorbell-pro',10,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:47','2024-06-04 23:59:47'),(100,'amazon-echo-show-10-3rd-gen',11,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:47','2024-06-04 23:59:47'),(101,'samsung-qn90a-neo-qled-4k-smart-tv-digital',12,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:47','2024-06-04 23:59:50'),(102,'lg-oled-c1-series-4k-smart-tv',13,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:47','2024-06-04 23:59:47'),(103,'sony-x950h-4k-ultra-hd-smart-led-tv',14,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:47','2024-06-04 23:59:47'),(104,'apple-watch-series-7',15,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:47','2024-06-04 23:59:47'),(105,'fitbit-charge-5-fitness-tracker-digital',16,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:47','2024-06-04 23:59:50'),(106,'garmin-fenix-7x-sapphire-solar-gps-watch',17,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:47','2024-06-04 23:59:47'),(107,'microsoft-surface-pro-8',18,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:47','2024-06-04 23:59:47'),(108,'lenovo-thinkpad-x1-carbon-gen-9-laptop',19,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:47','2024-06-04 23:59:47'),(109,'hp-spectre-x360-14-inch-convertible-laptop-digital',20,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:47','2024-06-04 23:59:50'),(110,'razer-blade-15-advanced-gaming-laptop',21,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:47','2024-06-04 23:59:47'),(111,'alienware-m15-r6-gaming-laptop',22,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:47','2024-06-04 23:59:47'),(112,'corsair-k95-rgb-platinum-xt-mechanical-gaming-keyboard',23,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:47','2024-06-04 23:59:47'),(113,'logitech-g-pro-x-superlight-wireless-gaming-mouse-digital',24,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:47','2024-06-04 23:59:50'),(114,'steelseries-arctis-pro-wireless-gaming-headset',25,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:47','2024-06-04 23:59:47'),(115,'elgato-stream-deck-xl',26,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:47','2024-06-04 23:59:47'),(116,'nintendo-switch-oled-model',27,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:47','2024-06-04 23:59:47'),(117,'playstation-5-console-digital',28,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:47','2024-06-04 23:59:50'),(118,'xbox-series-x-console',29,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:47','2024-06-04 23:59:47'),(119,'oculus-quest-2-vr-headset',30,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:47','2024-06-04 23:59:47'),(120,'htc-vive-cosmos-elite-vr-headset',31,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:48','2024-06-04 23:59:48'),(121,'samsung-odyssey-g9-49-inch-curved-gaming-monitor-digital',32,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:48','2024-06-04 23:59:50'),(122,'lg-ultragear-27gn950-b-4k-gaming-monitor',33,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:48','2024-06-04 23:59:48'),(123,'acer-predator-x38-pbmiphzx-38-inch-curved-gaming-monitor',34,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:48','2024-06-04 23:59:48'),(124,'asus-rog-swift-pg279qm-27-inch-gaming-monitor',35,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:48','2024-06-04 23:59:48'),(125,'benq-ew3280u-32-inch-4k-hdr-entertainment-monitor-digital',36,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:48','2024-06-04 23:59:50'),(126,'dell-ultrasharp-u2720q-27-inch-4k-usb-c-monitor',37,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:48','2024-06-04 23:59:48'),(127,'hp-z27k-g3-4k-usb-c-monitor',38,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:48','2024-06-04 23:59:48'),(128,'lg-27uk850-w-27-inch-4k-uhd-ips-monitor',39,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:48','2024-06-04 23:59:48'),(129,'samsung-odyssey-g7-32-inch-curved-gaming-monitor-digital',40,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:48','2024-06-04 23:59:50'),(130,'sony-x900h-4k-ultra-hd-smart-led-tv',41,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:48','2024-06-04 23:59:48'),(131,'tcl-6-series-4k-uhd-dolby-vision-hdr-qled-roku-smart-tv',42,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:48','2024-06-04 23:59:48'),(132,'vizio-oled65-h1-65-inch-4k-oled-smart-tv',43,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:48','2024-06-04 23:59:48'),(133,'hisense-u8g-quantum-series-4k-uled-android-tv-digital',44,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:48','2024-06-04 23:59:50'),(134,'lg-c1-series-4k-oled-smart-tv',45,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:48','2024-06-04 23:59:48'),(135,'samsung-qn85a-neo-qled-4k-smart-tv',46,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:48','2024-06-04 23:59:48'),(136,'sony-a90j-4k-oled-smart-tv',47,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:48','2024-06-04 23:59:48'),(137,'apple-tv-4k-2nd-generation-digital',48,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:48','2024-06-04 23:59:50'),(138,'roku-ultra-2020-streaming-media-player',49,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:48','2024-06-04 23:59:48'),(139,'amazon-fire-tv-stick-4k-max',50,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:48','2024-06-04 23:59:48'),(140,'google-chromecast-with-google-tv',51,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:48','2024-06-04 23:59:48'),(141,'nvidia-shield-tv-pro-digital',52,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:48','2024-06-04 23:59:50'),(142,'sonos-beam-gen-2-soundbar',53,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:48','2024-06-04 23:59:48'),(143,'bose-smart-soundbar-900',54,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:48','2024-06-04 23:59:48'),(144,'jbl-bar-91-soundbar-with-dolby-atmos',55,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:48','2024-06-04 23:59:48'),(145,'sennheiser-ambeo-soundbar-digital',56,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:48','2024-06-04 23:59:50'),(146,'sony-ht-a9-home-theater-system',57,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:48','2024-06-04 23:59:48'),(147,'perfect',1,'Botble\\Gallery\\Models\\Gallery','galleries','2024-06-04 23:59:49','2024-06-04 23:59:49'),(148,'new-day',2,'Botble\\Gallery\\Models\\Gallery','galleries','2024-06-04 23:59:49','2024-06-04 23:59:49'),(149,'happy-day',3,'Botble\\Gallery\\Models\\Gallery','galleries','2024-06-04 23:59:49','2024-06-04 23:59:49'),(150,'nature',4,'Botble\\Gallery\\Models\\Gallery','galleries','2024-06-04 23:59:49','2024-06-04 23:59:49'),(151,'morning',5,'Botble\\Gallery\\Models\\Gallery','galleries','2024-06-04 23:59:49','2024-06-04 23:59:49'),(152,'home',1,'Botble\\Page\\Models\\Page','','2024-06-04 23:59:49','2024-06-04 23:59:49'),(153,'product-categories',2,'Botble\\Page\\Models\\Page','','2024-06-04 23:59:49','2024-06-04 23:59:49'),(154,'coupons',3,'Botble\\Page\\Models\\Page','','2024-06-04 23:59:49','2024-06-04 23:59:49'),(155,'blog',4,'Botble\\Page\\Models\\Page','','2024-06-04 23:59:49','2024-06-04 23:59:49'),(156,'contact',5,'Botble\\Page\\Models\\Page','','2024-06-04 23:59:49','2024-06-04 23:59:49'),(157,'faqs',6,'Botble\\Page\\Models\\Page','','2024-06-04 23:59:49','2024-06-04 23:59:49'),(158,'cookie-policy',7,'Botble\\Page\\Models\\Page','','2024-06-04 23:59:49','2024-06-04 23:59:49'),(159,'our-story',8,'Botble\\Page\\Models\\Page','','2024-06-04 23:59:49','2024-06-04 23:59:49'),(160,'careers',9,'Botble\\Page\\Models\\Page','','2024-06-04 23:59:49','2024-06-04 23:59:49'),(161,'shipping',10,'Botble\\Page\\Models\\Page','','2024-06-04 23:59:49','2024-06-04 23:59:49'),(162,'coming-soon',11,'Botble\\Page\\Models\\Page','','2024-06-04 23:59:49','2024-06-04 23:59:49'),(163,'philips-hue-white-and-color-ambiance-a19-led-smart-bulb',58,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:50','2024-06-04 23:59:50'),(164,'philips-hue-white-and-color-ambiance-a19-led-smart-bulb',59,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:50','2024-06-04 23:59:50'),(165,'philips-hue-white-and-color-ambiance-a19-led-smart-bulb',60,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:50','2024-06-04 23:59:50'),(166,'philips-hue-white-and-color-ambiance-a19-led-smart-bulb',61,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:50','2024-06-04 23:59:50'),(167,'samsung-galaxy-tab-s7-124-inch-android-tablet',62,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:50','2024-06-04 23:59:50'),(168,'gopro-hero9-black-action-camera',63,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:50','2024-06-04 23:59:50'),(169,'gopro-hero9-black-action-camera',64,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:50','2024-06-04 23:59:50'),(170,'gopro-hero9-black-action-camera',65,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:50','2024-06-04 23:59:50'),(171,'gopro-hero9-black-action-camera',66,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:50','2024-06-04 23:59:50'),(172,'gopro-hero9-black-action-camera',67,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:50','2024-06-04 23:59:50'),(173,'ring-video-doorbell-pro',68,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:50','2024-06-04 23:59:50'),(174,'samsung-qn90a-neo-qled-4k-smart-tv-digital',69,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:50','2024-06-04 23:59:50'),(175,'samsung-qn90a-neo-qled-4k-smart-tv-digital',70,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:50','2024-06-04 23:59:50'),(176,'samsung-qn90a-neo-qled-4k-smart-tv-digital',71,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:50','2024-06-04 23:59:50'),(177,'samsung-qn90a-neo-qled-4k-smart-tv-digital',72,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:50','2024-06-04 23:59:50'),(178,'lg-oled-c1-series-4k-smart-tv',73,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:50','2024-06-04 23:59:50'),(179,'lg-oled-c1-series-4k-smart-tv',74,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:50','2024-06-04 23:59:50'),(180,'apple-watch-series-7',75,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:50','2024-06-04 23:59:50'),(181,'apple-watch-series-7',76,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:50','2024-06-04 23:59:50'),(182,'apple-watch-series-7',77,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:50','2024-06-04 23:59:50'),(183,'hp-spectre-x360-14-inch-convertible-laptop-digital',78,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:50','2024-06-04 23:59:50'),(184,'hp-spectre-x360-14-inch-convertible-laptop-digital',79,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:50','2024-06-04 23:59:50'),(185,'razer-blade-15-advanced-gaming-laptop',80,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:50','2024-06-04 23:59:50'),(186,'razer-blade-15-advanced-gaming-laptop',81,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:50','2024-06-04 23:59:50'),(187,'alienware-m15-r6-gaming-laptop',82,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:50','2024-06-04 23:59:50'),(188,'alienware-m15-r6-gaming-laptop',83,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:50','2024-06-04 23:59:50'),(189,'alienware-m15-r6-gaming-laptop',84,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:50','2024-06-04 23:59:50'),(190,'alienware-m15-r6-gaming-laptop',85,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:50','2024-06-04 23:59:50'),(191,'corsair-k95-rgb-platinum-xt-mechanical-gaming-keyboard',86,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:50','2024-06-04 23:59:50'),(192,'corsair-k95-rgb-platinum-xt-mechanical-gaming-keyboard',87,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:50','2024-06-04 23:59:50'),(193,'steelseries-arctis-pro-wireless-gaming-headset',88,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:50','2024-06-04 23:59:50'),(194,'steelseries-arctis-pro-wireless-gaming-headset',89,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:50','2024-06-04 23:59:50'),(195,'steelseries-arctis-pro-wireless-gaming-headset',90,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:50','2024-06-04 23:59:50'),(196,'elgato-stream-deck-xl',91,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:50','2024-06-04 23:59:50'),(197,'elgato-stream-deck-xl',92,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:50','2024-06-04 23:59:50'),(198,'elgato-stream-deck-xl',93,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:50','2024-06-04 23:59:50'),(199,'playstation-5-console-digital',94,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:50','2024-06-04 23:59:50'),(200,'xbox-series-x-console',95,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:50','2024-06-04 23:59:50'),(201,'xbox-series-x-console',96,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:50','2024-06-04 23:59:50'),(202,'xbox-series-x-console',97,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:50','2024-06-04 23:59:50'),(203,'lg-ultragear-27gn950-b-4k-gaming-monitor',98,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:50','2024-06-04 23:59:50'),(204,'lg-ultragear-27gn950-b-4k-gaming-monitor',99,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:50','2024-06-04 23:59:50'),(205,'lg-ultragear-27gn950-b-4k-gaming-monitor',100,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:50','2024-06-04 23:59:50'),(206,'asus-rog-swift-pg279qm-27-inch-gaming-monitor',101,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:50','2024-06-04 23:59:50'),(207,'asus-rog-swift-pg279qm-27-inch-gaming-monitor',102,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:50','2024-06-04 23:59:50'),(208,'asus-rog-swift-pg279qm-27-inch-gaming-monitor',103,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:50','2024-06-04 23:59:50'),(209,'dell-ultrasharp-u2720q-27-inch-4k-usb-c-monitor',104,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:50','2024-06-04 23:59:50'),(210,'dell-ultrasharp-u2720q-27-inch-4k-usb-c-monitor',105,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:50','2024-06-04 23:59:50'),(211,'dell-ultrasharp-u2720q-27-inch-4k-usb-c-monitor',106,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:50','2024-06-04 23:59:50'),(212,'hp-z27k-g3-4k-usb-c-monitor',107,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:50','2024-06-04 23:59:50'),(213,'hp-z27k-g3-4k-usb-c-monitor',108,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:50','2024-06-04 23:59:50'),(214,'samsung-odyssey-g7-32-inch-curved-gaming-monitor-digital',109,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:50','2024-06-04 23:59:50'),(215,'samsung-odyssey-g7-32-inch-curved-gaming-monitor-digital',110,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:50','2024-06-04 23:59:50'),(216,'samsung-odyssey-g7-32-inch-curved-gaming-monitor-digital',111,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:50','2024-06-04 23:59:50'),(217,'sony-x900h-4k-ultra-hd-smart-led-tv',112,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:50','2024-06-04 23:59:50'),(218,'sony-x900h-4k-ultra-hd-smart-led-tv',113,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:50','2024-06-04 23:59:50'),(219,'sony-x900h-4k-ultra-hd-smart-led-tv',114,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:50','2024-06-04 23:59:50'),(220,'sony-x900h-4k-ultra-hd-smart-led-tv',115,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:50','2024-06-04 23:59:50'),(221,'tcl-6-series-4k-uhd-dolby-vision-hdr-qled-roku-smart-tv',116,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:50','2024-06-04 23:59:50'),(222,'vizio-oled65-h1-65-inch-4k-oled-smart-tv',117,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:50','2024-06-04 23:59:50'),(223,'vizio-oled65-h1-65-inch-4k-oled-smart-tv',118,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:50','2024-06-04 23:59:50'),(224,'hisense-u8g-quantum-series-4k-uled-android-tv-digital',119,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:50','2024-06-04 23:59:50'),(225,'hisense-u8g-quantum-series-4k-uled-android-tv-digital',120,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:50','2024-06-04 23:59:50'),(226,'hisense-u8g-quantum-series-4k-uled-android-tv-digital',121,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:50','2024-06-04 23:59:50'),(227,'sony-a90j-4k-oled-smart-tv',122,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:50','2024-06-04 23:59:50'),(228,'sony-a90j-4k-oled-smart-tv',123,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:50','2024-06-04 23:59:50'),(229,'amazon-fire-tv-stick-4k-max',124,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:50','2024-06-04 23:59:50'),(230,'amazon-fire-tv-stick-4k-max',125,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:50','2024-06-04 23:59:50'),(231,'amazon-fire-tv-stick-4k-max',126,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:50','2024-06-04 23:59:50'),(232,'google-chromecast-with-google-tv',127,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:50','2024-06-04 23:59:50'),(233,'sonos-beam-gen-2-soundbar',128,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:50','2024-06-04 23:59:50'),(234,'sonos-beam-gen-2-soundbar',129,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:50','2024-06-04 23:59:50'),(235,'sony-ht-a9-home-theater-system',130,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:50','2024-06-04 23:59:50'),(236,'sony-ht-a9-home-theater-system',131,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:50','2024-06-04 23:59:50'),(237,'sony-ht-a9-home-theater-system',132,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:50','2024-06-04 23:59:50'),(238,'sony-ht-a9-home-theater-system',133,'Botble\\Ecommerce\\Models\\Product','products','2024-06-04 23:59:50','2024-06-04 23:59:50');
/*!40000 ALTER TABLE `slugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs_translations`
--

DROP TABLE IF EXISTS `slugs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `slugs_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slugs_id` bigint unsigned NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`lang_code`,`slugs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs_translations`
--

LOCK TABLES `slugs_translations` WRITE;
/*!40000 ALTER TABLE `slugs_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `slugs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `states` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abbreviation` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` bigint unsigned DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `states_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states_translations`
--

DROP TABLE IF EXISTS `states_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `states_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `states_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abbreviation` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`states_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states_translations`
--

LOCK TABLES `states_translations` WRITE;
/*!40000 ALTER TABLE `states_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `states_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'General',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-06-04 23:59:42','2024-06-04 23:59:42'),(2,'Design',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-06-04 23:59:42','2024-06-04 23:59:42'),(3,'Fashion',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-06-04 23:59:42','2024-06-04 23:59:42'),(4,'Branding',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-06-04 23:59:42','2024-06-04 23:59:42'),(5,'Modern',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-06-04 23:59:42','2024-06-04 23:59:42'),(6,'Nature',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-06-04 23:59:42','2024-06-04 23:59:42'),(7,'Vintage',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-06-04 23:59:42','2024-06-04 23:59:42'),(8,'Sunglasses',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-06-04 23:59:42','2024-06-04 23:59:42');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags_translations`
--

DROP TABLE IF EXISTS `tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags_translations`
--

LOCK TABLES `tags_translations` WRITE;
/*!40000 ALTER TABLE `tags_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testimonials`
--

DROP TABLE IF EXISTS `testimonials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `testimonials` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testimonials`
--

LOCK TABLES `testimonials` WRITE;
/*!40000 ALTER TABLE `testimonials` DISABLE KEYS */;
INSERT INTO `testimonials` VALUES (1,'James Dopli','Thanks for all your efforts and teamwork over the last several months!  Thank you so much','main/users/6.jpg','Developer','published','2024-06-04 23:59:45','2024-06-04 23:59:45'),(2,'Theodore Handle','How you use the city or town name is up to you. All results may be freely used in any work.','main/users/6.jpg','CO Founder','published','2024-06-04 23:59:45','2024-06-04 23:59:45'),(3,'Shahnewaz Sakil','Very happy with our choice to take our daughter to Brave care. The entire team was great! Thank you!','main/users/5.jpg','UI/UX Designer','published','2024-06-04 23:59:45','2024-06-04 23:59:45'),(4,'Albert Flores','Wedding day savior! 5 stars. Their bridal collection is a game-changer. Made me feel like a star.','main/users/4.jpg','Bank of America','published','2024-06-04 23:59:45','2024-06-04 23:59:45');
/*!40000 ALTER TABLE `testimonials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testimonials_translations`
--

DROP TABLE IF EXISTS `testimonials_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `testimonials_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `testimonials_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `company` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`testimonials_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testimonials_translations`
--

LOCK TABLES `testimonials_translations` WRITE;
/*!40000 ALTER TABLE `testimonials_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `testimonials_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_meta`
--

DROP TABLE IF EXISTS `user_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_meta` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_meta_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_meta`
--

LOCK TABLES `user_meta` WRITE;
/*!40000 ALTER TABLE `user_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_id` bigint unsigned DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT '0',
  `manage_supers` tinyint(1) NOT NULL DEFAULT '0',
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'gina16@mertz.com',NULL,'$2y$12$Nuz1RzpwXf5RgFby7oe2y.q1f.Bm2gmt5M3HIAQ5Ro4sjvKRoRVo2',NULL,'2024-06-04 23:59:38','2024-06-04 23:59:38','Hannah','Thiel','admin',NULL,1,1,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `widgets`
--

DROP TABLE IF EXISTS `widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `widget_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `data` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widgets`
--

LOCK TABLES `widgets` WRITE;
/*!40000 ALTER TABLE `widgets` DISABLE KEYS */;
INSERT INTO `widgets` VALUES (1,'SiteInfoWidget','footer_primary_sidebar','shofy',1,'{\"id\":\"SiteInfoWidget\",\"logo\":\"main\\/general\\/logo.png\",\"logo_height\":50,\"about\":\"Shofy is a powerful tool eCommerce Laravel script for creating a professional and visually appealing online store.\",\"show_social_links\":true}','2024-06-04 23:59:49','2024-06-04 23:59:49'),(2,'CustomMenuWidget','footer_primary_sidebar','shofy',2,'{\"id\":\"CustomMenuWidget\",\"name\":\"My Account\",\"menu_id\":\"my-account\"}','2024-06-04 23:59:49','2024-06-04 23:59:49'),(3,'CustomMenuWidget','footer_primary_sidebar','shofy',3,'{\"id\":\"CustomMenuWidget\",\"name\":\"Information\",\"menu_id\":\"information\"}','2024-06-04 23:59:49','2024-06-04 23:59:49'),(4,'SiteContactWidget','footer_primary_sidebar','shofy',4,'{\"id\":\"SiteContactWidget\",\"name\":\"Talk To Us\",\"phone_label\":\"Got Questions? Call us\",\"phone\":\"+670 413 90 762\",\"email\":\"support@shofy.com\",\"address\":\"79 Sleepy Hollow St. Jamaica, New York 1432\"}','2024-06-04 23:59:49','2024-06-04 23:59:49'),(5,'ProductCategoriesWidget','footer_primary_sidebar','shofy',5,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Health & Beauty\",\"categories\":[5,6,7,8,10,11,12]}','2024-06-04 23:59:49','2024-06-04 23:59:49'),(6,'ProductCategoriesWidget','footer_primary_sidebar','shofy',7,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Electronics\",\"style\":\"simple-text\",\"categories\":[3,4,15,18,19,20]}','2024-06-04 23:59:49','2024-06-04 23:59:49'),(7,'ProductCategoriesWidget','footer_primary_sidebar','shofy',8,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Sweet Treats\",\"categories\":[11,12,13,14,15,16,17]}','2024-06-04 23:59:49','2024-06-04 23:59:49'),(8,'ProductCategoriesWidget','footer_primary_sidebar','shofy',9,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Fashion\",\"categories\":[1,2,3,4,5,6,7,8]}','2024-06-04 23:59:49','2024-06-04 23:59:49'),(9,'NewsletterWidget','footer_top_sidebar','shofy',1,'{\"id\":\"NewsletterWidget\",\"title\":\"Subscribe our Newsletter\",\"subtitle\":\"Sale 20% off all store\"}','2024-06-04 23:59:49','2024-06-04 23:59:49'),(10,'SiteCopyrightWidget','footer_bottom_sidebar','shofy',1,'{\"id\":\"SiteCopyrightWidget\",\"content\":\"\\u00a9 %y% All rights Reserved.\"}','2024-06-04 23:59:49','2024-06-04 23:59:49'),(11,'SiteAcceptedPaymentsWidget','footer_bottom_sidebar','shofy',2,'{\"id\":\"SiteAcceptedPaymentsWidget\",\"name\":\"Accepted Payments\",\"image\":\"main\\/general\\/footer-pay.png\",\"url\":\"#\"}','2024-06-04 23:59:49','2024-06-04 23:59:49'),(12,'BlogSearchWidget','blog_sidebar','shofy',1,'{\"id\":\"BlogSearchWidget\"}','2024-06-04 23:59:49','2024-06-04 23:59:49'),(13,'BlogAboutMeWidget','blog_sidebar','shofy',2,'{\"id\":\"BlogAboutMeWidget\",\"name\":\"About Me\",\"author_url\":\"\\/blog\",\"author_avatar\":\"main\\/users\\/2.jpg\",\"author_name\":\"Ravi O\'Leigh\",\"author_role\":\"Photographer & Blogger\",\"author_description\":\"Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient\",\"author_signature\":\"main\\/general\\/signature.png\"}','2024-06-04 23:59:49','2024-06-04 23:59:49'),(14,'BlogPostsWidget','blog_sidebar','shofy',3,'{\"id\":\"BlogPostsWidget\",\"name\":\"Latest Posts\",\"limit\":3}','2024-06-04 23:59:49','2024-06-04 23:59:49'),(15,'BlogCategoriesWidget','blog_sidebar','shofy',4,'{\"id\":\"BlogCategoriesWidget\",\"name\":\"Categories\",\"number_display\":6}','2024-06-04 23:59:49','2024-06-04 23:59:49'),(16,'BlogTagsWidget','blog_sidebar','shofy',5,'{\"id\":\"BlogTagsWidget\",\"name\":\"Popular Tags\",\"number_display\":6}','2024-06-04 23:59:49','2024-06-04 23:59:49'),(17,'ProductDetailInfoWidget','product_details_sidebar','shofy',1,'{\"id\":\"ProductDetailInfoWidget\",\"messages\":[[{\"key\":\"message\",\"value\":\"30 days easy returns\"}],[{\"key\":\"message\",\"value\":\"Order yours before 2.30pm for same day dispatch\"}]],\"description\":\"Guaranteed safe & secure checkout\",\"image\":\"main\\/general\\/footer-pay.png\"}','2024-06-04 23:59:49','2024-06-04 23:59:49'),(18,'EcommerceBrands','products_listing_top_sidebar','shofy',1,'{\"id\":\"EcommerceBrands\",\"brand_ids\":[1,2,3,4,5]}','2024-06-04 23:59:49','2024-06-04 23:59:49'),(19,'ProductCategoriesWidget','products_listing_top_sidebar','shofy',2,'{\"id\":\"ProductCategoriesWidget\",\"categories\":[6,7,10,13,16,30],\"style\":\"slider\",\"display_children\":false}','2024-06-04 23:59:49','2024-06-04 23:59:49');
/*!40000 ALTER TABLE `widgets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-05 13:59:51
