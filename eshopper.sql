-- MySQL dump 10.13  Distrib 5.7.29, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: eshopper
-- ------------------------------------------------------
-- Server version	5.7.29-0ubuntu0.18.04.1

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
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `products_id` int(11) NOT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_color` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `user_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (11,27,'2019 New Toyota Highlander XLE V6','SKU-Hilander1','White','Size Red',20.00,10,'weshare@gmail.com','z4S5gsL5QvjOhpus3otvYbt6baCf9DTP89iMbRK6','2020-02-11 10:27:51','2020-02-11 10:27:51');
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (12,0,'Car','Car Category','http://wornnarith.cambosoft.com',1,NULL,'2018-10-22 21:32:33','2018-11-16 02:00:00'),(10,0,'House','House Category','http://wornnarith.cambosoft.com',1,NULL,'2018-10-22 21:31:29','2018-11-16 02:05:53'),(11,0,'Shoes','Shoes Category','http://wornnarith.cambosoft.com',1,NULL,'2018-10-22 21:32:14','2018-11-16 02:07:15'),(13,0,'Computer','Computer Category','http://wornnarith.cambosoft.com',1,NULL,'2018-10-22 21:33:26','2018-11-16 02:05:43'),(14,0,'Cloths','Cloths Category','http://wornnarith.cambosoft.com',1,NULL,'2018-10-22 21:34:31','2018-11-16 02:05:18'),(15,12,'Toyota','Toyota Sub Category of Car','http://wornnarith.cambosoft.com',1,NULL,'2018-10-22 21:35:08','2018-11-16 01:54:49'),(16,10,'Link House','Link House Sub Category','http://wornnarith.cambosoft.com',1,NULL,'2018-10-22 21:56:56','2018-11-16 02:07:05'),(17,11,'Man Shoes','Man Shoes Sub Category of Shoes','http://wornnarith.cambosoft.com',1,NULL,'2018-10-22 21:58:13','2018-11-16 01:53:44'),(25,0,'Mobile',NULL,'http://127.0.0.1:8000/admin/category/create',1,NULL,'2020-02-09 09:57:46','2020-02-09 09:57:46');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `countries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `country_code` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=298 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (2,'AL','Albania',NULL,NULL),(3,'DZ','Algeria',NULL,NULL),(4,'DS','American Samoa',NULL,NULL),(5,'AD','Andorra',NULL,NULL),(6,'AO','Angola',NULL,NULL),(7,'AI','Anguilla',NULL,NULL),(8,'AQ','Antarctica',NULL,NULL),(9,'AG','Antigua and Barbuda',NULL,NULL),(10,'AR','Argentina',NULL,NULL),(11,'AM','Armenia',NULL,NULL),(12,'AW','Aruba',NULL,NULL),(13,'AU','Australia',NULL,NULL),(14,'AT','Austria',NULL,NULL),(15,'AZ','Azerbaijan',NULL,NULL),(16,'BS','Bahamas',NULL,NULL),(17,'BH','Bahrain',NULL,NULL),(18,'BD','Bangladesh',NULL,NULL),(19,'BB','Barbados',NULL,NULL),(20,'BY','Belarus',NULL,NULL),(21,'BE','Belgium',NULL,NULL),(22,'BZ','Belize',NULL,NULL),(23,'BJ','Benin',NULL,NULL),(24,'BM','Bermuda',NULL,NULL),(25,'BT','Bhutan',NULL,NULL),(26,'BO','Bolivia',NULL,NULL),(27,'BA','Bosnia and Herzegovina',NULL,NULL),(28,'BW','Botswana',NULL,NULL),(29,'BV','Bouvet Island',NULL,NULL),(30,'BR','Brazil',NULL,NULL),(31,'IO','British Indian Ocean Territory',NULL,NULL),(32,'BN','Brunei Darussalam',NULL,NULL),(33,'BG','Bulgaria',NULL,NULL),(34,'BF','Burkina Faso',NULL,NULL),(35,'BI','Burundi',NULL,NULL),(36,'KH','Cambodia',NULL,NULL),(37,'CM','Cameroon',NULL,NULL),(38,'CA','Canada',NULL,NULL),(39,'CV','Cape Verde',NULL,NULL),(40,'KY','Cayman Islands',NULL,NULL),(41,'CF','Central African Republic',NULL,NULL),(42,'TD','Chad',NULL,NULL),(43,'CL','Chile',NULL,NULL),(44,'CN','China',NULL,NULL),(45,'CX','Christmas Island',NULL,NULL),(46,'CC','Cocos (Keeling) Islands',NULL,NULL),(47,'CO','Colombia',NULL,NULL),(48,'KM','Comoros',NULL,NULL),(49,'CG','Congo',NULL,NULL),(50,'CK','Cook Islands',NULL,NULL),(51,'CR','Costa Rica',NULL,NULL),(52,'AF','Afghanistan',NULL,NULL),(53,'AL','Albania',NULL,NULL),(54,'DZ','Algeria',NULL,NULL),(55,'DS','American Samoa',NULL,NULL),(56,'AD','Andorra',NULL,NULL),(57,'AO','Angola',NULL,NULL),(58,'AI','Anguilla',NULL,NULL),(59,'AQ','Antarctica',NULL,NULL),(60,'AG','Antigua and Barbuda',NULL,NULL),(61,'AR','Argentina',NULL,NULL),(62,'AM','Armenia',NULL,NULL),(63,'AW','Aruba',NULL,NULL),(64,'AU','Australia',NULL,NULL),(65,'AT','Austria',NULL,NULL),(66,'AZ','Azerbaijan',NULL,NULL),(67,'BS','Bahamas',NULL,NULL),(68,'BH','Bahrain',NULL,NULL),(69,'BD','Bangladesh',NULL,NULL),(70,'BB','Barbados',NULL,NULL),(71,'BY','Belarus',NULL,NULL),(72,'BE','Belgium',NULL,NULL),(73,'BZ','Belize',NULL,NULL),(74,'BJ','Benin',NULL,NULL),(75,'BM','Bermuda',NULL,NULL),(76,'BT','Bhutan',NULL,NULL),(77,'BO','Bolivia',NULL,NULL),(78,'BA','Bosnia and Herzegovina',NULL,NULL),(79,'BW','Botswana',NULL,NULL),(80,'BV','Bouvet Island',NULL,NULL),(81,'BR','Brazil',NULL,NULL),(82,'IO','British Indian Ocean Territory',NULL,NULL),(83,'BN','Brunei Darussalam',NULL,NULL),(84,'BG','Bulgaria',NULL,NULL),(85,'BF','Burkina Faso',NULL,NULL),(86,'BI','Burundi',NULL,NULL),(87,'KH','Cambodia',NULL,NULL),(88,'CM','Cameroon',NULL,NULL),(89,'CA','Canada',NULL,NULL),(90,'CV','Cape Verde',NULL,NULL),(91,'KY','Cayman Islands',NULL,NULL),(92,'CF','Central African Republic',NULL,NULL),(93,'TD','Chad',NULL,NULL),(94,'CL','Chile',NULL,NULL),(95,'CN','China',NULL,NULL),(96,'CX','Christmas Island',NULL,NULL),(97,'CC','Cocos (Keeling) Islands',NULL,NULL),(98,'CO','Colombia',NULL,NULL),(99,'KM','Comoros',NULL,NULL),(100,'CG','Congo',NULL,NULL),(101,'CK','Cook Islands',NULL,NULL),(102,'CR','Costa Rica',NULL,NULL),(103,'HR','Croatia (Hrvatska)',NULL,NULL),(104,'CU','Cuba',NULL,NULL),(105,'CY','Cyprus',NULL,NULL),(106,'CZ','Czech Republic',NULL,NULL),(107,'DK','Denmark',NULL,NULL),(108,'DJ','Djibouti',NULL,NULL),(109,'DM','Dominica',NULL,NULL),(110,'DO','Dominican Republic',NULL,NULL),(111,'TP','East Timor',NULL,NULL),(112,'EC','Ecuador',NULL,NULL),(113,'EG','Egypt',NULL,NULL),(114,'SV','El Salvador',NULL,NULL),(115,'GQ','Equatorial Guinea',NULL,NULL),(116,'ER','Eritrea',NULL,NULL),(117,'EE','Estonia',NULL,NULL),(118,'ET','Ethiopia',NULL,NULL),(119,'FK','Falkland Islands (Malvinas)',NULL,NULL),(120,'FO','Faroe Islands',NULL,NULL),(121,'FJ','Fiji',NULL,NULL),(122,'FI','Finland',NULL,NULL),(123,'FR','France',NULL,NULL),(124,'FX','France, Metropolitan',NULL,NULL),(125,'GF','French Guiana',NULL,NULL),(126,'PF','French Polynesia',NULL,NULL),(127,'TF','French Southern Territories',NULL,NULL),(128,'GA','Gabon',NULL,NULL),(129,'GM','Gambia',NULL,NULL),(130,'GE','Georgia',NULL,NULL),(131,'DE','Germany',NULL,NULL),(132,'GH','Ghana',NULL,NULL),(133,'GI','Gibraltar',NULL,NULL),(134,'GK','Guernsey',NULL,NULL),(135,'GR','Greece',NULL,NULL),(136,'GL','Greenland',NULL,NULL),(137,'GD','Grenada',NULL,NULL),(138,'GP','Guadeloupe',NULL,NULL),(139,'GU','Guam',NULL,NULL),(140,'GT','Guatemala',NULL,NULL),(141,'GN','Guinea',NULL,NULL),(142,'GW','Guinea-Bissau',NULL,NULL),(143,'GY','Guyana',NULL,NULL),(144,'HT','Haiti',NULL,NULL),(145,'HM','Heard and Mc Donald Islands',NULL,NULL),(146,'HN','Honduras',NULL,NULL),(147,'HK','Hong Kong',NULL,NULL),(148,'HU','Hungary',NULL,NULL),(149,'IS','Iceland',NULL,NULL),(150,'IN','India',NULL,NULL),(151,'IM','Isle of Man',NULL,NULL),(152,'ID','Indonesia',NULL,NULL),(153,'IR','Iran (Islamic Republic of)',NULL,NULL),(154,'IQ','Iraq',NULL,NULL),(155,'IE','Ireland',NULL,NULL),(156,'IL','Israel',NULL,NULL),(157,'IT','Italy',NULL,NULL),(158,'CI','Ivory Coast',NULL,NULL),(159,'JE','Jersey',NULL,NULL),(160,'JM','Jamaica',NULL,NULL),(161,'JP','Japan',NULL,NULL),(162,'JO','Jordan',NULL,NULL),(163,'KZ','Kazakhstan',NULL,NULL),(164,'KE','Kenya',NULL,NULL),(165,'KI','Kiribati',NULL,NULL),(166,'KP','Korea, Democratic People\'s Republic of',NULL,NULL),(167,'KR','Korea, Republic of',NULL,NULL),(168,'XK','Kosovo',NULL,NULL),(169,'KW','Kuwait',NULL,NULL),(170,'KG','Kyrgyzstan',NULL,NULL),(171,'LA','Lao People\'s Democratic Republic',NULL,NULL),(172,'LV','Latvia',NULL,NULL),(173,'LB','Lebanon',NULL,NULL),(174,'LS','Lesotho',NULL,NULL),(175,'LR','Liberia',NULL,NULL),(176,'LY','Libyan Arab Jamahiriya',NULL,NULL),(177,'LI','Liechtenstein',NULL,NULL),(178,'LT','Lithuania',NULL,NULL),(179,'LU','Luxembourg',NULL,NULL),(180,'MO','Macau',NULL,NULL),(181,'MK','Macedonia',NULL,NULL),(182,'MG','Madagascar',NULL,NULL),(183,'MW','Malawi',NULL,NULL),(184,'MY','Malaysia',NULL,NULL),(185,'MV','Maldives',NULL,NULL),(186,'ML','Mali',NULL,NULL),(187,'MT','Malta',NULL,NULL),(188,'MH','Marshall Islands',NULL,NULL),(189,'MQ','Martinique',NULL,NULL),(190,'MR','Mauritania',NULL,NULL),(191,'MU','Mauritius',NULL,NULL),(192,'TY','Mayotte',NULL,NULL),(193,'MX','Mexico',NULL,NULL),(194,'FM','Micronesia, Federated States of',NULL,NULL),(195,'MD','Moldova, Republic of',NULL,NULL),(196,'MC','Monaco',NULL,NULL),(197,'MN','Mongolia',NULL,NULL),(198,'ME','Montenegro',NULL,NULL),(199,'MS','Montserrat',NULL,NULL),(200,'MA','Morocco',NULL,NULL),(201,'MZ','Mozambique',NULL,NULL),(202,'MM','Myanmar',NULL,NULL),(203,'NA','Namibia',NULL,NULL),(204,'NR','Nauru',NULL,NULL),(205,'NP','Nepal',NULL,NULL),(206,'NL','Netherlands',NULL,NULL),(207,'AN','Netherlands Antilles',NULL,NULL),(208,'NC','New Caledonia',NULL,NULL),(209,'NZ','New Zealand',NULL,NULL),(210,'NI','Nicaragua',NULL,NULL),(211,'NE','Niger',NULL,NULL),(212,'NG','Nigeria',NULL,NULL),(213,'NU','Niue',NULL,NULL),(214,'NF','Norfolk Island',NULL,NULL),(215,'MP','Northern Mariana Islands',NULL,NULL),(216,'NO','Norway',NULL,NULL),(217,'OM','Oman',NULL,NULL),(218,'PK','Pakistan',NULL,NULL),(219,'PW','Palau',NULL,NULL),(220,'PS','Palestine',NULL,NULL),(221,'PA','Panama',NULL,NULL),(222,'PG','Papua New Guinea',NULL,NULL),(223,'PY','Paraguay',NULL,NULL),(224,'PE','Peru',NULL,NULL),(225,'PH','Philippines',NULL,NULL),(226,'PN','Pitcairn',NULL,NULL),(227,'PL','Poland',NULL,NULL),(228,'PT','Portugal',NULL,NULL),(229,'PR','Puerto Rico',NULL,NULL),(230,'QA','Qatar',NULL,NULL),(231,'RE','Reunion',NULL,NULL),(232,'RO','Romania',NULL,NULL),(233,'RU','Russian Federation',NULL,NULL),(234,'RW','Rwanda',NULL,NULL),(235,'KN','Saint Kitts and Nevis',NULL,NULL),(236,'LC','Saint Lucia',NULL,NULL),(237,'VC','Saint Vincent and the Grenadines',NULL,NULL),(238,'WS','Samoa',NULL,NULL),(239,'SM','San Marino',NULL,NULL),(240,'ST','Sao Tome and Principe',NULL,NULL),(241,'SA','Saudi Arabia',NULL,NULL),(242,'SN','Senegal',NULL,NULL),(243,'RS','Serbia',NULL,NULL),(244,'SC','Seychelles',NULL,NULL),(245,'SL','Sierra Leone',NULL,NULL),(246,'SG','Singapore',NULL,NULL),(247,'SK','Slovakia',NULL,NULL),(248,'SI','Slovenia',NULL,NULL),(249,'SB','Solomon Islands',NULL,NULL),(250,'SO','Somalia',NULL,NULL),(251,'ZA','South Africa',NULL,NULL),(252,'GS','South Georgia South Sandwich Islands',NULL,NULL),(253,'SS','South Sudan',NULL,NULL),(254,'ES','Spain',NULL,NULL),(255,'LK','Sri Lanka',NULL,NULL),(256,'SH','St. Helena',NULL,NULL),(257,'PM','St. Pierre and Miquelon',NULL,NULL),(258,'SD','Sudan',NULL,NULL),(259,'SR','Suriname',NULL,NULL),(260,'SJ','Svalbard and Jan Mayen Islands',NULL,NULL),(261,'SZ','Swaziland',NULL,NULL),(262,'SE','Sweden',NULL,NULL),(263,'CH','Switzerland',NULL,NULL),(264,'SY','Syrian Arab Republic',NULL,NULL),(265,'TW','Taiwan',NULL,NULL),(266,'TJ','Tajikistan',NULL,NULL),(267,'TZ','Tanzania, United Republic of',NULL,NULL),(268,'TH','Thailand',NULL,NULL),(269,'TG','Togo',NULL,NULL),(270,'TK','Tokelau',NULL,NULL),(271,'TO','Tonga',NULL,NULL),(272,'TT','Trinidad and Tobago',NULL,NULL),(273,'TN','Tunisia',NULL,NULL),(274,'TR','Turkey',NULL,NULL),(275,'TM','Turkmenistan',NULL,NULL),(276,'TC','Turks and Caicos Islands',NULL,NULL),(277,'TV','Tuvalu',NULL,NULL),(278,'UG','Uganda',NULL,NULL),(279,'UA','Ukraine',NULL,NULL),(280,'AE','United Arab Emirates',NULL,NULL),(281,'GB','United Kingdom',NULL,NULL),(282,'US','United States',NULL,NULL),(283,'UM','United States minor outlying islands',NULL,NULL),(284,'UY','Uruguay',NULL,NULL),(285,'UZ','Uzbekistan',NULL,NULL),(286,'VU','Vanuatu',NULL,NULL),(287,'VA','Vatican City State',NULL,NULL),(288,'VE','Venezuela',NULL,NULL),(289,'VN','Vietnam',NULL,NULL),(290,'VG','Virgin Islands (British)',NULL,NULL),(291,'VI','Virgin Islands (U.S.)',NULL,NULL),(292,'WF','Wallis and Futuna Islands',NULL,NULL),(293,'EH','Western Sahara',NULL,NULL),(294,'YE','Yemen',NULL,NULL),(295,'ZR','Zaire',NULL,NULL),(296,'ZM','Zambia',NULL,NULL),(297,'ZW','Zimbabwe',NULL,NULL);
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupons`
--

DROP TABLE IF EXISTS `coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coupons` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `coupon_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `amount_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiry_date` date NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupons`
--

LOCK TABLES `coupons` WRITE;
/*!40000 ALTER TABLE `coupons` DISABLE KEYS */;
INSERT INTO `coupons` VALUES (6,'Coupon001',10,'Percentage','2020-02-12',1,'2018-12-05 20:19:15','2019-12-23 12:54:57'),(7,'bite-me',10,'Percentage','2020-01-01',1,'2019-12-23 12:54:02','2019-12-23 12:54:02');
/*!40000 ALTER TABLE `coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_address`
--

DROP TABLE IF EXISTS `delivery_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_address` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `users_id` int(11) NOT NULL,
  `users_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pincode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_address`
--

LOCK TABLES `delivery_address` WRITE;
/*!40000 ALTER TABLE `delivery_address` DISABLE KEYS */;
INSERT INTO `delivery_address` VALUES (2,4,'weshare@gmail.com','weshare','address','city','state','Cambodia','pincode','mobile',NULL,NULL),(3,1,'demo@gmail.com','WeShare','123 Street','Phnom Penh','PP','Cambodia','12252','010313234',NULL,NULL),(4,6,'tonoy@admin.com','Habib Tonoy','232 1/b','Shewrapara','Dhaka','Bangladesh','2700','01629535307',NULL,NULL),(5,5,'admin@admin.com','Tanjed Atono','address','12','WA','Bangladesh','1213','01629535307',NULL,NULL),(6,11,'pranta@abc.com','pranta','232 1/b','Shewrapara','Dhaka','Bangladesh','2700','01629535307',NULL,NULL);
/*!40000 ALTER TABLE `delivery_address` ENABLE KEYS */;
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
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (3,'2014_10_12_000000_create_users_table',2),(2,'2014_10_12_100000_create_password_resets_table',1),(8,'2018_10_20_040609_create_categories_table',3),(9,'2018_10_24_075802_create_products_table',4),(10,'2018_11_08_024109_create_product_att_table',5),(11,'2018_11_20_055123_create_tblgallery_table',6),(12,'2018_11_26_070031_create_cart_table',7),(13,'2018_11_28_072535_create_coupons_table',8),(15,'2018_12_01_042342_create_countries_table',10),(20,'2018_12_03_043804_add_more_fields_to_users_table',14),(17,'2018_12_03_093548_create_delivery_address_table',12),(18,'2018_12_05_024718_create_orders_table',13),(21,'2019_12_28_174316_create_reviews_table',15),(22,'2020_01_19_173458_create_product_views_table',16);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `users_id` int(11) NOT NULL,
  `users_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pincode` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_charges` double(8,2) NOT NULL,
  `coupon_code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupon_amount` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_status` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `grand_total` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (7,1,'demo@gmail.com','WeShare','123 Street','Phnom Penh','PP','12252','Cambodia','010313234',0.00,'NO Coupon','0','success','Paypal','70','2018-12-06 18:20:18','2018-12-06 18:20:18'),(6,4,'weshare@gmail.com','weshare','address','city','state','pincode','Cambodia','mobile',0.00,'Coupon001','2','success','Paypal','18','2018-12-06 01:45:09','2018-12-06 01:45:09'),(8,6,'tonoy@admin.com','Habib Tonoy','232 1/b','Shewrapara','Dhaka','2700','Bangladesh','01629535307',0.00,'NO Coupon','0','success','COD','48','2019-12-23 13:51:01','2019-12-23 13:51:01'),(9,5,'admin@admin.com','Tanjed Atono','address','12','WA','1213','Bangladesh','01629535307',0.00,'NO Coupon','0','success','COD','12','2020-02-09 10:49:19','2020-02-09 10:49:19'),(10,5,'admin@admin.com','Tanjed Atono','address','12','WA','1213','Bangladesh','01629535307',0.00,'NO Coupon','0','success','COD','644','2020-02-09 10:50:58','2020-02-09 10:50:58'),(11,11,'pranta@abc.com','pranta','232 1/b','Shewrapara','Dhaka','2700','Bangladesh','01629535307',0.00,'NO Coupon','0','success','COD','33','2020-02-10 02:42:15','2020-02-10 02:42:15'),(12,5,'admin@admin.com','Tanjed Atono','address','12','WA','1213','Bangladesh','01629535307',0.00,'NO Coupon','0','success','Paypal','150','2020-02-11 10:24:45','2020-02-11 10:24:45'),(13,5,'admin@admin.com','Tanjed Atono','address','12','WA','1213','Bangladesh','01629535307',0.00,'NO Coupon','0','success','COD','150','2020-02-11 10:25:22','2020-02-11 10:25:22');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_att`
--

DROP TABLE IF EXISTS `product_att`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_att` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `products_id` int(11) NOT NULL,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_att`
--

LOCK TABLES `product_att` WRITE;
/*!40000 ALTER TABLE `product_att` DISABLE KEYS */;
INSERT INTO `product_att` VALUES (14,34,'SKU-Lenovo X1','15 inch',10.00,2,'2018-12-05 20:08:43','2018-12-05 20:08:43'),(13,35,'SKU-Red','S',2.00,5,'2018-12-05 20:08:08','2018-12-05 20:08:08'),(12,35,'SKU-White','L',6.00,2,'2018-12-05 20:07:42','2018-12-05 20:07:42'),(11,35,'SKU-Black','M',5.00,10,'2018-12-05 20:07:11','2018-12-05 20:07:11'),(15,34,'SKU-Carbon','14 inch',4.00,5,'2018-12-05 20:09:05','2018-12-05 20:09:05'),(16,33,'SKU-Haan1','25',12.00,3,'2018-12-05 20:09:45','2018-12-05 20:09:45'),(17,33,'SKU-Haan2','22',10.00,1,'2018-12-05 20:09:58','2018-12-05 20:09:58'),(18,33,'SKU-Haan3','19',2.00,3,'2018-12-05 20:10:16','2018-12-05 20:10:16'),(19,32,'SKU-Vionic1','20',10.00,5,'2018-12-05 20:11:02','2018-12-05 20:11:02'),(20,32,'SKU-Vionic2','20',15.00,4,'2018-12-05 20:11:24','2018-12-05 20:11:24'),(21,32,'SKU-Vionic3','30',20.00,1,'2018-12-05 20:11:38','2018-12-05 20:11:38'),(22,31,'SKU-House1','5*20',25.00,4,'2018-12-05 20:12:13','2018-12-05 20:12:13'),(23,31,'SKU-House2','10*10',20.00,2,'2018-12-05 20:12:30','2018-12-05 20:12:30'),(24,31,'SKU-House3','20*20',20.00,5,'2018-12-05 20:12:46','2018-12-05 20:12:46'),(25,30,'SKU-Link House1','Small',10.00,5,'2018-12-05 20:13:06','2018-12-05 20:13:06'),(26,30,'SKU-House2','Medium',15.00,23,'2018-12-05 20:13:23','2018-12-05 20:13:23'),(27,30,'SKU-House3','Large',5.00,2,'2018-12-05 20:14:55','2018-12-05 20:14:55'),(28,29,'SKU-Prius1','One Size',12.00,2,'2018-12-05 20:15:43','2018-12-05 20:15:43'),(29,28,'SKU-Lexus Red','Size Red',12.00,12,'2018-12-05 20:16:28','2018-12-05 20:16:28'),(30,28,'SKU-Lexus2','Size Black',11.00,22,'2018-12-05 20:16:48','2018-12-05 20:16:48'),(31,28,'SKU-Lexus3','Size White',12.00,2,'2018-12-05 20:17:02','2018-12-05 20:17:02'),(32,27,'SKU-Hilander','Size Black',50.00,10,'2018-12-05 20:17:35','2018-12-05 20:17:35'),(33,27,'SKU-Hilander1','Size White',20.00,10,'2018-12-05 20:17:46','2018-12-05 20:17:46'),(34,27,'SKU-Hilande3','Size Red',20.00,10,'2018-12-05 20:18:01','2018-12-05 20:18:01');
/*!40000 ALTER TABLE `product_att` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_views`
--

DROP TABLE IF EXISTS `product_views`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_views` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) unsigned NOT NULL,
  `hit` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_views`
--

LOCK TABLES `product_views` WRITE;
/*!40000 ALTER TABLE `product_views` DISABLE KEYS */;
INSERT INTO `product_views` VALUES (1,31,2,'2020-01-19 11:55:36','2020-02-11 10:55:04'),(2,28,5,'2020-01-19 12:14:31','2020-02-11 10:54:50'),(3,27,4,'2020-01-19 12:18:54','2020-02-11 10:27:51'),(4,32,2,'2020-01-19 12:51:46','2020-02-11 10:23:54'),(5,29,8,'2020-02-05 03:17:25','2020-02-11 10:55:50'),(6,33,1,'2020-02-05 03:44:38','2020-02-11 10:26:11'),(7,30,2,'2020-02-05 03:48:30','2020-02-10 02:33:11'),(8,35,0,'2020-02-09 11:09:07','2020-02-09 11:12:41'),(9,34,2,'2020-02-11 10:24:04','2020-02-11 10:24:09');
/*!40000 ALTER TABLE `product_views` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `categories_id` int(11) NOT NULL,
  `p_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `p_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `p_color` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (28,15,'Lexus Rx 330','12152','White','EXCELLENT SAFETY FOR YOUR FAMILY<br>Child Safety Locks, Electronic Stability Control, Brake Assist, 4-Wheel ABS, Tire Pressure Monitoring System, 4-Wheel Disc Brakes Safety equipment includes Child Safety Locks',15.00,'1544063712-lexus-rx-330.jpg','2018-12-05 19:35:12','2018-12-05 19:43:48'),(27,15,'2019 New Toyota Highlander XLE V6','XLE V6 FWD','White','Sunroof, Heated Leather Seats, NAV, 3rd Row Seat, Alloy Wheels, Quad Seats, Rear Air, Power Liftgate. XLE trim. Warranty 5 yrs/60k Miles - Drivetrain Warranty; AND MORE!',20.00,'1544063425-2019-new-toyota-highlander-xle-v6.jpg','2018-12-05 19:30:25','2018-12-05 19:43:57'),(29,12,'2018 Toyota Prius','1252','Red','VEHICLE FEATURES<br>Rear Spoiler, MP3 Player, Remote Trunk Release, Keyless Entry, Privacy Glass.&nbsp;',5.00,'1544063924-2018-toyota-prius.jpg','2018-12-05 19:38:44','2018-12-05 19:43:38'),(30,16,'Link House New LC2','L_1252','Gray','Borey Peng Huoth Cambodia',10.00,'1544064142-link-house-new-lc2.jpg','2018-12-05 19:42:22','2018-12-05 19:42:22'),(31,10,'House','5214','White and Brown','House For Sale',10.00,'1544064430-house.jpg','2018-12-05 19:47:10','2018-12-05 19:47:10'),(32,11,'Vionic Shoes Brand','5265','All Colors','Women Shoes',12.00,'1544064607-vionic-shoes-brand.jpg','2018-12-05 19:50:07','2018-12-05 19:50:07'),(33,17,'Cole Haan','KHR 775659.29','Brown','Men\'s Original Grand Wingtip Oxfords',5.00,'1544064903-cole-haan.jpg','2018-12-05 19:55:03','2018-12-05 19:55:03'),(34,13,'Lenovo ThinkPad','1252','Black','Lenovo Thinkpad From China',2.00,'1544065331-lenovo-thinkpad.jpg','2018-12-05 20:02:12','2018-12-05 20:02:12'),(35,14,'Cloths','The Man','Black','Cloths Description here',2.00,'1544065493-cloths.png','2018-12-05 20:04:54','2018-12-05 20:04:54');
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
  `product_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `review` text COLLATE utf8mb4_unicode_ci,
  `ratting` int(11) NOT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES (1,28,5,'This is a review',4,'2019-12-28','2019-12-28 12:53:00','2019-12-28 12:53:00'),(2,28,5,'Another Review is being posted.',3,'2019-12-28','2019-12-28 12:54:54','2019-12-28 12:54:54'),(3,28,5,'dthrtthr6',4,'2019-12-28','2019-12-28 12:58:02','2019-12-28 12:58:02'),(4,28,5,'Here is another Review. posted on test purpose',2,'2019-12-28','2019-12-28 13:49:16','2019-12-28 13:49:16'),(5,28,5,NULL,5,'2019-12-28','2019-12-28 13:57:42','2019-12-28 13:57:42'),(6,27,5,'This is amazing',5,'2020-02-05','2020-02-05 03:16:18','2020-02-05 03:16:18'),(7,27,9,'This is nice',5,'2020-02-05','2020-02-05 03:57:04','2020-02-05 03:57:04'),(8,27,9,'gfyufyufyufyu',1,'2020-02-05','2020-02-05 03:57:30','2020-02-05 03:57:30'),(9,30,5,NULL,5,'2020-02-09','2020-02-09 09:13:28','2020-02-09 09:13:28'),(10,27,5,NULL,1,'2020-02-09','2020-02-09 09:45:53','2020-02-09 09:45:53'),(11,27,5,NULL,1,'2020-02-09','2020-02-09 09:46:11','2020-02-09 09:46:11'),(12,27,5,NULL,3,'2020-02-09','2020-02-09 09:46:24','2020-02-09 09:46:24'),(13,29,5,NULL,5,'2020-02-09','2020-02-09 09:52:40','2020-02-09 09:52:40'),(14,29,5,NULL,5,'2020-02-09','2020-02-09 09:52:52','2020-02-09 09:52:52'),(15,29,5,NULL,5,'2020-02-09','2020-02-09 12:50:28','2020-02-09 12:50:28'),(16,30,11,NULL,1,'2020-02-10','2020-02-10 02:33:11','2020-02-10 02:33:11');
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblgallery`
--

DROP TABLE IF EXISTS `tblgallery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblgallery` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `products_id` int(11) NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblgallery`
--

LOCK TABLES `tblgallery` WRITE;
/*!40000 ALTER TABLE `tblgallery` DISABLE KEYS */;
INSERT INTO `tblgallery` VALUES (8,27,'7664271544063472.jpg','2018-12-05 19:31:12','2018-12-05 19:31:12'),(9,27,'6768551544063472.jpg','2018-12-05 19:31:13','2018-12-05 19:31:13'),(10,27,'4131281544063473.jpg','2018-12-05 19:31:13','2018-12-05 19:31:13'),(11,28,'6720891544063734.jpg','2018-12-05 19:35:34','2018-12-05 19:35:34'),(12,28,'4686631544063734.jpg','2018-12-05 19:35:34','2018-12-05 19:35:34'),(13,28,'5960611544063759.jpeg','2018-12-05 19:35:59','2018-12-05 19:35:59'),(14,29,'5146071544063935.JPG','2018-12-05 19:38:55','2018-12-05 19:38:55'),(15,29,'762811544063935.jpg','2018-12-05 19:38:55','2018-12-05 19:38:55'),(16,29,'3716041544063935.jpg','2018-12-05 19:38:56','2018-12-05 19:38:56'),(17,30,'6832831544064156.jpg','2018-12-05 19:42:37','2018-12-05 19:42:37'),(18,30,'1655391544064157.jpg','2018-12-05 19:42:37','2018-12-05 19:42:37'),(19,30,'4693601544064157.jpg','2018-12-05 19:42:37','2018-12-05 19:42:37'),(20,31,'9233341544064441.jpg','2018-12-05 19:47:21','2018-12-05 19:47:21'),(21,31,'8167501544064441.jpg','2018-12-05 19:47:22','2018-12-05 19:47:22'),(22,31,'3887071544064442.jpg','2018-12-05 19:47:22','2018-12-05 19:47:22'),(23,32,'3998691544064618.jpg','2018-12-05 19:50:18','2018-12-05 19:50:18'),(24,32,'1159141544064618.jpg','2018-12-05 19:50:18','2018-12-05 19:50:18'),(25,32,'2035101544064618.jpg','2018-12-05 19:50:18','2018-12-05 19:50:18'),(26,33,'2128501544064917.jpg','2018-12-05 19:55:17','2018-12-05 19:55:17'),(27,33,'5649911544064917.jpg','2018-12-05 19:55:17','2018-12-05 19:55:17'),(28,33,'3704141544064917.jpg','2018-12-05 19:55:17','2018-12-05 19:55:17'),(29,34,'3899431544065346.JPG','2018-12-05 20:02:26','2018-12-05 20:02:26'),(30,34,'119131544065346.jpg','2018-12-05 20:02:27','2018-12-05 20:02:27'),(31,34,'6905491544065347.jpg','2018-12-05 20:02:27','2018-12-05 20:02:27'),(32,35,'981591544065510.jpeg','2018-12-05 20:05:10','2018-12-05 20:05:10'),(33,35,'5320811544065510.jpg','2018-12-05 20:05:11','2018-12-05 20:05:11'),(34,35,'1153181544065511.jpg','2018-12-05 20:05:11','2018-12-05 20:05:11');
/*!40000 ALTER TABLE `tblgallery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin` tinyint(4) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pincode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'WeShare','demo@gmail.com',NULL,'$2y$10$m9fNpTgwyBVqqVfsJ9bXUensvx5iqlYhzqmL3khhSpKpgqNQnW0t2',1,'eXRJYaZCo6qXgGfTHiOFvShGWta2eLgaIhcBVfa9ppQnN5SFFH7yo516DQs1','2018-10-15 02:32:54','2018-12-05 01:39:52',NULL,NULL,NULL,NULL,NULL,NULL),(4,'weshare','weshare@gmail.com',NULL,'$2y$10$3Ccxg17LYw/.qS7ib5Xcr.T5po6AXUsnjEcEI4IHcQ0MGkcuRfO.O',NULL,'za7FtmzYvfzBYmkQtE5tfvStl7dY3Z6uZKSpuRtBRIvlbXzM0csZEQYzjuEb','2018-12-06 01:40:27','2018-12-06 01:40:27',NULL,NULL,NULL,NULL,NULL,NULL),(5,'Tanjed Atono','admin@admin.com',NULL,'$2y$10$fID2pZtzFtF2LA/Li.z89e4L77Tjh2Wx9nyFUnpjHmaEaa2FvHA02',1,'ZjJsp0CBru7KMGeTuuxaXgQi0KiKe8YMjMo54dPChoojKtegEyq1jkE6ROQd',NULL,NULL,'address','12','WA','Bangladesh','1213','01629535307'),(6,'Habib Tonoy','tonoy@admin.com',NULL,'$2y$10$R/MzWGMc02CSt.gRip4wguKxwZWYfRinXX4b1Tj1.wQSfa8gVwNxG',NULL,'H5GTdJQy5KhL27oTb5e1DUyE6Vy6TOVCz9C7RU2GZ1qiUeoAIMwKgrkAziIH','2019-12-23 13:47:35','2019-12-23 13:47:35',NULL,NULL,NULL,NULL,NULL,NULL),(7,'Tonoy','abc@gmail.com',NULL,'$2y$10$4uio7.XIUY3CH1ARB0Mf..gFxBBfdV.ClU25iWu4Q0C0.9YgqBtT.',NULL,NULL,'2020-02-05 03:41:00','2020-02-05 03:41:00',NULL,NULL,NULL,NULL,NULL,NULL),(8,'Habib','tonoy42@gmail.com',NULL,'$2y$10$mQNRc4G45dNHmjKImUjPpuODFhUVD0xdDvdxjNBsbmu6CPj0q/Lvu',NULL,NULL,'2020-02-05 03:42:17','2020-02-05 03:42:17','House 427,west shewrapara','Dhaka','Dhaka','Bangladesh','2700','01629535307'),(9,'Atik','Atik@gmail.com',NULL,'$2y$10$pz0VFrF8/ld/pAT0aIr2oeBxTuPEGGTjFKBhQAMlubjUkrI1xWuFW',NULL,NULL,'2020-02-05 03:46:58','2020-02-05 03:46:58',NULL,NULL,NULL,NULL,NULL,NULL),(10,'john','john@abc.com',NULL,'$2y$10$2RQOlh9tA/3Hm0ecsavnr.fEhRKp34i5gZMql0xhWa7GzCGyb2AuC',NULL,NULL,'2020-02-09 10:04:09','2020-02-09 10:04:09',NULL,NULL,NULL,NULL,NULL,NULL),(11,'pranta','pranta@abc.com',NULL,'$2y$10$iDIDYuhqTmGHO2PK5ThvV.yqGT3u1FoHhmM4PgYxa2FuDA4pX.YIi',NULL,NULL,'2020-02-10 02:31:19','2020-02-10 02:31:19','232 1/b','Shewrapara','Dhaka','Bangladesh','2700','01629535307');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-11 23:11:32
