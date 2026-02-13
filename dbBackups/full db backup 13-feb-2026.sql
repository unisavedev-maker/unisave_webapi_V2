-- MySQL dump 10.13  Distrib 8.0.45, for Linux (x86_64)
--
-- Host: localhost    Database: dev_myunisavedb
-- ------------------------------------------------------
-- Server version	8.0.45-0ubuntu0.22.04.1

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
-- Table structure for table `app_resource`
--

DROP TABLE IF EXISTS `app_resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_resource` (
  `resourceidpk` int NOT NULL AUTO_INCREMENT,
  `resource_type` varchar(45) DEFAULT NULL,
  `base_url` varchar(45) DEFAULT NULL,
  `folder_name` varchar(45) DEFAULT NULL,
  `isActive` tinyint DEFAULT '0',
  `isDeleted` tinyint DEFAULT '0',
  `isDisabled` tinyint DEFAULT '0',
  `isProduction` tinyint DEFAULT '0',
  PRIMARY KEY (`resourceidpk`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_resource`
--

LOCK TABLES `app_resource` WRITE;
/*!40000 ALTER TABLE `app_resource` DISABLE KEYS */;
INSERT INTO `app_resource` VALUES (1,'BusinessImage','1','Assets/business_images/',1,0,0,0),(2,'BrandImage','1','Assets/brand_images/',1,0,0,0),(3,'StoreImage','1','Assets/store_images/',1,0,0,0),(4,'UserImage','1','Assets/users_images/',1,0,0,0),(5,'CategoryImage','1','Assets/category_images/',1,0,0,0),(6,'HomeAddImage','1','Assets/homeadd_images/',1,0,0,0),(7,'Logos','1','Assets/logo_images/',1,0,0,0);
/*!40000 ALTER TABLE `app_resource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_providers`
--

DROP TABLE IF EXISTS `auth_providers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_providers` (
  `provider_id` int NOT NULL AUTO_INCREMENT,
  `provider_name` varchar(50) NOT NULL,
  PRIMARY KEY (`provider_id`),
  UNIQUE KEY `provider_name` (`provider_name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_providers`
--

LOCK TABLES `auth_providers` WRITE;
/*!40000 ALTER TABLE `auth_providers` DISABLE KEYS */;
INSERT INTO `auth_providers` VALUES (1,'email'),(4,'Facebook'),(2,'Google'),(3,'Twitter');
/*!40000 ALTER TABLE `auth_providers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `base_url`
--

DROP TABLE IF EXISTS `base_url`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `base_url` (
  `url_id` bigint NOT NULL AUTO_INCREMENT,
  `urltype` bigint DEFAULT NULL,
  `url_name` varchar(45) DEFAULT NULL,
  `url` varchar(45) DEFAULT NULL,
  `isActive` tinyint DEFAULT NULL,
  `isDisabled` tinyint DEFAULT NULL,
  `isDeleted` tinyint DEFAULT NULL,
  PRIMARY KEY (`url_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `base_url`
--

LOCK TABLES `base_url` WRITE;
/*!40000 ALTER TABLE `base_url` DISABLE KEYS */;
INSERT INTO `base_url` VALUES (1,1,'Base','http://dev.apiunisave.myunisave.com/',1,0,0);
/*!40000 ALTER TABLE `base_url` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brand_master`
--

DROP TABLE IF EXISTS `brand_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brand_master` (
  `brandidPK` bigint NOT NULL AUTO_INCREMENT,
  `business_idpkfk` int DEFAULT NULL,
  `brand_name` varchar(45) DEFAULT NULL,
  `business_regno` varchar(45) DEFAULT NULL,
  `businessname` varchar(45) DEFAULT NULL,
  `businessaddress` varchar(2000) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `logo` varchar(45) DEFAULT 'noimage.png',
  `website` varchar(45) DEFAULT NULL,
  `isActive` tinyint DEFAULT '0',
  `isDeleted` tinyint DEFAULT '0',
  `isDisabled` tinyint DEFAULT '0',
  `createddate` datetime DEFAULT CURRENT_TIMESTAMP,
  `createdby` datetime DEFAULT NULL,
  `updateddate` datetime DEFAULT NULL,
  `updatedby` datetime DEFAULT NULL,
  PRIMARY KEY (`brandidPK`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brand_master`
--

LOCK TABLES `brand_master` WRITE;
/*!40000 ALTER TABLE `brand_master` DISABLE KEYS */;
INSERT INTO `brand_master` VALUES (1,1,'Tanishq',NULL,NULL,NULL,NULL,NULL,'noimage.png',NULL,0,0,0,'2025-04-21 11:47:48',NULL,NULL,NULL),(2,1,'Tata Motors',NULL,NULL,NULL,NULL,NULL,'tata.png',NULL,0,0,0,'2025-04-21 11:47:48',NULL,NULL,NULL),(3,1,'Titan',NULL,NULL,NULL,NULL,NULL,'titan.png',NULL,0,0,0,'2025-04-21 11:47:48',NULL,NULL,NULL),(4,1,'Chroma',NULL,NULL,NULL,NULL,NULL,'noimage.png',NULL,0,0,0,'2025-04-21 11:47:48',NULL,NULL,NULL),(5,2,'Dominos',NULL,NULL,NULL,NULL,NULL,'noimage.png',NULL,0,0,0,'2025-04-21 11:47:48',NULL,NULL,NULL),(6,2,'Dunkin',NULL,NULL,NULL,NULL,NULL,'noimage.png',NULL,0,0,0,'2025-04-21 11:47:48',NULL,NULL,NULL),(7,3,'McDonalds',NULL,NULL,NULL,NULL,NULL,'mcdonalds.png',NULL,0,0,0,'2025-04-21 11:47:48',NULL,NULL,NULL);
/*!40000 ALTER TABLE `brand_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `business_master`
--

DROP TABLE IF EXISTS `business_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `business_master` (
  `businessidPK` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `image` varchar(45) DEFAULT NULL,
  `description` text,
  `isActive` tinyint DEFAULT NULL,
  `isDeleted` tinyint DEFAULT NULL,
  `isDisabled` tinyint DEFAULT NULL,
  `createddate` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`businessidPK`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `business_master`
--

LOCK TABLES `business_master` WRITE;
/*!40000 ALTER TABLE `business_master` DISABLE KEYS */;
INSERT INTO `business_master` VALUES (1,'Tata Enterprises','tata.jpg','<h2>About Tata</h2>\n<p>\n  Tata Group is one of India\'s largest and most respected business conglomerates, founded in 1868 by Jamsetji Tata. With operations spanning over 100 countries across six continents, the Tata Group has a significant presence in a wide range of industries including automotive, steel, IT services, telecommunications, hospitality, and more.\n</p>\n<p>\n  Guided by a commitment to integrity, excellence, and community service, Tata companies are driven by a common vision of improving the quality of life for the communities they serve globally. Notable Tata companies include Tata Motors, Tata Steel, TCS, Tata Power, and Tata Consumer Products.\n</p>\n<p>\n  Learn more on the official website:\n  <a href=\"https://www.tata.com\" target=\"_blank\" style=\"text-decoration: none;\">\n    <img src=\"https://img.icons8.com/ios-filled/24/000000/internet.png\" alt=\"Website Icon\" style=\"vertical-align: middle; margin-right: 5px;\" />\n    www.tata.com\n  </a>\n</p>',NULL,NULL,NULL,'2025-04-21 11:47:48'),(2,'Jubilant Food works',NULL,NULL,NULL,NULL,NULL,'2025-04-21 11:47:48'),(3,'McDonalds',NULL,NULL,NULL,NULL,NULL,'2025-04-21 11:47:48');
/*!40000 ALTER TABLE `business_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `category_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `imagename` varchar(45) DEFAULT 'noimage.png',
  `isActive` tinyint DEFAULT '0',
  `isDisabled` tinyint DEFAULT '0',
  `isDeleted` tinyint DEFAULT '0',
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Restaurent','2024-06-03 05:59:00','restaurant.png',0,0,0),(2,'Groceries','2024-06-03 05:59:00','groceries.png',0,0,0),(3,'Clothing','2024-06-03 05:59:00','clothing.png',0,0,0),(7,'Jewellery','2025-04-21 11:19:37','jewellery.png',0,0,0),(8,'Automobile','2025-04-21 11:19:37','automobile.png',0,0,0),(9,'Watches','2025-04-21 11:19:37','watches.png',0,0,0),(10,'Electronics','2025-04-21 11:19:37','electronics.png',0,0,0),(11,'Restaurant','2025-04-21 11:19:37','restaurant.png',0,0,0),(12,'Jewellery','2025-04-21 11:47:48','noimage.png',0,0,0),(13,'Automobile','2025-04-21 11:47:48','noimage.png',0,0,0),(14,'Watches','2025-04-21 11:47:48','noimage.png',0,0,0),(15,'Electronics','2025-04-21 11:47:48','noimage.png',0,0,0),(16,'Restaurant','2025-04-21 11:47:48','noimage.png',0,0,0);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `external_shares`
--

DROP TABLE IF EXISTS `external_shares`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `external_shares` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `source_user_id` bigint unsigned NOT NULL,
  `target_participant_id` bigint unsigned NOT NULL,
  `percentage` decimal(5,2) NOT NULL,
  `request_id` bigint unsigned DEFAULT NULL,
  `status` enum('active','revoked') DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `external_shares`
--

LOCK TABLES `external_shares` WRITE;
/*!40000 ALTER TABLE `external_shares` DISABLE KEYS */;
/*!40000 ALTER TABLE `external_shares` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `external_shares_new`
--

DROP TABLE IF EXISTS `external_shares_new`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `external_shares_new` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `source_user_id` bigint unsigned NOT NULL,
  `target_participant_id` bigint unsigned NOT NULL,
  `percentage` decimal(5,2) NOT NULL,
  `request_id` bigint unsigned DEFAULT NULL,
  `status` enum('active','revoked') DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `external_shares_new`
--

LOCK TABLES `external_shares_new` WRITE;
/*!40000 ALTER TABLE `external_shares_new` DISABLE KEYS */;
/*!40000 ALTER TABLE `external_shares_new` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `financial_ledger`
--

DROP TABLE IF EXISTS `financial_ledger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `financial_ledger` (
  `ledger_id` bigint NOT NULL AUTO_INCREMENT,
  `request_id` bigint NOT NULL,
  `owner_id` bigint NOT NULL,
  `requester_id` bigint NOT NULL,
  `participent_id` bigint NOT NULL,
  `earning_id` bigint NOT NULL,
  `applied_percent` decimal(5,2) NOT NULL,
  `base_amount` decimal(15,2) NOT NULL,
  `amount` decimal(15,2) NOT NULL,
  `earning_date` date NOT NULL,
  `earning_month` char(7) NOT NULL,
  `entry_type` enum('CREDIT','DEBIT') NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `reference_ledger_id` bigint DEFAULT NULL,
  PRIMARY KEY (`ledger_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `financial_ledger`
--

LOCK TABLES `financial_ledger` WRITE;
/*!40000 ALTER TABLE `financial_ledger` DISABLE KEYS */;
INSERT INTO `financial_ledger` VALUES (1,2,36,36,2,10001,5.00,25000.00,1250.00,'2026-02-12','2026-02','CREDIT','Share earning 5.00% from owner 36','2026-02-12 17:03:34',NULL),(2,3,36,36,3,10001,2.00,25000.00,500.00,'2026-02-12','2026-02','CREDIT','Share earning 2.00% from owner 36','2026-02-12 17:03:34',NULL),(3,8,36,36,5,10001,5.00,25000.00,1250.00,'2026-02-12','2026-02','CREDIT','Share earning 5.00% from owner 36','2026-02-12 17:03:34',NULL),(4,12,36,37,7,10001,6.00,25000.00,1500.00,'2026-02-12','2026-02','CREDIT','Share earning 6.00% from owner 36','2026-02-12 17:03:34',NULL),(5,13,36,36,8,10001,2.00,25000.00,500.00,'2026-02-12','2026-02','CREDIT','Share earning 2.00% from owner 36','2026-02-12 17:03:34',NULL),(6,16,36,36,10,10001,2.00,25000.00,500.00,'2026-02-12','2026-02','CREDIT','Share earning 2.00% from owner 36','2026-02-12 17:03:34',NULL),(7,7,37,36,3,10001,5.00,25000.00,1250.00,'2026-02-12','2026-02','CREDIT','Share earning 5.00% from owner 37','2026-02-12 17:04:23',NULL),(8,9,37,36,5,10001,5.00,25000.00,1250.00,'2026-02-12','2026-02','CREDIT','Share earning 5.00% from owner 37','2026-02-12 17:04:23',NULL),(9,11,37,37,7,10001,10.00,25000.00,2500.00,'2026-02-12','2026-02','CREDIT','Share earning 10.00% from owner 37','2026-02-12 17:04:23',NULL),(10,7,37,36,3,10001,5.00,25000.00,1250.00,'2026-01-12','2026-01','CREDIT','Share earning 5.00% from owner 37','2026-02-12 17:05:05',NULL),(11,9,37,36,5,10001,5.00,25000.00,1250.00,'2026-01-12','2026-01','CREDIT','Share earning 5.00% from owner 37','2026-02-12 17:05:05',NULL),(12,11,37,37,7,10001,10.00,25000.00,2500.00,'2026-01-12','2026-01','CREDIT','Share earning 10.00% from owner 37','2026-02-12 17:05:05',NULL),(13,7,37,36,3,10001,5.00,5000.00,250.00,'2025-12-12','2025-12','CREDIT','Share earning 5.00% from owner 37','2026-02-12 17:06:05',NULL),(14,9,37,36,5,10001,5.00,5000.00,250.00,'2025-12-12','2025-12','CREDIT','Share earning 5.00% from owner 37','2026-02-12 17:06:05',NULL),(15,11,37,37,7,10001,10.00,5000.00,500.00,'2025-12-12','2025-12','CREDIT','Share earning 10.00% from owner 37','2026-02-12 17:06:05',NULL),(16,7,37,36,3,10001,5.00,5000.00,250.00,'2025-11-12','2025-11','CREDIT','Share earning 5.00% from owner 37','2026-02-12 17:06:13',NULL),(17,9,37,36,5,10001,5.00,5000.00,250.00,'2025-11-12','2025-11','CREDIT','Share earning 5.00% from owner 37','2026-02-12 17:06:13',NULL),(18,11,37,37,7,10001,10.00,5000.00,500.00,'2025-11-12','2025-11','CREDIT','Share earning 10.00% from owner 37','2026-02-12 17:06:13',NULL),(19,7,37,36,3,10001,5.00,300.00,15.00,'2025-10-12','2025-10','CREDIT','Share earning 5.00% from owner 37','2026-02-12 17:06:27',NULL),(20,9,37,36,5,10001,5.00,300.00,15.00,'2025-10-12','2025-10','CREDIT','Share earning 5.00% from owner 37','2026-02-12 17:06:27',NULL),(21,11,37,37,7,10001,10.00,300.00,30.00,'2025-10-12','2025-10','CREDIT','Share earning 10.00% from owner 37','2026-02-12 17:06:27',NULL),(22,2,36,36,2,10001,5.00,30000.00,1500.00,'2025-09-12','2025-09','CREDIT','Share earning 5.00% from owner 36','2026-02-12 17:07:49',NULL),(23,3,36,36,3,10001,2.00,30000.00,600.00,'2025-09-12','2025-09','CREDIT','Share earning 2.00% from owner 36','2026-02-12 17:07:49',NULL),(24,8,36,36,5,10001,5.00,30000.00,1500.00,'2025-09-12','2025-09','CREDIT','Share earning 5.00% from owner 36','2026-02-12 17:07:49',NULL),(25,12,36,37,7,10001,6.00,30000.00,1800.00,'2025-09-12','2025-09','CREDIT','Share earning 6.00% from owner 36','2026-02-12 17:07:49',NULL),(26,13,36,36,8,10001,2.00,30000.00,600.00,'2025-09-12','2025-09','CREDIT','Share earning 2.00% from owner 36','2026-02-12 17:07:49',NULL),(27,16,36,36,10,10001,2.00,30000.00,600.00,'2025-09-12','2025-09','CREDIT','Share earning 2.00% from owner 36','2026-02-12 17:07:49',NULL),(28,12,36,37,7,10001,100.00,30000.00,30000.00,'2025-09-12','2025-09','CREDIT','Share earning 100.00% from owner 36','2026-02-12 17:15:40',NULL);
/*!40000 ALTER TABLE `financial_ledger` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_page_ad`
--

DROP TABLE IF EXISTS `home_page_ad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `home_page_ad` (
  `ad_idPK` int NOT NULL AUTO_INCREMENT,
  `ad_name` varchar(45) DEFAULT NULL,
  `imagename` varchar(45) DEFAULT NULL,
  `externalurl` varchar(255) DEFAULT NULL,
  `navigationlink` varchar(45) DEFAULT NULL,
  `adtype` bigint DEFAULT NULL,
  `isActive` tinyint DEFAULT '0',
  `isDeleted` tinyint DEFAULT '0',
  `isDisabled` tinyint DEFAULT NULL,
  `createddate` datetime DEFAULT CURRENT_TIMESTAMP,
  `createdby` bigint DEFAULT NULL,
  `disp_sequance` bigint DEFAULT NULL,
  PRIMARY KEY (`ad_idPK`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_page_ad`
--

LOCK TABLES `home_page_ad` WRITE;
/*!40000 ALTER TABLE `home_page_ad` DISABLE KEYS */;
INSERT INTO `home_page_ad` VALUES (1,NULL,'advertiesement.jpg',NULL,NULL,NULL,1,0,NULL,'2025-05-23 04:11:58',NULL,1),(2,NULL,'cocah.jpg',NULL,NULL,NULL,1,0,NULL,'2025-05-23 04:47:52',NULL,2),(3,NULL,'addd.png',NULL,NULL,NULL,1,0,NULL,'2025-05-23 04:49:25',NULL,3);
/*!40000 ALTER TABLE `home_page_ad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `items` (
  `item_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `category_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` VALUES (1,'Laptop',1,'2024-06-03 05:59:01'),(2,'Apple',2,'2024-06-03 05:59:01'),(3,'Jeans',3,'2024-06-03 05:59:01');
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mstr_relationship`
--

DROP TABLE IF EXISTS `mstr_relationship`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mstr_relationship` (
  `r_id` int NOT NULL AUTO_INCREMENT,
  `relationshipname` varchar(45) DEFAULT NULL,
  `caption` varchar(45) DEFAULT NULL,
  `isActive` tinyint DEFAULT '1',
  `isDeleted` tinyint DEFAULT '0',
  `isDisabled` tinyint DEFAULT '0',
  PRIMARY KEY (`r_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mstr_relationship`
--

LOCK TABLES `mstr_relationship` WRITE;
/*!40000 ALTER TABLE `mstr_relationship` DISABLE KEYS */;
INSERT INTO `mstr_relationship` VALUES (1,'Father',NULL,1,0,0),(2,'Mother',NULL,1,0,0),(3,'Brother',NULL,1,0,0);
/*!40000 ALTER TABLE `mstr_relationship` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `owner_earnings`
--

DROP TABLE IF EXISTS `owner_earnings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `owner_earnings` (
  `earning_id` bigint NOT NULL AUTO_INCREMENT,
  `owner_id` bigint NOT NULL,
  `amount` decimal(15,2) NOT NULL,
  `source` varchar(100) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`earning_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `owner_earnings`
--

LOCK TABLES `owner_earnings` WRITE;
/*!40000 ALTER TABLE `owner_earnings` DISABLE KEYS */;
/*!40000 ALTER TABLE `owner_earnings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `owner_wallet_ledger`
--

DROP TABLE IF EXISTS `owner_wallet_ledger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `owner_wallet_ledger` (
  `ledger_id` bigint NOT NULL AUTO_INCREMENT,
  `owner_id` bigint NOT NULL,
  `earning_id` bigint DEFAULT NULL,
  `request_id` bigint DEFAULT NULL,
  `entry_type` enum('CREDIT','DEBIT') NOT NULL,
  `amount` decimal(15,2) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `transaction_date` date NOT NULL,
  `transaction_month` char(7) NOT NULL,
  `reference_ledger_id` bigint DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ledger_id`),
  KEY `idx_owner_date` (`owner_id`,`transaction_date`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `owner_wallet_ledger`
--

LOCK TABLES `owner_wallet_ledger` WRITE;
/*!40000 ALTER TABLE `owner_wallet_ledger` DISABLE KEYS */;
INSERT INTO `owner_wallet_ledger` VALUES (1,136,10001,NULL,'CREDIT',25000.00,'Owner earning credit','2026-02-12','2026-02',NULL,'2026-02-12 17:03:18'),(2,36,10001,NULL,'CREDIT',25000.00,'Owner earning credit','2026-02-12','2026-02',NULL,'2026-02-12 17:03:34'),(3,37,10001,NULL,'CREDIT',25000.00,'Owner earning credit','2026-02-12','2026-02',NULL,'2026-02-12 17:04:23'),(4,37,10001,NULL,'CREDIT',25000.00,'Owner earning credit','2026-01-12','2026-01',NULL,'2026-02-12 17:05:05'),(5,37,10001,NULL,'CREDIT',5000.00,'Owner earning credit','2025-12-12','2025-12',NULL,'2026-02-12 17:06:05'),(6,37,10001,NULL,'CREDIT',5000.00,'Owner earning credit','2025-11-12','2025-11',NULL,'2026-02-12 17:06:13'),(7,37,10001,NULL,'CREDIT',300.00,'Owner earning credit','2025-10-12','2025-10',NULL,'2026-02-12 17:06:27'),(8,36,10001,NULL,'CREDIT',30000.00,'Owner earning credit','2025-09-12','2025-09',NULL,'2026-02-12 17:07:49'),(9,36,10001,NULL,'CREDIT',30000.00,'Owner earning credit','2025-09-12','2025-09',NULL,'2026-02-12 17:15:40');
/*!40000 ALTER TABLE `owner_wallet_ledger` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recepent_guest_users`
--

DROP TABLE IF EXISTS `recepent_guest_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recepent_guest_users` (
  `recguesid` int NOT NULL AUTO_INCREMENT,
  `sharedidfrom` bigint DEFAULT NULL,
  `sharedidto` bigint DEFAULT NULL,
  `sharetypeid` bigint DEFAULT NULL,
  `sharepercentage` decimal(10,2) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `age` varchar(45) DEFAULT NULL,
  `imagename` varchar(45) DEFAULT NULL,
  `accepteddate` datetime DEFAULT NULL,
  `createddate` datetime DEFAULT CURRENT_TIMESTAMP,
  `isAccepted` tinyint DEFAULT '0',
  `isDeleted` tinyint DEFAULT '0',
  `isDisabled` tinyint DEFAULT '0',
  `isActive` tinyint DEFAULT NULL,
  `recordstatusid` bigint DEFAULT NULL,
  PRIMARY KEY (`recguesid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recepent_guest_users`
--

LOCK TABLES `recepent_guest_users` WRITE;
/*!40000 ALTER TABLE `recepent_guest_users` DISABLE KEYS */;
INSERT INTO `recepent_guest_users` VALUES (1,20,NULL,1,10.00,'Maneesh','maneesh@gmail.com','20',NULL,NULL,'2025-11-10 11:59:10',0,0,0,NULL,NULL);
/*!40000 ALTER TABLE `recepent_guest_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `share_allocations`
--

DROP TABLE IF EXISTS `share_allocations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `share_allocations` (
  `allocation_id` bigint NOT NULL AUTO_INCREMENT,
  `owner_id` bigint NOT NULL,
  `recipient_id` bigint NOT NULL,
  `percent_share` decimal(5,2) NOT NULL,
  `source_request_id` bigint DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `isActive` tinyint DEFAULT '1',
  `isDeleted` tinyint DEFAULT '0',
  `isDisabled` tinyint DEFAULT '0',
  PRIMARY KEY (`allocation_id`),
  UNIQUE KEY `ux_owner_rec` (`owner_id`,`recipient_id`),
  CONSTRAINT `chk_alloc_percent` CHECK (((`percent_share` >= 0) and (`percent_share` <= 100)))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `share_allocations`
--

LOCK TABLES `share_allocations` WRITE;
/*!40000 ALTER TABLE `share_allocations` DISABLE KEYS */;
/*!40000 ALTER TABLE `share_allocations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `share_requests`
--

DROP TABLE IF EXISTS `share_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `share_requests` (
  `request_id` bigint NOT NULL AUTO_INCREMENT,
  `owner_id` bigint NOT NULL,
  `requester_id` bigint NOT NULL,
  `participent_id` int DEFAULT NULL,
  `requested_percent` decimal(5,2) NOT NULL,
  `share_type_id` int DEFAULT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `responded_at` timestamp NULL DEFAULT NULL,
  `isActive` tinyint DEFAULT '1',
  `isDeleted` tinyint DEFAULT '0',
  `isDisabled` tinyint DEFAULT '0',
  PRIMARY KEY (`request_id`),
  CONSTRAINT `chk_req_percent` CHECK (((`requested_percent` >= 0) and (`requested_percent` <= 100)))
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `share_requests`
--

LOCK TABLES `share_requests` WRITE;
/*!40000 ALTER TABLE `share_requests` DISABLE KEYS */;
INSERT INTO `share_requests` VALUES (1,36,36,1,5.00,1,2,'2026-02-12 15:12:31','2026-02-12 15:12:31',0,1,0),(2,36,36,2,5.00,1,2,'2026-02-12 15:12:44','2026-02-12 15:12:44',0,1,0),(3,36,36,3,2.00,1,2,'2026-02-12 15:12:57','2026-02-12 15:12:57',0,1,0),(4,36,36,4,3.00,1,2,'2026-02-12 15:13:08','2026-02-12 15:13:08',0,1,0),(5,37,36,1,5.00,2,2,'2026-02-12 15:13:33','2026-02-12 15:56:17',0,1,0),(6,37,36,2,2.00,2,2,'2026-02-12 15:13:33','2026-02-12 16:01:42',0,1,0),(7,37,36,3,5.00,2,2,'2026-02-12 15:13:33','2026-02-12 16:03:10',1,0,0),(8,36,36,5,5.00,1,2,'2026-02-12 15:26:41','2026-02-12 15:26:41',0,1,0),(9,37,36,5,5.00,2,2,'2026-02-12 15:27:55','2026-02-12 16:56:31',1,0,0),(10,37,37,6,5.00,1,2,'2026-02-12 16:02:22','2026-02-12 16:02:22',0,1,0),(11,37,37,7,80.00,1,2,'2026-02-12 16:04:01','2026-02-12 16:04:01',1,0,0),(12,36,37,7,10.00,2,2,'2026-02-12 16:04:28','2026-02-12 16:04:53',1,0,0),(13,36,36,8,2.00,1,2,'2026-02-12 16:46:53','2026-02-12 16:46:53',0,1,0),(14,37,36,8,5.00,2,2,'2026-02-12 16:47:20','2026-02-12 16:56:39',0,1,0),(15,37,37,9,5.00,1,2,'2026-02-12 16:52:12','2026-02-12 16:52:12',0,1,0),(16,36,36,10,2.00,1,2,'2026-02-12 16:54:26','2026-02-12 16:54:26',0,1,0),(17,37,36,10,5.00,2,2,'2026-02-12 16:55:29','2026-02-12 16:56:46',0,1,0),(18,36,36,11,80.00,1,2,'2026-02-13 07:12:22','2026-02-13 07:12:22',1,0,0),(19,37,36,11,5.00,2,2,'2026-02-13 07:12:52','2026-02-13 07:14:02',1,0,0);
/*!40000 ALTER TABLE `share_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `share_requests_new`
--

DROP TABLE IF EXISTS `share_requests_new`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `share_requests_new` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `requester_user_id` bigint unsigned NOT NULL,
  `beneficiary_participant_id` bigint unsigned NOT NULL,
  `from_user_id` bigint unsigned NOT NULL,
  `requested_percentage` decimal(5,2) NOT NULL,
  `status` enum('pending','accepted','rejected','cancelled') DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `responded_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `share_requests_new`
--

LOCK TABLES `share_requests_new` WRITE;
/*!40000 ALTER TABLE `share_requests_new` DISABLE KEYS */;
/*!40000 ALTER TABLE `share_requests_new` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `share_status`
--

DROP TABLE IF EXISTS `share_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `share_status` (
  `st_id` int NOT NULL AUTO_INCREMENT,
  `caption` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`st_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `share_status`
--

LOCK TABLES `share_status` WRITE;
/*!40000 ALTER TABLE `share_status` DISABLE KEYS */;
INSERT INTO `share_status` VALUES (1,'Pending'),(2,'Accept'),(3,'Reject');
/*!40000 ALTER TABLE `share_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `share_type`
--

DROP TABLE IF EXISTS `share_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `share_type` (
  `shareid` bigint NOT NULL AUTO_INCREMENT,
  `share_name` varchar(45) DEFAULT NULL,
  `share_title` varchar(45) DEFAULT NULL,
  `icon_name` varchar(45) DEFAULT 'noimage.png',
  `isActive` tinyint DEFAULT '1',
  `isDeleted` tinyint DEFAULT '0',
  `isDisabled` tinyint DEFAULT '0',
  PRIMARY KEY (`shareid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `share_type`
--

LOCK TABLES `share_type` WRITE;
/*!40000 ALTER TABLE `share_type` DISABLE KEYS */;
INSERT INTO `share_type` VALUES (1,'Receipent','Receipent','noimage.png',1,0,0),(2,'Guests','Guests','noimage.png',1,0,0);
/*!40000 ALTER TABLE `share_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_category_tag`
--

DROP TABLE IF EXISTS `store_category_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store_category_tag` (
  `storecattagmappingidpk` int NOT NULL AUTO_INCREMENT,
  `store_id` int DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `tag_id` int DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT '0',
  `isDeleted` tinyint(1) DEFAULT '0',
  `isDisabled` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`storecattagmappingidpk`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_category_tag`
--

LOCK TABLES `store_category_tag` WRITE;
/*!40000 ALTER TABLE `store_category_tag` DISABLE KEYS */;
INSERT INTO `store_category_tag` VALUES (1,5,3,2,0,0,0),(2,6,3,2,0,0,0),(3,3,2,3,0,0,0),(4,3,2,4,0,0,0),(5,4,2,3,0,0,0),(6,4,2,4,0,0,0),(7,11,5,7,0,0,0),(8,11,5,8,0,0,0),(9,11,5,9,0,0,0),(10,11,5,10,0,0,0),(11,11,5,11,0,0,0);
/*!40000 ALTER TABLE `store_category_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_items`
--

DROP TABLE IF EXISTS `store_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store_items` (
  `store_item_id` int NOT NULL AUTO_INCREMENT,
  `store_id` int NOT NULL,
  `item_id` int NOT NULL,
  PRIMARY KEY (`store_item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_items`
--

LOCK TABLES `store_items` WRITE;
/*!40000 ALTER TABLE `store_items` DISABLE KEYS */;
INSERT INTO `store_items` VALUES (1,1,1),(2,1,2),(3,2,1);
/*!40000 ALTER TABLE `store_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stores`
--

DROP TABLE IF EXISTS `stores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stores` (
  `store_id` int NOT NULL AUTO_INCREMENT,
  `brandidpkfk` bigint DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `latitude` decimal(9,6) NOT NULL,
  `longitude` decimal(9,6) NOT NULL,
  `isActive` tinyint DEFAULT '0',
  `isDeleted` tinyint DEFAULT '0',
  `isDisabled` tinyint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` bigint DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `image` varchar(45) DEFAULT 'noimage.png',
  PRIMARY KEY (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stores`
--

LOCK TABLES `stores` WRITE;
/*!40000 ALTER TABLE `stores` DISABLE KEYS */;
INSERT INTO `stores` VALUES (1,1,'Store1','Tanishq Address 1',NULL,NULL,28.613900,77.209000,0,0,NULL,'2025-04-21 11:47:48',NULL,NULL,NULL,'noimage.png'),(2,1,'Store2','Tanishq Address 2',NULL,NULL,28.704100,77.102500,0,0,NULL,'2025-04-21 11:47:48',NULL,NULL,NULL,'noimage.png'),(3,2,'Store1','Tata Motors Address 1',NULL,NULL,28.535500,77.391000,0,0,NULL,'2025-04-21 11:47:48',NULL,NULL,NULL,'noimage.png'),(4,2,'Store2','Tata Motors Address 2',NULL,NULL,28.459500,77.026600,0,0,NULL,'2025-04-21 11:47:48',NULL,NULL,NULL,'noimage.png'),(5,3,'Store1','Titan Address 1',NULL,NULL,28.408900,77.317800,0,0,NULL,'2025-04-21 11:47:48',NULL,NULL,NULL,'noimage.png'),(6,3,'Store2','Titan Address 2',NULL,NULL,28.984500,77.706400,0,0,NULL,'2025-04-21 11:47:48',NULL,NULL,NULL,'noimage.png'),(7,4,'Store1','Chroma Address 1',NULL,NULL,28.459500,77.026600,0,0,NULL,'2025-04-21 11:47:48',NULL,NULL,NULL,'noimage.png'),(8,4,'Store2','Chroma Address 2',NULL,NULL,28.408900,77.317800,0,0,NULL,'2025-04-21 11:47:48',NULL,NULL,NULL,'noimage.png'),(9,5,'Store1','Dominos Address',NULL,NULL,28.704100,77.102500,0,0,NULL,'2025-04-21 11:47:48',NULL,NULL,NULL,'noimage.png'),(10,6,'Store1','Dunkin Address',NULL,NULL,28.535500,77.391000,0,0,NULL,'2025-04-21 11:47:48',NULL,NULL,NULL,'noimage.png'),(11,7,'Store1','McD Store1',NULL,NULL,28.613900,77.209000,0,0,NULL,'2025-04-21 11:47:48',NULL,NULL,NULL,'noimage.png'),(12,7,'Store3','McD Store3',NULL,NULL,28.704100,77.102500,0,0,NULL,'2025-04-21 11:47:48',NULL,NULL,NULL,'noimage.png'),(13,7,'Store4','McD Store4',NULL,NULL,28.459500,77.026600,0,0,NULL,'2025-04-21 11:47:48',NULL,NULL,NULL,'noimage.png'),(14,7,'Store5','McD Store5',NULL,NULL,28.408900,77.317800,0,0,NULL,'2025-04-21 11:47:48',NULL,NULL,NULL,'noimage.png');
/*!40000 ALTER TABLE `stores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag_master`
--

DROP TABLE IF EXISTS `tag_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tag_master` (
  `tagidPK` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`tagidPK`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag_master`
--

LOCK TABLES `tag_master` WRITE;
/*!40000 ALTER TABLE `tag_master` DISABLE KEYS */;
INSERT INTO `tag_master` VALUES (1,'Gold Rings'),(2,'Titan Watches'),(3,'SUV'),(4,'Cars'),(5,'Motor Cycle'),(6,'Electronics'),(7,'Burger'),(8,'Fries'),(9,'Chicken Nugget'),(10,'Fast Food'),(11,'McChicken Burger');
/*!40000 ALTER TABLE `tag_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_images`
--

DROP TABLE IF EXISTS `tbl_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_images` (
  `id` int NOT NULL AUTO_INCREMENT,
  `typeid` int DEFAULT NULL,
  `imagename` varchar(45) DEFAULT NULL,
  `caption` varchar(45) DEFAULT NULL,
  `isActive` tinyint DEFAULT '0',
  `isDeleted` tinyint DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_images`
--

LOCK TABLES `tbl_images` WRITE;
/*!40000 ALTER TABLE `tbl_images` DISABLE KEYS */;
INSERT INTO `tbl_images` VALUES (1,1,'no-image.png','user-noimage',1,0),(2,2,'externalshare.png','external_share_image',1,0);
/*!40000 ALTER TABLE `tbl_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_particiepents_master`
--

DROP TABLE IF EXISTS `tbl_particiepents_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_particiepents_master` (
  `p_id` int NOT NULL AUTO_INCREMENT,
  `u_id` int NOT NULL,
  `relation_id` int NOT NULL,
  `name` varchar(45) NOT NULL,
  `dob` date NOT NULL,
  `allocation` decimal(10,2) DEFAULT NULL,
  `image_name` varchar(255) DEFAULT 'noimage.png',
  `requested_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `allocation_date` datetime DEFAULT NULL,
  `status` tinyint DEFAULT '0',
  `isActive` tinyint DEFAULT '1',
  `isDeleted` tinyint DEFAULT '0',
  `isDisabled` tinyint DEFAULT '0',
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_particiepents_master`
--

LOCK TABLES `tbl_particiepents_master` WRITE;
/*!40000 ALTER TABLE `tbl_particiepents_master` DISABLE KEYS */;
INSERT INTO `tbl_particiepents_master` VALUES (1,36,3,'P1','2026-02-12',5.00,'no-image.png','2026-02-12 15:12:31',NULL,0,1,0,0),(2,36,3,'P2','2026-02-12',5.00,'no-image.png','2026-02-12 15:12:44',NULL,0,1,0,0),(3,36,3,'P3','2026-02-12',2.00,'no-image.png','2026-02-12 15:12:57',NULL,0,1,0,0),(4,36,3,'P4','2026-02-12',3.00,'no-image.png','2026-02-12 15:13:08',NULL,0,1,0,0),(5,36,3,'P6','2026-02-12',5.00,'no-image.png','2026-02-12 15:26:41',NULL,0,1,0,0),(6,37,3,'37 rec','2026-02-12',5.00,'no-image.png','2026-02-12 16:02:22',NULL,0,1,0,0),(7,37,2,'37 rec','2026-02-10',80.00,'no-image.png','2026-02-12 16:04:00',NULL,0,1,0,0),(8,36,3,'Anant','2026-02-12',2.00,'no-image.png','2026-02-12 16:46:53',NULL,0,1,0,0),(9,37,3,'37 p2','2026-02-12',5.00,'no-image.png','2026-02-12 16:52:12',NULL,0,1,0,0),(10,36,3,'Sam','2026-02-12',2.00,'no-image.png','2026-02-12 16:54:26',NULL,0,1,0,0),(11,36,1,'Anant','2026-02-12',80.00,'no-image.png','2026-02-13 07:12:21',NULL,0,1,0,0);
/*!40000 ALTER TABLE `tbl_particiepents_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_share_type`
--

DROP TABLE IF EXISTS `tbl_share_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_share_type` (
  `share_typeid` int NOT NULL AUTO_INCREMENT,
  `caption` varchar(45) DEFAULT NULL,
  `isActive` tinyint DEFAULT '0',
  `isDeleted` tinyint DEFAULT '0',
  `isDisabled` tinyint DEFAULT '0',
  `image_name` varchar(45) DEFAULT 'no-image.png',
  PRIMARY KEY (`share_typeid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_share_type`
--

LOCK TABLES `tbl_share_type` WRITE;
/*!40000 ALTER TABLE `tbl_share_type` DISABLE KEYS */;
INSERT INTO `tbl_share_type` VALUES (1,'Internal',1,0,0,'no-image.png'),(2,'External',1,0,0,'external.png');
/*!40000 ALTER TABLE `tbl_share_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transfers`
--

DROP TABLE IF EXISTS `transfers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transfers` (
  `transfer_id` bigint NOT NULL AUTO_INCREMENT,
  `owner_id` bigint NOT NULL,
  `recipient_id` bigint NOT NULL,
  `amount_rs` decimal(12,2) NOT NULL,
  `percent_snapshot` decimal(5,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `note` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`transfer_id`),
  CONSTRAINT `chk_tr_amt` CHECK ((`amount_rs` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transfers`
--

LOCK TABLES `transfers` WRITE;
/*!40000 ALTER TABLE `transfers` DISABLE KEYS */;
INSERT INTO `transfers` VALUES (1,20,22,40.00,20.00,'2025-09-21 07:51:43','Monthly share'),(2,20,23,40.00,20.00,'2025-09-21 07:51:43','Monthly share'),(3,20,21,20.00,10.00,'2025-09-21 07:51:43','Monthly share');
/*!40000 ALTER TABLE `transfers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_auth`
--

DROP TABLE IF EXISTS `user_auth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_auth` (
  `user_auth_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `provider_id` int NOT NULL,
  `provideruseruniqueid` text,
  `provider_user_id` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `password_hash` varchar(255) DEFAULT NULL,
  `isActive` tinyint DEFAULT NULL,
  `isDeleted` tinyint DEFAULT NULL,
  `isDisabled` tinyint DEFAULT NULL,
  `providerresponce` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `deviceid` text,
  PRIMARY KEY (`user_auth_id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_auth`
--

LOCK TABLES `user_auth` WRITE;
/*!40000 ALTER TABLE `user_auth` DISABLE KEYS */;
INSERT INTO `user_auth` VALUES (29,20,1,NULL,'shuklaom84@gmail.com','acbaf8f4-3138-11ef-b124-e6f104a57871','e86f78a8a3caf0b60d8e74e5942aa6d86dc150cd3c03338aef25b7d2d7e3acc7',NULL,NULL,NULL,NULL,'2024-06-23 08:13:00',NULL),(30,20,2,'110679712360016529956','110679712360016529956','e10f8620-5fda-11f0-863f-e6f104a57871',NULL,NULL,NULL,NULL,'{\"scopes\":[\"https://www.googleapis.com/auth/userinfo.profile\",\"https://www.googleapis.com/auth/userinfo.email\",\"https://www.googleapis.com/auth/drive.readonly\"],\"serverAuthCode\":null,\"idToken\":\"eyJhbGciOiJSUzI1NiIsImtpZCI6IjNkNTgwZjBhZjdhY2U2OThhMGNlZTdmMjMwYmNhNTk0ZGM2ZGJiNTUiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL2FjY291bnRzLmdvb2dsZS5jb20iLCJhenAiOiI3MTE1NjQwNDMzNzctYXJ2OTVtdGxibXZjaGxkbDJuYjdscTE1czEybGx2dHQuYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJhdWQiOiI3MTE1NjQwNDMzNzctdDBqZTdib21iY2ptYWwxczRyZThxaWZhcTBtc2lpZ2UuYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJzdWIiOiIxMTA2Nzk3MTIzNjAwMTY1Mjk5NTYiLCJlbWFpbCI6InNodWtsYW9tODRAZ21haWwuY29tIiwiZW1haWxfdmVyaWZpZWQiOnRydWUsIm5hbWUiOiJPbSBTaHVrbGEiLCJwaWN0dXJlIjoiaHR0cHM6Ly9saDMuZ29vZ2xldXNlcmNvbnRlbnQuY29tL2EvQUNnOG9jSzVicDlqeGh5SC1xOTg0dW9FNWp0QkJ4WEh0ZUhHS2w4ZUV2TXkwT2lOQnRobnptTjQ9czk2LWMiLCJnaXZlbl9uYW1lIjoiT20iLCJmYW1pbHlfbmFtZSI6IlNodWtsYSIsImlhdCI6MTcxOTEzMDIzNiwiZXhwIjoxNzE5MTMzODM2fQ.YiBNzFVquempA90NTVxYk42fRzdXaEzI49a8R0EPwAqb_JsyLMYs0aG7-2ntmFoAI9eu1wRMZWzllvniOYjZ_03bQxo3mmIEVnIBGxBN9sGqyCBTvsOfnfzm3LsFBwLmVm5BqbuSwxOsHJR3iXZYYcT0ibo2m_ESapPGouWKBWogL-8bKffT1bxF_NFZeyS95K8SfRMXF5ZfruZdRuJxVRpwYco6niXLqN3Ik8sZyrLe7JvO4SchUYjo8CAw9Anxy2wjzj3dNf1rGBJVMfxk6GXlyf5i3MIz21lKAwATCOET738xjqbKp5kTw7Lw139BdpoGUuvvwhbSSSJrzJU7zA\",\"user\":{\"photo\":\"https://lh3.googleusercontent.com/a/ACg8ocK5bp9jxhyH-q984uoE5jtBBxXHteHGKl8eEvMy0OiNBthnzmN4=s96-c\",\"givenName\":\"Om\",\"familyName\":\"Shukla\",\"email\":\"shuklaom84@gmail.com\",\"name\":\"Om Shukla\",\"id\":\"110679712360016529956\"}}','2024-06-23 08:13:40',NULL),(31,21,1,NULL,'shuklaom94@gmail.com',NULL,'e86f78a8a3caf0b60d8e74e5942aa6d86dc150cd3c03338aef25b7d2d7e3acc7',NULL,NULL,NULL,NULL,'2024-06-24 08:55:33',NULL),(32,22,1,NULL,'shuklaom194@gmail.com',NULL,'e86f78a8a3caf0b60d8e74e5942aa6d86dc150cd3c03338aef25b7d2d7e3acc7',NULL,NULL,NULL,NULL,'2024-06-24 08:58:00',NULL),(33,23,1,NULL,'shuklaom4@gmail.com',NULL,'e86f78a8a3caf0b60d8e74e5942aa6d86dc150cd3c03338aef25b7d2d7e3acc7',NULL,NULL,NULL,NULL,'2024-06-24 08:58:19',NULL),(34,24,1,NULL,'shuklaom14@gmail.com',NULL,'33fa8b995412fab790a58a870e479c416c92162ead494f17c42f19da04c1b5d4',NULL,NULL,NULL,NULL,'2024-06-24 09:00:24',NULL),(35,25,1,NULL,'shuklaom1@gmail.com',NULL,'33fa8b995412fab790a58a870e479c416c92162ead494f17c42f19da04c1b5d4',NULL,NULL,NULL,NULL,'2024-06-24 09:01:00',NULL),(36,26,1,NULL,'shuklaom8@gmail.com',NULL,'33fa8b995412fab790a58a870e479c416c92162ead494f17c42f19da04c1b5d4',NULL,NULL,NULL,NULL,'2024-06-24 09:02:31',NULL),(37,27,1,NULL,'shuklaom9@gmail.com',NULL,'33fa8b995412fab790a58a870e479c416c92162ead494f17c42f19da04c1b5d4',NULL,NULL,NULL,NULL,'2024-06-24 09:03:29',NULL),(38,28,1,NULL,'shuklaom20@gmail.com',NULL,'33fa8b995412fab790a58a870e479c416c92162ead494f17c42f19da04c1b5d4',NULL,NULL,NULL,NULL,'2024-06-24 09:04:09',NULL),(39,29,1,NULL,'shuklaom855@gmail.com',NULL,'81c1c6f99a6b52b7969f26d6e70f6f36c81e54d207f840e26bc0a2e133588541',NULL,NULL,NULL,NULL,'2024-06-24 09:05:51',NULL),(40,30,1,NULL,'shuklao84@gmail.com',NULL,'f71a34ddcfb0a2368d7a26b626d1e26e0d527b9ce0bc2ad28d5b81f92b292b26',NULL,NULL,NULL,NULL,'2024-06-24 09:07:29',NULL),(41,31,1,NULL,'shuklao84g@gmail.com',NULL,'f71a34ddcfb0a2368d7a26b626d1e26e0d527b9ce0bc2ad28d5b81f92b292b26',NULL,NULL,NULL,NULL,'2024-06-24 09:08:13',NULL),(42,32,1,NULL,'admin@gmail.com',NULL,'7676aaafb027c825bd9abab78b234070e702752f625b752e55e55b48e607e358',NULL,NULL,NULL,NULL,'2025-12-22 12:29:58',NULL),(43,33,1,NULL,'tarikamjad7755@gmail.com',NULL,'3947329bc17fdb5eb7dbe42e8834d7d211072b40c374a7102eff33b78a6e4a36',NULL,NULL,NULL,NULL,'2025-12-24 10:34:02',NULL),(44,34,1,NULL,'dd@gmail.com','53fcd14c-f2e4-11f0-b7bd-e6f104a57871','9f86d081884c7d659a2feaa0c55ad015a3bf4f1b2b0b822cd15d6c15b0f00a08',NULL,NULL,NULL,NULL,'2026-01-16 14:04:28',NULL),(45,35,1,NULL,'omw@gmail.com',NULL,'9f86d081884c7d659a2feaa0c55ad015a3bf4f1b2b0b822cd15d6c15b0f00a08',NULL,NULL,NULL,NULL,'2026-01-16 14:05:48',NULL),(46,36,1,NULL,'admin@dmail.com','42691dd8-08ab-11f1-a4c1-e6f104a57871','7676aaafb027c825bd9abab78b234070e702752f625b752e55e55b48e607e358',NULL,NULL,NULL,NULL,'2026-02-07 09:28:31',NULL),(47,37,1,NULL,'demo@dmail.com','9fa7546d-08ab-11f1-a4c1-e6f104a57871','7676aaafb027c825bd9abab78b234070e702752f625b752e55e55b48e607e358',NULL,NULL,NULL,NULL,'2026-02-07 09:28:56',NULL),(48,38,1,NULL,'abc@dmail.com','5123f1d0-0810-11f1-a4c1-e6f104a57871','7676aaafb027c825bd9abab78b234070e702752f625b752e55e55b48e607e358',NULL,NULL,NULL,NULL,'2026-02-11 10:40:41',NULL);
/*!40000 ALTER TABLE `user_auth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_preferences`
--

DROP TABLE IF EXISTS `user_preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_preferences` (
  `user_id` int NOT NULL,
  `latitude` decimal(9,6) DEFAULT NULL,
  `longitude` decimal(9,6) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_preferences`
--

LOCK TABLES `user_preferences` WRITE;
/*!40000 ALTER TABLE `user_preferences` DISABLE KEYS */;
INSERT INTO `user_preferences` VALUES (1,37.774900,-122.419400,'2024-06-03 06:52:15');
/*!40000 ALTER TABLE `user_preferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_wallets`
--

DROP TABLE IF EXISTS `user_wallets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_wallets` (
  `wallet_id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint DEFAULT NULL,
  `balance_rs` decimal(12,2) NOT NULL DEFAULT '0.00',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `isActive` tinyint DEFAULT '1',
  `isDisabled` tinyint DEFAULT '0',
  `isDeleted` tinyint DEFAULT '0',
  PRIMARY KEY (`wallet_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_wallets`
--

LOCK TABLES `user_wallets` WRITE;
/*!40000 ALTER TABLE `user_wallets` DISABLE KEYS */;
INSERT INTO `user_wallets` VALUES (1,20,400.00,'2025-09-21 07:51:43',1,0,0),(2,22,40.00,'2025-09-21 07:51:43',1,0,0),(3,23,40.00,'2025-09-21 07:51:43',1,0,0),(4,21,20.00,'2025-09-21 07:51:43',1,0,0);
/*!40000 ALTER TABLE `user_wallets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `isActive` tinyint DEFAULT '1',
  `isDeleted` tinyint DEFAULT '0',
  `isDisabled` tinyint DEFAULT '0',
  `isProfileCompleted` tinyint DEFAULT '0',
  `currency_symbol` varchar(45) DEFAULT '₹',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (20,'shuklaom84@gmail.com','Shuklaom','2024-06-23 08:13:00',1,0,0,0,'₹'),(21,'shuklaom94@gmail.com','Om shukla','2024-06-24 08:55:33',1,0,0,0,'₹'),(22,'shuklaom194@gmail.com','Om shukla','2024-06-24 08:58:00',1,0,0,0,'₹'),(23,'shuklaom4@gmail.com','Om shukla','2024-06-24 08:58:19',1,0,0,0,'₹'),(24,'shuklaom14@gmail.com','Fdf','2024-06-24 09:00:24',1,0,0,0,'₹'),(25,'shuklaom1@gmail.com','Fdf','2024-06-24 09:01:00',1,0,0,0,'₹'),(26,'shuklaom8@gmail.com','Fdf','2024-06-24 09:02:31',1,0,0,0,'₹'),(27,'shuklaom9@gmail.com','Fdf','2024-06-24 09:03:29',1,0,0,0,'₹'),(28,'shuklaom20@gmail.com','Fdf','2024-06-24 09:04:09',1,0,0,0,'₹'),(29,'shuklaom855@gmail.com','Ggh','2024-06-24 09:05:51',1,0,0,0,'₹'),(30,'shuklao84@gmail.com','Ghhj','2024-06-24 09:07:29',1,0,0,0,'₹'),(31,'shuklao84g@gmail.com','Ghhj','2024-06-24 09:08:13',1,0,0,0,'₹'),(32,'admin@gmail.com','omshukla','2025-12-22 12:29:58',1,0,0,0,'₹'),(33,'tarikamjad7755@gmail.com','Tarik','2025-12-24 10:34:02',1,0,0,0,'₹'),(34,'dd@gmail.com','Admin','2026-01-16 14:04:28',1,0,0,0,'₹'),(35,'omw@gmail.com','om shukla','2026-01-16 14:05:48',1,0,0,0,'₹'),(36,'admin@dmail.com','admin user','2026-02-07 09:28:31',1,0,0,0,'₹'),(37,'demo@dmail.com','admin user','2026-02-07 09:28:56',1,0,0,0,'₹'),(38,'abc@dmail.com','demo1','2026-02-11 10:40:41',1,0,0,0,'₹');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_profile`
--

DROP TABLE IF EXISTS `users_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_profile` (
  `profileidpk` bigint NOT NULL AUTO_INCREMENT,
  `usersidpkfk` bigint DEFAULT NULL,
  `fullname` varchar(45) DEFAULT NULL,
  `contactno` varchar(45) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `province` varchar(45) DEFAULT NULL,
  `postalcode` varchar(45) DEFAULT NULL,
  `isActive` tinyint DEFAULT '1',
  `isDeleted` tinyint DEFAULT '0',
  `isDisabled` tinyint DEFAULT '0',
  `createddate` datetime DEFAULT CURRENT_TIMESTAMP,
  `max_allocation` varchar(45) DEFAULT '100',
  `allocation` varchar(45) DEFAULT '100',
  `user_image` varchar(45) DEFAULT 'no-image.png',
  PRIMARY KEY (`profileidpk`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_profile`
--

LOCK TABLES `users_profile` WRITE;
/*!40000 ALTER TABLE `users_profile` DISABLE KEYS */;
INSERT INTO `users_profile` VALUES (1,20,'Om Prakash Shukla','9457185600','Gopiganj','Gopiganj','UP','221303',1,0,0,'2026-01-02 12:02:04','100','0','no-image.png'),(2,21,'Admin','9971713256','Gopiganj','Gopiganj','Up','221303',1,0,0,'2026-02-03 09:35:20','100','100','no-image.png'),(3,36,'OM','9971713256','Gopiganj','Gopiganj','Up','221303',1,0,0,'2026-02-07 11:21:50',NULL,'100','no-image.png'),(4,37,'EJ','5657577657','Gopiganj','Gopiganj','Up','221303',1,0,0,'2026-02-07 11:21:51',NULL,'100','no-image.png'),(5,38,'AA','99818181','Demo Address','Demo','string','string',1,0,0,'2026-02-11 11:44:24','100','0','no-image.png');
/*!40000 ALTER TABLE `users_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vw_participentdetail`
--

DROP TABLE IF EXISTS `vw_participentdetail`;
/*!50001 DROP VIEW IF EXISTS `vw_participentdetail`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_participentdetail` AS SELECT 
 1 AS `p_id`,
 1 AS `request_id`,
 1 AS `fullname`,
 1 AS `name`,
 1 AS `dob`,
 1 AS `r_id`,
 1 AS `relationshipname`,
 1 AS `allocation`,
 1 AS `total`,
 1 AS `image_name`,
 1 AS `countofparticipent`,
 1 AS `allocation_label`,
 1 AS `st_id`,
 1 AS `caption`,
 1 AS `isActive`,
 1 AS `requester_id`,
 1 AS `responded_at`,
 1 AS `created_at`,
 1 AS `isDeleted`,
 1 AS `share_type`,
 1 AS `share_typeid`,
 1 AS `share_logo`,
 1 AS `owner_id`,
 1 AS `requester_user_id`,
 1 AS `from_user`,
 1 AS `owner_user`,
 1 AS `message`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_users_with_profile`
--

DROP TABLE IF EXISTS `vw_users_with_profile`;
/*!50001 DROP VIEW IF EXISTS `vw_users_with_profile`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_users_with_profile` AS SELECT 
 1 AS `user_id`,
 1 AS `email`,
 1 AS `name`,
 1 AS `isProfileCompleted`,
 1 AS `created_at`,
 1 AS `profileidpk`,
 1 AS `fullname`,
 1 AS `contactno`,
 1 AS `address`,
 1 AS `city`,
 1 AS `province`,
 1 AS `postalcode`,
 1 AS `max_allocation`,
 1 AS `allocation`,
 1 AS `user_image`,
 1 AS `isDeleted`,
 1 AS `isActive`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'dev_myunisavedb'
--

--
-- Dumping routines for database 'dev_myunisavedb'
--
/*!50003 DROP FUNCTION IF EXISTS `fn_format_pretty_date` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`devom`@`%` FUNCTION `fn_format_pretty_date`(p_date DATE) RETURNS varchar(50) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
    RETURN DATE_FORMAT(p_date, '%M, %Y, %D');
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_format_user_currency` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`devom`@`%` FUNCTION `fn_format_user_currency`(
    p_user_id BIGINT,
    p_amount DECIMAL(15,2)
) RETURNS varchar(50) CHARSET utf8mb4
    READS SQL DATA
    DETERMINISTIC
BEGIN
    DECLARE v_symbol VARCHAR(10);
    DECLARE v_formatted_amount VARCHAR(40);

    -- Get currency symbol from users table
    SELECT IFNULL(currency_symbol, '₹')
    INTO v_symbol
    FROM users
    WHERE user_id = p_user_id
    LIMIT 1;

    -- Format amount with commas (International format)
    SET v_formatted_amount = FORMAT(p_amount, 2);

    -- Return like: ₹ 23,000.00
    RETURN CONCAT(v_symbol,'',v_formatted_amount);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_get_user_currency_symbol` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`devom`@`%` FUNCTION `fn_get_user_currency_symbol`(p_user_id BIGINT) RETURNS varchar(10) CHARSET utf8mb4
    READS SQL DATA
    DETERMINISTIC
BEGIN
    DECLARE v_symbol VARCHAR(10);

    SELECT currency_symbol
    INTO v_symbol
    FROM users
    WHERE user_id = p_user_id
    LIMIT 1;

    -- Agar user na mile ya symbol null ho
    RETURN IFNULL(v_symbol, '₹');
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_total_percent_for_owner` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`devom`@`%` FUNCTION `fn_total_percent_for_owner`(p_owner_id BIGINT) RETURNS decimal(6,2)
    READS SQL DATA
    DETERMINISTIC
BEGIN
  DECLARE v_total DECIMAL(6,2);
  SELECT IFNULL(SUM(percent_share), 0.00)
    INTO v_total
  FROM share_allocations
  WHERE owner_id = p_owner_id AND is_active = 1;
  RETURN v_total;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `get_resource_url_fn` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`devom`@`%` FUNCTION `get_resource_url_fn`(
    input_resource_type VARCHAR(50),
    image_name VARCHAR(255)
) RETURNS varchar(1024) CHARSET utf8mb4
    READS SQL DATA
    DETERMINISTIC
BEGIN
    DECLARE v_base_url VARCHAR(255);
    DECLARE v_folder_name VARCHAR(255);
    DECLARE v_result_url VARCHAR(1024);

    -- Fetch base_url and folder_name for the given resource type
    SELECT 
        b.url,
        a.folder_name
    INTO 
        v_base_url, v_folder_name
    FROM 
        app_resource a
    JOIN 
        base_url b ON a.base_url = b.url_id
    WHERE 
        a.resource_type = input_resource_type
        AND a.isActive = 1 AND a.isDeleted = 0 AND a.isDisabled = 0
        AND b.isActive = 1 AND b.isDeleted = 0 AND b.isDisabled = 0
    LIMIT 1;

    -- Concatenate full URL
    SET v_result_url = CONCAT(v_base_url, v_folder_name, image_name);

    RETURN v_result_url;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DisplayBrandHome` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`devom`@`%` PROCEDURE `DisplayBrandHome`(
    IN p_user_lat DECIMAL(10,6),
    IN p_user_lng DECIMAL(10,6)
)
BEGIN
    SELECT 
        br.brandidPK AS brand_id,
        br.brand_name AS brand_name,
        get_resource_url_fn('BrandImage', br.logo) AS brand_image,
        s.store_id,
        s.name AS store_name,
        get_resource_url_fn('StoreImage', s.image) AS store_image,
        s.address,
        s.longitude,
        s.latitude,
        ROUND(
            6371 * ACOS(
                COS(RADIANS(p_user_lat)) * COS(RADIANS(s.latitude)) *
                COS(RADIANS(s.longitude) - RADIANS(p_user_lng)) +
                SIN(RADIANS(p_user_lat)) * SIN(RADIANS(s.latitude))
            ), 2
        ) AS distance_km
    FROM (
        SELECT DISTINCT s.store_id
        FROM stores s
        JOIN store_category_tag sct ON s.store_id = sct.store_id
    ) AS unique_stores
    JOIN stores s ON s.store_id = unique_stores.store_id
    JOIN brand_master br ON br.brandidPK = s.brandidpkfk
    JOIN business_master b ON b.businessidPK = br.business_idpkfk
    ORDER BY distance_km ASC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Displaycategoryhomepage` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`devom`@`%` PROCEDURE `Displaycategoryhomepage`(
    IN p_user_lat DECIMAL(10,6),
    IN p_user_lng DECIMAL(10,6)
)
BEGIN
    SELECT 
        DISTINCT c.category_id,
        c.name AS category_name,
        get_resource_url_fn('CategoryImage', c.imagename) AS category_image,
        d.distance_km
    FROM categories c
    JOIN (
        SELECT 
            sct.category_id,
            MIN(
                ROUND(
                    6371 * ACOS(
                        COS(RADIANS(p_user_lat)) * COS(RADIANS(s.latitude)) *
                        COS(RADIANS(s.longitude) - RADIANS(p_user_lng)) +
                        SIN(RADIANS(p_user_lat)) * SIN(RADIANS(s.latitude))
                    ), 2)
            ) AS distance_km
        FROM store_category_tag sct
        JOIN stores s ON s.store_id = sct.store_id
        GROUP BY sct.category_id
    ) d ON d.category_id = c.category_id
    ORDER BY d.distance_km ASC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DisplayHomeBanner` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`devom`@`%` PROCEDURE `DisplayHomeBanner`(in operation bigint)
begin
select ad_idpk,ad_name,
get_resource_url_fn('HomeAddImage',imagename) AS image,
externalurl,navigationlink,disp_sequance from home_page_ad where isActive=1 order by disp_sequance asc;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `find_nearest_stores` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`devom`@`%` PROCEDURE `find_nearest_stores`(
    IN p_user_id INT,
    IN p_item_name VARCHAR(255),
    IN p_category_name VARCHAR(255)
   /* OUT p_result JSON*/
)
BEGIN
    DECLARE v_user_latitude DECIMAL(9,6);
    DECLARE v_user_longitude DECIMAL(9,6);
    DECLARE v_category_id INT;
    DECLARE v_category_exists INT DEFAULT 0;
 DECLARE p_result JSON;
    -- Initialize result
    SET p_result = JSON_ARRAY();

    -- Get user's preferred geolocation
    SELECT latitude, longitude INTO v_user_latitude, v_user_longitude
    FROM user_preferences
    WHERE user_id = p_user_id;

    -- Ensure user has a preferred geolocation
   IF v_user_latitude IS NULL OR v_user_longitude IS NULL THEN
   begin
    SET p_result = JSON_OBJECT('error', 'User preferred geolocation not set');
   end;
END IF;

    -- Get category_id based on category name
    SELECT category_id INTO v_category_id
    FROM categories
    WHERE name = p_category_name;

    -- Check if category exists
    IF v_category_id IS NOT NULL THEN
        SET v_category_exists = 1;
    END IF;

    -- Ensure category exists
    IF v_category_exists = 0 THEN
    begin
        SET p_result = JSON_OBJECT('error', 'Category does not exist');
        end;
    END IF;

    -- Find stores with items matching the name and category, sorted by distance
    SET p_result = (
        SELECT JSON_ARRAYAGG(JSON_OBJECT(
            'store_id', s.store_id,
            'store_name', s.name,
            'store_address', s.address,
            'distance_km', ST_DISTANCE_SPHERE(
                POINT(s.longitude, s.latitude),
                POINT(v_user_longitude, v_user_latitude)
            ) / 1000 -- Convert meters to kilometers
        ))
        FROM stores s
        JOIN store_items si ON s.store_id = si.store_id
        JOIN items i ON si.item_id = i.item_id
        WHERE i.name LIKE CONCAT('%', p_item_name, '%')
        AND i.category_id = v_category_id
        ORDER BY ST_DISTANCE_SPHERE(
            POINT(s.longitude, s.latitude),
            POINT(v_user_longitude, v_user_latitude)
        )
        LIMIT 10
    );

    -- Ensure there are results
    IF p_result IS NULL THEN
        SET p_result = JSON_ARRAY();
    END IF;
    select p_result as storesdetail;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetBusinessDetailsById` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`devom`@`%` PROCEDURE `GetBusinessDetailsById`(
    IN p_business_id INT
)
BEGIN
    SELECT 
        businessidPK,
        name AS business_name,
        get_resource_url_fn('BusinessImage', image) AS business_image,
        description,
        isActive,
        isDeleted,
        isDisabled,
        createddate
    FROM business_master
    WHERE businessidPK = p_business_id
    AND (isDeleted IS NULL OR isDeleted = 0);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetNearestBrands` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`devom`@`%` PROCEDURE `GetNearestBrands`(
    IN user_lat DECIMAL(10,6),
    IN user_lng DECIMAL(10,6)
)
BEGIN
    SELECT 
        b.brandidPK, 
        b.brand_name, 
        b.logo,
        MIN(6371 * ACOS(
            COS(RADIANS(user_lat)) * COS(RADIANS(s.latitude)) * 
            COS(RADIANS(s.longitude) - RADIANS(user_lng)) + 
            SIN(RADIANS(user_lat)) * SIN(RADIANS(s.latitude))
        )) AS distance_km
    FROM stores s
    JOIN brand_master b ON s.brandidpkfk = b.brandidPK
    WHERE s.isActive = 0 AND s.isDeleted = 0
    GROUP BY b.brandidPK, b.brand_name, b.logo
    ORDER BY distance_km ASC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetNearestDistinctStores` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`devom`@`%` PROCEDURE `GetNearestDistinctStores`(
    IN user_lat DECIMAL(10,6),
    IN user_lng DECIMAL(10,6),
    in p_brandid  bigint
)
BEGIN
    SELECT s.store_id, 
           s.name, 
           s.address, 
           s.latitude, 
           s.longitude, 
           s.image,
           b.brand_name,
           (6371 * ACOS(COS(RADIANS(user_lat)) * COS(RADIANS(s.latitude)) * 
           COS(RADIANS(s.longitude) - RADIANS(user_lng)) + 
           SIN(RADIANS(user_lat)) * SIN(RADIANS(s.latitude)))) AS distance_km
    FROM stores s
    JOIN brand_master b ON s.brandidpkfk = b.brandidPK
    WHERE b.brandidPK=p_brandid and s.isActive = 0 AND s.isDeleted = 0
    GROUP BY s.store_id  -- Ensuring distinct stores
    ORDER BY distance_km ASC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetNearestStores` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`devom`@`%` PROCEDURE `GetNearestStores`(
    IN user_lat DECIMAL(10,6),
    IN user_lng DECIMAL(10,6)
)
BEGIN
    SELECT 
        b.brandidPK, 
        b.brand_name, 
        b.logo,
        MIN(6371 * ACOS(
            COS(RADIANS(user_lat)) * COS(RADIANS(s.latitude)) * 
            COS(RADIANS(s.longitude) - RADIANS(user_lng)) + 
            SIN(RADIANS(user_lat)) * SIN(RADIANS(s.latitude))
        )) AS distance_km
    FROM stores s
    JOIN brand_master b ON s.brandidpkfk = b.brandidPK
    WHERE s.isActive = 0 AND s.isDeleted = 0
    GROUP BY b.brandidPK, b.brand_name, b.logo
    ORDER BY distance_km ASC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_resource_url` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`devom`@`%` PROCEDURE `get_resource_url`(
    IN input_resource_type VARCHAR(50)
)
BEGIN
    DECLARE v_base_url VARCHAR(255);
    DECLARE v_folder_name VARCHAR(255);
    DECLARE v_result_url VARCHAR(512);
    
    -- Get base URL and folder name based on input resource type
    SELECT 
        b.url AS base_url,
        a.folder_name
    INTO 
        v_base_url, v_folder_name
    FROM 
        app_resource a
    JOIN 
        base_url b ON a.base_url = b.url_id
    WHERE 
        a.resource_type = input_resource_type
        AND a.isActive = 1 AND a.isDeleted = 0 AND a.isDisabled = 0
        AND b.isActive = 1 AND b.isDeleted = 0 AND b.isDisabled = 0
    LIMIT 1;
    
    -- Construct full URL
    SET v_result_url = CONCAT(v_base_url, v_folder_name);

    -- Return the result
    SELECT v_result_url AS resource_url;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `login_user` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`devom`@`%` PROCEDURE `login_user`(
    IN p_email VARCHAR(255),
    IN p_password VARCHAR(255)
    
)
BEGIN
    DECLARE v_user_id INT;
    DECLARE v_provider_id INT;
    DECLARE v_password_hash VARCHAR(255);
    DECLARE p_token VARCHAR(255);
   DECLARE p_isprofiledonde BOOLEAN DEFAULT FALSE;
    DECLARE profile_count INT DEFAULT 0;
 
  
    SELECT provider_id INTO v_provider_id
    FROM auth_providers
    WHERE provider_name = 'email';
    
    -- Retrieve the stored password hash
    SELECT user_id, password_hash INTO v_user_id, v_password_hash
    FROM user_auth
    WHERE provider_user_id = p_email
      AND provider_id = v_provider_id;
    
    -- Check if the password matches
    IF v_password_hash = SHA2(p_password, 256) THEN
        -- Generate a new token
        SET p_token = UUID();

        -- Update the token for the user
        UPDATE user_auth 
        SET token = p_token 
        WHERE user_id = v_user_id 
          AND provider_id = v_provider_id 
          AND provider_user_id = p_email;
    ELSE
        -- Invalid login
        SET p_token = NULL;
    END IF;
    SELECT COUNT(*) 
        INTO profile_count
        FROM users_profile 
        WHERE usersidpkfk = v_user_id;

        IF profile_count > 0 THEN
            SET p_isprofiledonde = TRUE;
        END IF;
    set p_token = v_user_id;
    select p_token as token, p_isprofiledonde as isprofile ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ManageUserProfile` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`devom`@`%` PROCEDURE `ManageUserProfile`(
    IN action_type VARCHAR(10),
    IN in_profileidpk INT,
    IN in_usersidpkfk INT,
    IN in_fname VARCHAR(100),
    IN in_lname VARCHAR(100),
    IN in_contactno VARCHAR(20),
    IN in_address TEXT
)
BEGIN
    -- CREATE
    IF action_type = 'CREATE' THEN
        INSERT INTO user_profiles (usersidpkfk, fname, lname, contactno, address)
        VALUES (in_usersidpkfk, in_fname, in_lname, in_contactno, in_address);
        SELECT * FROM user_profiles WHERE profileidpk = last_insert_id();
    -- READ (by profile ID)
    ELSEIF action_type = 'READ' THEN
        SELECT * FROM user_profiles WHERE profileidpk = in_profileidpk;

    -- UPDATE
    ELSEIF action_type = 'UPDATE' THEN
        UPDATE user_profiles
        SET usersidpkfk = in_usersidpkfk,
            fname = in_fname,
            lname = in_lname,
            contactno = in_contactno,
            address = in_address
        WHERE profileidpk = in_profileidpk;
SELECT * FROM user_profiles WHERE profileidpk = in_profileidpk;
    -- DELETE
    ELSEIF action_type = 'DELETE' THEN
        update user_profiles set isActive=0,isDeleted=1 WHERE profileidpk = in_profileidpk;
        SELECT * FROM user_profiles WHERE profileidpk = in_profileidpk;
 ELSEIF action_type = 'ACTIVATE' THEN
        update user_profiles set isActive=1,isDeleted=0 WHERE profileidpk = in_profileidpk;
        SELECT * FROM user_profiles WHERE profileidpk = in_profileidpk;
    ELSE
        SELECT * FROM user_profiles WHERE profileidpk = in_profileidpk;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `populate_sample_data` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`devom`@`%` PROCEDURE `populate_sample_data`()
BEGIN
    -- Businesses
    INSERT INTO business_master(name) VALUES ('Tata Enterprises'), ('Jubilant Food works'), ('McDonalds');

    -- Brands
    INSERT INTO brand_master(brand_name, business_idpkfk)
    VALUES 
        ('Tanishq', 1), ('Tata Motors', 1), ('Titan', 1), ('Chroma', 1),
        ('Dominos', 2), ('Dunkin', 2),
        ('McDonalds', 3);

    -- Categories
    INSERT INTO categories(name) VALUES ('Jewellery'), ('Automobile'), ('Watches'), ('Electronics'), ('Restaurant');

    -- Tags
    INSERT INTO tag_master(name)
    VALUES ('Gold Rings'), ('Titan Watches'), ('SUV'), ('Cars'), ('Motor Cycle'), 
           ('Electronics'), ('Burger'), ('Fries'), ('Chicken Nugget'), ('Fast Food'), ('McChicken Burger');

    -- Stores
    INSERT INTO stores(brandidpkfk, name, address, latitude, longitude)
    VALUES
        (1, 'Store1', 'Tanishq Address 1', 28.6139, 77.2090),
        (1, 'Store2', 'Tanishq Address 2', 28.7041, 77.1025),
        (2, 'Store1', 'Tata Motors Address 1', 28.5355, 77.3910),
        (2, 'Store2', 'Tata Motors Address 2', 28.4595, 77.0266),
        (3, 'Store1', 'Titan Address 1', 28.4089, 77.3178),
        (3, 'Store2', 'Titan Address 2', 28.9845, 77.7064),
        (4, 'Store1', 'Chroma Address 1', 28.4595, 77.0266),
        (4, 'Store2', 'Chroma Address 2', 28.4089, 77.3178),
        (5, 'Store1', 'Dominos Address', 28.7041, 77.1025),
        (6, 'Store1', 'Dunkin Address', 28.5355, 77.3910),
        (7, 'Store1', 'McD Store1', 28.6139, 77.2090),
        (7, 'Store3', 'McD Store3', 28.7041, 77.1025),
        (7, 'Store4', 'McD Store4', 28.4595, 77.0266),
        (7, 'Store5', 'McD Store5', 28.4089, 77.3178);

    -- Mapping tags/categories to stores
    -- Example: Titan Watches in Titan store
    INSERT INTO store_category_tag(store_id, category_id, tag_id)
    VALUES 
        (5, 3, 2), (6, 3, 2), -- Titan Watch
        (3, 2, 3), (3, 2, 4), -- Tata Motors SUV Cars
        (4, 2, 3), (4, 2, 4),
        (11, 5, 7), (11, 5, 8), (11, 5, 9), (11, 5, 10), (11, 5, 11); -- McD Store1
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `register_or_login_user_with_provider` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`devom`@`%` PROCEDURE `register_or_login_user_with_provider`(
    IN p_email VARCHAR(255),
    IN p_name VARCHAR(255),
    IN p_provider_name VARCHAR(50),
    IN p_provider_user_id VARCHAR(255),
    in P_providerresponce text,
    in P_provideruniqueid text
  
)
BEGIN
    DECLARE v_user_id INT;
    DECLARE v_provider_id INT;
    DECLARE p_token VARCHAR(255);
    -- Find the provider_id
    SELECT provider_id INTO v_provider_id
    FROM auth_providers
    WHERE provider_name = p_provider_name;

    -- If the provider does not exist, insert it
    IF v_provider_id IS NULL THEN
        INSERT INTO auth_providers (provider_name) VALUES (p_provider_name);
        SET v_provider_id = LAST_INSERT_ID();
    END IF;

    -- Find the user_id by email
    SELECT user_id INTO v_user_id
    FROM users
    WHERE email = p_email and isActive=1 and isDeleted=0;

    -- If user does not exist, create a new user
    IF v_user_id IS NULL THEN
        INSERT INTO users (email, name) VALUES (p_email, p_name)
        ON DUPLICATE KEY UPDATE name = VALUES(name);

        SET v_user_id = LAST_INSERT_ID();
    ELSE
        -- If the user already exists, ensure the user_id is correct
        SELECT user_id INTO v_user_id
        FROM users
        WHERE email = p_email and isActive=1 and isDeleted=0;
    END IF;

    -- Generate a new token
    SET p_token = UUID();

    -- Check if the user is already linked to the provider
    IF NOT EXISTS (
        SELECT 1 
        FROM user_auth 
        WHERE user_id = v_user_id 
        AND provider_id = v_provider_id 
        AND provider_user_id = p_provider_user_id
        AND provideruseruniqueid = P_provideruniqueid
       
    ) THEN
        -- Link the user with the new auth provider
        INSERT INTO user_auth (user_id, provider_id, provider_user_id, token,provideruseruniqueid,providerresponce) 
        VALUES (v_user_id, v_provider_id, p_provider_user_id, p_token,P_provideruniqueid,P_providerresponce);
    ELSE
        -- Update the token for existing user-provider linkage
        UPDATE user_auth 
        SET token = p_token 
        WHERE user_id = v_user_id 
        AND provider_id = v_provider_id 
        AND provider_user_id = p_provider_user_id;
    END IF;
    
    select p_token as token;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `register_user` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`devom`@`%` PROCEDURE `register_user`(
    IN p_email VARCHAR(255),
    IN p_name VARCHAR(255),
    IN p_password VARCHAR(255)
)
BEGIN
    DECLARE v_user_id INT DEFAULT NULL;
    DECLARE v_provider_id INT DEFAULT NULL;
    DECLARE p_result BIGINT DEFAULT NULL;
    DECLARE p_message VARCHAR(2000) DEFAULT NULL;
    DECLARE v_existing_provider_id INT DEFAULT NULL;
    DECLARE duplicate_found BOOLEAN DEFAULT FALSE;

    -- Hash the password (Assuming the use of some hashing function, e.g., SHA2)
    SET @hashed_password = SHA2(p_password, 256);

    -- Find or create the provider_id for 'email'
    SELECT provider_id INTO v_provider_id
    FROM auth_providers
    WHERE provider_name = 'email';

    IF v_provider_id IS NULL THEN
        INSERT INTO auth_providers (provider_name) VALUES ('email');
        SET v_provider_id = LAST_INSERT_ID();
    END IF;

    -- Check if the email already exists in the users table
    SELECT user_id INTO v_user_id
    FROM users
    WHERE email = p_email and isActive=1 and isDeleted=0 ;

    IF v_user_id IS NOT NULL THEN
        -- Check if the existing user is associated with the same provider in the user_auth table
        SELECT provider_id INTO v_existing_provider_id
        FROM user_auth
        WHERE user_id = v_user_id AND provider_id = v_provider_id;

        IF v_existing_provider_id IS NOT NULL THEN
            -- Email already exists with the same provider, set the flag and skip further processing
            SET duplicate_found = TRUE;
        END IF;
    END IF;

    IF duplicate_found THEN
        -- Email already exists with the same provider, return a message
        SET p_result = -1;
        SET p_message = 'This email ID is already used with the same provider';
    ELSE
        -- If user does not exist, create a new user entry
        IF v_user_id IS NULL THEN
            INSERT INTO users (email, name) 
            VALUES (p_email, p_name);

            SET v_user_id = LAST_INSERT_ID();
        END IF;

        -- Link the user with the email-password auth method
        INSERT INTO user_auth (user_id, provider_id, provider_user_id, password_hash) 
        VALUES (v_user_id, v_provider_id, p_email, @hashed_password);

        -- Successfully registered, return a message
        SET p_result = 1;
        SET p_message = 'Congrats, user successfully registered';
    END IF;
    
    SELECT p_result AS result, p_message AS message;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `register_userbkp` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`devom`@`%` PROCEDURE `register_userbkp`(
    IN p_email VARCHAR(255),
    IN p_name VARCHAR(255),
    IN p_password VARCHAR(255)
   
)
BEGIN
    DECLARE v_user_id INT;
    DECLARE v_provider_id INT;
     DECLARE p_result INT;
    DECLARE p_message VARCHAR(2000);

    -- Check if the email already exists
    SELECT user_id INTO v_user_id
    FROM users
    WHERE email = p_email;

    IF v_user_id IS NOT NULL THEN
        -- Email already exists, return a message
        SET p_result = -1;
        SET p_message = 'This email ID is already used';
    ELSE
        -- Hash the password (Assuming the use of some hashing function, e.g., SHA2)
        SET @hashed_password = SHA2(p_password, 256);

        -- Find or create the provider_id for 'email'
        SELECT provider_id INTO v_provider_id
        FROM auth_providers
        WHERE provider_name = 'email';

        IF v_provider_id IS NULL THEN
            INSERT INTO auth_providers (provider_name) VALUES ('email');
            SET v_provider_id = LAST_INSERT_ID();
        END IF;

        -- Create a new user
        INSERT INTO users (email, name) 
        VALUES (p_email, p_name);

        SET v_user_id = LAST_INSERT_ID();

        -- Link the user with the email-password auth method
        INSERT INTO user_auth (user_id, provider_id, provider_user_id, password_hash) 
        VALUES (v_user_id, v_provider_id, p_email, @hashed_password);

        -- Successfully registered, return a message
        SET p_result = 1;
        SET p_message = 'Congrats, user successfully registered';
    END IF;
    select p_result as result,p_message as message;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `relationship_management` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`devom`@`%` PROCEDURE `relationship_management`(in action int,in P_r_id int, in r_name varchar(255))
BEGIN
select r_id,relationshipname from mstr_relationship;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SearchStoresByTag` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`devom`@`%` PROCEDURE `SearchStoresByTag`(
    IN p_user_lat DECIMAL(10,6),
    IN p_user_lng DECIMAL(10,6),
    IN p_search_term VARCHAR(255)
)
BEGIN
    SELECT 
        b.name AS business_name,
       b.businessidPK as business_id,
        get_resource_url_fn('BusinessImage', b.image) AS business_image,
         br.brandidPK as brand_id,
        br.brand_name AS brand_name,
        get_resource_url_fn('BrandImage', br.logo)  as brand_image,
        s.store_id,
        s.name AS store_name,
        get_resource_url_fn('StoreImage', s.image) as store_image,
        s.address,
        s.longitude,
        s.latitude,
        ROUND(
            6371 * ACOS(
                COS(RADIANS(p_user_lat)) * COS(RADIANS(s.latitude)) *
                COS(RADIANS(s.longitude) - RADIANS(p_user_lng)) +
                SIN(RADIANS(p_user_lat)) * SIN(RADIANS(s.latitude))
            ), 2
        ) AS distance_km
    FROM store_category_tag sct
    LEFT JOIN tag_master t ON sct.tag_id = t.tagidPK
    LEFT JOIN categories c ON sct.category_id = c.category_id
    JOIN stores s ON s.store_id = sct.store_id
    JOIN brand_master br ON br.brandidPK = s.brandidpkfk
    JOIN business_master b ON b.businessidPK = br.business_idpkfk
    WHERE 
        (t.name IS NOT NULL AND t.name LIKE CONCAT('%', p_search_term, '%'))
        OR (c.name IS NOT NULL AND c.name LIKE CONCAT('%', p_search_term, '%'))
    GROUP BY s.store_id
    ORDER BY distance_km ASC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_distribute_owner_earning` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`devom`@`%` PROCEDURE `sp_distribute_owner_earning`(
    IN p_owner_id BIGINT,
    IN p_earning_id BIGINT,
    IN p_base_amount DECIMAL(15,2),
    IN p_earning_date DATE
)
BEGIN
    DECLARE v_done INT DEFAULT 0;

    DECLARE v_request_id BIGINT;
    DECLARE v_requester_id BIGINT;
    DECLARE v_participant_id BIGINT;
    DECLARE v_percent DECIMAL(5,2);
    DECLARE v_amount DECIMAL(15,2);
DECLARE v_total_distributed DECIMAL(15,2) DEFAULT 0;
DECLARE v_remaining_amount DECIMAL(15,2);
    -- Cursor to fetch active accepted share requests
    DECLARE cur_shares CURSOR FOR
        SELECT
            sr.request_id,
            sr.requester_id,
            sr.participent_id,
            sr.requested_percent
        FROM share_requests sr
        WHERE sr.owner_id = p_owner_id
          AND sr.status = 2
          AND sr.isActive = 1
          AND sr.isDeleted = 0;

    DECLARE CONTINUE HANDLER FOR NOT FOUND SET v_done = 1;

    OPEN cur_shares;

    read_loop: LOOP
        FETCH cur_shares
        INTO v_request_id, v_requester_id, v_participant_id, v_percent;

        IF v_done = 1 THEN
            LEAVE read_loop;
        END IF;

        -- % wise calculation
        SET v_amount = ROUND((p_base_amount * v_percent) / 100, 2);
        SET v_total_distributed = v_total_distributed + v_amount;
        -- Insert immutable ledger entry
        INSERT INTO financial_ledger (
            request_id,
            owner_id,
            requester_id,
            participent_id,
            earning_id,

            applied_percent,
            base_amount,
            amount,

            earning_date,
            earning_month,

            entry_type,
            description
        )
        VALUES (
            v_request_id,
            p_owner_id,
            v_requester_id,
            v_participant_id,
            p_earning_id,

            v_percent,
            p_base_amount,
            v_amount,

            p_earning_date,
            DATE_FORMAT(p_earning_date, '%Y-%m'),

            'CREDIT',
            CONCAT(
                'Share earning ',
                v_percent,
                '% from owner ',
                p_owner_id
            )
        );

    END LOOP;

    CLOSE cur_shares;
SET v_remaining_amount = p_base_amount - v_total_distributed;
SELECT
    p_owner_id  as user_id,
    p_earning_id as earning_id,
    p_base_amount AS total_earning,
    v_total_distributed AS total_distributed,
    v_remaining_amount AS remaining_balance;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_ManageRecepients` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`devom`@`%` PROCEDURE `sp_ManageRecepients`(
    IN p_action VARCHAR(200),
    IN p_p_id INT,
    in p_request_id INT,
    IN p_u_id INT,
    in ownerid int,
    IN p_relation_id INT,
    IN p_name VARCHAR(255),
    IN p_dob DATE,
    IN p_allocation DECIMAL(5,2),
    IN p_image_name VARCHAR(255),
    in p_email varchar(255)
)
BEGIN
    DECLARE v_max_allowed DECIMAL(5,2);
    DECLARE v_current_total DECIMAL(5,2);
    DECLARE v_exists INT;
    DECLARE v_target_u_id INT;
    declare msgtext  varchar(255);
    DECLARE v_total_share DECIMAL(5,2);
    declare v_old_allocation DECIMAL(5,2);
    declare v_change DECIMAL(5,2);
    declare v_owner_total decimal(5,2);
	declare v_final_total decimal(5,2);
    declare v_owner_id int;
    SET v_target_u_id = p_u_id;
    
    -- Fix: Use the table alias to find u_id if p_u_id is null
    IF v_target_u_id IS NULL AND p_p_id IS NOT NULL THEN
        SELECT u_id INTO v_target_u_id FROM tbl_particiepents_master WHERE p_id = p_p_id;
    END IF;

    -- 1. UNIQUE CHECK & ALLOCATION VALIDATION
    IF p_action IN ('CREATE') THEN
        -- Fix: Explicitly qualify 'p_id' column to avoid ambiguity with variables
        SELECT COUNT(*) INTO v_exists FROM tbl_particiepents_master 
        WHERE u_id = p_u_id AND name = p_name AND relation_id = p_relation_id 
        AND isDeleted = 0 AND (p_action = 'CREATE' OR p_id != p_p_id);

        IF v_exists > 0 THEN
            SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Error: A record with this Name and Relation already exists.';
        END IF;

        SELECT IFNULL(max_allocation, 100.00) INTO v_max_allowed FROM users_profile WHERE usersidpkfk = p_u_id;
        
        -- Fix: Check current total from participants table, not profile table
        SELECT IFNULL(SUM(requested_percent), 0) INTO v_current_total FROM share_requests 
        WHERE owner_id = p_u_id AND isDeleted = 0 AND (p_action = 'CREATE' OR request_id != ownerid);

     
    END IF;

   
    CASE p_action
     WHEN 'CREATE' THEN

   
    SELECT IFNULL(SUM(requested_percent), 0)
    INTO v_total_share
    FROM share_requests
    WHERE owner_id = ownerid
     and
      isActive =1 and isDeleted =0
      AND status IN (1, 2);

    -- Check limit
    IF (v_total_share + p_allocation) > 100 THEN

      set  msgtext = CONCAT(
            'Total share cannot exceed 100%. Already used ',
            v_total_share,
            '%, remaining ',
            (100 - v_total_share),
            '%'
        );
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = msgtext;
    ELSE

        -- Default image
        SET p_image_name = 'no-image.png';

        -- Insert participant
        INSERT INTO tbl_particiepents_master
            (u_id, relation_id, name, dob, allocation, image_name)
        VALUES
            (p_u_id, p_relation_id, p_name, p_dob, p_allocation, p_image_name);

        -- Create share request
        CALL sp_send_share_request(
            ownerid,
            p_u_id,
            LAST_INSERT_ID(),
            p_allocation
        );

    END IF;
        -- Default image
       
    
     WHEN 'UPDATE' THEN

    -- Old allocation (optional now, kept for safety)
    SELECT IFNULL(requested_percent, 0)
    INTO v_old_allocation
    FROM share_requests
    WHERE request_id = p_request_id
      AND isDeleted = 0;

    -- Owner total EXCLUDING current row
    SELECT IFNULL(SUM(requested_percent), 0)
    INTO v_owner_total
    FROM share_requests
    WHERE owner_id = p_u_id
      AND isActive = 1
      AND isDeleted = 0
      AND status IN (1,2)
      AND request_id <> p_request_id;

    -- Final total
    SET v_final_total = v_owner_total + p_allocation;

    -- HARD STOP
    IF v_final_total > 100 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Owner total allocation cannot exceed 100%.';
    END IF;

    -- Safe update
    UPDATE tbl_particiepents_master
    SET relation_id = p_relation_id,
        name = p_name,
        dob = p_dob,
        allocation = p_allocation,
        image_name = p_image_name
    WHERE p_id = p_p_id
      AND u_id = p_u_id
      AND isDeleted = 0;

    UPDATE share_requests
    SET requested_percent = p_allocation
    WHERE request_id = p_request_id;
     /* AND owner_id = p_u_id
      AND requester_id = p_u_id;*/
       WHEN 'DELETE_SHARE' THEN
           /* UPDATE tbl_particiepents_master SET isDeleted = 1, isActive = 0 WHERE p_id = p_p_id;*/
            update share_requests set isDeleted = 1, isActive =0 where request_id = p_request_id;
              WHEN 'DELETE_PARTICIEPENT' THEN
            UPDATE tbl_particiepents_master SET isDeleted = 1, isActive = 0 WHERE p_id = p_p_id;
            update share_requests set isDeleted = 1, isActive =0 where participent_id = p_p_id;
        WHEN 'SELECT_BY_ID' THEN
             select * from vw_participentdetail where request_id =p_request_id;
		WHEN 'EXTERNAL_SHARE' THEN
            select user_id into v_owner_id from users where email=p_email;
            CALL sp_send_share_request(
            v_owner_id,
            p_u_id,
            p_p_id,
            p_allocation
            );
            
            WHEN 'ACCEPT_EXTERNAL_SHARE' THEN
            
             SELECT IFNULL(SUM(requested_percent), 0)
    INTO v_total_share
    FROM share_requests
    WHERE owner_id = ownerid
     and
      isActive =1 and isDeleted =0
      AND status IN (1, 2);

    -- Check limit
    IF (v_total_share + p_allocation) > 100 THEN

      set  msgtext = CONCAT(
            'Total share cannot exceed 100%. Already used ',
            v_total_share,
            '%, remaining ',
            (100 - v_total_share),
            '%'
        );
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = msgtext;
    ELSE
           update share_requests set status=2,requested_percent=p_allocation,responded_at =now() where request_id = p_request_id;
           end if;
           WHEN 'REJECT_EXTERNAL_SHARE' THEN
           update share_requests set status=3,requested_percent=0,responded_at =now() where request_id = p_request_id;
           
        
        WHEN 'SELECT_ALL' THEN
            SET v_target_u_id = p_u_id;

        ELSE
        
            SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Error: Invalid action.';
    END CASE;

    -- 3. REFRESHED LIST
    IF p_action IN ('CREATE', 'UPDATE', 'DELETE', 'SELECT_ALL','EXTERNAL_SHARE','ACCEPT_EXTERNAL_SHARE','REJECT_EXTERNAL_SHARE','DELETE_SHARE','DELETE_PARTICIEPENT') THEN
        -- Fix: Ensure the join condition is correct (r.u_id = up.usersidpkfk)
     select * from vw_participentdetail where owner_id =v_target_u_id and isActive =1 and isDeleted=0;
    END IF;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_manage_users_profile` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`devom`@`%` PROCEDURE `sp_manage_users_profile`(
    IN p_action VARCHAR(50),
    IN p_profileidpk INT,
    IN p_usersidpkfk INT,
    IN p_fullname VARCHAR(255),
    IN p_contactno VARCHAR(20),
    IN p_address VARCHAR(255),
    IN p_city VARCHAR(100),
    IN p_province VARCHAR(100),
    IN p_postalcode VARCHAR(20),
    IN p_max_allocation INT,
    IN p_allocation INT,
    IN p_isActive BOOLEAN,
    IN p_isDisabled BOOLEAN
)
BEGIN

    DECLARE v_target_user_id INT DEFAULT NULL;

    -- ================= INSERT =================
    IF UPPER(p_action) = 'INSERT' THEN

        INSERT INTO users_profile (
            usersidpkfk, fullname, contactno, address,
            city, province, postalcode,
            isActive, isDeleted, isDisabled,
            createddate, max_allocation, allocation
        )
        VALUES (
            p_usersidpkfk, p_fullname, p_contactno, p_address,
            p_city, p_province, p_postalcode,
            1, 0, 0,
            NOW(), p_max_allocation, p_allocation
        );

        SET v_target_user_id = p_usersidpkfk;


    -- ================= UPDATE =================
    ELSEIF UPPER(p_action) = 'UPDATE' THEN

        UPDATE users_profile
        SET fullname = p_fullname,
            contactno = p_contactno,
            address = p_address,
            city = p_city,
            province = p_province,
            postalcode = p_postalcode,
            max_allocation = p_max_allocation,
            allocation = p_allocation,
            isActive = p_isActive,
            isDisabled = p_isDisabled
        WHERE profileidpk = p_profileidpk
          AND isDeleted = 0;

        SELECT usersidpkfk INTO v_target_user_id
        FROM users_profile
        WHERE profileidpk = p_profileidpk
        LIMIT 1;


    -- ================= DELETE =================
    ELSEIF UPPER(p_action) = 'DELETE' THEN

        SELECT usersidpkfk INTO v_target_user_id
        FROM users_profile
        WHERE profileidpk = p_profileidpk
        LIMIT 1;

        UPDATE users_profile
        SET isDeleted = 1
        WHERE profileidpk = p_profileidpk;


    -- ================= SELECT =================
    ELSEIF UPPER(p_action) = 'SELECT' THEN

        SET v_target_user_id = p_usersidpkfk;

    END IF;


    -- ================= COMMON RETURN =================
    IF UPPER(p_action) IN ('INSERT','UPDATE','DELETE','SELECT') THEN

        SELECT *
        FROM vw_users_with_profile
        WHERE user_id = v_target_user_id;

    ELSE
        SELECT 'INVALID ACTION' AS result;
    END IF;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_owner_earning_full_distribution` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`devom`@`%` PROCEDURE `sp_owner_earning_full_distribution`(
    IN p_owner_id BIGINT,
    IN p_earning_id BIGINT,
    IN p_base_amount DECIMAL(15,2),
    IN p_earning_date DATE
)
BEGIN
    DECLARE v_total_share DECIMAL(5,2);

    START TRANSACTION;

    -- Owner credit
    CALL sp_owner_wallet_credit(
        p_owner_id,
        p_earning_id,
        p_base_amount,
        'Owner earning credit',
        p_earning_date
    );

    -- Safety: total % check
    SELECT IFNULL(SUM(requested_percent),0)
    INTO v_total_share
    FROM share_requests
    WHERE owner_id = p_owner_id
      AND status = 2
      AND isActive = 1
      AND isDeleted = 0;

    IF v_total_share > 100 THEN
        ROLLBACK;
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Share percent exceeds 100%';
    END IF;

    -- Participant distribution
    CALL sp_distribute_owner_earning(
        p_owner_id,
        p_earning_id,
        p_base_amount,
        p_earning_date
    );

    COMMIT;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_owner_wallet_credit` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`devom`@`%` PROCEDURE `sp_owner_wallet_credit`(
    IN p_owner_id BIGINT,
    IN p_earning_id BIGINT,
    IN p_amount DECIMAL(15,2),
    IN p_description VARCHAR(255),
    IN p_transaction_date DATE
)
BEGIN
    INSERT INTO owner_wallet_ledger (
        owner_id,
        earning_id,
        entry_type,
        amount,
        description,
        transaction_date,
        transaction_month
    )
    VALUES (
        p_owner_id,
        p_earning_id,
        'CREDIT',
        p_amount,
        p_description,
        p_transaction_date,
        DATE_FORMAT(p_transaction_date, '%Y-%m')
    );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_owner_wallet_share_debit` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`devom`@`%` PROCEDURE `sp_owner_wallet_share_debit`(
    IN p_owner_id BIGINT,
    IN p_request_id BIGINT,
    IN p_earning_id BIGINT,
    IN p_amount DECIMAL(15,2),
    IN p_description VARCHAR(255),
    IN p_transaction_date DATE
)
BEGIN
    INSERT INTO owner_wallet_ledger (
        owner_id,
        request_id,
        earning_id,
        entry_type,
        amount,
        description,
        transaction_date,
        transaction_month
    )
    VALUES (
        p_owner_id,
        p_request_id,
        p_earning_id,
        'DEBIT',
        p_amount,
        p_description,
        p_transaction_date,
        DATE_FORMAT(p_transaction_date, '%Y-%m')
    );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_participant_balance_by_date` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`devom`@`%` PROCEDURE `sp_participant_balance_by_date`(
    IN p_participent_id BIGINT,
    IN p_date_from DATE,
    IN p_date_to DATE
)
BEGIN
    SELECT
        participent_id,
        SUM(
            CASE
                WHEN entry_type = 'CREDIT' THEN amount
                ELSE -amount
            END
        ) AS current_balance
    FROM financial_ledger
    WHERE participent_id = p_participent_id
      AND earning_date BETWEEN p_date_from AND p_date_to;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_participant_withdrawal` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`devom`@`%` PROCEDURE `sp_participant_withdrawal`(
    IN p_participant_id BIGINT,
    IN p_amount DECIMAL(15,2),
    IN p_description VARCHAR(255)
)
BEGIN
    -- Safety: balance check
    IF (
        SELECT IFNULL(
            SUM(
                CASE
                    WHEN entry_type = 'CREDIT' THEN amount
                    ELSE -amount
                END
            ), 0
        )
        FROM financial_ledger
        WHERE participent_id = p_participant_id
    ) < p_amount THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Insufficient balance for withdrawal';
    END IF;

    INSERT INTO financial_ledger (
        participent_id,
        entry_type,
        amount,
        description,
        earning_date,
        earning_month
    )
    VALUES (
        p_participant_id,
        'DEBIT',
        p_amount,
        p_description,
        CURDATE(),
        DATE_FORMAT(CURDATE(), '%Y-%m')
    );

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_respond_share_request` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`devom`@`%` PROCEDURE `sp_respond_share_request`(
  IN p_request_id BIGINT,
  IN p_owner_id BIGINT,
  IN p_accept BOOLEAN
)
BEGIN
  DECLARE v_owner_id BIGINT;
  DECLARE v_requester_id BIGINT;
  DECLARE v_req_percent DECIMAL(5,2);
  DECLARE v_status VARCHAR(16);

  START TRANSACTION;

  -- Load and lock the request
  SELECT owner_id, requester_id, requested_percent, status
    INTO v_owner_id, v_requester_id, v_req_percent, v_status
  FROM share_requests
  WHERE request_id = p_request_id
  FOR UPDATE;

  IF v_owner_id IS NULL THEN
    ROLLBACK;
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Request not found';
  END IF;

  IF v_status <> 'pending' THEN
    ROLLBACK;
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Request is not pending';
  END IF;

  IF v_owner_id <> p_owner_id THEN
    ROLLBACK;
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Owner mismatch for this request';
  END IF;

  IF p_accept THEN
    -- Compute total if we accept (replace or insert)
    -- If allocation exists, we will replace its percent with v_req_percent
    SET @current_total := fn_total_percent_for_owner(p_owner_id);

    IF EXISTS (SELECT 1 FROM share_allocations WHERE owner_id = p_owner_id AND recipient_id = v_requester_id AND is_active = 1) THEN
      -- get current percent of this recipient to adjust the total
      SELECT percent_share INTO @old_pct
      FROM share_allocations
      WHERE owner_id = p_owner_id AND recipient_id = v_requester_id AND is_active = 1
      FOR UPDATE;

      SET @new_total := @current_total - IFNULL(@old_pct,0) + v_req_percent;
    ELSE
      SET @new_total := @current_total + v_req_percent;
    END IF;

    IF @new_total > 100.00 THEN
      ROLLBACK;
      SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Accepting this request would exceed 100% total allocation';
    END IF;

    -- Upsert allocation
    INSERT INTO share_allocations(owner_id, recipient_id, percent_share, source_request_id, is_active)
    VALUES (p_owner_id, v_requester_id, v_req_percent, p_request_id, 1)
    ON DUPLICATE KEY UPDATE
      percent_share = VALUES(percent_share),
      source_request_id = VALUES(source_request_id),
      is_active = 1;

    -- Mark request accepted
    UPDATE share_requests
       SET status = 'accepted', responded_at = NOW()
     WHERE request_id = p_request_id;
  ELSE
    -- Reject
    UPDATE share_requests
       SET status = 'rejected', responded_at = NOW()
     WHERE request_id = p_request_id;
  END IF;

  COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_reverse_ledger_entry` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`devom`@`%` PROCEDURE `sp_reverse_ledger_entry`(
    IN p_ledger_id BIGINT,
    IN p_reason VARCHAR(255)
)
BEGIN
    DECLARE v_request_id BIGINT;
    DECLARE v_owner_id BIGINT;
    DECLARE v_requester_id BIGINT;
    DECLARE v_participant_id BIGINT;
    DECLARE v_earning_id BIGINT;

    DECLARE v_percent DECIMAL(5,2);
    DECLARE v_base_amount DECIMAL(15,2);
    DECLARE v_amount DECIMAL(15,2);

    DECLARE v_earning_date DATE;
    DECLARE v_earning_month CHAR(7);

    -- Fetch original ledger entry
    SELECT
        request_id,
        owner_id,
        requester_id,
        participent_id,
        earning_id,
        applied_percent,
        base_amount,
        amount,
        earning_date,
        earning_month
    INTO
        v_request_id,
        v_owner_id,
        v_requester_id,
        v_participant_id,
        v_earning_id,
        v_percent,
        v_base_amount,
        v_amount,
        v_earning_date,
        v_earning_month
    FROM financial_ledger
    WHERE ledger_id = p_ledger_id
      AND entry_type = 'CREDIT';

    -- Insert reversal DEBIT
    INSERT INTO financial_ledger (
        request_id,
        owner_id,
        requester_id,
        participent_id,
        earning_id,

        applied_percent,
        base_amount,
        amount,

        earning_date,
        earning_month,

        entry_type,
        reference_ledger_id,
        description
    )
    VALUES (
        v_request_id,
        v_owner_id,
        v_requester_id,
        v_participant_id,
        v_earning_id,

        v_percent,
        v_base_amount,
        v_amount,

        v_earning_date,
        v_earning_month,

        'DEBIT',
        p_ledger_id,
        CONCAT('Reversal: ', p_reason)
    );

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_send_share_request` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`devom`@`%` PROCEDURE `sp_send_share_request`(
    IN p_owner_id BIGINT,
    IN p_requester_id BIGINT,
    IN p_participant_id BIGINT,
    IN p_requested_percent DECIMAL(5,2)
)
BEGIN
    DECLARE v_status INT;
    DECLARE v_share_type_id INT;
    DECLARE v_insert_status INT;
    DECLARE v_total_share DECIMAL(7,2);
    DECLARE v_respondeddatetime datetime;
    /* Basic validations */
    IF p_requested_percent < 0 OR p_requested_percent > 100 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'requested_percent must be between 0 and 100';
    END IF;

    /* Ensure users exist */
    IF (SELECT COUNT(*) FROM users WHERE user_id = p_owner_id) = 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Owner does not exist';
    END IF;

    IF (SELECT COUNT(*) FROM users WHERE user_id = p_requester_id) = 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Requester does not exist';
    END IF;

    IF (SELECT COUNT(*) FROM tbl_particiepents_master WHERE p_id = p_participant_id) = 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Participant does not exist';
    END IF;

    /* Calculate total allocated share (internal + external) */
    SELECT IFNULL(SUM(requested_percent), 0)
    INTO v_total_share
    FROM share_requests
    WHERE participent_id = p_participant_id
      AND status IN (1, 2); -- Pending + Accepted

    IF v_total_share + p_requested_percent > 100 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Total share cannot exceed 100%';
    END IF;

    /* Determine share_type_id and status */
    IF p_owner_id = p_requester_id THEN
        SET v_share_type_id = 1;
        SET v_insert_status = 2; -- Accepted
        set v_respondeddatetime = now();
    ELSE
        SET v_share_type_id = 2;
        SET v_insert_status = 1; -- Pending
    END IF;

    /* Check existing request */
    SELECT status
    INTO v_status
    FROM share_requests
    WHERE owner_id = p_owner_id
      AND requester_id = p_requester_id
      AND participent_id = p_participant_id
    LIMIT 1;

    /* If record exists, handle by status */
    IF v_status IS NOT NULL THEN

        IF v_status = 3 THEN
            SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'This request was rejected';
        ELSEIF v_status = 1 THEN
            SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'This request is already pending';
        ELSEIF v_status = 2 THEN
            SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'This request is already accepted';
        END IF;

    ELSE
        /* Insert new request */
        INSERT INTO share_requests (
            owner_id,
            requester_id,
            participent_id,
            requested_percent,
            share_type_id,
            status,
			responded_at
        )
        VALUES (
            p_owner_id,
            p_requester_id,
            p_participant_id,
            p_requested_percent,
            v_share_type_id,
            v_insert_status,
            v_respondeddatetime
        );
    END IF;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_share_owner_amount` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`devom`@`%` PROCEDURE `sp_share_owner_amount`(
  IN p_owner_id BIGINT,
  IN p_amount_rs DECIMAL(12,2),
  IN p_note VARCHAR(255)
)
BEGIN

  -- 1) DECLAREs must be at the top of the block
  DECLARE v_balance DECIMAL(12,2);
  DECLARE v_total_pct DECIMAL(6,2);

  DECLARE cur_recipient_id BIGINT;
  DECLARE cur_pct DECIMAL(5,2);
  DECLARE cur_amt DECIMAL(12,2);
  DECLARE done INT DEFAULT 0;
  DECLARE v_distributed DECIMAL(12,2) DEFAULT 0.00;

  -- Cursor and handler declarations also belong up-front
  DECLARE c CURSOR FOR
    SELECT recipient_id, percent_share
    FROM share_allocations
    WHERE owner_id = p_owner_id AND is_active = 1
    ORDER BY percent_share DESC, recipient_id ASC;

  DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;
SET SQL_SAFE_UPDATES = 0;
  -- 2) Now the executable logic
  IF p_amount_rs <= 0 THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Amount must be > 0';
  END IF;

  START TRANSACTION;

  -- Lock the owner's wallet
  SELECT balance_rs INTO v_balance
  FROM user_wallets
  WHERE user_id = p_owner_id
  FOR UPDATE;

  IF v_balance IS NULL THEN
    ROLLBACK;
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Owner wallet not found';
  END IF;

  IF v_balance < p_amount_rs THEN
    ROLLBACK;
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Insufficient owner balance';
  END IF;

  -- Load allocations
  SET v_total_pct = fn_total_percent_for_owner(p_owner_id);
  IF v_total_pct <= 0 THEN
    ROLLBACK;
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'No active allocations to share';
  END IF;

  -- Deduct from owner up front
  UPDATE user_wallets
     SET balance_rs = balance_rs - p_amount_rs
   WHERE user_id = p_owner_id;

  -- Distribute by cursor
  OPEN c;
  read_loop: LOOP
    FETCH c INTO cur_recipient_id, cur_pct;
    IF done = 1 THEN
      LEAVE read_loop;
    END IF;

    SET cur_amt = ROUND(p_amount_rs * (cur_pct / 100.0), 2);
    SET v_distributed = v_distributed + cur_amt;

    -- credit recipient wallet (create if missing)
    INSERT INTO user_wallets (user_id, balance_rs)
    VALUES (cur_recipient_id, cur_amt)
    ON DUPLICATE KEY UPDATE balance_rs = balance_rs + VALUES(balance_rs);

    -- ledger
    INSERT INTO transfers(owner_id, recipient_id, amount_rs, percent_snapshot, note)
    VALUES (p_owner_id, cur_recipient_id, cur_amt, cur_pct, p_note);
  END LOOP read_loop;
  CLOSE c;

  -- Handle rounding residue: give back to owner (keeps accounting exact)
  IF v_distributed <> p_amount_rs THEN
    UPDATE user_wallets
       SET balance_rs = balance_rs + (p_amount_rs - v_distributed)
     WHERE user_id = p_owner_id;
  END IF;

  COMMIT;
  SET SQL_SAFE_UPDATES = 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_user_earning_summary_datewise` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`devom`@`%` PROCEDURE `sp_user_earning_summary_datewise`(
    IN p_user_id BIGINT,
    IN p_from_date DATE,
    IN p_to_date DATE
)
BEGIN
 DECLARE v_from_date DATE;
    DECLARE v_to_date DATE;

    -- Agar date NULL ho to default last 6 months
    SET v_to_date = IFNULL(p_to_date, CURDATE());
    SET v_from_date = IFNULL(p_from_date, DATE_SUB(v_to_date, INTERVAL 6 MONTH));

    SELECT
      fn_format_pretty_date(fl.earning_date)  as earning_date,

        
        fn_format_user_currency(p_user_id,SUM(
            CASE
                WHEN fl.entry_type = 'CREDIT'
                THEN fl.amount
                ELSE 0
            END
        )) AS total_earning,

       
        fn_format_user_currency(p_user_id,SUM(
            CASE
                WHEN fl.entry_type = 'CREDIT'
                 AND fl.owner_id = fl.requester_id
                THEN fl.amount
                ELSE 0
            END
        )) AS internal_earning,

        
        fn_format_user_currency(p_user_id,SUM(
            CASE
                WHEN fl.entry_type = 'CREDIT'
                 AND fl.owner_id <> fl.requester_id
                THEN fl.amount
                ELSE 0
            END
        )) AS external_earning

    FROM financial_ledger fl
    WHERE fl.requester_id = p_user_id
      AND fl.earning_date BETWEEN v_from_date AND v_to_date

    GROUP BY fl.earning_date
    ORDER BY fl.earning_date;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_user_earning_summary_monthwise` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`devom`@`%` PROCEDURE `sp_user_earning_summary_monthwise`(
    IN p_user_id BIGINT,
    IN p_from_date DATE,
    IN p_to_date DATE
)
BEGIN
    DECLARE v_from_date DATE;
    DECLARE v_to_date DATE;

    -- Default last 6 months
    SET v_to_date = IFNULL(p_to_date, CURDATE());
    SET v_from_date = IFNULL(p_from_date, DATE_SUB(v_to_date, INTERVAL 6 MONTH));

    SELECT
        DATE_FORMAT(fl.earning_date, '%Y-%m') AS month_key,   -- sorting key
        DATE_FORMAT(fl.earning_date, '%M, %Y') AS month_label, -- May, 2026

        fn_format_user_currency(p_user_id,SUM(
            CASE
                WHEN fl.entry_type = 'CREDIT'
                THEN fl.amount
                ELSE 0
            END
        )) AS total_earning,
        SUM(
            CASE
                WHEN fl.entry_type = 'CREDIT'
                THEN fl.amount
                ELSE 0
            END
        ) AS total_earning_val,

        fn_format_user_currency(p_user_id,SUM(
            CASE
                WHEN fl.entry_type = 'CREDIT'
                 AND fl.owner_id = fl.requester_id
                THEN fl.amount
                ELSE 0
            END
        )) AS internal_earning,
        SUM(
            CASE
                WHEN fl.entry_type = 'CREDIT'
                 AND fl.owner_id = fl.requester_id
                THEN fl.amount
                ELSE 0
            END
        ) AS internal_earning_val,

        fn_format_user_currency(p_user_id,SUM(
            CASE
                WHEN fl.entry_type = 'CREDIT'
                 AND fl.owner_id <> fl.requester_id
                THEN fl.amount
                ELSE 0
            END
        )) AS external_earning,
        SUM(
            CASE
                WHEN fl.entry_type = 'CREDIT'
                 AND fl.owner_id <> fl.requester_id
                THEN fl.amount
                ELSE 0
            END
        ) AS external_earning_val

    FROM financial_ledger fl
    WHERE fl.requester_id = p_user_id
      AND fl.earning_date BETWEEN v_from_date AND v_to_date

    GROUP BY DATE_FORMAT(fl.earning_date, '%Y-%m'),
             DATE_FORMAT(fl.earning_date, '%M, %Y')

    ORDER BY month_key;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_user_earning_summary_participantwise` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`devom`@`%` PROCEDURE `sp_user_earning_summary_participantwise`(
    IN p_user_id BIGINT,
    IN p_from_date DATE,
    IN p_to_date DATE
)
BEGIN
    DECLARE v_from_date DATE;
    DECLARE v_to_date DATE;

    -- Default last 6 months
    SET v_to_date = IFNULL(p_to_date, CURDATE());
    SET v_from_date = IFNULL(p_from_date, DATE_SUB(v_to_date, INTERVAL 6 MONTH));

    SELECT
        fl.participent_id,
        p.name AS participant_name,
        get_resource_url_fn('UserImage',p.image_name) as image_name,

        fn_format_user_currency(p_user_id,
            SUM(CASE
                    WHEN fl.entry_type = 'CREDIT'
                    THEN fl.amount
                    ELSE 0
                END)
        ) AS total_earning,

        fn_format_user_currency(p_user_id,
            SUM(CASE
                    WHEN fl.entry_type = 'CREDIT'
                     AND fl.owner_id = fl.requester_id
                    THEN fl.amount
                    ELSE 0
                END)
        ) AS internal_earning,

        fn_format_user_currency(p_user_id,
            SUM(CASE
                    WHEN fl.entry_type = 'CREDIT'
                     AND fl.owner_id <> fl.requester_id
                    THEN fl.amount
                    ELSE 0
                END)
        ) AS external_earning

    FROM financial_ledger fl
    LEFT JOIN tbl_particiepents_master p 
        ON p.p_id = fl.participent_id   -- yaha correct column match karo

    WHERE fl.requester_id = p_user_id
      AND fl.earning_date BETWEEN v_from_date AND v_to_date

    GROUP BY fl.participent_id, p.name, p.image_name
    ORDER BY SUM(
        CASE
            WHEN fl.entry_type = 'CREDIT'
            THEN fl.amount
            ELSE 0
        END
    ) DESC;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_user_earning_summary_range` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`devom`@`%` PROCEDURE `sp_user_earning_summary_range`(
    IN p_user_id BIGINT,
    IN p_from_date DATE,
    IN p_to_date DATE
)
BEGIN
    SELECT
        p_user_id AS user_id,

       
        SUM(
            CASE
                WHEN entry_type = 'CREDIT'
                THEN amount
                ELSE 0
            END
        ) AS total_earning,

       
        SUM(
            CASE
                WHEN entry_type = 'CREDIT'
                 AND owner_id = requester_id
                THEN amount
                ELSE 0
            END
        ) AS internal_earning,

      
        SUM(
            CASE
                WHEN entry_type = 'CREDIT'
                 AND owner_id <> requester_id
                THEN amount
                ELSE 0
            END
        ) AS external_earning

    FROM financial_ledger
    WHERE requester_id = p_user_id
      AND earning_date BETWEEN p_from_date AND p_to_date;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_user_earning_summary_range_v2` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`devom`@`%` PROCEDURE `sp_user_earning_summary_range_v2`(
    IN p_user_id BIGINT,
    IN p_from_date DATE,
    IN p_to_date DATE
)
BEGIN

    DECLARE v_from_date DATE;
    DECLARE v_to_date DATE;

    -- Agar date NULL ho to default last 6 months
    SET v_to_date = IFNULL(p_to_date, CURDATE());
    SET v_from_date = IFNULL(p_from_date, DATE_SUB(v_to_date, INTERVAL 6 MONTH));

    SELECT
        p_user_id AS user_id,

        fn_format_user_currency(p_user_id,IFNULL(SUM(
            CASE
                WHEN entry_type = 'CREDIT'
                THEN amount
                ELSE 0
            END
        ),0)) AS total_earning,

        fn_format_user_currency(p_user_id,IFNULL(SUM(
            CASE
                WHEN entry_type = 'CREDIT'
                 AND owner_id = requester_id
                THEN amount
                ELSE 0
            END
        ),0)) AS internal_earning,

        fn_format_user_currency(p_user_id,IFNULL(SUM(
            CASE
                WHEN entry_type = 'CREDIT'
                 AND owner_id <> requester_id
                THEN amount
                ELSE 0
            END
        ),0)) AS external_earning,
        
fn_get_user_currency_symbol(p_user_id) as currency_symbol
    FROM financial_ledger
    WHERE requester_id = p_user_id
      AND earning_date BETWEEN v_from_date AND v_to_date;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `vw_participentdetail`
--

/*!50001 DROP VIEW IF EXISTS `vw_participentdetail`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`devom`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_participentdetail` AS select `tp`.`p_id` AS `p_id`,`st`.`request_id` AS `request_id`,`up`.`fullname` AS `fullname`,`tp`.`name` AS `name`,`tp`.`dob` AS `dob`,`mr`.`r_id` AS `r_id`,`mr`.`relationshipname` AS `relationshipname`,concat(cast(`st`.`requested_percent` as unsigned),'%') AS `allocation`,concat(cast(sum(`st`.`requested_percent`) OVER (PARTITION BY `st`.`owner_id` )  as unsigned),'% / 100%') AS `total`,`get_resource_url_fn`('UserImage',`tp`.`image_name`) AS `image_name`,concat(`tc`.`total_participants`,' Recipients') AS `countofparticipent`,'Allocations' AS `allocation_label`,`ss`.`st_id` AS `st_id`,`ss`.`caption` AS `caption`,`st`.`isActive` AS `isActive`,`st`.`requester_id` AS `requester_id`,`st`.`responded_at` AS `responded_at`,concat('Date : ',date_format(`st`.`created_at`,'%d-%m-%Y')) AS `created_at`,`st`.`isDeleted` AS `isDeleted`,`t`.`caption` AS `share_type`,`t`.`share_typeid` AS `share_typeid`,`get_resource_url_fn`('Logos',`t`.`image_name`) AS `share_logo`,`o`.`user_id` AS `owner_id`,`tp`.`u_id` AS `requester_user_id`,`r`.`email` AS `from_user`,`o`.`email` AS `owner_user`,concat(`up`.`fullname`,', has requested you to become guest contributor for his recipient') AS `message` from (((((((((`tbl_particiepents_master` `tp` join `users_profile` `up` on((`up`.`usersidpkfk` = `tp`.`u_id`))) join `share_requests` `st` on((`st`.`participent_id` = `tp`.`p_id`))) join `users` `r` on((`r`.`user_id` = `st`.`requester_id`))) join `users` `o` on((`o`.`user_id` = `st`.`owner_id`))) join `tbl_share_type` `t` on((`t`.`share_typeid` = `st`.`share_type_id`))) join `share_status` `ss` on((`ss`.`st_id` = `st`.`status`))) join `mstr_relationship` `mr` on((`mr`.`r_id` = `tp`.`relation_id`))) join `users_profile` `op` on((`op`.`usersidpkfk` = `o`.`user_id`))) left join (select `share_requests`.`owner_id` AS `owner_id`,count(distinct `share_requests`.`participent_id`) AS `total_participants` from `share_requests` where ((`share_requests`.`isActive` = 1) and (`share_requests`.`isDeleted` = 0) and (`share_requests`.`status` = 2)) group by `share_requests`.`owner_id`) `tc` on((`tc`.`owner_id` = `st`.`owner_id`))) where ((`st`.`isActive` = 1) and (`tp`.`isActive` = 1)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_users_with_profile`
--

/*!50001 DROP VIEW IF EXISTS `vw_users_with_profile`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`devom`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_users_with_profile` AS select `u`.`user_id` AS `user_id`,`u`.`email` AS `email`,`u`.`name` AS `name`,`u`.`isProfileCompleted` AS `isProfileCompleted`,`u`.`created_at` AS `created_at`,`pu`.`profileidpk` AS `profileidpk`,`pu`.`fullname` AS `fullname`,`pu`.`contactno` AS `contactno`,`pu`.`address` AS `address`,`pu`.`city` AS `city`,`pu`.`province` AS `province`,`pu`.`postalcode` AS `postalcode`,`pu`.`max_allocation` AS `max_allocation`,`pu`.`allocation` AS `allocation`,`pu`.`user_image` AS `user_image`,`pu`.`isDeleted` AS `isDeleted`,`pu`.`isActive` AS `isActive` from (`users` `u` join `users_profile` `pu` on((`u`.`user_id` = `pu`.`usersidpkfk`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-02-13 11:56:36
