-- MariaDB dump 10.19  Distrib 10.5.17-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: chironae_glover
-- ------------------------------------------------------
-- Server version	10.5.17-MariaDB-cll-lve

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
-- Current Database: `chironae_glover`
--


--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admins` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `f_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `l_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `fcm_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admins_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` (`id`, `f_name`, `l_name`, `phone`, `email`, `image`, `password`, `remember_token`, `created_at`, `updated_at`, `fcm_token`) VALUES (1,'admin',NULL,'+923106473564','admin@gmail.com',NULL,'$2y$10$SY6CfKxQn5cxou4qnjvqh.5w3ao3y3fXTk.f/yTO63ZCFZY5GYU0y','RBrR6TwkeD0p6oBVJ5OlrmPHaKhvxm1dwyl5sCe8jun5QSTPIJhkuShniXec','2022-05-31 09:26:27','2022-05-31 09:26:27',NULL);
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attributes`
--

DROP TABLE IF EXISTS `attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attributes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attributes`
--

LOCK TABLES `attributes` WRITE;
/*!40000 ALTER TABLE `attributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banners`
--

DROP TABLE IF EXISTS `banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banners` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banners`
--

LOCK TABLES `banners` WRITE;
/*!40000 ALTER TABLE `banners` DISABLE KEYS */;
INSERT INTO `banners` (`id`, `title`, `image`, `product_id`, `status`, `created_at`, `updated_at`, `category_id`) VALUES (1,'Fruits','2022-06-07-629f3bfa0a4d1.png',NULL,1,'2022-06-07 00:52:26','2022-08-20 22:21:50',1),(2,'Vegetables','2022-06-07-629f3c126fd0f.png',NULL,0,'2022-06-07 00:52:50','2022-08-20 22:21:48',2),(3,'meat','2022-06-07-629f3c26b9c1b.png',NULL,0,'2022-06-07 00:53:10','2022-08-20 22:21:41',3),(8,'Buy Now','2022-08-21-6302887748cda.png',NULL,1,'2022-08-21 23:33:11','2022-08-21 23:33:11',1),(9,'Fruits and Vegetables','2022-08-21-630288a85fdd6.png',NULL,1,'2022-08-21 23:34:00','2022-08-21 23:34:00',10),(10,'Bakery','2022-08-21-630288cdb7b55.png',NULL,1,'2022-08-21 23:34:37','2022-08-21 23:34:37',15);
/*!40000 ALTER TABLE `banners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `branches`
--

DROP TABLE IF EXISTS `branches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `branches` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `restaurant_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `coverage` int(11) NOT NULL DEFAULT 1,
  `remember_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branches`
--

LOCK TABLES `branches` WRITE;
/*!40000 ALTER TABLE `branches` DISABLE KEYS */;
INSERT INTO `branches` (`id`, `restaurant_id`, `name`, `email`, `password`, `latitude`, `longitude`, `address`, `status`, `created_at`, `updated_at`, `coverage`, `remember_token`, `image`) VALUES (1,NULL,'Lahore','Lahore@gmail.com','$2y$10$4OCotagpMFiftx0uaabkMup8x0BzgWE/sg7e1X2cOOUmiEd1zPHgW','25.2048','55.2708','Punjab Housing cooprative socity',1,'2021-02-24 09:45:49','2022-06-30 18:54:17',500,NULL,NULL);
/*!40000 ALTER TABLE `branches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `business_settings`
--

DROP TABLE IF EXISTS `business_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `business_settings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `business_settings`
--

LOCK TABLES `business_settings` WRITE;
/*!40000 ALTER TABLE `business_settings` DISABLE KEYS */;
INSERT INTO `business_settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES (1,'self_pickup','1','2021-01-06 05:55:51','2021-01-06 05:55:51'),(3,'restaurant_name','Chiron Express',NULL,NULL),(4,'currency','AED',NULL,NULL),(5,'logo','2022-05-31-62967a5647662.png',NULL,NULL),(6,'mail_config','{\"name\":\"Delivery APP\",\"host\":\"mail.demo.com\",\"driver\":\"smtp\",\"port\":\"587\",\"username\":\"info@demo.com\",\"email_id\":\"info@demo.com\",\"encryption\":\"tls\",\"password\":\"demo\"}',NULL,'2021-07-25 09:32:09'),(7,'delivery_charge','5',NULL,NULL),(8,'ssl_commerz_payment','{\"status\":\"0\",\"store_id\":null,\"store_password\":null}',NULL,'2021-07-25 09:32:22'),(9,'paypal','{\"status\":\"0\",\"paypal_client_id\":null,\"paypal_secret\":null}',NULL,'2021-07-25 09:32:42'),(10,'stripe','{\"status\":\"0\",\"api_key\":null,\"published_key\":null}',NULL,'2021-07-25 09:32:50'),(11,'phone','+971500000000',NULL,NULL),(13,'footer_text','Chiron - Copyright © 2022. All rights reserved.',NULL,NULL),(14,'address','Level 23, Boulevard Plaza Tower - 2 Sheikh Mohammed bin Rashid Blvd - Dubai.',NULL,NULL),(15,'email_address','customercare@chiron.ae',NULL,NULL),(16,'cash_on_delivery','{\"status\":\"1\"}',NULL,'2021-02-11 18:39:36'),(17,'email_verification','0',NULL,NULL),(18,'digital_payment','{\"status\":\"1\"}','2021-01-30 19:38:54','2021-01-30 19:38:58'),(19,'terms_and_conditions','<p></p>',NULL,'2021-05-30 08:51:56'),(20,'fcm_topic','',NULL,NULL),(21,'fcm_project_id','3f34f34',NULL,NULL),(22,'push_notification_key','AAAAUF_l5Hs:APA91bHAhbpXIG6RZt0i9fD9sdchbHPL9kdGK8H8khnoZsMXu5YxQEBydnNdu3HXNoR6VKfj9rfrmJrLacGfDJBaD_Ho-ucGKOsMI711gOuPhXWfHn0esA7o170tLC5fpMYOvSGe4re7',NULL,NULL),(24,'order_pending_message','{\"status\":1,\"message\":\"Your order has been placed successfully.\"}',NULL,NULL),(25,'order_processing_message','{\"status\":1,\"message\":\"Your order is going to the cook\"}',NULL,NULL),(26,'out_for_delivery_message','{\"status\":1,\"message\":\"Order out for delivery.\"}',NULL,NULL),(27,'order_delivered_message','{\"status\":1,\"message\":\"delivered\"}',NULL,NULL),(28,'delivery_boy_assign_message','{\"status\":1,\"message\":\"boy assigned\"}',NULL,NULL),(29,'delivery_boy_start_message','{\"status\":1,\"message\":\"start delivery\"}',NULL,NULL),(30,'delivery_boy_delivered_message','{\"status\":1,\"message\":\"boy delivered\"}',NULL,NULL),(32,'order_confirmation_msg','{\"status\":1,\"message\":\"Your order has been confirmed.\"}',NULL,NULL),(33,'razor_pay','{\"status\":\"0\",\"razor_key\":null,\"razor_secret\":null}','2021-02-14 10:15:12','2021-07-25 09:32:32'),(34,'location_coverage','{\"status\":1,\"longitude\":\"91.410747\",\"latitude\":\"22.986282\",\"coverage\":\"20\"}',NULL,NULL),(35,'minimum_order_value','60',NULL,NULL),(36,'software_mode','dev',NULL,NULL),(37,'software_version',NULL,NULL,NULL),(38,'paystack','{\"status\":\"0\",\"publicKey\":null,\"secretKey\":null,\"paymentUrl\":\"https:\\/\\/api.paystack.co\",\"merchantEmail\":null}','2021-04-24 18:40:34','2021-07-25 09:33:19'),(39,'senang_pay','{\"status\":\"0\",\"secret_key\":null,\"merchant_id\":null}','2021-04-27 14:02:18','2021-07-25 09:33:06'),(40,'privacy_policy','<p>rjdrjf</p>',NULL,'2021-05-30 08:52:40'),(41,'about_us','<p><strong>hello</strong></p>',NULL,'2021-05-30 08:44:52'),(42,'paystack','{\"status\":\"0\",\"publicKey\":null,\"secretKey\":null,\"paymentUrl\":\"https:\\/\\/api.paystack.co\",\"merchantEmail\":null}',NULL,'2021-07-25 09:33:19'),(43,'currency_symbol_position','right',NULL,NULL),(44,'country','AE',NULL,NULL),(45,'language','[\"en\"]',NULL,NULL),(46,'time_zone','Asia/Muscat',NULL,NULL),(47,'phone_verification','0',NULL,NULL),(48,'maintenance_mode','0',NULL,NULL),(49,'twilio_sms','{\"status\":0,\"sid\":null,\"token\":null,\"from\":null,\"otp_template\":null}','2021-09-05 09:16:15','2021-09-05 09:16:15'),(50,'nexmo_sms','{\"status\":0,\"api_key\":null,\"api_secret\":null,\"signature_secret\":\"\",\"private_key\":\"\",\"application_id\":\"\",\"from\":null,\"otp_template\":null}','2021-09-05 09:16:20','2021-09-05 09:16:20'),(51,'2factor_sms','{\"status\":\"0\",\"api_key\":null}','2021-09-05 09:16:25','2021-09-05 09:16:25'),(52,'msg91_sms','{\"status\":0,\"template_id\":null,\"authkey\":null}','2021-09-05 09:16:30','2021-09-05 09:16:30'),(53,'pagination_limit','10',NULL,NULL),(54,'map_api_key','AIzaSyBSbNX2uAKZC7P0DJCCBzaDlu9HWsvlg7A',NULL,NULL),(55,'delivery_management','{\"status\":\"0\",\"min_shipping_charge\":0,\"shipping_per_km\":0}',NULL,NULL),(56,'play_store_config','{\"status\":\"\",\"link\":\"\",\"min_version\":\"1\"}',NULL,NULL),(57,'app_store_config','{\"status\":\"\",\"link\":\"\",\"min_version\":\"1\"}',NULL,NULL),(58,'recaptcha','{\"status\":\"0\",\"site_key\":\"\",\"secret_key\":\"\"}',NULL,NULL),(59,'firebase_message_config','{\"apiKey\":\"AIzaSyC0VBFbH5SjrbOMAEOIQQdoOigF1uVPgTM\",\"authDomain\":\"https:\\/\\/accounts.google.com\\/o\\/oauth2\\/auth\",\"projectId\":\"chiron-e3a54\",\"storageBucket\":\"chiron-e3a54.appspot.com\",\"messagingSenderId\":\"345206285435\",\"appId\":\"1:345206285435:ios:5fe0938c38438133a2aede\"}','2022-09-05 17:54:18','2022-09-05 17:54:18'),(60,'customer_notify_message','{\"status\":0,\"message\":null}',NULL,NULL),(61,'returned_message','{\"status\":1,\"message\":\"Order returned message\"}',NULL,NULL),(62,'failed_message','{\"status\":1,\"message\":\"Order failed message\"}',NULL,NULL),(63,'canceled_message','{\"status\":1,\"message\":\"Order failed message\"}',NULL,NULL);
/*!40000 ALTER TABLE `business_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` bigint(11) NOT NULL,
  `position` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'def.png',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` (`id`, `name`, `parent_id`, `position`, `status`, `created_at`, `updated_at`, `image`) VALUES (1,'Cooking Essentials',0,0,1,'2022-06-06 22:55:17','2022-06-21 00:53:10','2022-06-21-62b1b1268b5d9.png'),(2,'Dairy & Eggs',0,0,1,'2022-06-06 23:01:42','2022-06-21 00:49:41','2022-06-21-62b1b0554ce84.png'),(3,'Beverages',0,0,1,'2022-06-06 23:03:30','2022-06-21 00:47:35','2022-06-21-62b1afd77798a.png'),(4,'Canned & Bottled Items',1,1,1,'2022-06-07 01:01:43','2022-06-21 01:21:11','def.png'),(5,'Cooking Oil & Ghee',1,1,1,'2022-06-07 01:01:50','2022-06-21 01:21:31','def.png'),(6,'Cheese & Cream',2,1,1,'2022-06-07 01:05:57','2022-06-21 01:23:49','def.png'),(7,'Butter & Margarine',2,1,1,'2022-06-07 01:09:15','2022-06-21 01:23:27','def.png'),(8,'Eggs',2,1,1,'2022-06-07 01:09:51','2022-06-21 01:22:55','def.png'),(9,'Rice, Pulses & Flour',1,1,1,'2022-06-07 01:10:40','2022-06-21 01:22:31','def.png'),(10,'Fruits and Vegetables',0,0,1,'2022-06-21 00:09:14','2022-06-21 00:45:43','2022-06-21-62b1af67a199a.png'),(11,'Meat',0,0,1,'2022-06-21 00:54:59','2022-06-21 00:54:59','2022-06-21-62b1b193c25f6.png'),(12,'Breakfast & Bakery',0,0,1,'2022-06-21 01:11:32','2022-06-21 01:11:32','2022-06-21-62b1b574b8ccc.png'),(13,'Frozen',0,0,1,'2022-06-21 01:13:33','2022-08-21 23:52:06','2022-08-21-63028ce631f52.png'),(14,'Stationery',0,0,1,'2022-06-21 01:14:33','2022-08-21 23:51:30','2022-08-21-63028cc2f17d3.png'),(15,'Baking & Desserts',0,0,1,'2022-06-21 01:15:46','2022-08-21 23:49:57','2022-08-21-63028c65e1ac1.png'),(16,'Pet Care',0,0,1,'2022-06-21 01:16:33','2022-06-21 01:16:33','2022-06-21-62b1b6a177318.png'),(17,'Organic 1',0,0,1,'2022-06-21 01:17:26','2022-08-21 23:49:13','2022-08-21-63028c39e6cc7.png'),(18,'Yogurt',2,1,1,'2022-06-21 01:24:12','2022-06-21 01:24:12','def.png'),(19,'Sauces & Seasonings',1,1,1,'2022-06-21 01:24:39','2022-06-21 01:25:44','def.png'),(20,'Fresh Milk & Tea Whitners',2,1,1,'2022-06-21 01:26:05','2022-06-21 01:26:05','def.png'),(21,'Noodles & Pasta',1,1,1,'2022-06-21 01:26:27','2022-06-21 01:26:27','def.png'),(22,'Spices, Salt & Sugar',1,1,1,'2022-06-21 01:26:48','2022-06-21 01:26:48','def.png'),(23,'Pickles & Chutneys',1,1,1,'2022-06-21 01:27:10','2022-06-21 01:27:10','def.png'),(24,'Fruits',10,1,1,'2022-06-21 01:27:28','2022-06-21 01:27:28','def.png'),(25,'Vegetables',10,1,1,'2022-06-21 01:27:37','2022-06-21 01:27:37','def.png'),(26,'Tea & Coffee',3,1,1,'2022-06-21 01:27:55','2022-06-21 01:27:55','def.png'),(27,'Juices & Drinks',3,1,1,'2022-06-21 01:28:09','2022-06-21 01:28:09','def.png'),(28,'Soft Drinks',3,1,1,'2022-06-21 01:28:18','2022-06-21 01:28:18','def.png'),(29,'Water',3,1,1,'2022-06-21 01:28:27','2022-06-21 01:28:27','def.png'),(30,'Fresh Meat',11,1,1,'2022-06-21 01:28:44','2022-06-21 01:28:44','def.png'),(31,'Frozen Meat',11,1,1,'2022-06-21 01:28:53','2022-06-21 01:28:53','def.png'),(32,'Bread & Rolls',12,1,1,'2022-06-21 01:29:11','2022-06-21 01:29:11','def.png'),(33,'Jams, Honey & Spreads',12,1,1,'2022-06-21 01:29:32','2022-06-21 01:29:32','def.png'),(34,'Croissants, Pastries & Cakes',12,1,1,'2022-06-21 01:30:05','2022-06-21 01:30:05','def.png'),(35,'Cereals',12,1,1,'2022-06-21 01:30:28','2022-06-21 01:30:28','def.png'),(36,'Fruits & Vegetables',13,1,1,'2022-06-21 01:33:20','2022-06-21 01:33:20','def.png'),(37,'Ready To Cook',13,1,1,'2022-06-21 01:33:32','2022-06-21 01:33:32','def.png'),(38,'Ice Cream',13,1,1,'2022-06-21 01:33:41','2022-06-21 01:33:41','def.png'),(39,'Office & School',14,1,1,'2022-06-21 01:33:56','2022-06-21 01:33:56','def.png'),(40,'Art & Crafts',14,1,1,'2022-06-21 01:34:10','2022-06-21 01:34:10','def.png'),(41,'Baking & Desserts',15,1,1,'2022-06-21 01:34:36','2022-06-21 01:34:36','def.png'),(42,'Baking Supplies',15,1,1,'2022-06-21 01:34:50','2022-06-21 01:34:50','def.png'),(43,'Pet Food',16,1,1,'2022-06-21 01:35:02','2022-06-21 01:35:02','def.png'),(44,'Pet Accessories',16,1,1,'2022-06-21 01:35:26','2022-06-21 01:35:26','def.png'),(45,'Organic 1',17,1,1,'2022-06-21 01:35:46','2022-06-21 01:35:46','def.png'),(46,'Organic 2',17,1,1,'2022-06-21 01:35:56','2022-06-21 01:35:56','def.png'),(47,'Organic 3',17,1,1,'2022-06-21 01:36:04','2022-06-21 01:36:04','def.png'),(48,'CHIRON TEST',0,0,1,'2022-07-30 20:32:52','2022-08-21 23:48:48','2022-08-21-63028c209bd93.png'),(49,'TEST 321',48,1,1,'2022-08-03 02:32:18','2022-08-03 02:32:18','def.png');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conversations`
--

DROP TABLE IF EXISTS `conversations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `conversations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reply` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `checked` tinyint(1) NOT NULL DEFAULT 0,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_reply` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conversations`
--

LOCK TABLES `conversations` WRITE;
/*!40000 ALTER TABLE `conversations` DISABLE KEYS */;
/*!40000 ALTER TABLE `conversations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupons`
--

DROP TABLE IF EXISTS `coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coupons` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `expire_date` date DEFAULT NULL,
  `min_purchase` decimal(8,2) NOT NULL DEFAULT 0.00,
  `max_discount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `discount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `discount_type` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'percentage',
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `coupon_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `limit` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupons`
--

LOCK TABLES `coupons` WRITE;
/*!40000 ALTER TABLE `coupons` DISABLE KEYS */;
/*!40000 ALTER TABLE `coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currencies`
--

DROP TABLE IF EXISTS `currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `currencies` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_symbol` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exchange_rate` decimal(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currencies`
--

LOCK TABLES `currencies` WRITE;
/*!40000 ALTER TABLE `currencies` DISABLE KEYS */;
INSERT INTO `currencies` (`id`, `country`, `currency_code`, `currency_symbol`, `exchange_rate`, `created_at`, `updated_at`) VALUES (1,'US Dollar','USD','$',1.00,NULL,NULL),(2,'Canadian Dollar','CAD','CA$',1.00,NULL,NULL),(3,'Euro','EUR','€',1.00,NULL,NULL),(4,'United Arab Emirates Dirham','AED','د.إ.‏',1.00,NULL,NULL),(5,'Afghan Afghani','AFN','؋',1.00,NULL,NULL),(6,'Albanian Lek','ALL','L',1.00,NULL,NULL),(7,'Armenian Dram','AMD','֏',1.00,NULL,NULL),(8,'Argentine Peso','ARS','$',1.00,NULL,NULL),(9,'Australian Dollar','AUD','$',1.00,NULL,NULL),(10,'Azerbaijani Manat','AZN','₼',1.00,NULL,NULL),(11,'Bosnia-Herzegovina Convertible Mark','BAM','KM',1.00,NULL,NULL),(12,'Bangladeshi Taka','BDT','৳',1.00,NULL,NULL),(13,'Bulgarian Lev','BGN','лв.',1.00,NULL,NULL),(14,'Bahraini Dinar','BHD','د.ب.‏',1.00,NULL,NULL),(15,'Burundian Franc','BIF','FBu',1.00,NULL,NULL),(16,'Brunei Dollar','BND','B$',1.00,NULL,NULL),(17,'Bolivian Boliviano','BOB','Bs',1.00,NULL,NULL),(18,'Brazilian Real','BRL','R$',1.00,NULL,NULL),(19,'Botswanan Pula','BWP','P',1.00,NULL,NULL),(20,'Belarusian Ruble','BYN','Br',1.00,NULL,NULL),(21,'Belize Dollar','BZD','$',1.00,NULL,NULL),(22,'Congolese Franc','CDF','FC',1.00,NULL,NULL),(23,'Swiss Franc','CHF','CHf',1.00,NULL,NULL),(24,'Chilean Peso','CLP','$',1.00,NULL,NULL),(25,'Chinese Yuan','CNY','¥',1.00,NULL,NULL),(26,'Colombian Peso','COP','$',1.00,NULL,NULL),(27,'Costa Rican Colón','CRC','₡',1.00,NULL,NULL),(28,'Cape Verdean Escudo','CVE','$',1.00,NULL,NULL),(29,'Czech Republic Koruna','CZK','Kč',1.00,NULL,NULL),(30,'Djiboutian Franc','DJF','Fdj',1.00,NULL,NULL),(31,'Danish Krone','DKK','Kr.',1.00,NULL,NULL),(32,'Dominican Peso','DOP','RD$',1.00,NULL,NULL),(33,'Algerian Dinar','DZD','د.ج.‏',1.00,NULL,NULL),(34,'Estonian Kroon','EEK','kr',1.00,NULL,NULL),(35,'Egyptian Pound','EGP','E£‏',1.00,NULL,NULL),(36,'Eritrean Nakfa','ERN','Nfk',1.00,NULL,NULL),(37,'Ethiopian Birr','ETB','Br',1.00,NULL,NULL),(38,'British Pound Sterling','GBP','£',1.00,NULL,NULL),(39,'Georgian Lari','GEL','GEL',1.00,NULL,NULL),(40,'Ghanaian Cedi','GHS','GH¢',1.00,NULL,NULL),(41,'Guinean Franc','GNF','FG',1.00,NULL,NULL),(42,'Guatemalan Quetzal','GTQ','Q',1.00,NULL,NULL),(43,'Hong Kong Dollar','HKD','HK$',1.00,NULL,NULL),(44,'Honduran Lempira','HNL','L',1.00,NULL,NULL),(45,'Croatian Kuna','HRK','kn',1.00,NULL,NULL),(46,'Hungarian Forint','HUF','Ft',1.00,NULL,NULL),(47,'Indonesian Rupiah','IDR','Rp',1.00,NULL,NULL),(48,'Israeli New Sheqel','ILS','₪',1.00,NULL,NULL),(49,'Indian Rupee','INR','₹',1.00,NULL,NULL),(50,'Iraqi Dinar','IQD','ع.د',1.00,NULL,NULL),(51,'Iranian Rial','IRR','﷼',1.00,NULL,NULL),(52,'Icelandic Króna','ISK','kr',1.00,NULL,NULL),(53,'Jamaican Dollar','JMD','$',1.00,NULL,NULL),(54,'Jordanian Dinar','JOD','د.ا‏',1.00,NULL,NULL),(55,'Japanese Yen','JPY','¥',1.00,NULL,NULL),(56,'Kenyan Shilling','KES','Ksh',1.00,NULL,NULL),(57,'Cambodian Riel','KHR','៛',1.00,NULL,NULL),(58,'Comorian Franc','KMF','FC',1.00,NULL,NULL),(59,'South Korean Won','KRW','CF',1.00,NULL,NULL),(60,'Kuwaiti Dinar','KWD','د.ك.‏',1.00,NULL,NULL),(61,'Kazakhstani Tenge','KZT','₸.',1.00,NULL,NULL),(62,'Lebanese Pound','LBP','ل.ل.‏',1.00,NULL,NULL),(63,'Sri Lankan Rupee','LKR','Rs',1.00,NULL,NULL),(64,'Lithuanian Litas','LTL','Lt',1.00,NULL,NULL),(65,'Latvian Lats','LVL','Ls',1.00,NULL,NULL),(66,'Libyan Dinar','LYD','د.ل.‏',1.00,NULL,NULL),(67,'Moroccan Dirham','MAD','د.م.‏',1.00,NULL,NULL),(68,'Moldovan Leu','MDL','L',1.00,NULL,NULL),(69,'Malagasy Ariary','MGA','Ar',1.00,NULL,NULL),(70,'Macedonian Denar','MKD','Ден',1.00,NULL,NULL),(71,'Myanma Kyat','MMK','K',1.00,NULL,NULL),(72,'Macanese Pataca','MOP','MOP$',1.00,NULL,NULL),(73,'Mauritian Rupee','MUR','Rs',1.00,NULL,NULL),(74,'Mexican Peso','MXN','$',1.00,NULL,NULL),(75,'Malaysian Ringgit','MYR','RM',1.00,NULL,NULL),(76,'Mozambican Metical','MZN','MT',1.00,NULL,NULL),(77,'Namibian Dollar','NAD','N$',1.00,NULL,NULL),(78,'Nigerian Naira','NGN','₦',1.00,NULL,NULL),(79,'Nicaraguan Córdoba','NIO','C$',1.00,NULL,NULL),(80,'Norwegian Krone','NOK','kr',1.00,NULL,NULL),(81,'Nepalese Rupee','NPR','Re.',1.00,NULL,NULL),(82,'New Zealand Dollar','NZD','$',1.00,NULL,NULL),(83,'Omani Rial','OMR','ر.ع.‏',1.00,NULL,NULL),(84,'Panamanian Balboa','PAB','B/.',1.00,NULL,NULL),(85,'Peruvian Nuevo Sol','PEN','S/',1.00,NULL,NULL),(86,'Philippine Peso','PHP','₱',1.00,NULL,NULL),(87,'Pakistani Rupee','PKR','Rs',1.00,NULL,NULL),(88,'Polish Zloty','PLN','zł',1.00,NULL,NULL),(89,'Paraguayan Guarani','PYG','₲',1.00,NULL,NULL),(90,'Qatari Rial','QAR','ر.ق.‏',1.00,NULL,NULL),(91,'Romanian Leu','RON','lei',1.00,NULL,NULL),(92,'Serbian Dinar','RSD','din.',1.00,NULL,NULL),(93,'Russian Ruble','RUB','₽.',1.00,NULL,NULL),(94,'Rwandan Franc','RWF','FRw',1.00,NULL,NULL),(95,'Saudi Riyal','SAR','ر.س.‏',1.00,NULL,NULL),(96,'Sudanese Pound','SDG','ج.س.',1.00,NULL,NULL),(97,'Swedish Krona','SEK','kr',1.00,NULL,NULL),(98,'Singapore Dollar','SGD','$',1.00,NULL,NULL),(99,'Somali Shilling','SOS','Sh.so.',1.00,NULL,NULL),(100,'Syrian Pound','SYP','LS‏',1.00,NULL,NULL),(101,'Thai Baht','THB','฿',1.00,NULL,NULL),(102,'Tunisian Dinar','TND','د.ت‏',1.00,NULL,NULL),(103,'Tongan Paʻanga','TOP','T$',1.00,NULL,NULL),(104,'Turkish Lira','TRY','₺',1.00,NULL,NULL),(105,'Trinidad and Tobago Dollar','TTD','$',1.00,NULL,NULL),(106,'New Taiwan Dollar','TWD','NT$',1.00,NULL,NULL),(107,'Tanzanian Shilling','TZS','TSh',1.00,NULL,NULL),(108,'Ukrainian Hryvnia','UAH','₴',1.00,NULL,NULL),(109,'Ugandan Shilling','UGX','USh',1.00,NULL,NULL),(110,'Uruguayan Peso','UYU','$',1.00,NULL,NULL),(111,'Uzbekistan Som','UZS','so\'m',1.00,NULL,NULL),(112,'Venezuelan Bolívar','VEF','Bs.F.',1.00,NULL,NULL),(113,'Vietnamese Dong','VND','₫',1.00,NULL,NULL),(114,'CFA Franc BEAC','XAF','FCFA',1.00,NULL,NULL),(115,'CFA Franc BCEAO','XOF','CFA',1.00,NULL,NULL),(116,'Yemeni Rial','YER','﷼‏',1.00,NULL,NULL),(117,'South African Rand','ZAR','R',1.00,NULL,NULL),(118,'Zambian Kwacha','ZMK','ZK',1.00,NULL,NULL),(119,'Zimbabwean Dollar','ZWL','Z$',1.00,NULL,NULL);
/*!40000 ALTER TABLE `currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_addresses`
--

DROP TABLE IF EXISTS `customer_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_addresses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `address_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_person_number` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `contact_person_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_addresses`
--

LOCK TABLES `customer_addresses` WRITE;
/*!40000 ALTER TABLE `customer_addresses` DISABLE KEYS */;
INSERT INTO `customer_addresses` (`id`, `address_type`, `contact_person_number`, `address`, `latitude`, `longitude`, `created_at`, `updated_at`, `user_id`, `contact_person_name`) VALUES (2,'Home','+923137388266','Lahore  PK','31.457525216227427','74.36555050313471','2022-08-03 16:05:03','2022-08-03 16:05:03',1,'Adeel Ashraf'),(3,'Home','+923137388266','Lahore  PK','31.457061323598243','74.36565410345793','2022-08-15 10:23:40','2022-08-15 10:23:40',1,'Adeel Ashraf'),(8,'Workplace','+971568455575','Etisalat Ajman  AE','25.39848534646374','55.4845092818141','2022-08-29 22:41:53','2022-08-29 22:41:53',2,'Tehreem Hayat'),(9,'Home','+923137388266','9FXP+F47  AE','25.398609826199657','55.48514798283577','2022-08-29 22:53:33','2022-08-29 22:53:33',1,'Adeel Ashraf'),(10,'Hotel','+923137388266','الجرف 2  AE','25.39861406638305','55.485150665044785','2022-08-30 02:32:30','2022-08-30 02:32:30',1,'Adeel Ashraf'),(11,'Home','+923137388266','9FXP+F47  AE','25.398619215176947','55.48517279326916','2022-09-01 17:19:30','2022-09-01 17:19:30',1,'Adeel Ashraf'),(12,'Home','+971521097140','Amro Bin Al Aas St 120d Ajman AE','25.398467477099377','55.48477213829756','2022-09-07 09:57:06','2022-09-07 09:57:06',5,'Omer Omy'),(13,'Home','+971568455575','Amro Bin Al Aas St 120d Ajman AE','25.39853138278005','55.48480063676834','2022-09-09 16:35:07','2022-09-09 16:35:07',2,'Tehreem Hayat'),(14,'Hussnain town street 4','923106473564','Dr Kamran wali gali','31','74','2022-09-10 11:06:53','2022-09-10 11:07:22',6,'Muhammad Aslam');
/*!40000 ALTER TABLE `customer_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `d_m_reviews`
--

DROP TABLE IF EXISTS `d_m_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `d_m_reviews` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `delivery_man_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `comment` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `d_m_reviews`
--

LOCK TABLES `d_m_reviews` WRITE;
/*!40000 ALTER TABLE `d_m_reviews` DISABLE KEYS */;
/*!40000 ALTER TABLE `d_m_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dc_conversations`
--

DROP TABLE IF EXISTS `dc_conversations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dc_conversations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dc_conversations`
--

LOCK TABLES `dc_conversations` WRITE;
/*!40000 ALTER TABLE `dc_conversations` DISABLE KEYS */;
/*!40000 ALTER TABLE `dc_conversations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_histories`
--

DROP TABLE IF EXISTS `delivery_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_histories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) DEFAULT NULL,
  `deliveryman_id` bigint(20) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `longitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_histories`
--

LOCK TABLES `delivery_histories` WRITE;
/*!40000 ALTER TABLE `delivery_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `delivery_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_men`
--

DROP TABLE IF EXISTS `delivery_men`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_men` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `f_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `l_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `identity_number` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `identity_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `identity_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `auth_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fcm_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branch_id` bigint(20) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  UNIQUE KEY `delivery_men_phone_unique` (`phone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_men`
--

LOCK TABLES `delivery_men` WRITE;
/*!40000 ALTER TABLE `delivery_men` DISABLE KEYS */;
/*!40000 ALTER TABLE `delivery_men` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_verifications`
--

DROP TABLE IF EXISTS `email_verifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_verifications` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_verifications`
--

LOCK TABLES `email_verifications` WRITE;
/*!40000 ALTER TABLE `email_verifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_verifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
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
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `conversation_id` bigint(20) NOT NULL,
  `customer_id` bigint(20) DEFAULT NULL,
  `deliveryman_id` bigint(20) DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(23,'2016_06_01_000001_create_oauth_auth_codes_table',17),(24,'2016_06_01_000002_create_oauth_access_tokens_table',17),(25,'2016_06_01_000003_create_oauth_refresh_tokens_table',17),(26,'2016_06_01_000004_create_oauth_clients_table',17),(27,'2016_06_01_000005_create_oauth_personal_access_clients_table',17),(68,'2021_03_07_065637_change_product_image_clumn_type',42),(69,'2021_03_11_061437_add_unit_column_to_products',43),(70,'2021_03_11_070016_add_unit_to_order_details',43),(71,'2021_04_04_153448_add_column_to_product_table',44),(72,'2021_04_05_071507_add_stock_info_in_order_details',44),(73,'2021_04_07_145217_update_product_price_column',45),(74,'2021_01_10_145134_create_time_slots_table',46),(75,'2021_03_22_164017_add_time_slot_id_to_orders_table',46),(76,'2021_03_24_154346_add_date_to_orders_table',46),(77,'2021_03_24_161320_add_date_to_time_slots_table',46),(78,'2021_03_27_100851_add_delivery_date_to_orders_table',46),(79,'2021_04_08_093406_add_capacity_to_products',46),(80,'2021_04_15_184101_add_delivery_date_and_time_to_order_details',46),(81,'2021_04_21_081459_add_stock_to_products',46),(82,'2021_04_21_094959_add_stock_info_to_order_details',46),(83,'2021_05_03_160034_add_callback_to_order',47),(84,'2021_06_17_054551_create_soft_credentials_table',48),(85,'2021_07_01_160828_add_col_daily_needs_products',49),(86,'2021_07_26_170256_change_price_col_type',50),(87,'2021_09_01_133521_create_phone_verifications_table',51),(88,'2021_09_01_134803_create_translations_table',51),(89,'2021_09_04_082220_rename_email_col',51),(90,'2021_10_12_104445_add_temporary_token_to_users_table',52),(91,'2021_11_06_113028_add_extra_discount_to_order_table',53),(92,'2022_02_17_101623_change_conversaton_table_column_and_type',54),(93,'2022_02_17_112013_create_dc_conversations_table',54),(94,'2022_02_17_112101_create_messages_table',54),(95,'2022_02_17_125728_add_fcm_token_to_admin_table',54),(96,'2022_02_22_093732_create_social_media_table',54),(97,'2022_02_22_103038_change_banner_title_length',54),(98,'2022_02_22_130430_create_newsletters_table',54),(99,'2022_02_24_085940_change_name_length_in_category_table',54),(100,'2022_02_24_095937_change_name_length_in_attribute_table',54),(101,'2022_02_26_150826_add_delivery_address_to_order_table',54),(102,'2022_02_27_104337_add_image_to_branch_table',54);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletters`
--

DROP TABLE IF EXISTS `newsletters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `newsletters` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notifications` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
INSERT INTO `notifications` (`id`, `title`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES (1,'TEST','TEST',NULL,1,'2022-07-04 11:10:54','2022-07-04 11:10:54'),(2,'hy','heeloo','2022-07-27-62e153ff0e329.png',1,'2022-07-27 04:04:31','2022-07-27 04:04:31'),(3,'Hy Adeel Ashraf Developer','Hy Adeel Ashraf Developer','2022-09-05-631600176546f.png',1,'2022-09-05 17:56:39','2022-09-05 17:56:39'),(4,'Hy Adeel Ashraf Developer','Hy Adeel Ashraf Developer','2022-09-05-63160067ea8d2.png',1,'2022-09-05 17:57:59','2022-09-05 17:57:59');
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `client_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_access_tokens`
--

LOCK TABLES `oauth_access_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES ('07f28a11b7b86bbb42cdc0f229eb816ac19aaef265e9daf519eb78ee32e45a5ba948d88809bad167',2,3,'RestaurantCustomerAuth','[]',0,'2022-08-05 14:06:23','2022-08-05 14:06:23','2023-08-05 14:06:23'),('0cf9dcc4e028da816d852aa4eda5fd95daa56268e5f3e94a17cf25548127f3abe7e07aaea9e9ba14',1,3,'RestaurantCustomerAuth','[]',0,'2022-08-20 00:16:14','2022-08-20 00:16:14','2023-08-20 00:16:14'),('0f372ff1aac510db297968396945fd2ffc0289ab1fdb1fe80a2efeee880df52206737afa4ff2dc7e',1,3,'RestaurantCustomerAuth','[]',0,'2022-08-03 16:04:14','2022-08-03 16:04:14','2023-08-03 16:04:14'),('13ea59aeea57c1a3fd31ca5c0de7520c5b32b93008079fae0baed8707be7737814dc0d46323800fe',1,3,'RestaurantCustomerAuth','[]',0,'2022-07-27 03:07:40','2022-07-27 03:07:40','2023-07-27 03:07:40'),('1f5be8d5dda89da58e3cd752c5d948afb5d28e809fef7e6dd948615b14740f76121c69d588822ff3',1,3,'RestaurantCustomerAuth','[]',0,'2022-07-27 02:22:12','2022-07-27 02:22:12','2023-07-27 02:22:12'),('34d68d202789deadbf775d3f687f079f94f38060b06a26cc67f672c0f45f2b37da281b168e3512fd',1,3,'RestaurantCustomerAuth','[]',0,'2022-09-05 18:02:16','2022-09-05 18:02:16','2023-09-05 18:02:16'),('36a8e1de3629da1772544d75f99309e34e30c752ef24aeb425f8c21977145404f4798cd5049d5079',1,3,'RestaurantCustomerAuth','[]',0,'2022-06-14 19:56:16','2022-06-14 19:56:16','2023-06-14 19:56:16'),('434d75628647c3d87835048fca1228dabd7df8fa50c1e478a9c76e6b3b84e778078acbe82255d0f9',1,3,'RestaurantCustomerAuth','[]',0,'2022-07-27 03:16:28','2022-07-27 03:16:28','2023-07-27 03:16:28'),('54ab96fa2d2bae6f19d0fa0c141f71943140b2613e2630972469f4165378627446c25f9ba621e6f3',5,3,'RestaurantCustomerAuth','[]',0,'2022-08-04 01:48:52','2022-08-04 01:48:52','2023-08-04 01:48:52'),('556ba7929729426f4a110934b691160e00db0b38cf8d608358fc8a6ca9046f99244ff92c376fcfb8',1,3,'RestaurantCustomerAuth','[]',0,'2022-06-22 23:50:16','2022-06-22 23:50:16','2023-06-22 23:50:16'),('601b8347fbc00430d4abb9e0a909670cc7e4cc6045e244ea6bf988e9307aa8a61b79cf7ccd0dbc57',1,3,'RestaurantCustomerAuth','[]',0,'2022-07-27 00:24:20','2022-07-27 00:24:20','2023-07-27 00:24:20'),('6319ac36ac4f5a54af4b1a07dd616af9eb298ebb3b06078de6cdaa8e50bf57526c91d374031f3335',1,3,'RestaurantCustomerAuth','[]',0,'2022-08-07 21:39:31','2022-08-07 21:39:31','2023-08-07 21:39:31'),('67bbc61e702c4102bcfc81b1825b0d4d584c23c6640c2446aba25589846e424aab3d10914bdefdd1',3,3,'RestaurantCustomerAuth','[]',0,'2022-06-19 22:17:39','2022-06-19 22:17:39','2023-06-19 22:17:39'),('6879b9715aae855bc969dd4615bea026a5eb8c540034a3e8f9af6b37b84be3e367efa09489002fbc',1,3,'RestaurantCustomerAuth','[]',0,'2022-08-05 14:05:51','2022-08-05 14:05:51','2023-08-05 14:05:51'),('6e40addd04c45af12933afde2449bacb94d8728248f7b6bee31a405ce2e178675b969f5bb63ec02d',1,3,'RestaurantCustomerAuth','[]',0,'2022-07-27 03:12:27','2022-07-27 03:12:27','2023-07-27 03:12:27'),('73fb62e9916f02e6c0b44854384d9cb94f273a821c5dbc42ce0fb806d2a014e0db389eee1c1a9f38',1,3,'RestaurantCustomerAuth','[]',0,'2022-08-15 10:20:41','2022-08-15 10:20:41','2023-08-15 10:20:41'),('83bc0d67411b1e2e4769664d8e2f09f887bf0c4dad1d2a706c51400a13bbe6e226ba9fe86450fd34',1,3,'RestaurantCustomerAuth','[]',0,'2022-06-14 21:30:02','2022-06-14 21:30:02','2023-06-14 21:30:02'),('83e778d7a5acb7aa8101398bfba38a2e923a1b8fb0f85adbcd45692d3f721b7d183ddce82609610d',2,3,'RestaurantCustomerAuth','[]',0,'2022-08-05 13:59:09','2022-08-05 13:59:09','2023-08-05 13:59:09'),('84191490d04cb22fa26dce4f318faa701ce448eb6f66c2f1339e13357abef083750985a343cb8cdb',10,3,'RestaurantCustomerAuth','[]',0,'2022-10-04 17:12:14','2022-10-04 17:12:14','2023-10-04 17:12:14'),('8ec05b257a44c73f2b8bfea5bf65dceee3d03f146a24f8de02c3a366d203859de8d703ec8b7b0f3a',1,3,'RestaurantCustomerAuth','[]',0,'2022-08-12 11:30:13','2022-08-12 11:30:13','2023-08-12 11:30:13'),('94d9d25cb5fa480a68d07d41c223a3ab11a2c68f6a3ad766e4fe9bc8458d56fd8826f246d857bcd2',1,3,'RestaurantCustomerAuth','[]',0,'2022-08-04 14:04:09','2022-08-04 14:04:09','2023-08-04 14:04:09'),('9964e4decb31b2e1a9abf6064f447afe67e488e52666a3903fe96867bc1ffd4722ddee2c82cdee6f',9,3,'RestaurantCustomerAuth','[]',0,'2022-09-22 10:02:37','2022-09-22 10:02:37','2023-09-22 10:02:37'),('a1d6c34cb850cb6094262f897ee40d7073635e60fc2bc8f594abc58eb6d159ca078e6e46c04f089a',4,3,'RestaurantCustomerAuth','[]',0,'2022-08-03 21:40:43','2022-08-03 21:40:43','2023-08-03 21:40:43'),('b1a36e543e409a20235b2aa9c9e17eded3e649b574f1b48ac4e14b9460ee62a8ac507c0b60850c89',2,3,'RestaurantCustomerAuth','[]',0,'2022-11-01 17:24:44','2022-11-01 17:24:44','2023-11-01 17:24:44'),('b3f14a1183170c8a43bee3eb745563e6ca0a72de1ec6b258233a6f5be9a0784d520755b63e9c0a8a',2,3,'RestaurantCustomerAuth','[]',0,'2022-06-16 22:47:57','2022-06-16 22:47:57','2023-06-16 22:47:57'),('cc6c64df2b0ce969ac292fac71582e2f667476b64950907f14a0b75641bd58614109119e45a28c47',1,3,'RestaurantCustomerAuth','[]',0,'2022-08-19 21:33:46','2022-08-19 21:33:46','2023-08-19 21:33:46'),('deb41ba51ef88d4150255e4649dbf0a172456e728545e29847942ea13eadf60fa13fa729ebee9cf8',1,3,'RestaurantCustomerAuth','[]',0,'2022-08-11 12:42:30','2022-08-11 12:42:30','2023-08-11 12:42:30'),('e33369f3c87dc84d2975ef1f1bd4ef5abed9fc36f2e72d11654fcade3d253f6289da4062fe926376',1,3,'RestaurantCustomerAuth','[]',0,'2022-08-24 12:39:23','2022-08-24 12:39:23','2023-08-24 12:39:23'),('e4aee04101b5da5765f3969f9cec344f744bbc3fdbeaeeb011015363ea17a335dff42f9a771b37a1',1,3,'RestaurantCustomerAuth','[]',0,'2022-07-18 19:11:43','2022-07-18 19:11:43','2023-07-18 19:11:43'),('e56a12a2c4db76a605ecbb3ad838791cb0af60ad218ebd0db1dbfba2f817cd089ccb1d0d19c5f2fa',8,3,'RestaurantCustomerAuth','[]',0,'2022-09-03 00:34:33','2022-09-03 00:34:33','2023-09-03 00:34:33'),('e571b14957b45554cc62069b8e08a686afee93eb5cebac30f7ada6b825e9ba467590c7b82ace5c02',1,3,'RestaurantCustomerAuth','[]',0,'2022-06-26 23:32:44','2022-06-26 23:32:44','2023-06-26 23:32:44'),('edf449afe16985dca15da12fc13898be45adf044898edec0fb270b2c1e5c6ff24f90423000700fd0',7,3,'RestaurantCustomerAuth','[]',0,'2022-08-26 10:17:16','2022-08-26 10:17:16','2023-08-26 10:17:16'),('f2c1c1a20f372ac4e0dc1c8c9e95ef3a7b3ad5061d3c485c3a4242d767562f34b0f6f169af1fa2ee',7,3,'RestaurantCustomerAuth','[]',0,'2022-08-26 10:18:12','2022-08-26 10:18:12','2023-08-26 10:18:12'),('f6aedf646c0334c133b6bd6542c0e823b9c9812e3171f4f8f76d4a30f28de8581284f33e240861b3',1,3,'RestaurantCustomerAuth','[]',0,'2022-06-18 23:08:13','2022-06-18 23:08:13','2023-06-18 23:08:13'),('f71f24e611f526aa43a5ba749031cb912589dc71b00b2c09e1ab5c728466bc190400dd3f26f92955',1,3,'RestaurantCustomerAuth','[]',0,'2022-08-12 18:22:38','2022-08-12 18:22:38','2023-08-12 18:22:38'),('faa62dbdec16df5d2f3b5d218d10ff7c3b29f739ea8c1ede8fb941eaef8c7c47bdccbbf26bcb67a0',1,3,'RestaurantCustomerAuth','[]',0,'2022-08-29 22:52:20','2022-08-29 22:52:20','2023-08-29 22:52:20');
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `client_id` bigint(20) unsigned NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_auth_codes`
--

LOCK TABLES `oauth_auth_codes` WRITE;
/*!40000 ALTER TABLE `oauth_auth_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_auth_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_clients` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_clients`
--

LOCK TABLES `oauth_clients` WRITE;
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES (1,NULL,'Laravel Personal Access Client','z5ky1aF18fNgAczYo0W2MdglqUxpyt0KsKdmbRIt',NULL,'http://localhost',1,0,0,'2021-01-05 18:07:29','2021-01-05 18:07:29'),(2,NULL,'Laravel Password Grant Client','clk5DEe0ANVDYwD79OUYBkLcZ6CLSykUvULubUuk','users','http://localhost',0,1,0,'2021-01-05 18:07:29','2021-01-05 18:07:29'),(3,NULL,'Laravel Personal Access Client','v89pXMpj0Pv49vFb3vC0uqTZvTRPEGtso4wpvkab',NULL,'http://localhost',1,0,0,'2021-06-19 03:35:33','2021-06-19 03:35:33'),(4,NULL,'Laravel Password Grant Client','07Q6Fu6riULXZnYy1yd8lApmsn45TrZZyZKPxW3T','users','http://localhost',0,1,0,'2021-06-19 03:35:33','2021-06-19 03:35:33');
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_personal_access_clients`
--

LOCK TABLES `oauth_personal_access_clients` WRITE;
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;
INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES (1,1,'2021-01-05 18:07:29','2021-01-05 18:07:29'),(2,3,'2021-06-19 03:35:33','2021-06-19 03:35:33');
/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_refresh_tokens`
--

LOCK TABLES `oauth_refresh_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_delivery_histories`
--

DROP TABLE IF EXISTS `order_delivery_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_delivery_histories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) DEFAULT NULL,
  `delivery_man_id` bigint(20) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `start_location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_delivery_histories`
--

LOCK TABLES `order_delivery_histories` WRITE;
/*!40000 ALTER TABLE `order_delivery_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_delivery_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_details`
--

DROP TABLE IF EXISTS `order_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_details` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) DEFAULT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `price` decimal(8,2) NOT NULL DEFAULT 0.00,
  `product_details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `variation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_on_product` decimal(8,2) DEFAULT NULL,
  `discount_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'amount',
  `quantity` int(11) NOT NULL DEFAULT 1,
  `tax_amount` decimal(8,2) NOT NULL DEFAULT 1.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `variant` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pc',
  `is_stock_decreased` tinyint(1) NOT NULL DEFAULT 1,
  `time_slot_id` bigint(20) DEFAULT NULL,
  `delivery_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_details`
--

LOCK TABLES `order_details` WRITE;
/*!40000 ALTER TABLE `order_details` DISABLE KEYS */;
INSERT INTO `order_details` (`id`, `product_id`, `order_id`, `price`, `product_details`, `variation`, `discount_on_product`, `discount_type`, `quantity`, `tax_amount`, `created_at`, `updated_at`, `variant`, `unit`, `is_stock_decreased`, `time_slot_id`, `delivery_date`) VALUES (1,23,100001,1.00,'{\"id\":23,\"name\":\"Golden Loaf Whole meal Bread 675g\",\"description\":\"<p><span style=\\\"color: black;\\\">Quick breakfast that curbs your hunger and gives you a boost of energy to get started.<\\/span><\\/p><p><span style=\\\"color: black;\\\">One can relish it as it is or toasts it to bring in some crunch.<\\/span><\\/p><p><span style=\\\"color: black;\\\">For those who love a wholesome bite, you can add your favorite veggies, cheese and spreads and grill it golden.<\\/span><\\/p><p><span style=\\\"color: black;\\\">Hunger can be a restless experience.<\\/span><\\/p>\",\"image\":\"[\\\"2022-08-03-62ea0faf438f6.png\\\"]\",\"price\":1,\"variations\":\"[]\",\"tax\":0,\"status\":1,\"created_at\":\"2022-08-03T06:03:27.000000Z\",\"updated_at\":\"2022-08-03T06:05:37.000000Z\",\"attributes\":\"[]\",\"category_ids\":\"[{\\\"id\\\":\\\"12\\\",\\\"position\\\":1},{\\\"id\\\":\\\"32\\\",\\\"position\\\":2}]\",\"choice_options\":\"[]\",\"discount\":0,\"discount_type\":\"amount\",\"tax_type\":\"amount\",\"unit\":\"gm\",\"total_stock\":100,\"capacity\":1,\"daily_needs\":1,\"translations\":[]}','[{\"type\":null}]',0.00,'discount_on_product',1,0.00,'2022-08-04 11:15:35','2022-08-04 11:44:40','null','gm',0,3,'2022-08-04'),(2,20,100001,17.60,'{\"id\":20,\"name\":\"Nescafe Red Mug Coffee 100g\",\"description\":\"<ul><li>Start your morning ritual with the great taste of Nescafe red mug<\\/li><li>Carefully selected coffee beans are expertly roasted to give you our signature full-flavoured taste and rich aroma that you love<\\/li><li><br><\\/li><\\/ul><h3><span style=\\\"color: black;\\\">Ingredients<\\/span><\\/h3><p><span style=\\\"color: black;\\\">100% Pure Coffee<\\/span><\\/p><p><br><\\/p><h3><span style=\\\"color: black;\\\">Product Subtype<\\/span><\\/h3><p><span style=\\\"color: black;\\\">Coffee<\\/span><\\/p><p><br><\\/p><p><span style=\\\"color: rgb(0, 4, 8);\\\">Origin - <\\/span><strong style=\\\"color: rgb(0, 4, 8);\\\">Spain<\\/strong><\\/p><p><span style=\\\"color: rgb(34, 34, 34);\\\">Pack size: 100g<\\/span><\\/p>\",\"image\":\"[\\\"2022-06-23-62b585a2e17ef.png\\\",\\\"2022-06-23-62b585a2e1e69.png\\\"]\",\"price\":17.6,\"variations\":\"[]\",\"tax\":0,\"status\":1,\"created_at\":\"2022-06-23T18:36:34.000000Z\",\"updated_at\":\"2022-06-26T19:55:44.000000Z\",\"attributes\":\"[]\",\"category_ids\":\"[{\\\"id\\\":\\\"3\\\",\\\"position\\\":1},{\\\"id\\\":\\\"26\\\",\\\"position\\\":2}]\",\"choice_options\":\"[]\",\"discount\":0,\"discount_type\":\"percent\",\"tax_type\":\"percent\",\"unit\":\"gm\",\"total_stock\":100,\"capacity\":100,\"daily_needs\":1,\"translations\":[]}','[{\"type\":null}]',0.00,'discount_on_product',3,0.00,'2022-08-04 11:15:35','2022-08-04 11:44:40','null','gm',0,3,'2022-08-04'),(3,23,100002,1.00,'{\"id\":23,\"name\":\"Golden Loaf Whole meal Bread 675g\",\"description\":\"<p><span style=\\\"color: black;\\\">Quick breakfast that curbs your hunger and gives you a boost of energy to get started.<\\/span><\\/p><p><span style=\\\"color: black;\\\">One can relish it as it is or toasts it to bring in some crunch.<\\/span><\\/p><p><span style=\\\"color: black;\\\">For those who love a wholesome bite, you can add your favorite veggies, cheese and spreads and grill it golden.<\\/span><\\/p><p><span style=\\\"color: black;\\\">Hunger can be a restless experience.<\\/span><\\/p>\",\"image\":\"[\\\"2022-08-03-62ea0faf438f6.png\\\"]\",\"price\":1,\"variations\":\"[]\",\"tax\":0,\"status\":1,\"created_at\":\"2022-08-03T06:03:27.000000Z\",\"updated_at\":\"2022-08-04T07:15:35.000000Z\",\"attributes\":\"[]\",\"category_ids\":\"[{\\\"id\\\":\\\"12\\\",\\\"position\\\":1},{\\\"id\\\":\\\"32\\\",\\\"position\\\":2}]\",\"choice_options\":\"[]\",\"discount\":0,\"discount_type\":\"amount\",\"tax_type\":\"amount\",\"unit\":\"gm\",\"total_stock\":99,\"capacity\":1,\"daily_needs\":1,\"translations\":[]}','[{\"type\":null}]',0.00,'discount_on_product',1,0.00,'2022-08-04 11:16:11','2022-08-04 11:17:01','null','gm',0,3,'2022-08-04'),(4,20,100002,17.60,'{\"id\":20,\"name\":\"Nescafe Red Mug Coffee 100g\",\"description\":\"<ul><li>Start your morning ritual with the great taste of Nescafe red mug<\\/li><li>Carefully selected coffee beans are expertly roasted to give you our signature full-flavoured taste and rich aroma that you love<\\/li><li><br><\\/li><\\/ul><h3><span style=\\\"color: black;\\\">Ingredients<\\/span><\\/h3><p><span style=\\\"color: black;\\\">100% Pure Coffee<\\/span><\\/p><p><br><\\/p><h3><span style=\\\"color: black;\\\">Product Subtype<\\/span><\\/h3><p><span style=\\\"color: black;\\\">Coffee<\\/span><\\/p><p><br><\\/p><p><span style=\\\"color: rgb(0, 4, 8);\\\">Origin - <\\/span><strong style=\\\"color: rgb(0, 4, 8);\\\">Spain<\\/strong><\\/p><p><span style=\\\"color: rgb(34, 34, 34);\\\">Pack size: 100g<\\/span><\\/p>\",\"image\":\"[\\\"2022-06-23-62b585a2e17ef.png\\\",\\\"2022-06-23-62b585a2e1e69.png\\\"]\",\"price\":17.6,\"variations\":\"[]\",\"tax\":0,\"status\":1,\"created_at\":\"2022-06-23T18:36:34.000000Z\",\"updated_at\":\"2022-08-04T07:15:35.000000Z\",\"attributes\":\"[]\",\"category_ids\":\"[{\\\"id\\\":\\\"3\\\",\\\"position\\\":1},{\\\"id\\\":\\\"26\\\",\\\"position\\\":2}]\",\"choice_options\":\"[]\",\"discount\":0,\"discount_type\":\"percent\",\"tax_type\":\"percent\",\"unit\":\"gm\",\"total_stock\":97,\"capacity\":100,\"daily_needs\":1,\"translations\":[]}','[{\"type\":null}]',0.00,'discount_on_product',3,0.00,'2022-08-04 11:16:11','2022-08-04 11:17:01','null','gm',0,3,'2022-08-04'),(5,23,100003,1.00,'{\"id\":23,\"name\":\"Golden Loaf Whole meal Bread 675g\",\"description\":\"<p><span style=\\\"color: black;\\\">Quick breakfast that curbs your hunger and gives you a boost of energy to get started.<\\/span><\\/p><p><span style=\\\"color: black;\\\">One can relish it as it is or toasts it to bring in some crunch.<\\/span><\\/p><p><span style=\\\"color: black;\\\">For those who love a wholesome bite, you can add your favorite veggies, cheese and spreads and grill it golden.<\\/span><\\/p><p><span style=\\\"color: black;\\\">Hunger can be a restless experience.<\\/span><\\/p>\",\"image\":\"[\\\"2022-08-03-62ea0faf438f6.png\\\"]\",\"price\":1,\"variations\":\"[]\",\"tax\":0,\"status\":1,\"created_at\":\"2022-08-03T06:03:27.000000Z\",\"updated_at\":\"2022-08-04T07:17:01.000000Z\",\"attributes\":\"[]\",\"category_ids\":\"[{\\\"id\\\":\\\"12\\\",\\\"position\\\":1},{\\\"id\\\":\\\"32\\\",\\\"position\\\":2}]\",\"choice_options\":\"[]\",\"discount\":0,\"discount_type\":\"amount\",\"tax_type\":\"amount\",\"unit\":\"gm\",\"total_stock\":99,\"capacity\":1,\"daily_needs\":1,\"translations\":[]}','[{\"type\":null}]',0.00,'discount_on_product',1,0.00,'2022-08-04 11:42:19','2022-08-04 11:44:27','null','gm',0,3,'2022-08-04'),(6,20,100003,17.60,'{\"id\":20,\"name\":\"Nescafe Red Mug Coffee 100g\",\"description\":\"<ul><li>Start your morning ritual with the great taste of Nescafe red mug<\\/li><li>Carefully selected coffee beans are expertly roasted to give you our signature full-flavoured taste and rich aroma that you love<\\/li><li><br><\\/li><\\/ul><h3><span style=\\\"color: black;\\\">Ingredients<\\/span><\\/h3><p><span style=\\\"color: black;\\\">100% Pure Coffee<\\/span><\\/p><p><br><\\/p><h3><span style=\\\"color: black;\\\">Product Subtype<\\/span><\\/h3><p><span style=\\\"color: black;\\\">Coffee<\\/span><\\/p><p><br><\\/p><p><span style=\\\"color: rgb(0, 4, 8);\\\">Origin - <\\/span><strong style=\\\"color: rgb(0, 4, 8);\\\">Spain<\\/strong><\\/p><p><span style=\\\"color: rgb(34, 34, 34);\\\">Pack size: 100g<\\/span><\\/p>\",\"image\":\"[\\\"2022-06-23-62b585a2e17ef.png\\\",\\\"2022-06-23-62b585a2e1e69.png\\\"]\",\"price\":17.6,\"variations\":\"[]\",\"tax\":0,\"status\":1,\"created_at\":\"2022-06-23T18:36:34.000000Z\",\"updated_at\":\"2022-08-04T07:17:01.000000Z\",\"attributes\":\"[]\",\"category_ids\":\"[{\\\"id\\\":\\\"3\\\",\\\"position\\\":1},{\\\"id\\\":\\\"26\\\",\\\"position\\\":2}]\",\"choice_options\":\"[]\",\"discount\":0,\"discount_type\":\"percent\",\"tax_type\":\"percent\",\"unit\":\"gm\",\"total_stock\":97,\"capacity\":100,\"daily_needs\":1,\"translations\":[]}','[{\"type\":null}]',0.00,'discount_on_product',3,0.00,'2022-08-04 11:42:19','2022-08-04 11:44:27','null','gm',0,3,'2022-08-04'),(7,16,100003,18.80,'{\"id\":16,\"name\":\"Broccoli\",\"description\":\"<h2><span style=\\\"color: rgb(0, 4, 8);\\\">INFORMATION<\\/span><\\/h2><p><br><\\/p><h3><span style=\\\"color: black;\\\">Storage Condition<\\/span><\\/h3><p><span style=\\\"color: rgb(77, 77, 77);\\\">Remove Broccoli from plastic wrapping. Wash it only when ready to use. If not, make sure it\'s completely dry before storage. Cover with paper towels and slid it in a plastic bag and place it in the fruits and vegetable compartment. It can last 3 to 5 days when stored properly.<\\/span><\\/p><p><br><\\/p><p><span style=\\\"color: rgb(0, 4, 8);\\\">Origin - <\\/span><strong style=\\\"color: rgb(0, 4, 8);\\\">Spain<\\/strong><\\/p><p><span style=\\\"color: black;\\\">AED&nbsp;9.40\\/500g&nbsp;<\\/span><span style=\\\"color: rgb(104, 104, 104);\\\">(Inc. VAT)<\\/span><\\/p><p><span style=\\\"color: rgb(34, 34, 34);\\\">Approx. 2 pieces\\/Kg<\\/span><\\/p>\",\"image\":\"[\\\"2022-06-23-62b580b80117d.png\\\",\\\"2022-06-23-62b580b80164c.png\\\",\\\"2022-06-23-62b580b8019fd.png\\\"]\",\"price\":18.8,\"variations\":\"[]\",\"tax\":0,\"status\":1,\"created_at\":\"2022-06-23T18:15:36.000000Z\",\"updated_at\":\"2022-06-23T18:15:36.000000Z\",\"attributes\":\"[]\",\"category_ids\":\"[{\\\"id\\\":\\\"10\\\",\\\"position\\\":1},{\\\"id\\\":\\\"25\\\",\\\"position\\\":2}]\",\"choice_options\":\"[]\",\"discount\":0,\"discount_type\":\"percent\",\"tax_type\":\"percent\",\"unit\":\"kg\",\"total_stock\":100,\"capacity\":1,\"daily_needs\":0,\"translations\":[]}','[{\"type\":null}]',0.00,'discount_on_product',4,0.00,'2022-08-04 11:42:19','2022-08-04 11:44:27','null','kg',0,3,'2022-08-04'),(8,23,100004,1.00,'{\"id\":23,\"name\":\"Golden Loaf Whole meal Bread 675g\",\"description\":\"<p><span style=\\\"color: black;\\\">Quick breakfast that curbs your hunger and gives you a boost of energy to get started.<\\/span><\\/p><p><span style=\\\"color: black;\\\">One can relish it as it is or toasts it to bring in some crunch.<\\/span><\\/p><p><span style=\\\"color: black;\\\">For those who love a wholesome bite, you can add your favorite veggies, cheese and spreads and grill it golden.<\\/span><\\/p><p><span style=\\\"color: black;\\\">Hunger can be a restless experience.<\\/span><\\/p>\",\"image\":\"[\\\"2022-08-03-62ea0faf438f6.png\\\"]\",\"price\":1,\"variations\":\"[]\",\"tax\":0,\"status\":1,\"created_at\":\"2022-08-03T06:03:27.000000Z\",\"updated_at\":\"2022-08-04T07:44:40.000000Z\",\"attributes\":\"[]\",\"category_ids\":\"[{\\\"id\\\":\\\"12\\\",\\\"position\\\":1},{\\\"id\\\":\\\"32\\\",\\\"position\\\":2}]\",\"choice_options\":\"[]\",\"discount\":0,\"discount_type\":\"amount\",\"tax_type\":\"amount\",\"unit\":\"gm\",\"total_stock\":100,\"capacity\":1,\"daily_needs\":1,\"translations\":[]}','[{\"type\":null}]',0.00,'discount_on_product',61,0.00,'2022-08-07 21:54:52','2022-08-07 21:54:52','null','gm',1,3,'2022-08-07'),(9,23,100005,1.00,'{\"id\":23,\"name\":\"Golden Loaf Whole meal Bread 675g\",\"description\":\"<p><span style=\\\"color: black;\\\">Quick breakfast that curbs your hunger and gives you a boost of energy to get started.<\\/span><\\/p><p><span style=\\\"color: black;\\\">One can relish it as it is or toasts it to bring in some crunch.<\\/span><\\/p><p><span style=\\\"color: black;\\\">For those who love a wholesome bite, you can add your favorite veggies, cheese and spreads and grill it golden.<\\/span><\\/p><p><span style=\\\"color: black;\\\">Hunger can be a restless experience.<\\/span><\\/p>\",\"image\":\"[\\\"2022-08-03-62ea0faf438f6.png\\\"]\",\"price\":1,\"variations\":\"[]\",\"tax\":0,\"status\":1,\"created_at\":\"2022-08-03T06:03:27.000000Z\",\"updated_at\":\"2022-08-07T17:54:52.000000Z\",\"attributes\":\"[]\",\"category_ids\":\"[{\\\"id\\\":\\\"12\\\",\\\"position\\\":1},{\\\"id\\\":\\\"32\\\",\\\"position\\\":2}]\",\"choice_options\":\"[]\",\"discount\":0,\"discount_type\":\"amount\",\"tax_type\":\"amount\",\"unit\":\"gm\",\"total_stock\":39,\"capacity\":1,\"daily_needs\":1,\"translations\":[]}','[{\"type\":null}]',0.00,'discount_on_product',61,0.00,'2022-08-07 21:55:29','2022-08-07 21:55:29','null','gm',1,3,'2022-08-07'),(10,19,100006,22.95,'{\"id\":19,\"name\":\"Nescafe Gold Blend Rich and Smooth Instant Coffee 100g\",\"description\":\"<ul><li>Distinctive premium coffee blend<\\/li><li>100% pure coffee experience<\\/li><li>Our specially designed glass jar, with its aroma-lock lid, keeps your gold-blend delightfully tasty to the last drop<\\/li><\\/ul><p><br><\\/p><p><span style=\\\"color: rgb(34, 34, 34);\\\">Pack size: 100g<\\/span><\\/p><p><span style=\\\"color: rgb(0, 4, 8);\\\">Origin - <\\/span><strong style=\\\"color: rgb(0, 4, 8);\\\">United Kingdom<\\/strong><\\/p><p><br><\\/p><h3><span style=\\\"color: black;\\\">Ingredients<\\/span><\\/h3><p><strong style=\\\"color: black;\\\">Arabica Ground Coffee<\\/strong><\\/p><p><strong style=\\\"color: black;\\\"><span class=\\\"ql-cursor\\\">\\ufeff<\\/span><\\/strong><\\/p><h3><span style=\\\"color: black;\\\">Product Subtype<\\/span><\\/h3><p><strong style=\\\"color: black;\\\">Coffee<\\/strong><\\/p>\",\"image\":\"[\\\"2022-06-23-62b584a36d85b.png\\\",\\\"2022-06-23-62b584a36dd72.png\\\"]\",\"price\":22.95,\"variations\":\"[]\",\"tax\":0,\"status\":1,\"created_at\":\"2022-06-23T18:32:19.000000Z\",\"updated_at\":\"2022-06-26T19:55:44.000000Z\",\"attributes\":\"[]\",\"category_ids\":\"[{\\\"id\\\":\\\"3\\\",\\\"position\\\":1},{\\\"id\\\":\\\"26\\\",\\\"position\\\":2}]\",\"choice_options\":\"[]\",\"discount\":0,\"discount_type\":\"percent\",\"tax_type\":\"percent\",\"unit\":\"gm\",\"total_stock\":100,\"capacity\":100,\"daily_needs\":1,\"translations\":[]}','[{\"type\":null}]',0.00,'discount_on_product',1,0.00,'2022-08-22 12:51:31','2022-08-22 12:51:31','null','gm',1,3,'2022-08-22'),(11,21,100006,28.00,'{\"id\":21,\"name\":\"Nescafe Gold Blend Rich and Smooth Instant Coffee 200g\",\"description\":\"<ul><li>Distinctive premium coffee blend<\\/li><li>100% pure coffee experience<\\/li><li>Our specially designed glass jar, with its aroma-lock lid, keeps your gold-blend delightfully tasty to the last drop<\\/li><\\/ul><p><br><\\/p><h3><span style=\\\"color: black;\\\">Ingredients<\\/span><\\/h3><p><strong style=\\\"color: black;\\\">Arabica Ground Coffee<\\/strong><\\/p><p><br><\\/p><h3><span style=\\\"color: black;\\\">Product Subtype<\\/span><\\/h3><p><strong style=\\\"color: black;\\\">Coffee<\\/strong><\\/p><p><br><\\/p><p><span style=\\\"color: rgb(34, 34, 34);\\\">Pack size: 200g<\\/span><\\/p><p><span style=\\\"color: rgb(0, 4, 8);\\\">Origin - <\\/span><strong style=\\\"color: rgb(0, 4, 8);\\\">United Kingdom<\\/strong><\\/p>\",\"image\":\"[\\\"2022-06-23-62b5865f5b70c.png\\\",\\\"2022-06-23-62b5865f5bda3.png\\\"]\",\"price\":28,\"variations\":\"[]\",\"tax\":0,\"status\":1,\"created_at\":\"2022-06-23T18:39:43.000000Z\",\"updated_at\":\"2022-06-26T19:55:43.000000Z\",\"attributes\":\"[]\",\"category_ids\":\"[{\\\"id\\\":\\\"3\\\",\\\"position\\\":1},{\\\"id\\\":\\\"26\\\",\\\"position\\\":2}]\",\"choice_options\":\"[]\",\"discount\":0,\"discount_type\":\"percent\",\"tax_type\":\"percent\",\"unit\":\"gm\",\"total_stock\":100,\"capacity\":200,\"daily_needs\":1,\"translations\":[]}','[{\"type\":null}]',0.00,'discount_on_product',1,0.00,'2022-08-22 12:51:31','2022-08-22 12:51:31','null','gm',1,3,'2022-08-22'),(12,20,100006,17.60,'{\"id\":20,\"name\":\"Nescafe Red Mug Coffee 100g\",\"description\":\"<ul><li>Start your morning ritual with the great taste of Nescafe red mug<\\/li><li>Carefully selected coffee beans are expertly roasted to give you our signature full-flavoured taste and rich aroma that you love<\\/li><li><br><\\/li><\\/ul><h3><span style=\\\"color: black;\\\">Ingredients<\\/span><\\/h3><p><span style=\\\"color: black;\\\">100% Pure Coffee<\\/span><\\/p><p><br><\\/p><h3><span style=\\\"color: black;\\\">Product Subtype<\\/span><\\/h3><p><span style=\\\"color: black;\\\">Coffee<\\/span><\\/p><p><br><\\/p><p><span style=\\\"color: rgb(0, 4, 8);\\\">Origin - <\\/span><strong style=\\\"color: rgb(0, 4, 8);\\\">Spain<\\/strong><\\/p><p><span style=\\\"color: rgb(34, 34, 34);\\\">Pack size: 100g<\\/span><\\/p>\",\"image\":\"[\\\"2022-06-23-62b585a2e17ef.png\\\",\\\"2022-06-23-62b585a2e1e69.png\\\"]\",\"price\":17.6,\"variations\":\"[]\",\"tax\":0,\"status\":1,\"created_at\":\"2022-06-23T18:36:34.000000Z\",\"updated_at\":\"2022-08-04T07:44:40.000000Z\",\"attributes\":\"[]\",\"category_ids\":\"[{\\\"id\\\":\\\"3\\\",\\\"position\\\":1},{\\\"id\\\":\\\"26\\\",\\\"position\\\":2}]\",\"choice_options\":\"[]\",\"discount\":0,\"discount_type\":\"percent\",\"tax_type\":\"percent\",\"unit\":\"gm\",\"total_stock\":100,\"capacity\":100,\"daily_needs\":1,\"translations\":[]}','[{\"type\":null}]',0.00,'discount_on_product',1,0.00,'2022-08-22 12:51:31','2022-08-22 12:51:31','null','gm',1,3,'2022-08-22'),(13,23,100006,1.00,'{\"id\":23,\"name\":\"Golden Loaf Whole meal Bread 675g\",\"description\":\"<p><span style=\\\"color: black;\\\">Quick breakfast that curbs your hunger and gives you a boost of energy to get started.<\\/span><\\/p><p><span style=\\\"color: black;\\\">One can relish it as it is or toasts it to bring in some crunch.<\\/span><\\/p><p><span style=\\\"color: black;\\\">For those who love a wholesome bite, you can add your favorite veggies, cheese and spreads and grill it golden.<\\/span><\\/p><p><span style=\\\"color: black;\\\">Hunger can be a restless experience.<\\/span><\\/p>\",\"image\":\"[\\\"2022-08-03-62ea0faf438f6.png\\\"]\",\"price\":1,\"variations\":\"[]\",\"tax\":0,\"status\":1,\"created_at\":\"2022-08-03T06:03:27.000000Z\",\"updated_at\":\"2022-08-16T20:25:15.000000Z\",\"attributes\":\"[]\",\"category_ids\":\"[{\\\"id\\\":\\\"12\\\",\\\"position\\\":1},{\\\"id\\\":\\\"32\\\",\\\"position\\\":2}]\",\"choice_options\":\"[]\",\"discount\":0,\"discount_type\":\"amount\",\"tax_type\":\"amount\",\"unit\":\"gm\",\"total_stock\":10,\"capacity\":1,\"daily_needs\":1,\"translations\":[]}','[{\"type\":null}]',0.00,'discount_on_product',1,0.00,'2022-08-22 12:51:31','2022-08-22 12:51:31','null','gm',1,3,'2022-08-22'),(14,22,100006,1.00,'{\"id\":22,\"name\":\"TEST 123\",\"description\":\"<p><br><\\/p>\",\"image\":\"[\\\"2022-07-30-62e55d8f0dddb.png\\\"]\",\"price\":1,\"variations\":\"[]\",\"tax\":0,\"status\":1,\"created_at\":\"2022-07-30T16:34:23.000000Z\",\"updated_at\":\"2022-07-30T16:34:23.000000Z\",\"attributes\":\"[]\",\"category_ids\":\"[{\\\"id\\\":\\\"48\\\",\\\"position\\\":1}]\",\"choice_options\":\"[]\",\"discount\":0,\"discount_type\":\"percent\",\"tax_type\":\"percent\",\"unit\":\"kg\",\"total_stock\":1000,\"capacity\":1,\"daily_needs\":0,\"translations\":[]}','[{\"type\":null}]',0.00,'discount_on_product',1,0.00,'2022-08-22 12:51:31','2022-08-22 12:51:31','null','kg',1,3,'2022-08-22'),(15,18,100006,19.00,'{\"id\":18,\"name\":\"Lipton Extra Strong Black Tea with Sun-Ripened Tea Leaves Loose 400G\",\"description\":\"<ul><li>Enjoy the rich taste of Lipton Extra Strong Black Tea featuring a delicious, strong taste with an invigorating aroma<\\/li><li>Black tea contains carefully selected and fresh-pressed tea leaves, capture as much natural tea taste as possible<\\/li><li>Lipton Extra Strong Black Tea contains rich flavonoids that awaken your taste buds and uplift your mood<\\/li><li>Get the best from your brew in 2 minutes, adding the loose tea first and then water so the leaves can unleash their flavor<\\/li><\\/ul><p><br><\\/p><p><span style=\\\"color: rgb(0, 4, 8);\\\">Origin - <\\/span><strong style=\\\"color: rgb(0, 4, 8);\\\">Sultanate of Oman<\\/strong><\\/p><p><br><\\/p><h3><span style=\\\"color: black;\\\">Ingredients<\\/span><\\/h3><p><span style=\\\"color: black;\\\">Tea Leaves<\\/span><\\/p><h3><span style=\\\"color: black;\\\">Flavor<\\/span><\\/h3><p><span style=\\\"color: black;\\\">Black Tea<\\/span><\\/p><p><br><\\/p><p><span style=\\\"color: rgb(34, 34, 34);\\\">Pack size: 400g<\\/span><\\/p>\",\"image\":\"[\\\"2022-06-23-62b58386ca9c5.png\\\",\\\"2022-06-23-62b58386caea8.png\\\"]\",\"price\":19,\"variations\":\"[]\",\"tax\":0,\"status\":1,\"created_at\":\"2022-06-23T18:27:34.000000Z\",\"updated_at\":\"2022-06-23T18:27:34.000000Z\",\"attributes\":\"[]\",\"category_ids\":\"[{\\\"id\\\":\\\"3\\\",\\\"position\\\":1},{\\\"id\\\":\\\"26\\\",\\\"position\\\":2}]\",\"choice_options\":\"[]\",\"discount\":0,\"discount_type\":\"percent\",\"tax_type\":\"percent\",\"unit\":\"gm\",\"total_stock\":100,\"capacity\":400,\"daily_needs\":0,\"translations\":[]}','[{\"type\":null}]',0.00,'discount_on_product',1,0.00,'2022-08-22 12:51:31','2022-08-22 12:51:31','null','gm',1,3,'2022-08-22'),(16,17,100006,9.75,'{\"id\":17,\"name\":\"Lipton Extra Strong Black Tea with Sun-Ripened Tea Leaves Loose 200G\",\"description\":\"<ul><li>Enjoy the rich taste of Lipton Extra Strong Black Tea featuring a delicious, strong taste with an invigorating aroma<\\/li><li>Black tea contains carefully selected and fresh-pressed tea leaves, capture as much natural tea taste as possible<\\/li><li>Lipton Extra Strong Black Tea contains rich flavonoids that awaken your taste buds and uplift your mood<\\/li><li>Get the best from your brew in 2 minutes, adding the loose tea first and then water so the leaves can unleash their flavour<\\/li><\\/ul><p><br><\\/p><p><span style=\\\"color: rgb(0, 4, 8);\\\">Origin - <\\/span><strong style=\\\"color: rgb(0, 4, 8);\\\">Sultanate of Oman<\\/strong><\\/p><p><span style=\\\"color: rgb(34, 34, 34);\\\">Pack size: 200g<\\/span><\\/p><p><br><\\/p>\",\"image\":\"[\\\"2022-06-23-62b582043c9f9.png\\\",\\\"2022-06-23-62b582043cec8.png\\\"]\",\"price\":9.75,\"variations\":\"[]\",\"tax\":0,\"status\":1,\"created_at\":\"2022-06-23T18:21:08.000000Z\",\"updated_at\":\"2022-06-23T18:21:08.000000Z\",\"attributes\":\"[]\",\"category_ids\":\"[{\\\"id\\\":\\\"3\\\",\\\"position\\\":1},{\\\"id\\\":\\\"26\\\",\\\"position\\\":2}]\",\"choice_options\":\"[]\",\"discount\":0,\"discount_type\":\"percent\",\"tax_type\":\"percent\",\"unit\":\"gm\",\"total_stock\":100,\"capacity\":200,\"daily_needs\":0,\"translations\":[]}','[{\"type\":null}]',0.00,'discount_on_product',1,0.00,'2022-08-22 12:51:31','2022-08-22 12:51:31','null','gm',1,3,'2022-08-22'),(17,16,100006,18.80,'{\"id\":16,\"name\":\"Broccoli\",\"description\":\"<h2><span style=\\\"color: rgb(0, 4, 8);\\\">INFORMATION<\\/span><\\/h2><p><br><\\/p><h3><span style=\\\"color: black;\\\">Storage Condition<\\/span><\\/h3><p><span style=\\\"color: rgb(77, 77, 77);\\\">Remove Broccoli from plastic wrapping. Wash it only when ready to use. If not, make sure it\'s completely dry before storage. Cover with paper towels and slid it in a plastic bag and place it in the fruits and vegetable compartment. It can last 3 to 5 days when stored properly.<\\/span><\\/p><p><br><\\/p><p><span style=\\\"color: rgb(0, 4, 8);\\\">Origin - <\\/span><strong style=\\\"color: rgb(0, 4, 8);\\\">Spain<\\/strong><\\/p><p><span style=\\\"color: black;\\\">AED\\u00a09.40\\/500g\\u00a0<\\/span><span style=\\\"color: rgb(104, 104, 104);\\\">(Inc. VAT)<\\/span><\\/p><p><span style=\\\"color: rgb(34, 34, 34);\\\">Approx. 2 pieces\\/Kg<\\/span><\\/p>\",\"image\":\"[\\\"2022-06-23-62b580b80117d.png\\\",\\\"2022-06-23-62b580b80164c.png\\\",\\\"2022-06-23-62b580b8019fd.png\\\"]\",\"price\":18.8,\"variations\":\"[]\",\"tax\":0,\"status\":1,\"created_at\":\"2022-06-23T18:15:36.000000Z\",\"updated_at\":\"2022-08-04T09:14:50.000000Z\",\"attributes\":\"[]\",\"category_ids\":\"[{\\\"id\\\":\\\"10\\\",\\\"position\\\":1},{\\\"id\\\":\\\"25\\\",\\\"position\\\":2}]\",\"choice_options\":\"[]\",\"discount\":30,\"discount_type\":\"percent\",\"tax_type\":\"percent\",\"unit\":\"kg\",\"total_stock\":100,\"capacity\":1,\"daily_needs\":0,\"translations\":[]}','[{\"type\":null}]',5.64,'discount_on_product',1,0.00,'2022-08-22 12:51:31','2022-08-22 12:51:31','null','kg',1,3,'2022-08-22'),(18,15,100006,7.10,'{\"id\":15,\"name\":\"Garlic\",\"description\":\"<h3><strong>Information<\\/strong><\\/h3><p><br><\\/p><p><span style=\\\"color: rgb(34, 34, 34);\\\">Pack size : 900g<\\/span><\\/p><p><span style=\\\"color: rgb(0, 4, 8);\\\">Origin - <\\/span><strong style=\\\"color: rgb(0, 4, 8);\\\">China<\\/strong><\\/p>\",\"image\":\"[\\\"2022-08-17-62fc1d46d995e.png\\\",\\\"2022-08-17-62fc1d46d9d95.png\\\"]\",\"price\":7.1,\"variations\":\"[]\",\"tax\":0,\"status\":1,\"created_at\":\"2022-06-23T18:09:53.000000Z\",\"updated_at\":\"2022-08-16T22:42:14.000000Z\",\"attributes\":\"[]\",\"category_ids\":\"[{\\\"id\\\":\\\"10\\\",\\\"position\\\":1},{\\\"id\\\":\\\"25\\\",\\\"position\\\":2}]\",\"choice_options\":\"[]\",\"discount\":0,\"discount_type\":\"percent\",\"tax_type\":\"percent\",\"unit\":\"kg\",\"total_stock\":100,\"capacity\":1,\"daily_needs\":0,\"translations\":[]}','[{\"type\":null}]',0.00,'discount_on_product',1,0.00,'2022-08-22 12:51:31','2022-08-22 12:51:31','null','kg',1,3,'2022-08-22'),(19,13,100006,3.75,'{\"id\":13,\"name\":\"Cauliflower\",\"description\":\"<h3><span style=\\\"color: black;\\\">Storage Condition<\\/span><\\/h3><p><br><\\/p><p><span style=\\\"color: rgb(77, 77, 77);\\\">Remove from plastic wrapping. Wash it only when ready to use. If not, make sure it\'s completely dry before storage. Cover with paper towels and slid it in a plastic bag and place it in the fruits and vegetable compartment. It can last 3 to 5 days when stored properly.<\\/span><\\/p><p><br><\\/p><p><span style=\\\"color: rgb(34, 34, 34);\\\">Approx. 1 pieces\\/Kg<\\/span><\\/p><p><span style=\\\"color: black;\\\">AED&nbsp;1.88\\/500g&nbsp;<\\/span><span style=\\\"color: rgb(104, 104, 104);\\\">(Inc. VAT)<\\/span><\\/p><p><span style=\\\"color: rgb(0, 4, 8);\\\">Origin - <\\/span><strong>United Arab Emirates<\\/strong><\\/p><p><br><\\/p><p><br><\\/p>\",\"image\":\"[\\\"2022-06-23-62b57ccb0ebb3.png\\\",\\\"2022-06-23-62b57ccb0f05c.png\\\"]\",\"price\":3.75,\"variations\":\"[]\",\"tax\":0,\"status\":1,\"created_at\":\"2022-06-23T17:58:51.000000Z\",\"updated_at\":\"2022-06-23T18:12:02.000000Z\",\"attributes\":\"[]\",\"category_ids\":\"[{\\\"id\\\":\\\"10\\\",\\\"position\\\":1},{\\\"id\\\":\\\"25\\\",\\\"position\\\":2}]\",\"choice_options\":\"[]\",\"discount\":0,\"discount_type\":\"percent\",\"tax_type\":\"percent\",\"unit\":\"kg\",\"total_stock\":100,\"capacity\":1,\"daily_needs\":0,\"translations\":[]}','[{\"type\":null}]',0.00,'discount_on_product',1,0.00,'2022-08-22 12:51:31','2022-08-22 12:51:31','null','kg',1,3,'2022-08-22'),(20,14,100006,10.50,'{\"id\":14,\"name\":\"Cauliflower (Spain)\",\"description\":\"<h3><span style=\\\"color: black;\\\">Storage Condition<\\/span><\\/h3><p><br><\\/p><p><span style=\\\"color: rgb(77, 77, 77);\\\">Remove Broccoli from plastic wrapping. Wash it only when ready to use. If not, make sure it\'s completely dry before storage. Cover with paper towels and slid it in a plastic bag and place it in the fruits and vegetable compartment. It can last 3 to 5 days when stored properly.<\\/span><\\/p><p><br><\\/p><p><span style=\\\"color: rgb(34, 34, 34);\\\">Approx. 1 pieces\\/Kg<\\/span><\\/p><p><span style=\\\"color: black;\\\">AED\\u00a05.25\\/500g\\u00a0<\\/span><span style=\\\"color: rgb(104, 104, 104);\\\">(Inc. VAT)<\\/span><\\/p><p><span style=\\\"color: rgb(0, 4, 8);\\\">Origin - <\\/span><strong style=\\\"color: rgb(0, 4, 8);\\\">Spain<\\/strong><\\/p>\",\"image\":\"[\\\"2022-08-17-62fc1c9d36cd2.png\\\",\\\"2022-08-17-62fc1c9d37034.png\\\"]\",\"price\":10.5,\"variations\":\"[]\",\"tax\":0,\"status\":1,\"created_at\":\"2022-06-23T18:07:18.000000Z\",\"updated_at\":\"2022-08-16T22:39:25.000000Z\",\"attributes\":\"[]\",\"category_ids\":\"[{\\\"id\\\":\\\"10\\\",\\\"position\\\":1},{\\\"id\\\":\\\"25\\\",\\\"position\\\":2}]\",\"choice_options\":\"[]\",\"discount\":0,\"discount_type\":\"percent\",\"tax_type\":\"percent\",\"unit\":\"kg\",\"total_stock\":100,\"capacity\":1,\"daily_needs\":0,\"translations\":[]}','[{\"type\":null}]',0.00,'discount_on_product',1,0.00,'2022-08-22 12:51:31','2022-08-22 12:51:31','null','kg',1,3,'2022-08-22'),(21,12,100006,13.80,'{\"id\":12,\"name\":\"Red Pomegranate\",\"description\":\"<h2><span style=\\\"color: rgb(0, 4, 8);\\\">INFORMATION<\\/span><\\/h2><h3><br><\\/h3><h3><span style=\\\"color: black;\\\">Storage Condition<\\/span><\\/h3><p><strong style=\\\"color: rgb(77, 77, 77);\\\">Keep Refrigerated<\\/strong><\\/p><p><span style=\\\"color: rgb(34, 34, 34);\\\">Approx. 2 pieces\\/Kg<\\/span><\\/p><p><br><\\/p><h3><span style=\\\"color: black;\\\">AED&nbsp;6.90\\/500g&nbsp;<\\/span><span style=\\\"color: rgb(104, 104, 104);\\\">(Inc. VAT)<\\/span><\\/h3><p><span style=\\\"color: rgb(0, 4, 8);\\\">Origin - <\\/span><strong style=\\\"color: rgb(0, 4, 8);\\\">Turkey and South Africa<\\/strong><\\/p>\",\"image\":\"[\\\"2022-06-23-62b57bf50ee24.png\\\",\\\"2022-06-23-62b57bf50f2bd.png\\\"]\",\"price\":13.8,\"variations\":\"[]\",\"tax\":0,\"status\":1,\"created_at\":\"2022-06-23T17:55:17.000000Z\",\"updated_at\":\"2022-06-23T18:12:03.000000Z\",\"attributes\":\"[]\",\"category_ids\":\"[{\\\"id\\\":\\\"10\\\",\\\"position\\\":1},{\\\"id\\\":\\\"24\\\",\\\"position\\\":2}]\",\"choice_options\":\"[]\",\"discount\":0,\"discount_type\":\"percent\",\"tax_type\":\"percent\",\"unit\":\"kg\",\"total_stock\":100,\"capacity\":1,\"daily_needs\":0,\"translations\":[]}','[{\"type\":null}]',0.00,'discount_on_product',1,0.00,'2022-08-22 12:51:31','2022-08-22 12:51:31','null','kg',1,3,'2022-08-22'),(22,27,100007,2.99,'{\"id\":27,\"name\":\"Coca Cola Light Carbonated Soft Drink 330ml\",\"description\":\"Ingredients\\r\\nCarbonated Water \\u25cf Caramel Flavour \\u25cf Acidifier Phosphoric Acid \\u25cf Natural Cola Flavourings\\r\\n\\r\\nAllergy Information\\r\\nPhenylalanine.\\r\\n\\r\\nAdditives\\r\\nNo Artificial Colour, No Artificial Flavours, No Added Sugar\\r\\n\\r\\nPackage Type\\r\\nCan\\r\\n\\r\\nFlavor\\r\\nLight\\r\\n\\r\\nProduct Subtype\\r\\nSoft drink\\r\\n\\r\\nStorage Condition\\r\\nKeep it refrigerated\\r\\n\\r\\nPreparation and usage\\r\\nReady to drink\",\"image\":\"[\\\"2022-08-27-6309f32e98d95.png\\\"]\",\"price\":2.99,\"variations\":\"[]\",\"tax\":0,\"status\":1,\"created_at\":\"2022-08-27T10:34:22.000000Z\",\"updated_at\":\"2022-08-27T10:36:19.000000Z\",\"attributes\":\"[]\",\"category_ids\":\"[{\\\"id\\\":\\\"3\\\",\\\"position\\\":1},{\\\"id\\\":\\\"28\\\",\\\"position\\\":2}]\",\"choice_options\":\"[]\",\"discount\":0,\"discount_type\":\"percent\",\"tax_type\":\"percent\",\"unit\":\"pc\",\"total_stock\":100,\"capacity\":300,\"daily_needs\":1,\"translations\":[]}','[{\"type\":null}]',0.00,'discount_on_product',21,0.00,'2022-09-05 18:06:18','2022-10-26 16:27:53','null','pc',0,3,'2022-09-05'),(23,23,100007,1.00,'{\"id\":23,\"name\":\"Golden Loaf Whole meal Bread 675g\",\"description\":\"<p><span style=\\\"color: black;\\\">Quick breakfast that curbs your hunger and gives you a boost of energy to get started.<\\/span><\\/p><p><span style=\\\"color: black;\\\">One can relish it as it is or toasts it to bring in some crunch.<\\/span><\\/p><p><span style=\\\"color: black;\\\">For those who love a wholesome bite, you can add your favorite veggies, cheese and spreads and grill it golden.<\\/span><\\/p><p><span style=\\\"color: black;\\\">Hunger can be a restless experience.<\\/span><\\/p>\",\"image\":\"[\\\"2022-08-03-62ea0faf438f6.png\\\"]\",\"price\":1,\"variations\":\"[]\",\"tax\":0,\"status\":1,\"created_at\":\"2022-08-03T06:03:27.000000Z\",\"updated_at\":\"2022-08-22T08:51:31.000000Z\",\"attributes\":\"[]\",\"category_ids\":\"[{\\\"id\\\":\\\"12\\\",\\\"position\\\":1},{\\\"id\\\":\\\"32\\\",\\\"position\\\":2}]\",\"choice_options\":\"[]\",\"discount\":0,\"discount_type\":\"amount\",\"tax_type\":\"amount\",\"unit\":\"gm\",\"total_stock\":9,\"capacity\":1,\"daily_needs\":1,\"translations\":[]}','[{\"type\":null}]',0.00,'discount_on_product',9,0.00,'2022-09-05 18:06:18','2022-10-26 16:27:53','null','gm',0,3,'2022-09-05'),(24,24,100008,11.05,'{\"id\":24,\"name\":\"Valencia Oranges 3Kg\",\"description\":\"<p><span style=\\\"color: rgb(0, 4, 8);\\\">Valencia Oranges are a large orange variety with smooth and pebbled surface and semi-thick fragrant peels. They are well-known for their sweet and distinctive bright colored juice which makes them the best and mainly popular choice in making orange juice among its citrus peers. Nutrition Values per 100g serving contains Vitamin A Retinol Equivalent: 10\\u03bcg Vitamin E Alpha Tocopherol: 0.3mg Vitamin B1: 0.1mg Vitamin B2: 0.03mg Niacin 0.4mg 3.48mg Vitamin B6: 0.07mg Folate: 32\\u03bcg Pantothenic Acid: 0.36mg Biotin: 0.9\\u03bcg Vitamin C: 40mg Sodium: 1mg Potassium: 140mg Calcium: 21mg Magnesium: 11mg Phosphorus: 24mg Iron: 0.3mg Zinc: 0.2mg Copper: 0.06mg Manganese: 0.05mg Molybdenum: 1\\u03bcg and Dietary Fiber: 0.8g. Valencia Oranges have healing and anti-inflammatory properties owing to its wide variety of phytonutrient compounds. It is known to lower high blood pressure and cholesterol, protect against cardiovascular diseases, prevent ulcers and reduce risk for stomach cancer, protect respiratory health and promote overall optimal health.<\\/span><\\/p>\",\"image\":\"[\\\"2022-08-17-62fc011fe35bc.png\\\",\\\"2022-08-17-62fc07f8296c0.png\\\"]\",\"price\":11.05,\"variations\":\"[]\",\"tax\":0,\"status\":1,\"created_at\":\"2022-08-16T20:42:07.000000Z\",\"updated_at\":\"2022-08-16T21:11:20.000000Z\",\"attributes\":\"[]\",\"category_ids\":\"[{\\\"id\\\":\\\"10\\\",\\\"position\\\":1},{\\\"id\\\":\\\"24\\\",\\\"position\\\":2}]\",\"choice_options\":\"[]\",\"discount\":0,\"discount_type\":\"percent\",\"tax_type\":\"percent\",\"unit\":\"kg\",\"total_stock\":100,\"capacity\":1,\"daily_needs\":1,\"translations\":[]}','[{\"type\":null}]',0.00,'discount_on_product',16,0.00,'2022-09-05 18:08:22','2022-09-05 18:11:38','null','kg',0,3,'2022-09-05'),(25,27,100008,2.99,'{\"id\":27,\"name\":\"Coca Cola Light Carbonated Soft Drink 330ml\",\"description\":\"Ingredients\\r\\nCarbonated Water \\u25cf Caramel Flavour \\u25cf Acidifier Phosphoric Acid \\u25cf Natural Cola Flavourings\\r\\n\\r\\nAllergy Information\\r\\nPhenylalanine.\\r\\n\\r\\nAdditives\\r\\nNo Artificial Colour, No Artificial Flavours, No Added Sugar\\r\\n\\r\\nPackage Type\\r\\nCan\\r\\n\\r\\nFlavor\\r\\nLight\\r\\n\\r\\nProduct Subtype\\r\\nSoft drink\\r\\n\\r\\nStorage Condition\\r\\nKeep it refrigerated\\r\\n\\r\\nPreparation and usage\\r\\nReady to drink\",\"image\":\"[\\\"2022-08-27-6309f32e98d95.png\\\"]\",\"price\":2.99,\"variations\":\"[]\",\"tax\":0,\"status\":1,\"created_at\":\"2022-08-27T10:34:22.000000Z\",\"updated_at\":\"2022-09-05T14:06:18.000000Z\",\"attributes\":\"[]\",\"category_ids\":\"[{\\\"id\\\":\\\"3\\\",\\\"position\\\":1},{\\\"id\\\":\\\"28\\\",\\\"position\\\":2}]\",\"choice_options\":\"[]\",\"discount\":0,\"discount_type\":\"percent\",\"tax_type\":\"percent\",\"unit\":\"pc\",\"total_stock\":79,\"capacity\":300,\"daily_needs\":1,\"translations\":[]}','[{\"type\":null}]',0.00,'discount_on_product',1,0.00,'2022-09-05 18:08:22','2022-09-05 18:11:38','null','pc',0,3,'2022-09-05'),(26,14,100009,10.50,'{\"id\":14,\"name\":\"Cauliflower (Spain)\",\"description\":null}','[{\"type\":null}]',NULL,'amount',1,37.69,'2022-09-09 22:34:41','2022-09-09 22:34:41',NULL,'kg',1,1,'2022-09-10'),(27,20,100009,17.60,'{\"id\":20,\"name\":\"Nescafe Red Mug Coffee 100g\",\"description\":null}','[{\"type\":null}]',NULL,'amount',8,37.69,'2022-09-09 22:34:41','2022-09-09 22:34:41',NULL,'kg',1,1,'2022-09-10'),(28,21,100009,28.00,'{\"id\":21,\"name\":\"Nescafe Gold Blend Rich and Smooth Instant Coffee 200g\",\"description\":null}','[{\"type\":null}]',NULL,'amount',1,37.69,'2022-09-09 22:34:41','2022-09-09 22:34:41',NULL,'kg',1,1,'2022-09-10'),(29,14,100010,10.50,'{\"id\":14,\"name\":\"Cauliflower (Spain)\",\"description\":null}','[{\"type\":null}]',NULL,'amount',1,37.69,'2022-09-09 23:11:02','2022-09-09 23:11:02',NULL,'kg',1,1,'2022-09-10'),(30,20,100010,17.60,'{\"id\":20,\"name\":\"Nescafe Red Mug Coffee 100g\",\"description\":null}','[{\"type\":null}]',NULL,'amount',8,37.69,'2022-09-09 23:11:02','2022-09-09 23:11:02',NULL,'kg',1,1,'2022-09-10'),(31,21,100010,28.00,'{\"id\":21,\"name\":\"Nescafe Gold Blend Rich and Smooth Instant Coffee 200g\",\"description\":null}','[{\"type\":null}]',NULL,'amount',1,37.69,'2022-09-09 23:11:02','2022-09-09 23:11:02',NULL,'kg',1,1,'2022-09-10'),(32,12,100011,13.80,'{\"id\":12,\"name\":\"Red Pomegranate\",\"description\":null}','[{\"type\":null}]',NULL,'amount',1,6.26,'2022-09-10 11:08:08','2022-09-10 11:08:08',NULL,'kg',1,1,'2022-09-10'),(33,24,100011,11.05,'{\"id\":24,\"name\":\"Valencia Oranges 3Kg\",\"description\":null}','[{\"type\":null}]',NULL,'amount',1,6.26,'2022-09-10 11:08:08','2022-09-10 11:08:08',NULL,'kg',1,1,'2022-09-10'),(34,11,100011,4.95,'{\"id\":11,\"name\":\"Royal Gala Apple\",\"description\":null}','[{\"type\":null}]',NULL,'amount',1,6.26,'2022-09-10 11:08:08','2022-09-10 11:08:08',NULL,'kg',1,1,'2022-09-10'),(35,25,100012,15.00,'{\"id\":25,\"name\":\"Test Banana\",\"description\":null}','[{\"type\":null}]',NULL,'amount',1,10.31,'2022-09-10 12:12:06','2022-09-10 12:12:06',NULL,'kg',1,2,'2022-09-11'),(36,14,100012,10.50,'{\"id\":14,\"name\":\"Cauliflower (Spain)\",\"description\":null}','[{\"type\":null}]',NULL,'amount',1,10.31,'2022-09-10 12:12:06','2022-09-10 12:12:06',NULL,'kg',1,2,'2022-09-11'),(37,12,100012,13.80,'{\"id\":12,\"name\":\"Red Pomegranate\",\"description\":null}','[{\"type\":null}]',NULL,'amount',1,10.31,'2022-09-10 12:12:06','2022-09-10 12:12:06',NULL,'kg',1,2,'2022-09-11'),(38,17,100012,9.75,'{\"id\":17,\"name\":\"Lipton Extra Strong Black Tea with Sun-Ripened Tea Leaves Loose 200G\",\"description\":null}','[{\"type\":null}]',NULL,'amount',1,10.31,'2022-09-10 12:12:06','2022-09-10 12:12:06',NULL,'kg',1,2,'2022-09-11'),(39,18,100013,19.00,'{\"id\":18,\"name\":\"Lipton Extra Strong Black Tea with Sun-Ripened Tea Leaves Loose 400G\",\"description\":null}','[{\"type\":null}]',NULL,'amount',1,3.99,'2022-09-10 12:19:37','2022-09-10 12:19:37',NULL,'kg',1,1,'2022-09-10'),(40,18,100014,19.00,'{\"id\":18,\"name\":\"Lipton Extra Strong Black Tea with Sun-Ripened Tea Leaves Loose 400G\",\"description\":\"<ul><li>Enjoy the rich taste of Lipton Extra Strong Black Tea featuring a delicious, strong taste with an invigorating aroma<\\/li><li>Black tea contains carefully selected and fresh-pressed tea leaves, capture as much natural tea taste as possible<\\/li><li>Lipton Extra Strong Black Tea contains rich flavonoids that awaken your taste buds and uplift your mood<\\/li><li>Get the best from your brew in 2 minutes, adding the loose tea first and then water so the leaves can unleash their flavor<\\/li><\\/ul><p><br><\\/p><p><span style=\\\"color: rgb(0, 4, 8);\\\">Origin - <\\/span><strong style=\\\"color: rgb(0, 4, 8);\\\">Sultanate of Oman<\\/strong><\\/p><p><br><\\/p><h3><span style=\\\"color: black;\\\">Ingredients<\\/span><\\/h3><p><span style=\\\"color: black;\\\">Tea Leaves<\\/span><\\/p><h3><span style=\\\"color: black;\\\">Flavor<\\/span><\\/h3><p><span style=\\\"color: black;\\\">Black Tea<\\/span><\\/p><p><br><\\/p><p><span style=\\\"color: rgb(34, 34, 34);\\\">Pack size: 400g<\\/span><\\/p>\",\"image\":\"[\\\"2022-06-23-62b58386ca9c5.png\\\",\\\"2022-06-23-62b58386caea8.png\\\"]\",\"price\":19,\"variations\":\"[]\",\"tax\":0,\"status\":1,\"created_at\":\"2022-06-23T18:27:34.000000Z\",\"updated_at\":\"2022-09-10T08:19:37.000000Z\",\"attributes\":\"[]\",\"category_ids\":\"[{\\\"id\\\":\\\"3\\\",\\\"position\\\":1},{\\\"id\\\":\\\"26\\\",\\\"position\\\":2}]\",\"choice_options\":\"[]\",\"discount\":0,\"discount_type\":\"percent\",\"tax_type\":\"percent\",\"unit\":\"gm\",\"total_stock\":98,\"capacity\":400,\"daily_needs\":0,\"translations\":[]}','[{\"type\":null}]',0.00,'discount_on_product',1,0.00,'2022-09-22 10:04:16','2022-09-22 10:04:16','null','gm',1,2,'2022-09-22'),(41,22,100014,1.00,'{\"id\":22,\"name\":\"TEST 123\",\"description\":\"<p><br><\\/p>\",\"image\":\"[\\\"2022-07-30-62e55d8f0dddb.png\\\"]\",\"price\":1,\"variations\":\"[]\",\"tax\":0,\"status\":1,\"created_at\":\"2022-07-30T16:34:23.000000Z\",\"updated_at\":\"2022-08-22T08:51:31.000000Z\",\"attributes\":\"[]\",\"category_ids\":\"[{\\\"id\\\":\\\"48\\\",\\\"position\\\":1}]\",\"choice_options\":\"[]\",\"discount\":0,\"discount_type\":\"percent\",\"tax_type\":\"percent\",\"unit\":\"kg\",\"total_stock\":999,\"capacity\":1,\"daily_needs\":0,\"translations\":[]}','[{\"type\":null}]',0.00,'discount_on_product',1,0.00,'2022-09-22 10:04:16','2022-09-22 10:04:16','null','kg',1,2,'2022-09-22'),(42,19,100014,22.95,'{\"id\":19,\"name\":\"Nescafe Gold Blend Rich and Smooth Instant Coffee 100g\",\"description\":\"<ul><li>Distinctive premium coffee blend<\\/li><li>100% pure coffee experience<\\/li><li>Our specially designed glass jar, with its aroma-lock lid, keeps your gold-blend delightfully tasty to the last drop<\\/li><\\/ul><p><br><\\/p><p><span style=\\\"color: rgb(34, 34, 34);\\\">Pack size: 100g<\\/span><\\/p><p><span style=\\\"color: rgb(0, 4, 8);\\\">Origin - <\\/span><strong style=\\\"color: rgb(0, 4, 8);\\\">United Kingdom<\\/strong><\\/p><p><br><\\/p><h3><span style=\\\"color: black;\\\">Ingredients<\\/span><\\/h3><p><strong style=\\\"color: black;\\\">Arabica Ground Coffee<\\/strong><\\/p><p><strong style=\\\"color: black;\\\"><span class=\\\"ql-cursor\\\">\\ufeff<\\/span><\\/strong><\\/p><h3><span style=\\\"color: black;\\\">Product Subtype<\\/span><\\/h3><p><strong style=\\\"color: black;\\\">Coffee<\\/strong><\\/p>\",\"image\":\"[\\\"2022-06-23-62b584a36d85b.png\\\",\\\"2022-06-23-62b584a36dd72.png\\\"]\",\"price\":22.95,\"variations\":\"[]\",\"tax\":0,\"status\":1,\"created_at\":\"2022-06-23T18:32:19.000000Z\",\"updated_at\":\"2022-08-22T08:51:31.000000Z\",\"attributes\":\"[]\",\"category_ids\":\"[{\\\"id\\\":\\\"3\\\",\\\"position\\\":1},{\\\"id\\\":\\\"26\\\",\\\"position\\\":2}]\",\"choice_options\":\"[]\",\"discount\":0,\"discount_type\":\"percent\",\"tax_type\":\"percent\",\"unit\":\"gm\",\"total_stock\":99,\"capacity\":100,\"daily_needs\":1,\"translations\":[]}','[{\"type\":null}]',0.00,'discount_on_product',1,0.00,'2022-09-22 10:04:16','2022-09-22 10:04:16','null','gm',1,2,'2022-09-22'),(43,21,100014,28.00,'{\"id\":21,\"name\":\"Nescafe Gold Blend Rich and Smooth Instant Coffee 200g\",\"description\":\"<ul><li>Distinctive premium coffee blend<\\/li><li>100% pure coffee experience<\\/li><li>Our specially designed glass jar, with its aroma-lock lid, keeps your gold-blend delightfully tasty to the last drop<\\/li><\\/ul><p><br><\\/p><h3><span style=\\\"color: black;\\\">Ingredients<\\/span><\\/h3><p><strong style=\\\"color: black;\\\">Arabica Ground Coffee<\\/strong><\\/p><p><br><\\/p><h3><span style=\\\"color: black;\\\">Product Subtype<\\/span><\\/h3><p><strong style=\\\"color: black;\\\">Coffee<\\/strong><\\/p><p><br><\\/p><p><span style=\\\"color: rgb(34, 34, 34);\\\">Pack size: 200g<\\/span><\\/p><p><span style=\\\"color: rgb(0, 4, 8);\\\">Origin - <\\/span><strong style=\\\"color: rgb(0, 4, 8);\\\">United Kingdom<\\/strong><\\/p>\",\"image\":\"[\\\"2022-06-23-62b5865f5b70c.png\\\",\\\"2022-06-23-62b5865f5bda3.png\\\"]\",\"price\":28,\"variations\":\"[]\",\"tax\":0,\"status\":1,\"created_at\":\"2022-06-23T18:39:43.000000Z\",\"updated_at\":\"2022-09-09T19:11:02.000000Z\",\"attributes\":\"[]\",\"category_ids\":\"[{\\\"id\\\":\\\"3\\\",\\\"position\\\":1},{\\\"id\\\":\\\"26\\\",\\\"position\\\":2}]\",\"choice_options\":\"[]\",\"discount\":0,\"discount_type\":\"percent\",\"tax_type\":\"percent\",\"unit\":\"gm\",\"total_stock\":97,\"capacity\":200,\"daily_needs\":1,\"translations\":[]}','[{\"type\":null}]',0.00,'discount_on_product',3,0.00,'2022-09-22 10:04:16','2022-09-22 10:04:16','null','gm',1,2,'2022-09-22'),(44,18,100015,19.00,'{\"id\":18,\"name\":\"Lipton Extra Strong Black Tea with Sun-Ripened Tea Leaves Loose 400G\",\"description\":\"<ul><li>Enjoy the rich taste of Lipton Extra Strong Black Tea featuring a delicious, strong taste with an invigorating aroma<\\/li><li>Black tea contains carefully selected and fresh-pressed tea leaves, capture as much natural tea taste as possible<\\/li><li>Lipton Extra Strong Black Tea contains rich flavonoids that awaken your taste buds and uplift your mood<\\/li><li>Get the best from your brew in 2 minutes, adding the loose tea first and then water so the leaves can unleash their flavor<\\/li><\\/ul><p><br><\\/p><p><span style=\\\"color: rgb(0, 4, 8);\\\">Origin - <\\/span><strong style=\\\"color: rgb(0, 4, 8);\\\">Sultanate of Oman<\\/strong><\\/p><p><br><\\/p><h3><span style=\\\"color: black;\\\">Ingredients<\\/span><\\/h3><p><span style=\\\"color: black;\\\">Tea Leaves<\\/span><\\/p><h3><span style=\\\"color: black;\\\">Flavor<\\/span><\\/h3><p><span style=\\\"color: black;\\\">Black Tea<\\/span><\\/p><p><br><\\/p><p><span style=\\\"color: rgb(34, 34, 34);\\\">Pack size: 400g<\\/span><\\/p>\",\"image\":\"[\\\"2022-06-23-62b58386ca9c5.png\\\",\\\"2022-06-23-62b58386caea8.png\\\"]\",\"price\":19,\"variations\":\"[]\",\"tax\":0,\"status\":1,\"created_at\":\"2022-06-23T18:27:34.000000Z\",\"updated_at\":\"2022-09-22T06:04:16.000000Z\",\"attributes\":\"[]\",\"category_ids\":\"[{\\\"id\\\":\\\"3\\\",\\\"position\\\":1},{\\\"id\\\":\\\"26\\\",\\\"position\\\":2}]\",\"choice_options\":\"[]\",\"discount\":0,\"discount_type\":\"percent\",\"tax_type\":\"percent\",\"unit\":\"gm\",\"total_stock\":97,\"capacity\":400,\"daily_needs\":0,\"translations\":[]}','[{\"type\":null}]',0.00,'discount_on_product',1,0.00,'2022-09-22 10:09:43','2022-09-22 10:09:43','null','gm',1,2,'2022-09-22'),(45,22,100015,1.00,'{\"id\":22,\"name\":\"TEST 123\",\"description\":\"<p><br><\\/p>\",\"image\":\"[\\\"2022-07-30-62e55d8f0dddb.png\\\"]\",\"price\":1,\"variations\":\"[]\",\"tax\":0,\"status\":1,\"created_at\":\"2022-07-30T16:34:23.000000Z\",\"updated_at\":\"2022-09-22T06:04:16.000000Z\",\"attributes\":\"[]\",\"category_ids\":\"[{\\\"id\\\":\\\"48\\\",\\\"position\\\":1}]\",\"choice_options\":\"[]\",\"discount\":0,\"discount_type\":\"percent\",\"tax_type\":\"percent\",\"unit\":\"kg\",\"total_stock\":998,\"capacity\":1,\"daily_needs\":0,\"translations\":[]}','[{\"type\":null}]',0.00,'discount_on_product',1,0.00,'2022-09-22 10:09:43','2022-09-22 10:09:43','null','kg',1,2,'2022-09-22'),(46,19,100015,22.95,'{\"id\":19,\"name\":\"Nescafe Gold Blend Rich and Smooth Instant Coffee 100g\",\"description\":\"<ul><li>Distinctive premium coffee blend<\\/li><li>100% pure coffee experience<\\/li><li>Our specially designed glass jar, with its aroma-lock lid, keeps your gold-blend delightfully tasty to the last drop<\\/li><\\/ul><p><br><\\/p><p><span style=\\\"color: rgb(34, 34, 34);\\\">Pack size: 100g<\\/span><\\/p><p><span style=\\\"color: rgb(0, 4, 8);\\\">Origin - <\\/span><strong style=\\\"color: rgb(0, 4, 8);\\\">United Kingdom<\\/strong><\\/p><p><br><\\/p><h3><span style=\\\"color: black;\\\">Ingredients<\\/span><\\/h3><p><strong style=\\\"color: black;\\\">Arabica Ground Coffee<\\/strong><\\/p><p><strong style=\\\"color: black;\\\"><span class=\\\"ql-cursor\\\">\\ufeff<\\/span><\\/strong><\\/p><h3><span style=\\\"color: black;\\\">Product Subtype<\\/span><\\/h3><p><strong style=\\\"color: black;\\\">Coffee<\\/strong><\\/p>\",\"image\":\"[\\\"2022-06-23-62b584a36d85b.png\\\",\\\"2022-06-23-62b584a36dd72.png\\\"]\",\"price\":22.95,\"variations\":\"[]\",\"tax\":0,\"status\":1,\"created_at\":\"2022-06-23T18:32:19.000000Z\",\"updated_at\":\"2022-09-22T06:04:16.000000Z\",\"attributes\":\"[]\",\"category_ids\":\"[{\\\"id\\\":\\\"3\\\",\\\"position\\\":1},{\\\"id\\\":\\\"26\\\",\\\"position\\\":2}]\",\"choice_options\":\"[]\",\"discount\":0,\"discount_type\":\"percent\",\"tax_type\":\"percent\",\"unit\":\"gm\",\"total_stock\":98,\"capacity\":100,\"daily_needs\":1,\"translations\":[]}','[{\"type\":null}]',0.00,'discount_on_product',1,0.00,'2022-09-22 10:09:43','2022-09-22 10:09:43','null','gm',1,2,'2022-09-22'),(47,21,100015,28.00,'{\"id\":21,\"name\":\"Nescafe Gold Blend Rich and Smooth Instant Coffee 200g\",\"description\":\"<ul><li>Distinctive premium coffee blend<\\/li><li>100% pure coffee experience<\\/li><li>Our specially designed glass jar, with its aroma-lock lid, keeps your gold-blend delightfully tasty to the last drop<\\/li><\\/ul><p><br><\\/p><h3><span style=\\\"color: black;\\\">Ingredients<\\/span><\\/h3><p><strong style=\\\"color: black;\\\">Arabica Ground Coffee<\\/strong><\\/p><p><br><\\/p><h3><span style=\\\"color: black;\\\">Product Subtype<\\/span><\\/h3><p><strong style=\\\"color: black;\\\">Coffee<\\/strong><\\/p><p><br><\\/p><p><span style=\\\"color: rgb(34, 34, 34);\\\">Pack size: 200g<\\/span><\\/p><p><span style=\\\"color: rgb(0, 4, 8);\\\">Origin - <\\/span><strong style=\\\"color: rgb(0, 4, 8);\\\">United Kingdom<\\/strong><\\/p>\",\"image\":\"[\\\"2022-06-23-62b5865f5b70c.png\\\",\\\"2022-06-23-62b5865f5bda3.png\\\"]\",\"price\":28,\"variations\":\"[]\",\"tax\":0,\"status\":1,\"created_at\":\"2022-06-23T18:39:43.000000Z\",\"updated_at\":\"2022-09-22T06:04:16.000000Z\",\"attributes\":\"[]\",\"category_ids\":\"[{\\\"id\\\":\\\"3\\\",\\\"position\\\":1},{\\\"id\\\":\\\"26\\\",\\\"position\\\":2}]\",\"choice_options\":\"[]\",\"discount\":0,\"discount_type\":\"percent\",\"tax_type\":\"percent\",\"unit\":\"gm\",\"total_stock\":94,\"capacity\":200,\"daily_needs\":1,\"translations\":[]}','[{\"type\":null}]',0.00,'discount_on_product',3,0.00,'2022-09-22 10:09:43','2022-09-22 10:09:43','null','gm',1,2,'2022-09-22');
/*!40000 ALTER TABLE `order_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `order_amount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `coupon_discount_amount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `coupon_discount_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unpaid',
  `order_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `total_tax_amount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `payment_method` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_reference` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_address_id` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `checked` tinyint(1) NOT NULL DEFAULT 0,
  `delivery_man_id` bigint(20) DEFAULT NULL,
  `delivery_charge` decimal(8,2) NOT NULL DEFAULT 0.00,
  `order_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'delivery',
  `branch_id` bigint(20) NOT NULL DEFAULT 1,
  `time_slot_id` bigint(20) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `delivery_date` date DEFAULT NULL,
  `callback` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extra_discount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `delivery_address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100016 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` (`id`, `user_id`, `order_amount`, `coupon_discount_amount`, `coupon_discount_title`, `payment_status`, `order_status`, `total_tax_amount`, `payment_method`, `transaction_reference`, `delivery_address_id`, `created_at`, `updated_at`, `checked`, `delivery_man_id`, `delivery_charge`, `order_note`, `coupon_code`, `order_type`, `branch_id`, `time_slot_id`, `date`, `delivery_date`, `callback`, `extra_discount`, `delivery_address`) VALUES (100001,1,153.80,0.00,NULL,'unpaid','canceled',0.00,'cash_on_delivery',NULL,2,'2022-08-04 11:15:35','2022-08-04 11:44:40',1,NULL,100.00,NULL,NULL,'delivery',1,3,'2022-08-04','2022-08-04',NULL,0.00,'{\"id\":2,\"address_type\":\"Home\",\"contact_person_number\":\"+923137388266\",\"address\":\"Lahore  PK\",\"latitude\":\"31.457525216227427\",\"longitude\":\"74.36555050313471\",\"created_at\":\"2022-08-03T12:05:03.000000Z\",\"updated_at\":\"2022-08-03T12:05:03.000000Z\",\"user_id\":1,\"contact_person_name\":\"Adeel Ashraf\"}'),(100002,1,153.80,0.00,NULL,'unpaid','canceled',0.00,'cash_on_delivery',NULL,2,'2022-08-04 11:16:11','2022-08-04 11:17:01',1,NULL,100.00,NULL,NULL,'delivery',1,3,'2022-08-04','2022-08-04',NULL,0.00,'{\"id\":2,\"address_type\":\"Home\",\"contact_person_number\":\"+923137388266\",\"address\":\"Lahore  PK\",\"latitude\":\"31.457525216227427\",\"longitude\":\"74.36555050313471\",\"created_at\":\"2022-08-03T12:05:03.000000Z\",\"updated_at\":\"2022-08-03T12:05:03.000000Z\",\"user_id\":1,\"contact_person_name\":\"Adeel Ashraf\"}'),(100003,1,229.00,0.00,NULL,'unpaid','canceled',0.00,'cash_on_delivery',NULL,2,'2022-08-04 11:42:19','2022-08-04 11:44:27',1,NULL,100.00,NULL,NULL,'delivery',1,3,'2022-08-04','2022-08-04',NULL,0.00,'{\"id\":2,\"address_type\":\"Home\",\"contact_person_number\":\"+923137388266\",\"address\":\"Lahore  PK\",\"latitude\":\"31.457525216227427\",\"longitude\":\"74.36555050313471\",\"created_at\":\"2022-08-03T12:05:03.000000Z\",\"updated_at\":\"2022-08-03T12:05:03.000000Z\",\"user_id\":1,\"contact_person_name\":\"Adeel Ashraf\"}'),(100004,1,66.00,0.00,NULL,'unpaid','pending',0.00,'cash_on_delivery',NULL,2,'2022-08-07 21:54:52','2022-08-07 21:57:32',1,NULL,5.00,NULL,NULL,'delivery',1,3,'2022-08-07','2022-08-07',NULL,0.00,'{\"id\":2,\"address_type\":\"Home\",\"contact_person_number\":\"+923137388266\",\"address\":\"Lahore  PK\",\"latitude\":\"31.457525216227427\",\"longitude\":\"74.36555050313471\",\"created_at\":\"2022-08-03T12:05:03.000000Z\",\"updated_at\":\"2022-08-03T12:05:03.000000Z\",\"user_id\":1,\"contact_person_name\":\"Adeel Ashraf\"}'),(100005,1,66.00,0.00,NULL,'unpaid','confirmed',0.00,'cash_on_delivery',NULL,2,'2022-08-07 21:55:29','2022-08-07 21:57:49',1,NULL,5.00,NULL,NULL,'delivery',1,3,'2022-08-07','2022-08-07',NULL,0.00,'{\"id\":2,\"address_type\":\"Home\",\"contact_person_number\":\"+923137388266\",\"address\":\"Lahore  PK\",\"latitude\":\"31.457525216227427\",\"longitude\":\"74.36555050313471\",\"created_at\":\"2022-08-03T12:05:03.000000Z\",\"updated_at\":\"2022-08-03T12:05:03.000000Z\",\"user_id\":1,\"contact_person_name\":\"Adeel Ashraf\"}'),(100006,2,152.61,0.00,NULL,'unpaid','pending',0.00,NULL,NULL,5,'2022-08-22 12:51:31','2022-08-23 16:13:07',1,NULL,5.00,NULL,NULL,'delivery',1,3,'2022-08-22','2022-08-22',NULL,0.00,'{\"id\":5,\"address_type\":\"Workplace\",\"contact_person_number\":\"+971568455575\",\"address\":\"23 building c\",\"latitude\":\"25.397225701230827\",\"longitude\":\"55.47440607100725\",\"created_at\":\"2022-08-22T08:51:17.000000Z\",\"updated_at\":\"2022-08-22T08:51:17.000000Z\",\"user_id\":2,\"contact_person_name\":\"Tehreem Hayat\"}'),(100007,1,76.79,0.00,NULL,'unpaid','canceled',0.00,'cash_on_delivery',NULL,11,'2022-09-05 18:06:18','2022-10-26 16:27:53',1,NULL,5.00,NULL,NULL,'delivery',1,3,'2022-09-05','2022-09-05',NULL,0.00,'{\"id\":11,\"address_type\":\"Home\",\"contact_person_number\":\"+923137388266\",\"address\":\"9FXP+F47  AE\",\"latitude\":\"25.398619215176947\",\"longitude\":\"55.48517279326916\",\"created_at\":\"2022-09-01T13:19:30.000000Z\",\"updated_at\":\"2022-09-01T13:19:30.000000Z\",\"user_id\":1,\"contact_person_name\":\"Adeel Ashraf\"}'),(100008,1,184.79,0.00,NULL,'unpaid','canceled',0.00,'cash_on_delivery',NULL,11,'2022-09-05 18:08:22','2022-09-05 20:20:12',1,NULL,5.00,NULL,NULL,'delivery',1,3,'2022-09-05','2022-09-05',NULL,0.00,'{\"id\":11,\"address_type\":\"Home\",\"contact_person_number\":\"+923137388266\",\"address\":\"9FXP+F47  AE\",\"latitude\":\"25.398619215176947\",\"longitude\":\"55.48517279326916\",\"created_at\":\"2022-09-01T13:19:30.000000Z\",\"updated_at\":\"2022-09-01T13:19:30.000000Z\",\"user_id\":1,\"contact_person_name\":\"Adeel Ashraf\"}'),(100009,6,216.99,0.00,'','unpaid','pending',37.69,'cash_on_delivery',NULL,14,'2022-09-09 22:34:41','2022-09-27 15:17:47',1,NULL,0.00,'fscasa ',NULL,'delivery',1,1,'2022-09-09','2022-09-10',NULL,0.00,'\"[]\"'),(100010,6,216.99,0.00,'','unpaid','pending',37.69,'cash_on_delivery',NULL,14,'2022-09-09 23:11:02','2022-09-27 15:17:47',1,NULL,5.00,'zf fes e',NULL,'delivery',1,1,'2022-09-09','2022-09-10',NULL,0.00,'\"[]\"'),(100011,6,36.06,0.00,'','unpaid','canceled',6.26,'cash_on_delivery',NULL,14,'2022-09-10 11:08:08','2022-09-27 15:17:47',1,NULL,5.00,'Please send as soon as possible',NULL,'delivery',1,1,'2022-09-10','2022-09-10',NULL,0.00,'\"[{\\\"id\\\":14,\\\"address_type\\\":\\\"Hussnain town street 4\\\",\\\"contact_person_number\\\":\\\"923106473564\\\",\\\"address\\\":\\\"Dr Kamran wali gali\\\",\\\"latitude\\\":\\\"31\\\",\\\"longitude\\\":\\\"74\\\",\\\"created_at\\\":\\\"2022-09-10T11:06:53.000000Z\\\",\\\"updated_at\\\":\\\"2022-09-10T11:07:22.000000Z\\\",\\\"user_id\\\":6,\\\"contact_person_name\\\":\\\"Muhammad Aslam\\\"}]\"'),(100012,6,59.36,0.00,'','unpaid','pending',10.31,'cash_on_delivery',NULL,14,'2022-09-10 12:12:06','2022-09-27 15:17:47',1,NULL,5.00,'Send it as soon as possible',NULL,'delivery',1,2,'2022-09-10','2022-09-11',NULL,0.00,'\"[{\\\"id\\\":14,\\\"address_type\\\":\\\"Hussnain town street 4\\\",\\\"contact_person_number\\\":\\\"923106473564\\\",\\\"address\\\":\\\"Dr Kamran wali gali\\\",\\\"latitude\\\":\\\"31\\\",\\\"longitude\\\":\\\"74\\\",\\\"created_at\\\":\\\"2022-09-10T11:06:53.000000Z\\\",\\\"updated_at\\\":\\\"2022-09-10T11:07:22.000000Z\\\",\\\"user_id\\\":6,\\\"contact_person_name\\\":\\\"Muhammad Aslam\\\"}]\"'),(100013,6,22.99,0.00,'','unpaid','pending',3.99,'cash_on_delivery',NULL,14,'2022-09-10 12:19:37','2022-09-27 15:17:47',1,NULL,5.00,'Let Start',NULL,'delivery',1,1,'2022-09-10','2022-09-10',NULL,0.00,'\"[{\\\"id\\\":14,\\\"address_type\\\":\\\"Hussnain town street 4\\\",\\\"contact_person_number\\\":\\\"923106473564\\\",\\\"address\\\":\\\"Dr Kamran wali gali\\\",\\\"latitude\\\":\\\"31\\\",\\\"longitude\\\":\\\"74\\\",\\\"created_at\\\":\\\"2022-09-10T11:06:53.000000Z\\\",\\\"updated_at\\\":\\\"2022-09-10T11:07:22.000000Z\\\",\\\"user_id\\\":6,\\\"contact_person_name\\\":\\\"Muhammad Aslam\\\"}]\"'),(100014,9,126.95,0.00,NULL,'unpaid','pending',0.00,'cash_on_delivery',NULL,0,'2022-09-22 10:04:16','2022-09-27 15:17:47',1,NULL,5.00,NULL,NULL,'self_pickup',1,2,'2022-09-22','2022-09-22',NULL,0.00,'null'),(100015,9,126.95,0.00,NULL,'unpaid','pending',0.00,'cash_on_delivery',NULL,0,'2022-09-22 10:09:43','2022-09-27 15:17:47',1,NULL,5.00,NULL,NULL,'self_pickup',1,2,'2022-09-22','2022-09-22',NULL,0.00,'null');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email_or_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email_or_phone`)
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
-- Table structure for table `phone_verifications`
--

DROP TABLE IF EXISTS `phone_verifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phone_verifications` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_verifications`
--

LOCK TABLES `phone_verifications` WRITE;
/*!40000 ALTER TABLE `phone_verifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_verifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double NOT NULL DEFAULT 0,
  `variations` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax` decimal(8,2) NOT NULL DEFAULT 0.00,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `attributes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_ids` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `choice_options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `discount_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'percent',
  `tax_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'percent',
  `unit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pc',
  `total_stock` bigint(20) NOT NULL DEFAULT 0,
  `capacity` decimal(8,2) DEFAULT NULL,
  `daily_needs` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` (`id`, `name`, `description`, `image`, `price`, `variations`, `tax`, `status`, `created_at`, `updated_at`, `attributes`, `category_ids`, `choice_options`, `discount`, `discount_type`, `tax_type`, `unit`, `total_stock`, `capacity`, `daily_needs`) VALUES (10,'Chiquita Banana','<h2><span style=\"color: rgb(0, 4, 8);\">INFORMATION</span></h2><p><br></p><h3><span style=\"color: black;\">Storage Condition</span></h3><p><strong style=\"color: rgb(77, 77, 77);\">Keep Refrigerated</strong></p><p><br></p><h3><span style=\"color: black;\">Brand Message</span></h3><p><span style=\"color: rgb(77, 77, 77);\">At Chiquita, Conventional bananas are sustainably produced and meet the Class Extra standard while most of the market is not Class Extra. This is one of the reasons while consumers prefer Chiquita bananas, in a recent independent survey, people indicated that they prefer the taste of Chiquita bananas by more than 2 to 1 over the next leading brand.</span></p><p><br></p><p>AED 6.00 /Kg</p><p><span style=\"color: rgb(0, 4, 8);\">Origin - </span><strong style=\"color: rgb(0, 4, 8);\">Ecuador</strong></p><p><span style=\"color: rgb(34, 34, 34);\">Approx. 8 pieces/Kg</span></p>','[\"2022-06-23-62b579a67133e.png\",\"2022-06-23-62b579a671720.png\",\"2022-06-23-62b57a125f73f.png\"]',6,'[]',0.00,1,'2022-06-23 21:45:26','2022-06-23 22:12:07','[]','[{\"id\":\"10\",\"position\":1},{\"id\":\"24\",\"position\":2}]','[]',0.00,'percent','percent','kg',100,1.00,0),(11,'Royal Gala Apple','<p><span style=\"color: rgb(77, 77, 77);\">Royal Gala Apples are bi-colored with an attractive orange-red blush, which is most commonly striped and exposes a white-yellow background colouration. The fruit has sweet, yellowish flesh and an attractive crisp texture. Royal Gala Apples are aromatically sweet and snappy which makes it ideal as a healthy ready-to-eat snack.</span></p><p><br></p><h2><span style=\"color: rgb(0, 4, 8);\">INFORMATION</span></h2><p><br></p><h3><span style=\"color: black;\">Storage Condition</span></h3><p><strong style=\"color: rgb(77, 77, 77);\">Keep Refrigerated</strong></p><p><span style=\"color: rgb(0, 4, 8);\">Origin - </span><strong style=\"color: rgb(0, 4, 8);\">Turkey and Moldovia</strong></p>','[\"2022-06-23-62b57adeafb1d.png\",\"2022-06-23-62b57b1a5acc5.png\"]',4.95,'[]',0.00,1,'2022-06-23 21:50:38','2022-09-10 11:08:08','[]','[{\"id\":\"10\",\"position\":1},{\"id\":\"24\",\"position\":2}]','[]',0.00,'percent','percent','kg',99,1.00,0),(12,'Red Pomegranate','<h2><span style=\"color: rgb(0, 4, 8);\">INFORMATION</span></h2><h3><br></h3><h3><span style=\"color: black;\">Storage Condition</span></h3><p><strong style=\"color: rgb(77, 77, 77);\">Keep Refrigerated</strong></p><p><span style=\"color: rgb(34, 34, 34);\">Approx. 2 pieces/Kg</span></p><p><br></p><h3><span style=\"color: black;\">AED&nbsp;6.90/500g&nbsp;</span><span style=\"color: rgb(104, 104, 104);\">(Inc. VAT)</span></h3><p><span style=\"color: rgb(0, 4, 8);\">Origin - </span><strong style=\"color: rgb(0, 4, 8);\">Turkey and South Africa</strong></p>','[\"2022-06-23-62b57bf50ee24.png\",\"2022-06-23-62b57bf50f2bd.png\"]',13.8,'[]',0.00,1,'2022-06-23 21:55:17','2022-09-10 12:12:06','[]','[{\"id\":\"10\",\"position\":1},{\"id\":\"24\",\"position\":2}]','[]',0.00,'percent','percent','kg',97,1.00,0),(13,'Cauliflower','<h3><span style=\"color: black;\">Storage Condition</span></h3><p><br></p><p><span style=\"color: rgb(77, 77, 77);\">Remove from plastic wrapping. Wash it only when ready to use. If not, make sure it\'s completely dry before storage. Cover with paper towels and slid it in a plastic bag and place it in the fruits and vegetable compartment. It can last 3 to 5 days when stored properly.</span></p><p><br></p><p><span style=\"color: rgb(34, 34, 34);\">Approx. 1 pieces/Kg</span></p><p><span style=\"color: black;\">AED&nbsp;1.88/500g&nbsp;</span><span style=\"color: rgb(104, 104, 104);\">(Inc. VAT)</span></p><p><span style=\"color: rgb(0, 4, 8);\">Origin - </span><strong>United Arab Emirates</strong></p><p><br></p><p><br></p>','[\"2022-06-23-62b57ccb0ebb3.png\",\"2022-06-23-62b57ccb0f05c.png\"]',3.75,'[]',0.00,1,'2022-06-23 21:58:51','2022-08-22 12:51:31','[]','[{\"id\":\"10\",\"position\":1},{\"id\":\"25\",\"position\":2}]','[]',0.00,'percent','percent','kg',99,1.00,0),(14,'Cauliflower (Spain)','<h3><span style=\"color: black;\">Storage Condition</span></h3><p><br></p><p><span style=\"color: rgb(77, 77, 77);\">Remove Broccoli from plastic wrapping. Wash it only when ready to use. If not, make sure it\'s completely dry before storage. Cover with paper towels and slid it in a plastic bag and place it in the fruits and vegetable compartment. It can last 3 to 5 days when stored properly.</span></p><p><br></p><p><span style=\"color: rgb(34, 34, 34);\">Approx. 1 pieces/Kg</span></p><p><span style=\"color: black;\">AED 5.25/500g </span><span style=\"color: rgb(104, 104, 104);\">(Inc. VAT)</span></p><p><span style=\"color: rgb(0, 4, 8);\">Origin - </span><strong style=\"color: rgb(0, 4, 8);\">Spain</strong></p>','[\"2022-08-17-62fc1c9d36cd2.png\",\"2022-08-17-62fc1c9d37034.png\"]',10.5,'[]',0.00,1,'2022-06-23 22:07:18','2022-09-10 12:12:06','[]','[{\"id\":\"10\",\"position\":1},{\"id\":\"25\",\"position\":2}]','[]',0.00,'percent','percent','kg',96,1.00,0),(15,'Garlic','<h3><strong>Information</strong></h3><p><br></p><p><span style=\"color: rgb(34, 34, 34);\">Pack size : 900g</span></p><p><span style=\"color: rgb(0, 4, 8);\">Origin - </span><strong style=\"color: rgb(0, 4, 8);\">China</strong></p>','[\"2022-08-17-62fc1d46d995e.png\",\"2022-08-17-62fc1d46d9d95.png\"]',7.1,'[]',0.00,1,'2022-06-23 22:09:53','2022-08-22 12:51:31','[]','[{\"id\":\"10\",\"position\":1},{\"id\":\"25\",\"position\":2}]','[]',0.00,'percent','percent','kg',99,1.00,0),(16,'Broccoli','<h2><span style=\"color: rgb(0, 4, 8);\">INFORMATION</span></h2><p><br></p><h3><span style=\"color: black;\">Storage Condition</span></h3><p><span style=\"color: rgb(77, 77, 77);\">Remove Broccoli from plastic wrapping. Wash it only when ready to use. If not, make sure it\'s completely dry before storage. Cover with paper towels and slid it in a plastic bag and place it in the fruits and vegetable compartment. It can last 3 to 5 days when stored properly.</span></p><p><br></p><p><span style=\"color: rgb(0, 4, 8);\">Origin - </span><strong style=\"color: rgb(0, 4, 8);\">Spain</strong></p><p><span style=\"color: black;\">AED 9.40/500g </span><span style=\"color: rgb(104, 104, 104);\">(Inc. VAT)</span></p><p><span style=\"color: rgb(34, 34, 34);\">Approx. 2 pieces/Kg</span></p>','[\"2022-06-23-62b580b80117d.png\",\"2022-06-23-62b580b80164c.png\",\"2022-06-23-62b580b8019fd.png\"]',18.8,'[]',0.00,1,'2022-06-23 22:15:36','2022-08-22 12:51:31','[]','[{\"id\":\"10\",\"position\":1},{\"id\":\"25\",\"position\":2}]','[]',30.00,'percent','percent','kg',99,1.00,0),(17,'Lipton Extra Strong Black Tea with Sun-Ripened Tea Leaves Loose 200G','<ul><li>Enjoy the rich taste of Lipton Extra Strong Black Tea featuring a delicious, strong taste with an invigorating aroma</li><li>Black tea contains carefully selected and fresh-pressed tea leaves, capture as much natural tea taste as possible</li><li>Lipton Extra Strong Black Tea contains rich flavonoids that awaken your taste buds and uplift your mood</li><li>Get the best from your brew in 2 minutes, adding the loose tea first and then water so the leaves can unleash their flavour</li></ul><p><br></p><p><span style=\"color: rgb(0, 4, 8);\">Origin - </span><strong style=\"color: rgb(0, 4, 8);\">Sultanate of Oman</strong></p><p><span style=\"color: rgb(34, 34, 34);\">Pack size: 200g</span></p><p><br></p>','[\"2022-06-23-62b582043c9f9.png\",\"2022-06-23-62b582043cec8.png\"]',9.75,'[]',0.00,1,'2022-06-23 22:21:08','2022-09-10 12:12:06','[]','[{\"id\":\"3\",\"position\":1},{\"id\":\"26\",\"position\":2}]','[]',0.00,'percent','percent','gm',98,200.00,0),(18,'Lipton Extra Strong Black Tea with Sun-Ripened Tea Leaves Loose 400G','<ul><li>Enjoy the rich taste of Lipton Extra Strong Black Tea featuring a delicious, strong taste with an invigorating aroma</li><li>Black tea contains carefully selected and fresh-pressed tea leaves, capture as much natural tea taste as possible</li><li>Lipton Extra Strong Black Tea contains rich flavonoids that awaken your taste buds and uplift your mood</li><li>Get the best from your brew in 2 minutes, adding the loose tea first and then water so the leaves can unleash their flavor</li></ul><p><br></p><p><span style=\"color: rgb(0, 4, 8);\">Origin - </span><strong style=\"color: rgb(0, 4, 8);\">Sultanate of Oman</strong></p><p><br></p><h3><span style=\"color: black;\">Ingredients</span></h3><p><span style=\"color: black;\">Tea Leaves</span></p><h3><span style=\"color: black;\">Flavor</span></h3><p><span style=\"color: black;\">Black Tea</span></p><p><br></p><p><span style=\"color: rgb(34, 34, 34);\">Pack size: 400g</span></p>','[\"2022-06-23-62b58386ca9c5.png\",\"2022-06-23-62b58386caea8.png\"]',19,'[]',0.00,1,'2022-06-23 22:27:34','2022-09-22 10:09:43','[]','[{\"id\":\"3\",\"position\":1},{\"id\":\"26\",\"position\":2}]','[]',0.00,'percent','percent','gm',96,400.00,0),(19,'Nescafe Gold Blend Rich and Smooth Instant Coffee 100g','<ul><li>Distinctive premium coffee blend</li><li>100% pure coffee experience</li><li>Our specially designed glass jar, with its aroma-lock lid, keeps your gold-blend delightfully tasty to the last drop</li></ul><p><br></p><p><span style=\"color: rgb(34, 34, 34);\">Pack size: 100g</span></p><p><span style=\"color: rgb(0, 4, 8);\">Origin - </span><strong style=\"color: rgb(0, 4, 8);\">United Kingdom</strong></p><p><br></p><h3><span style=\"color: black;\">Ingredients</span></h3><p><strong style=\"color: black;\">Arabica Ground Coffee</strong></p><p><strong style=\"color: black;\"><span class=\"ql-cursor\">﻿</span></strong></p><h3><span style=\"color: black;\">Product Subtype</span></h3><p><strong style=\"color: black;\">Coffee</strong></p>','[\"2022-06-23-62b584a36d85b.png\",\"2022-06-23-62b584a36dd72.png\"]',22.95,'[]',0.00,1,'2022-06-23 22:32:19','2022-09-22 10:09:43','[]','[{\"id\":\"3\",\"position\":1},{\"id\":\"26\",\"position\":2}]','[]',0.00,'percent','percent','gm',97,100.00,1),(20,'Nescafe Red Mug Coffee 100g','<ul><li>Start your morning ritual with the great taste of Nescafe red mug</li><li>Carefully selected coffee beans are expertly roasted to give you our signature full-flavoured taste and rich aroma that you love</li><li><br></li></ul><h3><span style=\"color: black;\">Ingredients</span></h3><p><span style=\"color: black;\">100% Pure Coffee</span></p><p><br></p><h3><span style=\"color: black;\">Product Subtype</span></h3><p><span style=\"color: black;\">Coffee</span></p><p><br></p><p><span style=\"color: rgb(0, 4, 8);\">Origin - </span><strong style=\"color: rgb(0, 4, 8);\">Spain</strong></p><p><span style=\"color: rgb(34, 34, 34);\">Pack size: 100g</span></p>','[\"2022-06-23-62b585a2e17ef.png\",\"2022-06-23-62b585a2e1e69.png\"]',17.6,'[]',0.00,1,'2022-06-23 22:36:34','2022-09-09 23:11:02','[]','[{\"id\":\"3\",\"position\":1},{\"id\":\"26\",\"position\":2}]','[]',0.00,'percent','percent','gm',83,100.00,1),(21,'Nescafe Gold Blend Rich and Smooth Instant Coffee 200g','<ul><li>Distinctive premium coffee blend</li><li>100% pure coffee experience</li><li>Our specially designed glass jar, with its aroma-lock lid, keeps your gold-blend delightfully tasty to the last drop</li></ul><p><br></p><h3><span style=\"color: black;\">Ingredients</span></h3><p><strong style=\"color: black;\">Arabica Ground Coffee</strong></p><p><br></p><h3><span style=\"color: black;\">Product Subtype</span></h3><p><strong style=\"color: black;\">Coffee</strong></p><p><br></p><p><span style=\"color: rgb(34, 34, 34);\">Pack size: 200g</span></p><p><span style=\"color: rgb(0, 4, 8);\">Origin - </span><strong style=\"color: rgb(0, 4, 8);\">United Kingdom</strong></p>','[\"2022-06-23-62b5865f5b70c.png\",\"2022-06-23-62b5865f5bda3.png\"]',28,'[]',0.00,1,'2022-06-23 22:39:43','2022-09-22 10:09:43','[]','[{\"id\":\"3\",\"position\":1},{\"id\":\"26\",\"position\":2}]','[]',0.00,'percent','percent','gm',91,200.00,1),(22,'TEST 123','<p><br></p>','[\"2022-07-30-62e55d8f0dddb.png\"]',1,'[]',0.00,1,'2022-07-30 20:34:23','2022-09-22 10:09:43','[]','[{\"id\":\"48\",\"position\":1}]','[]',0.00,'percent','percent','kg',997,1.00,0),(23,'Golden Loaf Whole meal Bread 675g','<p><span style=\"color: black;\">Quick breakfast that curbs your hunger and gives you a boost of energy to get started.</span></p><p><span style=\"color: black;\">One can relish it as it is or toasts it to bring in some crunch.</span></p><p><span style=\"color: black;\">For those who love a wholesome bite, you can add your favorite veggies, cheese and spreads and grill it golden.</span></p><p><span style=\"color: black;\">Hunger can be a restless experience.</span></p>','[\"2022-08-03-62ea0faf438f6.png\"]',1,'[]',0.00,1,'2022-08-03 10:03:27','2022-10-26 16:27:53','[]','[{\"id\":\"12\",\"position\":1},{\"id\":\"32\",\"position\":2}]','[]',0.00,'amount','amount','gm',9,1.00,1),(24,'Valencia Oranges 3Kg','<p><span style=\"color: rgb(0, 4, 8);\">Valencia Oranges are a large orange variety with smooth and pebbled surface and semi-thick fragrant peels. They are well-known for their sweet and distinctive bright colored juice which makes them the best and mainly popular choice in making orange juice among its citrus peers. Nutrition Values per 100g serving contains Vitamin A Retinol Equivalent: 10μg Vitamin E Alpha Tocopherol: 0.3mg Vitamin B1: 0.1mg Vitamin B2: 0.03mg Niacin 0.4mg 3.48mg Vitamin B6: 0.07mg Folate: 32μg Pantothenic Acid: 0.36mg Biotin: 0.9μg Vitamin C: 40mg Sodium: 1mg Potassium: 140mg Calcium: 21mg Magnesium: 11mg Phosphorus: 24mg Iron: 0.3mg Zinc: 0.2mg Copper: 0.06mg Manganese: 0.05mg Molybdenum: 1μg and Dietary Fiber: 0.8g. Valencia Oranges have healing and anti-inflammatory properties owing to its wide variety of phytonutrient compounds. It is known to lower high blood pressure and cholesterol, protect against cardiovascular diseases, prevent ulcers and reduce risk for stomach cancer, protect respiratory health and promote overall optimal health.</span></p>','[\"2022-08-17-62fc011fe35bc.png\",\"2022-08-17-62fc07f8296c0.png\"]',11.05,'[]',0.00,1,'2022-08-17 00:42:07','2022-09-10 11:08:08','[]','[{\"id\":\"10\",\"position\":1},{\"id\":\"24\",\"position\":2}]','[]',0.00,'percent','percent','kg',99,1.00,1),(25,'Test Banana','<p>Fresh Banana straight from forms</p>','[\"2022-08-20-6300d4e117b3c.png\",\"2022-08-20-6300d5011daae.png\"]',15,'[]',0.00,1,'2022-08-20 16:29:39','2022-09-10 12:12:06','[]','[{\"id\":\"10\",\"position\":1},{\"id\":\"24\",\"position\":2}]','[]',0.00,'percent','percent','kg',999,1.00,0),(26,'Cucumber 400g','<p>The cucumber contains 95% of water and low content of nutrients that is perfect for healthy consumption while dieting. Besides, green vegetables form an essential part of every salad.</p><p><br></p><p>INFORMATION</p><p>Origin - United Arab Emirates</p><p><br></p><p>Storage Condition - Keep away from sunlight and store in a cool and dry place</p>','[\"2022-08-23-6304c5aef07b2.png\"]',3.5,'[]',0.00,1,'2022-08-23 16:18:54','2022-08-23 16:22:26','[]','[{\"id\":\"10\",\"position\":1},{\"id\":\"25\",\"position\":2}]','[]',0.00,'percent','percent','gm',100,400.00,1),(27,'Coca Cola Light Carbonated Soft Drink 330ml','Ingredients\r\nCarbonated Water ● Caramel Flavour ● Acidifier Phosphoric Acid ● Natural Cola Flavourings\r\n\r\nAllergy Information\r\nPhenylalanine.\r\n\r\nAdditives\r\nNo Artificial Colour, No Artificial Flavours, No Added Sugar\r\n\r\nPackage Type\r\nCan\r\n\r\nFlavor\r\nLight\r\n\r\nProduct Subtype\r\nSoft drink\r\n\r\nStorage Condition\r\nKeep it refrigerated\r\n\r\nPreparation and usage\r\nReady to drink','[\"2022-08-27-6309f32e98d95.png\"]',2.99,'[]',0.00,1,'2022-08-27 14:34:22','2022-10-26 16:27:53','[]','[{\"id\":\"3\",\"position\":1},{\"id\":\"28\",\"position\":2}]','[]',0.00,'percent','percent','pc',100,300.00,1);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reviews` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `comment` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES ('9ri7yhzaMt00aHcfxPGbRqvhXAzKJMh7U1DDePiK',NULL,'153.92.7.201','Go-http-client/2.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoibEloZ2RtV2dxQnBwTERpUDh5cVJCdUxSSWswcVN1TGhCVlNWUHBWYyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTc6Imh0dHBzOi8vY2hpcm9uLmFlIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1667624485),('dAGx340WKTIhuHzM4Tw07ckHBVsL5JJwkohMJvY7',NULL,'153.92.7.201','Go-http-client/2.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiU1Z4bGNWODF6NWF4STRXUVdrRGt4cFdQTlVTWVFlU2xPYzNNanpPdCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTc6Imh0dHBzOi8vY2hpcm9uLmFlIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1667628092),('Ef1K9a962nmMdFZNdkQYwvJxkQUAIfET9I1zL6Jj',NULL,'44.198.188.179','Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/533.20.25 (KHTML, like Gecko) Version/5.0.4 Safari/533.20.27','YTo0OntzOjY6Il90b2tlbiI7czo0MDoia3Exc1JBVFlnRjBqTWJ1cE9TaWpndTdqTVh1MERpak1pckcxV0FNbCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHBzOi8vY2hpcm9uLmFlL3Byb2R1Y3QtY2F0ZWdvcnkvMi9mYXEuaHRtbD9wYWdlPTEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjU6InN0YXRlIjtzOjQwOiI3UUJrWGdZdHZvVkVoZXhFYmh0d1Q0Rm4zcTJvemVaU1FHN3hxeldHIjt9',1667623110),('EhdjVMg8OgoYfsMqGrTv2Ftcc3KzS0AMDuEKULV2',NULL,'34.234.207.81','Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/533.20.25 (KHTML, like Gecko) Version/5.0.4 Safari/533.20.27','YTo0OntzOjY6Il90b2tlbiI7czo0MDoibEhFVElRNVhIZ3hsNHVxdFdBNWhFbUVsVHZOZ290NFBZemtKTndKSyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHBzOi8vY2hpcm9uLmFlL3Byb2R1Y3QtY2F0ZWdvcnkvMi9mYXEuaHRtbD9wYWdlPTEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjU6InN0YXRlIjtzOjQwOiI4OUhPTEFWTzM3Nk1hNHpCdG1FV3R5aEhud3JoR0h3d2NEMGFuaEVwIjt9',1667623584),('h0Iebtnfy3quAAquupLAoCB65PIuD6yKoA6tHyL4',NULL,'153.92.7.201','Go-http-client/2.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiTm1hTVFqa0ppWnRRWVhpbERwOGtLUzQ2ZnozdTlzOVJXemVaZWN3diI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTc6Imh0dHBzOi8vY2hpcm9uLmFlIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1667631684),('H2PdS1NcHxBkDaaA4FxQb4mpKarrYq473K9BmsSl',NULL,'3.236.131.224','Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/533.20.25 (KHTML, like Gecko) Version/5.0.4 Safari/533.20.27','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiQkdmNnZiY2NtM1Nwa01GZVltcDFwcDRVNmdXMmpaU0xmaDJsR3M2UiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTY6Imh0dHBzOi8vd3d3LmNoaXJvbi5hZS9wcm9kdWN0LWNhdGVnb3J5LzIvZmFxLmh0bWw/cGFnZT0xIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1OiJzdGF0ZSI7czo0MDoiSlpkVFMxWHAxb2RDTkdtZTc0Q2R0WU9iRzRnMlVUbmIzbU12bVFQUSI7fQ==',1667630204),('HE9Ht0M8sspLSyACnAz3OrjFF7MJG5JPtEfNgX9R',NULL,'54.36.148.15','Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)','YTozOntzOjY6Il90b2tlbiI7czo0MDoieHJxNW9NZkt3WGswUnlqRmtkcWw0bmpIOFB5cnhwSkN5Z1FDTDhxOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHBzOi8vd3d3LmNoaXJvbi5hZS9wcm9kdWN0L2RldGFpbC8yNCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1667628684),('jWtTuTQbE0ZwUaRCcJQ5EYrBsYd7PpSuMS30eefx',NULL,'44.198.188.179','Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/533.20.25 (KHTML, like Gecko) Version/5.0.4 Safari/533.20.27','YTo0OntzOjY6Il90b2tlbiI7czo0MDoibUFKQ09IODdMelBpdHVrZHZvaWtiWFpoYWFZczVsMEFydjhLRHhmYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTc6Imh0dHBzOi8vbWFpbC5jaGlyb24uYWUvcHJvZHVjdC1jYXRlZ29yeS8yL2ZhcS5odG1sP3BhZ2U9MSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NToic3RhdGUiO3M6NDA6IjlSS2w5NWpWOW1jMnVSQmxXRm9CSWxBdTIwZlI5ZkNyWlRydmhNR0siO30=',1667629818),('QA9jfo5I8i1Sox0k9BQE8zPbT3Fej4j31Vhtjwa5',NULL,'153.92.7.201','Go-http-client/2.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoieHVXckptblZkVW1BVll4dUdSdDJKZEc3dXBockVlMTNHdFE4SFhoYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTc6Imh0dHBzOi8vY2hpcm9uLmFlIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1667635301),('sqwrH6IwJfoYqQg1gsA6AOQU1L5COpHK5fZTiKsH',NULL,'153.92.7.201','Go-http-client/2.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiYm1YMlZBdWlhNUlSYUlaSTZNY3pBSG5RdWFqd21leTJIc0dXb1ZkcCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTc6Imh0dHBzOi8vY2hpcm9uLmFlIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1667633487),('te2y9erWXNnTQ3kmEKbgSPFQ2qtwVBJtxvFLsCeu',NULL,'153.92.7.201','Go-http-client/2.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiNWluZ2VVbHowTEQyWklxWDllb0tvODM3RGhYWXIxVEhsS1VHUnI4SyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTc6Imh0dHBzOi8vY2hpcm9uLmFlIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1667637111),('tLhK6vZHDZfsLUOqgZLPptfjIc1NImAC35Rby39J',NULL,'153.92.7.201','Go-http-client/2.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiT0F6ZHV5NFVPenl1QUN6cm5EMk9ZYmlOMW5yNDRQRUNyeXNhblh2cyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTc6Imh0dHBzOi8vY2hpcm9uLmFlIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1667626283),('TXWzOJdP6to8bhOqqfRavMS1vtxkGwvnE75KCHD2',NULL,'3.236.131.224','Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/533.20.25 (KHTML, like Gecko) Version/5.0.4 Safari/533.20.27','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiRklDZEJrNEZzc0lrek9rbjRrbVNxSVpBMm14cGZab3pqb0R4OTVnNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTc6Imh0dHBzOi8vbWFpbC5jaGlyb24uYWUvcHJvZHVjdC1jYXRlZ29yeS8yL2ZhcS5odG1sP3BhZ2U9MSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NToic3RhdGUiO3M6NDA6ImRXWXhka0E3SjJOOU8zSUh1WERMQ3MzYXlCRGtNRGZ3bVNGcXB2TXEiO30=',1667627174),('VOakUne2GOThRkHvvHtuHSgnn8L9sXIGMYURbD5q',NULL,'153.92.7.201','Go-http-client/2.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiSWI3R1lkcWVieHYySU5kYVFiWm9TQVRNOWlRS2dDOXh2UlNJVDI3eSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTc6Imh0dHBzOi8vY2hpcm9uLmFlIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1667629880),('WSzaeaouQdWAN1Zy2O1X8b9EY7rzwCnpTpelprYt',NULL,'44.201.10.41','Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/533.20.25 (KHTML, like Gecko) Version/5.0.4 Safari/533.20.27','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiS2x2aUd3NFdwck14YkRzNm5vUUVrQ2dMZElnYXFvYktkNFhFMjJDQSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTY6Imh0dHBzOi8vd3d3LmNoaXJvbi5hZS9wcm9kdWN0LWNhdGVnb3J5LzIvZmFxLmh0bWw/cGFnZT0xIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1OiJzdGF0ZSI7czo0MDoiaXVPS0x2V1RmM1hmdlpYb01IVGlUV2dDVktQYnVvT1lTb2tYcTBBZyI7fQ==',1667629124);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_medias`
--

DROP TABLE IF EXISTS `social_medias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `social_medias` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_medias`
--

LOCK TABLES `social_medias` WRITE;
/*!40000 ALTER TABLE `social_medias` DISABLE KEYS */;
INSERT INTO `social_medias` (`id`, `name`, `link`, `status`, `created_at`, `updated_at`) VALUES (1,'facebook','',1,NULL,NULL),(2,'instagram','',1,NULL,NULL),(3,'linkedin','',1,NULL,NULL),(4,'youtube','',1,NULL,NULL),(5,'twitter','',1,NULL,NULL);
/*!40000 ALTER TABLE `social_medias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `soft_credentials`
--

DROP TABLE IF EXISTS `soft_credentials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `soft_credentials` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `soft_credentials`
--

LOCK TABLES `soft_credentials` WRITE;
/*!40000 ALTER TABLE `soft_credentials` DISABLE KEYS */;
/*!40000 ALTER TABLE `soft_credentials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_slots`
--

DROP TABLE IF EXISTS `time_slots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `time_slots` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_slots`
--

LOCK TABLES `time_slots` WRITE;
/*!40000 ALTER TABLE `time_slots` DISABLE KEYS */;
INSERT INTO `time_slots` (`id`, `start_time`, `end_time`, `status`, `created_at`, `updated_at`, `date`) VALUES (1,'10:30:00','19:30:00',1,'2021-04-22 04:08:15','2021-04-22 04:08:15','2021-04-22'),(2,'01:37:00','11:00:00',1,'2021-04-22 04:08:33','2021-05-08 04:41:24','2021-05-08'),(3,'09:50:00','23:30:00',1,'2021-04-22 04:08:55','2021-07-01 04:34:39','2021-04-26');
/*!40000 ALTER TABLE `time_slots` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `track_deliverymen`
--

DROP TABLE IF EXISTS `track_deliverymen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `track_deliverymen` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) DEFAULT NULL,
  `delivery_man_id` bigint(20) DEFAULT NULL,
  `longitude` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `track_deliverymen`
--

LOCK TABLES `track_deliverymen` WRITE;
/*!40000 ALTER TABLE `track_deliverymen` DISABLE KEYS */;
/*!40000 ALTER TABLE `track_deliverymen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translations`
--

DROP TABLE IF EXISTS `translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `translations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `translationable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `translationable_id` bigint(20) unsigned NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `translations_translationable_id_index` (`translationable_id`),
  KEY `translations_locale_index` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translations`
--

LOCK TABLES `translations` WRITE;
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;
INSERT INTO `translations` (`id`, `translationable_type`, `translationable_id`, `locale`, `key`, `value`) VALUES (1,'App\\Model\\Product',1,'af','description','<p><br></p>'),(2,'App\\Model\\Product',2,'af','description','<p><br></p>'),(3,'App\\Model\\Product',3,'af','description','<p><br></p>'),(4,'App\\Model\\Product',4,'af','description','<p><br></p>'),(5,'App\\Model\\Product',5,'af','description','<p><br></p>'),(6,'App\\Model\\Product',6,'af','description','<p><br></p>'),(7,'App\\Model\\Product',7,'af','description','<p><br></p>'),(8,'App\\Model\\Product',8,'af','description','<p><br></p>'),(9,'App\\Model\\Product',9,'af','description','<p><br></p>');
/*!40000 ALTER TABLE `translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `f_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `l_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_phone_verified` tinyint(1) NOT NULL DEFAULT 0,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `email_verification_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cm_firebase_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `temporary_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `f_name`, `l_name`, `email`, `image`, `is_phone_verified`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `email_verification_token`, `phone`, `cm_firebase_token`, `temporary_token`) VALUES (1,'Adeel','Ashraf','adeel@gmail.com','2022-06-14-62a983a6e3185.png',0,NULL,'$2y$10$2YSrXrvUtNIAozl8k/sSh.SshoGAdGkvcabOmHXo4QLBeMJyhDDpW',NULL,'2022-06-14 19:56:16','2022-09-05 18:02:16',NULL,'+923137388266','eU454ICmSOKBRdw8aOJEec:APA91bG9UoFVSGq5TM-ON3n8l0T9EcjOn9cbeNG40LurheXzRqWgg9BWsUCNlNKPpxjPnOwN_TuTHUz81gOTQJCjCWYKu1pjidUvcZMNMZY544ZhlYyFGzQkst47hQkDsagPDDY4o6RI','GyURN2Wi21gVjk2gs2BqFxGRAwRRnk0Eg1GkyBO0'),(2,'Tehreem','Hayat','tehreem.hayat@gmail.com',NULL,0,NULL,'$2y$10$EXw98GMog55Q5YxxIevCReKpJhtD3N1XJzQgn1VgNERGX11Fe4Lp6',NULL,'2022-06-16 22:47:57','2022-11-01 17:24:44',NULL,'+971568455575','eU454ICmSOKBRdw8aOJEec:APA91bG9UoFVSGq5TM-ON3n8l0T9EcjOn9cbeNG40LurheXzRqWgg9BWsUCNlNKPpxjPnOwN_TuTHUz81gOTQJCjCWYKu1pjidUvcZMNMZY544ZhlYyFGzQkst47hQkDsagPDDY4o6RI','2dm2p6YkBLY3yipXr4k10RJn6Hxrb5UeeQ2YXItx'),(3,'Ahsan','Zia','itflicker786@gmail.com',NULL,0,NULL,'$2y$10$ZGR.3sYPTtisy6KEXEQfeOG8rt5HVe3Q9MOOMnmXudKkSXh0/l/2O',NULL,'2022-06-19 22:17:39','2022-06-19 22:17:39',NULL,'+923244162387','fkdDE-4QSF650mBCNo9Yhi:APA91bFpEL5lZqOf-Zb63KwWr9igdOHwGrMpplivbBOzCvxOQfnP10MQAQozphng6CNx1Of_GDtrSBpFULb_LsfBxpzLsYBubi2_yH2rUGMHUTEK_85uvi9RYuFBbOE-4C1V0e_vmEnB',NULL),(4,'ash','shah','xclusiveshah@gmail.com',NULL,0,NULL,'$2y$10$W5SXCnM.lX/EpXQX/YVjHuR8p974I/eXyf1E7Dmy8Wy9HvpHWzpeq',NULL,'2022-08-03 21:40:43','2022-08-20 02:17:10',NULL,'+971525500616',NULL,'RKQnhu1gd48s8yJ0PjNKwQerkk0vBBdMu62jlyq3'),(5,'Omer','Omy','support@chirontechlabs.com',NULL,0,NULL,'$2y$10$retOQTCpm97wjRGPGEMmIO5bTgw6Xf5XNinohrBHMqkA8IK9dQaMq',NULL,'2022-08-04 01:48:52','2022-08-04 01:48:52',NULL,'+971521097140',NULL,NULL),(6,'Muhammad','Aslam','muhaffan945@gmail.com',NULL,0,NULL,'$2y$10$ENa6hBFUpMJAxuJ7P6mdcOpQtOYETibjIJMv3J8YDHtivQqqDH05i',NULL,'2022-08-22 13:31:17','2022-08-22 13:31:17',NULL,NULL,NULL,NULL),(7,'khader','mahamed','suuqbacad13@hotmail.com',NULL,0,NULL,'$2y$10$peB2lXK12.PQQEa7Y/b7Bed1cIzi9X3d6xk9vEnLqTsNYZv1EWPvm',NULL,'2022-08-26 10:17:16','2022-08-26 10:18:12',NULL,'+320465963419',NULL,'4jAtSJpvA2igOl30UoPuJl5l1oZ2boYAeCnpzHsN'),(8,'azib','butt','azibbutt4@gmail.com',NULL,0,NULL,'$2y$10$G1J1TpekasbB5vUS/QKsO.73FJZHY8oG1yZN1fjxy85b6GVwM1yLq',NULL,'2022-09-03 00:34:33','2022-09-03 00:34:33',NULL,'+971504308921',NULL,NULL),(9,'Aleem','Hayat','aleemjee772@gmail.com',NULL,0,NULL,'$2y$10$E5YrgsWFtmV.pTuwMSDBEuPRMmEOvDBQ/WgKXT.oslToJorrzOyme',NULL,'2022-09-22 10:02:36','2022-09-22 10:02:36',NULL,'+9710501686813',NULL,NULL),(10,'abc','xyz','abcxyz@gmail.com',NULL,0,NULL,'$2y$10$aH3lIHmaJ9kmdM.O2ZXq6.8JBX4E3A.YBRLU4ngWILJtGShypJCC.',NULL,'2022-10-04 17:12:14','2022-10-04 17:12:14',NULL,'+971501696925','ePKUJxfwQlON8_snxpuC4W:APA91bFVbJ0qZKDO29r6vjgOTrm-SBoMZsSe22IzzM6IsydmB_s6-gW_Hx2fmghFk43MAuK-HY8PU6-WmtWxXVQ9IMkNYBJ1YQkfrElh0xGmd5vfGe1ZJ_Tbr3ARJ_5zGdaQ9-Hqjubu',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wishlists`
--

DROP TABLE IF EXISTS `wishlists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wishlists` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wishlists`
--

LOCK TABLES `wishlists` WRITE;
/*!40000 ALTER TABLE `wishlists` DISABLE KEYS */;
/*!40000 ALTER TABLE `wishlists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'chironae_glover'
--

--
-- Dumping routines for database 'chironae_glover'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-05  8:47:10
