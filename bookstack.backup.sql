-- MySQL dump 10.13  Distrib 8.0.30, for Linux (x86_64)
--
-- Host: localhost    Database: bookstack
-- ------------------------------------------------------
-- Server version	8.0.30-0ubuntu0.20.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `activities`
--

DROP TABLE IF EXISTS `activities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activities` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int NOT NULL,
  `ip` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `entity_id` int DEFAULT NULL,
  `entity_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activities_user_id_index` (`user_id`),
  KEY `activities_entity_id_index` (`entity_id`),
  KEY `activities_key_index` (`type`),
  KEY `activities_created_at_index` (`created_at`),
  KEY `activities_ip_index` (`ip`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activities`
--

LOCK TABLES `activities` WRITE;
/*!40000 ALTER TABLE `activities` DISABLE KEYS */;
INSERT INTO `activities` VALUES (1,'auth_login','standard; (1) Admin',1,'192.168.85.128',NULL,NULL,'2022-09-24 10:21:59','2022-09-24 10:21:59'),(2,'settings_update','features',1,'192.168.85.128',NULL,NULL,'2022-09-24 10:23:33','2022-09-24 10:23:33'),(3,'bookshelf_create','(1) STS Project',1,'192.168.85.128',1,'bookshelf','2022-09-24 10:30:07','2022-09-24 10:30:07'),(4,'settings_update','customization',1,'192.168.85.128',NULL,NULL,'2022-09-24 10:31:32','2022-09-24 10:31:32'),(5,'bookshelf_update','(1) STS Project',1,'192.168.85.128',1,'bookshelf','2022-09-24 10:33:59','2022-09-24 10:33:59'),(6,'book_create','(1) Image stitching',1,'192.168.85.128',1,'book','2022-09-24 10:45:43','2022-09-24 10:45:43'),(7,'bookshelf_update','(1) STS Project',1,'192.168.85.128',1,'bookshelf','2022-09-24 10:45:43','2022-09-24 10:45:43'),(8,'page_create','(1) t1',1,'192.168.85.128',1,'page','2022-09-24 10:48:42','2022-09-24 10:48:42'),(9,'page_delete','(1) t1',1,'192.168.85.128',1,'page','2022-09-24 10:48:48','2022-09-24 10:48:48'),(10,'chapter_create','(1) Introduction',1,'192.168.85.128',1,'chapter','2022-09-24 10:50:06','2022-09-24 10:50:06'),(11,'page_create','(2) Image Stitching',1,'192.168.85.128',2,'page','2022-09-24 10:52:53','2022-09-24 10:52:53'),(12,'book_create','(2) Image alignmenation',1,'192.168.85.128',2,'book','2022-09-24 10:58:43','2022-09-24 10:58:43'),(13,'bookshelf_update','(1) STS Project',1,'192.168.85.128',1,'bookshelf','2022-09-24 10:58:43','2022-09-24 10:58:43'),(14,'book_create','(3) 3D Model Creation',1,'192.168.85.128',3,'book','2022-09-24 11:02:15','2022-09-24 11:02:15'),(15,'bookshelf_update','(1) STS Project',1,'192.168.85.128',1,'bookshelf','2022-09-24 11:02:15','2022-09-24 11:02:15'),(16,'book_create','(4) Training',1,'192.168.85.128',4,'book','2022-09-24 11:03:54','2022-09-24 11:03:54'),(17,'bookshelf_update','(1) STS Project',1,'192.168.85.128',1,'bookshelf','2022-09-24 11:03:54','2022-09-24 11:03:54'),(18,'book_create','(5) STS Overview',1,'192.168.85.128',5,'book','2022-09-24 11:07:59','2022-09-24 11:07:59'),(19,'bookshelf_update','(1) STS Project',1,'192.168.85.128',1,'bookshelf','2022-09-24 11:07:59','2022-09-24 11:07:59'),(20,'settings_update','customization',1,'192.168.85.128',NULL,NULL,'2022-09-24 11:09:02','2022-09-24 11:09:02'),(21,'bookshelf_update','(1) STS Project',1,'192.168.85.128',1,'bookshelf','2022-09-24 11:09:41','2022-09-24 11:09:41'),(22,'chapter_create','(2) Introduction',1,'192.168.85.128',2,'chapter','2022-09-24 11:11:56','2022-09-24 11:11:56'),(23,'page_create','(3) What is STS',1,'192.168.85.128',3,'page','2022-09-24 11:12:59','2022-09-24 11:12:59'),(24,'page_create','(4) Theoretical workflow',1,'192.168.85.128',4,'page','2022-09-24 11:13:42','2022-09-24 11:13:42'),(25,'page_create','(5) Questions remaining',1,'192.168.85.128',5,'page','2022-09-24 11:16:25','2022-09-24 11:16:25'),(26,'settings_update','customization',1,'192.168.85.128',NULL,NULL,'2022-09-24 11:20:51','2022-09-24 11:20:51'),(27,'chapter_create','(3) Overview',1,'192.168.85.128',3,'chapter','2022-09-24 11:22:21','2022-09-24 11:22:21'),(28,'page_create','(6) 1.1 Model Data Input',1,'192.168.85.128',6,'page','2022-09-24 11:23:18','2022-09-24 11:23:18'),(29,'settings_update','customization',1,'192.168.85.128',NULL,NULL,'2022-09-24 11:23:51','2022-09-24 11:23:51'),(30,'page_update','(6) 1.1 Model Data Input',1,'192.168.85.128',6,'page','2022-09-24 11:24:23','2022-09-24 11:24:23'),(31,'chapter_update','(3) 1. Overview',1,'192.168.85.128',3,'chapter','2022-09-24 11:24:44','2022-09-24 11:24:44'),(32,'page_create','(7) 1.2 Image stitching pipeline',1,'192.168.85.128',7,'page','2022-09-24 11:25:35','2022-09-24 11:25:35'),(33,'page_create','(8) 1.2 3D reconstruction pipeline',1,'192.168.85.128',8,'page','2022-09-24 11:26:52','2022-09-24 11:26:52'),(34,'page_update','(8) 1.3 3D reconstruction pipeline',1,'192.168.85.128',8,'page','2022-09-24 11:28:10','2022-09-24 11:28:10'),(35,'page_create','(9) 1.4 Structure-to-function pipeline',1,'192.168.85.128',9,'page','2022-09-24 11:28:52','2022-09-24 11:28:52'),(36,'page_create','(10) 1.5 Individual parameter application pipeline',1,'192.168.85.128',10,'page','2022-09-24 11:29:26','2022-09-24 11:29:26'),(37,'page_create','(11) 1.6 Validation pipeline',1,'192.168.85.128',11,'page','2022-09-24 11:29:59','2022-09-24 11:29:59'),(38,'page_create','(12) 1.7 Individual model interfaced with BrainGenix::NES',1,'192.168.85.128',12,'page','2022-09-24 11:32:00','2022-09-24 11:32:00'),(39,'chapter_create','(4) 2.0  Image stitching pipeline',1,'192.168.85.128',4,'chapter','2022-09-24 11:32:45','2022-09-24 11:32:45'),(40,'chapter_update','(4) 2.0  Image stitching pipeline',1,'192.168.85.128',4,'chapter','2022-09-24 11:33:11','2022-09-24 11:33:11'),(41,'page_create','(13) The image pipeline',1,'192.168.85.128',13,'page','2022-09-24 11:33:44','2022-09-24 11:33:44'),(42,'chapter_create','(5) 3.0 3D reconstruction pipeline',1,'192.168.85.128',5,'chapter','2022-09-24 11:36:17','2022-09-24 11:36:17'),(43,'page_create','(14) Introduction',1,'192.168.85.128',14,'page','2022-09-24 11:36:42','2022-09-24 11:36:42'),(44,'chapter_create','(6) 4.0 Structure-to-function pipeline',1,'192.168.85.128',6,'chapter','2022-09-24 11:37:21','2022-09-24 11:37:21'),(45,'page_create','(15) Pipelines',1,'192.168.85.128',15,'page','2022-09-24 11:37:49','2022-09-24 11:37:49'),(46,'chapter_create','(7) 5.0 Individual parameter application pipeline',1,'192.168.85.128',7,'chapter','2022-09-24 11:38:14','2022-09-24 11:38:14'),(47,'chapter_create','(8) 6.0 Validation pipeline',1,'192.168.85.128',8,'chapter','2022-09-24 11:38:57','2022-09-24 11:38:57'),(48,'page_create','(16) why validation',1,'192.168.85.128',16,'page','2022-09-24 11:39:28','2022-09-24 11:39:28'),(49,'chapter_create','(9) 7.0 Database',1,'192.168.85.128',9,'chapter','2022-09-24 11:40:19','2022-09-24 11:40:19'),(50,'page_create','(17) storing the information',1,'192.168.85.128',17,'page','2022-09-24 11:40:51','2022-09-24 11:40:51'),(51,'chapter_create','(10) Week1',1,'192.168.85.128',10,'chapter','2022-09-24 11:44:17','2022-09-24 11:44:17'),(52,'page_create','(18) Getting access to Carboncopies email',1,'192.168.85.128',18,'page','2022-09-24 11:53:10','2022-09-24 11:53:10'),(53,'page_create','(19) Access to Bookstacks',1,'192.168.85.128',19,'page','2022-09-24 12:03:59','2022-09-24 12:03:59'),(54,'page_create','(20) Access to Carboncopies Gitlab account',1,'192.168.85.128',20,'page','2022-09-24 12:11:04','2022-09-24 12:11:04'),(55,'chapter_create','(11) Week2',1,'192.168.85.128',11,'chapter','2022-09-24 12:11:59','2022-09-24 12:11:59'),(56,'page_create','(21) Meeting invitations',1,'192.168.85.128',21,'page','2022-09-24 12:17:05','2022-09-24 12:17:05'),(57,'page_create','(22) Module identification',1,'192.168.85.128',22,'page','2022-09-24 12:19:20','2022-09-24 12:19:20'),(58,'page_create','(23) Mentor Assignment',1,'192.168.85.128',23,'page','2022-09-24 12:24:24','2022-09-24 12:24:24'),(59,'page_create','(24) Progress Updates',1,'192.168.85.128',24,'page','2022-09-24 12:26:25','2022-09-24 12:26:25'),(60,'book_update','(4) STS Training',1,'192.168.85.128',4,'book','2022-09-24 21:11:35','2022-09-24 21:11:35'),(61,'bookshelf_create','(2) Training',1,'192.168.85.128',2,'bookshelf','2022-09-24 21:13:42','2022-09-24 21:13:42'),(62,'book_update','(4) STS Training',1,'192.168.85.128',4,'book','2022-09-24 21:16:22','2022-09-24 21:16:22'),(63,'bookshelf_update','(2) Training',1,'192.168.85.128',2,'bookshelf','2022-09-24 21:16:52','2022-09-24 21:16:52'),(64,'book_create','(6) HR Training',1,'192.168.85.128',6,'book','2022-09-24 21:18:59','2022-09-24 21:18:59'),(65,'bookshelf_update','(2) Training',1,'192.168.85.128',2,'bookshelf','2022-09-24 21:19:00','2022-09-24 21:19:00'),(66,'page_update','(2) Image Stitching',1,'192.168.85.128',2,'page','2022-09-24 21:36:31','2022-09-24 21:36:31'),(67,'page_create','(25) ImageJ',1,'192.168.85.128',25,'page','2022-09-24 21:39:13','2022-09-24 21:39:13'),(68,'page_create','(26) Fiji',1,'192.168.85.128',26,'page','2022-09-24 21:47:49','2022-09-24 21:47:49'),(69,'chapter_create','(12) Image J',1,'192.168.85.128',12,'chapter','2022-09-24 21:51:04','2022-09-24 21:51:04'),(70,'chapter_create','(13) Fiji',1,'192.168.85.128',13,'chapter','2022-09-24 21:51:26','2022-09-24 21:51:26'),(71,'chapter_update','(13) Fiji',1,'192.168.85.128',13,'chapter','2022-09-24 21:52:42','2022-09-24 21:52:42'),(72,'page_create','(27) Fiji Installation',1,'192.168.85.128',27,'page','2022-09-24 22:09:42','2022-09-24 22:09:42'),(73,'page_update','(27) Fiji Installation',1,'192.168.85.128',27,'page','2022-09-24 22:14:24','2022-09-24 22:14:24'),(74,'user_create','(3) STS Lead',1,'192.168.85.128',NULL,NULL,'2022-09-24 22:16:44','2022-09-24 22:16:44'),(75,'auth_login','standard; (3) STS Lead',3,'192.168.85.128',NULL,NULL,'2022-09-24 22:16:56','2022-09-24 22:16:56'),(76,'auth_login','standard; (1) Admin',1,'192.168.85.128',NULL,NULL,'2022-09-24 22:17:32','2022-09-24 22:17:32'),(77,'permissions_update','(27) Fiji Installation',1,'192.168.85.128',27,'page','2022-09-24 22:18:05','2022-09-24 22:18:05'),(78,'auth_login','standard; (3) STS Lead',3,'192.168.85.128',NULL,NULL,'2022-09-24 22:18:15','2022-09-24 22:18:15'),(79,'auth_login','standard; (1) Admin',1,'192.168.85.128',NULL,NULL,'2022-09-24 22:18:40','2022-09-24 22:18:40'),(80,'role_update','(2) Editor',1,'192.168.85.128',NULL,NULL,'2022-09-24 22:19:55','2022-09-24 22:19:55'),(81,'auth_login','standard; (3) STS Lead',3,'192.168.85.128',NULL,NULL,'2022-09-24 22:20:09','2022-09-24 22:20:09'),(82,'commented_on','(27) Fiji Installation',3,'192.168.85.128',27,'page','2022-09-24 22:20:34','2022-09-24 22:20:34'),(83,'auth_login','standard; (3) STS Lead',3,'192.168.85.128',NULL,NULL,'2022-09-25 05:59:12','2022-09-25 05:59:12'),(84,'auth_login','standard; (1) Admin',1,'192.168.85.128',NULL,NULL,'2022-09-25 10:04:03','2022-09-25 10:04:03'),(85,'page_create','(29) Manuel stitching',1,'192.168.85.128',29,'page','2022-09-25 10:08:31','2022-09-25 10:08:31'),(86,'page_update','(29) Manuel stitching',1,'192.168.85.128',29,'page','2022-09-25 10:22:52','2022-09-25 10:22:52'),(87,'page_update','(29) Manuel stitching',1,'192.168.85.128',29,'page','2022-09-25 10:49:45','2022-09-25 10:49:45'),(88,'chapter_create','(14) Volunteer match',1,'192.168.85.128',14,'chapter','2022-09-25 10:57:33','2022-09-25 10:57:33'),(89,'page_create','(30) Accesing Volunteer match',1,'192.168.85.128',30,'page','2022-09-25 10:57:52','2022-09-25 10:57:52'),(90,'auth_login','standard; (3) STS Lead',3,'192.168.85.128',NULL,NULL,'2022-09-25 11:15:41','2022-09-25 11:15:41'),(91,'page_create','(31) Fiji installation for Scripting',3,'192.168.85.128',31,'page','2022-09-25 11:20:37','2022-09-25 11:20:37'),(92,'auth_login','standard; (1) Admin',1,'192.168.85.128',NULL,NULL,'2022-09-26 00:32:25','2022-09-26 00:32:25');
/*!40000 ALTER TABLE `activities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `api_tokens`
--

DROP TABLE IF EXISTS `api_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `api_tokens` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int unsigned NOT NULL,
  `expires_at` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `api_tokens_token_id_unique` (`token_id`),
  KEY `api_tokens_user_id_index` (`user_id`),
  KEY `api_tokens_expires_at_index` (`expires_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_tokens`
--

LOCK TABLES `api_tokens` WRITE;
/*!40000 ALTER TABLE `api_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `api_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attachments`
--

DROP TABLE IF EXISTS `attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attachments` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `extension` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uploaded_to` int NOT NULL,
  `external` tinyint(1) NOT NULL,
  `order` int NOT NULL,
  `created_by` int NOT NULL,
  `updated_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `attachments_uploaded_to_index` (`uploaded_to`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attachments`
--

LOCK TABLES `attachments` WRITE;
/*!40000 ALTER TABLE `attachments` DISABLE KEYS */;
/*!40000 ALTER TABLE `attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int NOT NULL,
  `updated_by` int NOT NULL,
  `restricted` tinyint(1) NOT NULL DEFAULT '0',
  `image_id` int DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `owned_by` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `books_slug_index` (`slug`),
  KEY `books_created_by_index` (`created_by`),
  KEY `books_updated_by_index` (`updated_by`),
  KEY `books_restricted_index` (`restricted`),
  KEY `books_owned_by_index` (`owned_by`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (1,'Image stitching','image-stitching','Image stitching documentation','2022-09-24 10:45:43','2022-09-24 10:45:43',1,1,0,4,NULL,1),(2,'Image alignmenation','image-alignmenation','Alignmentation of different slices','2022-09-24 10:58:43','2022-09-24 10:58:43',1,1,0,5,NULL,1),(3,'3D Model Creation','3d-model-creation','creating of the 3d model of the 2d layers','2022-09-24 11:02:15','2022-09-24 11:02:15',1,1,0,6,NULL,1),(4,'STS Training','sts-training','Training information','2022-09-24 11:03:54','2022-09-24 21:16:22',1,1,0,10,NULL,1),(5,'STS Overview','sts-overview','An overview on the STS project','2022-09-24 11:07:59','2022-09-24 11:07:59',1,1,0,8,NULL,1),(6,'HR Training','hr-training','','2022-09-24 21:18:59','2022-09-24 21:18:59',1,1,0,NULL,NULL,1);
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookshelves`
--

DROP TABLE IF EXISTS `bookshelves`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookshelves` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `restricted` tinyint(1) NOT NULL DEFAULT '0',
  `image_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `owned_by` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `bookshelves_slug_index` (`slug`),
  KEY `bookshelves_created_by_index` (`created_by`),
  KEY `bookshelves_updated_by_index` (`updated_by`),
  KEY `bookshelves_restricted_index` (`restricted`),
  KEY `bookshelves_owned_by_index` (`owned_by`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookshelves`
--

LOCK TABLES `bookshelves` WRITE;
/*!40000 ALTER TABLE `bookshelves` DISABLE KEYS */;
INSERT INTO `bookshelves` VALUES (1,'STS Project','sts-project','documentation regarding the STS documentation',1,1,0,3,'2022-09-24 10:30:07','2022-09-24 11:09:41',NULL,1),(2,'Training','training','General Training',1,1,0,11,'2022-09-24 21:13:42','2022-09-24 21:16:52',NULL,1);
/*!40000 ALTER TABLE `bookshelves` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookshelves_books`
--

DROP TABLE IF EXISTS `bookshelves_books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookshelves_books` (
  `bookshelf_id` int unsigned NOT NULL,
  `book_id` int unsigned NOT NULL,
  `order` int unsigned NOT NULL,
  PRIMARY KEY (`bookshelf_id`,`book_id`),
  KEY `bookshelves_books_book_id_foreign` (`book_id`),
  CONSTRAINT `bookshelves_books_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `bookshelves_books_bookshelf_id_foreign` FOREIGN KEY (`bookshelf_id`) REFERENCES `bookshelves` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookshelves_books`
--

LOCK TABLES `bookshelves_books` WRITE;
/*!40000 ALTER TABLE `bookshelves_books` DISABLE KEYS */;
INSERT INTO `bookshelves_books` VALUES (1,1,2),(1,2,3),(1,3,4),(1,4,1),(1,5,0),(2,6,1);
/*!40000 ALTER TABLE `bookshelves_books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  UNIQUE KEY `cache_key_unique` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chapters`
--

DROP TABLE IF EXISTS `chapters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chapters` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `book_id` int NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `priority` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int NOT NULL,
  `updated_by` int NOT NULL,
  `restricted` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `owned_by` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `chapters_slug_index` (`slug`),
  KEY `chapters_book_id_index` (`book_id`),
  KEY `chapters_priority_index` (`priority`),
  KEY `chapters_created_by_index` (`created_by`),
  KEY `chapters_updated_by_index` (`updated_by`),
  KEY `chapters_restricted_index` (`restricted`),
  KEY `chapters_owned_by_index` (`owned_by`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chapters`
--

LOCK TABLES `chapters` WRITE;
/*!40000 ALTER TABLE `chapters` DISABLE KEYS */;
INSERT INTO `chapters` VALUES (1,1,'introduction','Introduction','Understanding imagine stitching and information regarding it',2,'2022-09-24 10:50:06','2022-09-24 10:50:06',1,1,0,NULL,1),(2,5,'introduction','Introduction','Scan Translation System',2,'2022-09-24 11:11:56','2022-09-24 11:11:56',1,1,0,NULL,1),(3,5,'1-overview','1. Overview','',3,'2022-09-24 11:22:21','2022-09-24 11:24:44',1,1,0,NULL,1),(4,5,'20-image-stitching-pipeline','2.0  Image stitching pipeline','',4,'2022-09-24 11:32:45','2022-09-24 11:33:11',1,1,0,NULL,1),(5,5,'30-3d-reconstruction-pipeline','3.0 3D reconstruction pipeline','',5,'2022-09-24 11:36:17','2022-09-24 11:36:17',1,1,0,NULL,1),(6,5,'40-structure-to-function-pipeline','4.0 Structure-to-function pipeline','',6,'2022-09-24 11:37:21','2022-09-24 11:37:21',1,1,0,NULL,1),(7,5,'50-individual-parameter-application-pipeline','5.0 Individual parameter application pipeline','',7,'2022-09-24 11:38:14','2022-09-24 11:38:14',1,1,0,NULL,1),(8,5,'60-validation-pipeline','6.0 Validation pipeline','',8,'2022-09-24 11:38:57','2022-09-24 11:38:57',1,1,0,NULL,1),(9,5,'70-database','7.0 Database','',9,'2022-09-24 11:40:19','2022-09-24 11:40:19',1,1,0,NULL,1),(10,4,'week1','Week1','week1 ramp up',2,'2022-09-24 11:44:17','2022-09-24 11:44:17',1,1,0,NULL,1),(11,4,'week2','Week2','steps to do for a new hire',3,'2022-09-24 12:11:59','2022-09-24 12:11:59',1,1,0,NULL,1),(12,1,'image-j','Image J','information regarding imageJ',3,'2022-09-24 21:51:04','2022-09-24 21:51:04',1,1,0,NULL,1),(13,1,'fiji','Fiji','Information regarding Fiji Tool',4,'2022-09-24 21:51:26','2022-09-24 21:52:42',1,1,0,NULL,1),(14,6,'volunteer-match','Volunteer match','Volunteer match documentation',2,'2022-09-25 10:57:33','2022-09-25 10:57:33',1,1,0,NULL,1);
/*!40000 ALTER TABLE `chapters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comments` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `entity_id` int unsigned NOT NULL,
  `entity_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` longtext COLLATE utf8mb4_unicode_ci,
  `html` longtext COLLATE utf8mb4_unicode_ci,
  `parent_id` int unsigned DEFAULT NULL,
  `local_id` int unsigned DEFAULT NULL,
  `created_by` int unsigned NOT NULL,
  `updated_by` int unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `comments_entity_id_entity_type_index` (`entity_id`,`entity_type`),
  KEY `comments_local_id_index` (`local_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (1,27,'page','good documentation by admin','<p>good documentation by admin</p>\n',NULL,1,3,3,'2022-09-24 22:20:34','2022-09-24 22:21:00');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deletions`
--

DROP TABLE IF EXISTS `deletions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deletions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `deleted_by` int NOT NULL,
  `deletable_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deletable_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `deletions_deleted_by_index` (`deleted_by`),
  KEY `deletions_deletable_type_index` (`deletable_type`),
  KEY `deletions_deletable_id_index` (`deletable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deletions`
--

LOCK TABLES `deletions` WRITE;
/*!40000 ALTER TABLE `deletions` DISABLE KEYS */;
INSERT INTO `deletions` VALUES (1,1,'page',1,'2022-09-24 10:48:48','2022-09-24 10:48:48');
/*!40000 ALTER TABLE `deletions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_confirmations`
--

DROP TABLE IF EXISTS `email_confirmations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_confirmations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `email_confirmations_user_id_index` (`user_id`),
  KEY `email_confirmations_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_confirmations`
--

LOCK TABLES `email_confirmations` WRITE;
/*!40000 ALTER TABLE `email_confirmations` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_confirmations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entity_permissions`
--

DROP TABLE IF EXISTS `entity_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `entity_permissions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `restrictable_id` int NOT NULL,
  `restrictable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` int NOT NULL,
  `action` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `restrictions_role_id_index` (`role_id`),
  KEY `restrictions_action_index` (`action`),
  KEY `restrictions_restrictable_id_restrictable_type_index` (`restrictable_id`,`restrictable_type`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entity_permissions`
--

LOCK TABLES `entity_permissions` WRITE;
/*!40000 ALTER TABLE `entity_permissions` DISABLE KEYS */;
INSERT INTO `entity_permissions` VALUES (1,27,'page',2,'view'),(2,27,'page',2,'update'),(3,27,'page',3,'view');
/*!40000 ALTER TABLE `entity_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
-- Table structure for table `favourites`
--

DROP TABLE IF EXISTS `favourites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `favourites` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `favouritable_id` int NOT NULL,
  `favouritable_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `favouritable_index` (`favouritable_id`,`favouritable_type`),
  KEY `favourites_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favourites`
--

LOCK TABLES `favourites` WRITE;
/*!40000 ALTER TABLE `favourites` DISABLE KEYS */;
/*!40000 ALTER TABLE `favourites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `images` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int NOT NULL,
  `updated_by` int NOT NULL,
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uploaded_to` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `images_type_index` (`type`),
  KEY `images_uploaded_to_index` (`uploaded_to`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` VALUES (3,'barinslice.jpg','http://192.168.85.128/uploads/images/cover_bookshelf/2022-09/barinslice.jpg','2022-09-24 10:33:59','2022-09-24 10:33:59',1,1,'/uploads/images/cover_bookshelf/2022-09/barinslice.jpg','cover_bookshelf',1),(4,'solen-feyissa-AAMldegB0x8-unsplash_440x250.jpg','http://192.168.85.128/uploads/images/cover_book/2022-09/solen-feyissa-aamldegb0x8-unsplash-440x250.jpg','2022-09-24 10:45:43','2022-09-24 10:45:43',1,1,'/uploads/images/cover_book/2022-09/solen-feyissa-aamldegb0x8-unsplash-440x250.jpg','cover_book',1),(5,'michal-parzuchowski-geNNFqfvw48-unsplash_2_440x250.jpg','http://192.168.85.128/uploads/images/cover_book/2022-09/michal-parzuchowski-gennfqfvw48-unsplash-2-440x250.jpg','2022-09-24 10:58:43','2022-09-24 10:58:43',1,1,'/uploads/images/cover_book/2022-09/michal-parzuchowski-gennfqfvw48-unsplash-2-440x250.jpg','cover_book',2),(6,'natasha-connell-aCU6AJnT-8g-unsplash_440x250.jpg','http://192.168.85.128/uploads/images/cover_book/2022-09/natasha-connell-acu6ajnt-8g-unsplash-440x250.jpg','2022-09-24 11:02:15','2022-09-24 11:02:15',1,1,'/uploads/images/cover_book/2022-09/natasha-connell-acu6ajnt-8g-unsplash-440x250.jpg','cover_book',3),(8,'milad-fakurian-58Z17lnVS4U-unsplash_440x250.jpg','http://192.168.85.128/uploads/images/cover_book/2022-09/milad-fakurian-58z17lnvs4u-unsplash-440x250.jpg','2022-09-24 11:07:59','2022-09-24 11:07:59',1,1,'/uploads/images/cover_book/2022-09/milad-fakurian-58z17lnvs4u-unsplash-440x250.jpg','cover_book',5),(9,'Untitled drawing.jpg','http://192.168.85.128/uploads/images/system/2022-09/untitled-drawing.jpg','2022-09-24 11:09:02','2022-09-24 11:09:02',1,1,'/uploads/images/system/2022-09/untitled-drawing.jpg','system',0),(10,'jason-goodman-bzqU01v-G54-unsplash_440x250.jpg','http://192.168.85.128/uploads/images/cover_book/2022-09/jason-goodman-bzqu01v-g54-unsplash-440x250.jpg','2022-09-24 21:16:22','2022-09-24 21:16:22',1,1,'/uploads/images/cover_book/2022-09/jason-goodman-bzqu01v-g54-unsplash-440x250.jpg','cover_book',4),(11,'jason-goodman-Oalh2MojUuk-unsplash_440x250.jpg','http://192.168.85.128/uploads/images/cover_bookshelf/2022-09/jason-goodman-oalh2mojuuk-unsplash-440x250.jpg','2022-09-24 21:16:52','2022-09-24 21:16:52',1,1,'/uploads/images/cover_bookshelf/2022-09/jason-goodman-oalh2mojuuk-unsplash-440x250.jpg','cover_bookshelf',2),(12,'image.png','http://192.168.85.128/uploads/images/gallery/2022-09/image.png','2022-09-24 22:05:54','2022-09-24 22:05:54',1,1,'/uploads/images/gallery/2022-09/image.png','gallery',27),(13,'image.png','http://192.168.85.128/uploads/images/gallery/2022-09/H0Cimage.png','2022-09-24 22:13:11','2022-09-24 22:13:11',1,1,'/uploads/images/gallery/2022-09/H0Cimage.png','gallery',27),(14,'X1mfqTMqXG-avatar.png','http://192.168.85.128/uploads/images/user/2022-09/x1mfqtmqxg-avatar.png','2022-09-24 22:16:44','2022-09-24 22:16:44',3,3,'/uploads/images/user/2022-09/x1mfqtmqxg-avatar.png','user',3),(15,'image.png','http://192.168.85.128/uploads/images/gallery/2022-09/C7timage.png','2022-09-25 06:15:27','2022-09-25 06:15:27',3,3,'/uploads/images/gallery/2022-09/C7timage.png','gallery',28),(16,'image.png','http://192.168.85.128/uploads/images/gallery/2022-09/Zgcimage.png','2022-09-25 06:26:43','2022-09-25 06:26:43',3,3,'/uploads/images/gallery/2022-09/Zgcimage.png','gallery',28),(17,'image.png','http://192.168.85.128/uploads/images/gallery/2022-09/g0oimage.png','2022-09-25 06:31:51','2022-09-25 06:31:51',3,3,'/uploads/images/gallery/2022-09/g0oimage.png','gallery',28),(18,'image.png','http://192.168.85.128/uploads/images/gallery/2022-09/taaimage.png','2022-09-25 06:39:38','2022-09-25 06:39:38',3,3,'/uploads/images/gallery/2022-09/taaimage.png','gallery',28),(19,'image.png','http://192.168.85.128/uploads/images/gallery/2022-09/VGWimage.png','2022-09-25 06:44:18','2022-09-25 06:44:18',3,3,'/uploads/images/gallery/2022-09/VGWimage.png','gallery',28),(20,'image.png','http://192.168.85.128/uploads/images/gallery/2022-09/Wojimage.png','2022-09-25 10:07:43','2022-09-25 10:07:43',1,1,'/uploads/images/gallery/2022-09/Wojimage.png','gallery',29),(21,'image.png','http://192.168.85.128/uploads/images/gallery/2022-09/ZnJimage.png','2022-09-25 10:09:46','2022-09-25 10:09:46',1,1,'/uploads/images/gallery/2022-09/ZnJimage.png','gallery',29),(22,'image.png','http://192.168.85.128/uploads/images/gallery/2022-09/sh8image.png','2022-09-25 10:20:43','2022-09-25 10:20:43',1,1,'/uploads/images/gallery/2022-09/sh8image.png','gallery',29),(23,'image.png','http://192.168.85.128/uploads/images/gallery/2022-09/Szzimage.png','2022-09-25 10:31:02','2022-09-25 10:31:02',1,1,'/uploads/images/gallery/2022-09/Szzimage.png','gallery',29),(24,'image.png','http://192.168.85.128/uploads/images/gallery/2022-09/STgimage.png','2022-09-25 10:41:09','2022-09-25 10:41:09',1,1,'/uploads/images/gallery/2022-09/STgimage.png','gallery',29),(25,'image.png','http://192.168.85.128/uploads/images/gallery/2022-09/Jk2image.png','2022-09-25 10:42:11','2022-09-25 10:42:11',1,1,'/uploads/images/gallery/2022-09/Jk2image.png','gallery',29),(26,'image.png','http://192.168.85.128/uploads/images/gallery/2022-09/UyUimage.png','2022-09-25 10:43:53','2022-09-25 10:43:53',1,1,'/uploads/images/gallery/2022-09/UyUimage.png','gallery',29),(27,'image.png','http://192.168.85.128/uploads/images/gallery/2022-09/28kimage.png','2022-09-25 10:47:52','2022-09-25 10:47:52',1,1,'/uploads/images/gallery/2022-09/28kimage.png','gallery',29);
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
-- Table structure for table `joint_permissions`
--

DROP TABLE IF EXISTS `joint_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `joint_permissions` (
  `role_id` int NOT NULL,
  `entity_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `entity_id` int NOT NULL,
  `has_permission` tinyint(1) NOT NULL DEFAULT '0',
  `has_permission_own` tinyint(1) NOT NULL DEFAULT '0',
  `owned_by` int NOT NULL,
  PRIMARY KEY (`role_id`,`entity_type`,`entity_id`),
  KEY `joint_permissions_entity_id_entity_type_index` (`entity_id`,`entity_type`),
  KEY `joint_permissions_has_permission_index` (`has_permission`),
  KEY `joint_permissions_has_permission_own_index` (`has_permission_own`),
  KEY `joint_permissions_role_id_index` (`role_id`),
  KEY `joint_permissions_created_by_index` (`owned_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `joint_permissions`
--

LOCK TABLES `joint_permissions` WRITE;
/*!40000 ALTER TABLE `joint_permissions` DISABLE KEYS */;
INSERT INTO `joint_permissions` VALUES (1,'book',1,1,1,1),(1,'book',2,1,1,1),(1,'book',3,1,1,1),(1,'book',4,1,1,1),(1,'book',5,1,1,1),(1,'book',6,1,1,1),(1,'bookshelf',1,1,1,1),(1,'bookshelf',2,1,1,1),(1,'chapter',1,1,1,1),(1,'chapter',2,1,1,1),(1,'chapter',3,1,1,1),(1,'chapter',4,1,1,1),(1,'chapter',5,1,1,1),(1,'chapter',6,1,1,1),(1,'chapter',7,1,1,1),(1,'chapter',8,1,1,1),(1,'chapter',9,1,1,1),(1,'chapter',10,1,1,1),(1,'chapter',11,1,1,1),(1,'chapter',12,1,1,1),(1,'chapter',13,1,1,1),(1,'chapter',14,1,1,1),(1,'page',1,1,1,1),(1,'page',2,1,1,1),(1,'page',3,1,1,1),(1,'page',4,1,1,1),(1,'page',5,1,1,1),(1,'page',6,1,1,1),(1,'page',7,1,1,1),(1,'page',8,1,1,1),(1,'page',9,1,1,1),(1,'page',10,1,1,1),(1,'page',11,1,1,1),(1,'page',12,1,1,1),(1,'page',13,1,1,1),(1,'page',14,1,1,1),(1,'page',15,1,1,1),(1,'page',16,1,1,1),(1,'page',17,1,1,1),(1,'page',18,1,1,1),(1,'page',19,1,1,1),(1,'page',20,1,1,1),(1,'page',21,1,1,1),(1,'page',22,1,1,1),(1,'page',23,1,1,1),(1,'page',24,1,1,1),(1,'page',25,1,1,1),(1,'page',26,1,1,1),(1,'page',27,1,1,1),(1,'page',28,1,1,3),(1,'page',29,1,1,1),(1,'page',30,1,1,1),(1,'page',31,1,1,3),(2,'book',1,1,1,1),(2,'book',2,1,1,1),(2,'book',3,1,1,1),(2,'book',4,1,1,1),(2,'book',5,1,1,1),(2,'book',6,1,1,1),(2,'bookshelf',1,1,1,1),(2,'bookshelf',2,1,1,1),(2,'chapter',1,1,1,1),(2,'chapter',2,1,1,1),(2,'chapter',3,1,1,1),(2,'chapter',4,1,1,1),(2,'chapter',5,1,1,1),(2,'chapter',6,1,1,1),(2,'chapter',7,1,1,1),(2,'chapter',8,1,1,1),(2,'chapter',9,1,1,1),(2,'chapter',10,1,1,1),(2,'chapter',11,1,1,1),(2,'chapter',12,1,1,1),(2,'chapter',13,1,1,1),(2,'chapter',14,1,1,1),(2,'page',1,1,1,1),(2,'page',2,1,1,1),(2,'page',3,1,1,1),(2,'page',4,1,1,1),(2,'page',5,1,1,1),(2,'page',6,1,1,1),(2,'page',7,1,1,1),(2,'page',8,1,1,1),(2,'page',9,1,1,1),(2,'page',10,1,1,1),(2,'page',11,1,1,1),(2,'page',12,1,1,1),(2,'page',13,1,1,1),(2,'page',14,1,1,1),(2,'page',15,1,1,1),(2,'page',16,1,1,1),(2,'page',17,1,1,1),(2,'page',18,1,1,1),(2,'page',19,1,1,1),(2,'page',20,1,1,1),(2,'page',21,1,1,1),(2,'page',22,1,1,1),(2,'page',23,1,1,1),(2,'page',24,1,1,1),(2,'page',25,1,1,1),(2,'page',26,1,1,1),(2,'page',27,1,1,1),(2,'page',28,1,1,3),(2,'page',29,1,1,1),(2,'page',30,1,1,1),(2,'page',31,1,1,3),(3,'book',1,1,1,1),(3,'book',2,1,1,1),(3,'book',3,1,1,1),(3,'book',4,1,1,1),(3,'book',5,1,1,1),(3,'book',6,1,1,1),(3,'bookshelf',1,1,1,1),(3,'bookshelf',2,1,1,1),(3,'chapter',1,1,1,1),(3,'chapter',2,1,1,1),(3,'chapter',3,1,1,1),(3,'chapter',4,1,1,1),(3,'chapter',5,1,1,1),(3,'chapter',6,1,1,1),(3,'chapter',7,1,1,1),(3,'chapter',8,1,1,1),(3,'chapter',9,1,1,1),(3,'chapter',10,1,1,1),(3,'chapter',11,1,1,1),(3,'chapter',12,1,1,1),(3,'chapter',13,1,1,1),(3,'chapter',14,1,1,1),(3,'page',1,1,1,1),(3,'page',2,1,1,1),(3,'page',3,1,1,1),(3,'page',4,1,1,1),(3,'page',5,1,1,1),(3,'page',6,1,1,1),(3,'page',7,1,1,1),(3,'page',8,1,1,1),(3,'page',9,1,1,1),(3,'page',10,1,1,1),(3,'page',11,1,1,1),(3,'page',12,1,1,1),(3,'page',13,1,1,1),(3,'page',14,1,1,1),(3,'page',15,1,1,1),(3,'page',16,1,1,1),(3,'page',17,1,1,1),(3,'page',18,1,1,1),(3,'page',19,1,1,1),(3,'page',20,1,1,1),(3,'page',21,1,1,1),(3,'page',22,1,1,1),(3,'page',23,1,1,1),(3,'page',24,1,1,1),(3,'page',25,1,1,1),(3,'page',26,1,1,1),(3,'page',27,1,1,1),(3,'page',28,1,1,3),(3,'page',29,1,1,1),(3,'page',30,1,1,1),(3,'page',31,1,1,3),(4,'book',1,1,1,1),(4,'book',2,1,1,1),(4,'book',3,1,1,1),(4,'book',4,1,1,1),(4,'book',5,1,1,1),(4,'book',6,1,1,1),(4,'bookshelf',1,1,1,1),(4,'bookshelf',2,1,1,1),(4,'chapter',1,1,1,1),(4,'chapter',2,1,1,1),(4,'chapter',3,1,1,1),(4,'chapter',4,1,1,1),(4,'chapter',5,1,1,1),(4,'chapter',6,1,1,1),(4,'chapter',7,1,1,1),(4,'chapter',8,1,1,1),(4,'chapter',9,1,1,1),(4,'chapter',10,1,1,1),(4,'chapter',11,1,1,1),(4,'chapter',12,1,1,1),(4,'chapter',13,1,1,1),(4,'chapter',14,1,1,1),(4,'page',1,1,1,1),(4,'page',2,1,1,1),(4,'page',3,1,1,1),(4,'page',4,1,1,1),(4,'page',5,1,1,1),(4,'page',6,1,1,1),(4,'page',7,1,1,1),(4,'page',8,1,1,1),(4,'page',9,1,1,1),(4,'page',10,1,1,1),(4,'page',11,1,1,1),(4,'page',12,1,1,1),(4,'page',13,1,1,1),(4,'page',14,1,1,1),(4,'page',15,1,1,1),(4,'page',16,1,1,1),(4,'page',17,1,1,1),(4,'page',18,1,1,1),(4,'page',19,1,1,1),(4,'page',20,1,1,1),(4,'page',21,1,1,1),(4,'page',22,1,1,1),(4,'page',23,1,1,1),(4,'page',24,1,1,1),(4,'page',25,1,1,1),(4,'page',26,1,1,1),(4,'page',27,0,0,1),(4,'page',28,1,1,3),(4,'page',29,1,1,1),(4,'page',30,1,1,1),(4,'page',31,1,1,3);
/*!40000 ALTER TABLE `joint_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mfa_values`
--

DROP TABLE IF EXISTS `mfa_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mfa_values` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `method` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mfa_values_user_id_index` (`user_id`),
  KEY `mfa_values_method_index` (`method`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mfa_values`
--

LOCK TABLES `mfa_values` WRITE;
/*!40000 ALTER TABLE `mfa_values` DISABLE KEYS */;
/*!40000 ALTER TABLE `mfa_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2015_07_12_114933_create_books_table',1),(4,'2015_07_12_190027_create_pages_table',1),(5,'2015_07_13_172121_create_images_table',1),(6,'2015_07_27_172342_create_chapters_table',1),(7,'2015_08_08_200447_add_users_to_entities',1),(8,'2015_08_09_093534_create_page_revisions_table',1),(9,'2015_08_16_142133_create_activities_table',1),(10,'2015_08_29_105422_add_roles_and_permissions',1),(11,'2015_08_30_125859_create_settings_table',1),(12,'2015_08_31_175240_add_search_indexes',1),(13,'2015_09_04_165821_create_social_accounts_table',1),(14,'2015_09_05_164707_add_email_confirmation_table',1),(15,'2015_11_21_145609_create_views_table',1),(16,'2015_11_26_221857_add_entity_indexes',1),(17,'2015_12_05_145049_fulltext_weighting',1),(18,'2015_12_07_195238_add_image_upload_types',1),(19,'2015_12_09_195748_add_user_avatars',1),(20,'2016_01_11_210908_add_external_auth_to_users',1),(21,'2016_02_25_184030_add_slug_to_revisions',1),(22,'2016_02_27_120329_update_permissions_and_roles',1),(23,'2016_02_28_084200_add_entity_access_controls',1),(24,'2016_03_09_203143_add_page_revision_types',1),(25,'2016_03_13_082138_add_page_drafts',1),(26,'2016_03_25_123157_add_markdown_support',1),(27,'2016_04_09_100730_add_view_permissions_to_roles',1),(28,'2016_04_20_192649_create_joint_permissions_table',1),(29,'2016_05_06_185215_create_tags_table',1),(30,'2016_07_07_181521_add_summary_to_page_revisions',1),(31,'2016_09_29_101449_remove_hidden_roles',1),(32,'2016_10_09_142037_create_attachments_table',1),(33,'2017_01_21_163556_create_cache_table',1),(34,'2017_01_21_163602_create_sessions_table',1),(35,'2017_03_19_091553_create_search_index_table',1),(36,'2017_04_20_185112_add_revision_counts',1),(37,'2017_07_02_152834_update_db_encoding_to_ut8mb4',1),(38,'2017_08_01_130541_create_comments_table',1),(39,'2017_08_29_102650_add_cover_image_display',1),(40,'2018_07_15_173514_add_role_external_auth_id',1),(41,'2018_08_04_115700_create_bookshelves_table',1),(42,'2019_07_07_112515_add_template_support',1),(43,'2019_08_17_140214_add_user_invites_table',1),(44,'2019_12_29_120917_add_api_auth',1),(45,'2020_08_04_111754_drop_joint_permissions_id',1),(46,'2020_08_04_131052_remove_role_name_field',1),(47,'2020_09_19_094251_add_activity_indexes',1),(48,'2020_09_27_210059_add_entity_soft_deletes',1),(49,'2020_09_27_210528_create_deletions_table',1),(50,'2020_11_07_232321_simplify_activities_table',1),(51,'2020_12_30_173528_add_owned_by_field_to_entities',1),(52,'2021_01_30_225441_add_settings_type_column',1),(53,'2021_03_08_215138_add_user_slug',1),(54,'2021_05_15_173110_create_favourites_table',1),(55,'2021_06_30_173111_create_mfa_values_table',1),(56,'2021_07_03_085038_add_mfa_enforced_to_roles_table',1),(57,'2021_08_28_161743_add_export_role_permission',1),(58,'2021_09_26_044614_add_activities_ip_column',1),(59,'2021_11_26_070438_add_index_for_user_ip',1),(60,'2021_12_07_111343_create_webhooks_table',1),(61,'2021_12_13_152024_create_jobs_table',1),(62,'2021_12_13_152120_create_failed_jobs_table',1),(63,'2022_01_03_154041_add_webhooks_timeout_error_columns',1),(64,'2022_04_17_101741_add_editor_change_field_and_permission',1),(65,'2022_04_25_140741_update_polymorphic_types',1),(66,'2022_07_16_170051_drop_joint_permission_type',1),(67,'2022_08_17_092941_create_references_table',1),(68,'2022_09_02_082910_fix_shelf_cover_image_types',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `page_revisions`
--

DROP TABLE IF EXISTS `page_revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `page_revisions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `page_id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `html` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `book_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'version',
  `markdown` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revision_number` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `page_revisions_page_id_index` (`page_id`),
  KEY `page_revisions_slug_index` (`slug`),
  KEY `page_revisions_book_slug_index` (`book_slug`),
  KEY `page_revisions_type_index` (`type`),
  KEY `page_revisions_revision_number_index` (`revision_number`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `page_revisions`
--

LOCK TABLES `page_revisions` WRITE;
/*!40000 ALTER TABLE `page_revisions` DISABLE KEYS */;
INSERT INTO `page_revisions` VALUES (1,1,'t1','<p id=\"bkmrk-fdf\">fdf</p>','fdf',1,'2022-09-24 10:48:42','2022-09-24 10:48:42','t1','image-stitching','version','','Initial publish',1),(2,2,'Image Stitching','<p id=\"bkmrk-incoming-images-will\"><span id=\"bkmrk-incoming-images-will-0\" style=\"font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Incoming images will be cleaned prior to input. STS will stitch the images together into layers.</span></p>','Incoming images will be cleaned prior to input. STS will stitch the images together into layers.',1,'2022-09-24 10:52:53','2022-09-24 10:52:53','image-stitching','image-stitching','version','','Initial publish',1),(3,3,'What is STS','<p id=\"bkmrk-the-braingenix-scan-\" dir=\"ltr\" style=\"line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">The BrainGenix Scan Translation System (STS) is intended to automate the process from whole brain electron microscopy (EM) images to the program of an individual ready to run on the NES/ERS system.&nbsp;</span></p>\r\n<p id=\"bkmrk-\"><br></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;\" id=\"bkmrk-%C2%A0\">&nbsp;</p>','The BrainGenix Scan Translation System (STS) is intended to automate the process from whole brain electron microscopy (EM) images to the program of an individual ready to run on the NES/ERS system. \r\n\r\n ',1,'2022-09-24 11:12:59','2022-09-24 11:12:59','what-is-sts','sts-overview','version','','Initial publish',1),(4,4,'Theoretical workflow','<p id=\"bkmrk-theoretical-workflow\" dir=\"ltr\" style=\"line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Theoretical workflow:&nbsp;</span></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;\" id=\"bkmrk-scans-%3Eimage-cleanin\"><span style=\"font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Scans-&gt;Image cleaning-&gt;segmentation-&gt;extraction of key parameters (ie, structure-function relationships) for individual emulation-&gt;incorporate individual parameters into/onto a generic human brain model-&gt;validation-&gt;upload to NES</span></p>','Theoretical workflow: \r\nScans->Image cleaning->segmentation->extraction of key parameters (ie, structure-function relationships) for individual emulation->incorporate individual parameters into/onto a generic human brain model->validation->upload to NES',1,'2022-09-24 11:13:42','2022-09-24 11:13:42','theoretical-workflow','sts-overview','version','','Initial publish',1),(5,5,'Questions remaining','<p id=\"bkmrk-need-a-lot-of-storag\" dir=\"ltr\" style=\"line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Need a lot of storage, parallel processing, what do you need to combine models (ie, individual &amp; species)....</span></p>\r\n<p id=\"bkmrk-\"><br></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;\" id=\"bkmrk-process-will-depend-\"><span style=\"font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Process will depend on whether or not functional data is necessary. In other words, software may vary depending on whether or not deriving function from structure is actually feasible. If functional data is needed there will need to be a process that integrates this with structural data.</span></p>\r\n<p id=\"bkmrk--0\"><br></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;\" id=\"bkmrk-parts-list-from-em-s\"><span style=\"font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Parts list from em scans….second(or more?) database(s)</span></p>\r\n<ul style=\"margin-top: 0; margin-bottom: 0; padding-inline-start: 48px;\" id=\"bkmrk-how-does-parts-list-\">\r\n<li aria-level=\"1\">\r\n<p dir=\"ltr\" style=\"line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;\" role=\"presentation\"><span style=\"font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">How does parts list work? Don\'t all cells have different patterns of arborization? Different dendritic patterns?&nbsp;</span></p>\r\n</li>\r\n<ul style=\"margin-top: 0; margin-bottom: 0; padding-inline-start: 48px;\">\r\n<li aria-level=\"2\">\r\n<p dir=\"ltr\" style=\"line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;\" role=\"presentation\"><span style=\"font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Perhaps this is part of what makes the individual (ie, individual parameters includes dendrite patterning or number of certain cell types...their density&nbsp;</span></p>\r\n</li>\r\n</ul>\r\n</ul>\r\n<p id=\"bkmrk--1\"><br></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;\" id=\"bkmrk-review-software-orga\"><span style=\"font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Review software organization for software currently used to process EM images?</span></p>\r\n<p id=\"bkmrk--2\"><br></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;\" id=\"bkmrk-need-test-datasets-f\"><span style=\"font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Need test datasets for validation?</span></p>\r\n<p id=\"bkmrk-%C2%A0\">&nbsp;</p>','Need a lot of storage, parallel processing, what do you need to combine models (ie, individual & species)....\r\n\r\nProcess will depend on whether or not functional data is necessary. In other words, software may vary depending on whether or not deriving function from structure is actually feasible. If functional data is needed there will need to be a process that integrates this with structural data.\r\n\r\nParts list from em scans….second(or more?) database(s)\r\n\r\n\r\nHow does parts list work? Don\'t all cells have different patterns of arborization? Different dendritic patterns? \r\n\r\n\r\n\r\nPerhaps this is part of what makes the individual (ie, individual parameters includes dendrite patterning or number of certain cell types...their density \r\n\r\n\r\n\r\n\r\nReview software organization for software currently used to process EM images?\r\n\r\nNeed test datasets for validation?\r\n ',1,'2022-09-24 11:16:25','2022-09-24 11:16:25','questions-remaining','sts-overview','version','','Initial publish',1),(6,6,'1.1 Model Data Input','<p id=\"bkmrk-sts-will-receive-inp\">STS will receive input from the input image database, so the images are already stitched and post-processed. STS may also receive functional data input, if some necessary brain functional data cannot be extracted from the structural data. STS will also take in data from the to-be-developed generic working model of a human brain. Any other additional validation data may be necessary as well.</p>\n','STS will receive input from the input image database, so the images are already stitched and post-processed. STS may also receive functional data input, if some necessary brain functional data cannot be extracted from the structural data. STS will also take in data from the to-be-developed generic working model of a human brain. Any other additional validation data may be necessary as well.\n',1,'2022-09-24 11:23:18','2022-09-24 11:23:18','11-model-data-input','sts-overview','version','STS will receive input from the input image database, so the images are already stitched and post-processed. STS may also receive functional data input, if some necessary brain functional data cannot be extracted from the structural data. STS will also take in data from the to-be-developed generic working model of a human brain. Any other additional validation data may be necessary as well.','Initial publish',1),(7,6,'1.1 Model Data Input','<p id=\"bkmrk-sts-will-receive-inp\" dir=\"ltr\" style=\"line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">STS will receive input from the input image database, so the images are already stitched and post-processed. STS may also receive functional data input, if some necessary brain functional data cannot be extracted from the structural data. STS will also take in data from the to-be-developed generic working model of a human brain. Any other additional validation data may be necessary as well.&nbsp;</span></p>','STS will receive input from the input image database, so the images are already stitched and post-processed. STS may also receive functional data input, if some necessary brain functional data cannot be extracted from the structural data. STS will also take in data from the to-be-developed generic working model of a human brain. Any other additional validation data may be necessary as well. ',1,'2022-09-24 11:24:23','2022-09-24 11:24:23','11-model-data-input','sts-overview','version','','',2),(8,7,'1.2 Image stitching pipeline','<p id=\"bkmrk-incoming-images-will\"><span id=\"bkmrk-incoming-images-will-0\" style=\"font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Incoming images will be cleaned prior to input. STS will stitch the images together into layers. </span></p>','Incoming images will be cleaned prior to input. STS will stitch the images together into layers. ',1,'2022-09-24 11:25:35','2022-09-24 11:25:35','12-image-stitching-pipeline','sts-overview','version','','Initial publish',1),(9,8,'1.2 3D reconstruction pipeline','<p id=\"bkmrk-using-the-incoming-m\"><span id=\"bkmrk-using-the-incoming-m-0\" style=\"font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Using the incoming microscopy data, STS will convert these image layers to a 3D model using machine learning.</span></p>','Using the incoming microscopy data, STS will convert these image layers to a 3D model using machine learning.',1,'2022-09-24 11:26:52','2022-09-24 11:26:52','12-3d-reconstruction-pipeline','sts-overview','version','','Initial publish',1),(10,8,'1.3 3D reconstruction pipeline','<p id=\"bkmrk-using-the-incoming-m\"><span id=\"bkmrk-using-the-incoming-m-0\" style=\"font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Using the incoming microscopy data, STS will convert these image layers to a 3D model using machine learning.</span></p>','Using the incoming microscopy data, STS will convert these image layers to a 3D model using machine learning.',1,'2022-09-24 11:28:10','2022-09-24 11:28:10','13-3d-reconstruction-pipeline','sts-overview','version','','',2),(11,9,'1.4 Structure-to-function pipeline','<p id=\"bkmrk-the-input-of-this-pi\"><span id=\"bkmrk-the-input-of-this-pi-0\" style=\"font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">The input of this pipeline will be the fully labelled and segmented 3D reconstruction. Here, any necessary (additional) functional data from the structure of the brain will be extracted using to-be-developed algorithms.</span></p>','The input of this pipeline will be the fully labelled and segmented 3D reconstruction. Here, any necessary (additional) functional data from the structure of the brain will be extracted using to-be-developed algorithms.',1,'2022-09-24 11:28:52','2022-09-24 11:28:52','14-structure-to-function-pipeline','sts-overview','version','','Initial publish',1),(12,10,'1.5 Individual parameter application pipeline','<p id=\"bkmrk-this-structural-and-\"><span id=\"bkmrk-this-structural-and--0\" style=\"font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">This structural and functional data collected in points 1.2 and 1.3 will now be integrated into a generic working model of the human brain to make the working model a particular individual. </span></p>','This structural and functional data collected in points 1.2 and 1.3 will now be integrated into a generic working model of the human brain to make the working model a particular individual. ',1,'2022-09-24 11:29:26','2022-09-24 11:29:26','15-individual-parameter-application-pipeline','sts-overview','version','','Initial publish',1),(13,11,'1.6 Validation pipeline','<p id=\"bkmrk-validation-tests-wil\"><span id=\"bkmrk-validation-tests-wil-0\" style=\"font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Validation tests will be performed iteratively to ensure the behavioral and functional output of the model is accurate. </span></p>','Validation tests will be performed iteratively to ensure the behavioral and functional output of the model is accurate. ',1,'2022-09-24 11:29:59','2022-09-24 11:29:59','16-validation-pipeline','sts-overview','version','','Initial publish',1),(14,12,'1.7 Individual model interfaced with BrainGenix::NES','<p id=\"bkmrk-the-sts-model-will-b\">The STS model will be standardized in such a way that it can be interfaced to the NES model</p>','The STS model will be standardized in such a way that it can be interfaced to the NES model',1,'2022-09-24 11:32:00','2022-09-24 11:32:00','17-individual-model-interfaced-with-braingenixnes','sts-overview','version','','Initial publish',1),(15,13,'The image pipeline','<p id=\"bkmrk-firstly%2C-features-ar\" dir=\"ltr\" style=\"line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Firstly, features are identified within the images to be stitched. Features are then matched against other feature maps to identify overlapping features. This allows the images to be aligned with a high degree of accuracy. Additionally, image position data assists in the image matching process if available.</span></p>\r\n<p id=\"bkmrk-\"><br></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;\" id=\"bkmrk-next%2C-the-image-over\"><span style=\"font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Next, the image overlay position information is recorded into a database table for future reference.</span></p>','Firstly, features are identified within the images to be stitched. Features are then matched against other feature maps to identify overlapping features. This allows the images to be aligned with a high degree of accuracy. Additionally, image position data assists in the image matching process if available.\r\n\r\nNext, the image overlay position information is recorded into a database table for future reference.',1,'2022-09-24 11:33:44','2022-09-24 11:33:44','the-image-pipeline','sts-overview','version','','Initial publish',1),(16,14,'Introduction','<p id=\"bkmrk-the-3d-reconstructio\"><span id=\"bkmrk-the-3d-reconstructio-0\" style=\"font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">The 3D reconstruction pipeline converts image stack data into a 3d structural model. This is the first step in the conversion process, as the structural parameters are extracted from the 3D model.</span></p>','The 3D reconstruction pipeline converts image stack data into a 3d structural model. This is the first step in the conversion process, as the structural parameters are extracted from the 3D model.',1,'2022-09-24 11:36:42','2022-09-24 11:36:42','introduction','sts-overview','version','','Initial publish',1),(17,15,'Pipelines','<p id=\"bkmrk-here-is-an-example-o\"><span id=\"bkmrk-here-is-an-example-o-0\" style=\"font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Here is an example of a pipeline that extracts structural and functional connectivity from MRI data, and the output can be used to simulate brain activity: </span><a style=\"text-decoration: none;\" href=\"https://www.sciencedirect.com/science/article/pii/S1053811915002505\"><span style=\"font-size: 11pt; font-family: Arial; color: #1155cc; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: underline; -webkit-text-decoration-skip: none; text-decoration-skip-ink: none; vertical-align: baseline; white-space: pre-wrap;\">https://www.sciencedirect.com/science/article/pii/S1053811915002505</span></a><span style=\"font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\"> </span></p>','Here is an example of a pipeline that extracts structural and functional connectivity from MRI data, and the output can be used to simulate brain activity: https://www.sciencedirect.com/science/article/pii/S1053811915002505 ',1,'2022-09-24 11:37:49','2022-09-24 11:37:49','pipelines','sts-overview','version','','Initial publish',1),(18,16,'why validation','<p id=\"bkmrk-sts-create-virtual-b\" dir=\"ltr\" style=\"line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">STS create virtual brain electron microscope scans for validation</span></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;\" id=\"bkmrk-at-the-end-of-the-tr\"><span style=\"font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">At the end of the translation process, calculate the error % and minimize this number</span></p>\r\n<p id=\"bkmrk-\"><br></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;\" id=\"bkmrk-from-virtual-brain-p\"><span style=\"font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">From virtual brain project, get process for inputting model and electrode properties, then get error percentage out based on simulated model with simulated electrode properties</span></p>\r\n<p id=\"bkmrk--0\"><br></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;\" id=\"bkmrk-then-iteratively-min\"><span style=\"font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Then iteratively minimize error percentage using predefined rules on model until error percentage is less than n %</span></p>','STS create virtual brain electron microscope scans for validation\r\nAt the end of the translation process, calculate the error % and minimize this number\r\n\r\nFrom virtual brain project, get process for inputting model and electrode properties, then get error percentage out based on simulated model with simulated electrode properties\r\n\r\nThen iteratively minimize error percentage using predefined rules on model until error percentage is less than n %',1,'2022-09-24 11:39:28','2022-09-24 11:39:28','why-validation','sts-overview','version','','Initial publish',1),(19,17,'storing the information','<p id=\"bkmrk-in-order-to-store-th\"><span id=\"bkmrk-in-order-to-store-th-0\" style=\"font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">In order to store the model and input information, a database should be used due to the scalability and flexibility of modern database systems.</span></p>','In order to store the model and input information, a database should be used due to the scalability and flexibility of modern database systems.',1,'2022-09-24 11:40:51','2022-09-24 11:40:51','storing-the-information','sts-overview','version','','Initial publish',1),(20,18,'Getting access to Carboncopies email','<h3 id=\"bkmrk-access-to-carboncopi\">Access to CarbonCopies mail</h3>\r\n<ol id=\"bkmrk-ask-the-project-lead\">\r\n<li class=\"null\">Ask the project lead to submit an ticket to IT.</li>\r\n<li class=\"null\">Once access provided enable 2 factor authentication.</li>\r\n</ol>\r\n<h4 id=\"bkmrk-%C2%A0\">&nbsp;</h4>','Access to CarbonCopies mail\r\n\r\nAsk the project lead to submit an ticket to IT.\r\nOnce access provided enable 2 factor authentication.\r\n\r\n ',1,'2022-09-24 11:53:10','2022-09-24 11:53:10','getting-access-to-carboncopies-email','training','version','','Initial publish',1),(21,19,'Access to Bookstacks','<h5 id=\"bkmrk-book-stacks-access%3A\">Book stacks Access:</h5>\r\n<h5 id=\"bkmrk-information-to-send-\">Information to send to IT</h5>\r\n<ol id=\"bkmrk-%C2%A0specify-the-project\">\r\n<li class=\"null\">&nbsp;Specify the project team</li>\r\n<li class=\"null\">&nbsp;Specify the books which you need access&nbsp;\r\n<ol>\r\n<li class=\"null\">STS project Group / Image Stitching.</li>\r\n<li class=\"null\">General Training .</li>\r\n<li class=\"null\">Logging information .</li>\r\n</ol>\r\n</li>\r\n<li class=\"null\">&nbsp;Specify access end date if needed.</li>\r\n<li class=\"null\">&nbsp;send the email to IT@carboncopies.org</li>\r\n</ol>','Book stacks Access:\r\nInformation to send to IT\r\n\r\n Specify the project team\r\n Specify the books which you need access \r\n\r\nSTS project Group / Image Stitching.\r\nGeneral Training .\r\nLogging information .\r\n\r\n\r\n Specify access end date if needed.\r\n send the email to IT@carboncopies.org\r\n',1,'2022-09-24 12:03:59','2022-09-24 12:03:59','access-to-bookstacks','training','version','','Initial publish',1),(22,20,'Access to Carboncopies Gitlab account','<h3 id=\"bkmrk-steps-to-get-gitlab-\">Steps to get Gitlab access</h3>\r\n<h4 id=\"bkmrk-1.-have-your-carbon-\">1. have your carbon copies email set up.</h4>\r\n<h4 id=\"bkmrk-2.-send-following-in\">2. Send following information to Git lab admin</h4>\r\n<ol id=\"bkmrk-%C2%A0groups-%2F-project-in\">\r\n<li class=\"null\">&nbsp;groups / project information.</li>\r\n<li class=\"null\">project lead info.</li>\r\n<li class=\"null\">access termination date.</li>\r\n</ol>\r\n<p id=\"bkmrk-%C2%A0\">&nbsp;</p>\r\n<p id=\"bkmrk-%C2%A0-0\">&nbsp;</p>','Steps to get Gitlab access\r\n1. have your carbon copies email set up.\r\n2. Send following information to Git lab admin\r\n\r\n groups / project information.\r\nproject lead info.\r\naccess termination date.\r\n\r\n \r\n ',1,'2022-09-24 12:11:04','2022-09-24 12:11:04','access-to-carboncopies-gitlab-account','training','version','','Initial publish',1),(23,21,'Meeting invitations','<h3 id=\"bkmrk-invitations-to-meeti\">Invitations to meetings</h3>\r\n<h4 id=\"bkmrk-all-hands%3A\">All Hands:</h4>\r\n<p id=\"bkmrk-to-get-access-to-all\">To get access to All hands send email to <a href=\"mailto:Allhands@carboncopies\">Allhands@carboncopies.org</a></p>\r\n<h4 id=\"bkmrk-braingenix%3A\">Braingenix:</h4>\r\n<p id=\"bkmrk-to-get-access-to-bra\">To get access to Braingenix meetings access&nbsp; send email to <a href=\"mailto:Director@Carboncopies.org\">Director@Carboncopies.org</a></p>\r\n<h4 id=\"bkmrk-sts%3A\">STS:</h4>\r\n<p id=\"bkmrk-to-get-access-to-sts\">To get access to sts meetups send emails to jjose@carboncopies.org</p>','Invitations to meetings\r\nAll Hands:\r\nTo get access to All hands send email to Allhands@carboncopies.org\r\nBraingenix:\r\nTo get access to Braingenix meetings access  send email to Director@Carboncopies.org\r\nSTS:\r\nTo get access to sts meetups send emails to jjose@carboncopies.org',1,'2022-09-24 12:17:05','2022-09-24 12:17:05','meeting-invitations','training','version','','Initial publish',1),(24,22,'Module identification','<h4 id=\"bkmrk-research-modules\">Research modules</h4>\r\n<p id=\"bkmrk-go-through-all-modul\">go through all modules and try to read and crate a summary of the task you are interested in.</p>','Research modules\r\ngo through all modules and try to read and crate a summary of the task you are interested in.',1,'2022-09-24 12:19:20','2022-09-24 12:19:20','module-identification','training','version','','Initial publish',1),(25,23,'Mentor Assignment','<h3 id=\"bkmrk-getting-a-mentor%3A\">Getting a mentor:</h3>\r\n<p id=\"bkmrk-getting-a-mentor-is-\">getting a mentor is needed to help you with the tasks can help you ramp up.<br></p>\r\n<p id=\"bkmrk-ask-your-lead-to-get\">Ask your lead to get an mentor assigned to you</p>\r\n<p id=\"bkmrk-try-to-get-an-1%3A1-se\">Try to get an 1:1 session in a month</p>','Getting a mentor:\r\ngetting a mentor is needed to help you with the tasks can help you ramp up.\r\nAsk your lead to get an mentor assigned to you\r\nTry to get an 1:1 session in a month',1,'2022-09-24 12:24:24','2022-09-24 12:24:24','mentor-assignment','training','version','','Initial publish',1),(26,24,'Progress Updates','<h4 id=\"bkmrk-email-updates%3A\">Email updates:</h4>\r\n<p id=\"bkmrk-email-updates-weekly\">Email updates weekly to your lead would be really helpful to keep track of progress in the organistaion</p>','Email updates:\r\nEmail updates weekly to your lead would be really helpful to keep track of progress in the organistaion',1,'2022-09-24 12:26:25','2022-09-24 12:26:25','progress-updates','training','version','','Initial publish',1),(28,2,'Image Stitching','<p id=\"bkmrk-incoming-images-will\"><span id=\"bkmrk-incoming-images-will-0\" style=\"font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Incoming images will be cleaned prior to input. STS will stitch the images together into layers.</span></p>\r\n<p id=\"bkmrk-%C2%A0\">&nbsp;</p>\r\n<h2 id=\"bkmrk-tool-used%3A\"><span style=\"font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Tool Used:</span></h2>\r\n<p id=\"bkmrk-we-are-using-imagej-\"><span style=\"font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">we are using ImageJ Tool for doing the image stitching.</span></p>\r\n<p id=\"bkmrk-the-fiji-is-the-vers\"><span style=\"font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">The Fiji is the version of the ImageJ we are using.</span></p>','Incoming images will be cleaned prior to input. STS will stitch the images together into layers.\r\n \r\nTool Used:\r\nwe are using ImageJ Tool for doing the image stitching.\r\nThe Fiji is the version of the ImageJ we are using.',1,'2022-09-24 21:36:31','2022-09-24 21:36:31','image-stitching','image-stitching','version','','',2),(29,25,'ImageJ','<p id=\"bkmrk-imagej-is-a-java-bas\"><strong>ImageJ</strong> is a <a title=\"Java (programming language)\" href=\"https://en.wikipedia.org/wiki/Java_(programming_language)\">Java</a>-based <a class=\"mw-redirect\" title=\"Image processing\" href=\"https://en.wikipedia.org/wiki/Image_processing\">image processing</a> program developed at the <a title=\"National Institutes of Health\" href=\"https://en.wikipedia.org/wiki/National_Institutes_of_Health\">National Institutes of Health</a> and the Laboratory for Optical and Computational Instrumentation (LOCI, University of Wisconsin).<sup id=\"bkmrk-%5B3%5D\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/ImageJ#cite_note-3\">[3]</a></sup><sup id=\"bkmrk-%5B4%5D\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/ImageJ#cite_note-4\">[4]</a></sup> Its first version, ImageJ 1.x, is developed in the <a title=\"Public domain\" href=\"https://en.wikipedia.org/wiki/Public_domain\">public domain</a>, while ImageJ2 and the related projects <a class=\"new\" title=\"SciJava (page does not exist)\" href=\"https://en.wikipedia.org/w/index.php?title=SciJava&amp;action=edit&amp;redlink=1\">SciJava</a>, <a class=\"new\" title=\"ImgLib2 (page does not exist)\" href=\"https://en.wikipedia.org/w/index.php?title=ImgLib2&amp;action=edit&amp;redlink=1\">ImgLib2</a>, and <a class=\"new\" title=\"SCIFIO (page does not exist)\" href=\"https://en.wikipedia.org/w/index.php?title=SCIFIO&amp;action=edit&amp;redlink=1\">SCIFIO</a> are licensed with a permissive <a title=\"BSD licenses\" href=\"https://en.wikipedia.org/wiki/BSD_licenses\">BSD-2 license</a>.<sup id=\"bkmrk-%5B5%5D\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/ImageJ#cite_note-5\">[5]</a></sup> ImageJ was designed with an <a title=\"Open architecture\" href=\"https://en.wikipedia.org/wiki/Open_architecture\">open architecture</a> that provides <a title=\"Extensibility\" href=\"https://en.wikipedia.org/wiki/Extensibility\">extensibility</a> via Java <a title=\"Plug-in (computing)\" href=\"https://en.wikipedia.org/wiki/Plug-in_(computing)\">plugins</a> and recordable macros.<sup id=\"bkmrk-%5B6%5D\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/ImageJ#cite_note-6\">[6]</a></sup> Custom acquisition, analysis and processing plugins can be developed using ImageJ\'s built-in editor and a Java compiler. User-written plugins make it possible to solve many image processing and analysis problems, from three-dimensional live-cell imaging<sup id=\"bkmrk-%5B7%5D\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/ImageJ#cite_note-7\">[7]</a></sup> to <a title=\"Radiology\" href=\"https://en.wikipedia.org/wiki/Radiology\">radiological</a> image processing,<sup id=\"bkmrk-%5B8%5D\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/ImageJ#cite_note-8\">[8]</a></sup> multiple imaging system data comparisons<sup id=\"bkmrk-%5B9%5D\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/ImageJ#cite_note-9\">[9]</a></sup> to automated <a title=\"Hematology\" href=\"https://en.wikipedia.org/wiki/Hematology\">hematology</a> systems.<sup id=\"bkmrk-%5B10%5D\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/ImageJ#cite_note-10\">[10]</a></sup> ImageJ\'s plugin architecture and built-in development environment has made it a popular platform for teaching image processing.<sup id=\"bkmrk-%5B11%5D\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/ImageJ#cite_note-11\">[11]</a></sup><sup id=\"bkmrk-%5B12%5D\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/ImageJ#cite_note-12\">[12]</a></sup></p>','ImageJ is a Java-based image processing program developed at the National Institutes of Health and the Laboratory for Optical and Computational Instrumentation (LOCI, University of Wisconsin).[3][4] Its first version, ImageJ 1.x, is developed in the public domain, while ImageJ2 and the related projects SciJava, ImgLib2, and SCIFIO are licensed with a permissive BSD-2 license.[5] ImageJ was designed with an open architecture that provides extensibility via Java plugins and recordable macros.[6] Custom acquisition, analysis and processing plugins can be developed using ImageJ\'s built-in editor and a Java compiler. User-written plugins make it possible to solve many image processing and analysis problems, from three-dimensional live-cell imaging[7] to radiological image processing,[8] multiple imaging system data comparisons[9] to automated hematology systems.[10] ImageJ\'s plugin architecture and built-in development environment has made it a popular platform for teaching image processing.[11][12]',1,'2022-09-24 21:39:13','2022-09-24 21:39:13','imagej','image-stitching','version','','Initial publish',1),(30,26,'Fiji','<p id=\"bkmrk-fiji-%28fiji-is-just-i\">Fiji (Fiji Is Just ImageJ) is an open source image processing package based on ImageJ2.</p>\r\n<p id=\"bkmrk-the-main-purpose-of-\">The main purpose of Fiji is to provide a distribution of ImageJ2 bundled with many plugins. Fiji has an integrated update system that gives users a consistent menu structure, comprehensive documentation in the form of detailed algorithm descriptions and tutorials, and the ability to avoid having to install multiple components from various sources. It is intended to provide to</p>\r\n<p id=\"bkmrk-fiji-also-uses-rapid\">Fiji also uses rapid prototyping infrastructure in the form of version control systems, issue trackers, dedicated development channels, and script editors that support scripts such as BeanShell, Jython, JRuby, Clojure, Groovy, JavaScript, etc. It corresponds to the person. Languages ​​and just-in-time Java development.</p>','Fiji (Fiji Is Just ImageJ) is an open source image processing package based on ImageJ2.\r\nThe main purpose of Fiji is to provide a distribution of ImageJ2 bundled with many plugins. Fiji has an integrated update system that gives users a consistent menu structure, comprehensive documentation in the form of detailed algorithm descriptions and tutorials, and the ability to avoid having to install multiple components from various sources. It is intended to provide to\r\nFiji also uses rapid prototyping infrastructure in the form of version control systems, issue trackers, dedicated development channels, and script editors that support scripts such as BeanShell, Jython, JRuby, Clojure, Groovy, JavaScript, etc. It corresponds to the person. Languages ​​and just-in-time Java development.',1,'2022-09-24 21:47:49','2022-09-24 21:47:49','fiji','image-stitching','version','','Initial publish',1),(31,27,'Fiji Installation','<h2 id=\"bkmrk-download%3A\"><span style=\"text-decoration: underline;\">Download:</span></h2>\r\n<p id=\"bkmrk-download-the-fiji-so\">Download the fiji software package from the link below:<br></p>\r\n<h4 id=\"bkmrk-website%3A\">Website:</h4>\r\n<p id=\"bkmrk-https%3A%2F%2Ffiji.sc%2F\">https://fiji.sc/</p>\r\n<h5 id=\"bkmrk-direct-link\">Direct link</h5>\r\n<p id=\"bkmrk-https%3A%2F%2Fdownloads.im\"><a href=\"https://downloads.imagej.net/fiji/latest/fiji-linux64.zip\">https://downloads.imagej.net/fiji/latest/fiji-linux64.zip</a></p>\r\n<h3 id=\"bkmrk-extract-and-installa\"><span style=\"text-decoration: underline;\"><span style=\"color: rgb(0, 0, 0); text-decoration: underline;\">Extract and Installation:</span></span></h3>\r\n<p id=\"bkmrk-go-to-the-extracted-\"><span style=\"color: rgb(0, 0, 0);\">Go to the extracted folder and run ImageJ-64 for first time.<br></span></p>\r\n<p id=\"bkmrk-%C2%A0\">&nbsp;</p>\r\n<p id=\"bkmrk-\"><a href=\"http://192.168.85.128/uploads/images/gallery/2022-09/image.png\" target=\"_blank\" rel=\"noopener\"><img src=\"http://192.168.85.128/uploads/images/gallery/2022-09/scaled-1680-/image.png\" alt=\"image.png\"></a></p>\r\n<p id=\"bkmrk-this-has-to-be-done-\">This has to be done first time. You could update it first time. A restart maybe needed.</p>\r\n<p id=\"bkmrk-%C2%A0-0\">&nbsp;</p>','Download:\r\nDownload the fiji software package from the link below:\r\nWebsite:\r\nhttps://fiji.sc/\r\nDirect link\r\nhttps://downloads.imagej.net/fiji/latest/fiji-linux64.zip\r\nExtract and Installation:\r\nGo to the extracted folder and run ImageJ-64 for first time.\r\n \r\n\r\nThis has to be done first time. You could update it first time. A restart maybe needed.\r\n ',1,'2022-09-24 22:09:42','2022-09-24 22:09:42','fiji-installation','image-stitching','version','','Initial publish',1),(33,27,'Fiji Installation','<h2 id=\"bkmrk-download%3A\"><span style=\"text-decoration: underline;\">Download:</span></h2>\r\n<p id=\"bkmrk-download-the-fiji-so\">Download the fiji software package from the link below:<br></p>\r\n<h4 id=\"bkmrk-website%3A\">Website:</h4>\r\n<p id=\"bkmrk-https%3A%2F%2Ffiji.sc%2F\">https://fiji.sc/</p>\r\n<h5 id=\"bkmrk-direct-link\">Direct link</h5>\r\n<p id=\"bkmrk-https%3A%2F%2Fdownloads.im\"><a href=\"https://downloads.imagej.net/fiji/latest/fiji-linux64.zip\">https://downloads.imagej.net/fiji/latest/fiji-linux64.zip</a></p>\r\n<h3 id=\"bkmrk-extract-and-installa\"><span style=\"text-decoration: underline;\"><span style=\"color: rgb(0, 0, 0); text-decoration: underline;\">Extract and Installation:</span></span></h3>\r\n<p id=\"bkmrk-go-to-the-extracted-\"><span style=\"color: rgb(0, 0, 0);\">Go to the extracted folder and run ImageJ-64 for first time.<br></span></p>\r\n<p id=\"bkmrk-%C2%A0\"><br></p>\r\n<p id=\"bkmrk-\"><a href=\"http://192.168.85.128/uploads/images/gallery/2022-09/image.png\" target=\"_blank\" rel=\"noopener\"><img src=\"http://192.168.85.128/uploads/images/gallery/2022-09/scaled-1680-/image.png\" alt=\"image.png\"></a></p>\r\n<p id=\"bkmrk-this-has-to-be-done-\">This has to be done first time. You could update it first time. A restart maybe needed.</p>\r\n<p id=\"bkmrk-%C2%A0-0\">&nbsp;</p>\r\n<h3 id=\"bkmrk-running-fiji-applica\"><span style=\"text-decoration: underline;\">Running Fiji Application</span></h3>\r\n<p id=\"bkmrk-run-the-imagej-linux\">Run the ImageJ-linux64 tool . The Fiji Tool is&nbsp; tool is the one which&nbsp; is marked with the red marker</p>\r\n<p id=\"bkmrk--0\"><a href=\"http://192.168.85.128/uploads/images/gallery/2022-09/H0Cimage.png\" target=\"_blank\" rel=\"noopener\"><img src=\"http://192.168.85.128/uploads/images/gallery/2022-09/scaled-1680-/H0Cimage.png\" alt=\"image.png\"></a></p>\r\n<p id=\"bkmrk--1\"><br></p>','Download:\r\nDownload the fiji software package from the link below:\r\nWebsite:\r\nhttps://fiji.sc/\r\nDirect link\r\nhttps://downloads.imagej.net/fiji/latest/fiji-linux64.zip\r\nExtract and Installation:\r\nGo to the extracted folder and run ImageJ-64 for first time.\r\n\r\n\r\nThis has to be done first time. You could update it first time. A restart maybe needed.\r\n \r\nRunning Fiji Application\r\nRun the ImageJ-linux64 tool . The Fiji Tool is  tool is the one which  is marked with the red marker\r\n\r\n',1,'2022-09-24 22:14:24','2022-09-24 22:14:24','fiji-installation','image-stitching','version','','',2),(34,29,'Manuel stitching','<h4 id=\"bkmrk-introduction-to-manu\">Introduction to Manuel stitching</h4>\r\n<ol id=\"bkmrk-open-the-grid%2F-colle\">\r\n<li class=\"null\">open the Grid/ Collection stitching plugin from the plugin\'s list.\r\n<p><a href=\"http://192.168.85.128/uploads/images/gallery/2022-09/Wojimage.png\" target=\"_blank\" rel=\"noopener\"><img src=\"http://192.168.85.128/uploads/images/gallery/2022-09/scaled-1680-/Wojimage.png\" alt=\"image.png\"></a></p>\r\n</li>\r\n<li class=\"null\">\r\n</ol>','Introduction to Manuel stitching\r\n\r\nopen the Grid/ Collection stitching plugin from the plugin\'s list.\r\n\r\n\r\n\r\n',1,'2022-09-25 10:08:31','2022-09-25 10:08:31','manuel-stitching','image-stitching','version','','Initial publish',1),(36,29,'Manuel stitching','<h3 id=\"bkmrk-introduction-to-manu\"><span style=\"text-decoration: underline;\">Introduction to Manuel stitching</span></h3>\r\n<h4 id=\"bkmrk-accessing-sample-dat\"><span style=\"text-decoration: underline;\">Accessing Sample Datasets:</span></h4>\r\n<ol id=\"bkmrk-download-the-dataset\">\r\n<li class=\"null\">Download the datasets from CarbonCopies&nbsp; google drive location shared drive/BrainGenix/BrainGenix::sts/SampleImages/flyEm Dataset Sample/1/22\r\n<p><a href=\"http://192.168.85.128/uploads/images/gallery/2022-09/sh8image.png\" target=\"_blank\" rel=\"noopener\"><img src=\"http://192.168.85.128/uploads/images/gallery/2022-09/scaled-1680-/sh8image.png\" alt=\"image.png\"></a></p>\r\n</li>\r\n<li class=\"null\">Extract using archiving tool into the directory of your choice .</li>\r\n</ol>\r\n<h4 id=\"bkmrk-loading-images-and-s\"><span style=\"text-decoration: underline;\"><span style=\"color: rgb(0, 0, 0); text-decoration: underline;\">Loading images and Stitching </span></span></h4>\r\n<ol id=\"bkmrk-open-the-grid%2F-colle\">\r\n<li class=\"null\">open the Grid/ Collection stitching plugin from the plugin\'s list.\r\n<p><a href=\"http://192.168.85.128/uploads/images/gallery/2022-09/Wojimage.png\" target=\"_blank\" rel=\"noopener\"><img src=\"http://192.168.85.128/uploads/images/gallery/2022-09/scaled-1680-/Wojimage.png\" alt=\"image.png\"></a></p>\r\n</li>\r\n<li class=\"null\">&nbsp;now we select snake stitching model&nbsp;\r\n<p><a href=\"http://192.168.85.128/uploads/images/gallery/2022-09/ZnJimage.png\" target=\"_blank\" rel=\"noopener\"><img src=\"http://192.168.85.128/uploads/images/gallery/2022-09/scaled-1680-/ZnJimage.png\" alt=\"image.png\"></a></p>\r\n<br></li>\r\n<li class=\"null\">now we will be</li>\r\n</ol>','Introduction to Manuel stitching\r\nAccessing Sample Datasets:\r\n\r\nDownload the datasets from CarbonCopies  google drive location shared drive/BrainGenix/BrainGenix::sts/SampleImages/flyEm Dataset Sample/1/22\r\n\r\n\r\nExtract using archiving tool into the directory of your choice .\r\n\r\nLoading images and Stitching \r\n\r\nopen the Grid/ Collection stitching plugin from the plugin\'s list.\r\n\r\n\r\n now we select snake stitching model \r\n\r\n\r\nnow we will be\r\n',1,'2022-09-25 10:22:52','2022-09-25 10:22:52','manuel-stitching','image-stitching','version','','',2),(38,29,'Manuel stitching','<h3 id=\"bkmrk-introduction-to-manu\"><span style=\"text-decoration: underline;\">Introduction to Manuel stitching</span></h3>\r\n<h4 id=\"bkmrk-accessing-sample-dat\"><span style=\"text-decoration: underline;\">Accessing Sample Datasets:</span></h4>\r\n<ol id=\"bkmrk-download-the-dataset\">\r\n<li class=\"null\">Download the datasets from CarbonCopies&nbsp; google drive location shared drive/BrainGenix/BrainGenix::sts/SampleImages/flyEm Dataset Sample/1/22\r\n<p><a href=\"http://192.168.85.128/uploads/images/gallery/2022-09/sh8image.png\" target=\"_blank\" rel=\"noopener\"><img src=\"http://192.168.85.128/uploads/images/gallery/2022-09/scaled-1680-/sh8image.png\" alt=\"image.png\"></a></p>\r\n</li>\r\n<li class=\"null\">Extract using archiving tool into the directory of your choice .</li>\r\n</ol>\r\n<h4 id=\"bkmrk-loading-images-and-s\"><span style=\"text-decoration: underline;\"><span style=\"color: rgb(0, 0, 0); text-decoration: underline;\">Loading images and Stitching </span></span></h4>\r\n<ol id=\"bkmrk-open-the-grid%2F-colle\">\r\n<li class=\"null\">open the Grid/ Collection stitching plugin from the plugin\'s list.\r\n<p><a href=\"http://192.168.85.128/uploads/images/gallery/2022-09/Wojimage.png\" target=\"_blank\" rel=\"noopener\"><img src=\"http://192.168.85.128/uploads/images/gallery/2022-09/scaled-1680-/Wojimage.png\" alt=\"image.png\"></a></p>\r\n</li>\r\n<li class=\"null\">&nbsp;now we select snake stitching model&nbsp;\r\n<p><a href=\"http://192.168.85.128/uploads/images/gallery/2022-09/ZnJimage.png\" target=\"_blank\" rel=\"noopener\"><img src=\"http://192.168.85.128/uploads/images/gallery/2022-09/scaled-1680-/ZnJimage.png\" alt=\"image.png\"></a></p>\r\n<br></li>\r\n<li class=\"null\">now we will be Specifying the starting file info and the file format. The default parameters are used as they seem to work fine with the current dateset.&nbsp; Specify the datasets location. we can see that the grid information is the the estimate how the tile structure &nbsp;will be like . here it is an 1 dimensional tile structure . we know that the x axis is 43 and long the y axis it is just 1 tile.\r\n<p><a href=\"http://192.168.85.128/uploads/images/gallery/2022-09/UyUimage.png\" target=\"_blank\" rel=\"noopener\"><img src=\"http://192.168.85.128/uploads/images/gallery/2022-09/scaled-1680-/UyUimage.png\" alt=\"image.png\"></a></p>\r\n<p>&nbsp;</p>\r\n<p>we will be just fusing and displaying the result not storing it.&nbsp;</p>\r\n</li>\r\n<li class=\"null\">&nbsp;we can see there is no overlap if that\'s the case we can do a fast fusion.\r\n<p><a href=\"http://192.168.85.128/uploads/images/gallery/2022-09/STgimage.png\" target=\"_blank\" rel=\"noopener\"><img src=\"http://192.168.85.128/uploads/images/gallery/2022-09/scaled-1680-/STgimage.png\" alt=\"image.png\"></a><br></p>\r\n</li>\r\n<li class=\"null\">The final fused image for a lateral slice.we can notice from the file size and resolution information we know stitching we can see the stitching has happened.\r\n<p><a href=\"http://192.168.85.128/uploads/images/gallery/2022-09/Jk2image.png\" target=\"_blank\" rel=\"noopener\"><img src=\"http://192.168.85.128/uploads/images/gallery/2022-09/scaled-1680-/Jk2image.png\" alt=\"image.png\"></a></p>\r\n</li>\r\n</ol>\r\n<p id=\"bkmrk-%C2%A0\">&nbsp;</p>\r\n<p id=\"bkmrk-references%3A\">References:</p>\r\n<p id=\"bkmrk-1.https%3A%2F%2Fimagej.net\">1.https://imagej.net/plugins/image-stitching</p>','Introduction to Manuel stitching\r\nAccessing Sample Datasets:\r\n\r\nDownload the datasets from CarbonCopies  google drive location shared drive/BrainGenix/BrainGenix::sts/SampleImages/flyEm Dataset Sample/1/22\r\n\r\n\r\nExtract using archiving tool into the directory of your choice .\r\n\r\nLoading images and Stitching \r\n\r\nopen the Grid/ Collection stitching plugin from the plugin\'s list.\r\n\r\n\r\n now we select snake stitching model \r\n\r\n\r\nnow we will be Specifying the starting file info and the file format. The default parameters are used as they seem to work fine with the current dateset.  Specify the datasets location. we can see that the grid information is the the estimate how the tile structure  will be like . here it is an 1 dimensional tile structure . we know that the x axis is 43 and long the y axis it is just 1 tile.\r\n\r\n \r\nwe will be just fusing and displaying the result not storing it. \r\n\r\n we can see there is no overlap if that\'s the case we can do a fast fusion.\r\n\r\n\r\nThe final fused image for a lateral slice.we can notice from the file size and resolution information we know stitching we can see the stitching has happened.\r\n\r\n\r\n\r\n \r\nReferences:\r\n1.https://imagej.net/plugins/image-stitching',1,'2022-09-25 10:49:45','2022-09-25 10:49:45','manuel-stitching','image-stitching','version','','',3),(39,30,'Accesing Volunteer match','<p id=\"bkmrk-step1\">step1</p>','step1',1,'2022-09-25 10:57:52','2022-09-25 10:57:52','accesing-volunteer-match','hr-training','version','','Initial publish',1),(40,31,'Fiji installation for Scripting','<p id=\"bkmrk-for-the-task-of-crea\">For the task of creation of Functions we need to install the libraries . Java environment is also needed to be installed</p>','For the task of creation of Functions we need to install the libraries . Java environment is also needed to be installed',3,'2022-09-25 11:20:37','2022-09-25 11:20:37','fiji-installation-for-scripting','image-stitching','version','','Initial publish',1);
/*!40000 ALTER TABLE `page_revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `book_id` int NOT NULL,
  `chapter_id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `html` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `priority` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int NOT NULL,
  `updated_by` int NOT NULL,
  `restricted` tinyint(1) NOT NULL DEFAULT '0',
  `draft` tinyint(1) NOT NULL DEFAULT '0',
  `markdown` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `revision_count` int NOT NULL,
  `template` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `owned_by` int unsigned NOT NULL,
  `editor` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `pages_slug_index` (`slug`),
  KEY `pages_book_id_index` (`book_id`),
  KEY `pages_chapter_id_index` (`chapter_id`),
  KEY `pages_priority_index` (`priority`),
  KEY `pages_created_by_index` (`created_by`),
  KEY `pages_updated_by_index` (`updated_by`),
  KEY `pages_restricted_index` (`restricted`),
  KEY `pages_draft_index` (`draft`),
  KEY `pages_template_index` (`template`),
  KEY `pages_owned_by_index` (`owned_by`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,1,0,'t1','t1','<p id=\"bkmrk-fdf\">fdf</p>','fdf',2,'2022-09-24 10:47:03','2022-09-24 10:48:48',1,1,0,0,'',1,0,'2022-09-24 10:48:48',1,''),(2,1,1,'Image Stitching','image-stitching','<p id=\"bkmrk-incoming-images-will\"><span id=\"bkmrk-incoming-images-will-0\" style=\"font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Incoming images will be cleaned prior to input. STS will stitch the images together into layers.</span></p>\r\n<p id=\"bkmrk-%C2%A0\">&nbsp;</p>\r\n<h2 id=\"bkmrk-tool-used%3A\"><span style=\"font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Tool Used:</span></h2>\r\n<p id=\"bkmrk-we-are-using-imagej-\"><span style=\"font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">we are using ImageJ Tool for doing the image stitching.</span></p>\r\n<p id=\"bkmrk-the-fiji-is-the-vers\"><span style=\"font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">The Fiji is the version of the ImageJ we are using.</span></p>','Incoming images will be cleaned prior to input. STS will stitch the images together into layers.\r\n \r\nTool Used:\r\nwe are using ImageJ Tool for doing the image stitching.\r\nThe Fiji is the version of the ImageJ we are using.',1,'2022-09-24 10:50:29','2022-09-24 21:36:31',1,1,0,0,'',2,0,NULL,1,''),(3,5,2,'What is STS','what-is-sts','<p id=\"bkmrk-the-braingenix-scan-\" dir=\"ltr\" style=\"line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">The BrainGenix Scan Translation System (STS) is intended to automate the process from whole brain electron microscopy (EM) images to the program of an individual ready to run on the NES/ERS system.&nbsp;</span></p>\r\n<p id=\"bkmrk-\"><br></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;\" id=\"bkmrk-%C2%A0\">&nbsp;</p>','The BrainGenix Scan Translation System (STS) is intended to automate the process from whole brain electron microscopy (EM) images to the program of an individual ready to run on the NES/ERS system. \r\n\r\n ',1,'2022-09-24 11:12:07','2022-09-24 11:12:59',1,1,0,0,'',1,0,NULL,1,''),(4,5,2,'Theoretical workflow','theoretical-workflow','<p id=\"bkmrk-theoretical-workflow\" dir=\"ltr\" style=\"line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Theoretical workflow:&nbsp;</span></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;\" id=\"bkmrk-scans-%3Eimage-cleanin\"><span style=\"font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Scans-&gt;Image cleaning-&gt;segmentation-&gt;extraction of key parameters (ie, structure-function relationships) for individual emulation-&gt;incorporate individual parameters into/onto a generic human brain model-&gt;validation-&gt;upload to NES</span></p>','Theoretical workflow: \r\nScans->Image cleaning->segmentation->extraction of key parameters (ie, structure-function relationships) for individual emulation->incorporate individual parameters into/onto a generic human brain model->validation->upload to NES',2,'2022-09-24 11:13:12','2022-09-24 11:13:42',1,1,0,0,'',1,0,NULL,1,''),(5,5,2,'Questions remaining','questions-remaining','<p id=\"bkmrk-need-a-lot-of-storag\" dir=\"ltr\" style=\"line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Need a lot of storage, parallel processing, what do you need to combine models (ie, individual &amp; species)....</span></p>\r\n<p id=\"bkmrk-\"><br></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;\" id=\"bkmrk-process-will-depend-\"><span style=\"font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Process will depend on whether or not functional data is necessary. In other words, software may vary depending on whether or not deriving function from structure is actually feasible. If functional data is needed there will need to be a process that integrates this with structural data.</span></p>\r\n<p id=\"bkmrk--0\"><br></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;\" id=\"bkmrk-parts-list-from-em-s\"><span style=\"font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Parts list from em scans….second(or more?) database(s)</span></p>\r\n<ul style=\"margin-top: 0; margin-bottom: 0; padding-inline-start: 48px;\" id=\"bkmrk-how-does-parts-list-\">\r\n<li aria-level=\"1\">\r\n<p dir=\"ltr\" style=\"line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;\" role=\"presentation\"><span style=\"font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">How does parts list work? Don\'t all cells have different patterns of arborization? Different dendritic patterns?&nbsp;</span></p>\r\n</li>\r\n<ul style=\"margin-top: 0; margin-bottom: 0; padding-inline-start: 48px;\">\r\n<li aria-level=\"2\">\r\n<p dir=\"ltr\" style=\"line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;\" role=\"presentation\"><span style=\"font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Perhaps this is part of what makes the individual (ie, individual parameters includes dendrite patterning or number of certain cell types...their density&nbsp;</span></p>\r\n</li>\r\n</ul>\r\n</ul>\r\n<p id=\"bkmrk--1\"><br></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;\" id=\"bkmrk-review-software-orga\"><span style=\"font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Review software organization for software currently used to process EM images?</span></p>\r\n<p id=\"bkmrk--2\"><br></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;\" id=\"bkmrk-need-test-datasets-f\"><span style=\"font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Need test datasets for validation?</span></p>\r\n<p id=\"bkmrk-%C2%A0\">&nbsp;</p>','Need a lot of storage, parallel processing, what do you need to combine models (ie, individual & species)....\r\n\r\nProcess will depend on whether or not functional data is necessary. In other words, software may vary depending on whether or not deriving function from structure is actually feasible. If functional data is needed there will need to be a process that integrates this with structural data.\r\n\r\nParts list from em scans….second(or more?) database(s)\r\n\r\n\r\nHow does parts list work? Don\'t all cells have different patterns of arborization? Different dendritic patterns? \r\n\r\n\r\n\r\nPerhaps this is part of what makes the individual (ie, individual parameters includes dendrite patterning or number of certain cell types...their density \r\n\r\n\r\n\r\n\r\nReview software organization for software currently used to process EM images?\r\n\r\nNeed test datasets for validation?\r\n ',3,'2022-09-24 11:15:58','2022-09-24 11:16:25',1,1,0,0,'',1,0,NULL,1,''),(6,5,3,'1.1 Model Data Input','11-model-data-input','<p id=\"bkmrk-sts-will-receive-inp\" dir=\"ltr\" style=\"line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">STS will receive input from the input image database, so the images are already stitched and post-processed. STS may also receive functional data input, if some necessary brain functional data cannot be extracted from the structural data. STS will also take in data from the to-be-developed generic working model of a human brain. Any other additional validation data may be necessary as well.&nbsp;</span></p>','STS will receive input from the input image database, so the images are already stitched and post-processed. STS may also receive functional data input, if some necessary brain functional data cannot be extracted from the structural data. STS will also take in data from the to-be-developed generic working model of a human brain. Any other additional validation data may be necessary as well. ',1,'2022-09-24 11:22:26','2022-09-24 11:24:23',1,1,0,0,'',2,0,NULL,1,''),(7,5,3,'1.2 Image stitching pipeline','12-image-stitching-pipeline','<p id=\"bkmrk-incoming-images-will\"><span id=\"bkmrk-incoming-images-will-0\" style=\"font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Incoming images will be cleaned prior to input. STS will stitch the images together into layers. </span></p>','Incoming images will be cleaned prior to input. STS will stitch the images together into layers. ',2,'2022-09-24 11:24:47','2022-09-24 11:25:35',1,1,0,0,'',1,0,NULL,1,''),(8,5,3,'1.3 3D reconstruction pipeline','13-3d-reconstruction-pipeline','<p id=\"bkmrk-using-the-incoming-m\"><span id=\"bkmrk-using-the-incoming-m-0\" style=\"font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Using the incoming microscopy data, STS will convert these image layers to a 3D model using machine learning.</span></p>','Using the incoming microscopy data, STS will convert these image layers to a 3D model using machine learning.',3,'2022-09-24 11:26:24','2022-09-24 11:28:10',1,1,0,0,'',2,0,NULL,1,''),(9,5,3,'1.4 Structure-to-function pipeline','14-structure-to-function-pipeline','<p id=\"bkmrk-the-input-of-this-pi\"><span id=\"bkmrk-the-input-of-this-pi-0\" style=\"font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">The input of this pipeline will be the fully labelled and segmented 3D reconstruction. Here, any necessary (additional) functional data from the structure of the brain will be extracted using to-be-developed algorithms.</span></p>','The input of this pipeline will be the fully labelled and segmented 3D reconstruction. Here, any necessary (additional) functional data from the structure of the brain will be extracted using to-be-developed algorithms.',4,'2022-09-24 11:28:22','2022-09-24 11:28:52',1,1,0,0,'',1,0,NULL,1,''),(10,5,3,'1.5 Individual parameter application pipeline','15-individual-parameter-application-pipeline','<p id=\"bkmrk-this-structural-and-\"><span id=\"bkmrk-this-structural-and--0\" style=\"font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">This structural and functional data collected in points 1.2 and 1.3 will now be integrated into a generic working model of the human brain to make the working model a particular individual. </span></p>','This structural and functional data collected in points 1.2 and 1.3 will now be integrated into a generic working model of the human brain to make the working model a particular individual. ',5,'2022-09-24 11:28:57','2022-09-24 11:29:26',1,1,0,0,'',1,0,NULL,1,''),(11,5,3,'1.6 Validation pipeline','16-validation-pipeline','<p id=\"bkmrk-validation-tests-wil\"><span id=\"bkmrk-validation-tests-wil-0\" style=\"font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Validation tests will be performed iteratively to ensure the behavioral and functional output of the model is accurate. </span></p>','Validation tests will be performed iteratively to ensure the behavioral and functional output of the model is accurate. ',6,'2022-09-24 11:29:33','2022-09-24 11:29:59',1,1,0,0,'',1,0,NULL,1,''),(12,5,3,'1.7 Individual model interfaced with BrainGenix::NES','17-individual-model-interfaced-with-braingenixnes','<p id=\"bkmrk-the-sts-model-will-b\">The STS model will be standardized in such a way that it can be interfaced to the NES model</p>','The STS model will be standardized in such a way that it can be interfaced to the NES model',7,'2022-09-24 11:30:30','2022-09-24 11:32:00',1,1,0,0,'',1,0,NULL,1,''),(13,5,4,'The image pipeline','the-image-pipeline','<p id=\"bkmrk-firstly%2C-features-ar\" dir=\"ltr\" style=\"line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Firstly, features are identified within the images to be stitched. Features are then matched against other feature maps to identify overlapping features. This allows the images to be aligned with a high degree of accuracy. Additionally, image position data assists in the image matching process if available.</span></p>\r\n<p id=\"bkmrk-\"><br></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;\" id=\"bkmrk-next%2C-the-image-over\"><span style=\"font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Next, the image overlay position information is recorded into a database table for future reference.</span></p>','Firstly, features are identified within the images to be stitched. Features are then matched against other feature maps to identify overlapping features. This allows the images to be aligned with a high degree of accuracy. Additionally, image position data assists in the image matching process if available.\r\n\r\nNext, the image overlay position information is recorded into a database table for future reference.',1,'2022-09-24 11:33:13','2022-09-24 11:33:44',1,1,0,0,'',1,0,NULL,1,''),(14,5,5,'Introduction','introduction','<p id=\"bkmrk-the-3d-reconstructio\"><span id=\"bkmrk-the-3d-reconstructio-0\" style=\"font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">The 3D reconstruction pipeline converts image stack data into a 3d structural model. This is the first step in the conversion process, as the structural parameters are extracted from the 3D model.</span></p>','The 3D reconstruction pipeline converts image stack data into a 3d structural model. This is the first step in the conversion process, as the structural parameters are extracted from the 3D model.',1,'2022-09-24 11:36:19','2022-09-24 11:36:42',1,1,0,0,'',1,0,NULL,1,''),(15,5,6,'Pipelines','pipelines','<p id=\"bkmrk-here-is-an-example-o\"><span id=\"bkmrk-here-is-an-example-o-0\" style=\"font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Here is an example of a pipeline that extracts structural and functional connectivity from MRI data, and the output can be used to simulate brain activity: </span><a style=\"text-decoration: none;\" href=\"https://www.sciencedirect.com/science/article/pii/S1053811915002505\"><span style=\"font-size: 11pt; font-family: Arial; color: #1155cc; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: underline; -webkit-text-decoration-skip: none; text-decoration-skip-ink: none; vertical-align: baseline; white-space: pre-wrap;\">https://www.sciencedirect.com/science/article/pii/S1053811915002505</span></a><span style=\"font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\"> </span></p>','Here is an example of a pipeline that extracts structural and functional connectivity from MRI data, and the output can be used to simulate brain activity: https://www.sciencedirect.com/science/article/pii/S1053811915002505 ',1,'2022-09-24 11:37:22','2022-09-24 11:37:49',1,1,0,0,'',1,0,NULL,1,''),(16,5,8,'why validation','why-validation','<p id=\"bkmrk-sts-create-virtual-b\" dir=\"ltr\" style=\"line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">STS create virtual brain electron microscope scans for validation</span></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;\" id=\"bkmrk-at-the-end-of-the-tr\"><span style=\"font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">At the end of the translation process, calculate the error % and minimize this number</span></p>\r\n<p id=\"bkmrk-\"><br></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;\" id=\"bkmrk-from-virtual-brain-p\"><span style=\"font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">From virtual brain project, get process for inputting model and electrode properties, then get error percentage out based on simulated model with simulated electrode properties</span></p>\r\n<p id=\"bkmrk--0\"><br></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;\" id=\"bkmrk-then-iteratively-min\"><span style=\"font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Then iteratively minimize error percentage using predefined rules on model until error percentage is less than n %</span></p>','STS create virtual brain electron microscope scans for validation\r\nAt the end of the translation process, calculate the error % and minimize this number\r\n\r\nFrom virtual brain project, get process for inputting model and electrode properties, then get error percentage out based on simulated model with simulated electrode properties\r\n\r\nThen iteratively minimize error percentage using predefined rules on model until error percentage is less than n %',1,'2022-09-24 11:38:58','2022-09-24 11:39:28',1,1,0,0,'',1,0,NULL,1,''),(17,5,9,'storing the information','storing-the-information','<p id=\"bkmrk-in-order-to-store-th\"><span id=\"bkmrk-in-order-to-store-th-0\" style=\"font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">In order to store the model and input information, a database should be used due to the scalability and flexibility of modern database systems.</span></p>','In order to store the model and input information, a database should be used due to the scalability and flexibility of modern database systems.',1,'2022-09-24 11:40:21','2022-09-24 11:40:51',1,1,0,0,'',1,0,NULL,1,''),(18,4,10,'Getting access to Carboncopies email','getting-access-to-carboncopies-email','<h3 id=\"bkmrk-access-to-carboncopi\">Access to CarbonCopies mail</h3>\r\n<ol id=\"bkmrk-ask-the-project-lead\">\r\n<li class=\"null\">Ask the project lead to submit an ticket to IT.</li>\r\n<li class=\"null\">Once access provided enable 2 factor authentication.</li>\r\n</ol>\r\n<h4 id=\"bkmrk-%C2%A0\">&nbsp;</h4>','Access to CarbonCopies mail\r\n\r\nAsk the project lead to submit an ticket to IT.\r\nOnce access provided enable 2 factor authentication.\r\n\r\n ',1,'2022-09-24 11:44:57','2022-09-24 11:53:10',1,1,0,0,'',1,0,NULL,1,''),(19,4,10,'Access to Bookstacks','access-to-bookstacks','<h5 id=\"bkmrk-book-stacks-access%3A\">Book stacks Access:</h5>\r\n<h5 id=\"bkmrk-information-to-send-\">Information to send to IT</h5>\r\n<ol id=\"bkmrk-%C2%A0specify-the-project\">\r\n<li class=\"null\">&nbsp;Specify the project team</li>\r\n<li class=\"null\">&nbsp;Specify the books which you need access&nbsp;\r\n<ol>\r\n<li class=\"null\">STS project Group / Image Stitching.</li>\r\n<li class=\"null\">General Training .</li>\r\n<li class=\"null\">Logging information .</li>\r\n</ol>\r\n</li>\r\n<li class=\"null\">&nbsp;Specify access end date if needed.</li>\r\n<li class=\"null\">&nbsp;send the email to IT@carboncopies.org</li>\r\n</ol>','Book stacks Access:\r\nInformation to send to IT\r\n\r\n Specify the project team\r\n Specify the books which you need access \r\n\r\nSTS project Group / Image Stitching.\r\nGeneral Training .\r\nLogging information .\r\n\r\n\r\n Specify access end date if needed.\r\n send the email to IT@carboncopies.org\r\n',2,'2022-09-24 11:54:29','2022-09-24 12:03:59',1,1,0,0,'',1,0,NULL,1,''),(20,4,10,'Access to Carboncopies Gitlab account','access-to-carboncopies-gitlab-account','<h3 id=\"bkmrk-steps-to-get-gitlab-\">Steps to get Gitlab access</h3>\r\n<h4 id=\"bkmrk-1.-have-your-carbon-\">1. have your carbon copies email set up.</h4>\r\n<h4 id=\"bkmrk-2.-send-following-in\">2. Send following information to Git lab admin</h4>\r\n<ol id=\"bkmrk-%C2%A0groups-%2F-project-in\">\r\n<li class=\"null\">&nbsp;groups / project information.</li>\r\n<li class=\"null\">project lead info.</li>\r\n<li class=\"null\">access termination date.</li>\r\n</ol>\r\n<p id=\"bkmrk-%C2%A0\">&nbsp;</p>\r\n<p id=\"bkmrk-%C2%A0-0\">&nbsp;</p>','Steps to get Gitlab access\r\n1. have your carbon copies email set up.\r\n2. Send following information to Git lab admin\r\n\r\n groups / project information.\r\nproject lead info.\r\naccess termination date.\r\n\r\n \r\n ',3,'2022-09-24 12:06:15','2022-09-24 12:11:04',1,1,0,0,'',1,0,NULL,1,''),(21,4,10,'Meeting invitations','meeting-invitations','<h3 id=\"bkmrk-invitations-to-meeti\">Invitations to meetings</h3>\r\n<h4 id=\"bkmrk-all-hands%3A\">All Hands:</h4>\r\n<p id=\"bkmrk-to-get-access-to-all\">To get access to All hands send email to <a href=\"mailto:Allhands@carboncopies\">Allhands@carboncopies.org</a></p>\r\n<h4 id=\"bkmrk-braingenix%3A\">Braingenix:</h4>\r\n<p id=\"bkmrk-to-get-access-to-bra\">To get access to Braingenix meetings access&nbsp; send email to <a href=\"mailto:Director@Carboncopies.org\">Director@Carboncopies.org</a></p>\r\n<h4 id=\"bkmrk-sts%3A\">STS:</h4>\r\n<p id=\"bkmrk-to-get-access-to-sts\">To get access to sts meetups send emails to jjose@carboncopies.org</p>','Invitations to meetings\r\nAll Hands:\r\nTo get access to All hands send email to Allhands@carboncopies.org\r\nBraingenix:\r\nTo get access to Braingenix meetings access  send email to Director@Carboncopies.org\r\nSTS:\r\nTo get access to sts meetups send emails to jjose@carboncopies.org',4,'2022-09-24 12:12:05','2022-09-24 12:17:05',1,1,0,0,'',1,0,NULL,1,''),(22,4,11,'Module identification','module-identification','<h4 id=\"bkmrk-research-modules\">Research modules</h4>\r\n<p id=\"bkmrk-go-through-all-modul\">go through all modules and try to read and crate a summary of the task you are interested in.</p>','Research modules\r\ngo through all modules and try to read and crate a summary of the task you are interested in.',1,'2022-09-24 12:17:19','2022-09-24 12:19:20',1,1,0,0,'',1,0,NULL,1,''),(23,4,11,'Mentor Assignment','mentor-assignment','<h3 id=\"bkmrk-getting-a-mentor%3A\">Getting a mentor:</h3>\r\n<p id=\"bkmrk-getting-a-mentor-is-\">getting a mentor is needed to help you with the tasks can help you ramp up.<br></p>\r\n<p id=\"bkmrk-ask-your-lead-to-get\">Ask your lead to get an mentor assigned to you</p>\r\n<p id=\"bkmrk-try-to-get-an-1%3A1-se\">Try to get an 1:1 session in a month</p>','Getting a mentor:\r\ngetting a mentor is needed to help you with the tasks can help you ramp up.\r\nAsk your lead to get an mentor assigned to you\r\nTry to get an 1:1 session in a month',2,'2022-09-24 12:19:36','2022-09-24 12:24:24',1,1,0,0,'',1,0,NULL,1,''),(24,4,11,'Progress Updates','progress-updates','<h4 id=\"bkmrk-email-updates%3A\">Email updates:</h4>\r\n<p id=\"bkmrk-email-updates-weekly\">Email updates weekly to your lead would be really helpful to keep track of progress in the organistaion</p>','Email updates:\r\nEmail updates weekly to your lead would be really helpful to keep track of progress in the organistaion',3,'2022-09-24 12:24:29','2022-09-24 12:26:25',1,1,0,0,'',1,0,NULL,1,''),(25,1,1,'ImageJ','imagej','<p id=\"bkmrk-imagej-is-a-java-bas\"><strong>ImageJ</strong> is a <a title=\"Java (programming language)\" href=\"https://en.wikipedia.org/wiki/Java_(programming_language)\">Java</a>-based <a class=\"mw-redirect\" title=\"Image processing\" href=\"https://en.wikipedia.org/wiki/Image_processing\">image processing</a> program developed at the <a title=\"National Institutes of Health\" href=\"https://en.wikipedia.org/wiki/National_Institutes_of_Health\">National Institutes of Health</a> and the Laboratory for Optical and Computational Instrumentation (LOCI, University of Wisconsin).<sup id=\"bkmrk-%5B3%5D\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/ImageJ#cite_note-3\">[3]</a></sup><sup id=\"bkmrk-%5B4%5D\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/ImageJ#cite_note-4\">[4]</a></sup> Its first version, ImageJ 1.x, is developed in the <a title=\"Public domain\" href=\"https://en.wikipedia.org/wiki/Public_domain\">public domain</a>, while ImageJ2 and the related projects <a class=\"new\" title=\"SciJava (page does not exist)\" href=\"https://en.wikipedia.org/w/index.php?title=SciJava&amp;action=edit&amp;redlink=1\">SciJava</a>, <a class=\"new\" title=\"ImgLib2 (page does not exist)\" href=\"https://en.wikipedia.org/w/index.php?title=ImgLib2&amp;action=edit&amp;redlink=1\">ImgLib2</a>, and <a class=\"new\" title=\"SCIFIO (page does not exist)\" href=\"https://en.wikipedia.org/w/index.php?title=SCIFIO&amp;action=edit&amp;redlink=1\">SCIFIO</a> are licensed with a permissive <a title=\"BSD licenses\" href=\"https://en.wikipedia.org/wiki/BSD_licenses\">BSD-2 license</a>.<sup id=\"bkmrk-%5B5%5D\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/ImageJ#cite_note-5\">[5]</a></sup> ImageJ was designed with an <a title=\"Open architecture\" href=\"https://en.wikipedia.org/wiki/Open_architecture\">open architecture</a> that provides <a title=\"Extensibility\" href=\"https://en.wikipedia.org/wiki/Extensibility\">extensibility</a> via Java <a title=\"Plug-in (computing)\" href=\"https://en.wikipedia.org/wiki/Plug-in_(computing)\">plugins</a> and recordable macros.<sup id=\"bkmrk-%5B6%5D\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/ImageJ#cite_note-6\">[6]</a></sup> Custom acquisition, analysis and processing plugins can be developed using ImageJ\'s built-in editor and a Java compiler. User-written plugins make it possible to solve many image processing and analysis problems, from three-dimensional live-cell imaging<sup id=\"bkmrk-%5B7%5D\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/ImageJ#cite_note-7\">[7]</a></sup> to <a title=\"Radiology\" href=\"https://en.wikipedia.org/wiki/Radiology\">radiological</a> image processing,<sup id=\"bkmrk-%5B8%5D\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/ImageJ#cite_note-8\">[8]</a></sup> multiple imaging system data comparisons<sup id=\"bkmrk-%5B9%5D\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/ImageJ#cite_note-9\">[9]</a></sup> to automated <a title=\"Hematology\" href=\"https://en.wikipedia.org/wiki/Hematology\">hematology</a> systems.<sup id=\"bkmrk-%5B10%5D\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/ImageJ#cite_note-10\">[10]</a></sup> ImageJ\'s plugin architecture and built-in development environment has made it a popular platform for teaching image processing.<sup id=\"bkmrk-%5B11%5D\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/ImageJ#cite_note-11\">[11]</a></sup><sup id=\"bkmrk-%5B12%5D\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/ImageJ#cite_note-12\">[12]</a></sup></p>','ImageJ is a Java-based image processing program developed at the National Institutes of Health and the Laboratory for Optical and Computational Instrumentation (LOCI, University of Wisconsin).[3][4] Its first version, ImageJ 1.x, is developed in the public domain, while ImageJ2 and the related projects SciJava, ImgLib2, and SCIFIO are licensed with a permissive BSD-2 license.[5] ImageJ was designed with an open architecture that provides extensibility via Java plugins and recordable macros.[6] Custom acquisition, analysis and processing plugins can be developed using ImageJ\'s built-in editor and a Java compiler. User-written plugins make it possible to solve many image processing and analysis problems, from three-dimensional live-cell imaging[7] to radiological image processing,[8] multiple imaging system data comparisons[9] to automated hematology systems.[10] ImageJ\'s plugin architecture and built-in development environment has made it a popular platform for teaching image processing.[11][12]',2,'2022-09-24 21:37:21','2022-09-24 21:39:13',1,1,0,0,'',1,0,NULL,1,''),(26,1,1,'Fiji','fiji','<p id=\"bkmrk-fiji-%28fiji-is-just-i\">Fiji (Fiji Is Just ImageJ) is an open source image processing package based on ImageJ2.</p>\r\n<p id=\"bkmrk-the-main-purpose-of-\">The main purpose of Fiji is to provide a distribution of ImageJ2 bundled with many plugins. Fiji has an integrated update system that gives users a consistent menu structure, comprehensive documentation in the form of detailed algorithm descriptions and tutorials, and the ability to avoid having to install multiple components from various sources. It is intended to provide to</p>\r\n<p id=\"bkmrk-fiji-also-uses-rapid\">Fiji also uses rapid prototyping infrastructure in the form of version control systems, issue trackers, dedicated development channels, and script editors that support scripts such as BeanShell, Jython, JRuby, Clojure, Groovy, JavaScript, etc. It corresponds to the person. Languages ​​and just-in-time Java development.</p>','Fiji (Fiji Is Just ImageJ) is an open source image processing package based on ImageJ2.\r\nThe main purpose of Fiji is to provide a distribution of ImageJ2 bundled with many plugins. Fiji has an integrated update system that gives users a consistent menu structure, comprehensive documentation in the form of detailed algorithm descriptions and tutorials, and the ability to avoid having to install multiple components from various sources. It is intended to provide to\r\nFiji also uses rapid prototyping infrastructure in the form of version control systems, issue trackers, dedicated development channels, and script editors that support scripts such as BeanShell, Jython, JRuby, Clojure, Groovy, JavaScript, etc. It corresponds to the person. Languages ​​and just-in-time Java development.',3,'2022-09-24 21:39:19','2022-09-24 21:47:49',1,1,0,0,'',1,0,NULL,1,''),(27,1,13,'Fiji Installation','fiji-installation','<h2 id=\"bkmrk-download%3A\"><span style=\"text-decoration: underline;\">Download:</span></h2>\r\n<p id=\"bkmrk-download-the-fiji-so\">Download the fiji software package from the link below:<br></p>\r\n<h4 id=\"bkmrk-website%3A\">Website:</h4>\r\n<p id=\"bkmrk-https%3A%2F%2Ffiji.sc%2F\">https://fiji.sc/</p>\r\n<h5 id=\"bkmrk-direct-link\">Direct link</h5>\r\n<p id=\"bkmrk-https%3A%2F%2Fdownloads.im\"><a href=\"https://downloads.imagej.net/fiji/latest/fiji-linux64.zip\">https://downloads.imagej.net/fiji/latest/fiji-linux64.zip</a></p>\r\n<h3 id=\"bkmrk-extract-and-installa\"><span style=\"text-decoration: underline;\"><span style=\"color: rgb(0, 0, 0); text-decoration: underline;\">Extract and Installation:</span></span></h3>\r\n<p id=\"bkmrk-go-to-the-extracted-\"><span style=\"color: rgb(0, 0, 0);\">Go to the extracted folder and run ImageJ-64 for first time.<br></span></p>\r\n<p id=\"bkmrk-%C2%A0\"><br></p>\r\n<p id=\"bkmrk-\"><a href=\"http://192.168.85.128/uploads/images/gallery/2022-09/image.png\" target=\"_blank\" rel=\"noopener\"><img src=\"http://192.168.85.128/uploads/images/gallery/2022-09/scaled-1680-/image.png\" alt=\"image.png\"></a></p>\r\n<p id=\"bkmrk-this-has-to-be-done-\">This has to be done first time. You could update it first time. A restart maybe needed.</p>\r\n<p id=\"bkmrk-%C2%A0-0\">&nbsp;</p>\r\n<h3 id=\"bkmrk-running-fiji-applica\"><span style=\"text-decoration: underline;\">Running Fiji Application</span></h3>\r\n<p id=\"bkmrk-run-the-imagej-linux\">Run the ImageJ-linux64 tool . The Fiji Tool is&nbsp; tool is the one which&nbsp; is marked with the red marker</p>\r\n<p id=\"bkmrk--0\"><a href=\"http://192.168.85.128/uploads/images/gallery/2022-09/H0Cimage.png\" target=\"_blank\" rel=\"noopener\"><img src=\"http://192.168.85.128/uploads/images/gallery/2022-09/scaled-1680-/H0Cimage.png\" alt=\"image.png\"></a></p>\r\n<p id=\"bkmrk--1\"><br></p>','Download:\r\nDownload the fiji software package from the link below:\r\nWebsite:\r\nhttps://fiji.sc/\r\nDirect link\r\nhttps://downloads.imagej.net/fiji/latest/fiji-linux64.zip\r\nExtract and Installation:\r\nGo to the extracted folder and run ImageJ-64 for first time.\r\n\r\n\r\nThis has to be done first time. You could update it first time. A restart maybe needed.\r\n \r\nRunning Fiji Application\r\nRun the ImageJ-linux64 tool . The Fiji Tool is  tool is the one which  is marked with the red marker\r\n\r\n',1,'2022-09-24 21:54:40','2022-09-24 22:18:05',1,1,1,0,'',2,0,NULL,1,''),(28,1,13,'Stitching Images manually','','<h3 id=\"bkmrk-download-%26-load\">Download &amp; Load</h3>\n<p id=\"bkmrk-download-the-sample-\">download the sample images From the shared&nbsp; Directory BrainGenix/BrainGenix::STS/SampleImages/FlyEM Dataset Sample/22</p>\n<p id=\"bkmrk-\"><a href=\"http://192.168.85.128/uploads/images/gallery/2022-09/Zgcimage.png\" target=\"_blank\" rel=\"noopener\"><img src=\"http://192.168.85.128/uploads/images/gallery/2022-09/scaled-1680-/Zgcimage.png\" alt=\"image.png\"></a></p>\n<p id=\"bkmrk-save-into-your-direc\">save into your directory.</p>\n<p id=\"bkmrk-now-extract-the-file\">Now extract the files and and go to plugins and select grid collection stitching</p>\n<p id=\"bkmrk-%C2%A0\">&nbsp;</p>\n<p id=\"bkmrk--0\"><a href=\"http://192.168.85.128/uploads/images/gallery/2022-09/g0oimage.png\" target=\"_blank\" rel=\"noopener\"><img src=\"http://192.168.85.128/uploads/images/gallery/2022-09/scaled-1680-/g0oimage.png\" alt=\"image.png\"></a></p>\n<p id=\"bkmrk-now-select-grid-mode\">now select grid mode</p>\n<p id=\"bkmrk-now-we-need-to-speci\">now we need to specify the tiles&nbsp; information we can see it starts from 42 to 103 . we can see this from the directory.</p>\n<p id=\"bkmrk--1\"><a href=\"http://192.168.85.128/uploads/images/gallery/2022-09/taaimage.png\" target=\"_blank\" rel=\"noopener\"><img src=\"http://192.168.85.128/uploads/images/gallery/2022-09/scaled-1680-/taaimage.png\" alt=\"image.png\"></a></p>\n<p id=\"bkmrk-now-we-specify-file-\">now we specify file information as given</p>\n<p id=\"bkmrk--2\"><a href=\"http://192.168.85.128/uploads/images/gallery/2022-09/VGWimage.png\" target=\"_blank\" rel=\"noopener\"><img src=\"http://192.168.85.128/uploads/images/gallery/2022-09/scaled-1680-/VGWimage.png\" alt=\"image.png\"></a></p>\n<p id=\"bkmrk-specify-the-director\">specify the directory , file index start information, we will be using linear Blending fusion. The default seems to work with the data we have. So currently it fuses and shows the image.</p>\n<p id=\"bkmrk-%C2%A0-0\">&nbsp;</p>','Download & Load\ndownload the sample images From the shared  Directory BrainGenix/BrainGenix::STS/SampleImages/FlyEM Dataset Sample/22\n\nsave into your directory.\nNow extract the files and and go to plugins and select grid collection stitching\n \n\nnow select grid mode\nnow we need to specify the tiles  information we can see it starts from 42 to 103 . we can see this from the directory.\n\nnow we specify file information as given\n\nspecify the directory , file index start information, we will be using linear Blending fusion. The default seems to work with the data we have. So currently it fuses and shows the image.\n ',0,'2022-09-25 06:09:17','2022-09-25 06:48:50',3,3,0,1,'',0,0,NULL,3,''),(29,1,13,'Manuel stitching','manuel-stitching','<h3 id=\"bkmrk-introduction-to-manu\"><span style=\"text-decoration: underline;\">Introduction to Manuel stitching</span></h3>\r\n<h4 id=\"bkmrk-accessing-sample-dat\"><span style=\"text-decoration: underline;\">Accessing Sample Datasets:</span></h4>\r\n<ol id=\"bkmrk-download-the-dataset\">\r\n<li class=\"null\">Download the datasets from CarbonCopies&nbsp; google drive location shared drive/BrainGenix/BrainGenix::sts/SampleImages/flyEm Dataset Sample/1/22\r\n<p><a href=\"http://192.168.85.128/uploads/images/gallery/2022-09/sh8image.png\" target=\"_blank\" rel=\"noopener\"><img src=\"http://192.168.85.128/uploads/images/gallery/2022-09/scaled-1680-/sh8image.png\" alt=\"image.png\"></a></p>\r\n</li>\r\n<li class=\"null\">Extract using archiving tool into the directory of your choice .</li>\r\n</ol>\r\n<h4 id=\"bkmrk-loading-images-and-s\"><span style=\"text-decoration: underline;\"><span style=\"color: rgb(0, 0, 0); text-decoration: underline;\">Loading images and Stitching </span></span></h4>\r\n<ol id=\"bkmrk-open-the-grid%2F-colle\">\r\n<li class=\"null\">open the Grid/ Collection stitching plugin from the plugin\'s list.\r\n<p><a href=\"http://192.168.85.128/uploads/images/gallery/2022-09/Wojimage.png\" target=\"_blank\" rel=\"noopener\"><img src=\"http://192.168.85.128/uploads/images/gallery/2022-09/scaled-1680-/Wojimage.png\" alt=\"image.png\"></a></p>\r\n</li>\r\n<li class=\"null\">&nbsp;now we select snake stitching model&nbsp;\r\n<p><a href=\"http://192.168.85.128/uploads/images/gallery/2022-09/ZnJimage.png\" target=\"_blank\" rel=\"noopener\"><img src=\"http://192.168.85.128/uploads/images/gallery/2022-09/scaled-1680-/ZnJimage.png\" alt=\"image.png\"></a></p>\r\n<br></li>\r\n<li class=\"null\">now we will be Specifying the starting file info and the file format. The default parameters are used as they seem to work fine with the current dateset.&nbsp; Specify the datasets location. we can see that the grid information is the the estimate how the tile structure &nbsp;will be like . here it is an 1 dimensional tile structure . we know that the x axis is 43 and long the y axis it is just 1 tile.\r\n<p><a href=\"http://192.168.85.128/uploads/images/gallery/2022-09/UyUimage.png\" target=\"_blank\" rel=\"noopener\"><img src=\"http://192.168.85.128/uploads/images/gallery/2022-09/scaled-1680-/UyUimage.png\" alt=\"image.png\"></a></p>\r\n<p>&nbsp;</p>\r\n<p>we will be just fusing and displaying the result not storing it.&nbsp;</p>\r\n</li>\r\n<li class=\"null\">&nbsp;we can see there is no overlap if that\'s the case we can do a fast fusion.\r\n<p><a href=\"http://192.168.85.128/uploads/images/gallery/2022-09/STgimage.png\" target=\"_blank\" rel=\"noopener\"><img src=\"http://192.168.85.128/uploads/images/gallery/2022-09/scaled-1680-/STgimage.png\" alt=\"image.png\"></a><br></p>\r\n</li>\r\n<li class=\"null\">The final fused image for a lateral slice.we can notice from the file size and resolution information we know stitching we can see the stitching has happened.\r\n<p><a href=\"http://192.168.85.128/uploads/images/gallery/2022-09/Jk2image.png\" target=\"_blank\" rel=\"noopener\"><img src=\"http://192.168.85.128/uploads/images/gallery/2022-09/scaled-1680-/Jk2image.png\" alt=\"image.png\"></a></p>\r\n</li>\r\n</ol>\r\n<p id=\"bkmrk-%C2%A0\">&nbsp;</p>\r\n<p id=\"bkmrk-references%3A\">References:</p>\r\n<p id=\"bkmrk-1.https%3A%2F%2Fimagej.net\">1.https://imagej.net/plugins/image-stitching</p>','Introduction to Manuel stitching\r\nAccessing Sample Datasets:\r\n\r\nDownload the datasets from CarbonCopies  google drive location shared drive/BrainGenix/BrainGenix::sts/SampleImages/flyEm Dataset Sample/1/22\r\n\r\n\r\nExtract using archiving tool into the directory of your choice .\r\n\r\nLoading images and Stitching \r\n\r\nopen the Grid/ Collection stitching plugin from the plugin\'s list.\r\n\r\n\r\n now we select snake stitching model \r\n\r\n\r\nnow we will be Specifying the starting file info and the file format. The default parameters are used as they seem to work fine with the current dateset.  Specify the datasets location. we can see that the grid information is the the estimate how the tile structure  will be like . here it is an 1 dimensional tile structure . we know that the x axis is 43 and long the y axis it is just 1 tile.\r\n\r\n \r\nwe will be just fusing and displaying the result not storing it. \r\n\r\n we can see there is no overlap if that\'s the case we can do a fast fusion.\r\n\r\n\r\nThe final fused image for a lateral slice.we can notice from the file size and resolution information we know stitching we can see the stitching has happened.\r\n\r\n\r\n\r\n \r\nReferences:\r\n1.https://imagej.net/plugins/image-stitching',2,'2022-09-25 10:04:20','2022-09-25 10:49:45',1,1,0,0,'',3,0,NULL,1,''),(30,6,14,'Accesing Volunteer match','accesing-volunteer-match','<p id=\"bkmrk-step1\">step1</p>','step1',1,'2022-09-25 10:57:36','2022-09-25 10:57:52',1,1,0,0,'',1,0,NULL,1,''),(31,1,13,'Fiji installation for Scripting','fiji-installation-for-scripting','<p id=\"bkmrk-for-the-task-of-crea\">For the task of creation of Functions we need to install the libraries . Java environment is also needed to be installed</p>','For the task of creation of Functions we need to install the libraries . Java environment is also needed to be installed',3,'2022-09-25 11:17:23','2022-09-25 11:20:37',3,3,0,0,'',1,0,NULL,3,'');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission_role`
--

DROP TABLE IF EXISTS `permission_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permission_role` (
  `permission_id` int unsigned NOT NULL,
  `role_id` int unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_role_id_foreign` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `role_permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission_role`
--

LOCK TABLES `permission_role` WRITE;
/*!40000 ALTER TABLE `permission_role` DISABLE KEYS */;
INSERT INTO `permission_role` VALUES (19,1),(20,1),(21,1),(22,1),(23,1),(24,1),(25,1),(26,1),(27,1),(28,1),(29,1),(30,1),(31,1),(32,1),(33,1),(34,1),(35,1),(36,1),(37,1),(38,1),(39,1),(40,1),(41,1),(42,1),(43,1),(44,1),(45,1),(46,1),(47,1),(48,1),(49,1),(50,1),(51,1),(52,1),(53,1),(54,1),(55,1),(56,1),(57,1),(58,1),(59,1),(60,1),(61,1),(62,1),(63,1),(64,1),(65,1),(66,1),(67,1),(68,1),(69,1),(70,1),(71,1),(72,1),(73,1),(74,1),(75,1),(76,1),(77,1),(24,2),(26,2),(27,2),(28,2),(29,2),(30,2),(31,2),(32,2),(33,2),(34,2),(35,2),(36,2),(37,2),(38,2),(39,2),(40,2),(41,2),(42,2),(44,2),(45,2),(46,2),(47,2),(48,2),(49,2),(50,2),(51,2),(52,2),(53,2),(60,2),(62,2),(63,2),(64,2),(65,2),(66,2),(67,2),(68,2),(70,2),(71,2),(72,2),(73,2),(76,2),(48,3),(49,3),(50,3),(51,3),(52,3),(53,3),(66,3),(67,3),(76,3),(48,4),(49,4),(50,4),(51,4),(52,4),(53,4),(66,4),(67,4),(76,4);
/*!40000 ALTER TABLE `permission_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `references`
--

DROP TABLE IF EXISTS `references`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `references` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `from_id` int unsigned NOT NULL,
  `from_type` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `to_id` int unsigned NOT NULL,
  `to_type` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `references_from_id_index` (`from_id`),
  KEY `references_from_type_index` (`from_type`),
  KEY `references_to_id_index` (`to_id`),
  KEY `references_to_type_index` (`to_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `references`
--

LOCK TABLES `references` WRITE;
/*!40000 ALTER TABLE `references` DISABLE KEYS */;
/*!40000 ALTER TABLE `references` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_permissions`
--

DROP TABLE IF EXISTS `role_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_permissions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_permissions`
--

LOCK TABLES `role_permissions` WRITE;
/*!40000 ALTER TABLE `role_permissions` DISABLE KEYS */;
INSERT INTO `role_permissions` VALUES (19,'settings-manage','Manage Settings',NULL,'2022-09-24 10:20:49','2022-09-24 10:20:49'),(20,'users-manage','Manage Users',NULL,'2022-09-24 10:20:49','2022-09-24 10:20:49'),(21,'user-roles-manage','Manage Roles & Permissions',NULL,'2022-09-24 10:20:49','2022-09-24 10:20:49'),(22,'restrictions-manage-all','Manage All Entity Permissions',NULL,'2022-09-24 10:20:49','2022-09-24 10:20:49'),(23,'restrictions-manage-own','Manage Entity Permissions On Own Content',NULL,'2022-09-24 10:20:49','2022-09-24 10:20:49'),(24,'book-create-all','Create All Books',NULL,'2022-09-24 10:20:49','2022-09-24 10:20:49'),(25,'book-create-own','Create Own Books',NULL,'2022-09-24 10:20:49','2022-09-24 10:20:49'),(26,'book-update-all','Update All Books',NULL,'2022-09-24 10:20:49','2022-09-24 10:20:49'),(27,'book-update-own','Update Own Books',NULL,'2022-09-24 10:20:49','2022-09-24 10:20:49'),(28,'book-delete-all','Delete All Books',NULL,'2022-09-24 10:20:49','2022-09-24 10:20:49'),(29,'book-delete-own','Delete Own Books',NULL,'2022-09-24 10:20:49','2022-09-24 10:20:49'),(30,'page-create-all','Create All Pages',NULL,'2022-09-24 10:20:49','2022-09-24 10:20:49'),(31,'page-create-own','Create Own Pages',NULL,'2022-09-24 10:20:49','2022-09-24 10:20:49'),(32,'page-update-all','Update All Pages',NULL,'2022-09-24 10:20:49','2022-09-24 10:20:49'),(33,'page-update-own','Update Own Pages',NULL,'2022-09-24 10:20:49','2022-09-24 10:20:49'),(34,'page-delete-all','Delete All Pages',NULL,'2022-09-24 10:20:49','2022-09-24 10:20:49'),(35,'page-delete-own','Delete Own Pages',NULL,'2022-09-24 10:20:49','2022-09-24 10:20:49'),(36,'chapter-create-all','Create All Chapters',NULL,'2022-09-24 10:20:49','2022-09-24 10:20:49'),(37,'chapter-create-own','Create Own Chapters',NULL,'2022-09-24 10:20:49','2022-09-24 10:20:49'),(38,'chapter-update-all','Update All Chapters',NULL,'2022-09-24 10:20:49','2022-09-24 10:20:49'),(39,'chapter-update-own','Update Own Chapters',NULL,'2022-09-24 10:20:49','2022-09-24 10:20:49'),(40,'chapter-delete-all','Delete All Chapters',NULL,'2022-09-24 10:20:49','2022-09-24 10:20:49'),(41,'chapter-delete-own','Delete Own Chapters',NULL,'2022-09-24 10:20:49','2022-09-24 10:20:49'),(42,'image-create-all','Create All Images',NULL,'2022-09-24 10:20:49','2022-09-24 10:20:49'),(43,'image-create-own','Create Own Images',NULL,'2022-09-24 10:20:49','2022-09-24 10:20:49'),(44,'image-update-all','Update All Images',NULL,'2022-09-24 10:20:49','2022-09-24 10:20:49'),(45,'image-update-own','Update Own Images',NULL,'2022-09-24 10:20:49','2022-09-24 10:20:49'),(46,'image-delete-all','Delete All Images',NULL,'2022-09-24 10:20:49','2022-09-24 10:20:49'),(47,'image-delete-own','Delete Own Images',NULL,'2022-09-24 10:20:49','2022-09-24 10:20:49'),(48,'book-view-all','View All Books',NULL,'2022-09-24 10:20:49','2022-09-24 10:20:49'),(49,'book-view-own','View Own Books',NULL,'2022-09-24 10:20:49','2022-09-24 10:20:49'),(50,'page-view-all','View All Pages',NULL,'2022-09-24 10:20:49','2022-09-24 10:20:49'),(51,'page-view-own','View Own Pages',NULL,'2022-09-24 10:20:49','2022-09-24 10:20:49'),(52,'chapter-view-all','View All Chapters',NULL,'2022-09-24 10:20:49','2022-09-24 10:20:49'),(53,'chapter-view-own','View Own Chapters',NULL,'2022-09-24 10:20:49','2022-09-24 10:20:49'),(54,'attachment-create-all','Create All Attachments',NULL,'2022-09-24 10:20:49','2022-09-24 10:20:49'),(55,'attachment-create-own','Create Own Attachments',NULL,'2022-09-24 10:20:49','2022-09-24 10:20:49'),(56,'attachment-update-all','Update All Attachments',NULL,'2022-09-24 10:20:49','2022-09-24 10:20:49'),(57,'attachment-update-own','Update Own Attachments',NULL,'2022-09-24 10:20:49','2022-09-24 10:20:49'),(58,'attachment-delete-all','Delete All Attachments',NULL,'2022-09-24 10:20:49','2022-09-24 10:20:49'),(59,'attachment-delete-own','Delete Own Attachments',NULL,'2022-09-24 10:20:49','2022-09-24 10:20:49'),(60,'comment-create-all','Create All Comments',NULL,'2022-09-24 10:20:49','2022-09-24 10:20:49'),(61,'comment-create-own','Create Own Comments',NULL,'2022-09-24 10:20:49','2022-09-24 10:20:49'),(62,'comment-update-all','Update All Comments',NULL,'2022-09-24 10:20:49','2022-09-24 10:20:49'),(63,'comment-update-own','Update Own Comments',NULL,'2022-09-24 10:20:49','2022-09-24 10:20:49'),(64,'comment-delete-all','Delete All Comments',NULL,'2022-09-24 10:20:49','2022-09-24 10:20:49'),(65,'comment-delete-own','Delete Own Comments',NULL,'2022-09-24 10:20:49','2022-09-24 10:20:49'),(66,'bookshelf-view-all','View All BookShelves',NULL,'2022-09-24 10:20:50','2022-09-24 10:20:50'),(67,'bookshelf-view-own','View Own BookShelves',NULL,'2022-09-24 10:20:50','2022-09-24 10:20:50'),(68,'bookshelf-create-all','Create All BookShelves',NULL,'2022-09-24 10:20:50','2022-09-24 10:20:50'),(69,'bookshelf-create-own','Create Own BookShelves',NULL,'2022-09-24 10:20:50','2022-09-24 10:20:50'),(70,'bookshelf-update-all','Update All BookShelves',NULL,'2022-09-24 10:20:50','2022-09-24 10:20:50'),(71,'bookshelf-update-own','Update Own BookShelves',NULL,'2022-09-24 10:20:50','2022-09-24 10:20:50'),(72,'bookshelf-delete-all','Delete All BookShelves',NULL,'2022-09-24 10:20:50','2022-09-24 10:20:50'),(73,'bookshelf-delete-own','Delete Own BookShelves',NULL,'2022-09-24 10:20:50','2022-09-24 10:20:50'),(74,'templates-manage','Manage Page Templates',NULL,'2022-09-24 10:20:50','2022-09-24 10:20:50'),(75,'access-api','Access system API',NULL,'2022-09-24 10:20:50','2022-09-24 10:20:50'),(76,'content-export','Export Content',NULL,'2022-09-24 10:20:50','2022-09-24 10:20:50'),(77,'editor-change','Change page editor',NULL,'2022-09-24 10:20:50','2022-09-24 10:20:50');
/*!40000 ALTER TABLE `role_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_user`
--

DROP TABLE IF EXISTS `role_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_user` (
  `user_id` int unsigned NOT NULL,
  `role_id` int unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `role_user_role_id_foreign` (`role_id`),
  CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_user`
--

LOCK TABLES `role_user` WRITE;
/*!40000 ALTER TABLE `role_user` DISABLE KEYS */;
INSERT INTO `role_user` VALUES (1,1),(3,2),(2,4);
/*!40000 ALTER TABLE `role_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `system_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `external_auth_id` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `mfa_enforced` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `roles_system_name_index` (`system_name`),
  KEY `roles_external_auth_id_index` (`external_auth_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Admin','Administrator of the whole application','2022-09-24 10:20:48','2022-09-24 10:20:48','admin','',0),(2,'Editor','User can edit Books, Chapters & Pages','2022-09-24 10:20:48','2022-09-24 22:19:55','','',0),(3,'Viewer','User can view books & their content behind authentication','2022-09-24 10:20:48','2022-09-24 10:20:48','','',0),(4,'Public','The role given to public visitors if allowed','2022-09-24 10:20:49','2022-09-24 10:20:49','public','',0);
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `search_terms`
--

DROP TABLE IF EXISTS `search_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `search_terms` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `term` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `entity_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `entity_id` int NOT NULL,
  `score` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `search_terms_term_index` (`term`),
  KEY `search_terms_entity_type_index` (`entity_type`),
  KEY `search_terms_entity_type_entity_id_index` (`entity_type`,`entity_id`),
  KEY `search_terms_score_index` (`score`)
) ENGINE=InnoDB AUTO_INCREMENT=1514 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `search_terms`
--

LOCK TABLES `search_terms` WRITE;
/*!40000 ALTER TABLE `search_terms` DISABLE KEYS */;
INSERT INTO `search_terms` VALUES (11,'Image','book',1,49),(12,'stitching','book',1,49),(13,'documentation','book',1,1),(14,'t1','page',1,40),(15,'fdf','page',1,1),(16,'Introduction','chapter',1,48),(17,'Understanding','chapter',1,1),(18,'imagine','chapter',1,1),(19,'stitching','chapter',1,1),(20,'and','chapter',1,1),(21,'information','chapter',1,1),(22,'regarding','chapter',1,1),(23,'it','chapter',1,1),(40,'Image','book',2,48),(41,'alignmenation','book',2,48),(42,'Alignmentation','book',2,1),(43,'of','book',2,1),(44,'different','book',2,1),(45,'slices','book',2,1),(46,'3D','book',3,48),(47,'Model','book',3,48),(48,'Creation','book',3,48),(49,'creating','book',3,1),(50,'of','book',3,2),(51,'the','book',3,2),(52,'3d','book',3,1),(53,'model','book',3,1),(54,'2d','book',3,1),(55,'layers','book',3,1),(58,'STS','book',5,49),(59,'Overview','book',5,48),(60,'An','book',5,1),(61,'overview','book',5,1),(62,'on','book',5,1),(63,'the','book',5,1),(64,'project','book',5,1),(65,'STS','bookshelf',1,49),(66,'Project','bookshelf',1,48),(67,'documentation','bookshelf',1,2),(68,'regarding','bookshelf',1,1),(69,'the','bookshelf',1,1),(70,'Introduction','chapter',2,48),(71,'Scan','chapter',2,1),(72,'Translation','chapter',2,1),(73,'System','chapter',2,1),(74,'What','page',3,40),(75,'is','page',3,41),(76,'STS','page',3,41),(77,'The','page',3,1),(78,'BrainGenix','page',3,1),(79,'Scan','page',3,1),(80,'Translation','page',3,1),(81,'System','page',3,1),(82,'intended','page',3,1),(83,'to','page',3,3),(84,'automate','page',3,1),(85,'the','page',3,3),(86,'process','page',3,1),(87,'from','page',3,1),(88,'whole','page',3,1),(89,'brain','page',3,1),(90,'electron','page',3,1),(91,'microscopy','page',3,1),(92,'EM','page',3,1),(93,'images','page',3,1),(94,'program','page',3,1),(95,'of','page',3,1),(96,'an','page',3,1),(97,'individual','page',3,1),(98,'ready','page',3,1),(99,'run','page',3,1),(100,'on','page',3,1),(101,'NES/ERS','page',3,1),(102,'system','page',3,1),(103,' ','page',3,2),(104,'Theoretical','page',4,41),(105,'workflow','page',4,41),(106,' ','page',4,1),(107,'Scans-','page',4,1),(108,'Image','page',4,1),(109,'cleaning-','page',4,1),(110,'segmentation-','page',4,1),(111,'extraction','page',4,1),(112,'of','page',4,1),(113,'key','page',4,1),(114,'parameters','page',4,2),(115,'ie','page',4,1),(116,'structure-function','page',4,1),(117,'relationships','page',4,1),(118,'for','page',4,1),(119,'individual','page',4,2),(120,'emulation-','page',4,1),(121,'incorporate','page',4,1),(122,'into/onto','page',4,1),(123,'a','page',4,1),(124,'generic','page',4,1),(125,'human','page',4,1),(126,'brain','page',4,1),(127,'model-','page',4,1),(128,'validation-','page',4,1),(129,'upload','page',4,1),(130,'to','page',4,1),(131,'NES','page',4,1),(132,'Questions','page',5,40),(133,'remaining','page',5,40),(134,'Need','page',5,2),(135,'a','page',5,2),(136,'lot','page',5,1),(137,'of','page',5,4),(138,'storage','page',5,1),(139,'parallel','page',5,1),(140,'processing','page',5,1),(141,'what','page',5,2),(142,'do','page',5,1),(143,'you','page',5,1),(144,'need','page',5,2),(145,'to','page',5,3),(146,'combine','page',5,1),(147,'models','page',5,1),(148,'ie','page',5,2),(149,'individual','page',5,3),(150,'&','page',5,1),(151,'species','page',5,1),(152,'Process','page',5,1),(153,'will','page',5,2),(154,'depend','page',5,1),(155,'on','page',5,2),(156,'whether','page',5,2),(157,'or','page',5,4),(158,'not','page',5,2),(159,'functional','page',5,2),(160,'data','page',5,3),(161,'is','page',5,4),(162,'necessary','page',5,1),(163,'In','page',5,1),(164,'other','page',5,1),(165,'words','page',5,1),(166,'software','page',5,3),(167,'may','page',5,1),(168,'vary','page',5,1),(169,'depending','page',5,1),(170,'deriving','page',5,1),(171,'function','page',5,1),(172,'from','page',5,2),(173,'structure','page',5,1),(174,'actually','page',5,1),(175,'feasible','page',5,1),(176,'If','page',5,1),(177,'needed','page',5,1),(178,'there','page',5,1),(179,'be','page',5,1),(180,'process','page',5,2),(181,'that','page',5,1),(182,'integrates','page',5,1),(183,'this','page',5,2),(184,'with','page',5,1),(185,'structural','page',5,1),(186,'Parts','page',5,1),(187,'list','page',5,2),(188,'em','page',5,1),(189,'scans…','page',5,1),(190,'second','page',5,1),(191,'more','page',5,1),(192,'database','page',5,1),(193,'s','page',5,1),(194,'How','page',5,1),(195,'does','page',5,1),(196,'parts','page',5,1),(197,'work','page',5,1),(198,'Don','page',5,1),(199,'t','page',5,1),(200,'all','page',5,1),(201,'cells','page',5,1),(202,'have','page',5,1),(203,'different','page',5,1),(204,'patterns','page',5,2),(205,'arborization','page',5,1),(206,'Different','page',5,1),(207,'dendritic','page',5,1),(208,' \r','page',5,1),(209,'\r','page',5,3),(210,'Perhaps','page',5,1),(211,'part','page',5,1),(212,'makes','page',5,1),(213,'the','page',5,1),(214,'parameters','page',5,1),(215,'includes','page',5,1),(216,'dendrite','page',5,1),(217,'patterning','page',5,1),(218,'number','page',5,1),(219,'certain','page',5,1),(220,'cell','page',5,1),(221,'types','page',5,1),(222,'their','page',5,1),(223,'density ','page',5,1),(224,'Review','page',5,1),(225,'organization','page',5,1),(226,'for','page',5,2),(227,'currently','page',5,1),(228,'used','page',5,1),(229,'EM','page',5,1),(230,'images','page',5,1),(231,'test','page',5,1),(232,'datasets','page',5,1),(233,'validation','page',5,1),(234,' ','page',5,1),(282,'1','page',6,80),(283,'Model','page',6,40),(284,'Data','page',6,40),(285,'Input','page',6,40),(286,'STS','page',6,3),(287,'will','page',6,2),(288,'receive','page',6,2),(289,'input','page',6,3),(290,'from','page',6,3),(291,'the','page',6,4),(292,'image','page',6,1),(293,'database','page',6,1),(294,'so','page',6,1),(295,'images','page',6,1),(296,'are','page',6,1),(297,'already','page',6,1),(298,'stitched','page',6,1),(299,'and','page',6,1),(300,'post-processed','page',6,1),(301,'may','page',6,2),(302,'also','page',6,2),(303,'functional','page',6,2),(304,'data','page',6,5),(305,'if','page',6,1),(306,'some','page',6,1),(307,'necessary','page',6,2),(308,'brain','page',6,2),(309,'cannot','page',6,1),(310,'be','page',6,2),(311,'extracted','page',6,1),(312,'structural','page',6,1),(313,'take','page',6,1),(314,'in','page',6,1),(315,'to-be-developed','page',6,1),(316,'generic','page',6,1),(317,'working','page',6,1),(318,'model','page',6,1),(319,'of','page',6,1),(320,'a','page',6,1),(321,'human','page',6,1),(322,'Any','page',6,1),(323,'other','page',6,1),(324,'additional','page',6,1),(325,'validation','page',6,1),(326,'as','page',6,1),(327,'well','page',6,1),(328,' ','page',6,1),(329,'1','chapter',3,48),(330,'Overview','chapter',3,48),(331,'1','page',7,40),(332,'2','page',7,40),(333,'Image','page',7,40),(334,'stitching','page',7,40),(335,'pipeline','page',7,40),(336,'Incoming','page',7,1),(337,'images','page',7,2),(338,'will','page',7,2),(339,'be','page',7,1),(340,'cleaned','page',7,1),(341,'prior','page',7,1),(342,'to','page',7,1),(343,'input','page',7,1),(344,'STS','page',7,1),(345,'stitch','page',7,1),(346,'the','page',7,1),(347,'together','page',7,1),(348,'into','page',7,1),(349,'layers','page',7,1),(372,'1','page',8,40),(373,'3','page',8,40),(374,'3D','page',8,41),(375,'reconstruction','page',8,40),(376,'pipeline','page',8,40),(377,'Using','page',8,1),(378,'the','page',8,1),(379,'incoming','page',8,1),(380,'microscopy','page',8,1),(381,'data','page',8,1),(382,'STS','page',8,1),(383,'will','page',8,1),(384,'convert','page',8,1),(385,'these','page',8,1),(386,'image','page',8,1),(387,'layers','page',8,1),(388,'to','page',8,1),(389,'a','page',8,1),(390,'model','page',8,1),(391,'using','page',8,1),(392,'machine','page',8,1),(393,'learning','page',8,1),(394,'1','page',9,40),(395,'4','page',9,40),(396,'Structure-to-function','page',9,40),(397,'pipeline','page',9,41),(398,'The','page',9,1),(399,'input','page',9,1),(400,'of','page',9,2),(401,'this','page',9,1),(402,'will','page',9,2),(403,'be','page',9,2),(404,'the','page',9,3),(405,'fully','page',9,1),(406,'labelled','page',9,1),(407,'and','page',9,1),(408,'segmented','page',9,1),(409,'3D','page',9,1),(410,'reconstruction','page',9,1),(411,'Here','page',9,1),(412,'any','page',9,1),(413,'necessary','page',9,1),(414,'additional','page',9,1),(415,'functional','page',9,1),(416,'data','page',9,1),(417,'from','page',9,1),(418,'structure','page',9,1),(419,'brain','page',9,1),(420,'extracted','page',9,1),(421,'using','page',9,1),(422,'to-be-developed','page',9,1),(423,'algorithms','page',9,1),(424,'1','page',10,42),(425,'5','page',10,40),(426,'Individual','page',10,40),(427,'parameter','page',10,40),(428,'application','page',10,40),(429,'pipeline','page',10,40),(430,'This','page',10,1),(431,'structural','page',10,1),(432,'and','page',10,2),(433,'functional','page',10,1),(434,'data','page',10,1),(435,'collected','page',10,1),(436,'in','page',10,1),(437,'points','page',10,1),(438,'2','page',10,1),(439,'3','page',10,1),(440,'will','page',10,1),(441,'now','page',10,1),(442,'be','page',10,1),(443,'integrated','page',10,1),(444,'into','page',10,1),(445,'a','page',10,2),(446,'generic','page',10,1),(447,'working','page',10,2),(448,'model','page',10,2),(449,'of','page',10,1),(450,'the','page',10,2),(451,'human','page',10,1),(452,'brain','page',10,1),(453,'to','page',10,1),(454,'make','page',10,1),(455,'particular','page',10,1),(456,'individual','page',10,1),(457,'1','page',11,40),(458,'6','page',11,40),(459,'Validation','page',11,41),(460,'pipeline','page',11,40),(461,'tests','page',11,1),(462,'will','page',11,1),(463,'be','page',11,1),(464,'performed','page',11,1),(465,'iteratively','page',11,1),(466,'to','page',11,1),(467,'ensure','page',11,1),(468,'the','page',11,2),(469,'behavioral','page',11,1),(470,'and','page',11,1),(471,'functional','page',11,1),(472,'output','page',11,1),(473,'of','page',11,1),(474,'model','page',11,1),(475,'is','page',11,1),(476,'accurate','page',11,1),(477,'1','page',12,40),(478,'7','page',12,40),(479,'Individual','page',12,40),(480,'model','page',12,42),(481,'interfaced','page',12,41),(482,'with','page',12,40),(483,'BrainGenix','page',12,40),(484,'NES','page',12,41),(485,'The','page',12,1),(486,'STS','page',12,1),(487,'will','page',12,1),(488,'be','page',12,2),(489,'standardized','page',12,1),(490,'in','page',12,1),(491,'such','page',12,1),(492,'a','page',12,1),(493,'way','page',12,1),(494,'that','page',12,1),(495,'it','page',12,1),(496,'can','page',12,1),(497,'to','page',12,1),(498,'the','page',12,1),(554,'2','chapter',4,48),(555,'0','chapter',4,48),(556,'Image','chapter',4,48),(557,'stitching','chapter',4,48),(558,'pipeline','chapter',4,48),(559,'The','page',13,40),(560,'image','page',13,43),(561,'pipeline','page',13,40),(562,'Firstly','page',13,1),(563,'features','page',13,2),(564,'are','page',13,2),(565,'identified','page',13,1),(566,'within','page',13,1),(567,'the','page',13,4),(568,'images','page',13,2),(569,'to','page',13,3),(570,'be','page',13,2),(571,'stitched','page',13,1),(572,'Features','page',13,1),(573,'then','page',13,1),(574,'matched','page',13,1),(575,'against','page',13,1),(576,'other','page',13,1),(577,'feature','page',13,1),(578,'maps','page',13,1),(579,'identify','page',13,1),(580,'overlapping','page',13,1),(581,'This','page',13,1),(582,'allows','page',13,1),(583,'aligned','page',13,1),(584,'with','page',13,1),(585,'a','page',13,2),(586,'high','page',13,1),(587,'degree','page',13,1),(588,'of','page',13,1),(589,'accuracy','page',13,1),(590,'Additionally','page',13,1),(591,'position','page',13,2),(592,'data','page',13,1),(593,'assists','page',13,1),(594,'in','page',13,1),(595,'matching','page',13,1),(596,'process','page',13,1),(597,'if','page',13,1),(598,'available','page',13,1),(599,'Next','page',13,1),(600,'overlay','page',13,1),(601,'information','page',13,1),(602,'is','page',13,1),(603,'recorded','page',13,1),(604,'into','page',13,1),(605,'database','page',13,1),(606,'table','page',13,1),(607,'for','page',13,1),(608,'future','page',13,1),(609,'reference','page',13,1),(610,'3','chapter',5,48),(611,'0','chapter',5,48),(612,'3D','chapter',5,48),(613,'reconstruction','chapter',5,48),(614,'pipeline','chapter',5,48),(615,'Introduction','page',14,40),(616,'The','page',14,1),(617,'3D','page',14,2),(618,'reconstruction','page',14,1),(619,'pipeline','page',14,1),(620,'converts','page',14,1),(621,'image','page',14,1),(622,'stack','page',14,1),(623,'data','page',14,1),(624,'into','page',14,1),(625,'a','page',14,1),(626,'3d','page',14,1),(627,'structural','page',14,2),(628,'model','page',14,2),(629,'This','page',14,1),(630,'is','page',14,1),(631,'the','page',14,4),(632,'first','page',14,1),(633,'step','page',14,1),(634,'in','page',14,1),(635,'conversion','page',14,1),(636,'process','page',14,1),(637,'as','page',14,1),(638,'parameters','page',14,1),(639,'are','page',14,1),(640,'extracted','page',14,1),(641,'from','page',14,1),(642,'4','chapter',6,48),(643,'0','chapter',6,48),(644,'Structure-to-function','chapter',6,48),(645,'pipeline','chapter',6,48),(646,'Pipelines','page',15,40),(647,'Here','page',15,1),(648,'is','page',15,1),(649,'an','page',15,1),(650,'example','page',15,1),(651,'of','page',15,1),(652,'a','page',15,1),(653,'pipeline','page',15,1),(654,'that','page',15,1),(655,'extracts','page',15,1),(656,'structural','page',15,1),(657,'and','page',15,2),(658,'functional','page',15,1),(659,'connectivity','page',15,1),(660,'from','page',15,1),(661,'MRI','page',15,1),(662,'data','page',15,1),(663,'the','page',15,1),(664,'output','page',15,1),(665,'can','page',15,1),(666,'be','page',15,1),(667,'used','page',15,1),(668,'to','page',15,1),(669,'simulate','page',15,1),(670,'brain','page',15,1),(671,'activity','page',15,1),(672,'https','page',15,1),(673,'//www','page',15,1),(674,'sciencedirect','page',15,1),(675,'com/science/article/pii/S1053811915002505','page',15,1),(676,'5','chapter',7,48),(677,'0','chapter',7,48),(678,'Individual','chapter',7,48),(679,'parameter','chapter',7,48),(680,'application','chapter',7,48),(681,'pipeline','chapter',7,48),(682,'6','chapter',8,48),(683,'0','chapter',8,48),(684,'Validation','chapter',8,48),(685,'pipeline','chapter',8,48),(686,'why','page',16,40),(687,'validation','page',16,41),(688,'STS','page',16,1),(689,'create','page',16,1),(690,'virtual','page',16,2),(691,'brain','page',16,2),(692,'electron','page',16,1),(693,'microscope','page',16,1),(694,'scans','page',16,1),(695,'for','page',16,2),(696,'At','page',16,1),(697,'the','page',16,3),(698,'end','page',16,1),(699,'of','page',16,1),(700,'translation','page',16,1),(701,'process','page',16,2),(702,'calculate','page',16,1),(703,'error','page',16,4),(704,'%','page',16,2),(705,'and','page',16,2),(706,'minimize','page',16,2),(707,'this','page',16,1),(708,'number','page',16,1),(709,'From','page',16,1),(710,'project','page',16,1),(711,'get','page',16,2),(712,'inputting','page',16,1),(713,'model','page',16,3),(714,'electrode','page',16,2),(715,'properties','page',16,2),(716,'then','page',16,1),(717,'percentage','page',16,3),(718,'out','page',16,1),(719,'based','page',16,1),(720,'on','page',16,2),(721,'simulated','page',16,2),(722,'with','page',16,1),(723,'Then','page',16,1),(724,'iteratively','page',16,1),(725,'using','page',16,1),(726,'predefined','page',16,1),(727,'rules','page',16,1),(728,'until','page',16,1),(729,'is','page',16,1),(730,'less','page',16,1),(731,'than','page',16,1),(732,'n','page',16,1),(733,'7','chapter',9,48),(734,'0','chapter',9,48),(735,'Database','chapter',9,48),(736,'storing','page',17,40),(737,'the','page',17,42),(738,'information','page',17,41),(739,'In','page',17,1),(740,'order','page',17,1),(741,'to','page',17,2),(742,'store','page',17,1),(743,'model','page',17,1),(744,'and','page',17,2),(745,'input','page',17,1),(746,'a','page',17,1),(747,'database','page',17,2),(748,'should','page',17,1),(749,'be','page',17,1),(750,'used','page',17,1),(751,'due','page',17,1),(752,'scalability','page',17,1),(753,'flexibility','page',17,1),(754,'of','page',17,1),(755,'modern','page',17,1),(756,'systems','page',17,1),(757,'Week1','chapter',10,48),(758,'week1','chapter',10,1),(759,'ramp','chapter',10,1),(760,'up','chapter',10,1),(761,'Getting','page',18,40),(762,'access','page',18,41),(763,'to','page',18,46),(764,'Carboncopies','page',18,40),(765,'email','page',18,40),(766,'Access','page',18,4),(767,'CarbonCopies','page',18,4),(768,'mail','page',18,4),(769,'Ask','page',18,1),(770,'the','page',18,1),(771,'project','page',18,1),(772,'lead','page',18,1),(773,'submit','page',18,1),(774,'an','page',18,1),(775,'ticket','page',18,1),(776,'IT','page',18,1),(777,'\r','page',18,1),(778,'Once','page',18,1),(779,'provided','page',18,1),(780,'enable','page',18,1),(781,'2','page',18,1),(782,'factor','page',18,1),(783,'authentication','page',18,1),(784,' ','page',18,3),(785,'Access','page',19,42),(786,'to','page',19,45),(787,'Bookstacks','page',19,40),(788,'Book','page',19,2),(789,'stacks','page',19,2),(790,'Information','page',19,2),(791,'send','page',19,2),(792,'IT','page',19,2),(793,' Specify','page',19,3),(794,'the','page',19,3),(795,'project','page',19,2),(796,'team\r','page',19,1),(797,'books','page',19,1),(798,'which','page',19,1),(799,'you','page',19,1),(800,'need','page',19,1),(801,'access \r','page',19,1),(802,'\r','page',19,7),(803,'STS','page',19,1),(804,'Group','page',19,1),(805,'/','page',19,1),(806,'Image','page',19,1),(807,'Stitching','page',19,1),(808,'General','page',19,1),(809,'Training','page',19,1),(810,'Logging','page',19,1),(811,'information','page',19,1),(812,'access','page',19,1),(813,'end','page',19,1),(814,'date','page',19,1),(815,'if','page',19,1),(816,'needed','page',19,1),(817,' send','page',19,1),(818,'email','page',19,1),(819,'IT@carboncopies','page',19,1),(820,'org','page',19,1),(821,'Access','page',20,40),(822,'to','page',20,47),(823,'Carboncopies','page',20,40),(824,'Gitlab','page',20,44),(825,'account','page',20,40),(826,'Steps','page',20,4),(827,'get','page',20,4),(828,'access','page',20,5),(829,'1','page',20,3),(830,'have','page',20,3),(831,'your','page',20,3),(832,'carbon','page',20,3),(833,'copies','page',20,3),(834,'email','page',20,3),(835,'set','page',20,3),(836,'up','page',20,3),(837,'2','page',20,3),(838,'Send','page',20,3),(839,'following','page',20,3),(840,'information','page',20,4),(841,'Git','page',20,3),(842,'lab','page',20,3),(843,'admin','page',20,3),(844,' groups','page',20,1),(845,'/','page',20,1),(846,'project','page',20,2),(847,'\r','page',20,2),(848,'lead','page',20,1),(849,'info','page',20,1),(850,'termination','page',20,1),(851,'date','page',20,1),(852,' ','page',20,2),(853,'Week2','chapter',11,48),(854,'steps','chapter',11,1),(855,'to','chapter',11,1),(856,'do','chapter',11,1),(857,'for','chapter',11,1),(858,'a','chapter',11,1),(859,'new','chapter',11,1),(860,'hire','chapter',11,1),(861,'Meeting','page',21,40),(862,'invitations','page',21,40),(863,'Invitations','page',21,4),(864,'to','page',21,10),(865,'meetings','page',21,5),(866,'All','page',21,4),(867,'Hands','page',21,3),(868,'To','page',21,3),(869,'get','page',21,3),(870,'access','page',21,3),(871,'hands','page',21,1),(872,'send','page',21,3),(873,'email','page',21,2),(874,'Allhands@carboncopies','page',21,1),(875,'org','page',21,3),(876,'Braingenix','page',21,4),(877,'access ','page',21,1),(878,'Director@Carboncopies','page',21,1),(879,'STS','page',21,3),(880,'sts','page',21,1),(881,'meetups','page',21,1),(882,'emails','page',21,1),(883,'jjose@carboncopies','page',21,1),(884,'Module','page',22,40),(885,'identification','page',22,40),(886,'Research','page',22,3),(887,'modules','page',22,4),(888,'go','page',22,1),(889,'through','page',22,1),(890,'all','page',22,1),(891,'and','page',22,2),(892,'try','page',22,1),(893,'to','page',22,1),(894,'read','page',22,1),(895,'crate','page',22,1),(896,'a','page',22,1),(897,'summary','page',22,1),(898,'of','page',22,1),(899,'the','page',22,1),(900,'task','page',22,1),(901,'you','page',22,1),(902,'are','page',22,1),(903,'interested','page',22,1),(904,'in','page',22,1),(905,'Mentor','page',23,40),(906,'Assignment','page',23,40),(907,'Getting','page',23,4),(908,'a','page',23,6),(909,'mentor','page',23,6),(910,'getting','page',23,1),(911,'is','page',23,1),(912,'needed','page',23,1),(913,'to','page',23,4),(914,'help','page',23,2),(915,'you','page',23,3),(916,'with','page',23,1),(917,'the','page',23,1),(918,'tasks','page',23,1),(919,'can','page',23,1),(920,'ramp','page',23,1),(921,'up','page',23,1),(922,'Ask','page',23,1),(923,'your','page',23,1),(924,'lead','page',23,1),(925,'get','page',23,2),(926,'an','page',23,2),(927,'assigned','page',23,1),(928,'Try','page',23,1),(929,'1','page',23,2),(930,'session','page',23,1),(931,'in','page',23,1),(932,'month','page',23,1),(933,'Progress','page',24,40),(934,'Updates','page',24,40),(935,'Email','page',24,4),(936,'updates','page',24,4),(937,'weekly','page',24,1),(938,'to','page',24,2),(939,'your','page',24,1),(940,'lead','page',24,1),(941,'would','page',24,1),(942,'be','page',24,1),(943,'really','page',24,1),(944,'helpful','page',24,1),(945,'keep','page',24,1),(946,'track','page',24,1),(947,'of','page',24,1),(948,'progress','page',24,1),(949,'in','page',24,1),(950,'the','page',24,1),(951,'organistaion','page',24,1),(957,'STS','book',4,48),(958,'Training','book',4,49),(959,'information','book',4,1),(960,'Training','bookshelf',2,49),(961,'General','bookshelf',2,1),(962,'HR','book',6,48),(963,'Training','book',6,48),(964,'Image','page',2,40),(965,'Stitching','page',2,40),(966,'Incoming','page',2,1),(967,'images','page',2,2),(968,'will','page',2,2),(969,'be','page',2,1),(970,'cleaned','page',2,1),(971,'prior','page',2,1),(972,'to','page',2,1),(973,'input','page',2,1),(974,'STS','page',2,1),(975,'stitch','page',2,1),(976,'the','page',2,4),(977,'together','page',2,1),(978,'into','page',2,1),(979,'layers','page',2,1),(980,' ','page',2,1),(981,'Tool','page',2,6),(982,'Used','page',2,5),(983,'we','page',2,2),(984,'are','page',2,2),(985,'using','page',2,2),(986,'ImageJ','page',2,2),(987,'for','page',2,1),(988,'doing','page',2,1),(989,'image','page',2,1),(990,'stitching','page',2,1),(991,'The','page',2,1),(992,'Fiji','page',2,1),(993,'is','page',2,1),(994,'version','page',2,1),(995,'of','page',2,1),(996,'ImageJ','page',25,45),(997,'is','page',25,2),(998,'a','page',25,4),(999,'Java-based','page',25,1),(1000,'image','page',25,4),(1001,'processing','page',25,5),(1002,'program','page',25,1),(1003,'developed','page',25,3),(1004,'at','page',25,1),(1005,'the','page',25,4),(1006,'National','page',25,1),(1007,'Institutes','page',25,1),(1008,'of','page',25,2),(1009,'Health','page',25,1),(1010,'and','page',25,9),(1011,'Laboratory','page',25,1),(1012,'for','page',25,2),(1013,'Optical','page',25,1),(1014,'Computational','page',25,1),(1015,'Instrumentation','page',25,1),(1016,'LOCI','page',25,1),(1017,'University','page',25,1),(1018,'Wisconsin','page',25,1),(1019,'3','page',25,1),(1020,'4','page',25,1),(1021,'Its','page',25,1),(1022,'first','page',25,1),(1023,'version','page',25,1),(1024,'1','page',25,1),(1025,'x','page',25,1),(1026,'in','page',25,1),(1027,'public','page',25,1),(1028,'domain','page',25,1),(1029,'while','page',25,1),(1030,'ImageJ2','page',25,1),(1031,'related','page',25,1),(1032,'projects','page',25,1),(1033,'SciJava','page',25,1),(1034,'ImgLib2','page',25,1),(1035,'SCIFIO','page',25,1),(1036,'are','page',25,1),(1037,'licensed','page',25,1),(1038,'with','page',25,2),(1039,'permissive','page',25,1),(1040,'BSD-2','page',25,1),(1041,'license','page',25,1),(1042,'5','page',25,1),(1043,'was','page',25,1),(1044,'designed','page',25,1),(1045,'an','page',25,1),(1046,'open','page',25,1),(1047,'architecture','page',25,2),(1048,'that','page',25,1),(1049,'provides','page',25,1),(1050,'extensibility','page',25,1),(1051,'via','page',25,1),(1052,'Java','page',25,2),(1053,'plugins','page',25,3),(1054,'recordable','page',25,1),(1055,'macros','page',25,1),(1056,'6','page',25,1),(1057,'Custom','page',25,1),(1058,'acquisition','page',25,1),(1059,'analysis','page',25,2),(1060,'can','page',25,1),(1061,'be','page',25,1),(1062,'using','page',25,1),(1063,'s','page',25,2),(1064,'built-in','page',25,2),(1065,'editor','page',25,1),(1066,'compiler','page',25,1),(1067,'User-written','page',25,1),(1068,'make','page',25,1),(1069,'it','page',25,2),(1070,'possible','page',25,1),(1071,'to','page',25,3),(1072,'solve','page',25,1),(1073,'many','page',25,1),(1074,'problems','page',25,1),(1075,'from','page',25,1),(1076,'three-dimensional','page',25,1),(1077,'live-cell','page',25,1),(1078,'imaging','page',25,2),(1079,'7','page',25,1),(1080,'radiological','page',25,1),(1081,'8','page',25,1),(1082,'multiple','page',25,1),(1083,'system','page',25,1),(1084,'data','page',25,1),(1085,'comparisons','page',25,1),(1086,'9','page',25,1),(1087,'automated','page',25,1),(1088,'hematology','page',25,1),(1089,'systems','page',25,1),(1090,'10','page',25,1),(1091,'plugin','page',25,1),(1092,'development','page',25,1),(1093,'environment','page',25,1),(1094,'has','page',25,1),(1095,'made','page',25,1),(1096,'popular','page',25,1),(1097,'platform','page',25,1),(1098,'teaching','page',25,1),(1099,'11','page',25,1),(1100,'12','page',25,1),(1101,'Fiji','page',26,45),(1102,'Is','page',26,1),(1103,'Just','page',26,1),(1104,'ImageJ','page',26,1),(1105,'is','page',26,3),(1106,'an','page',26,2),(1107,'open','page',26,1),(1108,'source','page',26,1),(1109,'image','page',26,1),(1110,'processing','page',26,1),(1111,'package','page',26,1),(1112,'based','page',26,1),(1113,'on','page',26,1),(1114,'ImageJ2','page',26,2),(1115,'The','page',26,1),(1116,'main','page',26,1),(1117,'purpose','page',26,1),(1118,'of','page',26,4),(1119,'to','page',26,6),(1120,'provide','page',26,2),(1121,'a','page',26,2),(1122,'distribution','page',26,1),(1123,'bundled','page',26,1),(1124,'with','page',26,1),(1125,'many','page',26,1),(1126,'plugins','page',26,1),(1127,'has','page',26,1),(1128,'integrated','page',26,1),(1129,'update','page',26,1),(1130,'system','page',26,1),(1131,'that','page',26,2),(1132,'gives','page',26,1),(1133,'users','page',26,1),(1134,'consistent','page',26,1),(1135,'menu','page',26,1),(1136,'structure','page',26,1),(1137,'comprehensive','page',26,1),(1138,'documentation','page',26,1),(1139,'in','page',26,2),(1140,'the','page',26,4),(1141,'form','page',26,2),(1142,'detailed','page',26,1),(1143,'algorithm','page',26,1),(1144,'descriptions','page',26,1),(1145,'and','page',26,3),(1146,'tutorials','page',26,1),(1147,'ability','page',26,1),(1148,'avoid','page',26,1),(1149,'having','page',26,1),(1150,'install','page',26,1),(1151,'multiple','page',26,1),(1152,'components','page',26,1),(1153,'from','page',26,1),(1154,'various','page',26,1),(1155,'sources','page',26,1),(1156,'It','page',26,2),(1157,'intended','page',26,1),(1158,'also','page',26,1),(1159,'uses','page',26,1),(1160,'rapid','page',26,1),(1161,'prototyping','page',26,1),(1162,'infrastructure','page',26,1),(1163,'version','page',26,1),(1164,'control','page',26,1),(1165,'systems','page',26,1),(1166,'issue','page',26,1),(1167,'trackers','page',26,1),(1168,'dedicated','page',26,1),(1169,'development','page',26,2),(1170,'channels','page',26,1),(1171,'script','page',26,1),(1172,'editors','page',26,1),(1173,'support','page',26,1),(1174,'scripts','page',26,1),(1175,'such','page',26,1),(1176,'as','page',26,1),(1177,'BeanShell','page',26,1),(1178,'Jython','page',26,1),(1179,'JRuby','page',26,1),(1180,'Clojure','page',26,1),(1181,'Groovy','page',26,1),(1182,'JavaScript','page',26,1),(1183,'etc','page',26,1),(1184,'corresponds','page',26,1),(1185,'person','page',26,1),(1186,'Languages','page',26,1),(1187,'​​and','page',26,1),(1188,'just-in-time','page',26,1),(1189,'Java','page',26,1),(1190,'Image','chapter',12,48),(1191,'J','chapter',12,48),(1192,'information','chapter',12,1),(1193,'regarding','chapter',12,1),(1194,'imageJ','chapter',12,1),(1197,'Fiji','chapter',13,49),(1198,'Information','chapter',13,1),(1199,'regarding','chapter',13,1),(1200,'Tool','chapter',13,1),(1244,'Fiji','page',27,45),(1245,'Installation','page',27,44),(1246,'Download','page',27,6),(1247,'the','page',27,6),(1248,'fiji','page',27,1),(1249,'software','page',27,1),(1250,'package','page',27,1),(1251,'from','page',27,1),(1252,'link','page',27,3),(1253,'below','page',27,1),(1254,'Website','page',27,3),(1255,'https','page',27,2),(1256,'//fiji','page',27,1),(1257,'sc/','page',27,1),(1258,'Direct','page',27,2),(1259,'//downloads','page',27,1),(1260,'imagej','page',27,1),(1261,'net/fiji/latest/fiji-linux64','page',27,1),(1262,'zip','page',27,1),(1263,'Extract','page',27,4),(1264,'and','page',27,5),(1265,'Go','page',27,1),(1266,'to','page',27,2),(1267,'extracted','page',27,1),(1268,'folder','page',27,1),(1269,'run','page',27,1),(1270,'ImageJ-64','page',27,1),(1271,'for','page',27,1),(1272,'first','page',27,3),(1273,'time','page',27,3),(1274,'This','page',27,1),(1275,'has','page',27,1),(1276,'be','page',27,1),(1277,'done','page',27,1),(1278,'You','page',27,1),(1279,'could','page',27,1),(1280,'update','page',27,1),(1281,'it','page',27,1),(1282,'A','page',27,1),(1283,'restart','page',27,1),(1284,'maybe','page',27,1),(1285,'needed','page',27,1),(1286,' ','page',27,1),(1287,'Running','page',27,4),(1288,'Application','page',27,4),(1289,'Run','page',27,1),(1290,'ImageJ-linux64','page',27,1),(1291,'tool','page',27,2),(1292,'The','page',27,1),(1293,'Tool','page',27,1),(1294,'is ','page',27,1),(1295,'is','page',27,2),(1296,'one','page',27,1),(1297,'which ','page',27,1),(1298,'marked','page',27,1),(1299,'with','page',27,1),(1300,'red','page',27,1),(1301,'marker','page',27,1),(1362,'Manuel','page',29,44),(1363,'stitching','page',29,48),(1364,'Introduction','page',29,4),(1365,'to','page',29,5),(1366,'Accessing','page',29,3),(1367,'Sample','page',29,3),(1368,'Datasets','page',29,3),(1369,'Download','page',29,1),(1370,'the','page',29,18),(1371,'datasets','page',29,2),(1372,'from','page',29,3),(1373,'CarbonCopies ','page',29,1),(1374,'google','page',29,1),(1375,'drive','page',29,1),(1376,'location','page',29,2),(1377,'shared','page',29,1),(1378,'drive/BrainGenix/BrainGenix','page',29,1),(1379,'sts/SampleImages/flyEm','page',29,1),(1380,'Dataset','page',29,1),(1381,'Sample/1/22\r','page',29,1),(1382,'\r','page',29,13),(1383,'Extract','page',29,1),(1384,'using','page',29,1),(1385,'archiving','page',29,1),(1386,'tool','page',29,1),(1387,'into','page',29,1),(1388,'directory','page',29,1),(1389,'of','page',29,1),(1390,'your','page',29,1),(1391,'choice','page',29,1),(1392,'Loading','page',29,3),(1393,'images','page',29,3),(1394,'and','page',29,7),(1395,'Stitching','page',29,3),(1396,'open','page',29,1),(1397,'Grid/','page',29,1),(1398,'Collection','page',29,1),(1399,'plugin','page',29,2),(1400,'s','page',29,2),(1401,'list','page',29,1),(1402,' now','page',29,1),(1403,'we','page',29,9),(1404,'select','page',29,1),(1405,'snake','page',29,1),(1406,'model \r','page',29,1),(1407,'now','page',29,1),(1408,'will','page',29,2),(1409,'be','page',29,3),(1410,'Specifying','page',29,1),(1411,'starting','page',29,1),(1412,'file','page',29,3),(1413,'info','page',29,1),(1414,'format','page',29,1),(1415,'The','page',29,2),(1416,'default','page',29,1),(1417,'parameters','page',29,1),(1418,'are','page',29,1),(1419,'used','page',29,1),(1420,'as','page',29,1),(1421,'they','page',29,1),(1422,'seem','page',29,1),(1423,'work','page',29,1),(1424,'fine','page',29,1),(1425,'with','page',29,1),(1426,'current','page',29,1),(1427,'dateset','page',29,1),(1428,' ','page',29,2),(1429,'Specify','page',29,1),(1430,'can','page',29,5),(1431,'see','page',29,3),(1432,'that','page',29,3),(1433,'grid','page',29,1),(1434,'information','page',29,2),(1435,'is','page',29,5),(1436,'estimate','page',29,1),(1437,'how','page',29,1),(1438,'tile','page',29,3),(1439,'structure','page',29,2),(1440,' will','page',29,1),(1441,'like','page',29,1),(1442,'here','page',29,1),(1443,'it','page',29,3),(1444,'an','page',29,1),(1445,'1','page',29,3),(1446,'dimensional','page',29,1),(1447,'know','page',29,2),(1448,'x','page',29,1),(1449,'axis','page',29,2),(1450,'43','page',29,1),(1451,'long','page',29,1),(1452,'y','page',29,1),(1453,'just','page',29,2),(1454,' \r','page',29,2),(1455,'fusing','page',29,1),(1456,'displaying','page',29,1),(1457,'result','page',29,1),(1458,'not','page',29,1),(1459,'storing','page',29,1),(1460,' we','page',29,1),(1461,'there','page',29,1),(1462,'no','page',29,1),(1463,'overlap','page',29,1),(1464,'if','page',29,1),(1465,'case','page',29,1),(1466,'do','page',29,1),(1467,'a','page',29,2),(1468,'fast','page',29,1),(1469,'fusion','page',29,1),(1470,'final','page',29,1),(1471,'fused','page',29,1),(1472,'image','page',29,1),(1473,'for','page',29,1),(1474,'lateral','page',29,1),(1475,'slice','page',29,1),(1476,'notice','page',29,1),(1477,'size','page',29,1),(1478,'resolution','page',29,1),(1479,'has','page',29,1),(1480,'happened','page',29,1),(1481,'References','page',29,1),(1482,'https','page',29,1),(1483,'//imagej','page',29,1),(1484,'net/plugins/image-stitching','page',29,1),(1485,'Volunteer','chapter',14,49),(1486,'match','chapter',14,49),(1487,'documentation','chapter',14,1),(1488,'Accesing','page',30,40),(1489,'Volunteer','page',30,40),(1490,'match','page',30,40),(1491,'step1','page',30,1),(1492,'Fiji','page',31,40),(1493,'installation','page',31,40),(1494,'for','page',31,40),(1495,'Scripting','page',31,40),(1496,'For','page',31,1),(1497,'the','page',31,2),(1498,'task','page',31,1),(1499,'of','page',31,2),(1500,'creation','page',31,1),(1501,'Functions','page',31,1),(1502,'we','page',31,1),(1503,'need','page',31,1),(1504,'to','page',31,2),(1505,'install','page',31,1),(1506,'libraries','page',31,1),(1507,'Java','page',31,1),(1508,'environment','page',31,1),(1509,'is','page',31,1),(1510,'also','page',31,1),(1511,'needed','page',31,1),(1512,'be','page',31,1),(1513,'installed','page',31,1);
/*!40000 ALTER TABLE `search_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  UNIQUE KEY `sessions_id_unique` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `setting_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'string',
  PRIMARY KEY (`setting_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES ('app-color','#206ea7','2022-09-24 10:31:32','2022-09-24 10:31:32','string'),('app-color-light','rgba(32,110,167,0.15)','2022-09-24 10:31:32','2022-09-24 10:31:32','string'),('app-custom-head','','2022-09-24 10:31:32','2022-09-24 10:31:32','string'),('app-disable-comments','false','2022-09-24 10:23:33','2022-09-24 10:23:33','string'),('app-editor','wysiwyg','2022-09-24 10:31:32','2022-09-24 11:23:51','string'),('app-footer-links','[]','2022-09-24 10:31:32','2022-09-24 10:31:32','array'),('app-homepage','','2022-09-24 10:31:32','2022-09-24 10:31:32','string'),('app-homepage-type','default','2022-09-24 10:31:32','2022-09-24 10:31:32','string'),('app-logo','http://192.168.85.128/uploads/images/system/2022-09/untitled-drawing.jpg','2022-09-24 10:31:32','2022-09-24 11:09:02','string'),('app-name','Carboncopies Foundation','2022-09-24 10:31:32','2022-09-24 10:31:32','string'),('app-name-header','true','2022-09-24 10:31:32','2022-09-24 10:31:32','string'),('app-public','true','2022-09-24 10:23:33','2022-09-24 10:23:33','string'),('app-secure-images','false','2022-09-24 10:23:33','2022-09-24 10:23:33','string'),('book-color','#077b70','2022-09-24 10:31:32','2022-09-24 10:31:32','string'),('bookshelf-color','#a94747','2022-09-24 10:31:32','2022-09-24 10:31:32','string'),('chapter-color','#af4d0d','2022-09-24 10:31:32','2022-09-24 10:31:32','string'),('page-color','#206ea7','2022-09-24 10:31:32','2022-09-24 10:31:32','string'),('page-draft-color','#7e50b1','2022-09-24 10:31:32','2022-09-24 10:31:32','string'),('user:1:bookshelf_view_type','grid','2022-09-24 11:20:06','2022-09-24 11:20:08','string'),('user:3:language','en','2022-09-24 22:16:43','2022-09-24 22:16:43','string');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_accounts`
--

DROP TABLE IF EXISTS `social_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_accounts` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `driver` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `driver_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `social_accounts_user_id_index` (`user_id`),
  KEY `social_accounts_driver_index` (`driver`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_accounts`
--

LOCK TABLES `social_accounts` WRITE;
/*!40000 ALTER TABLE `social_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `entity_id` int NOT NULL,
  `entity_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tags_name_index` (`name`),
  KEY `tags_value_index` (`value`),
  KEY `tags_order_index` (`order`),
  KEY `tags_entity_id_entity_type_index` (`entity_id`,`entity_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_invites`
--

DROP TABLE IF EXISTS `user_invites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_invites` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_invites_user_id_index` (`user_id`),
  KEY `user_invites_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_invites`
--

LOCK TABLES `user_invites` WRITE;
/*!40000 ALTER TABLE `user_invites` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_invites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `email_confirmed` tinyint(1) NOT NULL DEFAULT '1',
  `image_id` int NOT NULL DEFAULT '0',
  `external_auth_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `system_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_slug_unique` (`slug`),
  KEY `users_external_auth_id_index` (`external_auth_id`),
  KEY `users_system_name_index` (`system_name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Admin','admin@admin.com','$2y$10$oREqYYdhDL6.hqPOGWmKTOxlA1fJbEjQHfSfeUw2b.YCKIGvO3DYa','r88s27ZgGBJNXSN9he8BuK8NDlAlKCMSZw8HxhcQqkkMi3QbZbcq0v8ETRVt','2022-09-24 10:20:48','2022-09-24 10:20:48',1,0,'',NULL,'admin'),(2,'Guest','guest@example.com','',NULL,'2022-09-24 10:20:49','2022-09-24 10:20:49',1,0,'','public','guest'),(3,'STS Lead','jjose@carboncopies.org','$2y$10$b1C3oJ4Q2uccJQBRl9YfSOP.5dKxMWdKYRI2p8kPRR1XjQ/E2OWlG',NULL,'2022-09-24 22:16:43','2022-09-24 22:16:44',1,14,'',NULL,'sts-lead');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `views`
--

DROP TABLE IF EXISTS `views`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `views` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `viewable_id` int NOT NULL,
  `viewable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `views` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `views_user_id_index` (`user_id`),
  KEY `views_viewable_id_index` (`viewable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `views`
--

LOCK TABLES `views` WRITE;
/*!40000 ALTER TABLE `views` DISABLE KEYS */;
INSERT INTO `views` VALUES (1,1,1,'bookshelf',69,'2022-09-24 10:30:07','2022-09-26 00:53:18'),(2,1,1,'book',18,'2022-09-24 10:45:43','2022-09-26 00:53:19'),(3,1,1,'page',1,'2022-09-24 10:48:42','2022-09-24 10:48:42'),(4,1,1,'chapter',9,'2022-09-24 10:50:06','2022-09-25 11:01:12'),(5,1,2,'page',6,'2022-09-24 10:52:53','2022-09-25 11:01:01'),(6,1,2,'book',4,'2022-09-24 10:58:43','2022-09-25 11:00:55'),(7,1,3,'book',4,'2022-09-24 11:02:15','2022-09-26 00:32:41'),(8,1,4,'book',31,'2022-09-24 11:03:54','2022-09-26 00:53:17'),(9,1,5,'book',30,'2022-09-24 11:07:59','2022-09-26 00:32:29'),(10,1,2,'chapter',9,'2022-09-24 11:11:56','2022-09-24 21:27:13'),(11,1,3,'page',2,'2022-09-24 11:12:59','2022-09-24 21:27:14'),(12,1,4,'page',3,'2022-09-24 11:13:42','2022-09-24 11:19:17'),(13,1,5,'page',2,'2022-09-24 11:16:25','2022-09-24 11:19:23'),(14,1,3,'chapter',11,'2022-09-24 11:22:21','2022-09-24 11:32:12'),(15,1,6,'page',3,'2022-09-24 11:23:18','2022-09-24 11:24:23'),(16,1,7,'page',1,'2022-09-24 11:25:35','2022-09-24 11:25:35'),(17,1,8,'page',3,'2022-09-24 11:26:52','2022-09-24 11:28:10'),(18,1,9,'page',1,'2022-09-24 11:28:52','2022-09-24 11:28:52'),(19,1,10,'page',1,'2022-09-24 11:29:26','2022-09-24 11:29:26'),(20,1,11,'page',1,'2022-09-24 11:29:59','2022-09-24 11:29:59'),(21,1,12,'page',2,'2022-09-24 11:32:00','2022-09-26 00:32:34'),(22,1,4,'chapter',4,'2022-09-24 11:32:45','2022-09-24 11:34:29'),(23,1,13,'page',2,'2022-09-24 11:33:44','2022-09-24 11:34:26'),(24,1,5,'chapter',1,'2022-09-24 11:36:17','2022-09-24 11:36:17'),(25,1,14,'page',1,'2022-09-24 11:36:43','2022-09-24 11:36:43'),(26,1,6,'chapter',1,'2022-09-24 11:37:21','2022-09-24 11:37:21'),(27,1,15,'page',1,'2022-09-24 11:37:49','2022-09-24 11:37:49'),(28,1,7,'chapter',1,'2022-09-24 11:38:15','2022-09-24 11:38:15'),(29,1,8,'chapter',3,'2022-09-24 11:38:57','2022-09-25 10:55:46'),(30,1,16,'page',1,'2022-09-24 11:39:28','2022-09-24 11:39:28'),(31,1,9,'chapter',3,'2022-09-24 11:40:19','2022-09-25 11:00:23'),(32,1,17,'page',3,'2022-09-24 11:40:51','2022-09-25 11:00:25'),(33,1,10,'chapter',12,'2022-09-24 11:44:17','2022-09-26 00:48:39'),(34,1,18,'page',1,'2022-09-24 11:53:10','2022-09-24 11:53:10'),(35,1,19,'page',1,'2022-09-24 12:03:59','2022-09-24 12:03:59'),(36,1,20,'page',1,'2022-09-24 12:11:04','2022-09-24 12:11:04'),(37,1,11,'chapter',9,'2022-09-24 12:11:59','2022-09-26 00:32:46'),(38,1,21,'page',1,'2022-09-24 12:17:05','2022-09-24 12:17:05'),(39,1,22,'page',1,'2022-09-24 12:19:20','2022-09-24 12:19:20'),(40,1,23,'page',2,'2022-09-24 12:24:24','2022-09-26 00:53:00'),(41,1,24,'page',2,'2022-09-24 12:26:25','2022-09-26 00:32:48'),(42,1,2,'bookshelf',15,'2022-09-24 21:13:42','2022-09-26 00:51:12'),(43,1,6,'book',5,'2022-09-24 21:19:00','2022-09-26 00:51:10'),(44,1,25,'page',2,'2022-09-24 21:39:13','2022-09-25 11:01:04'),(45,1,26,'page',2,'2022-09-24 21:47:49','2022-09-25 11:01:09'),(46,1,12,'chapter',1,'2022-09-24 21:51:04','2022-09-24 21:51:04'),(47,1,13,'chapter',12,'2022-09-24 21:51:27','2022-09-26 00:53:22'),(48,1,27,'page',8,'2022-09-24 22:09:42','2022-09-26 00:47:33'),(49,3,1,'bookshelf',6,'2022-09-24 22:17:00','2022-09-25 11:15:50'),(50,3,1,'book',8,'2022-09-24 22:17:03','2022-09-25 11:20:40'),(51,3,13,'chapter',9,'2022-09-24 22:17:05','2022-09-25 11:17:15'),(52,3,27,'page',6,'2022-09-24 22:17:08','2022-09-25 06:09:09'),(53,1,29,'page',8,'2022-09-25 10:08:31','2022-09-26 00:53:24'),(54,1,14,'chapter',1,'2022-09-25 10:57:33','2022-09-25 10:57:33'),(55,1,30,'page',2,'2022-09-25 10:57:52','2022-09-25 10:57:55'),(56,3,4,'book',1,'2022-09-25 11:15:48','2022-09-25 11:15:48'),(57,3,31,'page',1,'2022-09-25 11:20:37','2022-09-25 11:20:37');
/*!40000 ALTER TABLE `views` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webhook_tracked_events`
--

DROP TABLE IF EXISTS `webhook_tracked_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `webhook_tracked_events` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `webhook_id` int NOT NULL,
  `event` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `webhook_tracked_events_event_index` (`event`),
  KEY `webhook_tracked_events_webhook_id_index` (`webhook_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webhook_tracked_events`
--

LOCK TABLES `webhook_tracked_events` WRITE;
/*!40000 ALTER TABLE `webhook_tracked_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `webhook_tracked_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webhooks`
--

DROP TABLE IF EXISTS `webhooks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `webhooks` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL,
  `endpoint` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `timeout` int unsigned NOT NULL DEFAULT '3',
  `last_error` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_called_at` timestamp NULL DEFAULT NULL,
  `last_errored_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `webhooks_name_index` (`name`),
  KEY `webhooks_active_index` (`active`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webhooks`
--

LOCK TABLES `webhooks` WRITE;
/*!40000 ALTER TABLE `webhooks` DISABLE KEYS */;
/*!40000 ALTER TABLE `webhooks` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-25 17:45:36
