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
INSERT INTO `activations` VALUES (1,1,'LEUpaxfskEw0fuMbEF5DLlGZuEe5pSCG',1,'2024-06-05 00:00:42','2024-06-05 00:00:42','2024-06-05 00:00:42');
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads`
--

LOCK TABLES `ads` WRITE;
/*!40000 ALTER TABLE `ads` DISABLE KEYS */;
INSERT INTO `ads` VALUES (1,'Ads 1','2029-06-05 00:00:00','not_set','UROL9F9ZZVAA','jewelry/banners/1.jpg','/products',0,1,'published','2024-06-05 00:00:51','2024-06-05 00:00:51',1,NULL,NULL,NULL,NULL),(2,'Ads 2','2029-06-05 00:00:00','not_set','B30VDBKO7SBF','jewelry/banners/2.jpg','/products',0,2,'published','2024-06-05 00:00:51','2024-06-05 00:00:51',1,NULL,NULL,NULL,NULL),(3,'Ads 3','2029-06-05 00:00:00','not_set','BN3ZCHLIE95I','jewelry/banners/3.jpg','/products',0,3,'published','2024-06-05 00:00:51','2024-06-05 00:00:51',1,NULL,NULL,NULL,NULL),(4,'Ads 4','2029-06-05 00:00:00','not_set','QGPRRJ2MPZYA','jewelry/banners/4.jpg','/products',0,4,'published','2024-06-05 00:00:51','2024-06-05 00:00:51',1,NULL,NULL,NULL,NULL);
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
INSERT INTO `announcements` VALUES (1,'Announcement 1','Enjoy free shipping on all orders over $99! Shop now and save on delivery costs.',0,NULL,NULL,0,1,'2024-06-05 07:00:49',NULL,1,'2024-06-05 00:00:49','2024-06-05 00:00:49'),(2,'Announcement 2','Need assistance? Our customer support is available 24/7 to help you with any questions or concerns.',0,NULL,NULL,0,1,'2024-06-05 07:00:49',NULL,1,'2024-06-05 00:00:49','2024-06-05 00:00:49'),(3,'Announcement 3','Shop with confidence! We offer a hassle-free 30 days return service for your peace of mind.',0,NULL,NULL,0,1,'2024-06-05 07:00:49',NULL,1,'2024-06-05 00:00:49','2024-06-05 00:00:49');
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
INSERT INTO `categories` VALUES (1,'Crisp Bread &amp; Cake',0,'Voluptas tenetur fuga facere laborum autem laborum tenetur aut. Qui voluptatum aut autem autem ut rerum. Aspernatur voluptas tempore est aut.','published',1,'Botble\\ACL\\Models\\User',NULL,0,0,0,'2024-06-05 00:00:46','2024-06-05 00:00:46'),(2,'Fashion',0,'Recusandae et omnis ut et ea ab sed. Facilis qui quisquam ut laudantium minima nostrum enim odit. Officia harum qui ad non eius id incidunt.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-06-05 00:00:46','2024-06-05 00:00:46'),(3,'Electronic',0,'Pariatur sapiente ullam perspiciatis sequi eius assumenda. Et adipisci laudantium nobis a excepturi. Et aut molestiae quas id sapiente fugiat exercitationem officia.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-06-05 00:00:46','2024-06-05 00:00:46'),(4,'Commercial',0,'Nostrum quia atque et voluptatibus. Ut ratione minus molestiae explicabo suscipit. Earum corporis recusandae quae impedit necessitatibus laudantium. Vel inventore in sed sit culpa nemo.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-06-05 00:00:46','2024-06-05 00:00:46'),(5,'Organic Fruits',0,'Qui totam commodi perspiciatis molestiae incidunt vel reprehenderit. Sunt illum sint nemo accusamus eos. Sit earum magni eos rerum velit omnis vitae. Impedit sed saepe aut excepturi commodi iste.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-06-05 00:00:46','2024-06-05 00:00:46'),(6,'Ecological',0,'Eius omnis reprehenderit reprehenderit voluptas tempora eos. Non eveniet blanditiis accusamus molestiae porro. Amet repellat deserunt quia recusandae quis. Qui non qui quo sapiente.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-06-05 00:00:46','2024-06-05 00:00:46');
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
INSERT INTO `contacts` VALUES (1,'Miss Faye O\'Connell','umoen@example.org','530.302.3583','892 Devan Summit Suite 283\nWest Wallace, CO 74705','Maiores molestiae dolores ipsum ut.','Ex assumenda sit tenetur illum et officia. Atque quas aliquam animi quibusdam nihil animi. Sed sit quidem facere cum ipsam et. Aut est enim sint blanditiis qui quisquam eaque esse. Ut soluta in culpa ex aut dolorem aut. Ipsum nesciunt quaerat ad hic et corporis qui. Et eaque expedita modi est. Necessitatibus voluptatem quae exercitationem. Adipisci qui tenetur quaerat. Possimus vel maiores sit in.',NULL,'unread','2024-06-05 00:00:45','2024-06-05 00:00:45'),(2,'Miss Esmeralda Herman III','towne.elvie@example.net','407-267-0905','2087 Grant Isle\nPort Amie, LA 68778-4964','Aspernatur at est occaecati optio est.','Culpa itaque provident soluta autem quas impedit impedit. Eius in praesentium inventore inventore eos possimus voluptates sint. Illum atque autem dolorem nihil provident quibusdam. Eaque vel dolorum quod consequatur veniam. Voluptates rerum repellendus consequatur quis quae. Molestiae consequatur omnis eos qui sit. Reprehenderit quia placeat voluptatem molestiae fugit aut id.',NULL,'read','2024-06-05 00:00:45','2024-06-05 00:00:45'),(3,'Cassandra Mayer','elena16@example.org','470.520.2480','6834 Jerde Walk Suite 467\nManteport, MA 72409-8027','Enim nihil aliquid soluta cum eius.','Ut accusantium aut aliquam. Quia odit et tenetur sed quo quos id. Corporis quia repellendus mollitia molestiae ducimus quidem. Necessitatibus cum vel unde praesentium reprehenderit sed excepturi. Esse dolores qui repellat porro iure fugiat. Consequuntur eum rerum saepe non eveniet eius ea explicabo. Animi corrupti doloribus quia commodi aut. Ullam distinctio ea iusto sint aliquam a veniam. Repellendus commodi adipisci et. Dolore id id quia qui.',NULL,'read','2024-06-05 00:00:45','2024-06-05 00:00:45'),(4,'Mr. Carol Steuber','alia.hilpert@example.com','+15413768718','823 Mitchell Lodge Suite 352\nSouth Hollismouth, KY 96419','Omnis blanditiis id qui rem dicta qui.','Vero eveniet aliquam consequuntur tenetur. Dolor dolores ea et tempora sed eveniet. Voluptatum harum officia vero et quod asperiores. Aspernatur sit id nesciunt ut perspiciatis mollitia. Dolore voluptatibus aut autem at porro. Illum atque nam dolor perferendis rem. Ea architecto sed et nam laudantium ut. Facere ex rerum occaecati nulla labore at repellendus qui. Fugit accusamus quia maxime aperiam odio sit architecto dolor.',NULL,'read','2024-06-05 00:00:45','2024-06-05 00:00:45'),(5,'Kelvin Russel','forrest24@example.org','859.973.8997','887 Sigrid Burg Apt. 232\nSouth Dixiehaven, NH 56101-8024','Omnis dolores molestiae iste molestiae.','Dolor eum omnis corrupti dolorem vel. Iusto voluptas nisi fugiat quasi ipsum dolorem et. Ut sed eos ut. Et culpa ut ducimus sint. Odio itaque molestias adipisci ratione unde beatae. Odio fugit necessitatibus illo a odio qui error. Animi culpa iure est velit impedit impedit ut necessitatibus. Quo odit labore explicabo. Rerum harum est facilis ut vel corporis assumenda. Corrupti similique necessitatibus distinctio consequatur dolor.',NULL,'read','2024-06-05 00:00:45','2024-06-05 00:00:45'),(6,'Emily Wisozk I','vandervort.rosendo@example.org','1-731-268-4579','840 Bradtke Bridge\nConnhaven, AZ 80707','Quam quaerat incidunt voluptatibus consequatur.','In eum nesciunt odit. Molestiae incidunt et eum dolores et qui. Quaerat ut cum harum consequatur quam. Rerum ipsum aspernatur perferendis pariatur. Perferendis quia iusto qui debitis quibusdam. Et et ad id est tempora unde. Eligendi quos esse dolores repudiandae non. Qui tenetur quidem quia unde autem et. Adipisci maxime rerum nulla voluptas repellendus iure commodi fugiat. Rem quaerat officiis ut. Optio explicabo corrupti cum nemo est eum. Maxime voluptatem ea aut omnis velit ullam.',NULL,'unread','2024-06-05 00:00:45','2024-06-05 00:00:45'),(7,'Jack Barton','rmurphy@example.org','+1-743-913-4807','365 Noah Lane Apt. 281\nNorbertmouth, OH 81433-7455','Sapiente quis maiores ipsum.','Error consectetur similique rerum quia culpa provident est sit. Sed amet exercitationem quam ab deserunt. Est est molestiae consectetur eum velit eligendi. Eaque eos maxime autem necessitatibus non. Beatae pariatur vel voluptas sequi ad dolor dicta. Minima consequatur ut voluptas facilis aut iste ipsa. Distinctio porro aperiam quod provident et labore. Fugiat ducimus porro illum eligendi doloribus. Voluptatem accusantium aliquid eos ad nobis.',NULL,'read','2024-06-05 00:00:45','2024-06-05 00:00:45'),(8,'Magnolia Stracke','stephania.pacocha@example.org','+1 (681) 862-7951','617 Donny Stravenue\nAltenwerthstad, WV 97811-7100','Fugiat nostrum doloremque quas dignissimos ea.','Consequatur cum consequatur et veritatis et in et. Ipsa est aperiam consequatur natus natus dolor. Dicta ratione soluta quod itaque. Harum delectus est totam delectus amet expedita sapiente. Eum natus at et. Autem maiores odit officiis aut est sunt. Explicabo ad qui officiis tempora maiores. Et veritatis a quod corporis ex mollitia. Beatae at sequi cum rerum. Voluptas ut soluta ea accusamus. Nesciunt ducimus minima ex nulla ut repellendus. Cum quisquam dignissimos cum vero voluptatem nobis.',NULL,'unread','2024-06-05 00:00:45','2024-06-05 00:00:45'),(9,'Zora Ankunding','jayson33@example.org','480.224.2877','7253 Adrian Curve Apt. 813\nNew Mialand, WA 69107','Debitis quia tempora quae sed.','Nam natus error nemo. Quia impedit aut accusantium provident quo blanditiis. Dolorum amet sapiente qui. Occaecati enim voluptas fugit distinctio sapiente mollitia. Modi voluptates a similique eius sunt itaque. Labore repellat a et molestiae beatae et quo. Non doloremque quas et fugit omnis et non. Aliquam maxime a dolores ut voluptas sunt odit quaerat. Tempore debitis illum animi nihil tempora non reiciendis.',NULL,'unread','2024-06-05 00:00:45','2024-06-05 00:00:45'),(10,'Melvina Hills','ethiel@example.net','+14845490865','3443 Leif Brook\nAbernathyfort, TX 93706-8593','Et nihil assumenda doloribus voluptatem.','Quia repudiandae dignissimos expedita consequuntur in at quaerat. Architecto excepturi voluptatem quo omnis itaque. Nihil odio perferendis cumque quo vel. Voluptas numquam dolor illo et. Corporis asperiores id cum numquam. Sit et eveniet excepturi ex voluptas vero eos. Rerum magni voluptatem et. Libero suscipit quia repellat numquam. Id corporis quas animi dolores nam. Earum fugit corporis inventore. Ipsam nihil et ea soluta suscipit est.',NULL,'unread','2024-06-05 00:00:45','2024-06-05 00:00:45');
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
INSERT INTO `ec_brands` VALUES (1,'FoodPound','New Snacks Release',NULL,'main/brands/1.png','published',0,1,'2024-06-05 00:00:42','2024-06-05 00:00:42'),(2,'iTea JSC','Happy Tea 100% Organic. From $29.9',NULL,'main/brands/2.png','published',1,1,'2024-06-05 00:00:42','2024-06-05 00:00:42'),(3,'Soda Brand','Fresh Meat Sausage. BUY 2 GET 1!',NULL,'main/brands/3.png','published',2,1,'2024-06-05 00:00:42','2024-06-05 00:00:42'),(4,'Shofy','Fresh Meat Sausage. BUY 2 GET 1!',NULL,'main/brands/4.png','published',3,1,'2024-06-05 00:00:42','2024-06-05 00:00:42'),(5,'Soda Brand','Fresh Meat Sausage. BUY 2 GET 1!',NULL,'main/brands/5.png','published',4,1,'2024-06-05 00:00:42','2024-06-05 00:00:42');
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
INSERT INTO `ec_currencies` VALUES (1,'USD','$',1,2,0,1,1,'2024-06-05 00:00:43','2024-06-05 00:00:43'),(2,'EUR','€',0,2,1,0,0.84,'2024-06-05 00:00:43','2024-06-05 00:00:43'),(3,'VND','₫',0,0,2,0,23203,'2024-06-05 00:00:43','2024-06-05 00:00:43'),(4,'NGN','₦',1,2,2,0,895.52,'2024-06-05 00:00:43','2024-06-05 00:00:43');
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
INSERT INTO `ec_customer_addresses` VALUES (1,'Kaleigh Koelpin','customer@botble.com','+16062121795','VN','Illinois','New Jaysonton','82118 Letitia Lodge Apt. 807',1,1,'2024-06-05 00:00:43','2024-06-05 00:00:43','91376-7307'),(2,'Kaleigh Koelpin','customer@botble.com','+17637353872','BH','New Jersey','Port Abrahamland','731 Marion Ford Suite 192',1,0,'2024-06-05 00:00:43','2024-06-05 00:00:43','89294'),(3,'Prof. Omari Wiza','vendor@botble.com','+16578767393','MZ','Texas','Wolfville','7389 Reva Brook',2,1,'2024-06-05 00:00:43','2024-06-05 00:00:43','11932'),(4,'Prof. Omari Wiza','vendor@botble.com','+18705224297','KY','West Virginia','South Kamren','286 Clement Shoal Suite 321',2,0,'2024-06-05 00:00:43','2024-06-05 00:00:43','36570-2280'),(5,'Vida Rempel','agislason@example.net','+14235183303','NE','South Dakota','Considinefort','412 Elyse Loaf',3,1,'2024-06-05 00:00:44','2024-06-05 00:00:44','13681-4383'),(6,'Dr. Rowland Abshire','sonya.marvin@example.net','+12487306377','PT','Oklahoma','West Leta','7279 Reva Passage',4,1,'2024-06-05 00:00:44','2024-06-05 00:00:44','91350'),(7,'Dr. Isabell Will I','baylee38@example.net','+17815177220','TG','Louisiana','New Wava','761 Senger Forges Apt. 538',5,1,'2024-06-05 00:00:44','2024-06-05 00:00:44','43876-2437'),(8,'Dr. Alana Brakus DDS','bette03@example.com','+12177352200','VU','Kansas','North Gavin','4339 Parker Forest',6,1,'2024-06-05 00:00:44','2024-06-05 00:00:44','28394'),(9,'Maud Dicki','waylon.steuber@example.org','+17346547087','KP','New York','Keeblerside','74229 Trantow Flat',7,1,'2024-06-05 00:00:45','2024-06-05 00:00:45','32583'),(10,'Danielle Hansen','eschmeler@example.com','+13517468471','DZ','New York','Watersland','567 Boyer Mills',8,1,'2024-06-05 00:00:45','2024-06-05 00:00:45','16060'),(11,'Garnett Cummings','alysson.dickinson@example.net','+14457811003','IE','District of Columbia','Johnschester','30790 Mayert Locks',9,1,'2024-06-05 00:00:45','2024-06-05 00:00:45','30123-2476'),(12,'Trenton Cummings','marquardt.ethyl@example.net','+15705287033','DM','Kansas','Lake Beverlybury','9713 Ayana Union',10,1,'2024-06-05 00:00:45','2024-06-05 00:00:45','21568');
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
INSERT INTO `ec_customers` VALUES (1,'Kaleigh Koelpin','customer@botble.com','$2y$12$3RmD3hhOlD37Gujn8pbxSemYF1ST62yBOHvCng.QurbWXZQRvxExK','main/customers/1.jpg','1985-05-06','+18598196834',NULL,'2024-06-05 00:00:43','2024-06-05 00:00:43','2024-06-05 07:00:43',NULL,0,NULL,'activated',NULL),(2,'Prof. Omari Wiza','vendor@botble.com','$2y$12$Lv3XlV5/pgvjr/HN/ZIY5.AHdqi345aIo.N0UGgkYR6MyHE8A3OuC','main/customers/6.jpg','1976-06-04','+17342994842',NULL,'2024-06-05 00:00:43','2024-06-05 00:00:47','2024-06-05 07:00:43',NULL,1,'2024-06-05 07:00:47','activated',NULL),(3,'Vida Rempel','agislason@example.net','$2y$12$GPev9uLUGRDSkPpQ/lFQtujlzTxBs1gg.61.YqLbMO9e.nGSeohGa','main/customers/1.jpg','1981-05-16','+13863390792',NULL,'2024-06-05 00:00:44','2024-06-05 00:00:48','2024-06-05 07:00:43',NULL,1,'2024-06-05 07:00:47','activated',NULL),(4,'Dr. Rowland Abshire','sonya.marvin@example.net','$2y$12$TkCxAetMXAICx6jhcNebiei8hGr3PksehPAWAkyCQ9oJ4ArJ2ROuK','main/customers/2.jpg','2001-05-12','+15624738281',NULL,'2024-06-05 00:00:44','2024-06-05 00:00:48','2024-06-05 07:00:43',NULL,1,'2024-06-05 07:00:47','activated',NULL),(5,'Dr. Isabell Will I','baylee38@example.net','$2y$12$4JuhbCEuSeIZJmMBBtzR..0ON5hqRILJatDCUD4ybUFRsB1CQc1CC','main/customers/3.jpg','2000-05-17','+12839987718',NULL,'2024-06-05 00:00:44','2024-06-05 00:00:48','2024-06-05 07:00:43',NULL,1,'2024-06-05 07:00:47','activated',NULL),(6,'Dr. Alana Brakus DDS','bette03@example.com','$2y$12$dsGGVeqS17RxH.TVGzcsAuMCR8ifUP50d3GOUQ54CMTHHgkLSese.','main/customers/4.jpg','1977-05-23','+18562303597',NULL,'2024-06-05 00:00:44','2024-06-05 00:00:48','2024-06-05 07:00:43',NULL,1,'2024-06-05 07:00:47','activated',NULL),(7,'Maud Dicki','waylon.steuber@example.org','$2y$12$C03KcdTKmmkoyzkii369rehA3AlDOaE67RkInO42gGPVnfjRY.0He','main/customers/5.jpg','1976-05-21','+17819889899',NULL,'2024-06-05 00:00:45','2024-06-05 00:00:49','2024-06-05 07:00:43',NULL,1,'2024-06-05 07:00:47','activated',NULL),(8,'Danielle Hansen','eschmeler@example.com','$2y$12$dMBamLykkywF2NJfr.T5Z.nN3w74q9kI5MI.PtEKYbWmg8KISANfq','main/customers/6.jpg','1995-05-14','+12692346426',NULL,'2024-06-05 00:00:45','2024-06-05 00:00:49','2024-06-05 07:00:43',NULL,1,'2024-06-05 07:00:47','activated',NULL),(9,'Garnett Cummings','alysson.dickinson@example.net','$2y$12$D3lXzDU7/RQWuNpKoOhd7umHST.cNGBhk6OUhQlMgtkmSlrU/U5mW','main/customers/7.jpg','1991-05-17','+14237350567',NULL,'2024-06-05 00:00:45','2024-06-05 00:00:49','2024-06-05 07:00:43',NULL,0,NULL,'activated',NULL),(10,'Trenton Cummings','marquardt.ethyl@example.net','$2y$12$5cA8U1BBZCYniGCiccQGgenpFQyqcwNO9TGjH1IZcubqVP4knu6Pe','main/customers/8.jpg','1990-05-12','+15392275958',NULL,'2024-06-05 00:00:45','2024-06-05 00:00:49','2024-06-05 07:00:43',NULL,0,NULL,'activated',NULL);
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
INSERT INTO `ec_discounts` VALUES (1,'Discount 1','EAFFYN7NSBKC','2024-06-04 07:00:47',NULL,NULL,0,578,'coupon',0,NULL,NULL,'shipping','all-orders',NULL,0,1,'2024-06-05 00:00:47','2024-06-05 00:00:47',NULL,NULL),(2,'Discount 2','IS73EESJV25I','2024-06-04 07:00:47',NULL,NULL,0,897,'coupon',0,NULL,NULL,'shipping','all-orders',NULL,0,1,'2024-06-05 00:00:47','2024-06-05 00:00:47',NULL,NULL),(3,'Discount 3','DBK2DID9PPYN','2024-06-04 07:00:47','2024-07-03 07:00:47',NULL,0,581,'coupon',0,NULL,NULL,'shipping','all-orders',NULL,0,1,'2024-06-05 00:00:47','2024-06-05 00:00:47',NULL,NULL),(4,'Discount 4','V3MEIX0KX69P','2024-06-04 07:00:47',NULL,NULL,0,60,'coupon',0,NULL,NULL,'shipping','all-orders',NULL,0,1,'2024-06-05 00:00:47','2024-06-05 00:00:47',NULL,NULL),(5,'Discount 5','4DHED4AX7W6A','2024-06-04 07:00:47',NULL,NULL,0,365,'coupon',0,NULL,NULL,'amount','all-orders',NULL,0,1,'2024-06-05 00:00:47','2024-06-05 00:00:47',NULL,NULL),(6,'Discount 6','KS1M8XZ2QI8T','2024-06-04 07:00:47',NULL,NULL,0,470,'coupon',0,NULL,NULL,'same-price','all-orders',NULL,0,1,'2024-06-05 00:00:47','2024-06-05 00:00:47',NULL,NULL),(7,'Discount 7','JME3UECTTG9P','2024-06-04 07:00:47',NULL,NULL,0,913,'coupon',0,NULL,NULL,'amount','all-orders',NULL,0,1,'2024-06-05 00:00:47','2024-06-05 00:00:47',NULL,NULL),(8,'Discount 8','OJHQUNUUZUAN','2024-06-04 07:00:47',NULL,NULL,0,47,'coupon',0,NULL,NULL,'percentage','all-orders',NULL,0,1,'2024-06-05 00:00:47','2024-06-05 00:00:47',NULL,NULL),(9,'Discount 9','DM8CX9TNKWUD','2024-06-04 07:00:47','2024-07-05 07:00:47',NULL,0,163,'coupon',0,NULL,NULL,'same-price','all-orders',NULL,0,1,'2024-06-05 00:00:47','2024-06-05 00:00:47',NULL,NULL),(10,'Discount 10','EX7OC87INTCK','2024-06-04 07:00:47',NULL,NULL,0,692,'coupon',0,NULL,NULL,'amount','all-orders',NULL,0,1,'2024-06-05 00:00:47','2024-06-05 00:00:47',NULL,NULL);
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
INSERT INTO `ec_flash_sale_products` VALUES (1,1,989.86,9,5),(1,2,672.32,20,3),(1,3,15.84,9,4),(1,4,877.968,17,3),(1,5,550,8,2),(1,6,428.64,8,1),(1,7,187.2,18,5),(1,8,1155.3204,6,5),(1,9,451.52,7,3),(1,10,223.88,7,4);
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
INSERT INTO `ec_flash_sales` VALUES (1,'Winter Sale','2024-06-25 00:00:00','published','2024-06-05 00:00:51','2024-06-05 00:00:51');
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
INSERT INTO `ec_global_option_value` VALUES (1,1,'1 Year',0,9999,0,'2024-06-05 00:00:47','2024-06-05 00:00:47'),(1,2,'2 Year',10,9999,0,'2024-06-05 00:00:47','2024-06-05 00:00:47'),(1,3,'3 Year',20,9999,0,'2024-06-05 00:00:47','2024-06-05 00:00:47'),(2,4,'4GB',0,9999,0,'2024-06-05 00:00:47','2024-06-05 00:00:47'),(2,5,'8GB',10,9999,0,'2024-06-05 00:00:47','2024-06-05 00:00:47'),(2,6,'16GB',20,9999,0,'2024-06-05 00:00:47','2024-06-05 00:00:47'),(3,7,'Core i5',0,9999,0,'2024-06-05 00:00:47','2024-06-05 00:00:47'),(3,8,'Core i7',10,9999,0,'2024-06-05 00:00:47','2024-06-05 00:00:47'),(3,9,'Core i9',20,9999,0,'2024-06-05 00:00:47','2024-06-05 00:00:47'),(4,10,'128GB',0,9999,0,'2024-06-05 00:00:47','2024-06-05 00:00:47'),(4,11,'256GB',10,9999,0,'2024-06-05 00:00:47','2024-06-05 00:00:47'),(4,12,'512GB',20,9999,0,'2024-06-05 00:00:47','2024-06-05 00:00:47');
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
INSERT INTO `ec_global_options` VALUES (1,'Warranty','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2024-06-05 00:00:47','2024-06-05 00:00:47'),(2,'RAM','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2024-06-05 00:00:47','2024-06-05 00:00:47'),(3,'CPU','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2024-06-05 00:00:47','2024-06-05 00:00:47'),(4,'HDD','Botble\\Ecommerce\\Option\\OptionType\\Dropdown',0,'2024-06-05 00:00:47','2024-06-05 00:00:47');
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
INSERT INTO `ec_product_attribute_sets` VALUES (1,'Color','color','visual',1,1,1,'published',0,'2024-06-05 00:00:43','2024-06-05 00:00:43',0),(2,'Size','size','text',1,1,1,'published',1,'2024-06-05 00:00:43','2024-06-05 00:00:43',0),(3,'Weight','weight','text',1,1,1,'published',0,'2024-06-05 00:00:43','2024-06-05 00:00:43',0),(4,'Boxes','boxes','text',1,1,1,'published',1,'2024-06-05 00:00:43','2024-06-05 00:00:43',0);
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
INSERT INTO `ec_product_attributes` VALUES (1,1,'Green','green','#5FB7D4',NULL,1,1,'2024-06-05 00:00:43','2024-06-05 00:00:43'),(2,1,'Blue','blue','#333333',NULL,0,2,'2024-06-05 00:00:43','2024-06-05 00:00:43'),(3,1,'Red','red','#DA323F',NULL,0,3,'2024-06-05 00:00:43','2024-06-05 00:00:43'),(4,1,'Black','black','#2F366C',NULL,0,4,'2024-06-05 00:00:43','2024-06-05 00:00:43'),(5,1,'Brown','brown','#87554B',NULL,0,5,'2024-06-05 00:00:43','2024-06-05 00:00:43'),(6,2,'S','s',NULL,NULL,1,1,'2024-06-05 00:00:43','2024-06-05 00:00:43'),(7,2,'M','m',NULL,NULL,0,2,'2024-06-05 00:00:43','2024-06-05 00:00:43'),(8,2,'L','l',NULL,NULL,0,3,'2024-06-05 00:00:43','2024-06-05 00:00:43'),(9,2,'XL','xl',NULL,NULL,0,4,'2024-06-05 00:00:43','2024-06-05 00:00:43'),(10,2,'XXL','xxl',NULL,NULL,0,5,'2024-06-05 00:00:43','2024-06-05 00:00:43'),(11,3,'1KG','1kg',NULL,NULL,1,1,'2024-06-05 00:00:43','2024-06-05 00:00:43'),(12,3,'2KG','2kg',NULL,NULL,0,2,'2024-06-05 00:00:43','2024-06-05 00:00:43'),(13,3,'3KG','3kg',NULL,NULL,0,3,'2024-06-05 00:00:43','2024-06-05 00:00:43'),(14,3,'4KG','4kg',NULL,NULL,0,4,'2024-06-05 00:00:43','2024-06-05 00:00:43'),(15,3,'5KG','5kg',NULL,NULL,0,5,'2024-06-05 00:00:43','2024-06-05 00:00:43'),(16,4,'1 Box','1-box',NULL,NULL,1,1,'2024-06-05 00:00:43','2024-06-05 00:00:43'),(17,4,'2 Boxes','2-boxes',NULL,NULL,0,2,'2024-06-05 00:00:43','2024-06-05 00:00:43'),(18,4,'3 Boxes','3-boxes',NULL,NULL,0,3,'2024-06-05 00:00:43','2024-06-05 00:00:43'),(19,4,'4 Boxes','4-boxes',NULL,NULL,0,4,'2024-06-05 00:00:43','2024-06-05 00:00:43'),(20,4,'5 Boxes','5-boxes',NULL,NULL,0,5,'2024-06-05 00:00:43','2024-06-05 00:00:43');
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories`
--

LOCK TABLES `ec_product_categories` WRITE;
/*!40000 ALTER TABLE `ec_product_categories` DISABLE KEYS */;
INSERT INTO `ec_product_categories` VALUES (1,'Discover Skincare',0,NULL,'published',0,'jewelry/product-categories/1.jpg',1,'2024-06-05 00:00:50','2024-06-05 00:00:50',NULL,NULL),(2,'Clothing',0,NULL,'published',1,'jewelry/product-categories/4.jpg',1,'2024-06-05 00:00:50','2024-06-05 00:00:50',NULL,NULL),(3,'Men\'s Clothing',2,NULL,'published',0,NULL,0,'2024-06-05 00:00:50','2024-06-05 00:00:50',NULL,NULL),(4,'T-Shirts',3,NULL,'published',0,NULL,0,'2024-06-05 00:00:50','2024-06-05 00:00:50',NULL,NULL),(5,'Jeans',3,NULL,'published',1,NULL,0,'2024-06-05 00:00:50','2024-06-05 00:00:50',NULL,NULL),(6,'Suits',3,NULL,'published',2,NULL,0,'2024-06-05 00:00:50','2024-06-05 00:00:50',NULL,NULL),(7,'Women\'s Clothing',2,NULL,'published',1,'jewelry/product-categories/2.jpg',1,'2024-06-05 00:00:50','2024-06-05 00:00:50',NULL,NULL),(8,'Dresses',7,NULL,'published',0,NULL,0,'2024-06-05 00:00:50','2024-06-05 00:00:50',NULL,NULL),(9,'Blouses',7,NULL,'published',1,NULL,0,'2024-06-05 00:00:50','2024-06-05 00:00:50',NULL,NULL),(10,'Pants',7,NULL,'published',2,NULL,0,'2024-06-05 00:00:50','2024-06-05 00:00:50',NULL,NULL),(11,'Accessories',0,NULL,'published',2,'jewelry/product-categories/5.jpg',1,'2024-06-05 00:00:50','2024-06-05 00:00:50',NULL,NULL),(12,'Hats',11,NULL,'published',0,NULL,0,'2024-06-05 00:00:50','2024-06-05 00:00:50',NULL,NULL),(13,'Scarves',11,NULL,'published',1,NULL,0,'2024-06-05 00:00:50','2024-06-05 00:00:50',NULL,NULL),(14,'Jewelry',11,NULL,'published',2,NULL,0,'2024-06-05 00:00:50','2024-06-05 00:00:50',NULL,NULL),(15,'Sportswear',0,NULL,'published',3,NULL,0,'2024-06-05 00:00:50','2024-06-05 00:00:50',NULL,NULL),(16,'Activewear',15,NULL,'published',0,NULL,0,'2024-06-05 00:00:50','2024-06-05 00:00:50',NULL,NULL),(17,'Running Shoes',15,NULL,'published',1,'jewelry/product-categories/3.jpg',1,'2024-06-05 00:00:50','2024-06-05 00:00:50',NULL,NULL),(18,'Shoes',0,NULL,'published',4,'jewelry/product-categories/6.jpg',1,'2024-06-05 00:00:50','2024-06-05 00:00:50',NULL,NULL),(19,'Sneakers',18,NULL,'published',0,NULL,0,'2024-06-05 00:00:50','2024-06-05 00:00:50',NULL,NULL),(20,'Boots',18,NULL,'published',1,NULL,0,'2024-06-05 00:00:50','2024-06-05 00:00:50',NULL,NULL),(21,'Sandals',18,NULL,'published',2,NULL,0,'2024-06-05 00:00:50','2024-06-05 00:00:50',NULL,NULL);
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
INSERT INTO `ec_product_category_product` VALUES (1,2),(1,6),(1,13),(1,16),(1,28),(1,31),(1,37),(2,18),(2,21),(2,36),(3,2),(3,3),(3,11),(3,15),(3,16),(3,19),(3,26),(3,29),(3,30),(3,35),(4,5),(4,7),(4,8),(4,13),(4,22),(4,27),(4,33),(4,37),(4,41),(4,43),(5,6),(5,10),(5,15),(5,17),(5,19),(5,20),(5,25),(5,36),(5,38),(5,42),(5,43),(6,4),(6,9),(6,22),(6,23),(6,27),(6,29),(7,1),(7,5),(7,7),(7,11),(7,14),(7,15),(7,18),(7,26),(7,29),(7,37),(7,38),(7,39),(8,1),(8,2),(8,4),(8,9),(8,17),(8,24),(8,26),(8,31),(8,34),(9,11),(9,13),(9,30),(9,32),(9,33),(9,41),(10,10),(10,11),(10,12),(10,14),(10,16),(10,17),(10,21),(10,28),(10,30),(10,41),(11,8),(11,13),(11,23),(11,35),(11,36),(11,37),(12,2),(12,19),(12,21),(12,24),(12,27),(12,29),(12,31),(12,32),(12,34),(12,36),(12,40),(13,1),(13,3),(13,12),(13,25),(13,33),(13,40),(14,4),(14,6),(14,8),(14,9),(14,17),(14,18),(14,19),(14,22),(14,25),(14,28),(14,30),(14,31),(14,35),(14,39),(14,42),(15,5),(15,8),(15,14),(15,27),(15,32),(15,34),(15,39),(15,43),(16,4),(16,7),(16,10),(16,21),(16,23),(16,26),(17,3),(17,6),(17,10),(17,12),(17,14),(17,20),(17,34),(17,38),(18,1),(18,12),(18,22),(18,23),(18,24),(18,40),(18,41),(18,42),(18,43),(19,3),(19,5),(19,18),(19,20),(19,33),(19,38),(19,40),(20,7),(20,15),(20,16),(20,32),(20,39),(21,9),(21,20),(21,24),(21,25),(21,28),(21,35),(21,42);
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
INSERT INTO `ec_product_collection_products` VALUES (1,1),(1,14),(1,18),(1,20),(1,26),(1,27),(1,29),(1,35),(1,36),(1,43),(2,3),(2,4),(2,5),(2,7),(2,11),(2,13),(2,15),(2,19),(2,21),(2,23),(2,24),(2,25),(2,32),(2,33),(2,34),(2,37),(2,41),(3,2),(3,30),(3,31),(3,38),(3,40),(4,6),(4,8),(4,9),(4,10),(4,12),(4,16),(4,17),(4,22),(4,28),(4,39),(4,42);
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
INSERT INTO `ec_product_collections` VALUES (1,'Trendy Wardrobe Essentials','trendy-wardrobe-essentials',NULL,NULL,'published','2024-06-05 00:00:50','2024-06-05 00:00:50',0),(2,'Fashion Forward Finds','fashion-forward-finds',NULL,NULL,'published','2024-06-05 00:00:50','2024-06-05 00:00:50',0),(3,'Chic &amp; Stylish Collection','chic-stylish-collection',NULL,NULL,'published','2024-06-05 00:00:50','2024-06-05 00:00:50',0),(4,'Weekly Fashion Picks','weekly-fashion-picks',NULL,NULL,'published','2024-06-05 00:00:50','2024-06-05 00:00:50',0);
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
INSERT INTO `ec_product_cross_sale_relations` VALUES (1,10,0,0.00,'fixed',1),(1,11,0,0.00,'fixed',1),(1,15,0,0.00,'fixed',1),(1,19,0,0.00,'fixed',1),(1,27,0,0.00,'fixed',1),(1,29,0,0.00,'fixed',1),(1,38,0,0.00,'fixed',1),(2,1,0,0.00,'fixed',1),(2,3,0,0.00,'fixed',1),(2,18,0,0.00,'fixed',1),(2,26,0,0.00,'fixed',1),(2,27,0,0.00,'fixed',1),(2,30,0,0.00,'fixed',1),(2,41,0,0.00,'fixed',1),(3,7,0,0.00,'fixed',1),(3,13,0,0.00,'fixed',1),(3,22,0,0.00,'fixed',1),(3,25,0,0.00,'fixed',1),(3,26,0,0.00,'fixed',1),(3,30,0,0.00,'fixed',1),(4,6,0,0.00,'fixed',1),(4,8,0,0.00,'fixed',1),(4,13,0,0.00,'fixed',1),(4,27,0,0.00,'fixed',1),(4,36,0,0.00,'fixed',1),(5,7,0,0.00,'fixed',1),(5,10,0,0.00,'fixed',1),(5,13,0,0.00,'fixed',1),(5,15,0,0.00,'fixed',1),(5,33,0,0.00,'fixed',1),(5,34,0,0.00,'fixed',1),(5,42,0,0.00,'fixed',1),(6,3,0,0.00,'fixed',1),(6,11,0,0.00,'fixed',1),(6,19,0,0.00,'fixed',1),(6,20,0,0.00,'fixed',1),(6,29,0,0.00,'fixed',1),(6,30,0,0.00,'fixed',1),(6,43,0,0.00,'fixed',1),(7,15,0,0.00,'fixed',1),(7,18,0,0.00,'fixed',1),(7,22,0,0.00,'fixed',1),(7,34,0,0.00,'fixed',1),(7,35,0,0.00,'fixed',1),(7,41,0,0.00,'fixed',1),(7,42,0,0.00,'fixed',1),(8,2,0,0.00,'fixed',1),(8,19,0,0.00,'fixed',1),(8,24,0,0.00,'fixed',1),(8,30,0,0.00,'fixed',1),(8,41,0,0.00,'fixed',1),(9,14,0,0.00,'fixed',1),(9,15,0,0.00,'fixed',1),(9,17,0,0.00,'fixed',1),(9,22,0,0.00,'fixed',1),(9,33,0,0.00,'fixed',1),(9,35,0,0.00,'fixed',1),(10,1,0,0.00,'fixed',1),(10,13,0,0.00,'fixed',1),(10,14,0,0.00,'fixed',1),(10,23,0,0.00,'fixed',1),(10,30,0,0.00,'fixed',1),(10,39,0,0.00,'fixed',1),(10,43,0,0.00,'fixed',1),(11,14,0,0.00,'fixed',1),(11,15,0,0.00,'fixed',1),(11,24,0,0.00,'fixed',1),(11,26,0,0.00,'fixed',1),(11,29,0,0.00,'fixed',1),(11,37,0,0.00,'fixed',1),(12,3,0,0.00,'fixed',1),(12,18,0,0.00,'fixed',1),(12,27,0,0.00,'fixed',1),(12,30,0,0.00,'fixed',1),(12,32,0,0.00,'fixed',1),(12,38,0,0.00,'fixed',1),(13,7,0,0.00,'fixed',1),(13,12,0,0.00,'fixed',1),(13,19,0,0.00,'fixed',1),(13,30,0,0.00,'fixed',1),(13,36,0,0.00,'fixed',1),(13,38,0,0.00,'fixed',1),(13,42,0,0.00,'fixed',1),(14,1,0,0.00,'fixed',1),(14,6,0,0.00,'fixed',1),(14,15,0,0.00,'fixed',1),(14,26,0,0.00,'fixed',1),(14,37,0,0.00,'fixed',1),(14,39,0,0.00,'fixed',1),(15,14,0,0.00,'fixed',1),(15,19,0,0.00,'fixed',1),(15,21,0,0.00,'fixed',1),(15,27,0,0.00,'fixed',1),(15,32,0,0.00,'fixed',1),(15,38,0,0.00,'fixed',1),(16,3,0,0.00,'fixed',1),(16,11,0,0.00,'fixed',1),(16,24,0,0.00,'fixed',1),(16,26,0,0.00,'fixed',1),(16,35,0,0.00,'fixed',1),(16,37,0,0.00,'fixed',1),(16,42,0,0.00,'fixed',1),(17,6,0,0.00,'fixed',1),(17,15,0,0.00,'fixed',1),(17,22,0,0.00,'fixed',1),(17,34,0,0.00,'fixed',1),(17,40,0,0.00,'fixed',1),(17,42,0,0.00,'fixed',1),(18,3,0,0.00,'fixed',1),(18,15,0,0.00,'fixed',1),(18,16,0,0.00,'fixed',1),(18,20,0,0.00,'fixed',1),(18,23,0,0.00,'fixed',1),(18,27,0,0.00,'fixed',1),(18,28,0,0.00,'fixed',1),(19,1,0,0.00,'fixed',1),(19,13,0,0.00,'fixed',1),(19,15,0,0.00,'fixed',1),(19,23,0,0.00,'fixed',1),(19,33,0,0.00,'fixed',1),(19,35,0,0.00,'fixed',1),(20,6,0,0.00,'fixed',1),(20,11,0,0.00,'fixed',1),(20,19,0,0.00,'fixed',1),(20,31,0,0.00,'fixed',1),(20,35,0,0.00,'fixed',1),(20,37,0,0.00,'fixed',1),(20,40,0,0.00,'fixed',1),(21,16,0,0.00,'fixed',1),(21,25,0,0.00,'fixed',1),(21,26,0,0.00,'fixed',1),(21,31,0,0.00,'fixed',1),(21,36,0,0.00,'fixed',1),(21,38,0,0.00,'fixed',1),(21,40,0,0.00,'fixed',1),(22,4,0,0.00,'fixed',1),(22,8,0,0.00,'fixed',1),(22,12,0,0.00,'fixed',1),(22,24,0,0.00,'fixed',1),(22,27,0,0.00,'fixed',1),(23,2,0,0.00,'fixed',1),(23,20,0,0.00,'fixed',1),(23,26,0,0.00,'fixed',1),(23,29,0,0.00,'fixed',1),(23,35,0,0.00,'fixed',1),(23,41,0,0.00,'fixed',1),(24,3,0,0.00,'fixed',1),(24,6,0,0.00,'fixed',1),(24,12,0,0.00,'fixed',1),(24,13,0,0.00,'fixed',1),(24,14,0,0.00,'fixed',1),(24,36,0,0.00,'fixed',1),(24,39,0,0.00,'fixed',1),(25,3,0,0.00,'fixed',1),(25,16,0,0.00,'fixed',1),(25,19,0,0.00,'fixed',1),(25,39,0,0.00,'fixed',1),(25,40,0,0.00,'fixed',1),(26,12,0,0.00,'fixed',1),(26,23,0,0.00,'fixed',1),(26,24,0,0.00,'fixed',1),(26,29,0,0.00,'fixed',1),(26,35,0,0.00,'fixed',1),(26,36,0,0.00,'fixed',1),(26,40,0,0.00,'fixed',1),(27,4,0,0.00,'fixed',1),(27,5,0,0.00,'fixed',1),(27,6,0,0.00,'fixed',1),(27,11,0,0.00,'fixed',1),(27,17,0,0.00,'fixed',1),(27,28,0,0.00,'fixed',1),(27,32,0,0.00,'fixed',1),(28,6,0,0.00,'fixed',1),(28,16,0,0.00,'fixed',1),(28,24,0,0.00,'fixed',1),(28,33,0,0.00,'fixed',1),(28,36,0,0.00,'fixed',1),(28,37,0,0.00,'fixed',1),(28,42,0,0.00,'fixed',1),(29,8,0,0.00,'fixed',1),(29,14,0,0.00,'fixed',1),(29,19,0,0.00,'fixed',1),(29,24,0,0.00,'fixed',1),(29,39,0,0.00,'fixed',1),(29,40,0,0.00,'fixed',1),(30,6,0,0.00,'fixed',1),(30,18,0,0.00,'fixed',1),(30,22,0,0.00,'fixed',1),(30,39,0,0.00,'fixed',1),(30,41,0,0.00,'fixed',1),(30,42,0,0.00,'fixed',1),(31,2,0,0.00,'fixed',1),(31,11,0,0.00,'fixed',1),(31,15,0,0.00,'fixed',1),(31,16,0,0.00,'fixed',1),(31,32,0,0.00,'fixed',1),(31,40,0,0.00,'fixed',1),(31,43,0,0.00,'fixed',1),(32,4,0,0.00,'fixed',1),(32,5,0,0.00,'fixed',1),(32,8,0,0.00,'fixed',1),(32,24,0,0.00,'fixed',1),(32,29,0,0.00,'fixed',1),(32,30,0,0.00,'fixed',1),(32,34,0,0.00,'fixed',1),(33,4,0,0.00,'fixed',1),(33,12,0,0.00,'fixed',1),(33,25,0,0.00,'fixed',1),(33,29,0,0.00,'fixed',1),(33,35,0,0.00,'fixed',1),(33,38,0,0.00,'fixed',1),(33,40,0,0.00,'fixed',1),(34,12,0,0.00,'fixed',1),(34,16,0,0.00,'fixed',1),(34,22,0,0.00,'fixed',1),(34,24,0,0.00,'fixed',1),(34,25,0,0.00,'fixed',1),(34,37,0,0.00,'fixed',1),(35,6,0,0.00,'fixed',1),(35,12,0,0.00,'fixed',1),(35,18,0,0.00,'fixed',1),(35,30,0,0.00,'fixed',1),(35,31,0,0.00,'fixed',1),(35,38,0,0.00,'fixed',1),(36,10,0,0.00,'fixed',1),(36,17,0,0.00,'fixed',1),(36,23,0,0.00,'fixed',1),(36,25,0,0.00,'fixed',1),(36,29,0,0.00,'fixed',1),(36,37,0,0.00,'fixed',1),(36,41,0,0.00,'fixed',1),(37,2,0,0.00,'fixed',1),(37,5,0,0.00,'fixed',1),(37,14,0,0.00,'fixed',1),(37,16,0,0.00,'fixed',1),(37,24,0,0.00,'fixed',1),(37,27,0,0.00,'fixed',1),(37,40,0,0.00,'fixed',1),(38,11,0,0.00,'fixed',1),(38,12,0,0.00,'fixed',1),(38,15,0,0.00,'fixed',1),(38,19,0,0.00,'fixed',1),(38,21,0,0.00,'fixed',1),(38,35,0,0.00,'fixed',1),(39,4,0,0.00,'fixed',1),(39,14,0,0.00,'fixed',1),(39,22,0,0.00,'fixed',1),(39,24,0,0.00,'fixed',1),(39,25,0,0.00,'fixed',1),(39,33,0,0.00,'fixed',1),(39,40,0,0.00,'fixed',1),(40,5,0,0.00,'fixed',1),(40,11,0,0.00,'fixed',1),(40,15,0,0.00,'fixed',1),(40,27,0,0.00,'fixed',1),(40,28,0,0.00,'fixed',1),(40,30,0,0.00,'fixed',1),(40,31,0,0.00,'fixed',1),(41,7,0,0.00,'fixed',1),(41,13,0,0.00,'fixed',1),(41,21,0,0.00,'fixed',1),(41,24,0,0.00,'fixed',1),(41,29,0,0.00,'fixed',1),(41,32,0,0.00,'fixed',1),(41,35,0,0.00,'fixed',1),(42,4,0,0.00,'fixed',1),(42,25,0,0.00,'fixed',1),(42,27,0,0.00,'fixed',1),(42,31,0,0.00,'fixed',1),(42,41,0,0.00,'fixed',1),(42,43,0,0.00,'fixed',1),(43,4,0,0.00,'fixed',1),(43,13,0,0.00,'fixed',1),(43,17,0,0.00,'fixed',1),(43,18,0,0.00,'fixed',1),(43,21,0,0.00,'fixed',1),(43,36,0,0.00,'fixed',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_files`
--

LOCK TABLES `ec_product_files` WRITE;
/*!40000 ALTER TABLE `ec_product_files` DISABLE KEYS */;
INSERT INTO `ec_product_files` VALUES (1,4,'ecommerce/digital-product-files/product-1.png','{\"filename\":\"product-1.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-1.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-06-05 07:00:51\",\"name\":\"product-1\",\"extension\":\"png\"}','2024-06-05 00:00:51','2024-06-05 00:00:51'),(2,4,'ecommerce/digital-product-files/product-4.png','{\"filename\":\"product-4.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-4.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-06-05 07:00:51\",\"name\":\"product-4\",\"extension\":\"png\"}','2024-06-05 00:00:51','2024-06-05 00:00:51'),(3,8,'ecommerce/digital-product-files/product-6.png','{\"filename\":\"product-6.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-6.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-06-05 07:00:51\",\"name\":\"product-6\",\"extension\":\"png\"}','2024-06-05 00:00:51','2024-06-05 00:00:51'),(4,8,'ecommerce/digital-product-files/product-8.png','{\"filename\":\"product-8.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-8.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-06-05 07:00:51\",\"name\":\"product-8\",\"extension\":\"png\"}','2024-06-05 00:00:51','2024-06-05 00:00:51'),(5,12,'ecommerce/digital-product-files/product-1.png','{\"filename\":\"product-1.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-1.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-06-05 07:00:51\",\"name\":\"product-1\",\"extension\":\"png\"}','2024-06-05 00:00:51','2024-06-05 00:00:51'),(6,12,'ecommerce/digital-product-files/product-4.png','{\"filename\":\"product-4.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-4.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-06-05 07:00:51\",\"name\":\"product-4\",\"extension\":\"png\"}','2024-06-05 00:00:51','2024-06-05 00:00:51'),(7,16,'ecommerce/digital-product-files/product-8.png','{\"filename\":\"product-8.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-8.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-06-05 07:00:51\",\"name\":\"product-8\",\"extension\":\"png\"}','2024-06-05 00:00:51','2024-06-05 00:00:51'),(8,16,'ecommerce/digital-product-files/product-7.png','{\"filename\":\"product-7.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-7.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-06-05 07:00:51\",\"name\":\"product-7\",\"extension\":\"png\"}','2024-06-05 00:00:51','2024-06-05 00:00:51'),(9,20,'ecommerce/digital-product-files/product-2.png','{\"filename\":\"product-2.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-2.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-06-05 07:00:51\",\"name\":\"product-2\",\"extension\":\"png\"}','2024-06-05 00:00:51','2024-06-05 00:00:51'),(10,20,'ecommerce/digital-product-files/product-7.png','{\"filename\":\"product-7.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-7.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-06-05 07:00:51\",\"name\":\"product-7\",\"extension\":\"png\"}','2024-06-05 00:00:51','2024-06-05 00:00:51'),(11,24,'ecommerce/digital-product-files/product-4.png','{\"filename\":\"product-4.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-4.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-06-05 07:00:51\",\"name\":\"product-4\",\"extension\":\"png\"}','2024-06-05 00:00:51','2024-06-05 00:00:51'),(12,24,'ecommerce/digital-product-files/product-8.png','{\"filename\":\"product-8.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-8.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-06-05 07:00:51\",\"name\":\"product-8\",\"extension\":\"png\"}','2024-06-05 00:00:51','2024-06-05 00:00:51'),(13,28,'ecommerce/digital-product-files/product-8.png','{\"filename\":\"product-8.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-8.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-06-05 07:00:51\",\"name\":\"product-8\",\"extension\":\"png\"}','2024-06-05 00:00:51','2024-06-05 00:00:51'),(14,28,'ecommerce/digital-product-files/product-2.png','{\"filename\":\"product-2.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-2.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-06-05 07:00:51\",\"name\":\"product-2\",\"extension\":\"png\"}','2024-06-05 00:00:51','2024-06-05 00:00:51'),(15,32,'ecommerce/digital-product-files/product-3.png','{\"filename\":\"product-3.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-3.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-06-05 07:00:51\",\"name\":\"product-3\",\"extension\":\"png\"}','2024-06-05 00:00:51','2024-06-05 00:00:51'),(16,32,'ecommerce/digital-product-files/product-7.png','{\"filename\":\"product-7.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-7.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-06-05 07:00:51\",\"name\":\"product-7\",\"extension\":\"png\"}','2024-06-05 00:00:51','2024-06-05 00:00:51'),(17,36,'ecommerce/digital-product-files/product-6.png','{\"filename\":\"product-6.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-6.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-06-05 07:00:51\",\"name\":\"product-6\",\"extension\":\"png\"}','2024-06-05 00:00:51','2024-06-05 00:00:51'),(18,36,'ecommerce/digital-product-files/product-8.png','{\"filename\":\"product-8.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-8.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-06-05 07:00:51\",\"name\":\"product-8\",\"extension\":\"png\"}','2024-06-05 00:00:51','2024-06-05 00:00:51'),(19,40,'ecommerce/digital-product-files/product-1.png','{\"filename\":\"product-1.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-1.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-06-05 07:00:51\",\"name\":\"product-1\",\"extension\":\"png\"}','2024-06-05 00:00:51','2024-06-05 00:00:51'),(20,40,'ecommerce/digital-product-files/product-7.png','{\"filename\":\"product-7.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-7.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-06-05 07:00:51\",\"name\":\"product-7\",\"extension\":\"png\"}','2024-06-05 00:00:51','2024-06-05 00:00:51'),(21,45,'ecommerce/digital-product-files/product-4.png','{\"filename\":\"product-4.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-4.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-06-05 07:00:51\",\"name\":\"product-4\",\"extension\":\"png\"}','2024-06-05 00:00:51','2024-06-05 00:00:51'),(22,46,'ecommerce/digital-product-files/product-3.png','{\"filename\":\"product-3.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-3.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-06-05 07:00:51\",\"name\":\"product-3\",\"extension\":\"png\"}','2024-06-05 00:00:51','2024-06-05 00:00:51'),(23,47,'ecommerce/digital-product-files/product-1.png','{\"filename\":\"product-1.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-1.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-06-05 07:00:51\",\"name\":\"product-1\",\"extension\":\"png\"}','2024-06-05 00:00:51','2024-06-05 00:00:51'),(24,55,'ecommerce/digital-product-files/product-8.png','{\"filename\":\"product-8.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-8.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-06-05 07:00:51\",\"name\":\"product-8\",\"extension\":\"png\"}','2024-06-05 00:00:51','2024-06-05 00:00:51'),(25,56,'ecommerce/digital-product-files/product-4.png','{\"filename\":\"product-4.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-4.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-06-05 07:00:51\",\"name\":\"product-4\",\"extension\":\"png\"}','2024-06-05 00:00:51','2024-06-05 00:00:51'),(26,57,'ecommerce/digital-product-files/product-3.png','{\"filename\":\"product-3.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-3.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-06-05 07:00:51\",\"name\":\"product-3\",\"extension\":\"png\"}','2024-06-05 00:00:51','2024-06-05 00:00:51'),(27,60,'ecommerce/digital-product-files/product-4.png','{\"filename\":\"product-4.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-4.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-06-05 07:00:51\",\"name\":\"product-4\",\"extension\":\"png\"}','2024-06-05 00:00:51','2024-06-05 00:00:51'),(28,61,'ecommerce/digital-product-files/product-5.png','{\"filename\":\"product-5.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-5.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-06-05 07:00:51\",\"name\":\"product-5\",\"extension\":\"png\"}','2024-06-05 00:00:51','2024-06-05 00:00:51'),(29,62,'ecommerce/digital-product-files/product-6.png','{\"filename\":\"product-6.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-6.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-06-05 07:00:51\",\"name\":\"product-6\",\"extension\":\"png\"}','2024-06-05 00:00:51','2024-06-05 00:00:51'),(30,63,'ecommerce/digital-product-files/product-3.png','{\"filename\":\"product-3.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-3.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-06-05 07:00:51\",\"name\":\"product-3\",\"extension\":\"png\"}','2024-06-05 00:00:51','2024-06-05 00:00:51'),(31,76,'ecommerce/digital-product-files/product-7.png','{\"filename\":\"product-7.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-7.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-06-05 07:00:51\",\"name\":\"product-7\",\"extension\":\"png\"}','2024-06-05 00:00:51','2024-06-05 00:00:51'),(32,77,'ecommerce/digital-product-files/product-1.png','{\"filename\":\"product-1.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-1.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-06-05 07:00:51\",\"name\":\"product-1\",\"extension\":\"png\"}','2024-06-05 00:00:51','2024-06-05 00:00:51'),(33,78,'ecommerce/digital-product-files/product-3.png','{\"filename\":\"product-3.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-3.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-06-05 07:00:51\",\"name\":\"product-3\",\"extension\":\"png\"}','2024-06-05 00:00:51','2024-06-05 00:00:51'),(34,79,'ecommerce/digital-product-files/product-6.png','{\"filename\":\"product-6.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-6.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-06-05 07:00:51\",\"name\":\"product-6\",\"extension\":\"png\"}','2024-06-05 00:00:51','2024-06-05 00:00:51'),(35,80,'ecommerce/digital-product-files/product-5.png','{\"filename\":\"product-5.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-5.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-06-05 07:00:51\",\"name\":\"product-5\",\"extension\":\"png\"}','2024-06-05 00:00:51','2024-06-05 00:00:51'),(36,88,'ecommerce/digital-product-files/product-2.png','{\"filename\":\"product-2.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-2.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-06-05 07:00:51\",\"name\":\"product-2\",\"extension\":\"png\"}','2024-06-05 00:00:51','2024-06-05 00:00:51'),(37,89,'ecommerce/digital-product-files/product-1.png','{\"filename\":\"product-1.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-1.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-06-05 07:00:51\",\"name\":\"product-1\",\"extension\":\"png\"}','2024-06-05 00:00:51','2024-06-05 00:00:51');
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
INSERT INTO `ec_product_label_products` VALUES (1,3),(1,6),(1,18),(1,30),(1,33),(1,36),(1,42),(2,12),(2,21),(2,24),(2,39),(3,9),(3,15),(3,27);
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
INSERT INTO `ec_product_labels` VALUES (1,'Hot','#AC2200','published','2024-06-05 00:00:43','2024-06-05 00:00:43'),(2,'New','#006554','published','2024-06-05 00:00:43','2024-06-05 00:00:43'),(3,'Sale','#9A3B00','published','2024-06-05 00:00:43','2024-06-05 00:00:43');
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
INSERT INTO `ec_product_tag_product` VALUES (1,1),(1,2),(1,3),(2,3),(2,4),(2,6),(3,1),(3,4),(3,6),(4,1),(4,3),(4,5),(5,2),(5,3),(5,4),(6,2),(6,3),(6,4),(7,1),(7,3),(7,4),(8,2),(8,3),(8,6),(9,1),(9,3),(9,5),(10,3),(10,4),(10,5),(11,1),(11,3),(11,6),(12,1),(12,4),(12,5),(13,1),(13,3),(13,6),(14,3),(14,4),(14,5),(15,1),(15,3),(15,6),(16,2),(16,4),(16,6),(17,2),(17,4),(17,6),(18,1),(18,2),(18,4),(19,1),(19,2),(19,3),(20,3),(20,4),(20,6),(21,1),(21,2),(21,4),(22,1),(22,3),(22,5),(23,3),(23,5),(23,6),(24,1),(24,4),(24,6),(25,2),(25,3),(25,4),(26,1),(26,3),(26,4),(27,2),(27,4),(27,6),(28,1),(28,2),(28,3),(29,3),(29,4),(29,6),(30,3),(30,5),(30,6),(31,3),(31,4),(31,6),(32,3),(32,4),(32,5),(33,1),(33,2),(33,5),(34,1),(34,3),(34,6),(35,1),(35,2),(35,6),(36,1),(36,2),(36,4),(37,1),(37,2),(37,6),(38,2),(38,3),(38,5),(39,2),(39,4),(39,6),(40,2),(40,3),(40,5),(41,4),(41,5),(41,6),(42,1),(42,3),(42,4),(43,2),(43,3),(43,5);
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
INSERT INTO `ec_product_tags` VALUES (1,'Electronic',NULL,'published','2024-06-05 00:00:45','2024-06-05 00:00:45'),(2,'Mobile',NULL,'published','2024-06-05 00:00:45','2024-06-05 00:00:45'),(3,'Iphone',NULL,'published','2024-06-05 00:00:45','2024-06-05 00:00:45'),(4,'Printer',NULL,'published','2024-06-05 00:00:45','2024-06-05 00:00:45'),(5,'Office',NULL,'published','2024-06-05 00:00:45','2024-06-05 00:00:45'),(6,'IT',NULL,'published','2024-06-05 00:00:45','2024-06-05 00:00:45');
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
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variation_items`
--

LOCK TABLES `ec_product_variation_items` WRITE;
/*!40000 ALTER TABLE `ec_product_variation_items` DISABLE KEYS */;
INSERT INTO `ec_product_variation_items` VALUES (1,1,1),(5,1,3),(15,1,8),(23,1,12),(27,1,14),(41,1,21),(47,1,24),(51,1,26),(53,1,27),(59,1,30),(61,1,31),(7,2,4),(11,2,6),(25,2,13),(31,2,16),(65,2,33),(69,2,35),(73,2,37),(17,3,9),(19,3,10),(29,3,15),(37,3,19),(63,3,32),(71,3,36),(3,4,2),(13,4,7),(21,4,11),(33,4,17),(43,4,22),(45,4,23),(55,4,28),(57,4,29),(9,5,5),(35,5,18),(39,5,20),(49,5,25),(67,5,34),(10,6,5),(36,6,18),(40,6,20),(54,6,27),(58,6,29),(60,6,30),(2,7,1),(38,7,19),(42,7,21),(44,7,22),(4,8,2),(12,8,6),(18,8,9),(20,8,10),(30,8,15),(50,8,25),(62,8,31),(74,8,37),(8,9,4),(16,9,8),(28,9,14),(34,9,17),(48,9,24),(52,9,26),(56,9,28),(64,9,32),(66,9,33),(68,9,34),(6,10,3),(14,10,7),(22,10,11),(24,10,12),(26,10,13),(32,10,16),(46,10,23),(70,10,35),(72,10,36),(77,11,39),(81,11,41),(101,11,51),(105,11,53),(79,12,40),(89,12,45),(93,12,47),(97,12,49),(85,13,43),(91,13,46),(99,13,50),(75,14,38),(83,14,42),(87,14,44),(103,14,52),(95,15,48),(76,16,38),(78,16,39),(82,16,41),(88,16,44),(90,16,45),(98,16,49),(100,16,50),(94,17,47),(96,17,48),(102,17,51),(84,18,42),(86,18,43),(104,18,52),(80,19,40),(92,20,46),(106,20,53);
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
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variations`
--

LOCK TABLES `ec_product_variations` WRITE;
/*!40000 ALTER TABLE `ec_product_variations` DISABLE KEYS */;
INSERT INTO `ec_product_variations` VALUES (1,44,2,1),(2,45,4,1),(3,46,4,0),(4,47,4,0),(5,48,5,1),(6,49,5,0),(7,50,6,1),(8,51,7,1),(9,52,7,0),(10,53,7,0),(11,54,7,0),(12,55,8,1),(13,56,8,0),(14,57,8,0),(15,58,11,1),(16,59,11,0),(17,60,12,1),(18,61,12,0),(19,62,12,0),(20,63,12,0),(21,64,13,1),(22,65,13,0),(23,66,13,0),(24,67,14,1),(25,68,14,0),(26,69,14,0),(27,70,15,1),(28,71,15,0),(29,72,15,0),(30,73,19,1),(31,74,19,0),(32,75,19,0),(33,76,20,1),(34,77,20,0),(35,78,20,0),(36,79,20,0),(37,80,20,0),(38,81,21,1),(39,82,21,0),(40,83,22,1),(41,84,22,0),(42,85,22,0),(43,86,27,1),(44,87,27,0),(45,88,28,1),(46,89,28,0),(47,90,42,1),(48,91,42,0),(49,92,42,0),(50,93,43,1),(51,94,43,0),(52,95,43,0),(53,96,43,0);
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
INSERT INTO `ec_product_with_attribute_set` VALUES (1,2,0),(2,2,0),(1,4,0),(2,4,0),(1,5,0),(2,5,0),(1,6,0),(2,6,0),(1,7,0),(2,7,0),(1,8,0),(2,8,0),(1,11,0),(2,11,0),(1,12,0),(2,12,0),(1,13,0),(2,13,0),(1,14,0),(2,14,0),(1,15,0),(2,15,0),(1,19,0),(2,19,0),(1,20,0),(2,20,0),(3,21,0),(4,21,0),(3,22,0),(4,22,0),(3,27,0),(4,27,0),(3,28,0),(4,28,0),(3,42,0),(4,42,0),(3,43,0),(4,43,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products`
--

LOCK TABLES `ec_products` WRITE;
/*!40000 ALTER TABLE `ec_products` DISABLE KEYS */;
INSERT INTO `ec_products` VALUES (1,'Vintage Denim Jacket','Accessorize with this bohemian fringe handbag, featuring intricate details and enough space for your essentials. The perfect boho-chic addition to your collection.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Diamond Tennis Bracelet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Timeless Elegance</h3>\n                        <p>\n                            Elevate your style with our exquisite diamond tennis bracelet. Crafted with precision and attention to detail, each sparkling diamond is expertly set in lustrous white gold, creating a piece of jewelry that exudes sophistication and luxury. Whether worn alone or layered with other bracelets, this timeless accessory adds a touch of glamour to any ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Exceptional Quality</h3>\n                        <p>\n                            Our diamond tennis bracelet is crafted from the finest materials to ensure lasting beauty and brilliance. Each diamond is carefully selected for its clarity, cut, and color, resulting in a piece of jewelry that\'s truly exceptional. Indulge in luxury and elegance with this stunning bracelet that\'s sure to become a cherished heirloom.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/jewelry/products/product-1.png\" alt=\"Diamond Tennis Bracelet\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/jewelry/products/product-2.png\" alt=\"Close-up of Diamond Tennis Bracelet\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Effortlessly transition from day to night with our versatile diamond tennis bracelet. Whether paired with a casual outfit or a formal gown, it adds a touch of glamour and sophistication to any look. Treat yourself or someone special to this timeless piece that\'s destined to be cherished for years to come.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Exquisite Craftsmanship</h3>\n                        <img src=\"/storage/jewelry/products/product-3.png\" alt=\"Jewelry Workshop\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-4.png\",\"jewelry\\/products\\/product-8.png\",\"jewelry\\/products\\/product-7.png\",\"jewelry\\/products\\/product-5.png\",\"jewelry\\/products\\/product-1.png\"]','XV-148',0,14,0,1,1,5,0,0,1849,1151,NULL,NULL,14.00,12.00,12.00,659.00,NULL,156940,'2024-06-05 00:00:50','2024-06-05 00:00:50','in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(2,'Floral Maxi Dress','Make a statement in this floral maxi dress, perfect for summer events or a casual day out. The flowy silhouette and vibrant print will turn heads wherever you go.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Diamond Tennis Bracelet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Timeless Elegance</h3>\n                        <p>\n                            Elevate your style with our exquisite diamond tennis bracelet. Crafted with precision and attention to detail, each sparkling diamond is expertly set in lustrous white gold, creating a piece of jewelry that exudes sophistication and luxury. Whether worn alone or layered with other bracelets, this timeless accessory adds a touch of glamour to any ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Exceptional Quality</h3>\n                        <p>\n                            Our diamond tennis bracelet is crafted from the finest materials to ensure lasting beauty and brilliance. Each diamond is carefully selected for its clarity, cut, and color, resulting in a piece of jewelry that\'s truly exceptional. Indulge in luxury and elegance with this stunning bracelet that\'s sure to become a cherished heirloom.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/jewelry/products/product-1.png\" alt=\"Diamond Tennis Bracelet\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/jewelry/products/product-2.png\" alt=\"Close-up of Diamond Tennis Bracelet\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Effortlessly transition from day to night with our versatile diamond tennis bracelet. Whether paired with a casual outfit or a formal gown, it adds a touch of glamour and sophistication to any look. Treat yourself or someone special to this timeless piece that\'s destined to be cherished for years to come.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Exquisite Craftsmanship</h3>\n                        <img src=\"/storage/jewelry/products/product-3.png\" alt=\"Jewelry Workshop\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"jewelry\\/products\\/product-4.png\",\"jewelry\\/products\\/product-7.png\",\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-8.png\"]','CR-168-A1',0,14,0,1,1,2,0,0,764,NULL,NULL,NULL,16.00,19.00,20.00,898.00,NULL,8450,'2024-06-05 00:00:50','2024-06-05 00:00:51','in_stock',7,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(3,'Leather Ankle Boots','Top off your look with this chic fedora hat, crafted with a classic silhouette and a timeless appeal. A must-have accessory for any fashion-forward wardrobe.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Diamond Tennis Bracelet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Timeless Elegance</h3>\n                        <p>\n                            Elevate your style with our exquisite diamond tennis bracelet. Crafted with precision and attention to detail, each sparkling diamond is expertly set in lustrous white gold, creating a piece of jewelry that exudes sophistication and luxury. Whether worn alone or layered with other bracelets, this timeless accessory adds a touch of glamour to any ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Exceptional Quality</h3>\n                        <p>\n                            Our diamond tennis bracelet is crafted from the finest materials to ensure lasting beauty and brilliance. Each diamond is carefully selected for its clarity, cut, and color, resulting in a piece of jewelry that\'s truly exceptional. Indulge in luxury and elegance with this stunning bracelet that\'s sure to become a cherished heirloom.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/jewelry/products/product-1.png\" alt=\"Diamond Tennis Bracelet\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/jewelry/products/product-2.png\" alt=\"Close-up of Diamond Tennis Bracelet\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Effortlessly transition from day to night with our versatile diamond tennis bracelet. Whether paired with a casual outfit or a formal gown, it adds a touch of glamour and sophistication to any look. Treat yourself or someone special to this timeless piece that\'s destined to be cherished for years to come.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Exquisite Craftsmanship</h3>\n                        <img src=\"/storage/jewelry/products/product-3.png\" alt=\"Jewelry Workshop\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"jewelry\\/products\\/product-5.png\",\"jewelry\\/products\\/product-8.png\",\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-4.png\",\"jewelry\\/products\\/product-3.png\"]','RC-190',0,20,0,1,1,4,0,0,492,18,NULL,NULL,16.00,18.00,20.00,851.00,NULL,117416,'2024-06-05 00:00:50','2024-06-05 00:00:50','in_stock',4,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(4,'Knit Turtleneck Sweater (Digital)','Embrace bohemian vibes with this embroidered boho blouse, featuring intricate stitching and a relaxed fit. Perfect for a casual day with a touch of style.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Diamond Tennis Bracelet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Timeless Elegance</h3>\n                        <p>\n                            Elevate your style with our exquisite diamond tennis bracelet. Crafted with precision and attention to detail, each sparkling diamond is expertly set in lustrous white gold, creating a piece of jewelry that exudes sophistication and luxury. Whether worn alone or layered with other bracelets, this timeless accessory adds a touch of glamour to any ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Exceptional Quality</h3>\n                        <p>\n                            Our diamond tennis bracelet is crafted from the finest materials to ensure lasting beauty and brilliance. Each diamond is carefully selected for its clarity, cut, and color, resulting in a piece of jewelry that\'s truly exceptional. Indulge in luxury and elegance with this stunning bracelet that\'s sure to become a cherished heirloom.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/jewelry/products/product-1.png\" alt=\"Diamond Tennis Bracelet\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/jewelry/products/product-2.png\" alt=\"Close-up of Diamond Tennis Bracelet\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Effortlessly transition from day to night with our versatile diamond tennis bracelet. Whether paired with a casual outfit or a formal gown, it adds a touch of glamour and sophistication to any look. Treat yourself or someone special to this timeless piece that\'s destined to be cherished for years to come.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Exquisite Craftsmanship</h3>\n                        <img src=\"/storage/jewelry/products/product-3.png\" alt=\"Jewelry Workshop\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-4.png\",\"jewelry\\/products\\/product-3.png\"]','MK-126-A1',0,17,0,1,1,3,0,0,1742,1567.8,NULL,NULL,14.00,17.00,11.00,676.00,NULL,91715,'2024-06-05 00:00:50','2024-06-05 00:00:51','in_stock',6,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(5,'Classic Aviator Sunglasses','Add a pop of color to your outfit with this silk scarf adorned with a geometric print. Wrap it around your neck or tie it to your handbag for a stylish touch.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Diamond Tennis Bracelet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Timeless Elegance</h3>\n                        <p>\n                            Elevate your style with our exquisite diamond tennis bracelet. Crafted with precision and attention to detail, each sparkling diamond is expertly set in lustrous white gold, creating a piece of jewelry that exudes sophistication and luxury. Whether worn alone or layered with other bracelets, this timeless accessory adds a touch of glamour to any ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Exceptional Quality</h3>\n                        <p>\n                            Our diamond tennis bracelet is crafted from the finest materials to ensure lasting beauty and brilliance. Each diamond is carefully selected for its clarity, cut, and color, resulting in a piece of jewelry that\'s truly exceptional. Indulge in luxury and elegance with this stunning bracelet that\'s sure to become a cherished heirloom.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/jewelry/products/product-1.png\" alt=\"Diamond Tennis Bracelet\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/jewelry/products/product-2.png\" alt=\"Close-up of Diamond Tennis Bracelet\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Effortlessly transition from day to night with our versatile diamond tennis bracelet. Whether paired with a casual outfit or a formal gown, it adds a touch of glamour and sophistication to any look. Treat yourself or someone special to this timeless piece that\'s destined to be cherished for years to come.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Exquisite Craftsmanship</h3>\n                        <img src=\"/storage/jewelry/products/product-3.png\" alt=\"Jewelry Workshop\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"jewelry\\/products\\/product-5.png\",\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-6.png\",\"jewelry\\/products\\/product-8.png\",\"jewelry\\/products\\/product-4.png\",\"jewelry\\/products\\/product-7.png\",\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-1.png\"]','VI-153-A1',0,16,0,1,1,2,0,0,1100,NULL,NULL,NULL,14.00,15.00,19.00,888.00,NULL,141227,'2024-06-05 00:00:50','2024-06-05 00:00:51','in_stock',8,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(6,'Tailored Wool Blazer','Embrace bohemian vibes with this embroidered boho blouse, featuring intricate stitching and a relaxed fit. Perfect for a casual day with a touch of style.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Diamond Tennis Bracelet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Timeless Elegance</h3>\n                        <p>\n                            Elevate your style with our exquisite diamond tennis bracelet. Crafted with precision and attention to detail, each sparkling diamond is expertly set in lustrous white gold, creating a piece of jewelry that exudes sophistication and luxury. Whether worn alone or layered with other bracelets, this timeless accessory adds a touch of glamour to any ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Exceptional Quality</h3>\n                        <p>\n                            Our diamond tennis bracelet is crafted from the finest materials to ensure lasting beauty and brilliance. Each diamond is carefully selected for its clarity, cut, and color, resulting in a piece of jewelry that\'s truly exceptional. Indulge in luxury and elegance with this stunning bracelet that\'s sure to become a cherished heirloom.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/jewelry/products/product-1.png\" alt=\"Diamond Tennis Bracelet\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/jewelry/products/product-2.png\" alt=\"Close-up of Diamond Tennis Bracelet\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Effortlessly transition from day to night with our versatile diamond tennis bracelet. Whether paired with a casual outfit or a formal gown, it adds a touch of glamour and sophistication to any look. Treat yourself or someone special to this timeless piece that\'s destined to be cherished for years to come.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Exquisite Craftsmanship</h3>\n                        <img src=\"/storage/jewelry/products/product-3.png\" alt=\"Jewelry Workshop\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-8.png\",\"jewelry\\/products\\/product-5.png\",\"jewelry\\/products\\/product-6.png\",\"jewelry\\/products\\/product-4.png\",\"jewelry\\/products\\/product-1.png\"]','2L-126-A1',0,12,0,1,1,2,0,0,752,NULL,NULL,NULL,13.00,19.00,18.00,533.00,NULL,121177,'2024-06-05 00:00:50','2024-06-05 00:00:51','in_stock',8,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(7,'Bohemian Fringe Handbag','Step out in style with these leather ankle boots, crafted with a sleek design and comfortable block heel. Versatile enough to pair with both dresses and jeans.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Diamond Tennis Bracelet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Timeless Elegance</h3>\n                        <p>\n                            Elevate your style with our exquisite diamond tennis bracelet. Crafted with precision and attention to detail, each sparkling diamond is expertly set in lustrous white gold, creating a piece of jewelry that exudes sophistication and luxury. Whether worn alone or layered with other bracelets, this timeless accessory adds a touch of glamour to any ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Exceptional Quality</h3>\n                        <p>\n                            Our diamond tennis bracelet is crafted from the finest materials to ensure lasting beauty and brilliance. Each diamond is carefully selected for its clarity, cut, and color, resulting in a piece of jewelry that\'s truly exceptional. Indulge in luxury and elegance with this stunning bracelet that\'s sure to become a cherished heirloom.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/jewelry/products/product-1.png\" alt=\"Diamond Tennis Bracelet\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/jewelry/products/product-2.png\" alt=\"Close-up of Diamond Tennis Bracelet\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Effortlessly transition from day to night with our versatile diamond tennis bracelet. Whether paired with a casual outfit or a formal gown, it adds a touch of glamour and sophistication to any look. Treat yourself or someone special to this timeless piece that\'s destined to be cherished for years to come.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Exquisite Craftsmanship</h3>\n                        <img src=\"/storage/jewelry/products/product-3.png\" alt=\"Jewelry Workshop\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-7.png\",\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-8.png\",\"jewelry\\/products\\/product-5.png\",\"jewelry\\/products\\/product-2.png\"]','KB-188-A1',0,16,0,1,1,4,0,0,468,NULL,NULL,NULL,12.00,17.00,15.00,883.00,NULL,90922,'2024-06-05 00:00:50','2024-06-05 00:00:51','in_stock',5,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(8,'Silk Scarf with Geometric Print (Digital)','Make a bold statement with this chunky necklace, designed to add a touch of glamour to any outfit. The perfect accessory for a night out.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Diamond Tennis Bracelet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Timeless Elegance</h3>\n                        <p>\n                            Elevate your style with our exquisite diamond tennis bracelet. Crafted with precision and attention to detail, each sparkling diamond is expertly set in lustrous white gold, creating a piece of jewelry that exudes sophistication and luxury. Whether worn alone or layered with other bracelets, this timeless accessory adds a touch of glamour to any ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Exceptional Quality</h3>\n                        <p>\n                            Our diamond tennis bracelet is crafted from the finest materials to ensure lasting beauty and brilliance. Each diamond is carefully selected for its clarity, cut, and color, resulting in a piece of jewelry that\'s truly exceptional. Indulge in luxury and elegance with this stunning bracelet that\'s sure to become a cherished heirloom.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/jewelry/products/product-1.png\" alt=\"Diamond Tennis Bracelet\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/jewelry/products/product-2.png\" alt=\"Close-up of Diamond Tennis Bracelet\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Effortlessly transition from day to night with our versatile diamond tennis bracelet. Whether paired with a casual outfit or a formal gown, it adds a touch of glamour and sophistication to any look. Treat yourself or someone special to this timeless piece that\'s destined to be cherished for years to come.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Exquisite Craftsmanship</h3>\n                        <img src=\"/storage/jewelry/products/product-3.png\" alt=\"Jewelry Workshop\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"jewelry\\/products\\/product-6.png\",\"jewelry\\/products\\/product-8.png\",\"jewelry\\/products\\/product-4.png\",\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-7.png\"]','CS-116-A1',0,18,0,1,1,1,0,0,2389,1863.42,NULL,NULL,15.00,12.00,12.00,799.00,NULL,10614,'2024-06-05 00:00:50','2024-06-05 00:00:51','in_stock',2,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(9,'High-Waisted Wide Leg Trousers','Stay on trend with these high-waisted wide-leg trousers, combining comfort and sophistication. Pair them with heels for a refined look.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Diamond Tennis Bracelet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Timeless Elegance</h3>\n                        <p>\n                            Elevate your style with our exquisite diamond tennis bracelet. Crafted with precision and attention to detail, each sparkling diamond is expertly set in lustrous white gold, creating a piece of jewelry that exudes sophistication and luxury. Whether worn alone or layered with other bracelets, this timeless accessory adds a touch of glamour to any ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Exceptional Quality</h3>\n                        <p>\n                            Our diamond tennis bracelet is crafted from the finest materials to ensure lasting beauty and brilliance. Each diamond is carefully selected for its clarity, cut, and color, resulting in a piece of jewelry that\'s truly exceptional. Indulge in luxury and elegance with this stunning bracelet that\'s sure to become a cherished heirloom.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/jewelry/products/product-1.png\" alt=\"Diamond Tennis Bracelet\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/jewelry/products/product-2.png\" alt=\"Close-up of Diamond Tennis Bracelet\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Effortlessly transition from day to night with our versatile diamond tennis bracelet. Whether paired with a casual outfit or a formal gown, it adds a touch of glamour and sophistication to any look. Treat yourself or someone special to this timeless piece that\'s destined to be cherished for years to come.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Exquisite Craftsmanship</h3>\n                        <img src=\"/storage/jewelry/products/product-3.png\" alt=\"Jewelry Workshop\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"jewelry\\/products\\/product-4.png\",\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-7.png\",\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-6.png\"]','CA-135',0,16,0,1,0,2,0,0,1216,544,NULL,NULL,10.00,10.00,11.00,560.00,NULL,135842,'2024-06-05 00:00:50','2024-06-05 00:00:50','in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(10,'Embroidered Boho Blouse','Achieve a polished look with this tailored wool blazer, designed for a flattering fit and versatile enough for both work and casual outings.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Diamond Tennis Bracelet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Timeless Elegance</h3>\n                        <p>\n                            Elevate your style with our exquisite diamond tennis bracelet. Crafted with precision and attention to detail, each sparkling diamond is expertly set in lustrous white gold, creating a piece of jewelry that exudes sophistication and luxury. Whether worn alone or layered with other bracelets, this timeless accessory adds a touch of glamour to any ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Exceptional Quality</h3>\n                        <p>\n                            Our diamond tennis bracelet is crafted from the finest materials to ensure lasting beauty and brilliance. Each diamond is carefully selected for its clarity, cut, and color, resulting in a piece of jewelry that\'s truly exceptional. Indulge in luxury and elegance with this stunning bracelet that\'s sure to become a cherished heirloom.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/jewelry/products/product-1.png\" alt=\"Diamond Tennis Bracelet\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/jewelry/products/product-2.png\" alt=\"Close-up of Diamond Tennis Bracelet\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Effortlessly transition from day to night with our versatile diamond tennis bracelet. Whether paired with a casual outfit or a formal gown, it adds a touch of glamour and sophistication to any look. Treat yourself or someone special to this timeless piece that\'s destined to be cherished for years to come.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Exquisite Craftsmanship</h3>\n                        <img src=\"/storage/jewelry/products/product-3.png\" alt=\"Jewelry Workshop\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"jewelry\\/products\\/product-8.png\",\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-7.png\",\"jewelry\\/products\\/product-6.png\",\"jewelry\\/products\\/product-1.png\"]','YX-118',0,13,0,1,0,5,0,0,2042,386,NULL,NULL,18.00,13.00,14.00,823.00,NULL,1401,'2024-06-05 00:00:50','2024-06-05 00:00:50','in_stock',5,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(11,'Statement Chunky Necklace','Step out in style with these leather ankle boots, crafted with a sleek design and comfortable block heel. Versatile enough to pair with both dresses and jeans.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Diamond Tennis Bracelet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Timeless Elegance</h3>\n                        <p>\n                            Elevate your style with our exquisite diamond tennis bracelet. Crafted with precision and attention to detail, each sparkling diamond is expertly set in lustrous white gold, creating a piece of jewelry that exudes sophistication and luxury. Whether worn alone or layered with other bracelets, this timeless accessory adds a touch of glamour to any ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Exceptional Quality</h3>\n                        <p>\n                            Our diamond tennis bracelet is crafted from the finest materials to ensure lasting beauty and brilliance. Each diamond is carefully selected for its clarity, cut, and color, resulting in a piece of jewelry that\'s truly exceptional. Indulge in luxury and elegance with this stunning bracelet that\'s sure to become a cherished heirloom.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/jewelry/products/product-1.png\" alt=\"Diamond Tennis Bracelet\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/jewelry/products/product-2.png\" alt=\"Close-up of Diamond Tennis Bracelet\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Effortlessly transition from day to night with our versatile diamond tennis bracelet. Whether paired with a casual outfit or a formal gown, it adds a touch of glamour and sophistication to any look. Treat yourself or someone special to this timeless piece that\'s destined to be cherished for years to come.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Exquisite Craftsmanship</h3>\n                        <img src=\"/storage/jewelry/products/product-3.png\" alt=\"Jewelry Workshop\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"jewelry\\/products\\/product-7.png\",\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-4.png\",\"jewelry\\/products\\/product-6.png\",\"jewelry\\/products\\/product-5.png\"]','LK-150-A1',0,19,0,1,1,2,0,0,2404,NULL,NULL,NULL,13.00,20.00,14.00,726.00,NULL,106840,'2024-06-05 00:00:50','2024-06-05 00:00:51','in_stock',7,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(12,'Chic Fedora Hat (Digital)','Make a statement in this floral maxi dress, perfect for summer events or a casual day out. The flowy silhouette and vibrant print will turn heads wherever you go.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Diamond Tennis Bracelet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Timeless Elegance</h3>\n                        <p>\n                            Elevate your style with our exquisite diamond tennis bracelet. Crafted with precision and attention to detail, each sparkling diamond is expertly set in lustrous white gold, creating a piece of jewelry that exudes sophistication and luxury. Whether worn alone or layered with other bracelets, this timeless accessory adds a touch of glamour to any ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Exceptional Quality</h3>\n                        <p>\n                            Our diamond tennis bracelet is crafted from the finest materials to ensure lasting beauty and brilliance. Each diamond is carefully selected for its clarity, cut, and color, resulting in a piece of jewelry that\'s truly exceptional. Indulge in luxury and elegance with this stunning bracelet that\'s sure to become a cherished heirloom.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/jewelry/products/product-1.png\" alt=\"Diamond Tennis Bracelet\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/jewelry/products/product-2.png\" alt=\"Close-up of Diamond Tennis Bracelet\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Effortlessly transition from day to night with our versatile diamond tennis bracelet. Whether paired with a casual outfit or a formal gown, it adds a touch of glamour and sophistication to any look. Treat yourself or someone special to this timeless piece that\'s destined to be cherished for years to come.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Exquisite Craftsmanship</h3>\n                        <img src=\"/storage/jewelry/products/product-3.png\" alt=\"Jewelry Workshop\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-4.png\",\"jewelry\\/products\\/product-5.png\",\"jewelry\\/products\\/product-6.png\",\"jewelry\\/products\\/product-3.png\"]','76-186-A1',0,19,0,1,0,1,0,0,493,433.84,NULL,NULL,16.00,18.00,16.00,728.00,NULL,84250,'2024-06-05 00:00:50','2024-06-05 00:00:51','in_stock',4,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(13,'Strappy Block Heel Sandals','Accessorize with this bohemian fringe handbag, featuring intricate details and enough space for your essentials. The perfect boho-chic addition to your collection.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Diamond Tennis Bracelet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Timeless Elegance</h3>\n                        <p>\n                            Elevate your style with our exquisite diamond tennis bracelet. Crafted with precision and attention to detail, each sparkling diamond is expertly set in lustrous white gold, creating a piece of jewelry that exudes sophistication and luxury. Whether worn alone or layered with other bracelets, this timeless accessory adds a touch of glamour to any ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Exceptional Quality</h3>\n                        <p>\n                            Our diamond tennis bracelet is crafted from the finest materials to ensure lasting beauty and brilliance. Each diamond is carefully selected for its clarity, cut, and color, resulting in a piece of jewelry that\'s truly exceptional. Indulge in luxury and elegance with this stunning bracelet that\'s sure to become a cherished heirloom.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/jewelry/products/product-1.png\" alt=\"Diamond Tennis Bracelet\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/jewelry/products/product-2.png\" alt=\"Close-up of Diamond Tennis Bracelet\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Effortlessly transition from day to night with our versatile diamond tennis bracelet. Whether paired with a casual outfit or a formal gown, it adds a touch of glamour and sophistication to any look. Treat yourself or someone special to this timeless piece that\'s destined to be cherished for years to come.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Exquisite Craftsmanship</h3>\n                        <img src=\"/storage/jewelry/products/product-3.png\" alt=\"Jewelry Workshop\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"jewelry\\/products\\/product-4.png\",\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-7.png\",\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-8.png\",\"jewelry\\/products\\/product-6.png\",\"jewelry\\/products\\/product-5.png\"]','XS-152-A1',0,10,0,1,1,1,0,0,1877,NULL,NULL,NULL,18.00,19.00,13.00,714.00,NULL,5840,'2024-06-05 00:00:50','2024-06-05 00:00:51','in_stock',7,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(14,'Velvet Evening Gown','Stay cozy and chic in this knit turtleneck sweater, featuring a ribbed texture and a timeless design. Perfect for chilly days and nights.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Diamond Tennis Bracelet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Timeless Elegance</h3>\n                        <p>\n                            Elevate your style with our exquisite diamond tennis bracelet. Crafted with precision and attention to detail, each sparkling diamond is expertly set in lustrous white gold, creating a piece of jewelry that exudes sophistication and luxury. Whether worn alone or layered with other bracelets, this timeless accessory adds a touch of glamour to any ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Exceptional Quality</h3>\n                        <p>\n                            Our diamond tennis bracelet is crafted from the finest materials to ensure lasting beauty and brilliance. Each diamond is carefully selected for its clarity, cut, and color, resulting in a piece of jewelry that\'s truly exceptional. Indulge in luxury and elegance with this stunning bracelet that\'s sure to become a cherished heirloom.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/jewelry/products/product-1.png\" alt=\"Diamond Tennis Bracelet\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/jewelry/products/product-2.png\" alt=\"Close-up of Diamond Tennis Bracelet\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Effortlessly transition from day to night with our versatile diamond tennis bracelet. Whether paired with a casual outfit or a formal gown, it adds a touch of glamour and sophistication to any look. Treat yourself or someone special to this timeless piece that\'s destined to be cherished for years to come.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Exquisite Craftsmanship</h3>\n                        <img src=\"/storage/jewelry/products/product-3.png\" alt=\"Jewelry Workshop\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"jewelry\\/products\\/product-7.png\",\"jewelry\\/products\\/product-6.png\",\"jewelry\\/products\\/product-4.png\",\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-5.png\",\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-2.png\"]','X3-140-A1',0,12,0,1,1,3,0,0,568,NULL,NULL,NULL,15.00,19.00,19.00,717.00,NULL,88715,'2024-06-05 00:00:50','2024-06-05 00:00:51','in_stock',3,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(15,'Quilted Crossbody Bag','Elevate your street style with this vintage denim jacket, featuring distressed detailing and a relaxed fit for a laid-back vibe.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Diamond Tennis Bracelet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Timeless Elegance</h3>\n                        <p>\n                            Elevate your style with our exquisite diamond tennis bracelet. Crafted with precision and attention to detail, each sparkling diamond is expertly set in lustrous white gold, creating a piece of jewelry that exudes sophistication and luxury. Whether worn alone or layered with other bracelets, this timeless accessory adds a touch of glamour to any ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Exceptional Quality</h3>\n                        <p>\n                            Our diamond tennis bracelet is crafted from the finest materials to ensure lasting beauty and brilliance. Each diamond is carefully selected for its clarity, cut, and color, resulting in a piece of jewelry that\'s truly exceptional. Indulge in luxury and elegance with this stunning bracelet that\'s sure to become a cherished heirloom.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/jewelry/products/product-1.png\" alt=\"Diamond Tennis Bracelet\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/jewelry/products/product-2.png\" alt=\"Close-up of Diamond Tennis Bracelet\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Effortlessly transition from day to night with our versatile diamond tennis bracelet. Whether paired with a casual outfit or a formal gown, it adds a touch of glamour and sophistication to any look. Treat yourself or someone special to this timeless piece that\'s destined to be cherished for years to come.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Exquisite Craftsmanship</h3>\n                        <img src=\"/storage/jewelry/products/product-3.png\" alt=\"Jewelry Workshop\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"jewelry\\/products\\/product-5.png\",\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-3.png\"]','N3-180-A1',0,15,0,1,0,1,0,0,2411,NULL,NULL,NULL,16.00,18.00,19.00,862.00,NULL,191319,'2024-06-05 00:00:50','2024-06-05 00:00:51','in_stock',8,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(16,'Distressed Skinny Jeans (Digital)','Stay cozy and chic in this knit turtleneck sweater, featuring a ribbed texture and a timeless design. Perfect for chilly days and nights.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Diamond Tennis Bracelet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Timeless Elegance</h3>\n                        <p>\n                            Elevate your style with our exquisite diamond tennis bracelet. Crafted with precision and attention to detail, each sparkling diamond is expertly set in lustrous white gold, creating a piece of jewelry that exudes sophistication and luxury. Whether worn alone or layered with other bracelets, this timeless accessory adds a touch of glamour to any ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Exceptional Quality</h3>\n                        <p>\n                            Our diamond tennis bracelet is crafted from the finest materials to ensure lasting beauty and brilliance. Each diamond is carefully selected for its clarity, cut, and color, resulting in a piece of jewelry that\'s truly exceptional. Indulge in luxury and elegance with this stunning bracelet that\'s sure to become a cherished heirloom.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/jewelry/products/product-1.png\" alt=\"Diamond Tennis Bracelet\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/jewelry/products/product-2.png\" alt=\"Close-up of Diamond Tennis Bracelet\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Effortlessly transition from day to night with our versatile diamond tennis bracelet. Whether paired with a casual outfit or a formal gown, it adds a touch of glamour and sophistication to any look. Treat yourself or someone special to this timeless piece that\'s destined to be cherished for years to come.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Exquisite Craftsmanship</h3>\n                        <img src=\"/storage/jewelry/products/product-3.png\" alt=\"Jewelry Workshop\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"jewelry\\/products\\/product-8.png\",\"jewelry\\/products\\/product-7.png\",\"jewelry\\/products\\/product-4.png\",\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-1.png\"]','2M-104',0,14,0,1,0,5,0,0,2429,1093,NULL,NULL,15.00,13.00,12.00,865.00,NULL,12487,'2024-06-05 00:00:50','2024-06-05 00:00:50','in_stock',7,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(17,'Lace-Up Combat Boots','Stay on trend with these high-waisted wide-leg trousers, combining comfort and sophistication. Pair them with heels for a refined look.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Diamond Tennis Bracelet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Timeless Elegance</h3>\n                        <p>\n                            Elevate your style with our exquisite diamond tennis bracelet. Crafted with precision and attention to detail, each sparkling diamond is expertly set in lustrous white gold, creating a piece of jewelry that exudes sophistication and luxury. Whether worn alone or layered with other bracelets, this timeless accessory adds a touch of glamour to any ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Exceptional Quality</h3>\n                        <p>\n                            Our diamond tennis bracelet is crafted from the finest materials to ensure lasting beauty and brilliance. Each diamond is carefully selected for its clarity, cut, and color, resulting in a piece of jewelry that\'s truly exceptional. Indulge in luxury and elegance with this stunning bracelet that\'s sure to become a cherished heirloom.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/jewelry/products/product-1.png\" alt=\"Diamond Tennis Bracelet\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/jewelry/products/product-2.png\" alt=\"Close-up of Diamond Tennis Bracelet\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Effortlessly transition from day to night with our versatile diamond tennis bracelet. Whether paired with a casual outfit or a formal gown, it adds a touch of glamour and sophistication to any look. Treat yourself or someone special to this timeless piece that\'s destined to be cherished for years to come.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Exquisite Craftsmanship</h3>\n                        <img src=\"/storage/jewelry/products/product-3.png\" alt=\"Jewelry Workshop\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"jewelry\\/products\\/product-6.png\",\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-5.png\",\"jewelry\\/products\\/product-8.png\",\"jewelry\\/products\\/product-7.png\"]','HK-182',0,11,0,1,0,4,0,0,982,83,NULL,NULL,18.00,17.00,18.00,632.00,NULL,151337,'2024-06-05 00:00:50','2024-06-05 00:00:50','in_stock',3,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(18,'Cotton Striped T-Shirt Dress','Make a statement in this floral maxi dress, perfect for summer events or a casual day out. The flowy silhouette and vibrant print will turn heads wherever you go.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Diamond Tennis Bracelet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Timeless Elegance</h3>\n                        <p>\n                            Elevate your style with our exquisite diamond tennis bracelet. Crafted with precision and attention to detail, each sparkling diamond is expertly set in lustrous white gold, creating a piece of jewelry that exudes sophistication and luxury. Whether worn alone or layered with other bracelets, this timeless accessory adds a touch of glamour to any ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Exceptional Quality</h3>\n                        <p>\n                            Our diamond tennis bracelet is crafted from the finest materials to ensure lasting beauty and brilliance. Each diamond is carefully selected for its clarity, cut, and color, resulting in a piece of jewelry that\'s truly exceptional. Indulge in luxury and elegance with this stunning bracelet that\'s sure to become a cherished heirloom.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/jewelry/products/product-1.png\" alt=\"Diamond Tennis Bracelet\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/jewelry/products/product-2.png\" alt=\"Close-up of Diamond Tennis Bracelet\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Effortlessly transition from day to night with our versatile diamond tennis bracelet. Whether paired with a casual outfit or a formal gown, it adds a touch of glamour and sophistication to any look. Treat yourself or someone special to this timeless piece that\'s destined to be cherished for years to come.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Exquisite Craftsmanship</h3>\n                        <img src=\"/storage/jewelry/products/product-3.png\" alt=\"Jewelry Workshop\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"jewelry\\/products\\/product-8.png\",\"jewelry\\/products\\/product-5.png\",\"jewelry\\/products\\/product-7.png\",\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-6.png\"]','RT-196',0,16,0,1,0,5,0,0,1977,832,NULL,NULL,11.00,10.00,20.00,865.00,NULL,38983,'2024-06-05 00:00:50','2024-06-05 00:00:50','in_stock',6,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(19,'Printed Palazzo Pants','Accessorize with this bohemian fringe handbag, featuring intricate details and enough space for your essentials. The perfect boho-chic addition to your collection.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Diamond Tennis Bracelet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Timeless Elegance</h3>\n                        <p>\n                            Elevate your style with our exquisite diamond tennis bracelet. Crafted with precision and attention to detail, each sparkling diamond is expertly set in lustrous white gold, creating a piece of jewelry that exudes sophistication and luxury. Whether worn alone or layered with other bracelets, this timeless accessory adds a touch of glamour to any ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Exceptional Quality</h3>\n                        <p>\n                            Our diamond tennis bracelet is crafted from the finest materials to ensure lasting beauty and brilliance. Each diamond is carefully selected for its clarity, cut, and color, resulting in a piece of jewelry that\'s truly exceptional. Indulge in luxury and elegance with this stunning bracelet that\'s sure to become a cherished heirloom.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/jewelry/products/product-1.png\" alt=\"Diamond Tennis Bracelet\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/jewelry/products/product-2.png\" alt=\"Close-up of Diamond Tennis Bracelet\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Effortlessly transition from day to night with our versatile diamond tennis bracelet. Whether paired with a casual outfit or a formal gown, it adds a touch of glamour and sophistication to any look. Treat yourself or someone special to this timeless piece that\'s destined to be cherished for years to come.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Exquisite Craftsmanship</h3>\n                        <img src=\"/storage/jewelry/products/product-3.png\" alt=\"Jewelry Workshop\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"jewelry\\/products\\/product-8.png\",\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-6.png\",\"jewelry\\/products\\/product-4.png\",\"jewelry\\/products\\/product-7.png\"]','GI-161-A1',0,15,0,1,0,1,0,0,1086,NULL,NULL,NULL,20.00,13.00,14.00,631.00,NULL,105376,'2024-06-05 00:00:50','2024-06-05 00:00:51','in_stock',5,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(20,'Structured Satchel Bag (Digital)','Accessorize with this bohemian fringe handbag, featuring intricate details and enough space for your essentials. The perfect boho-chic addition to your collection.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Diamond Tennis Bracelet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Timeless Elegance</h3>\n                        <p>\n                            Elevate your style with our exquisite diamond tennis bracelet. Crafted with precision and attention to detail, each sparkling diamond is expertly set in lustrous white gold, creating a piece of jewelry that exudes sophistication and luxury. Whether worn alone or layered with other bracelets, this timeless accessory adds a touch of glamour to any ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Exceptional Quality</h3>\n                        <p>\n                            Our diamond tennis bracelet is crafted from the finest materials to ensure lasting beauty and brilliance. Each diamond is carefully selected for its clarity, cut, and color, resulting in a piece of jewelry that\'s truly exceptional. Indulge in luxury and elegance with this stunning bracelet that\'s sure to become a cherished heirloom.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/jewelry/products/product-1.png\" alt=\"Diamond Tennis Bracelet\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/jewelry/products/product-2.png\" alt=\"Close-up of Diamond Tennis Bracelet\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Effortlessly transition from day to night with our versatile diamond tennis bracelet. Whether paired with a casual outfit or a formal gown, it adds a touch of glamour and sophistication to any look. Treat yourself or someone special to this timeless piece that\'s destined to be cherished for years to come.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Exquisite Craftsmanship</h3>\n                        <img src=\"/storage/jewelry/products/product-3.png\" alt=\"Jewelry Workshop\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-7.png\",\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-6.png\",\"jewelry\\/products\\/product-5.png\",\"jewelry\\/products\\/product-4.png\"]','OJ-179-A1',0,10,0,1,0,5,0,0,2034,1667.88,NULL,NULL,15.00,11.00,19.00,640.00,NULL,9145,'2024-06-05 00:00:50','2024-06-05 00:00:51','in_stock',2,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(21,'Off-Shoulder Ruffle Top','Make a bold statement with this chunky necklace, designed to add a touch of glamour to any outfit. The perfect accessory for a night out.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Diamond Tennis Bracelet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Timeless Elegance</h3>\n                        <p>\n                            Elevate your style with our exquisite diamond tennis bracelet. Crafted with precision and attention to detail, each sparkling diamond is expertly set in lustrous white gold, creating a piece of jewelry that exudes sophistication and luxury. Whether worn alone or layered with other bracelets, this timeless accessory adds a touch of glamour to any ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Exceptional Quality</h3>\n                        <p>\n                            Our diamond tennis bracelet is crafted from the finest materials to ensure lasting beauty and brilliance. Each diamond is carefully selected for its clarity, cut, and color, resulting in a piece of jewelry that\'s truly exceptional. Indulge in luxury and elegance with this stunning bracelet that\'s sure to become a cherished heirloom.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/jewelry/products/product-1.png\" alt=\"Diamond Tennis Bracelet\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/jewelry/products/product-2.png\" alt=\"Close-up of Diamond Tennis Bracelet\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Effortlessly transition from day to night with our versatile diamond tennis bracelet. Whether paired with a casual outfit or a formal gown, it adds a touch of glamour and sophistication to any look. Treat yourself or someone special to this timeless piece that\'s destined to be cherished for years to come.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Exquisite Craftsmanship</h3>\n                        <img src=\"/storage/jewelry/products/product-3.png\" alt=\"Jewelry Workshop\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-7.png\",\"jewelry\\/products\\/product-8.png\",\"jewelry\\/products\\/product-6.png\"]','DM-184-A1',0,16,0,1,0,5,0,0,2218,NULL,NULL,NULL,20.00,11.00,20.00,595.00,NULL,112589,'2024-06-05 00:00:50','2024-06-05 00:00:51','in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(22,'Suede Pointed-Toe Pumps','Embrace bohemian vibes with this embroidered boho blouse, featuring intricate stitching and a relaxed fit. Perfect for a casual day with a touch of style.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Diamond Tennis Bracelet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Timeless Elegance</h3>\n                        <p>\n                            Elevate your style with our exquisite diamond tennis bracelet. Crafted with precision and attention to detail, each sparkling diamond is expertly set in lustrous white gold, creating a piece of jewelry that exudes sophistication and luxury. Whether worn alone or layered with other bracelets, this timeless accessory adds a touch of glamour to any ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Exceptional Quality</h3>\n                        <p>\n                            Our diamond tennis bracelet is crafted from the finest materials to ensure lasting beauty and brilliance. Each diamond is carefully selected for its clarity, cut, and color, resulting in a piece of jewelry that\'s truly exceptional. Indulge in luxury and elegance with this stunning bracelet that\'s sure to become a cherished heirloom.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/jewelry/products/product-1.png\" alt=\"Diamond Tennis Bracelet\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/jewelry/products/product-2.png\" alt=\"Close-up of Diamond Tennis Bracelet\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Effortlessly transition from day to night with our versatile diamond tennis bracelet. Whether paired with a casual outfit or a formal gown, it adds a touch of glamour and sophistication to any look. Treat yourself or someone special to this timeless piece that\'s destined to be cherished for years to come.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Exquisite Craftsmanship</h3>\n                        <img src=\"/storage/jewelry/products/product-3.png\" alt=\"Jewelry Workshop\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"jewelry\\/products\\/product-6.png\",\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-5.png\",\"jewelry\\/products\\/product-3.png\"]','2M-173-A1',0,12,0,1,0,5,0,0,1614,NULL,NULL,NULL,10.00,20.00,16.00,502.00,NULL,149676,'2024-06-05 00:00:50','2024-06-05 00:00:51','in_stock',4,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(23,'Cropped Cable Knit Sweater','Add a pop of color to your outfit with this silk scarf adorned with a geometric print. Wrap it around your neck or tie it to your handbag for a stylish touch.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Diamond Tennis Bracelet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Timeless Elegance</h3>\n                        <p>\n                            Elevate your style with our exquisite diamond tennis bracelet. Crafted with precision and attention to detail, each sparkling diamond is expertly set in lustrous white gold, creating a piece of jewelry that exudes sophistication and luxury. Whether worn alone or layered with other bracelets, this timeless accessory adds a touch of glamour to any ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Exceptional Quality</h3>\n                        <p>\n                            Our diamond tennis bracelet is crafted from the finest materials to ensure lasting beauty and brilliance. Each diamond is carefully selected for its clarity, cut, and color, resulting in a piece of jewelry that\'s truly exceptional. Indulge in luxury and elegance with this stunning bracelet that\'s sure to become a cherished heirloom.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/jewelry/products/product-1.png\" alt=\"Diamond Tennis Bracelet\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/jewelry/products/product-2.png\" alt=\"Close-up of Diamond Tennis Bracelet\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Effortlessly transition from day to night with our versatile diamond tennis bracelet. Whether paired with a casual outfit or a formal gown, it adds a touch of glamour and sophistication to any look. Treat yourself or someone special to this timeless piece that\'s destined to be cherished for years to come.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Exquisite Craftsmanship</h3>\n                        <img src=\"/storage/jewelry/products/product-3.png\" alt=\"Jewelry Workshop\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-6.png\",\"jewelry\\/products\\/product-8.png\",\"jewelry\\/products\\/product-7.png\"]','MV-109',0,11,0,1,0,4,0,0,1376,537,NULL,NULL,20.00,15.00,19.00,523.00,NULL,58051,'2024-06-05 00:00:50','2024-06-05 00:00:50','in_stock',4,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(24,'Athleisure Jogger Pants (Digital)','Elevate your street style with this vintage denim jacket, featuring distressed detailing and a relaxed fit for a laid-back vibe.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Diamond Tennis Bracelet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Timeless Elegance</h3>\n                        <p>\n                            Elevate your style with our exquisite diamond tennis bracelet. Crafted with precision and attention to detail, each sparkling diamond is expertly set in lustrous white gold, creating a piece of jewelry that exudes sophistication and luxury. Whether worn alone or layered with other bracelets, this timeless accessory adds a touch of glamour to any ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Exceptional Quality</h3>\n                        <p>\n                            Our diamond tennis bracelet is crafted from the finest materials to ensure lasting beauty and brilliance. Each diamond is carefully selected for its clarity, cut, and color, resulting in a piece of jewelry that\'s truly exceptional. Indulge in luxury and elegance with this stunning bracelet that\'s sure to become a cherished heirloom.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/jewelry/products/product-1.png\" alt=\"Diamond Tennis Bracelet\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/jewelry/products/product-2.png\" alt=\"Close-up of Diamond Tennis Bracelet\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Effortlessly transition from day to night with our versatile diamond tennis bracelet. Whether paired with a casual outfit or a formal gown, it adds a touch of glamour and sophistication to any look. Treat yourself or someone special to this timeless piece that\'s destined to be cherished for years to come.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Exquisite Craftsmanship</h3>\n                        <img src=\"/storage/jewelry/products/product-3.png\" alt=\"Jewelry Workshop\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"jewelry\\/products\\/product-4.png\",\"jewelry\\/products\\/product-8.png\",\"jewelry\\/products\\/product-7.png\"]','YD-143',0,10,0,1,1,5,0,0,583,282,NULL,NULL,19.00,11.00,19.00,793.00,NULL,76821,'2024-06-05 00:00:50','2024-06-05 00:00:50','in_stock',2,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(25,'Leopard Print Midi Skirt','Embrace bohemian vibes with this embroidered boho blouse, featuring intricate stitching and a relaxed fit. Perfect for a casual day with a touch of style.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Diamond Tennis Bracelet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Timeless Elegance</h3>\n                        <p>\n                            Elevate your style with our exquisite diamond tennis bracelet. Crafted with precision and attention to detail, each sparkling diamond is expertly set in lustrous white gold, creating a piece of jewelry that exudes sophistication and luxury. Whether worn alone or layered with other bracelets, this timeless accessory adds a touch of glamour to any ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Exceptional Quality</h3>\n                        <p>\n                            Our diamond tennis bracelet is crafted from the finest materials to ensure lasting beauty and brilliance. Each diamond is carefully selected for its clarity, cut, and color, resulting in a piece of jewelry that\'s truly exceptional. Indulge in luxury and elegance with this stunning bracelet that\'s sure to become a cherished heirloom.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/jewelry/products/product-1.png\" alt=\"Diamond Tennis Bracelet\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/jewelry/products/product-2.png\" alt=\"Close-up of Diamond Tennis Bracelet\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Effortlessly transition from day to night with our versatile diamond tennis bracelet. Whether paired with a casual outfit or a formal gown, it adds a touch of glamour and sophistication to any look. Treat yourself or someone special to this timeless piece that\'s destined to be cherished for years to come.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Exquisite Craftsmanship</h3>\n                        <img src=\"/storage/jewelry/products/product-3.png\" alt=\"Jewelry Workshop\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"jewelry\\/products\\/product-5.png\",\"jewelry\\/products\\/product-6.png\",\"jewelry\\/products\\/product-4.png\",\"jewelry\\/products\\/product-3.png\"]','IQ-130',0,13,0,1,1,2,0,0,1343,877,NULL,NULL,15.00,16.00,18.00,537.00,NULL,39772,'2024-06-05 00:00:50','2024-06-05 00:00:50','in_stock',8,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(26,'Retro Cat-Eye Sunglasses','Add a pop of color to your outfit with this silk scarf adorned with a geometric print. Wrap it around your neck or tie it to your handbag for a stylish touch.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Diamond Tennis Bracelet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Timeless Elegance</h3>\n                        <p>\n                            Elevate your style with our exquisite diamond tennis bracelet. Crafted with precision and attention to detail, each sparkling diamond is expertly set in lustrous white gold, creating a piece of jewelry that exudes sophistication and luxury. Whether worn alone or layered with other bracelets, this timeless accessory adds a touch of glamour to any ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Exceptional Quality</h3>\n                        <p>\n                            Our diamond tennis bracelet is crafted from the finest materials to ensure lasting beauty and brilliance. Each diamond is carefully selected for its clarity, cut, and color, resulting in a piece of jewelry that\'s truly exceptional. Indulge in luxury and elegance with this stunning bracelet that\'s sure to become a cherished heirloom.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/jewelry/products/product-1.png\" alt=\"Diamond Tennis Bracelet\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/jewelry/products/product-2.png\" alt=\"Close-up of Diamond Tennis Bracelet\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Effortlessly transition from day to night with our versatile diamond tennis bracelet. Whether paired with a casual outfit or a formal gown, it adds a touch of glamour and sophistication to any look. Treat yourself or someone special to this timeless piece that\'s destined to be cherished for years to come.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Exquisite Craftsmanship</h3>\n                        <img src=\"/storage/jewelry/products/product-3.png\" alt=\"Jewelry Workshop\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-5.png\",\"jewelry\\/products\\/product-4.png\",\"jewelry\\/products\\/product-8.png\",\"jewelry\\/products\\/product-7.png\",\"jewelry\\/products\\/product-6.png\",\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-2.png\"]','GW-171',0,14,0,1,0,2,0,0,1260,1195,NULL,NULL,13.00,11.00,15.00,673.00,NULL,88704,'2024-06-05 00:00:50','2024-06-05 00:00:50','in_stock',3,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(27,'Faux Fur Trimmed Coat','Complete your look with these classic aviator sunglasses, offering a touch of timeless glamour and UV protection for your eyes.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Diamond Tennis Bracelet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Timeless Elegance</h3>\n                        <p>\n                            Elevate your style with our exquisite diamond tennis bracelet. Crafted with precision and attention to detail, each sparkling diamond is expertly set in lustrous white gold, creating a piece of jewelry that exudes sophistication and luxury. Whether worn alone or layered with other bracelets, this timeless accessory adds a touch of glamour to any ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Exceptional Quality</h3>\n                        <p>\n                            Our diamond tennis bracelet is crafted from the finest materials to ensure lasting beauty and brilliance. Each diamond is carefully selected for its clarity, cut, and color, resulting in a piece of jewelry that\'s truly exceptional. Indulge in luxury and elegance with this stunning bracelet that\'s sure to become a cherished heirloom.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/jewelry/products/product-1.png\" alt=\"Diamond Tennis Bracelet\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/jewelry/products/product-2.png\" alt=\"Close-up of Diamond Tennis Bracelet\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Effortlessly transition from day to night with our versatile diamond tennis bracelet. Whether paired with a casual outfit or a formal gown, it adds a touch of glamour and sophistication to any look. Treat yourself or someone special to this timeless piece that\'s destined to be cherished for years to come.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Exquisite Craftsmanship</h3>\n                        <img src=\"/storage/jewelry/products/product-3.png\" alt=\"Jewelry Workshop\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-8.png\",\"jewelry\\/products\\/product-5.png\"]','TF-129-A1',0,18,0,1,1,4,0,0,800,NULL,NULL,NULL,19.00,12.00,19.00,536.00,NULL,94629,'2024-06-05 00:00:50','2024-06-05 00:00:51','in_stock',6,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(28,'Boho Fringed Kimono (Digital)','Make a bold statement with this chunky necklace, designed to add a touch of glamour to any outfit. The perfect accessory for a night out.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Diamond Tennis Bracelet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Timeless Elegance</h3>\n                        <p>\n                            Elevate your style with our exquisite diamond tennis bracelet. Crafted with precision and attention to detail, each sparkling diamond is expertly set in lustrous white gold, creating a piece of jewelry that exudes sophistication and luxury. Whether worn alone or layered with other bracelets, this timeless accessory adds a touch of glamour to any ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Exceptional Quality</h3>\n                        <p>\n                            Our diamond tennis bracelet is crafted from the finest materials to ensure lasting beauty and brilliance. Each diamond is carefully selected for its clarity, cut, and color, resulting in a piece of jewelry that\'s truly exceptional. Indulge in luxury and elegance with this stunning bracelet that\'s sure to become a cherished heirloom.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/jewelry/products/product-1.png\" alt=\"Diamond Tennis Bracelet\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/jewelry/products/product-2.png\" alt=\"Close-up of Diamond Tennis Bracelet\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Effortlessly transition from day to night with our versatile diamond tennis bracelet. Whether paired with a casual outfit or a formal gown, it adds a touch of glamour and sophistication to any look. Treat yourself or someone special to this timeless piece that\'s destined to be cherished for years to come.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Exquisite Craftsmanship</h3>\n                        <img src=\"/storage/jewelry/products/product-3.png\" alt=\"Jewelry Workshop\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"jewelry\\/products\\/product-8.png\",\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-7.png\",\"jewelry\\/products\\/product-6.png\",\"jewelry\\/products\\/product-3.png\"]','PF-100-A1',0,15,0,1,1,2,0,0,768,675.84,NULL,NULL,13.00,16.00,17.00,787.00,NULL,128186,'2024-06-05 00:00:51','2024-06-05 00:00:51','in_stock',8,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(29,'Ruffled Wrap Dress','Stay on trend with these high-waisted wide-leg trousers, combining comfort and sophistication. Pair them with heels for a refined look.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Diamond Tennis Bracelet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Timeless Elegance</h3>\n                        <p>\n                            Elevate your style with our exquisite diamond tennis bracelet. Crafted with precision and attention to detail, each sparkling diamond is expertly set in lustrous white gold, creating a piece of jewelry that exudes sophistication and luxury. Whether worn alone or layered with other bracelets, this timeless accessory adds a touch of glamour to any ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Exceptional Quality</h3>\n                        <p>\n                            Our diamond tennis bracelet is crafted from the finest materials to ensure lasting beauty and brilliance. Each diamond is carefully selected for its clarity, cut, and color, resulting in a piece of jewelry that\'s truly exceptional. Indulge in luxury and elegance with this stunning bracelet that\'s sure to become a cherished heirloom.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/jewelry/products/product-1.png\" alt=\"Diamond Tennis Bracelet\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/jewelry/products/product-2.png\" alt=\"Close-up of Diamond Tennis Bracelet\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Effortlessly transition from day to night with our versatile diamond tennis bracelet. Whether paired with a casual outfit or a formal gown, it adds a touch of glamour and sophistication to any look. Treat yourself or someone special to this timeless piece that\'s destined to be cherished for years to come.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Exquisite Craftsmanship</h3>\n                        <img src=\"/storage/jewelry/products/product-3.png\" alt=\"Jewelry Workshop\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"jewelry\\/products\\/product-6.png\",\"jewelry\\/products\\/product-4.png\",\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-7.png\",\"jewelry\\/products\\/product-5.png\",\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-8.png\"]','3Q-160',0,10,0,1,0,1,0,0,2240,1777,NULL,NULL,20.00,20.00,20.00,681.00,NULL,57774,'2024-06-05 00:00:51','2024-06-05 00:00:51','in_stock',3,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(30,'Beaded Evening Clutch','Elevate your street style with this vintage denim jacket, featuring distressed detailing and a relaxed fit for a laid-back vibe.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Diamond Tennis Bracelet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Timeless Elegance</h3>\n                        <p>\n                            Elevate your style with our exquisite diamond tennis bracelet. Crafted with precision and attention to detail, each sparkling diamond is expertly set in lustrous white gold, creating a piece of jewelry that exudes sophistication and luxury. Whether worn alone or layered with other bracelets, this timeless accessory adds a touch of glamour to any ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Exceptional Quality</h3>\n                        <p>\n                            Our diamond tennis bracelet is crafted from the finest materials to ensure lasting beauty and brilliance. Each diamond is carefully selected for its clarity, cut, and color, resulting in a piece of jewelry that\'s truly exceptional. Indulge in luxury and elegance with this stunning bracelet that\'s sure to become a cherished heirloom.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/jewelry/products/product-1.png\" alt=\"Diamond Tennis Bracelet\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/jewelry/products/product-2.png\" alt=\"Close-up of Diamond Tennis Bracelet\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Effortlessly transition from day to night with our versatile diamond tennis bracelet. Whether paired with a casual outfit or a formal gown, it adds a touch of glamour and sophistication to any look. Treat yourself or someone special to this timeless piece that\'s destined to be cherished for years to come.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Exquisite Craftsmanship</h3>\n                        <img src=\"/storage/jewelry/products/product-3.png\" alt=\"Jewelry Workshop\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"jewelry\\/products\\/product-7.png\",\"jewelry\\/products\\/product-5.png\",\"jewelry\\/products\\/product-6.png\",\"jewelry\\/products\\/product-1.png\"]','Y3-181',0,14,0,1,0,3,0,0,2262,1726,NULL,NULL,19.00,11.00,13.00,638.00,NULL,48207,'2024-06-05 00:00:51','2024-06-05 00:00:51','in_stock',8,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(31,'Wide Brim Floppy Hat','Top off your look with this chic fedora hat, crafted with a classic silhouette and a timeless appeal. A must-have accessory for any fashion-forward wardrobe.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Diamond Tennis Bracelet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Timeless Elegance</h3>\n                        <p>\n                            Elevate your style with our exquisite diamond tennis bracelet. Crafted with precision and attention to detail, each sparkling diamond is expertly set in lustrous white gold, creating a piece of jewelry that exudes sophistication and luxury. Whether worn alone or layered with other bracelets, this timeless accessory adds a touch of glamour to any ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Exceptional Quality</h3>\n                        <p>\n                            Our diamond tennis bracelet is crafted from the finest materials to ensure lasting beauty and brilliance. Each diamond is carefully selected for its clarity, cut, and color, resulting in a piece of jewelry that\'s truly exceptional. Indulge in luxury and elegance with this stunning bracelet that\'s sure to become a cherished heirloom.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/jewelry/products/product-1.png\" alt=\"Diamond Tennis Bracelet\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/jewelry/products/product-2.png\" alt=\"Close-up of Diamond Tennis Bracelet\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Effortlessly transition from day to night with our versatile diamond tennis bracelet. Whether paired with a casual outfit or a formal gown, it adds a touch of glamour and sophistication to any look. Treat yourself or someone special to this timeless piece that\'s destined to be cherished for years to come.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Exquisite Craftsmanship</h3>\n                        <img src=\"/storage/jewelry/products/product-3.png\" alt=\"Jewelry Workshop\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"jewelry\\/products\\/product-8.png\",\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-5.png\",\"jewelry\\/products\\/product-6.png\",\"jewelry\\/products\\/product-7.png\"]','PM-152',0,18,0,1,0,5,0,0,2032,263,NULL,NULL,16.00,18.00,12.00,510.00,NULL,45654,'2024-06-05 00:00:51','2024-06-05 00:00:51','in_stock',2,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(32,'Denim Overall Jumpsuit (Digital)','Stay cozy and chic in this knit turtleneck sweater, featuring a ribbed texture and a timeless design. Perfect for chilly days and nights.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Diamond Tennis Bracelet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Timeless Elegance</h3>\n                        <p>\n                            Elevate your style with our exquisite diamond tennis bracelet. Crafted with precision and attention to detail, each sparkling diamond is expertly set in lustrous white gold, creating a piece of jewelry that exudes sophistication and luxury. Whether worn alone or layered with other bracelets, this timeless accessory adds a touch of glamour to any ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Exceptional Quality</h3>\n                        <p>\n                            Our diamond tennis bracelet is crafted from the finest materials to ensure lasting beauty and brilliance. Each diamond is carefully selected for its clarity, cut, and color, resulting in a piece of jewelry that\'s truly exceptional. Indulge in luxury and elegance with this stunning bracelet that\'s sure to become a cherished heirloom.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/jewelry/products/product-1.png\" alt=\"Diamond Tennis Bracelet\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/jewelry/products/product-2.png\" alt=\"Close-up of Diamond Tennis Bracelet\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Effortlessly transition from day to night with our versatile diamond tennis bracelet. Whether paired with a casual outfit or a formal gown, it adds a touch of glamour and sophistication to any look. Treat yourself or someone special to this timeless piece that\'s destined to be cherished for years to come.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Exquisite Craftsmanship</h3>\n                        <img src=\"/storage/jewelry/products/product-3.png\" alt=\"Jewelry Workshop\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-7.png\",\"jewelry\\/products\\/product-1.png\"]','ME-197',0,12,0,1,0,2,0,0,872,114,NULL,NULL,13.00,18.00,18.00,669.00,NULL,43968,'2024-06-05 00:00:51','2024-06-05 00:00:51','in_stock',7,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(33,'Embellished Ballet Flats','Achieve a polished look with this tailored wool blazer, designed for a flattering fit and versatile enough for both work and casual outings.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Diamond Tennis Bracelet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Timeless Elegance</h3>\n                        <p>\n                            Elevate your style with our exquisite diamond tennis bracelet. Crafted with precision and attention to detail, each sparkling diamond is expertly set in lustrous white gold, creating a piece of jewelry that exudes sophistication and luxury. Whether worn alone or layered with other bracelets, this timeless accessory adds a touch of glamour to any ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Exceptional Quality</h3>\n                        <p>\n                            Our diamond tennis bracelet is crafted from the finest materials to ensure lasting beauty and brilliance. Each diamond is carefully selected for its clarity, cut, and color, resulting in a piece of jewelry that\'s truly exceptional. Indulge in luxury and elegance with this stunning bracelet that\'s sure to become a cherished heirloom.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/jewelry/products/product-1.png\" alt=\"Diamond Tennis Bracelet\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/jewelry/products/product-2.png\" alt=\"Close-up of Diamond Tennis Bracelet\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Effortlessly transition from day to night with our versatile diamond tennis bracelet. Whether paired with a casual outfit or a formal gown, it adds a touch of glamour and sophistication to any look. Treat yourself or someone special to this timeless piece that\'s destined to be cherished for years to come.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Exquisite Craftsmanship</h3>\n                        <img src=\"/storage/jewelry/products/product-3.png\" alt=\"Jewelry Workshop\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"jewelry\\/products\\/product-6.png\",\"jewelry\\/products\\/product-5.png\",\"jewelry\\/products\\/product-8.png\"]','HT-114',0,10,0,1,1,5,0,0,435,354,NULL,NULL,15.00,18.00,19.00,767.00,NULL,15878,'2024-06-05 00:00:51','2024-06-05 00:00:51','in_stock',6,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(34,'Pleated Midi Skirt','Stay cozy and chic in this knit turtleneck sweater, featuring a ribbed texture and a timeless design. Perfect for chilly days and nights.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Diamond Tennis Bracelet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Timeless Elegance</h3>\n                        <p>\n                            Elevate your style with our exquisite diamond tennis bracelet. Crafted with precision and attention to detail, each sparkling diamond is expertly set in lustrous white gold, creating a piece of jewelry that exudes sophistication and luxury. Whether worn alone or layered with other bracelets, this timeless accessory adds a touch of glamour to any ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Exceptional Quality</h3>\n                        <p>\n                            Our diamond tennis bracelet is crafted from the finest materials to ensure lasting beauty and brilliance. Each diamond is carefully selected for its clarity, cut, and color, resulting in a piece of jewelry that\'s truly exceptional. Indulge in luxury and elegance with this stunning bracelet that\'s sure to become a cherished heirloom.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/jewelry/products/product-1.png\" alt=\"Diamond Tennis Bracelet\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/jewelry/products/product-2.png\" alt=\"Close-up of Diamond Tennis Bracelet\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Effortlessly transition from day to night with our versatile diamond tennis bracelet. Whether paired with a casual outfit or a formal gown, it adds a touch of glamour and sophistication to any look. Treat yourself or someone special to this timeless piece that\'s destined to be cherished for years to come.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Exquisite Craftsmanship</h3>\n                        <img src=\"/storage/jewelry/products/product-3.png\" alt=\"Jewelry Workshop\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-4.png\",\"jewelry\\/products\\/product-2.png\"]','A1-136',0,14,0,1,1,2,0,0,1520,1417,NULL,NULL,12.00,13.00,11.00,787.00,NULL,30782,'2024-06-05 00:00:51','2024-06-05 00:00:51','in_stock',3,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(35,'Velour Tracksuit Set','Make a statement in this floral maxi dress, perfect for summer events or a casual day out. The flowy silhouette and vibrant print will turn heads wherever you go.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Diamond Tennis Bracelet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Timeless Elegance</h3>\n                        <p>\n                            Elevate your style with our exquisite diamond tennis bracelet. Crafted with precision and attention to detail, each sparkling diamond is expertly set in lustrous white gold, creating a piece of jewelry that exudes sophistication and luxury. Whether worn alone or layered with other bracelets, this timeless accessory adds a touch of glamour to any ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Exceptional Quality</h3>\n                        <p>\n                            Our diamond tennis bracelet is crafted from the finest materials to ensure lasting beauty and brilliance. Each diamond is carefully selected for its clarity, cut, and color, resulting in a piece of jewelry that\'s truly exceptional. Indulge in luxury and elegance with this stunning bracelet that\'s sure to become a cherished heirloom.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/jewelry/products/product-1.png\" alt=\"Diamond Tennis Bracelet\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/jewelry/products/product-2.png\" alt=\"Close-up of Diamond Tennis Bracelet\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Effortlessly transition from day to night with our versatile diamond tennis bracelet. Whether paired with a casual outfit or a formal gown, it adds a touch of glamour and sophistication to any look. Treat yourself or someone special to this timeless piece that\'s destined to be cherished for years to come.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Exquisite Craftsmanship</h3>\n                        <img src=\"/storage/jewelry/products/product-3.png\" alt=\"Jewelry Workshop\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"jewelry\\/products\\/product-8.png\",\"jewelry\\/products\\/product-6.png\",\"jewelry\\/products\\/product-7.png\"]','Q0-111',0,12,0,1,1,2,0,0,978,309,NULL,NULL,15.00,16.00,10.00,611.00,NULL,106124,'2024-06-05 00:00:51','2024-06-05 00:00:51','in_stock',7,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(36,'Geometric Patterned Cardigan (Digital)','Stay cozy and chic in this knit turtleneck sweater, featuring a ribbed texture and a timeless design. Perfect for chilly days and nights.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Diamond Tennis Bracelet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Timeless Elegance</h3>\n                        <p>\n                            Elevate your style with our exquisite diamond tennis bracelet. Crafted with precision and attention to detail, each sparkling diamond is expertly set in lustrous white gold, creating a piece of jewelry that exudes sophistication and luxury. Whether worn alone or layered with other bracelets, this timeless accessory adds a touch of glamour to any ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Exceptional Quality</h3>\n                        <p>\n                            Our diamond tennis bracelet is crafted from the finest materials to ensure lasting beauty and brilliance. Each diamond is carefully selected for its clarity, cut, and color, resulting in a piece of jewelry that\'s truly exceptional. Indulge in luxury and elegance with this stunning bracelet that\'s sure to become a cherished heirloom.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/jewelry/products/product-1.png\" alt=\"Diamond Tennis Bracelet\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/jewelry/products/product-2.png\" alt=\"Close-up of Diamond Tennis Bracelet\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Effortlessly transition from day to night with our versatile diamond tennis bracelet. Whether paired with a casual outfit or a formal gown, it adds a touch of glamour and sophistication to any look. Treat yourself or someone special to this timeless piece that\'s destined to be cherished for years to come.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Exquisite Craftsmanship</h3>\n                        <img src=\"/storage/jewelry/products/product-3.png\" alt=\"Jewelry Workshop\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"jewelry\\/products\\/product-6.png\",\"jewelry\\/products\\/product-8.png\",\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-7.png\",\"jewelry\\/products\\/product-2.png\"]','AU-105',0,12,0,1,1,2,0,0,1581,582,NULL,NULL,10.00,10.00,11.00,672.00,NULL,101630,'2024-06-05 00:00:51','2024-06-05 00:00:51','in_stock',6,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(37,'Buckle Detail Ankle Booties','Stay on trend with these high-waisted wide-leg trousers, combining comfort and sophistication. Pair them with heels for a refined look.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Diamond Tennis Bracelet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Timeless Elegance</h3>\n                        <p>\n                            Elevate your style with our exquisite diamond tennis bracelet. Crafted with precision and attention to detail, each sparkling diamond is expertly set in lustrous white gold, creating a piece of jewelry that exudes sophistication and luxury. Whether worn alone or layered with other bracelets, this timeless accessory adds a touch of glamour to any ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Exceptional Quality</h3>\n                        <p>\n                            Our diamond tennis bracelet is crafted from the finest materials to ensure lasting beauty and brilliance. Each diamond is carefully selected for its clarity, cut, and color, resulting in a piece of jewelry that\'s truly exceptional. Indulge in luxury and elegance with this stunning bracelet that\'s sure to become a cherished heirloom.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/jewelry/products/product-1.png\" alt=\"Diamond Tennis Bracelet\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/jewelry/products/product-2.png\" alt=\"Close-up of Diamond Tennis Bracelet\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Effortlessly transition from day to night with our versatile diamond tennis bracelet. Whether paired with a casual outfit or a formal gown, it adds a touch of glamour and sophistication to any look. Treat yourself or someone special to this timeless piece that\'s destined to be cherished for years to come.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Exquisite Craftsmanship</h3>\n                        <img src=\"/storage/jewelry/products/product-3.png\" alt=\"Jewelry Workshop\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"jewelry\\/products\\/product-5.png\",\"jewelry\\/products\\/product-8.png\",\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-7.png\",\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-6.png\",\"jewelry\\/products\\/product-4.png\"]','XI-162',0,20,0,1,0,5,0,0,1776,1413,NULL,NULL,11.00,17.00,17.00,534.00,NULL,150989,'2024-06-05 00:00:51','2024-06-05 00:00:51','in_stock',4,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(38,'Embroidered Bomber Jacket','Stay cozy and chic in this knit turtleneck sweater, featuring a ribbed texture and a timeless design. Perfect for chilly days and nights.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Diamond Tennis Bracelet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Timeless Elegance</h3>\n                        <p>\n                            Elevate your style with our exquisite diamond tennis bracelet. Crafted with precision and attention to detail, each sparkling diamond is expertly set in lustrous white gold, creating a piece of jewelry that exudes sophistication and luxury. Whether worn alone or layered with other bracelets, this timeless accessory adds a touch of glamour to any ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Exceptional Quality</h3>\n                        <p>\n                            Our diamond tennis bracelet is crafted from the finest materials to ensure lasting beauty and brilliance. Each diamond is carefully selected for its clarity, cut, and color, resulting in a piece of jewelry that\'s truly exceptional. Indulge in luxury and elegance with this stunning bracelet that\'s sure to become a cherished heirloom.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/jewelry/products/product-1.png\" alt=\"Diamond Tennis Bracelet\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/jewelry/products/product-2.png\" alt=\"Close-up of Diamond Tennis Bracelet\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Effortlessly transition from day to night with our versatile diamond tennis bracelet. Whether paired with a casual outfit or a formal gown, it adds a touch of glamour and sophistication to any look. Treat yourself or someone special to this timeless piece that\'s destined to be cherished for years to come.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Exquisite Craftsmanship</h3>\n                        <img src=\"/storage/jewelry/products/product-3.png\" alt=\"Jewelry Workshop\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"jewelry\\/products\\/product-5.png\",\"jewelry\\/products\\/product-7.png\",\"jewelry\\/products\\/product-4.png\"]','SM-168',0,18,0,1,0,1,0,0,867,127,NULL,NULL,19.00,14.00,17.00,647.00,NULL,186340,'2024-06-05 00:00:51','2024-06-05 00:00:51','in_stock',4,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(39,'Cowl Neck Knit Poncho','Accessorize with this bohemian fringe handbag, featuring intricate details and enough space for your essentials. The perfect boho-chic addition to your collection.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Diamond Tennis Bracelet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Timeless Elegance</h3>\n                        <p>\n                            Elevate your style with our exquisite diamond tennis bracelet. Crafted with precision and attention to detail, each sparkling diamond is expertly set in lustrous white gold, creating a piece of jewelry that exudes sophistication and luxury. Whether worn alone or layered with other bracelets, this timeless accessory adds a touch of glamour to any ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Exceptional Quality</h3>\n                        <p>\n                            Our diamond tennis bracelet is crafted from the finest materials to ensure lasting beauty and brilliance. Each diamond is carefully selected for its clarity, cut, and color, resulting in a piece of jewelry that\'s truly exceptional. Indulge in luxury and elegance with this stunning bracelet that\'s sure to become a cherished heirloom.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/jewelry/products/product-1.png\" alt=\"Diamond Tennis Bracelet\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/jewelry/products/product-2.png\" alt=\"Close-up of Diamond Tennis Bracelet\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Effortlessly transition from day to night with our versatile diamond tennis bracelet. Whether paired with a casual outfit or a formal gown, it adds a touch of glamour and sophistication to any look. Treat yourself or someone special to this timeless piece that\'s destined to be cherished for years to come.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Exquisite Craftsmanship</h3>\n                        <img src=\"/storage/jewelry/products/product-3.png\" alt=\"Jewelry Workshop\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-7.png\",\"jewelry\\/products\\/product-4.png\"]','SX-185',0,13,0,1,1,3,0,0,922,490,NULL,NULL,19.00,14.00,10.00,594.00,NULL,39061,'2024-06-05 00:00:51','2024-06-05 00:00:51','in_stock',4,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(40,'Chunky Knit Infinity Scarf (Digital)','Complete your look with these classic aviator sunglasses, offering a touch of timeless glamour and UV protection for your eyes.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Diamond Tennis Bracelet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Timeless Elegance</h3>\n                        <p>\n                            Elevate your style with our exquisite diamond tennis bracelet. Crafted with precision and attention to detail, each sparkling diamond is expertly set in lustrous white gold, creating a piece of jewelry that exudes sophistication and luxury. Whether worn alone or layered with other bracelets, this timeless accessory adds a touch of glamour to any ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Exceptional Quality</h3>\n                        <p>\n                            Our diamond tennis bracelet is crafted from the finest materials to ensure lasting beauty and brilliance. Each diamond is carefully selected for its clarity, cut, and color, resulting in a piece of jewelry that\'s truly exceptional. Indulge in luxury and elegance with this stunning bracelet that\'s sure to become a cherished heirloom.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/jewelry/products/product-1.png\" alt=\"Diamond Tennis Bracelet\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/jewelry/products/product-2.png\" alt=\"Close-up of Diamond Tennis Bracelet\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Effortlessly transition from day to night with our versatile diamond tennis bracelet. Whether paired with a casual outfit or a formal gown, it adds a touch of glamour and sophistication to any look. Treat yourself or someone special to this timeless piece that\'s destined to be cherished for years to come.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Exquisite Craftsmanship</h3>\n                        <img src=\"/storage/jewelry/products/product-3.png\" alt=\"Jewelry Workshop\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-7.png\",\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-8.png\",\"jewelry\\/products\\/product-5.png\",\"jewelry\\/products\\/product-4.png\"]','II-149',0,10,0,1,0,3,0,0,2091,1657,NULL,NULL,13.00,20.00,19.00,799.00,NULL,55598,'2024-06-05 00:00:51','2024-06-05 00:00:51','in_stock',8,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(41,'Retro High-Top Sneakers','Top off your look with this chic fedora hat, crafted with a classic silhouette and a timeless appeal. A must-have accessory for any fashion-forward wardrobe.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Diamond Tennis Bracelet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Timeless Elegance</h3>\n                        <p>\n                            Elevate your style with our exquisite diamond tennis bracelet. Crafted with precision and attention to detail, each sparkling diamond is expertly set in lustrous white gold, creating a piece of jewelry that exudes sophistication and luxury. Whether worn alone or layered with other bracelets, this timeless accessory adds a touch of glamour to any ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Exceptional Quality</h3>\n                        <p>\n                            Our diamond tennis bracelet is crafted from the finest materials to ensure lasting beauty and brilliance. Each diamond is carefully selected for its clarity, cut, and color, resulting in a piece of jewelry that\'s truly exceptional. Indulge in luxury and elegance with this stunning bracelet that\'s sure to become a cherished heirloom.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/jewelry/products/product-1.png\" alt=\"Diamond Tennis Bracelet\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/jewelry/products/product-2.png\" alt=\"Close-up of Diamond Tennis Bracelet\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Effortlessly transition from day to night with our versatile diamond tennis bracelet. Whether paired with a casual outfit or a formal gown, it adds a touch of glamour and sophistication to any look. Treat yourself or someone special to this timeless piece that\'s destined to be cherished for years to come.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Exquisite Craftsmanship</h3>\n                        <img src=\"/storage/jewelry/products/product-3.png\" alt=\"Jewelry Workshop\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-5.png\",\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-8.png\",\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-7.png\",\"jewelry\\/products\\/product-4.png\",\"jewelry\\/products\\/product-6.png\"]','V2-136',0,19,0,1,0,5,0,0,867,574,NULL,NULL,16.00,18.00,14.00,651.00,NULL,49936,'2024-06-05 00:00:51','2024-06-05 00:00:51','in_stock',2,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(42,'Faux Leather Leggings','Embrace bohemian vibes with this embroidered boho blouse, featuring intricate stitching and a relaxed fit. Perfect for a casual day with a touch of style.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Diamond Tennis Bracelet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Timeless Elegance</h3>\n                        <p>\n                            Elevate your style with our exquisite diamond tennis bracelet. Crafted with precision and attention to detail, each sparkling diamond is expertly set in lustrous white gold, creating a piece of jewelry that exudes sophistication and luxury. Whether worn alone or layered with other bracelets, this timeless accessory adds a touch of glamour to any ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Exceptional Quality</h3>\n                        <p>\n                            Our diamond tennis bracelet is crafted from the finest materials to ensure lasting beauty and brilliance. Each diamond is carefully selected for its clarity, cut, and color, resulting in a piece of jewelry that\'s truly exceptional. Indulge in luxury and elegance with this stunning bracelet that\'s sure to become a cherished heirloom.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/jewelry/products/product-1.png\" alt=\"Diamond Tennis Bracelet\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/jewelry/products/product-2.png\" alt=\"Close-up of Diamond Tennis Bracelet\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Effortlessly transition from day to night with our versatile diamond tennis bracelet. Whether paired with a casual outfit or a formal gown, it adds a touch of glamour and sophistication to any look. Treat yourself or someone special to this timeless piece that\'s destined to be cherished for years to come.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Exquisite Craftsmanship</h3>\n                        <img src=\"/storage/jewelry/products/product-3.png\" alt=\"Jewelry Workshop\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"jewelry\\/products\\/product-7.png\",\"jewelry\\/products\\/product-5.png\",\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-4.png\",\"jewelry\\/products\\/product-6.png\",\"jewelry\\/products\\/product-8.png\"]','OT-158-A1',0,12,0,1,1,1,0,0,1407,NULL,NULL,NULL,14.00,15.00,17.00,847.00,NULL,68954,'2024-06-05 00:00:51','2024-06-05 00:00:51','in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(43,'Metallic Pleated Maxi Skirt','Elevate your street style with this vintage denim jacket, featuring distressed detailing and a relaxed fit for a laid-back vibe.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Diamond Tennis Bracelet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Timeless Elegance</h3>\n                        <p>\n                            Elevate your style with our exquisite diamond tennis bracelet. Crafted with precision and attention to detail, each sparkling diamond is expertly set in lustrous white gold, creating a piece of jewelry that exudes sophistication and luxury. Whether worn alone or layered with other bracelets, this timeless accessory adds a touch of glamour to any ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Exceptional Quality</h3>\n                        <p>\n                            Our diamond tennis bracelet is crafted from the finest materials to ensure lasting beauty and brilliance. Each diamond is carefully selected for its clarity, cut, and color, resulting in a piece of jewelry that\'s truly exceptional. Indulge in luxury and elegance with this stunning bracelet that\'s sure to become a cherished heirloom.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/jewelry/products/product-1.png\" alt=\"Diamond Tennis Bracelet\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/jewelry/products/product-2.png\" alt=\"Close-up of Diamond Tennis Bracelet\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Effortlessly transition from day to night with our versatile diamond tennis bracelet. Whether paired with a casual outfit or a formal gown, it adds a touch of glamour and sophistication to any look. Treat yourself or someone special to this timeless piece that\'s destined to be cherished for years to come.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Exquisite Craftsmanship</h3>\n                        <img src=\"/storage/jewelry/products/product-3.png\" alt=\"Jewelry Workshop\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"jewelry\\/products\\/product-4.png\",\"jewelry\\/products\\/product-7.png\",\"jewelry\\/products\\/product-5.png\"]','QT-101-A1',0,12,0,1,1,4,0,0,1370,NULL,NULL,NULL,13.00,14.00,18.00,556.00,NULL,20944,'2024-06-05 00:00:51','2024-06-05 00:00:51','in_stock',6,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(44,'Floral Maxi Dress',NULL,NULL,'published','[\"jewelry\\/products\\/product-7.png\"]','CR-168-A1',0,14,0,1,0,2,1,0,764,NULL,NULL,NULL,16.00,19.00,20.00,898.00,NULL,0,'2024-06-05 00:00:51','2024-06-05 00:00:51','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL),(45,'Knit Turtleneck Sweater (Digital)',NULL,NULL,'published','[\"jewelry\\/products\\/product-4.png\"]','MK-126-A1',0,17,0,1,0,3,1,0,1742,1567.8,NULL,NULL,14.00,17.00,11.00,676.00,NULL,0,'2024-06-05 00:00:51','2024-06-05 00:00:51','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,NULL,NULL),(46,'Knit Turtleneck Sweater (Digital)',NULL,NULL,'published','[\"jewelry\\/products\\/product-3.png\"]','MK-126-A1-A2',0,17,0,1,0,3,1,0,1742,1358.76,NULL,NULL,14.00,17.00,11.00,676.00,NULL,0,'2024-06-05 00:00:51','2024-06-05 00:00:51','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(47,'Knit Turtleneck Sweater (Digital)',NULL,NULL,'published','[\"jewelry\\/products\\/product-1.png\"]','MK-126-A1-A3',0,17,0,1,0,3,1,0,1742,1219.4,NULL,NULL,14.00,17.00,11.00,676.00,NULL,0,'2024-06-05 00:00:51','2024-06-05 00:00:51','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(48,'Classic Aviator Sunglasses',NULL,NULL,'published','[\"jewelry\\/products\\/product-3.png\"]','VI-153-A1',0,16,0,1,0,2,1,0,1100,NULL,NULL,NULL,14.00,15.00,19.00,888.00,NULL,0,'2024-06-05 00:00:51','2024-06-05 00:00:51','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL),(49,'Classic Aviator Sunglasses',NULL,NULL,'published','[\"jewelry\\/products\\/product-6.png\"]','VI-153-A1-A2',0,16,0,1,0,2,1,0,1100,NULL,NULL,NULL,14.00,15.00,19.00,888.00,NULL,0,'2024-06-05 00:00:51','2024-06-05 00:00:51','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(50,'Tailored Wool Blazer',NULL,NULL,'published','[\"jewelry\\/products\\/product-8.png\"]','2L-126-A1',0,12,0,1,0,2,1,0,752,NULL,NULL,NULL,13.00,19.00,18.00,533.00,NULL,0,'2024-06-05 00:00:51','2024-06-05 00:00:51','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL),(51,'Bohemian Fringe Handbag',NULL,NULL,'published','[\"jewelry\\/products\\/product-7.png\"]','KB-188-A1',0,16,0,1,0,4,1,0,468,NULL,NULL,NULL,12.00,17.00,15.00,883.00,NULL,0,'2024-06-05 00:00:51','2024-06-05 00:00:51','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL),(52,'Bohemian Fringe Handbag',NULL,NULL,'published','[\"jewelry\\/products\\/product-1.png\"]','KB-188-A1-A2',0,16,0,1,0,4,1,0,468,NULL,NULL,NULL,12.00,17.00,15.00,883.00,NULL,0,'2024-06-05 00:00:51','2024-06-05 00:00:51','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(53,'Bohemian Fringe Handbag',NULL,NULL,'published','[\"jewelry\\/products\\/product-8.png\"]','KB-188-A1-A3',0,16,0,1,0,4,1,0,468,NULL,NULL,NULL,12.00,17.00,15.00,883.00,NULL,0,'2024-06-05 00:00:51','2024-06-05 00:00:51','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(54,'Bohemian Fringe Handbag',NULL,NULL,'published','[\"jewelry\\/products\\/product-5.png\"]','KB-188-A1-A4',0,16,0,1,0,4,1,0,468,NULL,NULL,NULL,12.00,17.00,15.00,883.00,NULL,0,'2024-06-05 00:00:51','2024-06-05 00:00:51','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(55,'Silk Scarf with Geometric Print (Digital)',NULL,NULL,'published','[\"jewelry\\/products\\/product-8.png\"]','CS-116-A1',0,18,0,1,0,1,1,0,2389,1863.42,NULL,NULL,15.00,12.00,12.00,799.00,NULL,0,'2024-06-05 00:00:51','2024-06-05 00:00:51','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,NULL,NULL),(56,'Silk Scarf with Geometric Print (Digital)',NULL,NULL,'published','[\"jewelry\\/products\\/product-4.png\"]','CS-116-A1-A2',0,18,0,1,0,1,1,0,2389,2054.54,NULL,NULL,15.00,12.00,12.00,799.00,NULL,0,'2024-06-05 00:00:51','2024-06-05 00:00:51','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(57,'Silk Scarf with Geometric Print (Digital)',NULL,NULL,'published','[\"jewelry\\/products\\/product-3.png\"]','CS-116-A1-A3',0,18,0,1,0,1,1,0,2389,1791.75,NULL,NULL,15.00,12.00,12.00,799.00,NULL,0,'2024-06-05 00:00:51','2024-06-05 00:00:51','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(58,'Statement Chunky Necklace',NULL,NULL,'published','[\"jewelry\\/products\\/product-3.png\"]','LK-150-A1',0,19,0,1,0,2,1,0,2404,NULL,NULL,NULL,13.00,20.00,14.00,726.00,NULL,0,'2024-06-05 00:00:51','2024-06-05 00:00:51','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL),(59,'Statement Chunky Necklace',NULL,NULL,'published','[\"jewelry\\/products\\/product-4.png\"]','LK-150-A1-A2',0,19,0,1,0,2,1,0,2404,NULL,NULL,NULL,13.00,20.00,14.00,726.00,NULL,0,'2024-06-05 00:00:51','2024-06-05 00:00:51','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(60,'Chic Fedora Hat (Digital)',NULL,NULL,'published','[\"jewelry\\/products\\/product-4.png\"]','76-186-A1',0,19,0,1,0,1,1,0,493,433.84,NULL,NULL,16.00,18.00,16.00,728.00,NULL,0,'2024-06-05 00:00:51','2024-06-05 00:00:51','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,NULL,NULL),(61,'Chic Fedora Hat (Digital)',NULL,NULL,'published','[\"jewelry\\/products\\/product-5.png\"]','76-186-A1-A2',0,19,0,1,0,1,1,0,493,443.7,NULL,NULL,16.00,18.00,16.00,728.00,NULL,0,'2024-06-05 00:00:51','2024-06-05 00:00:51','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(62,'Chic Fedora Hat (Digital)',NULL,NULL,'published','[\"jewelry\\/products\\/product-6.png\"]','76-186-A1-A3',0,19,0,1,0,1,1,0,493,419.05,NULL,NULL,16.00,18.00,16.00,728.00,NULL,0,'2024-06-05 00:00:51','2024-06-05 00:00:51','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(63,'Chic Fedora Hat (Digital)',NULL,NULL,'published','[\"jewelry\\/products\\/product-3.png\"]','76-186-A1-A4',0,19,0,1,0,1,1,0,493,379.61,NULL,NULL,16.00,18.00,16.00,728.00,NULL,0,'2024-06-05 00:00:51','2024-06-05 00:00:51','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(64,'Strappy Block Heel Sandals',NULL,NULL,'published','[\"jewelry\\/products\\/product-2.png\"]','XS-152-A1',0,10,0,1,0,1,1,0,1877,NULL,NULL,NULL,18.00,19.00,13.00,714.00,NULL,0,'2024-06-05 00:00:51','2024-06-05 00:00:51','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL),(65,'Strappy Block Heel Sandals',NULL,NULL,'published','[\"jewelry\\/products\\/product-1.png\"]','XS-152-A1-A2',0,10,0,1,0,1,1,0,1877,NULL,NULL,NULL,18.00,19.00,13.00,714.00,NULL,0,'2024-06-05 00:00:51','2024-06-05 00:00:51','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(66,'Strappy Block Heel Sandals',NULL,NULL,'published','[\"jewelry\\/products\\/product-7.png\"]','XS-152-A1-A3',0,10,0,1,0,1,1,0,1877,NULL,NULL,NULL,18.00,19.00,13.00,714.00,NULL,0,'2024-06-05 00:00:51','2024-06-05 00:00:51','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(67,'Velvet Evening Gown',NULL,NULL,'published','[\"jewelry\\/products\\/product-6.png\"]','X3-140-A1',0,12,0,1,0,3,1,0,568,NULL,NULL,NULL,15.00,19.00,19.00,717.00,NULL,0,'2024-06-05 00:00:51','2024-06-05 00:00:51','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL),(68,'Velvet Evening Gown',NULL,NULL,'published','[\"jewelry\\/products\\/product-4.png\"]','X3-140-A1-A2',0,12,0,1,0,3,1,0,568,NULL,NULL,NULL,15.00,19.00,19.00,717.00,NULL,0,'2024-06-05 00:00:51','2024-06-05 00:00:51','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(69,'Velvet Evening Gown',NULL,NULL,'published','[\"jewelry\\/products\\/product-3.png\"]','X3-140-A1-A3',0,12,0,1,0,3,1,0,568,NULL,NULL,NULL,15.00,19.00,19.00,717.00,NULL,0,'2024-06-05 00:00:51','2024-06-05 00:00:51','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(70,'Quilted Crossbody Bag',NULL,NULL,'published','[\"jewelry\\/products\\/product-1.png\"]','N3-180-A1',0,15,0,1,0,1,1,0,2411,NULL,NULL,NULL,16.00,18.00,19.00,862.00,NULL,0,'2024-06-05 00:00:51','2024-06-05 00:00:51','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL),(71,'Quilted Crossbody Bag',NULL,NULL,'published','[\"jewelry\\/products\\/product-3.png\"]','N3-180-A1-A2',0,15,0,1,0,1,1,0,2411,NULL,NULL,NULL,16.00,18.00,19.00,862.00,NULL,0,'2024-06-05 00:00:51','2024-06-05 00:00:51','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(72,'Quilted Crossbody Bag',NULL,NULL,'published','[\"jewelry\\/products\\/product-5.png\"]','N3-180-A1-A3',0,15,0,1,0,1,1,0,2411,NULL,NULL,NULL,16.00,18.00,19.00,862.00,NULL,0,'2024-06-05 00:00:51','2024-06-05 00:00:51','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(73,'Printed Palazzo Pants',NULL,NULL,'published','[\"jewelry\\/products\\/product-1.png\"]','GI-161-A1',0,15,0,1,0,1,1,0,1086,NULL,NULL,NULL,20.00,13.00,14.00,631.00,NULL,0,'2024-06-05 00:00:51','2024-06-05 00:00:51','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL),(74,'Printed Palazzo Pants',NULL,NULL,'published','[\"jewelry\\/products\\/product-6.png\"]','GI-161-A1-A2',0,15,0,1,0,1,1,0,1086,NULL,NULL,NULL,20.00,13.00,14.00,631.00,NULL,0,'2024-06-05 00:00:51','2024-06-05 00:00:51','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(75,'Printed Palazzo Pants',NULL,NULL,'published','[\"jewelry\\/products\\/product-4.png\"]','GI-161-A1-A3',0,15,0,1,0,1,1,0,1086,NULL,NULL,NULL,20.00,13.00,14.00,631.00,NULL,0,'2024-06-05 00:00:51','2024-06-05 00:00:51','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(76,'Structured Satchel Bag (Digital)',NULL,NULL,'published','[\"jewelry\\/products\\/product-7.png\"]','OJ-179-A1',0,10,0,1,0,5,1,0,2034,1667.88,NULL,NULL,15.00,11.00,19.00,640.00,NULL,0,'2024-06-05 00:00:51','2024-06-05 00:00:51','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,NULL,NULL),(77,'Structured Satchel Bag (Digital)',NULL,NULL,'published','[\"jewelry\\/products\\/product-1.png\"]','OJ-179-A1-A2',0,10,0,1,0,5,1,0,2034,1728.9,NULL,NULL,15.00,11.00,19.00,640.00,NULL,0,'2024-06-05 00:00:51','2024-06-05 00:00:51','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(78,'Structured Satchel Bag (Digital)',NULL,NULL,'published','[\"jewelry\\/products\\/product-3.png\"]','OJ-179-A1-A3',0,10,0,1,0,5,1,0,2034,1728.9,NULL,NULL,15.00,11.00,19.00,640.00,NULL,0,'2024-06-05 00:00:51','2024-06-05 00:00:51','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(79,'Structured Satchel Bag (Digital)',NULL,NULL,'published','[\"jewelry\\/products\\/product-6.png\"]','OJ-179-A1-A4',0,10,0,1,0,5,1,0,2034,1728.9,NULL,NULL,15.00,11.00,19.00,640.00,NULL,0,'2024-06-05 00:00:51','2024-06-05 00:00:51','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(80,'Structured Satchel Bag (Digital)',NULL,NULL,'published','[\"jewelry\\/products\\/product-5.png\"]','OJ-179-A1-A5',0,10,0,1,0,5,1,0,2034,1505.16,NULL,NULL,15.00,11.00,19.00,640.00,NULL,0,'2024-06-05 00:00:51','2024-06-05 00:00:51','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(81,'Off-Shoulder Ruffle Top',NULL,NULL,'published','[\"jewelry\\/products\\/product-3.png\"]','DM-184-A1',0,16,0,1,0,5,1,0,2218,NULL,NULL,NULL,20.00,11.00,20.00,595.00,NULL,0,'2024-06-05 00:00:51','2024-06-05 00:00:51','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL),(82,'Off-Shoulder Ruffle Top',NULL,NULL,'published','[\"jewelry\\/products\\/product-1.png\"]','DM-184-A1-A2',0,16,0,1,0,5,1,0,2218,NULL,NULL,NULL,20.00,11.00,20.00,595.00,NULL,0,'2024-06-05 00:00:51','2024-06-05 00:00:51','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(83,'Suede Pointed-Toe Pumps',NULL,NULL,'published','[\"jewelry\\/products\\/product-2.png\"]','2M-173-A1',0,12,0,1,0,5,1,0,1614,NULL,NULL,NULL,10.00,20.00,16.00,502.00,NULL,0,'2024-06-05 00:00:51','2024-06-05 00:00:51','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL),(84,'Suede Pointed-Toe Pumps',NULL,NULL,'published','[\"jewelry\\/products\\/product-1.png\"]','2M-173-A1-A2',0,12,0,1,0,5,1,0,1614,NULL,NULL,NULL,10.00,20.00,16.00,502.00,NULL,0,'2024-06-05 00:00:51','2024-06-05 00:00:51','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(85,'Suede Pointed-Toe Pumps',NULL,NULL,'published','[\"jewelry\\/products\\/product-5.png\"]','2M-173-A1-A3',0,12,0,1,0,5,1,0,1614,NULL,NULL,NULL,10.00,20.00,16.00,502.00,NULL,0,'2024-06-05 00:00:51','2024-06-05 00:00:51','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(86,'Faux Fur Trimmed Coat',NULL,NULL,'published','[\"jewelry\\/products\\/product-8.png\"]','TF-129-A1',0,18,0,1,0,4,1,0,800,NULL,NULL,NULL,19.00,12.00,19.00,536.00,NULL,0,'2024-06-05 00:00:51','2024-06-05 00:00:51','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL),(87,'Faux Fur Trimmed Coat',NULL,NULL,'published','[\"jewelry\\/products\\/product-5.png\"]','TF-129-A1-A2',0,18,0,1,0,4,1,0,800,NULL,NULL,NULL,19.00,12.00,19.00,536.00,NULL,0,'2024-06-05 00:00:51','2024-06-05 00:00:51','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(88,'Boho Fringed Kimono (Digital)',NULL,NULL,'published','[\"jewelry\\/products\\/product-2.png\"]','PF-100-A1',0,15,0,1,0,2,1,0,768,675.84,NULL,NULL,13.00,16.00,17.00,787.00,NULL,0,'2024-06-05 00:00:51','2024-06-05 00:00:51','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,NULL,NULL),(89,'Boho Fringed Kimono (Digital)',NULL,NULL,'published','[\"jewelry\\/products\\/product-1.png\"]','PF-100-A1-A2',0,15,0,1,0,2,1,0,768,560.64,NULL,NULL,13.00,16.00,17.00,787.00,NULL,0,'2024-06-05 00:00:51','2024-06-05 00:00:51','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(90,'Faux Leather Leggings',NULL,NULL,'published','[\"jewelry\\/products\\/product-5.png\"]','OT-158-A1',0,12,0,1,0,1,1,0,1407,NULL,NULL,NULL,14.00,15.00,17.00,847.00,NULL,0,'2024-06-05 00:00:51','2024-06-05 00:00:51','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL),(91,'Faux Leather Leggings',NULL,NULL,'published','[\"jewelry\\/products\\/product-2.png\"]','OT-158-A1-A2',0,12,0,1,0,1,1,0,1407,NULL,NULL,NULL,14.00,15.00,17.00,847.00,NULL,0,'2024-06-05 00:00:51','2024-06-05 00:00:51','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(92,'Faux Leather Leggings',NULL,NULL,'published','[\"jewelry\\/products\\/product-3.png\"]','OT-158-A1-A3',0,12,0,1,0,1,1,0,1407,NULL,NULL,NULL,14.00,15.00,17.00,847.00,NULL,0,'2024-06-05 00:00:51','2024-06-05 00:00:51','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(93,'Metallic Pleated Maxi Skirt',NULL,NULL,'published','[\"jewelry\\/products\\/product-7.png\"]','QT-101-A1',0,12,0,1,0,4,1,0,1370,NULL,NULL,NULL,13.00,14.00,18.00,556.00,NULL,0,'2024-06-05 00:00:51','2024-06-05 00:00:51','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL),(94,'Metallic Pleated Maxi Skirt',NULL,NULL,'published','[\"jewelry\\/products\\/product-5.png\"]','QT-101-A1-A2',0,12,0,1,0,4,1,0,1370,NULL,NULL,NULL,13.00,14.00,18.00,556.00,NULL,0,'2024-06-05 00:00:51','2024-06-05 00:00:51','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(95,'Metallic Pleated Maxi Skirt',NULL,NULL,'published','[\"jewelry\\/products\\/product-4.png\"]','QT-101-A1-A3',0,12,0,1,0,4,1,0,1370,NULL,NULL,NULL,13.00,14.00,18.00,556.00,NULL,0,'2024-06-05 00:00:51','2024-06-05 00:00:51','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(96,'Metallic Pleated Maxi Skirt',NULL,NULL,'published','[\"jewelry\\/products\\/product-4.png\"]','QT-101-A1-A4',0,12,0,1,0,4,1,0,1370,NULL,NULL,NULL,13.00,14.00,18.00,556.00,NULL,0,'2024-06-05 00:00:51','2024-06-05 00:00:51','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0);
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
INSERT INTO `ec_reviews` VALUES (1,10,NULL,NULL,23,4.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-4.png\"]'),(2,7,NULL,NULL,32,3.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-6.png\",\"jewelry\\/products\\/product-8.png\"]'),(3,4,NULL,NULL,39,5.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-6.png\"]'),(4,9,NULL,NULL,41,4.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-8.png\"]'),(5,3,NULL,NULL,16,1.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-7.png\"]'),(6,3,NULL,NULL,4,5.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-4.png\",\"jewelry\\/products\\/product-6.png\",\"jewelry\\/products\\/product-7.png\"]'),(7,1,NULL,NULL,32,4.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-4.png\",\"jewelry\\/products\\/product-5.png\",\"jewelry\\/products\\/product-6.png\",\"jewelry\\/products\\/product-7.png\"]'),(8,1,NULL,NULL,31,2.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-7.png\"]'),(9,7,NULL,NULL,21,3.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-6.png\",\"jewelry\\/products\\/product-8.png\"]'),(10,5,NULL,NULL,11,2.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-7.png\"]'),(11,7,NULL,NULL,38,5.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-5.png\",\"jewelry\\/products\\/product-7.png\"]'),(12,2,NULL,NULL,24,5.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-4.png\"]'),(13,7,NULL,NULL,22,4.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-6.png\",\"jewelry\\/products\\/product-8.png\"]'),(14,3,NULL,NULL,2,2.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-8.png\"]'),(15,5,NULL,NULL,31,2.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-4.png\",\"jewelry\\/products\\/product-7.png\"]'),(17,2,NULL,NULL,17,2.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-5.png\"]'),(18,9,NULL,NULL,34,1.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-6.png\"]'),(19,3,NULL,NULL,28,4.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-5.png\",\"jewelry\\/products\\/product-6.png\"]'),(20,3,NULL,NULL,34,5.00,'Good app, good backup service and support. Good documentation.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-5.png\"]'),(21,8,NULL,NULL,24,3.00,'Good app, good backup service and support. Good documentation.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-7.png\"]'),(22,6,NULL,NULL,15,2.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-4.png\",\"jewelry\\/products\\/product-6.png\"]'),(23,10,NULL,NULL,19,4.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\"]'),(24,4,NULL,NULL,5,1.00,'Best ecommerce CMS online store!','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-4.png\",\"jewelry\\/products\\/product-5.png\",\"jewelry\\/products\\/product-6.png\"]'),(25,10,NULL,NULL,20,5.00,'Best ecommerce CMS online store!','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-5.png\",\"jewelry\\/products\\/product-7.png\",\"jewelry\\/products\\/product-8.png\"]'),(26,7,NULL,NULL,27,5.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-7.png\"]'),(27,8,NULL,NULL,31,4.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-6.png\"]'),(28,9,NULL,NULL,36,3.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-6.png\"]'),(29,9,NULL,NULL,29,3.00,'Best ecommerce CMS online store!','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-4.png\",\"jewelry\\/products\\/product-5.png\",\"jewelry\\/products\\/product-7.png\"]'),(30,5,NULL,NULL,3,5.00,'Good app, good backup service and support. Good documentation.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-5.png\"]'),(31,9,NULL,NULL,7,4.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-2.png\"]'),(32,4,NULL,NULL,24,3.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-7.png\"]'),(33,3,NULL,NULL,29,5.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-5.png\",\"jewelry\\/products\\/product-7.png\"]'),(34,10,NULL,NULL,29,3.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-5.png\",\"jewelry\\/products\\/product-8.png\"]'),(35,6,NULL,NULL,28,2.00,'Clean & perfect source code','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-4.png\",\"jewelry\\/products\\/product-8.png\"]'),(36,4,NULL,NULL,42,3.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-4.png\",\"jewelry\\/products\\/product-5.png\"]'),(37,7,NULL,NULL,24,5.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-8.png\"]'),(38,2,NULL,NULL,39,2.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-6.png\"]'),(39,7,NULL,NULL,26,2.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-4.png\",\"jewelry\\/products\\/product-6.png\"]'),(40,1,NULL,NULL,12,4.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-4.png\",\"jewelry\\/products\\/product-8.png\"]'),(41,7,NULL,NULL,17,2.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\"]'),(42,9,NULL,NULL,30,3.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-8.png\"]'),(43,9,NULL,NULL,21,5.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-5.png\",\"jewelry\\/products\\/product-8.png\"]'),(44,4,NULL,NULL,16,1.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-7.png\"]'),(45,8,NULL,NULL,21,3.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-5.png\",\"jewelry\\/products\\/product-6.png\"]'),(48,4,NULL,NULL,6,3.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-6.png\"]'),(49,3,NULL,NULL,14,4.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-4.png\",\"jewelry\\/products\\/product-8.png\"]'),(50,2,NULL,NULL,2,4.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-5.png\",\"jewelry\\/products\\/product-8.png\"]'),(51,3,NULL,NULL,37,3.00,'Good app, good backup service and support. Good documentation.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-8.png\"]'),(53,5,NULL,NULL,8,2.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-4.png\",\"jewelry\\/products\\/product-7.png\"]'),(54,7,NULL,NULL,10,4.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-5.png\",\"jewelry\\/products\\/product-7.png\"]'),(55,4,NULL,NULL,11,5.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-4.png\",\"jewelry\\/products\\/product-5.png\"]'),(56,1,NULL,NULL,40,3.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-4.png\",\"jewelry\\/products\\/product-5.png\",\"jewelry\\/products\\/product-6.png\"]'),(57,8,NULL,NULL,1,4.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-5.png\"]'),(58,3,NULL,NULL,27,2.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-4.png\"]'),(59,10,NULL,NULL,13,5.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-4.png\",\"jewelry\\/products\\/product-6.png\",\"jewelry\\/products\\/product-7.png\",\"jewelry\\/products\\/product-8.png\"]'),(60,2,NULL,NULL,6,3.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-4.png\",\"jewelry\\/products\\/product-6.png\",\"jewelry\\/products\\/product-7.png\"]'),(61,10,NULL,NULL,34,2.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-4.png\",\"jewelry\\/products\\/product-7.png\",\"jewelry\\/products\\/product-8.png\"]'),(64,9,NULL,NULL,10,4.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-5.png\"]'),(65,10,NULL,NULL,27,4.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-2.png\"]'),(66,5,NULL,NULL,9,2.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-7.png\"]'),(68,10,NULL,NULL,40,3.00,'Good app, good backup service and support. Good documentation.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-4.png\",\"jewelry\\/products\\/product-6.png\"]'),(69,4,NULL,NULL,25,5.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-3.png\"]'),(70,5,NULL,NULL,19,1.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-5.png\",\"jewelry\\/products\\/product-6.png\"]'),(71,4,NULL,NULL,9,3.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-6.png\"]'),(72,1,NULL,NULL,19,4.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-2.png\"]'),(73,4,NULL,NULL,3,4.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-6.png\"]'),(74,8,NULL,NULL,10,1.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-2.png\"]'),(77,5,NULL,NULL,42,5.00,'Clean & perfect source code','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-5.png\"]'),(79,10,NULL,NULL,38,2.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-5.png\",\"jewelry\\/products\\/product-6.png\",\"jewelry\\/products\\/product-8.png\"]'),(81,4,NULL,NULL,27,3.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-4.png\",\"jewelry\\/products\\/product-5.png\",\"jewelry\\/products\\/product-6.png\"]'),(82,10,NULL,NULL,30,2.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-4.png\",\"jewelry\\/products\\/product-8.png\"]'),(83,3,NULL,NULL,13,4.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\"]'),(84,3,NULL,NULL,3,2.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-4.png\",\"jewelry\\/products\\/product-6.png\"]'),(85,7,NULL,NULL,5,4.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-4.png\"]'),(87,2,NULL,NULL,36,1.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-7.png\"]'),(88,7,NULL,NULL,42,5.00,'Best ecommerce CMS online store!','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-6.png\"]'),(89,5,NULL,NULL,37,3.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\"]'),(91,8,NULL,NULL,4,2.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-4.png\",\"jewelry\\/products\\/product-7.png\"]'),(92,4,NULL,NULL,35,3.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-4.png\",\"jewelry\\/products\\/product-6.png\"]'),(93,2,NULL,NULL,28,5.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-6.png\",\"jewelry\\/products\\/product-7.png\",\"jewelry\\/products\\/product-8.png\"]'),(94,7,NULL,NULL,18,4.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-4.png\",\"jewelry\\/products\\/product-6.png\",\"jewelry\\/products\\/product-8.png\"]'),(95,3,NULL,NULL,31,3.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-7.png\"]'),(96,5,NULL,NULL,38,3.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-8.png\"]'),(97,8,NULL,NULL,41,2.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-8.png\"]'),(98,8,NULL,NULL,22,3.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-5.png\",\"jewelry\\/products\\/product-8.png\"]'),(99,8,NULL,NULL,5,5.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-5.png\"]'),(100,4,NULL,NULL,8,2.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-4.png\"]'),(101,5,NULL,NULL,32,3.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-4.png\",\"jewelry\\/products\\/product-7.png\"]'),(102,1,NULL,NULL,17,1.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-6.png\"]'),(103,4,NULL,NULL,38,4.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-4.png\"]'),(104,4,NULL,NULL,22,5.00,'Clean & perfect source code','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-4.png\",\"jewelry\\/products\\/product-6.png\"]'),(106,2,NULL,NULL,41,4.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-4.png\",\"jewelry\\/products\\/product-8.png\"]'),(107,5,NULL,NULL,24,2.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-6.png\"]'),(108,3,NULL,NULL,21,4.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-6.png\",\"jewelry\\/products\\/product-8.png\"]'),(109,4,NULL,NULL,12,5.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-8.png\"]'),(110,4,NULL,NULL,26,5.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\"]'),(111,4,NULL,NULL,14,2.00,'Good app, good backup service and support. Good documentation.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-4.png\",\"jewelry\\/products\\/product-7.png\"]'),(116,5,NULL,NULL,22,2.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-4.png\",\"jewelry\\/products\\/product-5.png\"]'),(118,10,NULL,NULL,33,2.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-5.png\",\"jewelry\\/products\\/product-6.png\"]'),(119,9,NULL,NULL,20,3.00,'Good app, good backup service and support. Good documentation.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-4.png\",\"jewelry\\/products\\/product-5.png\"]'),(121,5,NULL,NULL,26,5.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-6.png\",\"jewelry\\/products\\/product-7.png\"]'),(124,8,NULL,NULL,28,3.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-6.png\"]'),(125,5,NULL,NULL,43,3.00,'Clean & perfect source code','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-5.png\",\"jewelry\\/products\\/product-6.png\",\"jewelry\\/products\\/product-8.png\"]'),(126,9,NULL,NULL,11,1.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-4.png\",\"jewelry\\/products\\/product-7.png\"]'),(127,2,NULL,NULL,30,3.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-4.png\",\"jewelry\\/products\\/product-8.png\"]'),(128,7,NULL,NULL,30,2.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-6.png\"]'),(129,7,NULL,NULL,3,3.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\"]'),(130,9,NULL,NULL,27,5.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-4.png\"]'),(131,3,NULL,NULL,23,4.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-4.png\",\"jewelry\\/products\\/product-6.png\",\"jewelry\\/products\\/product-8.png\"]'),(132,4,NULL,NULL,13,3.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-4.png\",\"jewelry\\/products\\/product-8.png\"]'),(134,8,NULL,NULL,3,1.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-6.png\",\"jewelry\\/products\\/product-7.png\"]'),(135,3,NULL,NULL,6,3.00,'Good app, good backup service and support. Good documentation.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-8.png\"]'),(136,4,NULL,NULL,29,1.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-5.png\",\"jewelry\\/products\\/product-6.png\",\"jewelry\\/products\\/product-7.png\"]'),(137,3,NULL,NULL,17,4.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-5.png\",\"jewelry\\/products\\/product-6.png\",\"jewelry\\/products\\/product-7.png\",\"jewelry\\/products\\/product-8.png\"]'),(138,1,NULL,NULL,36,3.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-4.png\",\"jewelry\\/products\\/product-6.png\"]'),(139,6,NULL,NULL,43,4.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-4.png\",\"jewelry\\/products\\/product-7.png\"]'),(140,10,NULL,NULL,15,3.00,'Clean & perfect source code','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-6.png\"]'),(141,6,NULL,NULL,33,2.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-5.png\",\"jewelry\\/products\\/product-7.png\"]'),(142,5,NULL,NULL,34,2.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\"]'),(143,10,NULL,NULL,39,1.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-5.png\",\"jewelry\\/products\\/product-7.png\"]'),(144,2,NULL,NULL,3,3.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-6.png\",\"jewelry\\/products\\/product-7.png\",\"jewelry\\/products\\/product-8.png\"]'),(145,9,NULL,NULL,40,1.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-5.png\",\"jewelry\\/products\\/product-8.png\"]'),(149,2,NULL,NULL,33,1.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-6.png\"]'),(154,4,NULL,NULL,7,1.00,'Clean & perfect source code','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-4.png\",\"jewelry\\/products\\/product-5.png\"]'),(155,6,NULL,NULL,8,5.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-5.png\",\"jewelry\\/products\\/product-6.png\",\"jewelry\\/products\\/product-7.png\"]'),(156,10,NULL,NULL,11,5.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-4.png\",\"jewelry\\/products\\/product-6.png\"]'),(157,3,NULL,NULL,30,1.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-7.png\"]'),(158,8,NULL,NULL,26,2.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-5.png\",\"jewelry\\/products\\/product-6.png\",\"jewelry\\/products\\/product-8.png\"]'),(159,2,NULL,NULL,13,3.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-5.png\",\"jewelry\\/products\\/product-6.png\",\"jewelry\\/products\\/product-8.png\"]'),(160,1,NULL,NULL,10,2.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-6.png\"]'),(161,6,NULL,NULL,26,3.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-3.png\"]'),(164,1,NULL,NULL,26,3.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-5.png\",\"jewelry\\/products\\/product-7.png\"]'),(165,8,NULL,NULL,30,4.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-5.png\",\"jewelry\\/products\\/product-6.png\",\"jewelry\\/products\\/product-8.png\"]'),(166,3,NULL,NULL,24,5.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-4.png\",\"jewelry\\/products\\/product-5.png\"]'),(168,7,NULL,NULL,33,2.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-4.png\"]'),(169,10,NULL,NULL,9,4.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-4.png\",\"jewelry\\/products\\/product-7.png\"]'),(171,5,NULL,NULL,13,1.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\"]'),(172,2,NULL,NULL,16,3.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-5.png\",\"jewelry\\/products\\/product-7.png\"]'),(173,3,NULL,NULL,20,4.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-4.png\"]'),(176,6,NULL,NULL,31,1.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-4.png\",\"jewelry\\/products\\/product-5.png\",\"jewelry\\/products\\/product-7.png\"]'),(177,4,NULL,NULL,40,3.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-5.png\",\"jewelry\\/products\\/product-6.png\",\"jewelry\\/products\\/product-7.png\",\"jewelry\\/products\\/product-8.png\"]'),(178,8,NULL,NULL,13,3.00,'Good app, good backup service and support. Good documentation.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-6.png\",\"jewelry\\/products\\/product-7.png\"]'),(179,9,NULL,NULL,19,2.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-7.png\"]'),(180,5,NULL,NULL,5,1.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-7.png\",\"jewelry\\/products\\/product-8.png\"]'),(181,10,NULL,NULL,21,2.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-2.png\"]'),(182,2,NULL,NULL,42,4.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-6.png\",\"jewelry\\/products\\/product-8.png\"]'),(183,9,NULL,NULL,18,5.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-7.png\"]'),(185,6,NULL,NULL,16,3.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-7.png\"]'),(187,1,NULL,NULL,15,5.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\"]'),(189,1,NULL,NULL,9,4.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\"]'),(190,7,NULL,NULL,28,2.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-5.png\"]'),(193,6,NULL,NULL,1,1.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-3.png\"]'),(195,7,NULL,NULL,23,1.00,'Good app, good backup service and support. Good documentation.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-7.png\"]'),(197,6,NULL,NULL,12,2.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-4.png\",\"jewelry\\/products\\/product-5.png\"]'),(198,10,NULL,NULL,12,5.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-5.png\"]'),(199,2,NULL,NULL,5,1.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-4.png\",\"jewelry\\/products\\/product-6.png\",\"jewelry\\/products\\/product-8.png\"]'),(201,4,NULL,NULL,2,3.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-8.png\"]'),(202,8,NULL,NULL,39,5.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-4.png\",\"jewelry\\/products\\/product-5.png\"]'),(204,10,NULL,NULL,8,3.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-5.png\",\"jewelry\\/products\\/product-6.png\"]'),(206,6,NULL,NULL,19,5.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-4.png\"]'),(208,8,NULL,NULL,9,1.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-4.png\",\"jewelry\\/products\\/product-7.png\"]'),(209,3,NULL,NULL,9,3.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\"]'),(210,9,NULL,NULL,33,3.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-7.png\"]'),(211,2,NULL,NULL,21,5.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-5.png\",\"jewelry\\/products\\/product-8.png\"]'),(212,9,NULL,NULL,17,5.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-4.png\",\"jewelry\\/products\\/product-5.png\",\"jewelry\\/products\\/product-7.png\"]'),(213,6,NULL,NULL,18,2.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-6.png\",\"jewelry\\/products\\/product-8.png\"]'),(215,2,NULL,NULL,7,3.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-7.png\"]'),(216,7,NULL,NULL,20,2.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-6.png\"]'),(218,4,NULL,NULL,32,3.00,'Good app, good backup service and support. Good documentation.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-8.png\"]'),(220,5,NULL,NULL,30,4.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-6.png\",\"jewelry\\/products\\/product-7.png\"]'),(222,5,NULL,NULL,39,2.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-6.png\"]'),(225,8,NULL,NULL,37,5.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-7.png\"]'),(226,6,NULL,NULL,25,5.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-6.png\",\"jewelry\\/products\\/product-7.png\"]'),(228,2,NULL,NULL,14,1.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-4.png\",\"jewelry\\/products\\/product-8.png\"]'),(229,6,NULL,NULL,32,4.00,'Clean & perfect source code','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-5.png\",\"jewelry\\/products\\/product-8.png\"]'),(231,10,NULL,NULL,42,5.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-4.png\",\"jewelry\\/products\\/product-5.png\",\"jewelry\\/products\\/product-6.png\",\"jewelry\\/products\\/product-8.png\"]'),(232,6,NULL,NULL,4,4.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-7.png\",\"jewelry\\/products\\/product-8.png\"]'),(234,5,NULL,NULL,20,2.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-5.png\",\"jewelry\\/products\\/product-7.png\"]'),(235,8,NULL,NULL,2,4.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-7.png\"]'),(236,5,NULL,NULL,16,2.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-4.png\"]'),(237,6,NULL,NULL,41,4.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-6.png\"]'),(238,9,NULL,NULL,28,5.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-8.png\"]'),(240,4,NULL,NULL,36,4.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-4.png\",\"jewelry\\/products\\/product-6.png\",\"jewelry\\/products\\/product-7.png\"]'),(241,6,NULL,NULL,5,4.00,'Best ecommerce CMS online store!','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-5.png\",\"jewelry\\/products\\/product-8.png\"]'),(242,7,NULL,NULL,9,4.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-7.png\"]'),(244,1,NULL,NULL,20,5.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-4.png\"]'),(245,10,NULL,NULL,32,4.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-3.png\"]'),(246,9,NULL,NULL,42,1.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-5.png\",\"jewelry\\/products\\/product-7.png\"]'),(248,8,NULL,NULL,8,1.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-4.png\",\"jewelry\\/products\\/product-7.png\"]'),(249,5,NULL,NULL,4,3.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-6.png\",\"jewelry\\/products\\/product-7.png\",\"jewelry\\/products\\/product-8.png\"]'),(250,7,NULL,NULL,2,1.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-8.png\"]'),(254,9,NULL,NULL,3,5.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-7.png\",\"jewelry\\/products\\/product-8.png\"]'),(259,6,NULL,NULL,36,5.00,'Clean & perfect source code','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\"]'),(261,1,NULL,NULL,2,3.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-4.png\"]'),(262,10,NULL,NULL,10,4.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-5.png\",\"jewelry\\/products\\/product-6.png\"]'),(263,1,NULL,NULL,1,5.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-8.png\"]'),(267,7,NULL,NULL,14,1.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-4.png\"]'),(271,3,NULL,NULL,10,4.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-4.png\",\"jewelry\\/products\\/product-7.png\"]'),(272,3,NULL,NULL,38,1.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-6.png\"]'),(273,9,NULL,NULL,6,3.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-4.png\"]'),(274,9,NULL,NULL,25,3.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-6.png\"]'),(278,1,NULL,NULL,37,2.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-2.png\"]'),(283,8,NULL,NULL,29,2.00,'Clean & perfect source code','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-5.png\",\"jewelry\\/products\\/product-6.png\"]'),(285,6,NULL,NULL,24,3.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-7.png\"]'),(288,1,NULL,NULL,39,3.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-8.png\"]'),(292,4,NULL,NULL,10,1.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-6.png\",\"jewelry\\/products\\/product-7.png\",\"jewelry\\/products\\/product-8.png\"]'),(293,6,NULL,NULL,35,3.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-6.png\"]'),(294,9,NULL,NULL,1,2.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-6.png\",\"jewelry\\/products\\/product-7.png\",\"jewelry\\/products\\/product-8.png\"]'),(295,1,NULL,NULL,14,3.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-2.png\"]'),(296,8,NULL,NULL,25,1.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-6.png\"]'),(297,8,NULL,NULL,38,2.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-4.png\"]'),(298,2,NULL,NULL,20,1.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-4.png\",\"jewelry\\/products\\/product-5.png\",\"jewelry\\/products\\/product-6.png\",\"jewelry\\/products\\/product-7.png\"]'),(299,7,NULL,NULL,29,5.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-6.png\"]'),(300,10,NULL,NULL,28,2.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-4.png\",\"jewelry\\/products\\/product-5.png\",\"jewelry\\/products\\/product-6.png\",\"jewelry\\/products\\/product-8.png\"]'),(301,2,NULL,NULL,31,5.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-8.png\"]'),(305,1,NULL,NULL,21,4.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-5.png\"]'),(306,10,NULL,NULL,6,3.00,'Good app, good backup service and support. Good documentation.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-2.png\"]'),(311,3,NULL,NULL,19,5.00,'Best ecommerce CMS online store!','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-5.png\"]'),(312,10,NULL,NULL,37,5.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-5.png\"]'),(315,2,NULL,NULL,15,4.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-7.png\"]'),(318,9,NULL,NULL,24,4.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-4.png\"]'),(322,4,NULL,NULL,15,3.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-5.png\"]'),(325,3,NULL,NULL,18,5.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-6.png\",\"jewelry\\/products\\/product-7.png\",\"jewelry\\/products\\/product-8.png\"]'),(328,1,NULL,NULL,3,5.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-8.png\"]'),(329,5,NULL,NULL,29,3.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-7.png\",\"jewelry\\/products\\/product-8.png\"]'),(330,4,NULL,NULL,18,2.00,'Clean & perfect source code','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-4.png\",\"jewelry\\/products\\/product-7.png\"]'),(331,8,NULL,NULL,33,4.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-8.png\"]'),(332,2,NULL,NULL,38,3.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-6.png\",\"jewelry\\/products\\/product-8.png\"]'),(333,6,NULL,NULL,42,3.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-5.png\",\"jewelry\\/products\\/product-6.png\"]'),(334,10,NULL,NULL,41,1.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-4.png\",\"jewelry\\/products\\/product-6.png\",\"jewelry\\/products\\/product-8.png\"]'),(335,6,NULL,NULL,38,3.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-6.png\",\"jewelry\\/products\\/product-8.png\"]'),(336,3,NULL,NULL,32,3.00,'Clean & perfect source code','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-5.png\",\"jewelry\\/products\\/product-6.png\"]'),(337,3,NULL,NULL,40,2.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-7.png\",\"jewelry\\/products\\/product-8.png\"]'),(338,6,NULL,NULL,23,3.00,'Clean & perfect source code','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-4.png\"]'),(341,5,NULL,NULL,23,2.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-6.png\"]'),(344,6,NULL,NULL,6,3.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-6.png\",\"jewelry\\/products\\/product-7.png\"]'),(346,5,NULL,NULL,17,3.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-5.png\",\"jewelry\\/products\\/product-7.png\",\"jewelry\\/products\\/product-8.png\"]'),(348,5,NULL,NULL,10,3.00,'Good app, good backup service and support. Good documentation.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-5.png\",\"jewelry\\/products\\/product-8.png\"]'),(349,7,NULL,NULL,37,5.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-5.png\",\"jewelry\\/products\\/product-8.png\"]'),(351,9,NULL,NULL,2,3.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-6.png\",\"jewelry\\/products\\/product-7.png\"]'),(355,7,NULL,NULL,41,5.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-2.png\"]'),(360,4,NULL,NULL,31,3.00,'Good app, good backup service and support. Good documentation.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-4.png\",\"jewelry\\/products\\/product-6.png\",\"jewelry\\/products\\/product-8.png\"]'),(361,7,NULL,NULL,39,5.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-5.png\",\"jewelry\\/products\\/product-6.png\",\"jewelry\\/products\\/product-7.png\"]'),(366,8,NULL,NULL,23,4.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-4.png\",\"jewelry\\/products\\/product-8.png\"]'),(373,3,NULL,NULL,43,3.00,'Clean & perfect source code','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-5.png\"]'),(374,3,NULL,NULL,26,4.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-2.png\"]'),(377,2,NULL,NULL,22,2.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\"]'),(379,10,NULL,NULL,1,5.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-5.png\",\"jewelry\\/products\\/product-8.png\"]'),(380,2,NULL,NULL,40,3.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-5.png\",\"jewelry\\/products\\/product-7.png\"]'),(385,6,NULL,NULL,39,4.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-8.png\"]'),(396,1,NULL,NULL,8,4.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-7.png\",\"jewelry\\/products\\/product-8.png\"]'),(401,1,NULL,NULL,35,5.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-5.png\"]'),(403,8,NULL,NULL,35,1.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-8.png\"]'),(404,4,NULL,NULL,37,4.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-4.png\",\"jewelry\\/products\\/product-6.png\"]'),(406,4,NULL,NULL,4,1.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-6.png\"]'),(408,5,NULL,NULL,41,3.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-5.png\",\"jewelry\\/products\\/product-6.png\"]'),(411,7,NULL,NULL,16,1.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-6.png\"]'),(413,10,NULL,NULL,22,2.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-5.png\",\"jewelry\\/products\\/product-6.png\"]'),(415,8,NULL,NULL,11,3.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-2.png\"]'),(416,8,NULL,NULL,32,5.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-4.png\",\"jewelry\\/products\\/product-5.png\",\"jewelry\\/products\\/product-6.png\"]'),(418,1,NULL,NULL,29,4.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-5.png\",\"jewelry\\/products\\/product-7.png\"]'),(423,7,NULL,NULL,36,2.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-4.png\",\"jewelry\\/products\\/product-8.png\"]'),(427,9,NULL,NULL,14,3.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-7.png\"]'),(429,1,NULL,NULL,13,4.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-6.png\",\"jewelry\\/products\\/product-7.png\",\"jewelry\\/products\\/product-8.png\"]'),(433,4,NULL,NULL,34,2.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-4.png\",\"jewelry\\/products\\/product-6.png\"]'),(436,5,NULL,NULL,1,1.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-4.png\"]'),(438,2,NULL,NULL,10,1.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-6.png\",\"jewelry\\/products\\/product-8.png\"]'),(439,10,NULL,NULL,43,1.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-5.png\",\"jewelry\\/products\\/product-8.png\"]'),(450,4,NULL,NULL,23,4.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-3.png\"]'),(455,3,NULL,NULL,25,2.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-4.png\",\"jewelry\\/products\\/product-6.png\"]'),(456,10,NULL,NULL,5,2.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-7.png\"]'),(458,3,NULL,NULL,35,3.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-7.png\"]'),(460,6,NULL,NULL,22,4.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-5.png\"]'),(462,3,NULL,NULL,42,5.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-7.png\",\"jewelry\\/products\\/product-8.png\"]'),(463,6,NULL,NULL,10,1.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-5.png\"]'),(464,7,NULL,NULL,7,5.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-5.png\"]'),(465,3,NULL,NULL,8,4.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-6.png\",\"jewelry\\/products\\/product-7.png\",\"jewelry\\/products\\/product-8.png\"]'),(466,10,NULL,NULL,14,3.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-4.png\",\"jewelry\\/products\\/product-6.png\"]'),(467,10,NULL,NULL,25,1.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-5.png\",\"jewelry\\/products\\/product-8.png\"]'),(470,4,NULL,NULL,33,1.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-4.png\",\"jewelry\\/products\\/product-6.png\",\"jewelry\\/products\\/product-7.png\"]'),(471,1,NULL,NULL,7,2.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-5.png\"]'),(480,9,NULL,NULL,26,1.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-8.png\"]'),(484,7,NULL,NULL,43,3.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-4.png\",\"jewelry\\/products\\/product-6.png\"]'),(486,10,NULL,NULL,36,5.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-5.png\",\"jewelry\\/products\\/product-7.png\"]'),(487,10,NULL,NULL,7,2.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-5.png\",\"jewelry\\/products\\/product-7.png\"]'),(489,2,NULL,NULL,37,3.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-4.png\",\"jewelry\\/products\\/product-5.png\"]'),(494,3,NULL,NULL,33,4.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-4.png\",\"jewelry\\/products\\/product-5.png\",\"jewelry\\/products\\/product-6.png\"]'),(498,2,NULL,NULL,1,4.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-5.png\",\"jewelry\\/products\\/product-6.png\",\"jewelry\\/products\\/product-8.png\"]'),(500,6,NULL,NULL,34,1.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-5.png\",\"jewelry\\/products\\/product-6.png\"]'),(502,8,NULL,NULL,12,4.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-6.png\",\"jewelry\\/products\\/product-7.png\"]'),(505,7,NULL,NULL,19,4.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-7.png\"]'),(508,1,NULL,NULL,16,5.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-8.png\"]'),(512,5,NULL,NULL,12,2.00,'Best ecommerce CMS online store!','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-4.png\",\"jewelry\\/products\\/product-8.png\"]'),(514,2,NULL,NULL,23,4.00,'Clean & perfect source code','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-6.png\",\"jewelry\\/products\\/product-7.png\"]'),(518,1,NULL,NULL,27,3.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-8.png\"]'),(528,7,NULL,NULL,11,3.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-5.png\",\"jewelry\\/products\\/product-6.png\"]'),(529,4,NULL,NULL,21,3.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-7.png\"]'),(533,6,NULL,NULL,13,3.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-8.png\"]'),(534,9,NULL,NULL,5,2.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-5.png\",\"jewelry\\/products\\/product-7.png\",\"jewelry\\/products\\/product-8.png\"]'),(535,4,NULL,NULL,28,5.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-6.png\"]'),(536,2,NULL,NULL,4,4.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-4.png\",\"jewelry\\/products\\/product-5.png\",\"jewelry\\/products\\/product-6.png\"]'),(540,5,NULL,NULL,7,5.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-4.png\"]'),(542,2,NULL,NULL,9,1.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-4.png\"]'),(544,1,NULL,NULL,24,1.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-4.png\",\"jewelry\\/products\\/product-6.png\"]'),(550,8,NULL,NULL,18,4.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-4.png\"]'),(552,7,NULL,NULL,12,4.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-6.png\"]'),(553,5,NULL,NULL,27,3.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-5.png\",\"jewelry\\/products\\/product-6.png\",\"jewelry\\/products\\/product-7.png\"]'),(562,9,NULL,NULL,13,4.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-4.png\",\"jewelry\\/products\\/product-5.png\",\"jewelry\\/products\\/product-8.png\"]'),(568,9,NULL,NULL,38,1.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-4.png\",\"jewelry\\/products\\/product-7.png\"]'),(571,2,NULL,NULL,43,3.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-5.png\",\"jewelry\\/products\\/product-7.png\"]'),(574,5,NULL,NULL,15,3.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-4.png\",\"jewelry\\/products\\/product-5.png\"]'),(576,2,NULL,NULL,35,3.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-6.png\"]'),(578,5,NULL,NULL,2,5.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-2.png\"]'),(583,1,NULL,NULL,38,4.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-3.png\"]'),(584,8,NULL,NULL,40,4.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-5.png\",\"jewelry\\/products\\/product-7.png\"]'),(585,4,NULL,NULL,20,5.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-4.png\",\"jewelry\\/products\\/product-7.png\"]'),(605,10,NULL,NULL,35,3.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-4.png\",\"jewelry\\/products\\/product-6.png\"]'),(608,5,NULL,NULL,33,2.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\"]'),(609,1,NULL,NULL,22,4.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-4.png\"]'),(613,10,NULL,NULL,31,2.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-4.png\"]'),(614,1,NULL,NULL,33,2.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-5.png\",\"jewelry\\/products\\/product-8.png\"]'),(617,3,NULL,NULL,36,3.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-4.png\"]'),(621,6,NULL,NULL,30,3.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-4.png\"]'),(624,2,NULL,NULL,12,1.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-4.png\"]'),(625,9,NULL,NULL,8,3.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-5.png\",\"jewelry\\/products\\/product-6.png\"]'),(629,2,NULL,NULL,11,5.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-4.png\"]'),(637,1,NULL,NULL,6,1.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-6.png\"]'),(639,9,NULL,NULL,31,3.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-5.png\"]'),(644,7,NULL,NULL,15,3.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-6.png\",\"jewelry\\/products\\/product-8.png\"]'),(652,3,NULL,NULL,1,4.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-7.png\",\"jewelry\\/products\\/product-8.png\"]'),(655,2,NULL,NULL,32,4.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-4.png\",\"jewelry\\/products\\/product-5.png\",\"jewelry\\/products\\/product-7.png\"]'),(656,8,NULL,NULL,7,3.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-6.png\",\"jewelry\\/products\\/product-7.png\"]'),(661,9,NULL,NULL,9,4.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-4.png\",\"jewelry\\/products\\/product-5.png\"]'),(663,9,NULL,NULL,16,1.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-5.png\",\"jewelry\\/products\\/product-6.png\"]'),(664,1,NULL,NULL,43,2.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-4.png\",\"jewelry\\/products\\/product-5.png\"]'),(666,6,NULL,NULL,11,3.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-4.png\",\"jewelry\\/products\\/product-7.png\",\"jewelry\\/products\\/product-8.png\"]'),(668,6,NULL,NULL,40,5.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-7.png\"]'),(678,4,NULL,NULL,41,3.00,'Good app, good backup service and support. Good documentation.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-6.png\"]'),(679,6,NULL,NULL,20,4.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-7.png\",\"jewelry\\/products\\/product-8.png\"]'),(680,3,NULL,NULL,11,1.00,'Best ecommerce CMS online store!','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-4.png\"]'),(683,4,NULL,NULL,19,5.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-6.png\",\"jewelry\\/products\\/product-7.png\"]'),(685,4,NULL,NULL,30,5.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-4.png\",\"jewelry\\/products\\/product-5.png\",\"jewelry\\/products\\/product-7.png\",\"jewelry\\/products\\/product-8.png\"]'),(687,3,NULL,NULL,41,4.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-7.png\"]'),(689,9,NULL,NULL,43,2.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-3.png\"]'),(704,3,NULL,NULL,15,4.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-8.png\"]'),(709,8,NULL,NULL,16,1.00,'Good app, good backup service and support. Good documentation.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-8.png\"]'),(720,9,NULL,NULL,37,3.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-5.png\"]'),(726,4,NULL,NULL,1,3.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-7.png\",\"jewelry\\/products\\/product-8.png\"]'),(729,5,NULL,NULL,36,3.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\"]'),(735,5,NULL,NULL,35,2.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-4.png\",\"jewelry\\/products\\/product-8.png\"]'),(738,10,NULL,NULL,3,3.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-4.png\"]'),(741,7,NULL,NULL,40,4.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-4.png\"]'),(744,8,NULL,NULL,17,2.00,'Clean & perfect source code','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-4.png\",\"jewelry\\/products\\/product-6.png\"]'),(745,3,NULL,NULL,7,1.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-8.png\"]'),(753,10,NULL,NULL,17,2.00,'Clean & perfect source code','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-5.png\",\"jewelry\\/products\\/product-8.png\"]'),(764,8,NULL,NULL,19,5.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-4.png\",\"jewelry\\/products\\/product-5.png\"]'),(777,6,NULL,NULL,17,4.00,'Clean & perfect source code','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-3.png\"]'),(780,9,NULL,NULL,22,1.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-7.png\"]'),(781,6,NULL,NULL,9,3.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-2.png\"]'),(785,10,NULL,NULL,26,4.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-5.png\"]'),(787,8,NULL,NULL,20,1.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-5.png\"]'),(789,1,NULL,NULL,25,2.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-5.png\"]'),(792,9,NULL,NULL,4,3.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-5.png\",\"jewelry\\/products\\/product-6.png\",\"jewelry\\/products\\/product-7.png\",\"jewelry\\/products\\/product-8.png\"]'),(800,2,NULL,NULL,34,3.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-4.png\",\"jewelry\\/products\\/product-8.png\"]'),(803,3,NULL,NULL,12,3.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-3.png\"]'),(811,7,NULL,NULL,25,1.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-5.png\"]'),(812,5,NULL,NULL,14,3.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-5.png\"]'),(838,7,NULL,NULL,34,3.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-2.png\"]'),(851,8,NULL,NULL,14,1.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-3.png\"]'),(855,2,NULL,NULL,25,3.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-6.png\",\"jewelry\\/products\\/product-7.png\"]'),(860,7,NULL,NULL,13,5.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-4.png\"]'),(861,7,NULL,NULL,4,1.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-5.png\",\"jewelry\\/products\\/product-8.png\"]'),(872,3,NULL,NULL,5,2.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-4.png\",\"jewelry\\/products\\/product-7.png\"]'),(875,1,NULL,NULL,41,1.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-8.png\"]'),(890,9,NULL,NULL,12,2.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-6.png\",\"jewelry\\/products\\/product-7.png\"]'),(896,4,NULL,NULL,17,1.00,'Best ecommerce CMS online store!','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-3.png\"]'),(910,2,NULL,NULL,27,2.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-4.png\",\"jewelry\\/products\\/product-8.png\"]'),(925,7,NULL,NULL,31,4.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-4.png\"]'),(931,2,NULL,NULL,8,3.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-6.png\",\"jewelry\\/products\\/product-7.png\"]'),(933,1,NULL,NULL,23,5.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-4.png\",\"jewelry\\/products\\/product-5.png\",\"jewelry\\/products\\/product-7.png\",\"jewelry\\/products\\/product-8.png\"]'),(937,6,NULL,NULL,7,2.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-7.png\"]'),(954,4,NULL,NULL,43,3.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-4.png\"]'),(985,8,NULL,NULL,42,5.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-1.png\",\"jewelry\\/products\\/product-3.png\",\"jewelry\\/products\\/product-8.png\"]'),(996,6,NULL,NULL,27,3.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-06-05 00:00:52','2024-06-05 00:00:52','[\"jewelry\\/products\\/product-2.png\",\"jewelry\\/products\\/product-7.png\",\"jewelry\\/products\\/product-8.png\"]');
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
INSERT INTO `ec_shipping` VALUES (1,'All',NULL,'2024-06-05 00:00:45','2024-06-05 00:00:45');
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
INSERT INTO `ec_shipping_rules` VALUES (1,'Free delivery',1,'based_on_price',0.00,NULL,0.00,'2024-06-05 00:00:45','2024-06-05 00:00:45');
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
INSERT INTO `ec_store_locators` VALUES (1,'Shofy','sales@botble.com','1800979769','502 New Street','AU','Brighton VIC','Brighton VIC',1,1,'2024-06-05 00:00:47','2024-06-05 00:00:47',NULL);
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
INSERT INTO `ec_tax_products` VALUES (1,2),(1,4),(1,7),(1,17),(1,19),(1,21),(1,27),(1,28),(1,30),(1,33),(1,36),(2,1),(2,3),(2,8),(2,10),(2,11),(2,12),(2,13),(2,16),(2,22),(2,23),(2,24),(2,25),(2,37),(2,38),(2,39),(2,40),(2,41),(2,43),(3,5),(3,6),(3,9),(3,14),(3,15),(3,18),(3,20),(3,26),(3,29),(3,31),(3,32),(3,34),(3,35),(3,42);
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
INSERT INTO `ec_taxes` VALUES (1,'VAT',10.000000,1,'published','2024-06-05 00:00:45','2024-06-05 00:00:45'),(2,'None',0.000000,2,'published','2024-06-05 00:00:45','2024-06-05 00:00:45'),(3,'Import Tax',15.000000,3,'published','2024-06-05 00:00:45','2024-06-05 00:00:45');
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
INSERT INTO `faq_categories` VALUES (1,'Shipping',0,'published','2024-06-05 00:00:43','2024-06-05 00:00:43',NULL),(2,'Payment',1,'published','2024-06-05 00:00:43','2024-06-05 00:00:43',NULL),(3,'Order &amp; Returns',2,'published','2024-06-05 00:00:43','2024-06-05 00:00:43',NULL);
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
INSERT INTO `faqs` VALUES (1,'What Shipping Methods Are Available?','Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.',1,'published','2024-06-05 00:00:43','2024-06-05 00:00:43'),(2,'Do You Ship Internationally?','Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.',1,'published','2024-06-05 00:00:43','2024-06-05 00:00:43'),(3,'How Long Will It Take To Get My Package?','Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.',1,'published','2024-06-05 00:00:43','2024-06-05 00:00:43'),(4,'What Payment Methods Are Accepted?','Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.',2,'published','2024-06-05 00:00:43','2024-06-05 00:00:43'),(5,'Is Buying On-Line Safe?','Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.',2,'published','2024-06-05 00:00:43','2024-06-05 00:00:43'),(6,'How do I place an Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level. Raw denim polaroid paleo farm-to-table, put a bird on it lo-fi tattooed Wes Anderson Pinterest letterpress. Fingerstache McSweeney’s pour-over, letterpress Schlitz photo booth master cleanse bespoke hashtag chillwave gentrify.',3,'published','2024-06-05 00:00:43','2024-06-05 00:00:43'),(7,'How Can I Cancel Or Change My Order?','Plaid letterpress leggings craft beer meh ethical Pinterest. Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth.',3,'published','2024-06-05 00:00:43','2024-06-05 00:00:43'),(8,'Do I need an account to place an order?','Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY. Cray ugh 3 wolf moon fap, fashion axe irony butcher cornhole typewriter chambray VHS banjo street art.',3,'published','2024-06-05 00:00:43','2024-06-05 00:00:43'),(9,'How Do I Track My Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb @Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level.',3,'published','2024-06-05 00:00:43','2024-06-05 00:00:43'),(10,'How Can I Return a Product?','Kale chips Truffaut Williamsburg, hashtag fixie Pinterest raw denim c hambray drinking vinegar Carles street art Bushwick gastropub. Wolf Tumblr paleo church-key. Plaid food truck Echo Park YOLO bitters hella, direct trade Thundercats leggings quinoa before they sold out. You probably haven’t heard of them wayfarers authentic umami drinking vinegar Pinterest Cosby sweater, fingerstache fap High Life.',3,'published','2024-06-05 00:00:43','2024-06-05 00:00:43');
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galleries`
--

LOCK TABLES `galleries` WRITE;
/*!40000 ALTER TABLE `galleries` DISABLE KEYS */;
INSERT INTO `galleries` VALUES (1,'Radiant Reflections','Alice in a large pigeon had flown into her eyes; and once again the tiny hands were clasped upon her face. \'Very,\' said Alice: \'besides, that\'s not a regular rule: you invented it just at first.',1,0,'jewelry/galleries/1.jpg',1,'published','2024-06-05 00:00:52','2024-06-05 00:00:52'),(2,'Glamour Grove','Cat\'s head with great curiosity. \'It\'s a Cheshire cat,\' said the Hatter. \'You MUST remember,\' remarked the King, who had followed him into the court, \'Bring me the truth: did you manage on the.',1,0,'jewelry/galleries/2.jpg',1,'published','2024-06-05 00:00:52','2024-06-05 00:00:52'),(3,'Serene Styles Showcase','The Knave of Hearts, who only bowed and smiled in reply. \'That\'s right!\' shouted the Gryphon, with a little faster?\" said a whiting to a mouse, you know. Please, Ma\'am, is this New Zealand or.',1,0,'jewelry/galleries/3.jpg',1,'published','2024-06-05 00:00:52','2024-06-05 00:00:52'),(4,'Allure Alcove','Alice had no idea how to set about it; and while she remembered trying to find that she had never been in a soothing tone: \'don\'t be angry about it. And yet I don\'t believe it,\' said Alice very.',1,0,'jewelry/galleries/4.jpg',1,'published','2024-06-05 00:00:52','2024-06-05 00:00:52'),(5,'Glamour Galleria','They all returned from him to be a comfort, one way--never to be sure! However, everything is queer to-day.\' Just then she walked down the chimney?--Nay, I shan\'t! YOU do it!--That I won\'t.',1,0,'jewelry/galleries/5.jpg',1,'published','2024-06-05 00:00:52','2024-06-05 00:00:52'),(6,'Beauty Boulevard','Presently she began nibbling at the March Hare went \'Sh! sh!\' and the Mock Turtle a little of her sister, who was gently brushing away some dead leaves that had fluttered down from the change: and.',1,0,'jewelry/galleries/6.jpg',1,'published','2024-06-05 00:00:52','2024-06-05 00:00:52');
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gallery_meta`
--

LOCK TABLES `gallery_meta` WRITE;
/*!40000 ALTER TABLE `gallery_meta` DISABLE KEYS */;
INSERT INTO `gallery_meta` VALUES (1,'[{\"img\":\"jewelry\\/galleries\\/1.jpg\",\"description\":\"White Rabbit, trotting slowly back again, and Alice could see it trying in a mournful tone, \'he won\'t do a thing before, but she added, \'and the moral of that is, but I THINK I can do no more.\"},{\"img\":\"jewelry\\/galleries\\/2.jpg\",\"description\":\"Alice could see it again, but it did not much like keeping so close to her: its face in her pocket, and was delighted to find that she might as well as she could, and soon found out a box of.\"},{\"img\":\"jewelry\\/galleries\\/4.jpg\",\"description\":\"Hatter. \'Stolen!\' the King said gravely, \'and go on in a shrill, passionate voice. \'Would YOU like cats if you drink much from a Caterpillar The Caterpillar was the Duchess\'s knee, while plates and.\"}]',1,'Botble\\Gallery\\Models\\Gallery','2024-06-05 00:00:52','2024-06-05 00:00:52'),(2,'[{\"img\":\"jewelry\\/galleries\\/1.jpg\",\"description\":\"White Rabbit, trotting slowly back again, and Alice could see it trying in a mournful tone, \'he won\'t do a thing before, but she added, \'and the moral of that is, but I THINK I can do no more.\"},{\"img\":\"jewelry\\/galleries\\/2.jpg\",\"description\":\"Alice could see it again, but it did not much like keeping so close to her: its face in her pocket, and was delighted to find that she might as well as she could, and soon found out a box of.\"},{\"img\":\"jewelry\\/galleries\\/4.jpg\",\"description\":\"Hatter. \'Stolen!\' the King said gravely, \'and go on in a shrill, passionate voice. \'Would YOU like cats if you drink much from a Caterpillar The Caterpillar was the Duchess\'s knee, while plates and.\"}]',2,'Botble\\Gallery\\Models\\Gallery','2024-06-05 00:00:52','2024-06-05 00:00:52'),(3,'[{\"img\":\"jewelry\\/galleries\\/1.jpg\",\"description\":\"White Rabbit, trotting slowly back again, and Alice could see it trying in a mournful tone, \'he won\'t do a thing before, but she added, \'and the moral of that is, but I THINK I can do no more.\"},{\"img\":\"jewelry\\/galleries\\/2.jpg\",\"description\":\"Alice could see it again, but it did not much like keeping so close to her: its face in her pocket, and was delighted to find that she might as well as she could, and soon found out a box of.\"},{\"img\":\"jewelry\\/galleries\\/4.jpg\",\"description\":\"Hatter. \'Stolen!\' the King said gravely, \'and go on in a shrill, passionate voice. \'Would YOU like cats if you drink much from a Caterpillar The Caterpillar was the Duchess\'s knee, while plates and.\"}]',3,'Botble\\Gallery\\Models\\Gallery','2024-06-05 00:00:52','2024-06-05 00:00:52'),(4,'[{\"img\":\"jewelry\\/galleries\\/1.jpg\",\"description\":\"White Rabbit, trotting slowly back again, and Alice could see it trying in a mournful tone, \'he won\'t do a thing before, but she added, \'and the moral of that is, but I THINK I can do no more.\"},{\"img\":\"jewelry\\/galleries\\/2.jpg\",\"description\":\"Alice could see it again, but it did not much like keeping so close to her: its face in her pocket, and was delighted to find that she might as well as she could, and soon found out a box of.\"},{\"img\":\"jewelry\\/galleries\\/4.jpg\",\"description\":\"Hatter. \'Stolen!\' the King said gravely, \'and go on in a shrill, passionate voice. \'Would YOU like cats if you drink much from a Caterpillar The Caterpillar was the Duchess\'s knee, while plates and.\"}]',4,'Botble\\Gallery\\Models\\Gallery','2024-06-05 00:00:52','2024-06-05 00:00:52'),(5,'[{\"img\":\"jewelry\\/galleries\\/1.jpg\",\"description\":\"White Rabbit, trotting slowly back again, and Alice could see it trying in a mournful tone, \'he won\'t do a thing before, but she added, \'and the moral of that is, but I THINK I can do no more.\"},{\"img\":\"jewelry\\/galleries\\/2.jpg\",\"description\":\"Alice could see it again, but it did not much like keeping so close to her: its face in her pocket, and was delighted to find that she might as well as she could, and soon found out a box of.\"},{\"img\":\"jewelry\\/galleries\\/4.jpg\",\"description\":\"Hatter. \'Stolen!\' the King said gravely, \'and go on in a shrill, passionate voice. \'Would YOU like cats if you drink much from a Caterpillar The Caterpillar was the Duchess\'s knee, while plates and.\"}]',5,'Botble\\Gallery\\Models\\Gallery','2024-06-05 00:00:52','2024-06-05 00:00:52'),(6,'[{\"img\":\"jewelry\\/galleries\\/1.jpg\",\"description\":\"White Rabbit, trotting slowly back again, and Alice could see it trying in a mournful tone, \'he won\'t do a thing before, but she added, \'and the moral of that is, but I THINK I can do no more.\"},{\"img\":\"jewelry\\/galleries\\/2.jpg\",\"description\":\"Alice could see it again, but it did not much like keeping so close to her: its face in her pocket, and was delighted to find that she might as well as she could, and soon found out a box of.\"},{\"img\":\"jewelry\\/galleries\\/4.jpg\",\"description\":\"Hatter. \'Stolen!\' the King said gravely, \'and go on in a shrill, passionate voice. \'Would YOU like cats if you drink much from a Caterpillar The Caterpillar was the Duchess\'s knee, while plates and.\"}]',6,'Botble\\Gallery\\Models\\Gallery','2024-06-05 00:00:52','2024-06-05 00:00:52');
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
INSERT INTO `language_meta` VALUES (1,'en_US','88792f8d6f0439f3e10ae501d0c204a6',1,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(2,'en_US','f6a90907c98106bbec6ec8d4a1a78e8e',1,'Botble\\Menu\\Models\\MenuLocation'),(3,'en_US','c66dc16908e671c2777fdaca637aaf41',1,'Botble\\Menu\\Models\\Menu'),(4,'en_US','0af7b69e5191c99b9a8481414e5c3a1b',2,'Botble\\Menu\\Models\\Menu'),(5,'en_US','34c8d32f891c20f8a5a36707b4233ba9',3,'Botble\\Menu\\Models\\Menu');
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
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_files`
--

LOCK TABLES `media_files` WRITE;
/*!40000 ALTER TABLE `media_files` DISABLE KEYS */;
INSERT INTO `media_files` VALUES (1,0,'404','404',2,'image/png',15820,'main/general/404.png','[]','2024-06-05 00:00:41','2024-06-05 00:00:41',NULL,'public'),(2,0,'about-1','about-1',2,'image/jpeg',9222,'main/general/about-1.jpg','[]','2024-06-05 00:00:41','2024-06-05 00:00:41',NULL,'public'),(3,0,'about-2','about-2',2,'image/jpeg',5105,'main/general/about-2.jpg','[]','2024-06-05 00:00:41','2024-06-05 00:00:41',NULL,'public'),(4,0,'breadcrumb','breadcrumb',2,'image/jpeg',5276,'main/general/breadcrumb.jpg','[]','2024-06-05 00:00:41','2024-06-05 00:00:41',NULL,'public'),(5,0,'contact-img','contact-img',2,'image/jpeg',13078,'main/general/contact-img.jpg','[]','2024-06-05 00:00:41','2024-06-05 00:00:41',NULL,'public'),(6,0,'cta-shape-1','cta-shape-1',2,'image/png',22860,'main/general/cta-shape-1.png','[]','2024-06-05 00:00:41','2024-06-05 00:00:41',NULL,'public'),(7,0,'cta-shape-2','cta-shape-2',2,'image/png',16796,'main/general/cta-shape-2.png','[]','2024-06-05 00:00:41','2024-06-05 00:00:41',NULL,'public'),(8,0,'cta-thumb-1','cta-thumb-1',2,'image/jpeg',6053,'main/general/cta-thumb-1.jpg','[]','2024-06-05 00:00:41','2024-06-05 00:00:41',NULL,'public'),(9,0,'favicon','favicon',2,'image/png',1831,'main/general/favicon.png','[]','2024-06-05 00:00:41','2024-06-05 00:00:41',NULL,'public'),(10,0,'footer-pay','footer-pay',2,'image/png',490,'main/general/footer-pay.png','[]','2024-06-05 00:00:41','2024-06-05 00:00:41',NULL,'public'),(11,0,'logo-white','logo-white',2,'image/png',22020,'main/general/logo-white.png','[]','2024-06-05 00:00:41','2024-06-05 00:00:41',NULL,'public'),(12,0,'logo','logo',2,'image/png',22398,'main/general/logo.png','[]','2024-06-05 00:00:41','2024-06-05 00:00:41',NULL,'public'),(13,0,'newsletter-popup','newsletter-popup',2,'image/png',17253,'main/general/newsletter-popup.png','[]','2024-06-05 00:00:41','2024-06-05 00:00:41',NULL,'public'),(14,0,'placeholder','placeholder',2,'image/png',2100,'main/general/placeholder.png','[]','2024-06-05 00:00:41','2024-06-05 00:00:41',NULL,'public'),(15,0,'preloader-icon','preloader-icon',2,'image/png',4182,'main/general/preloader-icon.png','[]','2024-06-05 00:00:41','2024-06-05 00:00:41',NULL,'public'),(16,0,'signature','signature',2,'image/png',2117,'main/general/signature.png','[]','2024-06-05 00:00:41','2024-06-05 00:00:41',NULL,'public'),(17,0,'slider-offer','slider-offer',2,'image/png',970,'main/general/slider-offer.png','[]','2024-06-05 00:00:41','2024-06-05 00:00:41',NULL,'public'),(33,0,'1','1',5,'image/jpeg',4294,'main/customers/1.jpg','[]','2024-06-05 00:00:43','2024-06-05 00:00:43',NULL,'public'),(34,0,'10','10',5,'image/jpeg',4294,'main/customers/10.jpg','[]','2024-06-05 00:00:43','2024-06-05 00:00:43',NULL,'public'),(35,0,'2','2',5,'image/jpeg',4294,'main/customers/2.jpg','[]','2024-06-05 00:00:43','2024-06-05 00:00:43',NULL,'public'),(36,0,'3','3',5,'image/jpeg',4294,'main/customers/3.jpg','[]','2024-06-05 00:00:43','2024-06-05 00:00:43',NULL,'public'),(37,0,'4','4',5,'image/jpeg',4294,'main/customers/4.jpg','[]','2024-06-05 00:00:43','2024-06-05 00:00:43',NULL,'public'),(38,0,'5','5',5,'image/jpeg',4294,'main/customers/5.jpg','[]','2024-06-05 00:00:43','2024-06-05 00:00:43',NULL,'public'),(39,0,'6','6',5,'image/jpeg',4294,'main/customers/6.jpg','[]','2024-06-05 00:00:43','2024-06-05 00:00:43',NULL,'public'),(40,0,'7','7',5,'image/jpeg',4294,'main/customers/7.jpg','[]','2024-06-05 00:00:43','2024-06-05 00:00:43',NULL,'public'),(41,0,'8','8',5,'image/jpeg',4294,'main/customers/8.jpg','[]','2024-06-05 00:00:43','2024-06-05 00:00:43',NULL,'public'),(42,0,'9','9',5,'image/jpeg',4294,'main/customers/9.jpg','[]','2024-06-05 00:00:43','2024-06-05 00:00:43',NULL,'public'),(43,0,'blog-big-1','blog-big-1',6,'image/jpeg',13885,'main/blog/blog-big-1.jpg','[]','2024-06-05 00:00:45','2024-06-05 00:00:45',NULL,'public'),(44,0,'blog-details-sm-1','blog-details-sm-1',6,'image/jpeg',8166,'main/blog/blog-details-sm-1.jpg','[]','2024-06-05 00:00:45','2024-06-05 00:00:45',NULL,'public'),(45,0,'post-1','post-1',6,'image/jpeg',6189,'main/blog/post-1.jpg','[]','2024-06-05 00:00:45','2024-06-05 00:00:45',NULL,'public'),(46,0,'post-10','post-10',6,'image/jpeg',5907,'main/blog/post-10.jpg','[]','2024-06-05 00:00:45','2024-06-05 00:00:45',NULL,'public'),(47,0,'post-11','post-11',6,'image/jpeg',5907,'main/blog/post-11.jpg','[]','2024-06-05 00:00:46','2024-06-05 00:00:46',NULL,'public'),(48,0,'post-12','post-12',6,'image/jpeg',5907,'main/blog/post-12.jpg','[]','2024-06-05 00:00:46','2024-06-05 00:00:46',NULL,'public'),(49,0,'post-2','post-2',6,'image/jpeg',6189,'main/blog/post-2.jpg','[]','2024-06-05 00:00:46','2024-06-05 00:00:46',NULL,'public'),(50,0,'post-3','post-3',6,'image/jpeg',6189,'main/blog/post-3.jpg','[]','2024-06-05 00:00:46','2024-06-05 00:00:46',NULL,'public'),(51,0,'post-4','post-4',6,'image/jpeg',6045,'main/blog/post-4.jpg','[]','2024-06-05 00:00:46','2024-06-05 00:00:46',NULL,'public'),(52,0,'post-5','post-5',6,'image/jpeg',6045,'main/blog/post-5.jpg','[]','2024-06-05 00:00:46','2024-06-05 00:00:46',NULL,'public'),(53,0,'post-6','post-6',6,'image/jpeg',6045,'main/blog/post-6.jpg','[]','2024-06-05 00:00:46','2024-06-05 00:00:46',NULL,'public'),(54,0,'post-7','post-7',6,'image/jpeg',5907,'main/blog/post-7.jpg','[]','2024-06-05 00:00:46','2024-06-05 00:00:46',NULL,'public'),(55,0,'post-8','post-8',6,'image/jpeg',5907,'main/blog/post-8.jpg','[]','2024-06-05 00:00:46','2024-06-05 00:00:46',NULL,'public'),(56,0,'post-9','post-9',6,'image/jpeg',5907,'main/blog/post-9.jpg','[]','2024-06-05 00:00:46','2024-06-05 00:00:46',NULL,'public'),(57,0,'1','1',3,'image/jpeg',4068,'main/users/1.jpg','[]','2024-06-05 00:00:46','2024-06-05 00:00:46',NULL,'public'),(58,0,'10','10',3,'image/jpeg',7599,'main/users/10.jpg','[]','2024-06-05 00:00:46','2024-06-05 00:00:46',NULL,'public'),(59,0,'2','2',3,'image/jpeg',7599,'main/users/2.jpg','[]','2024-06-05 00:00:46','2024-06-05 00:00:46',NULL,'public'),(60,0,'3','3',3,'image/jpeg',6387,'main/users/3.jpg','[]','2024-06-05 00:00:46','2024-06-05 00:00:46',NULL,'public'),(61,0,'4','4',3,'image/jpeg',7599,'main/users/4.jpg','[]','2024-06-05 00:00:46','2024-06-05 00:00:46',NULL,'public'),(62,0,'5','5',3,'image/jpeg',6387,'main/users/5.jpg','[]','2024-06-05 00:00:46','2024-06-05 00:00:46',NULL,'public'),(63,0,'6','6',3,'image/jpeg',7599,'main/users/6.jpg','[]','2024-06-05 00:00:46','2024-06-05 00:00:46',NULL,'public'),(64,0,'7','7',3,'image/jpeg',6387,'main/users/7.jpg','[]','2024-06-05 00:00:46','2024-06-05 00:00:46',NULL,'public'),(65,0,'8','8',3,'image/jpeg',7599,'main/users/8.jpg','[]','2024-06-05 00:00:46','2024-06-05 00:00:46',NULL,'public'),(66,0,'9','9',3,'image/jpeg',6387,'main/users/9.jpg','[]','2024-06-05 00:00:46','2024-06-05 00:00:46',NULL,'public'),(67,0,'1','1',7,'image/png',9133,'main/stores/1.png','[]','2024-06-05 00:00:47','2024-06-05 00:00:47',NULL,'public'),(68,0,'10','10',7,'image/png',4263,'main/stores/10.png','[]','2024-06-05 00:00:47','2024-06-05 00:00:47',NULL,'public'),(69,0,'11','11',7,'image/png',4420,'main/stores/11.png','[]','2024-06-05 00:00:47','2024-06-05 00:00:47',NULL,'public'),(70,0,'12','12',7,'image/png',4908,'main/stores/12.png','[]','2024-06-05 00:00:47','2024-06-05 00:00:47',NULL,'public'),(71,0,'13','13',7,'image/png',3441,'main/stores/13.png','[]','2024-06-05 00:00:47','2024-06-05 00:00:47',NULL,'public'),(72,0,'14','14',7,'image/png',4209,'main/stores/14.png','[]','2024-06-05 00:00:47','2024-06-05 00:00:47',NULL,'public'),(73,0,'15','15',7,'image/png',5113,'main/stores/15.png','[]','2024-06-05 00:00:47','2024-06-05 00:00:47',NULL,'public'),(74,0,'16','16',7,'image/png',4563,'main/stores/16.png','[]','2024-06-05 00:00:47','2024-06-05 00:00:47',NULL,'public'),(75,0,'17','17',7,'image/png',4896,'main/stores/17.png','[]','2024-06-05 00:00:47','2024-06-05 00:00:47',NULL,'public'),(76,0,'2','2',7,'image/png',9008,'main/stores/2.png','[]','2024-06-05 00:00:47','2024-06-05 00:00:47',NULL,'public'),(77,0,'3','3',7,'image/png',8006,'main/stores/3.png','[]','2024-06-05 00:00:47','2024-06-05 00:00:47',NULL,'public'),(78,0,'4','4',7,'image/png',8728,'main/stores/4.png','[]','2024-06-05 00:00:47','2024-06-05 00:00:47',NULL,'public'),(79,0,'5','5',7,'image/png',10689,'main/stores/5.png','[]','2024-06-05 00:00:47','2024-06-05 00:00:47',NULL,'public'),(80,0,'6','6',7,'image/png',10989,'main/stores/6.png','[]','2024-06-05 00:00:47','2024-06-05 00:00:47',NULL,'public'),(81,0,'7','7',7,'image/png',3730,'main/stores/7.png','[]','2024-06-05 00:00:47','2024-06-05 00:00:47',NULL,'public'),(82,0,'8','8',7,'image/png',4030,'main/stores/8.png','[]','2024-06-05 00:00:47','2024-06-05 00:00:47',NULL,'public'),(83,0,'9','9',7,'image/png',3810,'main/stores/9.png','[]','2024-06-05 00:00:47','2024-06-05 00:00:47',NULL,'public'),(84,0,'cover-1','cover-1',7,'image/png',4208,'main/stores/cover-1.png','[]','2024-06-05 00:00:47','2024-06-05 00:00:47',NULL,'public'),(85,0,'cover-2','cover-2',7,'image/png',8798,'main/stores/cover-2.png','[]','2024-06-05 00:00:47','2024-06-05 00:00:47',NULL,'public'),(86,0,'cover-3','cover-3',7,'image/png',3888,'main/stores/cover-3.png','[]','2024-06-05 00:00:47','2024-06-05 00:00:47',NULL,'public'),(87,0,'cover-4','cover-4',7,'image/png',11893,'main/stores/cover-4.png','[]','2024-06-05 00:00:47','2024-06-05 00:00:47',NULL,'public'),(88,0,'cover-5','cover-5',7,'image/png',8798,'main/stores/cover-5.png','[]','2024-06-05 00:00:47','2024-06-05 00:00:47',NULL,'public'),(89,0,'slider-1','slider-1',9,'image/png',14471,'jewelry/sliders/slider-1.png','[]','2024-06-05 00:00:49','2024-06-05 00:00:49',NULL,'public'),(90,0,'slider-2','slider-2',9,'image/png',13483,'jewelry/sliders/slider-2.png','[]','2024-06-05 00:00:49','2024-06-05 00:00:49',NULL,'public'),(91,0,'slider-3','slider-3',9,'image/png',16822,'jewelry/sliders/slider-3.png','[]','2024-06-05 00:00:49','2024-06-05 00:00:49',NULL,'public'),(92,0,'slider-4','slider-4',9,'image/png',13919,'jewelry/sliders/slider-4.png','[]','2024-06-05 00:00:49','2024-06-05 00:00:49',NULL,'public'),(93,0,'1','1',10,'image/jpeg',4294,'jewelry/product-categories/1.jpg','[]','2024-06-05 00:00:49','2024-06-05 00:00:49',NULL,'public'),(94,0,'2','2',10,'image/jpeg',4294,'jewelry/product-categories/2.jpg','[]','2024-06-05 00:00:50','2024-06-05 00:00:50',NULL,'public'),(95,0,'3','3',10,'image/jpeg',4294,'jewelry/product-categories/3.jpg','[]','2024-06-05 00:00:50','2024-06-05 00:00:50',NULL,'public'),(96,0,'4','4',10,'image/jpeg',4294,'jewelry/product-categories/4.jpg','[]','2024-06-05 00:00:50','2024-06-05 00:00:50',NULL,'public'),(97,0,'5','5',10,'image/jpeg',4294,'jewelry/product-categories/5.jpg','[]','2024-06-05 00:00:50','2024-06-05 00:00:50',NULL,'public'),(98,0,'6','6',10,'image/jpeg',4294,'jewelry/product-categories/6.jpg','[]','2024-06-05 00:00:50','2024-06-05 00:00:50',NULL,'public'),(99,0,'product-1','product-1',11,'image/png',9803,'jewelry/products/product-1.png','[]','2024-06-05 00:00:50','2024-06-05 00:00:50',NULL,'public'),(100,0,'product-2','product-2',11,'image/png',9803,'jewelry/products/product-2.png','[]','2024-06-05 00:00:50','2024-06-05 00:00:50',NULL,'public'),(101,0,'product-3','product-3',11,'image/png',9803,'jewelry/products/product-3.png','[]','2024-06-05 00:00:50','2024-06-05 00:00:50',NULL,'public'),(102,0,'product-4','product-4',11,'image/png',9803,'jewelry/products/product-4.png','[]','2024-06-05 00:00:50','2024-06-05 00:00:50',NULL,'public'),(103,0,'product-5','product-5',11,'image/png',9803,'jewelry/products/product-5.png','[]','2024-06-05 00:00:50','2024-06-05 00:00:50',NULL,'public'),(104,0,'product-6','product-6',11,'image/png',9803,'jewelry/products/product-6.png','[]','2024-06-05 00:00:50','2024-06-05 00:00:50',NULL,'public'),(105,0,'product-7','product-7',11,'image/png',9803,'jewelry/products/product-7.png','[]','2024-06-05 00:00:50','2024-06-05 00:00:50',NULL,'public'),(106,0,'product-8','product-8',11,'image/png',9803,'jewelry/products/product-8.png','[]','2024-06-05 00:00:50','2024-06-05 00:00:50',NULL,'public'),(107,0,'1','1',12,'image/jpeg',5406,'jewelry/banners/1.jpg','[]','2024-06-05 00:00:51','2024-06-05 00:00:51',NULL,'public'),(108,0,'2','2',12,'image/jpeg',4233,'jewelry/banners/2.jpg','[]','2024-06-05 00:00:51','2024-06-05 00:00:51',NULL,'public'),(109,0,'3','3',12,'image/jpeg',4233,'jewelry/banners/3.jpg','[]','2024-06-05 00:00:51','2024-06-05 00:00:51',NULL,'public'),(110,0,'4','4',12,'image/jpeg',12882,'jewelry/banners/4.jpg','[]','2024-06-05 00:00:51','2024-06-05 00:00:51',NULL,'public'),(111,0,'1','1',13,'image/jpeg',4294,'jewelry/galleries/1.jpg','[]','2024-06-05 00:00:51','2024-06-05 00:00:51',NULL,'public'),(112,0,'2','2',13,'image/jpeg',4294,'jewelry/galleries/2.jpg','[]','2024-06-05 00:00:51','2024-06-05 00:00:51',NULL,'public'),(113,0,'3','3',13,'image/jpeg',4294,'jewelry/galleries/3.jpg','[]','2024-06-05 00:00:51','2024-06-05 00:00:51',NULL,'public'),(114,0,'4','4',13,'image/jpeg',4294,'jewelry/galleries/4.jpg','[]','2024-06-05 00:00:51','2024-06-05 00:00:51',NULL,'public'),(115,0,'5','5',13,'image/jpeg',4294,'jewelry/galleries/5.jpg','[]','2024-06-05 00:00:51','2024-06-05 00:00:51',NULL,'public'),(116,0,'6','6',13,'image/jpeg',4294,'jewelry/galleries/6.jpg','[]','2024-06-05 00:00:51','2024-06-05 00:00:51',NULL,'public'),(117,0,'icon-1','icon-1',14,'image/png',4469,'main/contact/icon-1.png','[]','2024-06-05 00:00:52','2024-06-05 00:00:52',NULL,'public'),(118,0,'icon-2','icon-2',14,'image/png',5977,'main/contact/icon-2.png','[]','2024-06-05 00:00:52','2024-06-05 00:00:52',NULL,'public'),(119,0,'icon-3','icon-3',14,'image/png',6082,'main/contact/icon-3.png','[]','2024-06-05 00:00:52','2024-06-05 00:00:52',NULL,'public'),(120,0,'1','1',4,'image/png',948,'main/brands/1.png','[]','2024-06-05 00:00:52','2024-06-05 00:00:52',NULL,'public'),(121,0,'2','2',4,'image/png',948,'main/brands/2.png','[]','2024-06-05 00:00:52','2024-06-05 00:00:52',NULL,'public'),(122,0,'3','3',4,'image/png',948,'main/brands/3.png','[]','2024-06-05 00:00:52','2024-06-05 00:00:52',NULL,'public'),(123,0,'4','4',4,'image/png',948,'main/brands/4.png','[]','2024-06-05 00:00:52','2024-06-05 00:00:52',NULL,'public'),(124,0,'5','5',4,'image/png',948,'main/brands/5.png','[]','2024-06-05 00:00:52','2024-06-05 00:00:52',NULL,'public'),(125,0,'line','line',15,'image/png',6152,'main/shapes/line.png','[]','2024-06-05 00:00:52','2024-06-05 00:00:52',NULL,'public'),(126,0,'quote','quote',15,'image/png',595,'main/shapes/quote.png','[]','2024-06-05 00:00:52','2024-06-05 00:00:52',NULL,'public');
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
INSERT INTO `media_folders` VALUES (1,0,'main',NULL,'main',0,'2024-06-05 00:00:41','2024-06-05 00:00:41',NULL),(2,0,'general',NULL,'general',1,'2024-06-05 00:00:41','2024-06-05 00:00:41',NULL),(3,0,'users',NULL,'users',1,'2024-06-05 00:00:41','2024-06-05 00:00:41',NULL),(4,0,'brands',NULL,'brands',1,'2024-06-05 00:00:42','2024-06-05 00:00:42',NULL),(5,0,'customers',NULL,'customers',1,'2024-06-05 00:00:43','2024-06-05 00:00:43',NULL),(6,0,'blog',NULL,'blog',1,'2024-06-05 00:00:45','2024-06-05 00:00:45',NULL),(7,0,'stores',NULL,'stores',1,'2024-06-05 00:00:47','2024-06-05 00:00:47',NULL),(8,0,'jewelry',NULL,'jewelry',0,'2024-06-05 00:00:49','2024-06-05 00:00:49',NULL),(9,0,'sliders',NULL,'sliders',8,'2024-06-05 00:00:49','2024-06-05 00:00:49',NULL),(10,0,'product-categories',NULL,'product-categories',8,'2024-06-05 00:00:49','2024-06-05 00:00:49',NULL),(11,0,'products',NULL,'products',8,'2024-06-05 00:00:50','2024-06-05 00:00:50',NULL),(12,0,'banners',NULL,'banners',8,'2024-06-05 00:00:51','2024-06-05 00:00:51',NULL),(13,0,'galleries',NULL,'galleries',8,'2024-06-05 00:00:51','2024-06-05 00:00:51',NULL),(14,0,'contact',NULL,'contact',1,'2024-06-05 00:00:52','2024-06-05 00:00:52',NULL),(15,0,'shapes',NULL,'shapes',1,'2024-06-05 00:00:52','2024-06-05 00:00:52',NULL);
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
INSERT INTO `menu_locations` VALUES (1,1,'main-menu','2024-06-05 00:00:52','2024-06-05 00:00:52');
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
INSERT INTO `menu_nodes` VALUES (1,1,0,1,'Botble\\Page\\Models\\Page','/home',NULL,0,'Home',NULL,'_self',1,'2024-06-05 00:00:52','2024-06-05 00:00:52'),(2,1,1,NULL,NULL,'https://shofy.botble.com',NULL,0,'Electronics',NULL,'_self',0,'2024-06-05 00:00:52','2024-06-05 00:00:52'),(3,1,1,NULL,NULL,'https://shofy-fashion.botble.com',NULL,0,'Fashion',NULL,'_self',0,'2024-06-05 00:00:52','2024-06-05 00:00:52'),(4,1,1,NULL,NULL,'https://shofy-beauty.botble.com',NULL,0,'Beauty',NULL,'_self',0,'2024-06-05 00:00:52','2024-06-05 00:00:52'),(5,1,1,NULL,NULL,'https://shofy-jewelry.botble.com',NULL,0,'Jewelry',NULL,'_self',0,'2024-06-05 00:00:52','2024-06-05 00:00:52'),(6,1,1,NULL,NULL,'https://shofy-grocery.botble.com',NULL,0,'Grocery',NULL,'_self',0,'2024-06-05 00:00:52','2024-06-05 00:00:52'),(7,1,0,NULL,NULL,NULL,NULL,0,'Shop',NULL,'_self',1,'2024-06-05 00:00:52','2024-06-05 00:00:52'),(8,1,7,2,'Botble\\Page\\Models\\Page','/product-categories',NULL,0,'Shop Categories',NULL,'_self',0,'2024-06-05 00:00:52','2024-06-05 00:00:52'),(9,1,7,NULL,NULL,'/products?layout=list',NULL,0,'Shop List',NULL,'_self',0,'2024-06-05 00:00:52','2024-06-05 00:00:52'),(10,1,7,NULL,NULL,'/products?layout=grid',NULL,0,'Shop Grid',NULL,'_self',0,'2024-06-05 00:00:52','2024-06-05 00:00:52'),(11,1,7,NULL,NULL,'/products/boho-fringed-kimono',NULL,0,'Product Detail',NULL,'_self',0,'2024-06-05 00:00:52','2024-06-05 00:00:52'),(12,1,7,3,'Botble\\Page\\Models\\Page','/coupons',NULL,0,'Grab Coupons',NULL,'_self',0,'2024-06-05 00:00:52','2024-06-05 00:00:52'),(13,1,7,NULL,NULL,'/cart',NULL,0,'Cart',NULL,'_self',0,'2024-06-05 00:00:52','2024-06-05 00:00:52'),(14,1,7,NULL,NULL,'/compare',NULL,0,'Compare',NULL,'_self',0,'2024-06-05 00:00:52','2024-06-05 00:00:52'),(15,1,7,NULL,NULL,'/wishlist',NULL,0,'Wishlist',NULL,'_self',0,'2024-06-05 00:00:52','2024-06-05 00:00:52'),(16,1,7,NULL,NULL,'/orders/tracking',NULL,0,'Track Your Order',NULL,'_self',0,'2024-06-05 00:00:52','2024-06-05 00:00:52'),(17,1,0,NULL,NULL,'/stores',NULL,0,'Vendors',NULL,'_self',0,'2024-06-05 00:00:52','2024-06-05 00:00:52'),(18,1,0,NULL,NULL,NULL,NULL,0,'Pages',NULL,'_self',1,'2024-06-05 00:00:52','2024-06-05 00:00:52'),(19,1,18,6,'Botble\\Page\\Models\\Page','/faqs',NULL,0,'FAQs',NULL,'_self',0,'2024-06-05 00:00:52','2024-06-05 00:00:52'),(20,1,18,NULL,NULL,'/login',NULL,0,'Login',NULL,'_self',0,'2024-06-05 00:00:52','2024-06-05 00:00:52'),(21,1,18,NULL,NULL,'/register',NULL,0,'Register',NULL,'_self',0,'2024-06-05 00:00:52','2024-06-05 00:00:52'),(22,1,18,NULL,NULL,'/password/reset',NULL,0,'Forgot Password',NULL,'_self',0,'2024-06-05 00:00:52','2024-06-05 00:00:52'),(23,1,18,NULL,NULL,'/404',NULL,0,'404 Error',NULL,'_self',0,'2024-06-05 00:00:52','2024-06-05 00:00:52'),(24,1,18,NULL,NULL,'/coming-soon',NULL,0,'Coming Soon',NULL,'_self',0,'2024-06-05 00:00:52','2024-06-05 00:00:52'),(25,1,0,4,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Blog',NULL,'_self',1,'2024-06-05 00:00:52','2024-06-05 00:00:52'),(26,1,25,NULL,NULL,'/blog?layout=grid',NULL,0,'Blog Grid',NULL,'_self',0,'2024-06-05 00:00:52','2024-06-05 00:00:52'),(27,1,25,NULL,NULL,'/blog?layout=list',NULL,0,'Blog List',NULL,'_self',0,'2024-06-05 00:00:52','2024-06-05 00:00:52'),(28,1,25,NULL,NULL,'/blog/hiring-the-right-sales-team-at-the-right-time',NULL,0,'Blog Detail',NULL,'_self',0,'2024-06-05 00:00:52','2024-06-05 00:00:52'),(29,1,0,5,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Contact',NULL,'_self',0,'2024-06-05 00:00:52','2024-06-05 00:00:52'),(30,2,0,NULL,NULL,'/orders/tracking',NULL,1,'Track Orders',NULL,'_self',0,'2024-06-05 00:00:52','2024-06-05 00:00:52'),(31,2,0,10,'Botble\\Page\\Models\\Page','/shipping',NULL,1,'Shipping',NULL,'_self',0,'2024-06-05 00:00:52','2024-06-05 00:00:52'),(32,2,0,NULL,NULL,'/wishlist',NULL,1,'Wishlist',NULL,'_self',0,'2024-06-05 00:00:52','2024-06-05 00:00:52'),(33,2,0,NULL,NULL,'/customer/overview',NULL,1,'My Account',NULL,'_self',0,'2024-06-05 00:00:52','2024-06-05 00:00:52'),(34,2,0,NULL,NULL,'/customer/orders',NULL,1,'Order History',NULL,'_self',0,'2024-06-05 00:00:52','2024-06-05 00:00:52'),(35,2,0,NULL,NULL,'/customer/order-returns',NULL,1,'Returns',NULL,'_self',0,'2024-06-05 00:00:52','2024-06-05 00:00:52'),(36,3,0,8,'Botble\\Page\\Models\\Page','/our-story',NULL,2,'Our Story',NULL,'_self',0,'2024-06-05 00:00:52','2024-06-05 00:00:52'),(37,3,0,9,'Botble\\Page\\Models\\Page','/careers',NULL,2,'Careers',NULL,'_self',0,'2024-06-05 00:00:52','2024-06-05 00:00:52'),(38,3,0,7,'Botble\\Page\\Models\\Page','/cookie-policy',NULL,2,'Privacy Policy',NULL,'_self',0,'2024-06-05 00:00:52','2024-06-05 00:00:52'),(39,3,0,NULL,NULL,'/blog',NULL,2,'Latest News',NULL,'_self',0,'2024-06-05 00:00:52','2024-06-05 00:00:52'),(40,3,0,5,'Botble\\Page\\Models\\Page','/contact',NULL,2,'Contact Us',NULL,'_self',0,'2024-06-05 00:00:52','2024-06-05 00:00:52');
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
INSERT INTO `menus` VALUES (1,'Main menu','main-menu','published','2024-06-05 00:00:52','2024-06-05 00:00:52'),(2,'My Account','my-account','published','2024-06-05 00:00:52','2024-06-05 00:00:52'),(3,'Information','information','published','2024-06-05 00:00:52','2024-06-05 00:00:52');
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
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_boxes`
--

LOCK TABLES `meta_boxes` WRITE;
/*!40000 ALTER TABLE `meta_boxes` DISABLE KEYS */;
INSERT INTO `meta_boxes` VALUES (1,'button_label','[\"Discover Now\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-06-05 00:00:49','2024-06-05 00:00:49'),(2,'button_label','[\"Discover Now\"]',2,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-06-05 00:00:49','2024-06-05 00:00:49'),(3,'button_label','[\"Discover Now\"]',3,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-06-05 00:00:49','2024-06-05 00:00:49'),(4,'button_label','[\"Discover Now\"]',4,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-06-05 00:00:49','2024-06-05 00:00:49'),(5,'faq_ids','[[4,6,7,8,9]]',1,'Botble\\Ecommerce\\Models\\Product','2024-06-05 00:00:50','2024-06-05 00:00:50'),(6,'faq_ids','[[1,2,6,8,9]]',2,'Botble\\Ecommerce\\Models\\Product','2024-06-05 00:00:50','2024-06-05 00:00:50'),(7,'faq_ids','[[1,2,4,8,9]]',3,'Botble\\Ecommerce\\Models\\Product','2024-06-05 00:00:50','2024-06-05 00:00:50'),(8,'faq_ids','[[1,3,4,5,8]]',4,'Botble\\Ecommerce\\Models\\Product','2024-06-05 00:00:50','2024-06-05 00:00:50'),(9,'faq_ids','[[1,5,6,7,9]]',5,'Botble\\Ecommerce\\Models\\Product','2024-06-05 00:00:50','2024-06-05 00:00:50'),(10,'faq_ids','[[1,6,7,8,9]]',6,'Botble\\Ecommerce\\Models\\Product','2024-06-05 00:00:50','2024-06-05 00:00:50'),(11,'faq_ids','[[2,5,8,9,10]]',7,'Botble\\Ecommerce\\Models\\Product','2024-06-05 00:00:50','2024-06-05 00:00:50'),(12,'faq_ids','[[3,4,7,8,9]]',8,'Botble\\Ecommerce\\Models\\Product','2024-06-05 00:00:50','2024-06-05 00:00:50'),(13,'faq_ids','[[5,6,7,9,10]]',9,'Botble\\Ecommerce\\Models\\Product','2024-06-05 00:00:50','2024-06-05 00:00:50'),(14,'faq_ids','[[1,3,6,7,8]]',10,'Botble\\Ecommerce\\Models\\Product','2024-06-05 00:00:50','2024-06-05 00:00:50'),(15,'faq_ids','[[1,3,5,7,8]]',11,'Botble\\Ecommerce\\Models\\Product','2024-06-05 00:00:50','2024-06-05 00:00:50'),(16,'faq_ids','[[1,4,6,9,10]]',12,'Botble\\Ecommerce\\Models\\Product','2024-06-05 00:00:50','2024-06-05 00:00:50'),(17,'faq_ids','[[2,3,4,5,6]]',13,'Botble\\Ecommerce\\Models\\Product','2024-06-05 00:00:50','2024-06-05 00:00:50'),(18,'faq_ids','[[2,5,6,7,8]]',14,'Botble\\Ecommerce\\Models\\Product','2024-06-05 00:00:50','2024-06-05 00:00:50'),(19,'faq_ids','[[1,5,6,7,9]]',15,'Botble\\Ecommerce\\Models\\Product','2024-06-05 00:00:50','2024-06-05 00:00:50'),(20,'faq_ids','[[1,2,3,4,9]]',16,'Botble\\Ecommerce\\Models\\Product','2024-06-05 00:00:50','2024-06-05 00:00:50'),(21,'faq_ids','[[3,4,5,8,10]]',17,'Botble\\Ecommerce\\Models\\Product','2024-06-05 00:00:50','2024-06-05 00:00:50'),(22,'faq_ids','[[1,7,8,9,10]]',18,'Botble\\Ecommerce\\Models\\Product','2024-06-05 00:00:50','2024-06-05 00:00:50'),(23,'faq_ids','[[3,5,6,8,9]]',19,'Botble\\Ecommerce\\Models\\Product','2024-06-05 00:00:50','2024-06-05 00:00:50'),(24,'faq_ids','[[1,2,4,6,7]]',20,'Botble\\Ecommerce\\Models\\Product','2024-06-05 00:00:50','2024-06-05 00:00:50'),(25,'faq_ids','[[3,4,6,7,8]]',21,'Botble\\Ecommerce\\Models\\Product','2024-06-05 00:00:50','2024-06-05 00:00:50'),(26,'faq_ids','[[2,3,4,6,10]]',22,'Botble\\Ecommerce\\Models\\Product','2024-06-05 00:00:50','2024-06-05 00:00:50'),(27,'faq_ids','[[3,5,8,9,10]]',23,'Botble\\Ecommerce\\Models\\Product','2024-06-05 00:00:50','2024-06-05 00:00:50'),(28,'faq_ids','[[4,5,6,7,9]]',24,'Botble\\Ecommerce\\Models\\Product','2024-06-05 00:00:50','2024-06-05 00:00:50'),(29,'faq_ids','[[1,2,3,7,8]]',25,'Botble\\Ecommerce\\Models\\Product','2024-06-05 00:00:50','2024-06-05 00:00:50'),(30,'faq_ids','[[1,3,6,8,10]]',26,'Botble\\Ecommerce\\Models\\Product','2024-06-05 00:00:50','2024-06-05 00:00:50'),(31,'faq_ids','[[3,4,5,9,10]]',27,'Botble\\Ecommerce\\Models\\Product','2024-06-05 00:00:51','2024-06-05 00:00:51'),(32,'faq_ids','[[2,3,5,7,8]]',28,'Botble\\Ecommerce\\Models\\Product','2024-06-05 00:00:51','2024-06-05 00:00:51'),(33,'faq_ids','[[1,2,7,8,9]]',29,'Botble\\Ecommerce\\Models\\Product','2024-06-05 00:00:51','2024-06-05 00:00:51'),(34,'faq_ids','[[1,4,5,7,8]]',30,'Botble\\Ecommerce\\Models\\Product','2024-06-05 00:00:51','2024-06-05 00:00:51'),(35,'faq_ids','[[1,5,7,9,10]]',31,'Botble\\Ecommerce\\Models\\Product','2024-06-05 00:00:51','2024-06-05 00:00:51'),(36,'faq_ids','[[2,4,5,6,9]]',32,'Botble\\Ecommerce\\Models\\Product','2024-06-05 00:00:51','2024-06-05 00:00:51'),(37,'faq_ids','[[1,5,8,9,10]]',33,'Botble\\Ecommerce\\Models\\Product','2024-06-05 00:00:51','2024-06-05 00:00:51'),(38,'faq_ids','[[2,3,6,7,9]]',34,'Botble\\Ecommerce\\Models\\Product','2024-06-05 00:00:51','2024-06-05 00:00:51'),(39,'faq_ids','[[2,5,6,9,10]]',35,'Botble\\Ecommerce\\Models\\Product','2024-06-05 00:00:51','2024-06-05 00:00:51'),(40,'faq_ids','[[1,4,6,7,8]]',36,'Botble\\Ecommerce\\Models\\Product','2024-06-05 00:00:51','2024-06-05 00:00:51'),(41,'faq_ids','[[1,2,3,4,10]]',37,'Botble\\Ecommerce\\Models\\Product','2024-06-05 00:00:51','2024-06-05 00:00:51'),(42,'faq_ids','[[2,5,6,9,10]]',38,'Botble\\Ecommerce\\Models\\Product','2024-06-05 00:00:51','2024-06-05 00:00:51'),(43,'faq_ids','[[1,3,4,9,10]]',39,'Botble\\Ecommerce\\Models\\Product','2024-06-05 00:00:51','2024-06-05 00:00:51'),(44,'faq_ids','[[1,4,5,7,8]]',40,'Botble\\Ecommerce\\Models\\Product','2024-06-05 00:00:51','2024-06-05 00:00:51'),(45,'faq_ids','[[1,2,6,9,10]]',41,'Botble\\Ecommerce\\Models\\Product','2024-06-05 00:00:51','2024-06-05 00:00:51'),(46,'faq_ids','[[1,4,7,9,10]]',42,'Botble\\Ecommerce\\Models\\Product','2024-06-05 00:00:51','2024-06-05 00:00:51'),(47,'faq_ids','[[3,7,8,9,10]]',43,'Botble\\Ecommerce\\Models\\Product','2024-06-05 00:00:51','2024-06-05 00:00:51'),(48,'title','[\"Ardeco pearl \\n Rings style 2023\"]',1,'Botble\\Ads\\Models\\Ads','2024-06-05 00:00:51','2024-06-05 00:00:51'),(49,'subtitle','[\"Collection\"]',1,'Botble\\Ads\\Models\\Ads','2024-06-05 00:00:51','2024-06-05 00:00:51'),(50,'button_label','[\"Shop Now\"]',1,'Botble\\Ads\\Models\\Ads','2024-06-05 00:00:51','2024-06-05 00:00:51'),(51,'title','[\"Tropical Set\"]',2,'Botble\\Ads\\Models\\Ads','2024-06-05 00:00:51','2024-06-05 00:00:51'),(52,'subtitle','[\"Trending\"]',2,'Botble\\Ads\\Models\\Ads','2024-06-05 00:00:51','2024-06-05 00:00:51'),(53,'button_label','[\"Shop Now\"]',2,'Botble\\Ads\\Models\\Ads','2024-06-05 00:00:51','2024-06-05 00:00:51'),(54,'title','[\"Gold Jewelry\"]',3,'Botble\\Ads\\Models\\Ads','2024-06-05 00:00:51','2024-06-05 00:00:51'),(55,'subtitle','[\"New Arrival\"]',3,'Botble\\Ads\\Models\\Ads','2024-06-05 00:00:51','2024-06-05 00:00:51'),(56,'button_label','[\"Shop Now\"]',3,'Botble\\Ads\\Models\\Ads','2024-06-05 00:00:51','2024-06-05 00:00:51'),(57,'title','[\"Ring gold with \\n diamonds\"]',4,'Botble\\Ads\\Models\\Ads','2024-06-05 00:00:51','2024-06-05 00:00:51'),(58,'subtitle','[\"Collection\"]',4,'Botble\\Ads\\Models\\Ads','2024-06-05 00:00:51','2024-06-05 00:00:51'),(59,'button_label','[\"Shop Now\"]',4,'Botble\\Ads\\Models\\Ads','2024-06-05 00:00:51','2024-06-05 00:00:51'),(60,'breadcrumb_style','[\"none\"]',1,'Botble\\Page\\Models\\Page','2024-06-05 00:00:52','2024-06-05 00:00:52'),(61,'breadcrumb_style','[\"align-start\"]',2,'Botble\\Page\\Models\\Page','2024-06-05 00:00:52','2024-06-05 00:00:52'),(62,'breadcrumb_style','[\"align-center\"]',6,'Botble\\Page\\Models\\Page','2024-06-05 00:00:52','2024-06-05 00:00:52');
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
INSERT INTO `mp_stores` VALUES (1,'GoPro','francesca77@example.net','+16289894247','2041 Friesen Skyway Apt. 366','NG','New Hampshire','South Wilbert',8,'main/stores/1.png','main/stores/cover-2.png','Et provident in dignissimos ipsum qui. Blanditiis nemo tenetur tempore quam. Doloremque quia et iusto et repudiandae et ipsum nesciunt. Et rerum aut minus odit blanditiis. Ab nobis sit dolorum fuga consequatur non omnis. Illo corporis placeat sed aliquam vel est amet dolore. Iure saepe incidunt quia nemo quis consequatur iusto.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/main/blog/post-1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/main/blog/post-2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/main/blog/post-3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/main/blog/post-4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/main/blog/post-5.jpg\"></p>\n\n                <p> </p>\n                ','published',NULL,'2024-06-05 00:00:49','2024-06-05 00:00:49',NULL,NULL),(2,'Global Office','schumm.imogene@example.com','+14694130973','77993 Cole Extension','TG','Louisiana','West Watson',2,'main/stores/2.png','main/stores/cover-1.png','Quia recusandae autem non voluptate incidunt. Molestiae tempore occaecati dolore odio eum ut saepe perspiciatis. Voluptatibus occaecati corporis ex dolorem aut inventore. Velit assumenda consequatur ea impedit vero. Suscipit dolores nihil voluptatem ut. Veniam voluptatem est temporibus distinctio. Qui mollitia officia necessitatibus ratione in. Enim voluptas assumenda ipsam sed aut ut corporis.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/main/blog/post-1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/main/blog/post-2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/main/blog/post-3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/main/blog/post-4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/main/blog/post-5.jpg\"></p>\n\n                <p> </p>\n                ','published',NULL,'2024-06-05 00:00:49','2024-06-05 00:00:49',NULL,NULL),(3,'Young Shop','valentine08@example.com','+14585301810','47562 Lindgren Underpass','AS','Idaho','Handport',5,'main/stores/3.png','main/stores/cover-1.png','Sed distinctio unde excepturi. Deleniti qui sapiente deleniti voluptas distinctio. Rerum voluptates blanditiis officiis et eligendi. Et ut mollitia iure earum rerum ab. Nemo aut velit exercitationem commodi. Sint et qui hic minima. At iusto soluta sint aut cum iste qui. Et voluptas et et. Provident ex et et ut tempora.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/main/blog/post-1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/main/blog/post-2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/main/blog/post-3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/main/blog/post-4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/main/blog/post-5.jpg\"></p>\n\n                <p> </p>\n                ','published',NULL,'2024-06-05 00:00:49','2024-06-05 00:00:49',NULL,NULL),(4,'Global Store','keith17@example.org','+15306531594','1826 Simonis Via','BI','Alaska','Reichertborough',5,'main/stores/4.png','main/stores/cover-1.png','Quam rerum dicta quasi itaque quo sit. Ut nobis aliquam et aut sed. Qui ut officia voluptatem illo harum. Non atque assumenda assumenda. Eum corrupti voluptas eius quae voluptatem. Minus et omnis molestiae praesentium inventore tempora reprehenderit voluptas. Corporis aut dolorum qui quia ratione aut. Corporis eaque eius sit voluptatem qui. Unde deserunt delectus maxime qui praesentium omnis ea.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/main/blog/post-1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/main/blog/post-2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/main/blog/post-3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/main/blog/post-4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/main/blog/post-5.jpg\"></p>\n\n                <p> </p>\n                ','published',NULL,'2024-06-05 00:00:49','2024-06-05 00:00:49',NULL,NULL),(5,'Robert’s Store','rudolph.erdman@example.org','+17638505901','6480 Noel Islands Suite 834','LT','Florida','South Ronnyburgh',3,'main/stores/5.png','main/stores/cover-3.png','Vero qui iste rerum nam dolores rerum voluptatem aliquam. Qui et minima labore similique sit commodi. Unde sapiente enim molestiae repellat modi rerum.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/main/blog/post-1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/main/blog/post-2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/main/blog/post-3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/main/blog/post-4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/main/blog/post-5.jpg\"></p>\n\n                <p> </p>\n                ','published',NULL,'2024-06-05 00:00:49','2024-06-05 00:00:49',NULL,NULL),(6,'Stouffer','martina42@example.org','+12318859341','899 Verlie Mountain','BT','Illinois','West Garrett',6,'main/stores/6.png','main/stores/cover-5.png','Maiores illum debitis expedita dolore fugiat quidem quis. Incidunt repellat et accusamus nam. Velit ratione cumque qui quibusdam atque aut earum. Molestias blanditiis dolor nostrum officiis modi est. Libero doloribus suscipit rerum deserunt iste eaque. Illum earum velit ullam voluptatum laborum libero. Odio ea praesentium blanditiis et asperiores possimus.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/main/blog/post-1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/main/blog/post-2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/main/blog/post-3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/main/blog/post-4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/main/blog/post-5.jpg\"></p>\n\n                <p> </p>\n                ','published',NULL,'2024-06-05 00:00:49','2024-06-05 00:00:49',NULL,NULL),(7,'StarKist','senger.gennaro@example.org','+16298338670','710 Kuhn Ranch','GA','Illinois','East Tyreek',4,'main/stores/7.png','main/stores/cover-4.png','Iure et est cumque dolorem. Voluptatem incidunt nemo reprehenderit atque sed architecto cumque. Dolorem eum sequi eos est amet rem dolores. Qui quia voluptatibus eum repellendus. Ab quo labore quas omnis autem consequatur sunt similique. Dicta exercitationem quos eos laborum cupiditate. Doloribus nam delectus in quasi vitae.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/main/blog/post-1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/main/blog/post-2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/main/blog/post-3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/main/blog/post-4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/main/blog/post-5.jpg\"></p>\n\n                <p> </p>\n                ','published',NULL,'2024-06-05 00:00:49','2024-06-05 00:00:49',NULL,NULL),(8,'Old El Paso','karlee83@example.org','+15854424544','121 Green Trace','AE','Missouri','Port Autumnfort',4,'main/stores/8.png','main/stores/cover-5.png','Et est mollitia enim ea et molestiae. Inventore adipisci voluptates ipsum numquam hic. Fugiat repellendus quaerat tempora sed vel sed. Enim accusantium nobis consequatur rerum. Ab minima reiciendis repellat vitae dolorum. Ducimus incidunt fugit qui ut assumenda minus ipsa.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/main/blog/post-1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/main/blog/post-2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/main/blog/post-3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/main/blog/post-4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/main/blog/post-5.jpg\"></p>\n\n                <p> </p>\n                ','published',NULL,'2024-06-05 00:00:49','2024-06-05 00:00:49',NULL,NULL);
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
INSERT INTO `mp_vendor_info` VALUES (1,2,0.00,0.00,0.00,'$2y$12$41DvJf03tT9BCvsd/fMI4enWzcfWgGaW2owHtpbHjIRdVR//bYRsC','{\"name\":\"Mrs. Bethany Keebler\",\"number\":\"+19314104532\",\"full_name\":\"Harry Schoen\",\"description\":\"Margaretta Mitchell\"}','2024-06-05 00:00:48','2024-06-05 00:00:48','bank_transfer',NULL),(2,3,0.00,0.00,0.00,'$2y$12$vTn7j5CM4IC8LhfZGD1UJu1G41WbfUUHDTr4uqt5Y6htSvQJCGL2G','{\"name\":\"Genoveva Boyle\",\"number\":\"+16894196722\",\"full_name\":\"Rhianna O\'Keefe\",\"description\":\"Mrs. Tina Gulgowski\"}','2024-06-05 00:00:48','2024-06-05 00:00:48','bank_transfer',NULL),(3,4,0.00,0.00,0.00,'$2y$12$/P/qTeNitdHskmMcg8AhTeO1dV1AvhdYz1hPAjqhaAaex3tWEVqCq','{\"name\":\"Pauline Okuneva\",\"number\":\"+13418450049\",\"full_name\":\"Prof. Miracle Dach\",\"description\":\"Collin Murazik\"}','2024-06-05 00:00:48','2024-06-05 00:00:48','bank_transfer',NULL),(4,5,0.00,0.00,0.00,'$2y$12$Z3uOCp.4GrVvWQFIW.AJ0e6aJOTkGSXcFpGd.lqWOZ2Nrt6eb3Ace','{\"name\":\"Ms. Gerry Moore\",\"number\":\"+16573691505\",\"full_name\":\"Mr. Joshuah Kemmer\",\"description\":\"Kellen Morissette V\"}','2024-06-05 00:00:48','2024-06-05 00:00:48','bank_transfer',NULL),(5,6,0.00,0.00,0.00,'$2y$12$uP336Wp1dbltUEX6ZXFOHe6ni/lYiKkPQKx66J2mglR/v2QWEa9te','{\"name\":\"Daniela Tillman\",\"number\":\"+13058859635\",\"full_name\":\"Josiane Senger Jr.\",\"description\":\"Melba Gorczany\"}','2024-06-05 00:00:49','2024-06-05 00:00:49','bank_transfer',NULL),(6,7,0.00,0.00,0.00,'$2y$12$sFmSGHJR8zN11U4E9IkLv./fYOqOCD3FGrqsr2l406fOp1f5H8Y5e','{\"name\":\"Dr. Oma Daniel\",\"number\":\"+15804662297\",\"full_name\":\"Dr. Parker Sporer\",\"description\":\"Janelle O\'Reilly\"}','2024-06-05 00:00:49','2024-06-05 00:00:49','bank_transfer',NULL),(7,8,0.00,0.00,0.00,'$2y$12$csQ/wpxhzm43J6/hpg1HOuPqW8cBIn4VFSy1VMIEq1VmCgRZvt7T.','{\"name\":\"Imani Crist\",\"number\":\"+18455046182\",\"full_name\":\"Erwin Nikolaus I\",\"description\":\"Emmie Tillman\"}','2024-06-05 00:00:49','2024-06-05 00:00:49','bank_transfer',NULL);
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
INSERT INTO `pages` VALUES (1,'Home','[simple-slider style=\"4\" key=\"home-slider\" customize_font_family_of_description=\"1\" font_family_of_description=\"Charm\" shape_1=\"fashion/sliders/shape-1.png\" shape_2=\"fashion/sliders/shape-2.png\" shape_3=\"fashion/sliders/shape-3.png\" is_autoplay=\"yes\" autoplay_speed=\"5000\"][/simple-slider][site-features style=\"3\" quantity=\"4\" title_1=\"Free Delivery\" description_1=\"Orders from all item\" icon_1=\"ti ti-truck-delivery\" title_2=\"Return & Refund\" description_2=\"Money-back guarantee\" icon_2=\"ti ti-currency-dollar\" title_3=\"Member Discount\" description_3=\"Every order over $140.00\" icon_3=\"ti ti-discount-2\" title_4=\"Support 24/7\" description_4=\"Contact us 24 hours a day\" icon_4=\"ti ti-headset\" enable_lazy_loading=\"yes\"][/site-features][ads style=\"3\" key_1=\"UROL9F9ZZVAA\" key_2=\"B30VDBKO7SBF\" key_3=\"BN3ZCHLIE95I\" key_4=\"QGPRRJ2MPZYA\" enable_lazy_loading=\"yes\"][/ads][about image_1=\"main/general/about-1.jpg\" image_2=\"main/general/about-2.jpg\" subtitle=\"Unity Collection\" title=\"Shop our limited Edition Collaborations\" description=\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras vel mi quam. Fusce vehicula vitae mauris sit amet tempor. Donec consectetur lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna.\" action_label=\"Contact Us\" action_url=\"/contact\" enable_lazy_loading=\"yes\"][/about][ecommerce-products style=\"slider-full-width\" title=\"This Week\'s Featured\" subtitle=\"Shop by Category\" collection_ids=\"1\" limit=\"5\" with_sidebar=\"on\" background_color=\"#EFF1F5\" enable_lazy_loading=\"yes\"][/ecommerce-products][ecommerce-product-groups title=\"Discover our Products\" subtitle=\"Product Collection\" limit=\"8\" tabs=\"all,featured,on-sale,trending,top-rated\" enable_lazy_loading=\"yes\"][/ecommerce-product-groups][ecommerce-products style=\"slider\" title=\"Top Sellers In Dress for You\" subtitle=\"Best Seller This Week’s\" by=\"collection\" collection_ids=\"2\" limit=\"5\" enable_lazy_loading=\"yes\"][/ecommerce-products][image-slider type=\"custom\" quantity=\"4\" name_1=\"Brandit\" image_1=\"main/brands/1.png\" url_1=\"https://brandit-wear.com\" name_2=\"Vintage\" image_2=\"main/brands/2.png\" url_2=\"https://vintagebrand.com/\" name_3=\"Showtime\" image_3=\"main/brands/3.png\" url_3=\"https://www.showtime.com/\" name_4=\"Classic Design Studio\" image_4=\"main/brands/5.png\" url_4=\"http://www.classicdesignstudios.com/\" enable_lazy_loading=\"yes\"][/image-slider][gallery style=\"2\" title=\"Trends on image feed\" subtitle=\"After many months design and development of a modern online retailer\" limit=\"6\" enable_lazy_loading=\"yes\"][/gallery]',1,NULL,'full-width',NULL,'published','2024-06-05 00:00:52','2024-06-05 00:00:52'),(2,'Product Categories','[ads style=\"3\" key_1=\"UROL9F9ZZVAA\" key_2=\"B30VDBKO7SBF\" enable_lazy_loading=\"yes\"][/ads]<p>&nbsp;</p>[ecommerce-categories category_ids=\"11,14,17,18,21,22,23,25,38\" style=\"grid\" enable_lazy_loading=\"yes\"][/ecommerce-categories]<p>&nbsp;</p><p>&nbsp;</p>',1,NULL,'full-width',NULL,'published','2024-06-05 00:00:52','2024-06-05 00:00:52'),(3,'Coupons','[ecommerce-coupons coupon_ids=\"1,2,3,4,5,6\" enable_lazy_loading=\"yes\"][/ecommerce-coupons]',1,NULL,'full-width',NULL,'published','2024-06-05 00:00:52','2024-06-05 00:00:52'),(4,'Blog',NULL,1,NULL,'full-width',NULL,'published','2024-06-05 00:00:52','2024-06-05 00:00:52'),(5,'Contact','[contact-form show_contact_form=&quot;1&quot; title=&quot;Sent A Message&quot; quantity=&quot;2&quot; icon_1=&quot;main/contact/icon-1.png&quot; content_1=&quot;contact@shofy.com &lt;br&gt; &lt;strong&gt;+670 413 90 762&lt;/strong&gt;&quot; icon_2=&quot;main/contact/icon-2.png&quot; content_2=&quot;502 New St, Brighton VIC 3186, Australia&quot; show_social_info=&quot;1&quot; social_info_label=&quot;Find on social media&quot; social_info_icon=&quot;main/contact/icon-3.png&quot;][/contact-form][google-map]502 New Street, Brighton VIC, Australia[/google-map]',1,NULL,'full-width',NULL,'published','2024-06-05 00:00:52','2024-06-05 00:00:52'),(6,'FAQs','[faqs style=\"group\" title=\"Frequently Ask Questions\" description=\"Below are frequently asked questions, you may find the answer for yourself.\" category_ids=\"1,2,3\" expand_first_time=\"1\"][/faqs]',1,NULL,NULL,NULL,'published','2024-06-05 00:00:52','2024-06-05 00:00:52'),(7,'Cookie Policy','<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>',1,NULL,NULL,NULL,'published','2024-06-05 00:00:52','2024-06-05 00:00:52'),(8,'Our Story','<h4>A passion for handcrafted coffee, brewed with love and community.</h4>\n\n<p>\n    We are a small, family-owned coffee roaster dedicated to bringing the finest, ethically sourced beans to your cup. Our story began in a cozy kitchen, fueled by a shared passion for the rich aroma and invigorating taste of freshly brewed coffee. We dreamt of creating a space where people could connect over a warm cup, share stories, and experience the joy of handcrafted coffee.\n</p>\n\n<h4>From Humble Beginnings to Roasting Success:</h4>\n\n<p>\n    Our journey started with a small coffee roaster nestled in our garage. We spent countless hours experimenting with different roasting profiles, meticulously cupping each batch to achieve the perfect balance of flavor and aroma. Driven by a desire to make a difference, we built relationships with sustainable coffee farms around the world, ensuring fair trade practices and the highest quality beans.\n</p>\n\n<h4>Milestones and More to Come:</h4>\n\n<p>\n    Our dedication to quality and community resonated with coffee lovers, and our small business quickly grew. We opened our first cafe, a warm and inviting space where people could gather, savor our freshly roasted coffee, and connect with friends and neighbors. We\'ve continued to expand, now offering a variety of handcrafted coffee beverages, alongside delicious pastries and light bites.\n</p>\n\n<h4>Values at Our Core:</h4>\n\n<p>\n    At the heart of everything we do lies our commitment to ethical sourcing, sustainable practices, and building meaningful connections. We believe in supporting the communities that cultivate our coffee beans, ensuring fair wages and responsible farming methods. Every cup you enjoy contributes to a positive impact, one sip at a time.\n</p>\n\n<h4>Join us on our journey!</h4>\n\n<p>\n    We invite you to explore our world of coffee, from the rich diversity of our bean origins to the unique flavors crafted through meticulous roasting. Visit our cafe, discover your perfect cup, and become part of our ever-growing coffee community. Let\'s connect over a cup, share stories, and celebrate the simple joy of a well-brewed coffee.\n</p>\n',1,NULL,NULL,NULL,'published','2024-06-05 00:00:52','2024-06-05 00:00:52'),(9,'Careers','<h3>Careers: Be Part of Our Brewing Legacy</h3>\n\n<p>\n    At Shofy, we\'re not just brewing coffee, we\'re brewing a legacy. Since our humble beginnings in 2024, we\'ve grown from a small, family-owned roaster to a thriving coffee haven. But our passion for quality, community, and sustainability remains at the core of everything we do.\n</p>\n\n<h4>Why Join Our Team?</h4>\n\n<ul>\n    <li>\n        <p><strong>Become a Coffee Connoisseur</strong>: Immerse yourself in the world of coffee, learning from experienced roasters and baristas about bean origins, roasting techniques, and crafting the perfect cup.</p>\n    </li>\n    <li>\n        <p><strong>Fuel Your Passion</strong>: Contribute to our mission by sourcing ethically, promoting sustainable practices, and fostering positive relationships with coffee-growing communities around the globe.</p>\n    </li>\n    <li>\n        <p><strong>Grow with Us</strong>: We offer comprehensive training programs and opportunities for professional development, helping you refine your skills and advance your career in the coffee industry.</p>\n    </li>\n    <li>\n        <p><strong>Be Part of the Family</strong>: We cultivate a collaborative and supportive work environment where your unique talents and perspectives are valued.</p>\n    </li>\n</ul>\n\n<h4>Current Openings:</h4>\n\n<ul>\n    <li>\n        <p><strong>Coffee Roaster</strong>: Play a vital role in our roasting process, meticulously crafting unique flavor profiles and ensuring the highest quality beans reach our customers.</p>\n    </li>\n    <li>\n        <p><strong>Barista</strong>: Become a coffee ambassador, welcoming guests with a smile, crafting their perfect cup, and sharing your knowledge and passion for coffee.</p>\n    </li>\n    <li>\n        <p><strong>Cafe Manager</strong>: Lead your team in creating a warm and inviting atmosphere, overseeing daily operations, and ensuring exceptional customer service.</p>\n    </li>\n</ul>\n\n<h4>We are always looking for passionate individuals who share our values:</h4>\n\n<ul>\n    <li>\n        <p>A genuine love for coffee and a desire to learn everything there is to know about it.</p>\n    </li>\n    <li>\n        <p>A commitment to ethical sourcing, sustainability, and social responsibility.</p>\n    </li>\n    <li>\n        <p>Excellent communication and interpersonal skills to build rapport with colleagues and customers.</p>\n    </li>\n    <li>\n        <p>A positive attitude, a willingness to learn, and a collaborative spirit.</p>\n    </li>\n</ul>\n\n<p>Ready to join our brewing legacy?</p>\n\n<p>\n    Submit your resume and cover letter, telling us why you\'re a perfect fit for our team. We look forward to meeting passionate individuals who are ready to brew the future with us, one cup at a time.\n</p>\n',1,NULL,NULL,NULL,'published','2024-06-05 00:00:52','2024-06-05 00:00:52'),(10,'Shipping','<section>\n    <h2>Shipping Methods</h2>\n    <p>We offer several shipping methods to choose from:</p>\n    <ul>\n        <li>Standard Shipping - 3 to 5 business days</li>\n        <li>Express Shipping - 1 to 2 business days</li>\n        <li>International Shipping - 7 to 14 business days</li>\n    </ul>\n    <p>Please note that shipping times may vary depending on your location and other factors.</p>\n</section>\n\n<section>\n    <h2>Shipping Costs</h2>\n    <p>Shipping costs are calculated based on the weight of your order and the shipping method selected during checkout.</p>\n    <p>You can view the estimated shipping costs in your shopping cart before completing your purchase.</p>\n</section>\n\n<section>\n    <h2>Tracking Your Order</h2>\n    <p>Once your order has been shipped, you will receive a confirmation email with a tracking number.</p>\n    <p>You can use this tracking number to monitor the status of your delivery on our website or through the shipping carrier\'s website.</p>\n</section>\n\n<section>\n    <h2>Shipping Restrictions</h2>\n    <p>Some items may be subject to shipping restrictions due to size, weight, or destination.</p>\n    <p>If your order contains any restricted items, we will notify you during the checkout process.</p>\n</section>\n',1,NULL,NULL,NULL,'published','2024-06-05 00:00:52','2024-06-05 00:00:52'),(11,'Coming Soon','[coming-soon title=\"Get Notified When We Launch\" countdown_time=\"2024-12-22\" address=\" 58 Street Commercial Road Fratton, Australia\" hotline=\"+123456789\" business_hours=\"Mon – Sat: 8 am – 5 pm, Sunday: CLOSED\" show_social_links=\"0,1\" image=\"main/general/contact-img.jpg\"][/coming-soon]',1,NULL,'without-layout',NULL,'published','2024-06-05 00:00:52','2024-06-05 00:00:52');
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
INSERT INTO `post_categories` VALUES (4,1),(6,1),(4,2),(5,2),(6,3),(4,3),(4,4),(3,4),(4,5),(1,5),(3,6),(1,6),(4,7),(3,8),(1,8),(6,9),(5,9),(4,10),(2,10),(2,11),(3,12),(2,12),(1,13),(5,13),(2,14),(6,14),(4,15),(2,15),(2,16),(1,16),(4,17),(3,17),(6,18),(4,18);
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
INSERT INTO `post_tags` VALUES (2,1),(5,1),(2,2),(3,2),(1,2),(6,3),(8,3),(1,3),(3,4),(2,4),(7,4),(3,5),(5,5),(7,6),(3,6),(5,6),(6,7),(7,7),(2,8),(5,8),(3,9),(4,9),(6,9),(5,10),(2,10),(8,10),(4,11),(5,11),(8,11),(3,12),(4,12),(3,13),(4,13),(8,13),(4,14),(7,14),(8,14),(2,15),(6,15),(7,15),(6,16),(1,16),(2,16),(5,17),(1,17),(6,17),(8,18),(1,18);
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
INSERT INTO `posts` VALUES (1,'4 Expert Tips On How To Choose The Right Men’s Wallet','I\'m pleased, and wag my tail when it\'s pleased. Now I growl when I\'m angry. Therefore I\'m mad.\' \'I call it purring, not growling,\' said Alice. \'You must be,\' said the Caterpillar. \'Well, I\'ve tried.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-7.jpg',1237,NULL,'2024-06-05 00:00:46','2024-06-05 00:00:46'),(2,'Sexy Clutches: How to Buy &amp; Wear a Designer Clutch Bag','What made you so awfully clever?\' \'I have answered three questions, and that makes the matter with it. There could be no use speaking to it,\' she said to herself \'Suppose it should be raving mad--at.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-11.jpg',670,NULL,'2024-06-05 00:00:46','2024-06-05 00:00:46'),(3,'The Top 2020 Handbag Trends to Know','Owl, as a lark, And will talk in contemptuous tones of her childhood: and how she would catch a bat, and that\'s very like having a game of croquet she was now the right height to rest herself, and.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-6.jpg',141,NULL,'2024-06-05 00:00:46','2024-06-05 00:00:46'),(4,'How to Match the Color of Your Handbag With an Outfit','Dinah, and saying to herself, and fanned herself with one foot. \'Get up!\' said the Hatter and the whole party look so grave that she still held the pieces of mushroom in her face, and was going on.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-3.jpg',1187,NULL,'2024-06-05 00:00:46','2024-06-05 00:00:46'),(5,'How to Care for Leather Bags','So she began: \'O Mouse, do you call it sad?\' And she went on, \'that they\'d let Dinah stop in the last few minutes to see if he were trying which word sounded best. Some of the accident, all except.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-11.jpg',1542,NULL,'2024-06-05 00:00:46','2024-06-05 00:00:46'),(6,'We\'re Crushing Hard on Summer\'s 10 Biggest Bag Trends','Cat said, waving its right ear and left foot, so as to prevent its undoing itself,) she carried it out to her feet as the March Hare. \'It was the first to speak. \'What size do you know what it was.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-5.jpg',2225,NULL,'2024-06-05 00:00:46','2024-06-05 00:00:46'),(7,'Essential Qualities of Highly Successful Music','THAT. Then again--\"BEFORE SHE HAD THIS FIT--\" you never even spoke to Time!\' \'Perhaps not,\' Alice replied eagerly, for she was out of the trees had a VERY good opportunity for croqueting one of the.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-2.jpg',1418,NULL,'2024-06-05 00:00:46','2024-06-05 00:00:46'),(8,'9 Things I Love About Shaving My Head','Derision.\' \'I never said I didn\'t!\' interrupted Alice. \'You are,\' said the Hatter, it woke up again with a round face, and was going a journey, I should like it put more simply--\"Never imagine.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-5.jpg',833,NULL,'2024-06-05 00:00:46','2024-06-05 00:00:46'),(9,'Why Teamwork Really Makes The Dream Work','It\'s high time to hear it say, as it went, \'One side of WHAT? The other guests had taken his watch out of the jurymen. \'No, they\'re not,\' said the Queen, \'and take this young lady tells us a story!\'.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-4.jpg',388,NULL,'2024-06-05 00:00:46','2024-06-05 00:00:46'),(10,'The World Caters to Average People','For instance, suppose it were white, but there was a dead silence instantly, and neither of the ground, Alice soon began talking to him,\' said Alice aloud, addressing nobody in particular. \'She\'d.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-5.jpg',1214,NULL,'2024-06-05 00:00:46','2024-06-05 00:00:46'),(11,'The litigants on the screen are not actors','March Hare,) \'--it was at the cook, to see how he did not feel encouraged to ask his neighbour to tell them something more. \'You promised to tell him. \'A nice muddle their slates\'ll be in a very.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-5.jpg',1437,NULL,'2024-06-05 00:00:46','2024-06-05 00:00:46'),(12,'Hiring the Right Sales Team at the Right Time','March--just before HE went mad, you know--\' She had not the same, shedding gallons of tears, \'I do wish they WOULD go with Edgar Atheling to meet William and offer him the crown. William\'s conduct.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-3.jpg',261,NULL,'2024-06-05 00:00:46','2024-06-05 00:00:46'),(13,'Fully Embrace the Return of 90s fashion','Mock Turtle, and to hear the words:-- \'I speak severely to my right size for ten minutes together!\' \'Can\'t remember WHAT things?\' said the Pigeon; \'but I haven\'t had a consultation about this, and.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-7.jpg',1659,NULL,'2024-06-05 00:00:46','2024-06-05 00:00:46'),(14,'Exploring the English Countryside','Alice\'s elbow was pressed hard against it, that attempt proved a failure. Alice heard the Rabbit whispered in reply, \'for fear they should forget them before the trial\'s begun.\' \'They\'re putting.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-2.jpg',1154,NULL,'2024-06-05 00:00:46','2024-06-05 00:00:46'),(15,'Here’s the First Valentino’s New Makeup Collection','The three soldiers wandered about for it, he was going to be, from one foot up the chimney, and said \'No, never\') \'--so you can find it.\' And she kept fanning herself all the first question, you.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-9.jpg',1299,NULL,'2024-06-05 00:00:46','2024-06-05 00:00:46'),(16,'Follow Your own Design process, whatever gets','I vote the young lady tells us a story.\' \'I\'m afraid I\'ve offended it again!\' For the Mouse in the distance, and she went on eagerly: \'There is such a thing I know. Silence all round, if you like!\'.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-11.jpg',1719,NULL,'2024-06-05 00:00:46','2024-06-05 00:00:46'),(17,'Freelancer Days 2024, What’s new?','Hatter: and in another moment, when she had finished, her sister sat still just as usual. \'Come, there\'s half my plan done now! How puzzling all these changes are! I\'m never sure what I\'m going to.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-10.jpg',276,NULL,'2024-06-05 00:00:46','2024-06-05 00:00:46'),(18,'Quality Foods Requirments For Every Human Body’s','I know!\' exclaimed Alice, who had got burnt, and eaten up by a row of lamps hanging from the roof. There were doors all round the table, half hoping that the pebbles were all locked; and when she.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-3.jpg',1733,NULL,'2024-06-05 00:00:46','2024-06-05 00:00:46');
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
INSERT INTO `roles` VALUES (1,'admin','Admin','{\"users.index\":true,\"users.create\":true,\"users.edit\":true,\"users.destroy\":true,\"roles.index\":true,\"roles.create\":true,\"roles.edit\":true,\"roles.destroy\":true,\"core.system\":true,\"core.cms\":true,\"core.manage.license\":true,\"systems.cronjob\":true,\"core.tools\":true,\"tools.data-synchronize\":true,\"media.index\":true,\"files.index\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.destroy\":true,\"folders.index\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.destroy\":true,\"settings.index\":true,\"settings.common\":true,\"settings.options\":true,\"settings.email\":true,\"settings.media\":true,\"settings.admin-appearance\":true,\"settings.cache\":true,\"settings.datatables\":true,\"settings.email.rules\":true,\"settings.others\":true,\"menus.index\":true,\"menus.create\":true,\"menus.edit\":true,\"menus.destroy\":true,\"optimize.settings\":true,\"pages.index\":true,\"pages.create\":true,\"pages.edit\":true,\"pages.destroy\":true,\"plugins.index\":true,\"plugins.edit\":true,\"plugins.remove\":true,\"plugins.marketplace\":true,\"core.appearance\":true,\"theme.index\":true,\"theme.activate\":true,\"theme.remove\":true,\"theme.options\":true,\"theme.custom-css\":true,\"theme.custom-js\":true,\"theme.custom-html\":true,\"theme.robots-txt\":true,\"settings.website-tracking\":true,\"widgets.index\":true,\"ads.index\":true,\"ads.create\":true,\"ads.edit\":true,\"ads.destroy\":true,\"ads.settings\":true,\"analytics.general\":true,\"analytics.page\":true,\"analytics.browser\":true,\"analytics.referrer\":true,\"analytics.settings\":true,\"announcements.index\":true,\"announcements.create\":true,\"announcements.edit\":true,\"announcements.destroy\":true,\"announcements.settings\":true,\"audit-log.index\":true,\"audit-log.destroy\":true,\"backups.index\":true,\"backups.create\":true,\"backups.restore\":true,\"backups.destroy\":true,\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"categories.index\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"blog.settings\":true,\"posts.export\":true,\"posts.import\":true,\"captcha.settings\":true,\"contacts.index\":true,\"contacts.edit\":true,\"contacts.destroy\":true,\"contact.settings\":true,\"plugins.ecommerce\":true,\"ecommerce.report.index\":true,\"products.index\":true,\"products.create\":true,\"products.edit\":true,\"products.destroy\":true,\"products.duplicate\":true,\"ecommerce.product-prices.index\":true,\"ecommerce.product-prices.edit\":true,\"ecommerce.product-inventory.index\":true,\"ecommerce.product-inventory.edit\":true,\"product-categories.index\":true,\"product-categories.create\":true,\"product-categories.edit\":true,\"product-categories.destroy\":true,\"product-tag.index\":true,\"product-tag.create\":true,\"product-tag.edit\":true,\"product-tag.destroy\":true,\"brands.index\":true,\"brands.create\":true,\"brands.edit\":true,\"brands.destroy\":true,\"product-collections.index\":true,\"product-collections.create\":true,\"product-collections.edit\":true,\"product-collections.destroy\":true,\"product-attribute-sets.index\":true,\"product-attribute-sets.create\":true,\"product-attribute-sets.edit\":true,\"product-attribute-sets.destroy\":true,\"product-attributes.index\":true,\"product-attributes.create\":true,\"product-attributes.edit\":true,\"product-attributes.destroy\":true,\"tax.index\":true,\"tax.create\":true,\"tax.edit\":true,\"tax.destroy\":true,\"reviews.index\":true,\"reviews.create\":true,\"reviews.destroy\":true,\"reviews.publish\":true,\"reviews.reply\":true,\"ecommerce.shipments.index\":true,\"ecommerce.shipments.create\":true,\"ecommerce.shipments.edit\":true,\"ecommerce.shipments.destroy\":true,\"orders.index\":true,\"orders.create\":true,\"orders.edit\":true,\"orders.destroy\":true,\"discounts.index\":true,\"discounts.create\":true,\"discounts.edit\":true,\"discounts.destroy\":true,\"customers.index\":true,\"customers.create\":true,\"customers.edit\":true,\"customers.destroy\":true,\"flash-sale.index\":true,\"flash-sale.create\":true,\"flash-sale.edit\":true,\"flash-sale.destroy\":true,\"product-label.index\":true,\"product-label.create\":true,\"product-label.edit\":true,\"product-label.destroy\":true,\"ecommerce.import.products.index\":true,\"ecommerce.export.products.index\":true,\"order_returns.index\":true,\"order_returns.edit\":true,\"order_returns.destroy\":true,\"global-option.index\":true,\"global-option.create\":true,\"global-option.edit\":true,\"global-option.destroy\":true,\"ecommerce.invoice.index\":true,\"ecommerce.invoice.edit\":true,\"ecommerce.invoice.destroy\":true,\"ecommerce.settings\":true,\"ecommerce.settings.general\":true,\"ecommerce.invoice-template.index\":true,\"ecommerce.settings.currencies\":true,\"ecommerce.settings.products\":true,\"ecommerce.settings.product-search\":true,\"ecommerce.settings.digital-products\":true,\"ecommerce.settings.store-locators\":true,\"ecommerce.settings.invoices\":true,\"ecommerce.settings.product-reviews\":true,\"ecommerce.settings.customers\":true,\"ecommerce.settings.shopping\":true,\"ecommerce.settings.taxes\":true,\"ecommerce.settings.shipping\":true,\"ecommerce.settings.tracking\":true,\"ecommerce.settings.standard-and-format\":true,\"ecommerce.settings.checkout\":true,\"ecommerce.settings.return\":true,\"ecommerce.settings.flash-sale\":true,\"plugin.faq\":true,\"faq.index\":true,\"faq.create\":true,\"faq.edit\":true,\"faq.destroy\":true,\"faq_category.index\":true,\"faq_category.create\":true,\"faq_category.edit\":true,\"faq_category.destroy\":true,\"faqs.settings\":true,\"galleries.index\":true,\"galleries.create\":true,\"galleries.edit\":true,\"galleries.destroy\":true,\"languages.index\":true,\"languages.create\":true,\"languages.edit\":true,\"languages.destroy\":true,\"plugin.location\":true,\"country.index\":true,\"country.create\":true,\"country.edit\":true,\"country.destroy\":true,\"state.index\":true,\"state.create\":true,\"state.edit\":true,\"state.destroy\":true,\"city.index\":true,\"city.create\":true,\"city.edit\":true,\"city.destroy\":true,\"marketplace.index\":true,\"marketplace.store.index\":true,\"marketplace.store.create\":true,\"marketplace.store.edit\":true,\"marketplace.store.destroy\":true,\"marketplace.store.view\":true,\"marketplace.store.revenue.create\":true,\"marketplace.withdrawal.index\":true,\"marketplace.withdrawal.edit\":true,\"marketplace.withdrawal.destroy\":true,\"marketplace.vendors.index\":true,\"marketplace.unverified-vendors.index\":true,\"marketplace.unverified-vendors.edit\":true,\"marketplace.reports\":true,\"marketplace.settings\":true,\"newsletter.index\":true,\"newsletter.destroy\":true,\"newsletter.settings\":true,\"payment.index\":true,\"payments.settings\":true,\"payment.destroy\":true,\"request-log.index\":true,\"request-log.destroy\":true,\"sale-popup.settings\":true,\"simple-slider.index\":true,\"simple-slider.create\":true,\"simple-slider.edit\":true,\"simple-slider.destroy\":true,\"simple-slider-item.index\":true,\"simple-slider-item.create\":true,\"simple-slider-item.edit\":true,\"simple-slider-item.destroy\":true,\"simple-slider.settings\":true,\"social-login.settings\":true,\"testimonial.index\":true,\"testimonial.create\":true,\"testimonial.edit\":true,\"testimonial.destroy\":true,\"plugins.translation\":true,\"translations.locales\":true,\"translations.theme-translations\":true,\"translations.index\":true,\"theme-translations.export\":true,\"other-translations.export\":true,\"theme-translations.import\":true,\"other-translations.import\":true}','Admin users role',1,1,1,'2024-06-05 00:00:42','2024-06-05 00:00:42');
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
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'media_random_hash','850870afd0553e46b826ca89adb619de',NULL,'2024-06-05 00:00:52'),(2,'api_enabled','0',NULL,'2024-06-05 00:00:52'),(3,'activated_plugins','[\"language\",\"language-advanced\",\"ads\",\"analytics\",\"announcement\",\"audit-log\",\"backup\",\"blog\",\"captcha\",\"contact\",\"cookie-consent\",\"ecommerce\",\"faq\",\"gallery\",\"location\",\"marketplace\",\"mollie\",\"newsletter\",\"payment\",\"paypal\",\"paypal-payout\",\"paystack\",\"razorpay\",\"request-log\",\"sale-popup\",\"shippo\",\"simple-slider\",\"social-login\",\"sslcommerz\",\"stripe\",\"testimonial\",\"translation\"]',NULL,'2024-06-05 00:00:52'),(6,'theme','shofy-jewelry',NULL,'2024-06-05 00:00:52'),(7,'show_admin_bar','1',NULL,'2024-06-05 00:00:52'),(8,'payment_cod_status','1',NULL,'2024-06-05 00:00:52'),(9,'payment_bank_transfer_status','1',NULL,'2024-06-05 00:00:52'),(10,'admin_favicon','main/general/favicon.png',NULL,'2024-06-05 00:00:52'),(11,'admin_logo','main/general/logo-white.png',NULL,'2024-06-05 00:00:52'),(12,'permalink-botble-blog-models-post','blog',NULL,'2024-06-05 00:00:52'),(13,'permalink-botble-blog-models-category','blog',NULL,'2024-06-05 00:00:52'),(14,'payment_cod_description','Please pay money directly to the postman, if you choose cash on delivery method (COD).',NULL,'2024-06-05 00:00:52'),(15,'payment_bank_transfer_description','Please send money to our bank account: ACB - 69270 213 19.',NULL,'2024-06-05 00:00:52'),(16,'payment_stripe_payment_type','stripe_checkout',NULL,'2024-06-05 00:00:52'),(17,'plugins_ecommerce_customer_new_order_status','0',NULL,'2024-06-05 00:00:52'),(18,'plugins_ecommerce_admin_new_order_status','0',NULL,'2024-06-05 00:00:52'),(19,'ecommerce_is_enabled_support_digital_products','1',NULL,'2024-06-05 00:00:52'),(20,'ecommerce_load_countries_states_cities_from_location_plugin','0',NULL,'2024-06-05 00:00:52'),(21,'announcement_lazy_loading','1',NULL,'2024-06-05 00:00:52'),(22,'ecommerce_product_sku_format','SF-2443-%s%s%s%s',NULL,'2024-06-05 00:00:52'),(23,'language_hide_default','1',NULL,'2024-06-05 00:00:52'),(24,'language_switcher_display','dropdown',NULL,'2024-06-05 00:00:52'),(25,'language_display','all',NULL,'2024-06-05 00:00:52'),(26,'language_hide_languages','[]',NULL,'2024-06-05 00:00:52'),(27,'ecommerce_store_name','Shofy',NULL,'2024-06-05 00:00:52'),(28,'ecommerce_store_phone','1800979769',NULL,'2024-06-05 00:00:52'),(29,'ecommerce_store_address','502 New Street',NULL,'2024-06-05 00:00:52'),(30,'ecommerce_store_state','Brighton VIC',NULL,'2024-06-05 00:00:52'),(31,'ecommerce_store_city','Brighton VIC',NULL,'2024-06-05 00:00:52'),(32,'ecommerce_store_country','AU',NULL,'2024-06-05 00:00:52'),(33,'announcement_max_width',NULL,NULL,'2024-06-05 00:00:52'),(34,'announcement_text_color','#010f1c',NULL,'2024-06-05 00:00:52'),(35,'announcement_background_color','transparent',NULL,'2024-06-05 00:00:52'),(36,'announcement_placement','theme',NULL,'2024-06-05 00:00:52'),(37,'announcement_text_alignment','start',NULL,'2024-06-05 00:00:52'),(38,'announcement_dismissible','0',NULL,'2024-06-05 00:00:52'),(39,'simple_slider_using_assets','0',NULL,'2024-06-05 00:00:52'),(40,'theme-shofy-jewelry-site_name','Shofy',NULL,NULL),(41,'theme-shofy-jewelry-site_title','Shofy - Multipurpose eCommerce Laravel Script',NULL,NULL),(42,'theme-shofy-jewelry-seo_description','Shofy is a powerful tool eCommerce Laravel script for creating a professional and visually appealing online store.',NULL,NULL),(43,'theme-shofy-jewelry-copyright','© %Y All Rights Reserved.',NULL,NULL),(44,'theme-shofy-jewelry-tp_primary_font','Jost',NULL,NULL),(45,'theme-shofy-jewelry-primary_color','#BD844C',NULL,NULL),(46,'theme-shofy-jewelry-favicon','main/general/favicon.png',NULL,NULL),(47,'theme-shofy-jewelry-logo','main/general/logo.png',NULL,NULL),(48,'theme-shofy-jewelry-logo_light','main/general/logo-white.png',NULL,NULL),(49,'theme-shofy-jewelry-header_style','4',NULL,NULL),(50,'theme-shofy-jewelry-preloader_icon','main/general/preloader-icon.png',NULL,NULL),(51,'theme-shofy-jewelry-address','502 New Street, Brighton VIC, Australia',NULL,NULL),(52,'theme-shofy-jewelry-hotline','8 800 332 65-66',NULL,NULL),(53,'theme-shofy-jewelry-email','contact@fartmart.co',NULL,NULL),(54,'theme-shofy-jewelry-working_time','Mon - Fri: 07AM - 06PM',NULL,NULL),(55,'theme-shofy-jewelry-homepage_id','1',NULL,NULL),(56,'theme-shofy-jewelry-blog_page_id','4',NULL,NULL),(57,'theme-shofy-jewelry-cookie_consent_message','Your experience on this site will be improved by allowing cookies ',NULL,NULL),(58,'theme-shofy-jewelry-cookie_consent_learn_more_url','cookie-policy',NULL,NULL),(59,'theme-shofy-jewelry-cookie_consent_learn_more_text','Cookie Policy',NULL,NULL),(60,'theme-shofy-jewelry-number_of_products_per_page','24',NULL,NULL),(61,'theme-shofy-jewelry-number_of_cross_sale_product','6',NULL,NULL),(62,'theme-shofy-jewelry-ecommerce_products_page_layout','left_sidebar',NULL,NULL),(63,'theme-shofy-jewelry-ecommerce_product_item_style','4',NULL,NULL),(64,'theme-shofy-jewelry-404_page_image','main/general/404.png',NULL,NULL),(65,'theme-shofy-jewelry-newsletter_popup_enable','1',NULL,NULL),(66,'theme-shofy-jewelry-newsletter_popup_image','main/general/newsletter-popup.png',NULL,NULL),(67,'theme-shofy-jewelry-newsletter_popup_title','Subscribe Now',NULL,NULL),(68,'theme-shofy-jewelry-newsletter_popup_subtitle','Newsletter',NULL,NULL),(69,'theme-shofy-jewelry-newsletter_popup_description','Subscribe to our newsletter and get 10% off your first purchase',NULL,NULL),(70,'theme-shofy-jewelry-lazy_load_images','1',NULL,NULL),(71,'theme-shofy-jewelry-lazy_load_placeholder_image','main/general/placeholder.png',NULL,NULL),(72,'theme-shofy-jewelry-breadcrumb_background_image','main/general/breadcrumb.jpg',NULL,NULL),(73,'theme-shofy-jewelry-section_title_shape_decorated','none',NULL,NULL),(74,'theme-shofy-jewelry-social_links','[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\"}],[{\"key\":\"name\",\"value\":\"X\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/x.com\"}],[{\"key\":\"name\",\"value\":\"Youtube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-linkedin\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.linkedin.com\"}]]',NULL,NULL),(75,'theme-shofy-jewelry-social_sharing','[[{\"key\":\"social\",\"value\":\"facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"}],[{\"key\":\"social\",\"value\":\"x\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"}],[{\"key\":\"social\",\"value\":\"pinterest\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"}],[{\"key\":\"social\",\"value\":\"linkedin\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-linkedin\"}],[{\"key\":\"social\",\"value\":\"whatsapp\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-whatsapp\"}],[{\"key\":\"social\",\"value\":\"email\"},{\"key\":\"icon\",\"value\":\"ti ti-mail\"}]]',NULL,NULL),(76,'theme-shofy-jewelry-header_top_background_color','#fff',NULL,NULL),(77,'theme-shofy-jewelry-header_top_text_color','#010f1c',NULL,NULL),(78,'theme-shofy-jewelry-header_main_background_color','#fff',NULL,NULL),(79,'theme-shofy-jewelry-header_main_text_color','#010f1c',NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_slider_items`
--

LOCK TABLES `simple_slider_items` WRITE;
/*!40000 ALTER TABLE `simple_slider_items` DISABLE KEYS */;
INSERT INTO `simple_slider_items` VALUES (1,1,'Shine bright','jewelry/sliders/slider-1.png','/products','The original',0,'2024-06-05 00:00:49','2024-06-05 00:00:49'),(2,1,'Creative Design','jewelry/sliders/slider-2.png','/products','The original',1,'2024-06-05 00:00:49','2024-06-05 00:00:49'),(3,1,'Gold Plateted','jewelry/sliders/slider-3.png','/products','The original',2,'2024-06-05 00:00:49','2024-06-05 00:00:49'),(4,1,'Unique shapes','jewelry/sliders/slider-4.png','/products','The original',3,'2024-06-05 00:00:49','2024-06-05 00:00:49');
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
INSERT INTO `simple_sliders` VALUES (1,'Home slider','home-slider','The main slider on homepage','published','2024-06-05 00:00:49','2024-06-05 00:00:49');
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
) ENGINE=InnoDB AUTO_INCREMENT=186 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs`
--

LOCK TABLES `slugs` WRITE;
/*!40000 ALTER TABLE `slugs` DISABLE KEYS */;
INSERT INTO `slugs` VALUES (1,'foodpound',1,'Botble\\Ecommerce\\Models\\Brand','brands','2024-06-05 00:00:42','2024-06-05 00:00:42'),(2,'itea-jsc',2,'Botble\\Ecommerce\\Models\\Brand','brands','2024-06-05 00:00:42','2024-06-05 00:00:42'),(3,'soda-brand',3,'Botble\\Ecommerce\\Models\\Brand','brands','2024-06-05 00:00:42','2024-06-05 00:00:42'),(4,'shofy',4,'Botble\\Ecommerce\\Models\\Brand','brands','2024-06-05 00:00:42','2024-06-05 00:00:42'),(5,'soda-brand',5,'Botble\\Ecommerce\\Models\\Brand','brands','2024-06-05 00:00:43','2024-06-05 00:00:43'),(6,'electronic',1,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-06-05 00:00:45','2024-06-05 00:00:45'),(7,'mobile',2,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-06-05 00:00:45','2024-06-05 00:00:45'),(8,'iphone',3,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-06-05 00:00:45','2024-06-05 00:00:45'),(9,'printer',4,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-06-05 00:00:45','2024-06-05 00:00:45'),(10,'office',5,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-06-05 00:00:45','2024-06-05 00:00:45'),(11,'it',6,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-06-05 00:00:45','2024-06-05 00:00:45'),(12,'crisp-bread-cake',1,'Botble\\Blog\\Models\\Category','blog','2024-06-05 00:00:46','2024-06-05 00:00:46'),(13,'fashion',2,'Botble\\Blog\\Models\\Category','blog','2024-06-05 00:00:46','2024-06-05 00:00:46'),(14,'electronic',3,'Botble\\Blog\\Models\\Category','blog','2024-06-05 00:00:46','2024-06-05 00:00:46'),(15,'commercial',4,'Botble\\Blog\\Models\\Category','blog','2024-06-05 00:00:46','2024-06-05 00:00:46'),(16,'organic-fruits',5,'Botble\\Blog\\Models\\Category','blog','2024-06-05 00:00:46','2024-06-05 00:00:46'),(17,'ecological',6,'Botble\\Blog\\Models\\Category','blog','2024-06-05 00:00:46','2024-06-05 00:00:46'),(18,'general',1,'Botble\\Blog\\Models\\Tag','tag','2024-06-05 00:00:46','2024-06-05 00:00:46'),(19,'design',2,'Botble\\Blog\\Models\\Tag','tag','2024-06-05 00:00:46','2024-06-05 00:00:46'),(20,'fashion',3,'Botble\\Blog\\Models\\Tag','tag','2024-06-05 00:00:46','2024-06-05 00:00:46'),(21,'branding',4,'Botble\\Blog\\Models\\Tag','tag','2024-06-05 00:00:46','2024-06-05 00:00:46'),(22,'modern',5,'Botble\\Blog\\Models\\Tag','tag','2024-06-05 00:00:46','2024-06-05 00:00:46'),(23,'nature',6,'Botble\\Blog\\Models\\Tag','tag','2024-06-05 00:00:46','2024-06-05 00:00:46'),(24,'vintage',7,'Botble\\Blog\\Models\\Tag','tag','2024-06-05 00:00:46','2024-06-05 00:00:46'),(25,'sunglasses',8,'Botble\\Blog\\Models\\Tag','tag','2024-06-05 00:00:46','2024-06-05 00:00:46'),(26,'4-expert-tips-on-how-to-choose-the-right-mens-wallet',1,'Botble\\Blog\\Models\\Post','blog','2024-06-05 00:00:46','2024-06-05 00:00:46'),(27,'sexy-clutches-how-to-buy-wear-a-designer-clutch-bag',2,'Botble\\Blog\\Models\\Post','blog','2024-06-05 00:00:46','2024-06-05 00:00:46'),(28,'the-top-2020-handbag-trends-to-know',3,'Botble\\Blog\\Models\\Post','blog','2024-06-05 00:00:46','2024-06-05 00:00:46'),(29,'how-to-match-the-color-of-your-handbag-with-an-outfit',4,'Botble\\Blog\\Models\\Post','blog','2024-06-05 00:00:46','2024-06-05 00:00:46'),(30,'how-to-care-for-leather-bags',5,'Botble\\Blog\\Models\\Post','blog','2024-06-05 00:00:46','2024-06-05 00:00:46'),(31,'were-crushing-hard-on-summers-10-biggest-bag-trends',6,'Botble\\Blog\\Models\\Post','blog','2024-06-05 00:00:46','2024-06-05 00:00:46'),(32,'essential-qualities-of-highly-successful-music',7,'Botble\\Blog\\Models\\Post','blog','2024-06-05 00:00:46','2024-06-05 00:00:46'),(33,'9-things-i-love-about-shaving-my-head',8,'Botble\\Blog\\Models\\Post','blog','2024-06-05 00:00:46','2024-06-05 00:00:46'),(34,'why-teamwork-really-makes-the-dream-work',9,'Botble\\Blog\\Models\\Post','blog','2024-06-05 00:00:46','2024-06-05 00:00:46'),(35,'the-world-caters-to-average-people',10,'Botble\\Blog\\Models\\Post','blog','2024-06-05 00:00:46','2024-06-05 00:00:46'),(36,'the-litigants-on-the-screen-are-not-actors',11,'Botble\\Blog\\Models\\Post','blog','2024-06-05 00:00:46','2024-06-05 00:00:46'),(37,'hiring-the-right-sales-team-at-the-right-time',12,'Botble\\Blog\\Models\\Post','blog','2024-06-05 00:00:46','2024-06-05 00:00:46'),(38,'fully-embrace-the-return-of-90s-fashion',13,'Botble\\Blog\\Models\\Post','blog','2024-06-05 00:00:46','2024-06-05 00:00:46'),(39,'exploring-the-english-countryside',14,'Botble\\Blog\\Models\\Post','blog','2024-06-05 00:00:46','2024-06-05 00:00:46'),(40,'heres-the-first-valentinos-new-makeup-collection',15,'Botble\\Blog\\Models\\Post','blog','2024-06-05 00:00:46','2024-06-05 00:00:46'),(41,'follow-your-own-design-process-whatever-gets',16,'Botble\\Blog\\Models\\Post','blog','2024-06-05 00:00:46','2024-06-05 00:00:46'),(42,'freelancer-days-2024-whats-new',17,'Botble\\Blog\\Models\\Post','blog','2024-06-05 00:00:46','2024-06-05 00:00:46'),(43,'quality-foods-requirments-for-every-human-bodys',18,'Botble\\Blog\\Models\\Post','blog','2024-06-05 00:00:46','2024-06-05 00:00:46'),(44,'gopro',1,'Botble\\Marketplace\\Models\\Store','stores','2024-06-05 00:00:49','2024-06-05 00:00:49'),(45,'global-office',2,'Botble\\Marketplace\\Models\\Store','stores','2024-06-05 00:00:49','2024-06-05 00:00:49'),(46,'young-shop',3,'Botble\\Marketplace\\Models\\Store','stores','2024-06-05 00:00:49','2024-06-05 00:00:49'),(47,'global-store',4,'Botble\\Marketplace\\Models\\Store','stores','2024-06-05 00:00:49','2024-06-05 00:00:49'),(48,'roberts-store',5,'Botble\\Marketplace\\Models\\Store','stores','2024-06-05 00:00:49','2024-06-05 00:00:49'),(49,'stouffer',6,'Botble\\Marketplace\\Models\\Store','stores','2024-06-05 00:00:49','2024-06-05 00:00:49'),(50,'starkist',7,'Botble\\Marketplace\\Models\\Store','stores','2024-06-05 00:00:49','2024-06-05 00:00:49'),(51,'old-el-paso',8,'Botble\\Marketplace\\Models\\Store','stores','2024-06-05 00:00:49','2024-06-05 00:00:49'),(52,'discover-skincare',1,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-06-05 00:00:50','2024-06-05 00:00:50'),(53,'clothing',2,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-06-05 00:00:50','2024-06-05 00:00:50'),(54,'mens-clothing',3,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-06-05 00:00:50','2024-06-05 00:00:50'),(55,'t-shirts',4,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-06-05 00:00:50','2024-06-05 00:00:50'),(56,'jeans',5,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-06-05 00:00:50','2024-06-05 00:00:50'),(57,'suits',6,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-06-05 00:00:50','2024-06-05 00:00:50'),(58,'womens-clothing',7,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-06-05 00:00:50','2024-06-05 00:00:50'),(59,'dresses',8,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-06-05 00:00:50','2024-06-05 00:00:50'),(60,'blouses',9,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-06-05 00:00:50','2024-06-05 00:00:50'),(61,'pants',10,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-06-05 00:00:50','2024-06-05 00:00:50'),(62,'accessories',11,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-06-05 00:00:50','2024-06-05 00:00:50'),(63,'hats',12,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-06-05 00:00:50','2024-06-05 00:00:50'),(64,'scarves',13,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-06-05 00:00:50','2024-06-05 00:00:50'),(65,'jewelry',14,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-06-05 00:00:50','2024-06-05 00:00:50'),(66,'sportswear',15,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-06-05 00:00:50','2024-06-05 00:00:50'),(67,'activewear',16,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-06-05 00:00:50','2024-06-05 00:00:50'),(68,'running-shoes',17,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-06-05 00:00:50','2024-06-05 00:00:50'),(69,'shoes',18,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-06-05 00:00:50','2024-06-05 00:00:50'),(70,'sneakers',19,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-06-05 00:00:50','2024-06-05 00:00:50'),(71,'boots',20,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-06-05 00:00:50','2024-06-05 00:00:50'),(72,'sandals',21,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-06-05 00:00:50','2024-06-05 00:00:50'),(73,'vintage-denim-jacket',1,'Botble\\Ecommerce\\Models\\Product','products','2024-06-05 00:00:50','2024-06-05 00:00:50'),(74,'floral-maxi-dress',2,'Botble\\Ecommerce\\Models\\Product','products','2024-06-05 00:00:50','2024-06-05 00:00:50'),(75,'leather-ankle-boots',3,'Botble\\Ecommerce\\Models\\Product','products','2024-06-05 00:00:50','2024-06-05 00:00:50'),(76,'knit-turtleneck-sweater-digital',4,'Botble\\Ecommerce\\Models\\Product','products','2024-06-05 00:00:50','2024-06-05 00:00:52'),(77,'classic-aviator-sunglasses',5,'Botble\\Ecommerce\\Models\\Product','products','2024-06-05 00:00:50','2024-06-05 00:00:50'),(78,'tailored-wool-blazer',6,'Botble\\Ecommerce\\Models\\Product','products','2024-06-05 00:00:50','2024-06-05 00:00:50'),(79,'bohemian-fringe-handbag',7,'Botble\\Ecommerce\\Models\\Product','products','2024-06-05 00:00:50','2024-06-05 00:00:50'),(80,'silk-scarf-with-geometric-print-digital',8,'Botble\\Ecommerce\\Models\\Product','products','2024-06-05 00:00:50','2024-06-05 00:00:52'),(81,'high-waisted-wide-leg-trousers',9,'Botble\\Ecommerce\\Models\\Product','products','2024-06-05 00:00:50','2024-06-05 00:00:50'),(82,'embroidered-boho-blouse',10,'Botble\\Ecommerce\\Models\\Product','products','2024-06-05 00:00:50','2024-06-05 00:00:50'),(83,'statement-chunky-necklace',11,'Botble\\Ecommerce\\Models\\Product','products','2024-06-05 00:00:50','2024-06-05 00:00:50'),(84,'chic-fedora-hat-digital',12,'Botble\\Ecommerce\\Models\\Product','products','2024-06-05 00:00:50','2024-06-05 00:00:52'),(85,'strappy-block-heel-sandals',13,'Botble\\Ecommerce\\Models\\Product','products','2024-06-05 00:00:50','2024-06-05 00:00:50'),(86,'velvet-evening-gown',14,'Botble\\Ecommerce\\Models\\Product','products','2024-06-05 00:00:50','2024-06-05 00:00:50'),(87,'quilted-crossbody-bag',15,'Botble\\Ecommerce\\Models\\Product','products','2024-06-05 00:00:50','2024-06-05 00:00:50'),(88,'distressed-skinny-jeans-digital',16,'Botble\\Ecommerce\\Models\\Product','products','2024-06-05 00:00:50','2024-06-05 00:00:52'),(89,'lace-up-combat-boots',17,'Botble\\Ecommerce\\Models\\Product','products','2024-06-05 00:00:50','2024-06-05 00:00:50'),(90,'cotton-striped-t-shirt-dress',18,'Botble\\Ecommerce\\Models\\Product','products','2024-06-05 00:00:50','2024-06-05 00:00:50'),(91,'printed-palazzo-pants',19,'Botble\\Ecommerce\\Models\\Product','products','2024-06-05 00:00:50','2024-06-05 00:00:50'),(92,'structured-satchel-bag-digital',20,'Botble\\Ecommerce\\Models\\Product','products','2024-06-05 00:00:50','2024-06-05 00:00:52'),(93,'off-shoulder-ruffle-top',21,'Botble\\Ecommerce\\Models\\Product','products','2024-06-05 00:00:50','2024-06-05 00:00:50'),(94,'suede-pointed-toe-pumps',22,'Botble\\Ecommerce\\Models\\Product','products','2024-06-05 00:00:50','2024-06-05 00:00:50'),(95,'cropped-cable-knit-sweater',23,'Botble\\Ecommerce\\Models\\Product','products','2024-06-05 00:00:50','2024-06-05 00:00:50'),(96,'athleisure-jogger-pants-digital',24,'Botble\\Ecommerce\\Models\\Product','products','2024-06-05 00:00:50','2024-06-05 00:00:52'),(97,'leopard-print-midi-skirt',25,'Botble\\Ecommerce\\Models\\Product','products','2024-06-05 00:00:50','2024-06-05 00:00:50'),(98,'retro-cat-eye-sunglasses',26,'Botble\\Ecommerce\\Models\\Product','products','2024-06-05 00:00:50','2024-06-05 00:00:50'),(99,'faux-fur-trimmed-coat',27,'Botble\\Ecommerce\\Models\\Product','products','2024-06-05 00:00:51','2024-06-05 00:00:51'),(100,'boho-fringed-kimono-digital',28,'Botble\\Ecommerce\\Models\\Product','products','2024-06-05 00:00:51','2024-06-05 00:00:52'),(101,'ruffled-wrap-dress',29,'Botble\\Ecommerce\\Models\\Product','products','2024-06-05 00:00:51','2024-06-05 00:00:51'),(102,'beaded-evening-clutch',30,'Botble\\Ecommerce\\Models\\Product','products','2024-06-05 00:00:51','2024-06-05 00:00:51'),(103,'wide-brim-floppy-hat',31,'Botble\\Ecommerce\\Models\\Product','products','2024-06-05 00:00:51','2024-06-05 00:00:51'),(104,'denim-overall-jumpsuit-digital',32,'Botble\\Ecommerce\\Models\\Product','products','2024-06-05 00:00:51','2024-06-05 00:00:52'),(105,'embellished-ballet-flats',33,'Botble\\Ecommerce\\Models\\Product','products','2024-06-05 00:00:51','2024-06-05 00:00:51'),(106,'pleated-midi-skirt',34,'Botble\\Ecommerce\\Models\\Product','products','2024-06-05 00:00:51','2024-06-05 00:00:51'),(107,'velour-tracksuit-set',35,'Botble\\Ecommerce\\Models\\Product','products','2024-06-05 00:00:51','2024-06-05 00:00:51'),(108,'geometric-patterned-cardigan-digital',36,'Botble\\Ecommerce\\Models\\Product','products','2024-06-05 00:00:51','2024-06-05 00:00:52'),(109,'buckle-detail-ankle-booties',37,'Botble\\Ecommerce\\Models\\Product','products','2024-06-05 00:00:51','2024-06-05 00:00:51'),(110,'embroidered-bomber-jacket',38,'Botble\\Ecommerce\\Models\\Product','products','2024-06-05 00:00:51','2024-06-05 00:00:51'),(111,'cowl-neck-knit-poncho',39,'Botble\\Ecommerce\\Models\\Product','products','2024-06-05 00:00:51','2024-06-05 00:00:51'),(112,'chunky-knit-infinity-scarf-digital',40,'Botble\\Ecommerce\\Models\\Product','products','2024-06-05 00:00:51','2024-06-05 00:00:52'),(113,'retro-high-top-sneakers',41,'Botble\\Ecommerce\\Models\\Product','products','2024-06-05 00:00:51','2024-06-05 00:00:51'),(114,'faux-leather-leggings',42,'Botble\\Ecommerce\\Models\\Product','products','2024-06-05 00:00:51','2024-06-05 00:00:51'),(115,'metallic-pleated-maxi-skirt',43,'Botble\\Ecommerce\\Models\\Product','products','2024-06-05 00:00:51','2024-06-05 00:00:51'),(116,'radiant-reflections',1,'Botble\\Gallery\\Models\\Gallery','galleries','2024-06-05 00:00:52','2024-06-05 00:00:52'),(117,'glamour-grove',2,'Botble\\Gallery\\Models\\Gallery','galleries','2024-06-05 00:00:52','2024-06-05 00:00:52'),(118,'serene-styles-showcase',3,'Botble\\Gallery\\Models\\Gallery','galleries','2024-06-05 00:00:52','2024-06-05 00:00:52'),(119,'allure-alcove',4,'Botble\\Gallery\\Models\\Gallery','galleries','2024-06-05 00:00:52','2024-06-05 00:00:52'),(120,'glamour-galleria',5,'Botble\\Gallery\\Models\\Gallery','galleries','2024-06-05 00:00:52','2024-06-05 00:00:52'),(121,'beauty-boulevard',6,'Botble\\Gallery\\Models\\Gallery','galleries','2024-06-05 00:00:52','2024-06-05 00:00:52'),(122,'home',1,'Botble\\Page\\Models\\Page','','2024-06-05 00:00:52','2024-06-05 00:00:52'),(123,'product-categories',2,'Botble\\Page\\Models\\Page','','2024-06-05 00:00:52','2024-06-05 00:00:52'),(124,'coupons',3,'Botble\\Page\\Models\\Page','','2024-06-05 00:00:52','2024-06-05 00:00:52'),(125,'blog',4,'Botble\\Page\\Models\\Page','','2024-06-05 00:00:52','2024-06-05 00:00:52'),(126,'contact',5,'Botble\\Page\\Models\\Page','','2024-06-05 00:00:52','2024-06-05 00:00:52'),(127,'faqs',6,'Botble\\Page\\Models\\Page','','2024-06-05 00:00:52','2024-06-05 00:00:52'),(128,'cookie-policy',7,'Botble\\Page\\Models\\Page','','2024-06-05 00:00:52','2024-06-05 00:00:52'),(129,'our-story',8,'Botble\\Page\\Models\\Page','','2024-06-05 00:00:52','2024-06-05 00:00:52'),(130,'careers',9,'Botble\\Page\\Models\\Page','','2024-06-05 00:00:52','2024-06-05 00:00:52'),(131,'shipping',10,'Botble\\Page\\Models\\Page','','2024-06-05 00:00:52','2024-06-05 00:00:52'),(132,'coming-soon',11,'Botble\\Page\\Models\\Page','','2024-06-05 00:00:52','2024-06-05 00:00:52'),(133,'floral-maxi-dress',44,'Botble\\Ecommerce\\Models\\Product','products','2024-06-05 00:00:52','2024-06-05 00:00:52'),(134,'knit-turtleneck-sweater-digital',45,'Botble\\Ecommerce\\Models\\Product','products','2024-06-05 00:00:52','2024-06-05 00:00:52'),(135,'knit-turtleneck-sweater-digital',46,'Botble\\Ecommerce\\Models\\Product','products','2024-06-05 00:00:52','2024-06-05 00:00:52'),(136,'knit-turtleneck-sweater-digital',47,'Botble\\Ecommerce\\Models\\Product','products','2024-06-05 00:00:52','2024-06-05 00:00:52'),(137,'classic-aviator-sunglasses',48,'Botble\\Ecommerce\\Models\\Product','products','2024-06-05 00:00:52','2024-06-05 00:00:52'),(138,'classic-aviator-sunglasses',49,'Botble\\Ecommerce\\Models\\Product','products','2024-06-05 00:00:52','2024-06-05 00:00:52'),(139,'tailored-wool-blazer',50,'Botble\\Ecommerce\\Models\\Product','products','2024-06-05 00:00:52','2024-06-05 00:00:52'),(140,'bohemian-fringe-handbag',51,'Botble\\Ecommerce\\Models\\Product','products','2024-06-05 00:00:52','2024-06-05 00:00:52'),(141,'bohemian-fringe-handbag',52,'Botble\\Ecommerce\\Models\\Product','products','2024-06-05 00:00:52','2024-06-05 00:00:52'),(142,'bohemian-fringe-handbag',53,'Botble\\Ecommerce\\Models\\Product','products','2024-06-05 00:00:52','2024-06-05 00:00:52'),(143,'bohemian-fringe-handbag',54,'Botble\\Ecommerce\\Models\\Product','products','2024-06-05 00:00:52','2024-06-05 00:00:52'),(144,'silk-scarf-with-geometric-print-digital',55,'Botble\\Ecommerce\\Models\\Product','products','2024-06-05 00:00:52','2024-06-05 00:00:52'),(145,'silk-scarf-with-geometric-print-digital',56,'Botble\\Ecommerce\\Models\\Product','products','2024-06-05 00:00:52','2024-06-05 00:00:52'),(146,'silk-scarf-with-geometric-print-digital',57,'Botble\\Ecommerce\\Models\\Product','products','2024-06-05 00:00:52','2024-06-05 00:00:52'),(147,'statement-chunky-necklace',58,'Botble\\Ecommerce\\Models\\Product','products','2024-06-05 00:00:52','2024-06-05 00:00:52'),(148,'statement-chunky-necklace',59,'Botble\\Ecommerce\\Models\\Product','products','2024-06-05 00:00:52','2024-06-05 00:00:52'),(149,'chic-fedora-hat-digital',60,'Botble\\Ecommerce\\Models\\Product','products','2024-06-05 00:00:52','2024-06-05 00:00:52'),(150,'chic-fedora-hat-digital',61,'Botble\\Ecommerce\\Models\\Product','products','2024-06-05 00:00:52','2024-06-05 00:00:52'),(151,'chic-fedora-hat-digital',62,'Botble\\Ecommerce\\Models\\Product','products','2024-06-05 00:00:52','2024-06-05 00:00:52'),(152,'chic-fedora-hat-digital',63,'Botble\\Ecommerce\\Models\\Product','products','2024-06-05 00:00:52','2024-06-05 00:00:52'),(153,'strappy-block-heel-sandals',64,'Botble\\Ecommerce\\Models\\Product','products','2024-06-05 00:00:52','2024-06-05 00:00:52'),(154,'strappy-block-heel-sandals',65,'Botble\\Ecommerce\\Models\\Product','products','2024-06-05 00:00:52','2024-06-05 00:00:52'),(155,'strappy-block-heel-sandals',66,'Botble\\Ecommerce\\Models\\Product','products','2024-06-05 00:00:52','2024-06-05 00:00:52'),(156,'velvet-evening-gown',67,'Botble\\Ecommerce\\Models\\Product','products','2024-06-05 00:00:52','2024-06-05 00:00:52'),(157,'velvet-evening-gown',68,'Botble\\Ecommerce\\Models\\Product','products','2024-06-05 00:00:52','2024-06-05 00:00:52'),(158,'velvet-evening-gown',69,'Botble\\Ecommerce\\Models\\Product','products','2024-06-05 00:00:52','2024-06-05 00:00:52'),(159,'quilted-crossbody-bag',70,'Botble\\Ecommerce\\Models\\Product','products','2024-06-05 00:00:52','2024-06-05 00:00:52'),(160,'quilted-crossbody-bag',71,'Botble\\Ecommerce\\Models\\Product','products','2024-06-05 00:00:52','2024-06-05 00:00:52'),(161,'quilted-crossbody-bag',72,'Botble\\Ecommerce\\Models\\Product','products','2024-06-05 00:00:52','2024-06-05 00:00:52'),(162,'printed-palazzo-pants',73,'Botble\\Ecommerce\\Models\\Product','products','2024-06-05 00:00:52','2024-06-05 00:00:52'),(163,'printed-palazzo-pants',74,'Botble\\Ecommerce\\Models\\Product','products','2024-06-05 00:00:52','2024-06-05 00:00:52'),(164,'printed-palazzo-pants',75,'Botble\\Ecommerce\\Models\\Product','products','2024-06-05 00:00:52','2024-06-05 00:00:52'),(165,'structured-satchel-bag-digital',76,'Botble\\Ecommerce\\Models\\Product','products','2024-06-05 00:00:52','2024-06-05 00:00:52'),(166,'structured-satchel-bag-digital',77,'Botble\\Ecommerce\\Models\\Product','products','2024-06-05 00:00:52','2024-06-05 00:00:52'),(167,'structured-satchel-bag-digital',78,'Botble\\Ecommerce\\Models\\Product','products','2024-06-05 00:00:52','2024-06-05 00:00:52'),(168,'structured-satchel-bag-digital',79,'Botble\\Ecommerce\\Models\\Product','products','2024-06-05 00:00:52','2024-06-05 00:00:52'),(169,'structured-satchel-bag-digital',80,'Botble\\Ecommerce\\Models\\Product','products','2024-06-05 00:00:52','2024-06-05 00:00:52'),(170,'off-shoulder-ruffle-top',81,'Botble\\Ecommerce\\Models\\Product','products','2024-06-05 00:00:52','2024-06-05 00:00:52'),(171,'off-shoulder-ruffle-top',82,'Botble\\Ecommerce\\Models\\Product','products','2024-06-05 00:00:52','2024-06-05 00:00:52'),(172,'suede-pointed-toe-pumps',83,'Botble\\Ecommerce\\Models\\Product','products','2024-06-05 00:00:52','2024-06-05 00:00:52'),(173,'suede-pointed-toe-pumps',84,'Botble\\Ecommerce\\Models\\Product','products','2024-06-05 00:00:52','2024-06-05 00:00:52'),(174,'suede-pointed-toe-pumps',85,'Botble\\Ecommerce\\Models\\Product','products','2024-06-05 00:00:52','2024-06-05 00:00:52'),(175,'faux-fur-trimmed-coat',86,'Botble\\Ecommerce\\Models\\Product','products','2024-06-05 00:00:52','2024-06-05 00:00:52'),(176,'faux-fur-trimmed-coat',87,'Botble\\Ecommerce\\Models\\Product','products','2024-06-05 00:00:52','2024-06-05 00:00:52'),(177,'boho-fringed-kimono-digital',88,'Botble\\Ecommerce\\Models\\Product','products','2024-06-05 00:00:52','2024-06-05 00:00:52'),(178,'boho-fringed-kimono-digital',89,'Botble\\Ecommerce\\Models\\Product','products','2024-06-05 00:00:52','2024-06-05 00:00:52'),(179,'faux-leather-leggings',90,'Botble\\Ecommerce\\Models\\Product','products','2024-06-05 00:00:52','2024-06-05 00:00:52'),(180,'faux-leather-leggings',91,'Botble\\Ecommerce\\Models\\Product','products','2024-06-05 00:00:52','2024-06-05 00:00:52'),(181,'faux-leather-leggings',92,'Botble\\Ecommerce\\Models\\Product','products','2024-06-05 00:00:52','2024-06-05 00:00:52'),(182,'metallic-pleated-maxi-skirt',93,'Botble\\Ecommerce\\Models\\Product','products','2024-06-05 00:00:52','2024-06-05 00:00:52'),(183,'metallic-pleated-maxi-skirt',94,'Botble\\Ecommerce\\Models\\Product','products','2024-06-05 00:00:52','2024-06-05 00:00:52'),(184,'metallic-pleated-maxi-skirt',95,'Botble\\Ecommerce\\Models\\Product','products','2024-06-05 00:00:52','2024-06-05 00:00:52'),(185,'metallic-pleated-maxi-skirt',96,'Botble\\Ecommerce\\Models\\Product','products','2024-06-05 00:00:52','2024-06-05 00:00:52');
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
INSERT INTO `tags` VALUES (1,'General',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-06-05 00:00:46','2024-06-05 00:00:46'),(2,'Design',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-06-05 00:00:46','2024-06-05 00:00:46'),(3,'Fashion',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-06-05 00:00:46','2024-06-05 00:00:46'),(4,'Branding',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-06-05 00:00:46','2024-06-05 00:00:46'),(5,'Modern',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-06-05 00:00:46','2024-06-05 00:00:46'),(6,'Nature',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-06-05 00:00:46','2024-06-05 00:00:46'),(7,'Vintage',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-06-05 00:00:46','2024-06-05 00:00:46'),(8,'Sunglasses',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-06-05 00:00:46','2024-06-05 00:00:46');
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
INSERT INTO `testimonials` VALUES (1,'James Dopli','Thanks for all your efforts and teamwork over the last several months!  Thank you so much','main/users/5.jpg','Developer','published','2024-06-05 00:00:49','2024-06-05 00:00:49'),(2,'Theodore Handle','How you use the city or town name is up to you. All results may be freely used in any work.','main/users/6.jpg','CO Founder','published','2024-06-05 00:00:49','2024-06-05 00:00:49'),(3,'Shahnewaz Sakil','Very happy with our choice to take our daughter to Brave care. The entire team was great! Thank you!','main/users/4.jpg','UI/UX Designer','published','2024-06-05 00:00:49','2024-06-05 00:00:49'),(4,'Albert Flores','Wedding day savior! 5 stars. Their bridal collection is a game-changer. Made me feel like a star.','main/users/5.jpg','Bank of America','published','2024-06-05 00:00:49','2024-06-05 00:00:49');
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
INSERT INTO `users` VALUES (1,'brett90@sawayn.biz',NULL,'$2y$12$RVtB4M/I0Erwr7M3ZUCiMu3Yhk1WPmDipp1Qhg/IBhY31gYuGwxjq',NULL,'2024-06-05 00:00:42','2024-06-05 00:00:42','Sigurd','Hansen','admin',NULL,1,1,NULL,NULL);
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
INSERT INTO `widgets` VALUES (1,'SiteInfoWidget','footer_primary_sidebar','shofy-jewelry',1,'{\"id\":\"SiteInfoWidget\",\"logo\":\"main\\/general\\/logo.png\",\"logo_height\":50,\"about\":\"Shofy is a powerful tool eCommerce Laravel script for creating a professional and visually appealing online store.\",\"show_social_links\":true}','2024-06-05 00:00:52','2024-06-05 00:00:52'),(2,'CustomMenuWidget','footer_primary_sidebar','shofy-jewelry',2,'{\"id\":\"CustomMenuWidget\",\"name\":\"My Account\",\"menu_id\":\"my-account\"}','2024-06-05 00:00:52','2024-06-05 00:00:52'),(3,'CustomMenuWidget','footer_primary_sidebar','shofy-jewelry',3,'{\"id\":\"CustomMenuWidget\",\"name\":\"Information\",\"menu_id\":\"information\"}','2024-06-05 00:00:52','2024-06-05 00:00:52'),(4,'SiteContactWidget','footer_primary_sidebar','shofy-jewelry',4,'{\"id\":\"SiteContactWidget\",\"name\":\"Talk To Us\",\"phone_label\":\"Got Questions? Call us\",\"phone\":\"+670 413 90 762\",\"email\":\"support@shofy.com\",\"address\":\"79 Sleepy Hollow St. Jamaica, New York 1432\"}','2024-06-05 00:00:52','2024-06-05 00:00:52'),(5,'ProductCategoriesWidget','footer_primary_sidebar','shofy-jewelry',5,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Health & Beauty\",\"categories\":[5,6,7,8,10,11,12]}','2024-06-05 00:00:52','2024-06-05 00:00:52'),(6,'ProductCategoriesWidget','footer_primary_sidebar','shofy-jewelry',7,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Electronics\",\"style\":\"simple-text\",\"categories\":[3,4,15,18,19,20]}','2024-06-05 00:00:52','2024-06-05 00:00:52'),(7,'ProductCategoriesWidget','footer_primary_sidebar','shofy-jewelry',8,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Sweet Treats\",\"categories\":[11,12,13,14,15,16,17]}','2024-06-05 00:00:52','2024-06-05 00:00:52'),(8,'ProductCategoriesWidget','footer_primary_sidebar','shofy-jewelry',9,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Fashion\",\"categories\":[1,2,3,4,5,6,7,8]}','2024-06-05 00:00:52','2024-06-05 00:00:52'),(9,'NewsletterWidget','footer_top_sidebar','shofy-jewelry',1,'{\"id\":\"NewsletterWidget\",\"title\":\"Subscribe our Newsletter\",\"subtitle\":\"Sale 20% off all store\"}','2024-06-05 00:00:52','2024-06-05 00:00:52'),(10,'SiteCopyrightWidget','footer_bottom_sidebar','shofy-jewelry',1,'{\"id\":\"SiteCopyrightWidget\",\"content\":\"\\u00a9 %y% All rights Reserved.\"}','2024-06-05 00:00:52','2024-06-05 00:00:52'),(11,'SiteAcceptedPaymentsWidget','footer_bottom_sidebar','shofy-jewelry',2,'{\"id\":\"SiteAcceptedPaymentsWidget\",\"name\":\"Accepted Payments\",\"image\":\"main\\/general\\/footer-pay.png\",\"url\":\"#\"}','2024-06-05 00:00:52','2024-06-05 00:00:52'),(12,'BlogSearchWidget','blog_sidebar','shofy-jewelry',1,'{\"id\":\"BlogSearchWidget\"}','2024-06-05 00:00:52','2024-06-05 00:00:52'),(13,'BlogAboutMeWidget','blog_sidebar','shofy-jewelry',2,'{\"id\":\"BlogAboutMeWidget\",\"name\":\"About Me\",\"author_url\":\"\\/blog\",\"author_avatar\":\"main\\/users\\/7.jpg\",\"author_name\":\"Ravi O\'Leigh\",\"author_role\":\"Photographer & Blogger\",\"author_description\":\"Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient\",\"author_signature\":\"main\\/general\\/signature.png\"}','2024-06-05 00:00:52','2024-06-05 00:00:52'),(14,'BlogPostsWidget','blog_sidebar','shofy-jewelry',3,'{\"id\":\"BlogPostsWidget\",\"name\":\"Latest Posts\",\"limit\":3}','2024-06-05 00:00:52','2024-06-05 00:00:52'),(15,'BlogCategoriesWidget','blog_sidebar','shofy-jewelry',4,'{\"id\":\"BlogCategoriesWidget\",\"name\":\"Categories\",\"number_display\":6}','2024-06-05 00:00:52','2024-06-05 00:00:52'),(16,'BlogTagsWidget','blog_sidebar','shofy-jewelry',5,'{\"id\":\"BlogTagsWidget\",\"name\":\"Popular Tags\",\"number_display\":6}','2024-06-05 00:00:52','2024-06-05 00:00:52'),(17,'ProductDetailInfoWidget','product_details_sidebar','shofy-jewelry',1,'{\"id\":\"ProductDetailInfoWidget\",\"messages\":[[{\"key\":\"message\",\"value\":\"30 days easy returns\"}],[{\"key\":\"message\",\"value\":\"Order yours before 2.30pm for same day dispatch\"}]],\"description\":\"Guaranteed safe & secure checkout\",\"image\":\"main\\/general\\/footer-pay.png\"}','2024-06-05 00:00:52','2024-06-05 00:00:52'),(18,'EcommerceBrands','products_listing_top_sidebar','shofy-jewelry',1,'{\"id\":\"EcommerceBrands\",\"brand_ids\":[1,2,3,4,5]}','2024-06-05 00:00:52','2024-06-05 00:00:52'),(19,'ProductCategoriesWidget','products_listing_top_sidebar','shofy-jewelry',2,'{\"id\":\"ProductCategoriesWidget\",\"categories\":[1,2,7,11,17,18],\"style\":\"grid\",\"display_children\":true}','2024-06-05 00:00:52','2024-06-05 00:00:52');
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

-- Dump completed on 2024-06-05 14:00:53
