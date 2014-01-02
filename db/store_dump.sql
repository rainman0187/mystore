-- MySQL dump 10.13  Distrib 5.5.19, for Win64 (x86)
--
-- Host: localhost    Database: mystore_development
-- ------------------------------------------------------
-- Server version	5.5.19

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
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20140102032522'),('20140102032523'),('20140102032524'),('20140102032525'),('20140102032526'),('20140102032527'),('20140102032528'),('20140102032529'),('20140102032530'),('20140102032531'),('20140102032532'),('20140102032533'),('20140102032534'),('20140102032535'),('20140102032536'),('20140102032537'),('20140102032538'),('20140102032539'),('20140102032540'),('20140102032541'),('20140102032542'),('20140102032543'),('20140102032544'),('20140102032545'),('20140102032546'),('20140102032547'),('20140102032548'),('20140102032549'),('20140102032550'),('20140102032551'),('20140102032552'),('20140102032553'),('20140102032554'),('20140102032555'),('20140102032556'),('20140102032557'),('20140102032558'),('20140102032559'),('20140102032560'),('20140102032561'),('20140102032562'),('20140102032563'),('20140102032564'),('20140102032565'),('20140102032566'),('20140102032567'),('20140102032568'),('20140102032569'),('20140102032570'),('20140102032571'),('20140102032572'),('20140102032573'),('20140102032574'),('20140102032575'),('20140102032576'),('20140102032577'),('20140102032578'),('20140102032579'),('20140102032580'),('20140102032581'),('20140102032582'),('20140102032583'),('20140102032584'),('20140102032585'),('20140102032586'),('20140102032587'),('20140102032588'),('20140102032589'),('20140102032590'),('20140102032591'),('20140102032592'),('20140102032593'),('20140102032594'),('20140102032595'),('20140102032596'),('20140102032597'),('20140102032598'),('20140102032599'),('20140102032600'),('20140102032601'),('20140102032602'),('20140102032603'),('20140102032604'),('20140102032605'),('20140102032606'),('20140102032607'),('20140102032608'),('20140102032609'),('20140102032610'),('20140102032611'),('20140102032612'),('20140102032613'),('20140102032614'),('20140102032615'),('20140102032616'),('20140102032617'),('20140102032618'),('20140102032619'),('20140102032620'),('20140102032621'),('20140102032622'),('20140102032623'),('20140102032624'),('20140102032625'),('20140102032626'),('20140102032627'),('20140102032628'),('20140102032629');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_activators`
--

DROP TABLE IF EXISTS `spree_activators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_activators` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  `starts_at` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `event_name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `usage_limit` int(11) DEFAULT NULL,
  `match_policy` varchar(255) DEFAULT 'all',
  `code` varchar(255) DEFAULT NULL,
  `advertise` tinyint(1) DEFAULT '0',
  `path` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_activators`
--

LOCK TABLES `spree_activators` WRITE;
/*!40000 ALTER TABLE `spree_activators` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_activators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_addresses`
--

DROP TABLE IF EXISTS `spree_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_addresses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `address1` varchar(255) DEFAULT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `zipcode` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `state_name` varchar(255) DEFAULT NULL,
  `alternative_phone` varchar(255) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_addresses_on_firstname` (`firstname`),
  KEY `index_addresses_on_lastname` (`lastname`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_addresses`
--

LOCK TABLES `spree_addresses` WRITE;
/*!40000 ALTER TABLE `spree_addresses` DISABLE KEYS */;
INSERT INTO `spree_addresses` VALUES (1,'Murphy','Turner','7847 Jerde Bypass','Suite 644','Brianaland','16804','1-000-090-2862 x6198',NULL,NULL,NULL,48,49,'2014-01-02 03:27:40','2014-01-02 03:27:40'),(2,'Alexzander','Sanford','72911 Dock Forks','Suite 716','Boyerborough','16804','522-094-0834 x3571',NULL,NULL,NULL,48,49,'2014-01-02 03:27:40','2014-01-02 03:27:40');
/*!40000 ALTER TABLE `spree_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_adjustments`
--

DROP TABLE IF EXISTS `spree_adjustments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_adjustments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `source_id` int(11) DEFAULT NULL,
  `source_type` varchar(255) DEFAULT NULL,
  `adjustable_id` int(11) DEFAULT NULL,
  `adjustable_type` varchar(255) DEFAULT NULL,
  `originator_id` int(11) DEFAULT NULL,
  `originator_type` varchar(255) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `mandatory` tinyint(1) DEFAULT NULL,
  `eligible` tinyint(1) DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `included` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_adjustments_on_order_id` (`adjustable_id`),
  KEY `index_spree_adjustments_on_order_id` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_adjustments`
--

LOCK TABLES `spree_adjustments` WRITE;
/*!40000 ALTER TABLE `spree_adjustments` DISABLE KEYS */;
INSERT INTO `spree_adjustments` VALUES (1,1,'Spree::Order',1,'Spree::Order',1,'Spree::TaxRate',0.80,'North America 5.0%',NULL,1,'2014-01-02 03:27:40','2014-01-02 03:27:40','closed',1,0),(2,2,'Spree::Order',2,'Spree::Order',1,'Spree::TaxRate',1.15,'North America 5.0%',NULL,1,'2014-01-02 03:27:40','2014-01-02 03:27:40','closed',2,0),(3,1,'Spree::Shipment',1,'Spree::Order',1,'Spree::ShippingMethod',5.00,'Shipping',1,1,'2014-01-02 03:27:41','2014-01-02 03:27:41','open',NULL,0),(4,2,'Spree::Shipment',2,'Spree::Order',1,'Spree::ShippingMethod',5.00,'Shipping',1,1,'2014-01-02 03:27:41','2014-01-02 03:27:41','open',NULL,0),(5,1,'Spree::Order',1,'Spree::Order',1,'Spree::TaxRate',0.80,'Tax',1,1,'2014-01-02 03:27:41','2014-01-02 03:27:41','open',NULL,0),(6,2,'Spree::Order',2,'Spree::Order',1,'Spree::TaxRate',1.15,'Tax',1,1,'2014-01-02 03:27:41','2014-01-02 03:27:41','open',NULL,0),(7,1,'Spree::Order',1,'Spree::Order',1,'Spree::ShippingMethod',0.00,'Shipping',1,1,'2014-01-02 03:27:41','2014-01-02 03:27:41','finalized',NULL,0),(8,2,'Spree::Order',2,'Spree::Order',1,'Spree::ShippingMethod',0.00,'Shipping',1,1,'2014-01-02 03:27:41','2014-01-02 03:27:41','finalized',NULL,0);
/*!40000 ALTER TABLE `spree_adjustments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_assets`
--

DROP TABLE IF EXISTS `spree_assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_assets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `viewable_id` int(11) DEFAULT NULL,
  `viewable_type` varchar(255) DEFAULT NULL,
  `attachment_width` int(11) DEFAULT NULL,
  `attachment_height` int(11) DEFAULT NULL,
  `attachment_file_size` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `attachment_content_type` varchar(255) DEFAULT NULL,
  `attachment_file_name` varchar(255) DEFAULT NULL,
  `type` varchar(75) DEFAULT NULL,
  `attachment_updated_at` datetime DEFAULT NULL,
  `alt` text,
  PRIMARY KEY (`id`),
  KEY `index_assets_on_viewable_id` (`viewable_id`),
  KEY `index_assets_on_viewable_type_and_type` (`viewable_type`,`type`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_assets`
--

LOCK TABLES `spree_assets` WRITE;
/*!40000 ALTER TABLE `spree_assets` DISABLE KEYS */;
INSERT INTO `spree_assets` VALUES (1,17,'Spree::Variant',240,240,44463,1,'image/png','ror_baseball_jersey_red.png','Spree::Image','2014-01-02 03:26:25',NULL),(2,17,'Spree::Variant',240,240,36895,2,'image/png','ror_baseball_jersey_back_red.png','Spree::Image','2014-01-02 03:26:27',NULL),(3,18,'Spree::Variant',240,240,46277,1,'image/png','ror_baseball_jersey_blue.png','Spree::Image','2014-01-02 03:26:29',NULL),(4,18,'Spree::Variant',240,240,38424,2,'image/png','ror_baseball_jersey_back_blue.png','Spree::Image','2014-01-02 03:26:30',NULL),(5,19,'Spree::Variant',240,240,45744,1,'image/png','ror_baseball_jersey_green.png','Spree::Image','2014-01-02 03:26:32',NULL),(6,19,'Spree::Variant',240,240,39641,2,'image/png','ror_baseball_jersey_back_green.png','Spree::Image','2014-01-02 03:26:34',NULL),(7,20,'Spree::Variant',240,240,44463,1,'image/png','ror_baseball_jersey_red.png','Spree::Image','2014-01-02 03:26:35',NULL),(8,20,'Spree::Variant',240,240,36895,2,'image/png','ror_baseball_jersey_back_red.png','Spree::Image','2014-01-02 03:26:37',NULL),(9,21,'Spree::Variant',240,240,46277,1,'image/png','ror_baseball_jersey_blue.png','Spree::Image','2014-01-02 03:26:38',NULL),(10,21,'Spree::Variant',240,240,38424,2,'image/png','ror_baseball_jersey_back_blue.png','Spree::Image','2014-01-02 03:26:40',NULL),(11,22,'Spree::Variant',240,240,45744,1,'image/png','ror_baseball_jersey_green.png','Spree::Image','2014-01-02 03:26:42',NULL),(12,22,'Spree::Variant',240,240,39641,2,'image/png','ror_baseball_jersey_back_green.png','Spree::Image','2014-01-02 03:26:43',NULL),(13,23,'Spree::Variant',240,240,44463,1,'image/png','ror_baseball_jersey_red.png','Spree::Image','2014-01-02 03:26:45',NULL),(14,23,'Spree::Variant',240,240,36895,2,'image/png','ror_baseball_jersey_back_red.png','Spree::Image','2014-01-02 03:26:47',NULL),(15,24,'Spree::Variant',240,240,46277,1,'image/png','ror_baseball_jersey_blue.png','Spree::Image','2014-01-02 03:26:48',NULL),(16,24,'Spree::Variant',240,240,38424,2,'image/png','ror_baseball_jersey_back_blue.png','Spree::Image','2014-01-02 03:26:50',NULL),(17,25,'Spree::Variant',240,240,45744,1,'image/png','ror_baseball_jersey_green.png','Spree::Image','2014-01-02 03:26:52',NULL),(18,25,'Spree::Variant',240,240,39641,2,'image/png','ror_baseball_jersey_back_green.png','Spree::Image','2014-01-02 03:26:53',NULL),(19,26,'Spree::Variant',240,240,45744,1,'image/png','ror_baseball_jersey_green.png','Spree::Image','2014-01-02 03:26:55',NULL),(20,26,'Spree::Variant',240,240,39641,2,'image/png','ror_baseball_jersey_back_green.png','Spree::Image','2014-01-02 03:26:56',NULL),(21,1,'Spree::Variant',360,360,31490,1,'image/jpeg','ror_tote.jpeg','Spree::Image','2014-01-02 03:26:58',NULL),(22,1,'Spree::Variant',360,360,28620,2,'image/jpeg','ror_tote_back.jpeg','Spree::Image','2014-01-02 03:27:00',NULL),(23,2,'Spree::Variant',360,360,28230,1,'image/jpeg','ror_bag.jpeg','Spree::Image','2014-01-02 03:27:01',NULL),(24,3,'Spree::Variant',360,360,27626,1,'image/jpeg','ror_baseball.jpeg','Spree::Image','2014-01-02 03:27:03',NULL),(25,3,'Spree::Variant',360,360,23490,2,'image/jpeg','ror_baseball_back.jpeg','Spree::Image','2014-01-02 03:27:04',NULL),(26,4,'Spree::Variant',360,360,14083,1,'image/jpeg','ror_jr_spaghetti.jpeg','Spree::Image','2014-01-02 03:27:06',NULL),(27,13,'Spree::Variant',360,360,20026,1,'image/jpeg','ror_mug.jpeg','Spree::Image','2014-01-02 03:27:08',NULL),(28,13,'Spree::Variant',360,360,10929,2,'image/jpeg','ror_mug_back.jpeg','Spree::Image','2014-01-02 03:27:09',NULL),(29,5,'Spree::Variant',360,360,18252,1,'image/jpeg','ror_ringer.jpeg','Spree::Image','2014-01-02 03:27:11',NULL),(30,5,'Spree::Variant',360,360,13276,2,'image/jpeg','ror_ringer_back.jpeg','Spree::Image','2014-01-02 03:27:12',NULL),(31,14,'Spree::Variant',360,360,20714,1,'image/jpeg','ror_stein.jpeg','Spree::Image','2014-01-02 03:27:14',NULL),(32,14,'Spree::Variant',360,360,20619,2,'image/jpeg','ror_stein_back.jpeg','Spree::Image','2014-01-02 03:27:15',NULL),(33,7,'Spree::Variant',504,484,123779,1,'image/png','apache_baseball.png','Spree::Image','2014-01-02 03:27:17',NULL),(34,6,'Spree::Variant',495,477,138622,1,'image/png','ruby_baseball.png','Spree::Image','2014-01-02 03:27:19',NULL),(35,12,'Spree::Variant',480,480,38369,1,'image/jpeg','spree_bag.jpeg','Spree::Image','2014-01-02 03:27:21',NULL),(36,11,'Spree::Variant',480,480,44579,1,'image/jpeg','spree_tote_front.jpeg','Spree::Image','2014-01-02 03:27:22',NULL),(37,11,'Spree::Variant',480,480,16947,2,'image/jpeg','spree_tote_back.jpeg','Spree::Image','2014-01-02 03:27:24',NULL),(38,10,'Spree::Variant',480,480,17641,1,'image/jpeg','spree_ringer_t.jpeg','Spree::Image','2014-01-02 03:27:26',NULL),(39,10,'Spree::Variant',480,480,10514,2,'image/jpeg','spree_ringer_t_back.jpeg','Spree::Image','2014-01-02 03:27:27',NULL),(40,9,'Spree::Variant',480,480,5898,1,'image/jpeg','spree_spaghetti.jpeg','Spree::Image','2014-01-02 03:27:29',NULL),(41,8,'Spree::Variant',480,480,18012,1,'image/jpeg','spree_jersey.jpeg','Spree::Image','2014-01-02 03:27:30',NULL),(42,8,'Spree::Variant',480,480,17868,2,'image/jpeg','spree_jersey_back.jpeg','Spree::Image','2014-01-02 03:27:32',NULL),(43,15,'Spree::Variant',480,480,12999,1,'image/jpeg','spree_stein.jpeg','Spree::Image','2014-01-02 03:27:33',NULL),(44,15,'Spree::Variant',480,480,12687,2,'image/jpeg','spree_stein_back.jpeg','Spree::Image','2014-01-02 03:27:35',NULL),(45,16,'Spree::Variant',240,240,4148,1,'image/jpeg','spree_mug.jpeg','Spree::Image','2014-01-02 03:27:37',NULL),(46,16,'Spree::Variant',240,240,4428,2,'image/jpeg','spree_mug_back.jpeg','Spree::Image','2014-01-02 03:27:38',NULL);
/*!40000 ALTER TABLE `spree_assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_calculators`
--

DROP TABLE IF EXISTS `spree_calculators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_calculators` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `calculable_id` int(11) DEFAULT NULL,
  `calculable_type` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_calculators`
--

LOCK TABLES `spree_calculators` WRITE;
/*!40000 ALTER TABLE `spree_calculators` DISABLE KEYS */;
INSERT INTO `spree_calculators` VALUES (1,'Spree::Calculator::Shipping::FlatRate',1,'Spree::ShippingMethod','2014-01-02 03:26:21','2014-01-02 03:26:21'),(2,'Spree::Calculator::Shipping::FlatRate',2,'Spree::ShippingMethod','2014-01-02 03:26:21','2014-01-02 03:26:21'),(3,'Spree::Calculator::Shipping::FlatRate',3,'Spree::ShippingMethod','2014-01-02 03:26:21','2014-01-02 03:26:21'),(4,'Spree::Calculator::Shipping::FlatRate',4,'Spree::ShippingMethod','2014-01-02 03:26:21','2014-01-02 03:26:21'),(5,'Spree::Calculator::DefaultTax',1,'Spree::TaxRate','2014-01-02 03:26:21','2014-01-02 03:26:21');
/*!40000 ALTER TABLE `spree_calculators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_configurations`
--

DROP TABLE IF EXISTS `spree_configurations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_configurations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_configurations_on_name_and_type` (`name`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_configurations`
--

LOCK TABLES `spree_configurations` WRITE;
/*!40000 ALTER TABLE `spree_configurations` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_configurations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_countries`
--

DROP TABLE IF EXISTS `spree_countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_countries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `iso_name` varchar(255) DEFAULT NULL,
  `iso` varchar(255) DEFAULT NULL,
  `iso3` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `numcode` int(11) DEFAULT NULL,
  `states_required` tinyint(1) DEFAULT '0',
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=228 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_countries`
--

LOCK TABLES `spree_countries` WRITE;
/*!40000 ALTER TABLE `spree_countries` DISABLE KEYS */;
INSERT INTO `spree_countries` VALUES (1,'CHAD','TD','TCD','Chad',148,0,'2014-01-02 03:26:04'),(2,'FAROE ISLANDS','FO','FRO','Faroe Islands',234,0,'2014-01-02 03:26:04'),(3,'INDIA','IN','IND','India',356,1,'2014-01-02 03:26:04'),(4,'NICARAGUA','NI','NIC','Nicaragua',558,0,'2014-01-02 03:26:04'),(5,'SAINT LUCIA','LC','LCA','Saint Lucia',662,0,'2014-01-02 03:26:04'),(6,'FIJI','FJ','FJI','Fiji',242,0,'2014-01-02 03:26:04'),(7,'INDONESIA','ID','IDN','Indonesia',360,0,'2014-01-02 03:26:04'),(8,'NIGER','NE','NER','Niger',562,0,'2014-01-02 03:26:04'),(9,'SAINT PIERRE AND MIQUELON','PM','SPM','Saint Pierre and Miquelon',666,0,'2014-01-02 03:26:04'),(10,'FINLAND','FI','FIN','Finland',246,0,'2014-01-02 03:26:04'),(11,'NIGERIA','NG','NGA','Nigeria',566,1,'2014-01-02 03:26:04'),(12,'SAINT VINCENT AND THE GRENADINES','VC','VCT','Saint Vincent and the Grenadines',670,0,'2014-01-02 03:26:04'),(13,'FRANCE','FR','FRA','France',250,0,'2014-01-02 03:26:04'),(14,'IRAN, ISLAMIC REPUBLIC OF','IR','IRN','Iran, Islamic Republic of',364,0,'2014-01-02 03:26:04'),(15,'NIUE','NU','NIU','Niue',570,0,'2014-01-02 03:26:04'),(16,'SAMOA','WS','WSM','Samoa',882,0,'2014-01-02 03:26:04'),(17,'FRENCH GUIANA','GF','GUF','French Guiana',254,0,'2014-01-02 03:26:04'),(18,'IRAQ','IQ','IRQ','Iraq',368,1,'2014-01-02 03:26:04'),(19,'SAN MARINO','SM','SMR','San Marino',674,0,'2014-01-02 03:26:04'),(20,'IRELAND','IE','IRL','Ireland',372,0,'2014-01-02 03:26:04'),(21,'SAO TOME AND PRINCIPE','ST','STP','Sao Tome and Principe',678,0,'2014-01-02 03:26:04'),(22,'ISRAEL','IL','ISR','Israel',376,0,'2014-01-02 03:26:04'),(23,'SAUDI ARABIA','SA','SAU','Saudi Arabia',682,0,'2014-01-02 03:26:04'),(24,'ITALY','IT','ITA','Italy',380,0,'2014-01-02 03:26:04'),(25,'SENEGAL','SN','SEN','Senegal',686,0,'2014-01-02 03:26:04'),(26,'JAMAICA','JM','JAM','Jamaica',388,0,'2014-01-02 03:26:04'),(27,'JAPAN','JP','JPN','Japan',392,0,'2014-01-02 03:26:04'),(28,'JORDAN','JO','JOR','Jordan',400,0,'2014-01-02 03:26:04'),(29,'BELGIUM','BE','BEL','Belgium',56,1,'2014-01-02 03:26:04'),(30,'BELIZE','BZ','BLZ','Belize',84,0,'2014-01-02 03:26:04'),(31,'KAZAKHSTAN','KZ','KAZ','Kazakhstan',398,0,'2014-01-02 03:26:04'),(32,'UGANDA','UG','UGA','Uganda',800,0,'2014-01-02 03:26:04'),(33,'BENIN','BJ','BEN','Benin',204,0,'2014-01-02 03:26:04'),(34,'KENYA','KE','KEN','Kenya',404,0,'2014-01-02 03:26:04'),(35,'UKRAINE','UA','UKR','Ukraine',804,0,'2014-01-02 03:26:04'),(36,'BERMUDA','BM','BMU','Bermuda',60,0,'2014-01-02 03:26:04'),(37,'KIRIBATI','KI','KIR','Kiribati',296,0,'2014-01-02 03:26:04'),(38,'MEXICO','MX','MEX','Mexico',484,1,'2014-01-02 03:26:04'),(39,'UNITED ARAB EMIRATES','AE','ARE','United Arab Emirates',784,1,'2014-01-02 03:26:04'),(40,'BHUTAN','BT','BTN','Bhutan',64,0,'2014-01-02 03:26:04'),(41,'CUBA','CU','CUB','Cuba',192,0,'2014-01-02 03:26:04'),(42,'KOREA, DEMOCRATIC PEOPLE\'S REPUBLIC OF','KP','PRK','North Korea',408,0,'2014-01-02 03:26:04'),(43,'MICRONESIA, FEDERATED STATES OF','FM','FSM','Micronesia, Federated States of',583,1,'2014-01-02 03:26:04'),(44,'UNITED KINGDOM','GB','GBR','United Kingdom',826,0,'2014-01-02 03:26:04'),(45,'BOLIVIA','BO','BOL','Bolivia',68,0,'2014-01-02 03:26:04'),(46,'CYPRUS','CY','CYP','Cyprus',196,0,'2014-01-02 03:26:04'),(47,'KOREA, REPUBLIC OF','KR','KOR','South Korea',410,0,'2014-01-02 03:26:04'),(48,'MOLDOVA, REPUBLIC OF','MD','MDA','Moldova, Republic of',498,0,'2014-01-02 03:26:04'),(49,'UNITED STATES','US','USA','United States',840,1,'2014-01-02 03:26:04'),(50,'BOSNIA AND HERZEGOVINA','BA','BIH','Bosnia and Herzegovina',70,1,'2014-01-02 03:26:04'),(51,'CZECH REPUBLIC','CZ','CZE','Czech Republic',203,0,'2014-01-02 03:26:04'),(52,'KUWAIT','KW','KWT','Kuwait',414,0,'2014-01-02 03:26:04'),(53,'MONACO','MC','MCO','Monaco',492,0,'2014-01-02 03:26:04'),(54,'URUGUAY','UY','URY','Uruguay',858,0,'2014-01-02 03:26:04'),(55,'BOTSWANA','BW','BWA','Botswana',72,0,'2014-01-02 03:26:04'),(56,'DENMARK','DK','DNK','Denmark',208,0,'2014-01-02 03:26:04'),(57,'GUADELOUPE','GP','GLP','Guadeloupe',312,0,'2014-01-02 03:26:04'),(58,'KYRGYZSTAN','KG','KGZ','Kyrgyzstan',417,0,'2014-01-02 03:26:04'),(59,'MONGOLIA','MN','MNG','Mongolia',496,0,'2014-01-02 03:26:04'),(60,'PHILIPPINES','PH','PHL','Philippines',608,0,'2014-01-02 03:26:04'),(61,'BRAZIL','BR','BRA','Brazil',76,1,'2014-01-02 03:26:04'),(62,'DJIBOUTI','DJ','DJI','Djibouti',262,0,'2014-01-02 03:26:04'),(63,'GUAM','GU','GUM','Guam',316,0,'2014-01-02 03:26:04'),(64,'LAO PEOPLE\'S DEMOCRATIC REPUBLIC','LA','LAO','Lao People\'s Democratic Republic',418,0,'2014-01-02 03:26:04'),(65,'MONTSERRAT','MS','MSR','Montserrat',500,0,'2014-01-02 03:26:04'),(66,'PITCAIRN','PN','PCN','Pitcairn',612,0,'2014-01-02 03:26:04'),(67,'UZBEKISTAN','UZ','UZB','Uzbekistan',860,0,'2014-01-02 03:26:04'),(68,'BRUNEI DARUSSALAM','BN','BRN','Brunei Darussalam',96,0,'2014-01-02 03:26:04'),(69,'DOMINICA','DM','DMA','Dominica',212,0,'2014-01-02 03:26:04'),(70,'GUATEMALA','GT','GTM','Guatemala',320,0,'2014-01-02 03:26:04'),(71,'MOROCCO','MA','MAR','Morocco',504,0,'2014-01-02 03:26:04'),(72,'POLAND','PL','POL','Poland',616,0,'2014-01-02 03:26:04'),(73,'VANUATU','VU','VUT','Vanuatu',548,0,'2014-01-02 03:26:04'),(74,'DOMINICAN REPUBLIC','DO','DOM','Dominican Republic',214,0,'2014-01-02 03:26:04'),(75,'MOZAMBIQUE','MZ','MOZ','Mozambique',508,0,'2014-01-02 03:26:04'),(76,'PORTUGAL','PT','PRT','Portugal',620,0,'2014-01-02 03:26:04'),(77,'SUDAN','SD','SDN','Sudan',736,1,'2014-01-02 03:26:04'),(78,'VENEZUELA','VE','VEN','Venezuela',862,1,'2014-01-02 03:26:04'),(79,'ECUADOR','EC','ECU','Ecuador',218,0,'2014-01-02 03:26:04'),(80,'GUINEA','GN','GIN','Guinea',324,0,'2014-01-02 03:26:04'),(81,'MYANMAR','MM','MMR','Myanmar',104,0,'2014-01-02 03:26:04'),(82,'PUERTO RICO','PR','PRI','Puerto Rico',630,0,'2014-01-02 03:26:04'),(83,'SURINAME','SR','SUR','Suriname',740,0,'2014-01-02 03:26:04'),(84,'VIET NAM','VN','VNM','Viet Nam',704,0,'2014-01-02 03:26:04'),(85,'EGYPT','EG','EGY','Egypt',818,0,'2014-01-02 03:26:04'),(86,'GUINEA-BISSAU','GW','GNB','Guinea-Bissau',624,0,'2014-01-02 03:26:04'),(87,'NAMIBIA','NA','NAM','Namibia',516,0,'2014-01-02 03:26:04'),(88,'QATAR','QA','QAT','Qatar',634,0,'2014-01-02 03:26:04'),(89,'SVALBARD AND JAN MAYEN','SJ','SJM','Svalbard and Jan Mayen',744,0,'2014-01-02 03:26:04'),(90,'EL SALVADOR','SV','SLV','El Salvador',222,0,'2014-01-02 03:26:04'),(91,'GUYANA','GY','GUY','Guyana',328,0,'2014-01-02 03:26:04'),(92,'REUNION','RE','REU','Reunion',638,0,'2014-01-02 03:26:05'),(93,'HAITI','HT','HTI','Haiti',332,0,'2014-01-02 03:26:05'),(94,'ROMANIA','RO','ROM','Romania',642,0,'2014-01-02 03:26:05'),(95,'SWAZILAND','SZ','SWZ','Swaziland',748,0,'2014-01-02 03:26:05'),(96,'HOLY SEE (VATICAN CITY STATE)','VA','VAT','Holy See (Vatican City State)',336,0,'2014-01-02 03:26:05'),(97,'RUSSIAN FEDERATION','RU','RUS','Russian Federation',643,1,'2014-01-02 03:26:05'),(98,'SWEDEN','SE','SWE','Sweden',752,0,'2014-01-02 03:26:05'),(99,'HONDURAS','HN','HND','Honduras',340,0,'2014-01-02 03:26:05'),(100,'RWANDA','RW','RWA','Rwanda',646,0,'2014-01-02 03:26:05'),(101,'SWITZERLAND','CH','CHE','Switzerland',756,1,'2014-01-02 03:26:05'),(102,'HONG KONG','HK','HKG','Hong Kong',344,0,'2014-01-02 03:26:05'),(103,'SYRIAN ARAB REPUBLIC','SY','SYR','Syrian Arab Republic',760,0,'2014-01-02 03:26:05'),(104,'TAIWAN, PROVINCE OF CHINA','TW','TWN','Taiwan',158,0,'2014-01-02 03:26:05'),(105,'TAJIKISTAN','TJ','TJK','Tajikistan',762,0,'2014-01-02 03:26:05'),(106,'TANZANIA, UNITED REPUBLIC OF','TZ','TZA','Tanzania, United Republic of',834,0,'2014-01-02 03:26:05'),(107,'ARMENIA','AM','ARM','Armenia',51,0,'2014-01-02 03:26:05'),(108,'ARUBA','AW','ABW','Aruba',533,0,'2014-01-02 03:26:05'),(109,'AUSTRALIA','AU','AUS','Australia',36,1,'2014-01-02 03:26:05'),(110,'THAILAND','TH','THA','Thailand',764,0,'2014-01-02 03:26:05'),(111,'AUSTRIA','AT','AUT','Austria',40,1,'2014-01-02 03:26:05'),(112,'MADAGASCAR','MG','MDG','Madagascar',450,0,'2014-01-02 03:26:05'),(113,'TOGO','TG','TGO','Togo',768,0,'2014-01-02 03:26:05'),(114,'AZERBAIJAN','AZ','AZE','Azerbaijan',31,0,'2014-01-02 03:26:05'),(115,'CHILE','CL','CHL','Chile',152,0,'2014-01-02 03:26:05'),(116,'MALAWI','MW','MWI','Malawi',454,0,'2014-01-02 03:26:05'),(117,'TOKELAU','TK','TKL','Tokelau',772,0,'2014-01-02 03:26:05'),(118,'BAHAMAS','BS','BHS','Bahamas',44,0,'2014-01-02 03:26:05'),(119,'CHINA','CN','CHN','China',156,0,'2014-01-02 03:26:05'),(120,'MALAYSIA','MY','MYS','Malaysia',458,1,'2014-01-02 03:26:05'),(121,'TONGA','TO','TON','Tonga',776,0,'2014-01-02 03:26:05'),(122,'BAHRAIN','BH','BHR','Bahrain',48,0,'2014-01-02 03:26:05'),(123,'COLOMBIA','CO','COL','Colombia',170,0,'2014-01-02 03:26:05'),(124,'MALDIVES','MV','MDV','Maldives',462,0,'2014-01-02 03:26:05'),(125,'TRINIDAD AND TOBAGO','TT','TTO','Trinidad and Tobago',780,0,'2014-01-02 03:26:05'),(126,'BANGLADESH','BD','BGD','Bangladesh',50,0,'2014-01-02 03:26:05'),(127,'COMOROS','KM','COM','Comoros',174,1,'2014-01-02 03:26:05'),(128,'FRENCH POLYNESIA','PF','PYF','French Polynesia',258,0,'2014-01-02 03:26:05'),(129,'MALI','ML','MLI','Mali',466,0,'2014-01-02 03:26:05'),(130,'NORFOLK ISLAND','NF','NFK','Norfolk Island',574,0,'2014-01-02 03:26:05'),(131,'TUNISIA','TN','TUN','Tunisia',788,0,'2014-01-02 03:26:05'),(132,'BARBADOS','BB','BRB','Barbados',52,0,'2014-01-02 03:26:05'),(133,'CONGO','CG','COG','Congo',178,0,'2014-01-02 03:26:05'),(134,'GABON','GA','GAB','Gabon',266,0,'2014-01-02 03:26:05'),(135,'MALTA','MT','MLT','Malta',470,0,'2014-01-02 03:26:05'),(136,'NORTHERN MARIANA ISLANDS','MP','MNP','Northern Mariana Islands',580,0,'2014-01-02 03:26:05'),(137,'TURKEY','TR','TUR','Turkey',792,0,'2014-01-02 03:26:05'),(138,'CONGO, THE DEMOCRATIC REPUBLIC OF THE','CD','COD','Congo, the Democratic Republic of the',180,0,'2014-01-02 03:26:05'),(139,'MARSHALL ISLANDS','MH','MHL','Marshall Islands',584,0,'2014-01-02 03:26:05'),(140,'NORWAY','NO','NOR','Norway',578,0,'2014-01-02 03:26:05'),(141,'TURKMENISTAN','TM','TKM','Turkmenistan',795,0,'2014-01-02 03:26:05'),(142,'BELARUS','BY','BLR','Belarus',112,0,'2014-01-02 03:26:05'),(143,'COOK ISLANDS','CK','COK','Cook Islands',184,0,'2014-01-02 03:26:05'),(144,'GAMBIA','GM','GMB','Gambia',270,0,'2014-01-02 03:26:05'),(145,'MARTINIQUE','MQ','MTQ','Martinique',474,0,'2014-01-02 03:26:05'),(146,'OMAN','OM','OMN','Oman',512,0,'2014-01-02 03:26:05'),(147,'SEYCHELLES','SC','SYC','Seychelles',690,0,'2014-01-02 03:26:05'),(148,'TURKS AND CAICOS ISLANDS','TC','TCA','Turks and Caicos Islands',796,0,'2014-01-02 03:26:05'),(149,'GEORGIA','GE','GEO','Georgia',268,0,'2014-01-02 03:26:05'),(150,'MAURITANIA','MR','MRT','Mauritania',478,0,'2014-01-02 03:26:05'),(151,'PAKISTAN','PK','PAK','Pakistan',586,1,'2014-01-02 03:26:05'),(152,'SIERRA LEONE','SL','SLE','Sierra Leone',694,0,'2014-01-02 03:26:05'),(153,'TUVALU','TV','TUV','Tuvalu',798,0,'2014-01-02 03:26:05'),(154,'COSTA RICA','CR','CRI','Costa Rica',188,0,'2014-01-02 03:26:05'),(155,'GERMANY','DE','DEU','Germany',276,1,'2014-01-02 03:26:05'),(156,'MAURITIUS','MU','MUS','Mauritius',480,0,'2014-01-02 03:26:05'),(157,'PALAU','PW','PLW','Palau',585,0,'2014-01-02 03:26:05'),(158,'COTE D\'IVOIRE','CI','CIV','Cote D\'Ivoire',384,0,'2014-01-02 03:26:05'),(159,'PANAMA','PA','PAN','Panama',591,0,'2014-01-02 03:26:05'),(160,'SINGAPORE','SG','SGP','Singapore',702,0,'2014-01-02 03:26:05'),(161,'CROATIA','HR','HRV','Croatia',191,0,'2014-01-02 03:26:05'),(162,'GHANA','GH','GHA','Ghana',288,0,'2014-01-02 03:26:05'),(163,'PAPUA NEW GUINEA','PG','PNG','Papua New Guinea',598,0,'2014-01-02 03:26:05'),(164,'SLOVAKIA','SK','SVK','Slovakia',703,0,'2014-01-02 03:26:05'),(165,'GIBRALTAR','GI','GIB','Gibraltar',292,0,'2014-01-02 03:26:05'),(166,'PARAGUAY','PY','PRY','Paraguay',600,0,'2014-01-02 03:26:05'),(167,'SLOVENIA','SI','SVN','Slovenia',705,0,'2014-01-02 03:26:05'),(168,'GREECE','GR','GRC','Greece',300,0,'2014-01-02 03:26:05'),(169,'PERU','PE','PER','Peru',604,0,'2014-01-02 03:26:05'),(170,'SOLOMON ISLANDS','SB','SLB','Solomon Islands',90,0,'2014-01-02 03:26:05'),(171,'GREENLAND','GL','GRL','Greenland',304,0,'2014-01-02 03:26:05'),(172,'SOMALIA','SO','SOM','Somalia',706,1,'2014-01-02 03:26:05'),(173,'GRENADA','GD','GRD','Grenada',308,0,'2014-01-02 03:26:05'),(174,'SOUTH AFRICA','ZA','ZAF','South Africa',710,0,'2014-01-02 03:26:05'),(175,'SPAIN','ES','ESP','Spain',724,0,'2014-01-02 03:26:05'),(176,'SRI LANKA','LK','LKA','Sri Lanka',144,0,'2014-01-02 03:26:05'),(177,'AFGHANISTAN','AF','AFG','Afghanistan',4,0,'2014-01-02 03:26:05'),(178,'ALBANIA','AL','ALB','Albania',8,0,'2014-01-02 03:26:05'),(179,'ALGERIA','DZ','DZA','Algeria',12,0,'2014-01-02 03:26:05'),(180,'LATVIA','LV','LVA','Latvia',428,0,'2014-01-02 03:26:05'),(181,'AMERICAN SAMOA','AS','ASM','American Samoa',16,0,'2014-01-02 03:26:05'),(182,'BULGARIA','BG','BGR','Bulgaria',100,0,'2014-01-02 03:26:05'),(183,'LEBANON','LB','LBN','Lebanon',422,0,'2014-01-02 03:26:05'),(184,'ANDORRA','AD','AND','Andorra',20,0,'2014-01-02 03:26:05'),(185,'BURKINA FASO','BF','BFA','Burkina Faso',854,0,'2014-01-02 03:26:05'),(186,'LESOTHO','LS','LSO','Lesotho',426,0,'2014-01-02 03:26:05'),(187,'ANGOLA','AO','AGO','Angola',24,0,'2014-01-02 03:26:05'),(188,'BURUNDI','BI','BDI','Burundi',108,0,'2014-01-02 03:26:05'),(189,'LIBERIA','LR','LBR','Liberia',430,0,'2014-01-02 03:26:05'),(190,'VIRGIN ISLANDS, BRITISH','VG','VGB','Virgin Islands, British',92,0,'2014-01-02 03:26:05'),(191,'ANGUILLA','AI','AIA','Anguilla',660,0,'2014-01-02 03:26:05'),(192,'CAMBODIA','KH','KHM','Cambodia',116,0,'2014-01-02 03:26:05'),(193,'EQUATORIAL GUINEA','GQ','GNQ','Equatorial Guinea',226,0,'2014-01-02 03:26:05'),(194,'LIBYAN ARAB JAMAHIRIYA','LY','LBY','Libyan Arab Jamahiriya',434,0,'2014-01-02 03:26:05'),(195,'NAURU','NR','NRU','Nauru',520,0,'2014-01-02 03:26:05'),(196,'VIRGIN ISLANDS, U.S.','VI','VIR','Virgin Islands, U.S.',850,0,'2014-01-02 03:26:05'),(197,'ANTIGUA AND BARBUDA','AG','ATG','Antigua and Barbuda',28,0,'2014-01-02 03:26:05'),(198,'CAMEROON','CM','CMR','Cameroon',120,0,'2014-01-02 03:26:05'),(199,'LIECHTENSTEIN','LI','LIE','Liechtenstein',438,0,'2014-01-02 03:26:05'),(200,'NEPAL','NP','NPL','Nepal',524,1,'2014-01-02 03:26:05'),(201,'WALLIS AND FUTUNA','WF','WLF','Wallis and Futuna',876,0,'2014-01-02 03:26:05'),(202,'WESTERN SAHARA','EH','ESH','Western Sahara',732,0,'2014-01-02 03:26:05'),(203,'ARGENTINA','AR','ARG','Argentina',32,1,'2014-01-02 03:26:05'),(204,'CANADA','CA','CAN','Canada',124,1,'2014-01-02 03:26:05'),(205,'ERITREA','ER','ERI','Eritrea',232,0,'2014-01-02 03:26:05'),(206,'LITHUANIA','LT','LTU','Lithuania',440,0,'2014-01-02 03:26:05'),(207,'NETHERLANDS','NL','NLD','Netherlands',528,0,'2014-01-02 03:26:05'),(208,'YEMEN','YE','YEM','Yemen',887,0,'2014-01-02 03:26:05'),(209,'CAPE VERDE','CV','CPV','Cape Verde',132,0,'2014-01-02 03:26:05'),(210,'ESTONIA','EE','EST','Estonia',233,0,'2014-01-02 03:26:05'),(211,'LUXEMBOURG','LU','LUX','Luxembourg',442,0,'2014-01-02 03:26:05'),(212,'NETHERLANDS ANTILLES','AN','ANT','Netherlands Antilles',530,0,'2014-01-02 03:26:05'),(213,'SAINT HELENA','SH','SHN','Saint Helena',654,0,'2014-01-02 03:26:05'),(214,'ZAMBIA','ZM','ZMB','Zambia',894,0,'2014-01-02 03:26:05'),(215,'CAYMAN ISLANDS','KY','CYM','Cayman Islands',136,0,'2014-01-02 03:26:05'),(216,'ETHIOPIA','ET','ETH','Ethiopia',231,1,'2014-01-02 03:26:05'),(217,'HUNGARY','HU','HUN','Hungary',348,0,'2014-01-02 03:26:05'),(218,'MACAO','MO','MAC','Macao',446,0,'2014-01-02 03:26:05'),(219,'NEW CALEDONIA','NC','NCL','New Caledonia',540,0,'2014-01-02 03:26:05'),(220,'ZIMBABWE','ZW','ZWE','Zimbabwe',716,0,'2014-01-02 03:26:05'),(221,'CENTRAL AFRICAN REPUBLIC','CF','CAF','Central African Republic',140,0,'2014-01-02 03:26:05'),(222,'FALKLAND ISLANDS (MALVINAS)','FK','FLK','Falkland Islands (Malvinas)',238,0,'2014-01-02 03:26:05'),(223,'ICELAND','IS','ISL','Iceland',352,0,'2014-01-02 03:26:05'),(224,'MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF','MK','MKD','Macedonia',807,0,'2014-01-02 03:26:05'),(225,'NEW ZEALAND','NZ','NZL','New Zealand',554,0,'2014-01-02 03:26:05'),(226,'SAINT KITTS AND NEVIS','KN','KNA','Saint Kitts and Nevis',659,1,'2014-01-02 03:26:05'),(227,'SERBIA','RS','SRB','Serbia',999,0,'2014-01-02 03:26:05');
/*!40000 ALTER TABLE `spree_countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_credit_cards`
--

DROP TABLE IF EXISTS `spree_credit_cards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_credit_cards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `month` varchar(255) DEFAULT NULL,
  `year` varchar(255) DEFAULT NULL,
  `cc_type` varchar(255) DEFAULT NULL,
  `last_digits` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `address_id` int(11) DEFAULT NULL,
  `gateway_customer_profile_id` varchar(255) DEFAULT NULL,
  `gateway_payment_profile_id` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_credit_cards`
--

LOCK TABLES `spree_credit_cards` WRITE;
/*!40000 ALTER TABLE `spree_credit_cards` DISABLE KEYS */;
INSERT INTO `spree_credit_cards` VALUES (1,'12','2014','visa','1111','Sean','Schofield',NULL,'BGS-1234',NULL,'2014-01-02 03:27:41','2014-01-02 03:27:41');
/*!40000 ALTER TABLE `spree_credit_cards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_gateways`
--

DROP TABLE IF EXISTS `spree_gateways`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_gateways` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `active` tinyint(1) DEFAULT '1',
  `environment` varchar(255) DEFAULT 'development',
  `server` varchar(255) DEFAULT 'test',
  `test_mode` tinyint(1) DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_gateways`
--

LOCK TABLES `spree_gateways` WRITE;
/*!40000 ALTER TABLE `spree_gateways` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_gateways` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_inventory_units`
--

DROP TABLE IF EXISTS `spree_inventory_units`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_inventory_units` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `state` varchar(255) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `shipment_id` int(11) DEFAULT NULL,
  `return_authorization_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `pending` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `index_inventory_units_on_order_id` (`order_id`),
  KEY `index_inventory_units_on_shipment_id` (`shipment_id`),
  KEY `index_inventory_units_on_variant_id` (`variant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_inventory_units`
--

LOCK TABLES `spree_inventory_units` WRITE;
/*!40000 ALTER TABLE `spree_inventory_units` DISABLE KEYS */;
INSERT INTO `spree_inventory_units` VALUES (1,'on_hand',1,1,1,NULL,'2014-01-02 03:27:41','2014-01-02 03:27:41',1),(2,'on_hand',2,2,2,NULL,'2014-01-02 03:27:41','2014-01-02 03:27:41',1);
/*!40000 ALTER TABLE `spree_inventory_units` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_line_items`
--

DROP TABLE IF EXISTS `spree_line_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_line_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `variant_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `cost_price` decimal(8,2) DEFAULT NULL,
  `tax_category_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_line_items_on_order_id` (`order_id`),
  KEY `index_spree_line_items_on_variant_id` (`variant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_line_items`
--

LOCK TABLES `spree_line_items` WRITE;
/*!40000 ALTER TABLE `spree_line_items` DISABLE KEYS */;
INSERT INTO `spree_line_items` VALUES (1,1,1,1,15.99,'2014-01-02 03:27:40','2014-01-02 03:27:40','USD',17.00,1),(2,2,2,1,22.99,'2014-01-02 03:27:40','2014-01-02 03:27:40','USD',21.00,1);
/*!40000 ALTER TABLE `spree_line_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_log_entries`
--

DROP TABLE IF EXISTS `spree_log_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_log_entries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `source_id` int(11) DEFAULT NULL,
  `source_type` varchar(255) DEFAULT NULL,
  `details` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_log_entries`
--

LOCK TABLES `spree_log_entries` WRITE;
/*!40000 ALTER TABLE `spree_log_entries` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_log_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_option_types`
--

DROP TABLE IF EXISTS `spree_option_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_option_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `presentation` varchar(100) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_option_types`
--

LOCK TABLES `spree_option_types` WRITE;
/*!40000 ALTER TABLE `spree_option_types` DISABLE KEYS */;
INSERT INTO `spree_option_types` VALUES (1,'tshirt-size','Size',1,'2014-01-02 03:26:23','2014-01-02 03:26:23'),(2,'tshirt-color','Color',2,'2014-01-02 03:26:23','2014-01-02 03:26:23');
/*!40000 ALTER TABLE `spree_option_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_option_types_prototypes`
--

DROP TABLE IF EXISTS `spree_option_types_prototypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_option_types_prototypes` (
  `prototype_id` int(11) DEFAULT NULL,
  `option_type_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_option_types_prototypes`
--

LOCK TABLES `spree_option_types_prototypes` WRITE;
/*!40000 ALTER TABLE `spree_option_types_prototypes` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_option_types_prototypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_option_values`
--

DROP TABLE IF EXISTS `spree_option_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_option_values` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `position` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `presentation` varchar(255) DEFAULT NULL,
  `option_type_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_option_values`
--

LOCK TABLES `spree_option_values` WRITE;
/*!40000 ALTER TABLE `spree_option_values` DISABLE KEYS */;
INSERT INTO `spree_option_values` VALUES (1,1,'Small','S',1,'2014-01-02 03:26:24','2014-01-02 03:26:24'),(2,2,'Medium','M',1,'2014-01-02 03:26:24','2014-01-02 03:26:24'),(3,3,'Large','L',1,'2014-01-02 03:26:24','2014-01-02 03:26:24'),(4,4,'Extra Large','XL',1,'2014-01-02 03:26:24','2014-01-02 03:26:24'),(5,1,'Red','Red',2,'2014-01-02 03:26:24','2014-01-02 03:26:24'),(6,2,'Green','Green',2,'2014-01-02 03:26:24','2014-01-02 03:26:24'),(7,3,'Blue','Blue',2,'2014-01-02 03:26:24','2014-01-02 03:26:24');
/*!40000 ALTER TABLE `spree_option_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_option_values_variants`
--

DROP TABLE IF EXISTS `spree_option_values_variants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_option_values_variants` (
  `variant_id` int(11) DEFAULT NULL,
  `option_value_id` int(11) DEFAULT NULL,
  KEY `index_option_values_variants_on_variant_id_and_option_value_id` (`variant_id`,`option_value_id`),
  KEY `index_spree_option_values_variants_on_variant_id` (`variant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_option_values_variants`
--

LOCK TABLES `spree_option_values_variants` WRITE;
/*!40000 ALTER TABLE `spree_option_values_variants` DISABLE KEYS */;
INSERT INTO `spree_option_values_variants` VALUES (17,1),(17,5),(18,1),(18,7),(19,1),(19,6),(20,2),(20,5),(21,2),(21,7),(22,2),(22,6),(23,3),(23,5),(24,3),(24,7),(25,3),(25,6),(26,4),(26,6);
/*!40000 ALTER TABLE `spree_option_values_variants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_orders`
--

DROP TABLE IF EXISTS `spree_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` varchar(32) DEFAULT NULL,
  `item_total` decimal(10,2) NOT NULL DEFAULT '0.00',
  `total` decimal(10,2) NOT NULL DEFAULT '0.00',
  `state` varchar(255) DEFAULT NULL,
  `adjustment_total` decimal(10,2) NOT NULL DEFAULT '0.00',
  `user_id` int(11) DEFAULT NULL,
  `completed_at` datetime DEFAULT NULL,
  `bill_address_id` int(11) DEFAULT NULL,
  `ship_address_id` int(11) DEFAULT NULL,
  `payment_total` decimal(10,2) DEFAULT '0.00',
  `shipping_method_id` int(11) DEFAULT NULL,
  `shipment_state` varchar(255) DEFAULT NULL,
  `payment_state` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `special_instructions` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `last_ip_address` varchar(255) DEFAULT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `channel` varchar(255) DEFAULT 'spree',
  `tax_total` decimal(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`),
  KEY `index_spree_orders_on_completed_at` (`completed_at`),
  KEY `index_spree_orders_on_number` (`number`),
  KEY `index_spree_orders_on_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_orders`
--

LOCK TABLES `spree_orders` WRITE;
/*!40000 ALTER TABLE `spree_orders` DISABLE KEYS */;
INSERT INTO `spree_orders` VALUES (1,'R123456789',15.99,22.59,'complete',6.60,NULL,'2014-01-01 03:27:41',2,1,0.00,NULL,'pending','balance_due','spree@example.com',NULL,'2014-01-02 03:27:40','2014-01-02 03:27:41','USD',NULL,NULL,'spree',0.80),(2,'R987654321',22.99,30.29,'complete',7.30,NULL,'2014-01-01 03:27:41',2,1,0.00,NULL,'pending','balance_due','spree@example.com',NULL,'2014-01-02 03:27:40','2014-01-02 03:27:41','USD',NULL,NULL,'spree',1.15);
/*!40000 ALTER TABLE `spree_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_payment_methods`
--

DROP TABLE IF EXISTS `spree_payment_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_payment_methods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `active` tinyint(1) DEFAULT '1',
  `environment` varchar(255) DEFAULT 'development',
  `deleted_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `display_on` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_payment_methods`
--

LOCK TABLES `spree_payment_methods` WRITE;
/*!40000 ALTER TABLE `spree_payment_methods` DISABLE KEYS */;
INSERT INTO `spree_payment_methods` VALUES (1,'Spree::Gateway::Bogus','Credit Card','Bogus payment gateway for development.',1,'development',NULL,'2014-01-02 03:26:21','2014-01-02 03:26:21',NULL),(2,'Spree::Gateway::Bogus','Credit Card','Bogus payment gateway for production.',1,'production',NULL,'2014-01-02 03:26:21','2014-01-02 03:26:21',NULL),(3,'Spree::Gateway::Bogus','Credit Card','Bogus payment gateway for staging.',1,'staging',NULL,'2014-01-02 03:26:21','2014-01-02 03:26:21',NULL),(4,'Spree::Gateway::Bogus','Credit Card','Bogus payment gateway for test.',1,'test',NULL,'2014-01-02 03:26:21','2014-01-02 03:26:21',NULL),(5,'Spree::PaymentMethod::Check','Check','Pay by check.',1,'development',NULL,'2014-01-02 03:26:21','2014-01-02 03:26:21',NULL);
/*!40000 ALTER TABLE `spree_payment_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_payments`
--

DROP TABLE IF EXISTS `spree_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_payments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `order_id` int(11) DEFAULT NULL,
  `source_id` int(11) DEFAULT NULL,
  `source_type` varchar(255) DEFAULT NULL,
  `payment_method_id` int(11) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `response_code` varchar(255) DEFAULT NULL,
  `avs_response` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `identifier` varchar(255) DEFAULT NULL,
  `cvv_response_code` varchar(255) DEFAULT NULL,
  `cvv_response_message` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_payments_on_order_id` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_payments`
--

LOCK TABLES `spree_payments` WRITE;
/*!40000 ALTER TABLE `spree_payments` DISABLE KEYS */;
INSERT INTO `spree_payments` VALUES (1,22.59,1,1,'Spree::CreditCard',1,'pending','12345',NULL,'2014-01-02 03:27:41','2014-01-02 03:27:41','3Y2JBZZP',NULL,NULL),(2,30.29,2,1,'Spree::CreditCard',1,'pending','12345',NULL,'2014-01-02 03:27:41','2014-01-02 03:27:41','SP522W7R',NULL,NULL);
/*!40000 ALTER TABLE `spree_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_preferences`
--

DROP TABLE IF EXISTS `spree_preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_preferences` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` text,
  `key` varchar(255) DEFAULT NULL,
  `value_type` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_spree_preferences_on_key` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_preferences`
--

LOCK TABLES `spree_preferences` WRITE;
/*!40000 ALTER TABLE `spree_preferences` DISABLE KEYS */;
INSERT INTO `spree_preferences` VALUES (1,'--- 49\n...\n','spree/app_configuration/default_country_id','integer','2014-01-02 03:26:05','2014-01-02 03:26:05'),(2,'--- 5.0\n...\n','spree/calculator/shipping/flat_rate/amount/1','decimal','2014-01-02 03:26:21','2014-01-02 03:26:21'),(3,'--- USD\n...\n','spree/calculator/shipping/flat_rate/currency/1','string','2014-01-02 03:26:21','2014-01-02 03:26:21'),(4,'--- 5.0\n...\n','spree/calculator/shipping/flat_rate/amount/4','decimal','2014-01-02 03:26:21','2014-01-02 03:26:21'),(5,'--- EUR\n...\n','spree/calculator/shipping/flat_rate/currency/4','string','2014-01-02 03:26:21','2014-01-02 03:26:21'),(6,'--- 15.0\n...\n','spree/calculator/shipping/flat_rate/amount/3','decimal','2014-01-02 03:26:21','2014-01-02 03:26:21'),(7,'--- USD\n...\n','spree/calculator/shipping/flat_rate/currency/3','string','2014-01-02 03:26:21','2014-01-02 03:26:21'),(8,'--- 10.0\n...\n','spree/calculator/shipping/flat_rate/amount/2','decimal','2014-01-02 03:26:21','2014-01-02 03:26:21'),(9,'--- USD\n...\n','spree/calculator/shipping/flat_rate/currency/2','string','2014-01-02 03:26:21','2014-01-02 03:26:21'),(10,'--- USD\n...\n','spree/app_configuration/currency','string','2014-01-02 03:26:21','2014-01-02 03:26:23');
/*!40000 ALTER TABLE `spree_preferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_prices`
--

DROP TABLE IF EXISTS `spree_prices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_prices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `variant_id` int(11) NOT NULL,
  `amount` decimal(8,2) DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_prices`
--

LOCK TABLES `spree_prices` WRITE;
/*!40000 ALTER TABLE `spree_prices` DISABLE KEYS */;
INSERT INTO `spree_prices` VALUES (1,1,15.99,'USD'),(2,1,14.00,'EUR'),(3,2,22.99,'USD'),(4,2,19.00,'EUR'),(5,3,19.99,'USD'),(6,3,16.00,'EUR'),(7,4,19.99,'USD'),(8,4,16.00,'EUR'),(9,5,19.99,'USD'),(10,5,16.00,'EUR'),(11,6,19.99,'USD'),(12,6,16.00,'EUR'),(13,7,19.99,'USD'),(14,7,16.00,'EUR'),(15,8,19.99,'USD'),(16,8,16.00,'EUR'),(17,9,19.99,'USD'),(18,9,16.00,'EUR'),(19,10,19.99,'USD'),(20,10,16.00,'EUR'),(21,11,15.99,'USD'),(22,11,14.00,'EUR'),(23,12,22.99,'USD'),(24,12,19.00,'EUR'),(25,13,13.99,'USD'),(26,13,12.00,'EUR'),(27,14,16.99,'USD'),(28,14,14.00,'EUR'),(29,15,16.99,'USD'),(30,15,14.00,'EUR'),(31,16,13.99,'USD'),(32,16,12.00,'EUR'),(33,17,19.99,'USD'),(34,18,19.99,'USD'),(35,19,19.99,'USD'),(36,20,19.99,'USD'),(37,21,19.99,'USD'),(38,22,19.99,'USD'),(39,23,19.99,'USD'),(40,24,19.99,'USD'),(41,25,19.99,'USD'),(42,26,19.99,'USD');
/*!40000 ALTER TABLE `spree_prices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_product_option_types`
--

DROP TABLE IF EXISTS `spree_product_option_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_product_option_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `position` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `option_type_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_product_option_types`
--

LOCK TABLES `spree_product_option_types` WRITE;
/*!40000 ALTER TABLE `spree_product_option_types` DISABLE KEYS */;
INSERT INTO `spree_product_option_types` VALUES (1,1,3,1,'2014-01-02 03:26:24','2014-01-02 03:26:24'),(2,2,3,2,'2014-01-02 03:26:24','2014-01-02 03:26:24'),(3,1,8,1,'2014-01-02 03:26:24','2014-01-02 03:26:24'),(4,2,8,2,'2014-01-02 03:26:24','2014-01-02 03:26:24');
/*!40000 ALTER TABLE `spree_product_option_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_product_properties`
--

DROP TABLE IF EXISTS `spree_product_properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_product_properties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(255) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `property_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `position` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_product_properties_on_product_id` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_product_properties`
--

LOCK TABLES `spree_product_properties` WRITE;
/*!40000 ALTER TABLE `spree_product_properties` DISABLE KEYS */;
INSERT INTO `spree_product_properties` VALUES (1,'Wilson',3,1,'2014-01-02 03:26:24','2014-01-02 03:26:24',0),(2,'Wannabe Sports',3,2,'2014-01-02 03:26:24','2014-01-02 03:26:24',0),(3,'JK1002',3,3,'2014-01-02 03:26:24','2014-01-02 03:26:24',0),(4,'Baseball Jersey',3,4,'2014-01-02 03:26:24','2014-01-02 03:26:24',0),(5,'Long',3,5,'2014-01-02 03:26:24','2014-01-02 03:26:24',0),(6,'100% cotton',3,6,'2014-01-02 03:26:24','2014-01-02 03:26:24',0),(7,'Loose',3,7,'2014-01-02 03:26:24','2014-01-02 03:26:24',0),(8,'Men\'s',3,8,'2014-01-02 03:26:24','2014-01-02 03:26:24',0),(9,'Jerseys',4,1,'2014-01-02 03:26:24','2014-01-02 03:26:24',0),(10,'Resiliance',4,2,'2014-01-02 03:26:24','2014-01-02 03:26:24',0),(11,'TL174',4,3,'2014-01-02 03:26:24','2014-01-02 03:26:24',0),(12,'Jr. Spaghetti T',4,4,'2014-01-02 03:26:24','2014-01-02 03:26:24',0),(13,'None',4,5,'2014-01-02 03:26:24','2014-01-02 03:26:24',0),(14,'90% Cotton, 10% Nylon',4,6,'2014-01-02 03:26:24','2014-01-02 03:26:24',0),(15,'Form',4,7,'2014-01-02 03:26:24','2014-01-02 03:26:24',0),(16,'Women\'s',4,8,'2014-01-02 03:26:24','2014-01-02 03:26:24',0),(17,'Jerseys',5,1,'2014-01-02 03:26:24','2014-01-02 03:26:24',0),(18,'Conditioned',5,2,'2014-01-02 03:26:24','2014-01-02 03:26:24',0),(19,'TL9002',5,3,'2014-01-02 03:26:24','2014-01-02 03:26:24',0),(20,'Ringer T',5,4,'2014-01-02 03:26:24','2014-01-02 03:26:24',0),(21,'Short',5,5,'2014-01-02 03:26:24','2014-01-02 03:26:24',0),(22,'100% Vellum',5,6,'2014-01-02 03:26:24','2014-01-02 03:26:24',0),(23,'Loose',5,7,'2014-01-02 03:26:24','2014-01-02 03:26:24',0),(24,'Men\'s',5,8,'2014-01-02 03:26:24','2014-01-02 03:26:24',0),(25,'Tote',1,9,'2014-01-02 03:26:24','2014-01-02 03:26:24',0),(26,'15` x 18` x 6`',1,10,'2014-01-02 03:26:24','2014-01-02 03:26:24',0),(27,'Canvas',1,11,'2014-01-02 03:26:24','2014-01-02 03:26:24',0),(28,'Messenger',2,9,'2014-01-02 03:26:24','2014-01-02 03:26:24',0),(29,'14 1/2` x 12` x 5`',2,10,'2014-01-02 03:26:24','2014-01-02 03:26:24',0),(30,'600 Denier Polyester',2,11,'2014-01-02 03:26:24','2014-01-02 03:26:24',0),(31,'Mug',13,9,'2014-01-02 03:26:24','2014-01-02 03:26:24',0),(32,'4.5` tall, 3.25` dia.',13,10,'2014-01-02 03:26:24','2014-01-02 03:26:24',0),(33,'Stein',14,9,'2014-01-02 03:26:24','2014-01-02 03:26:24',0),(34,'6.75` tall, 3.75` dia. base, 3` dia. rim',14,10,'2014-01-02 03:26:24','2014-01-02 03:26:24',0),(35,'Stein',15,9,'2014-01-02 03:26:24','2014-01-02 03:26:24',0),(36,'6.75` tall, 3.75` dia. base, 3` dia. rim',15,10,'2014-01-02 03:26:24','2014-01-02 03:26:24',0),(37,'Mug',16,9,'2014-01-02 03:26:24','2014-01-02 03:26:24',0),(38,'4.5` tall, 3.25` dia.',16,10,'2014-01-02 03:26:24','2014-01-02 03:26:24',0),(39,'Tote',11,9,'2014-01-02 03:26:24','2014-01-02 03:26:24',0),(40,'15` x 18` x 6`',11,10,'2014-01-02 03:26:24','2014-01-02 03:26:24',0),(41,'Messenger',12,9,'2014-01-02 03:26:24','2014-01-02 03:26:24',0),(42,'14 1/2` x 12` x 5`',12,10,'2014-01-02 03:26:24','2014-01-02 03:26:24',0),(43,'Wilson',8,1,'2014-01-02 03:26:24','2014-01-02 03:26:24',0),(44,'Wannabe Sports',8,2,'2014-01-02 03:26:24','2014-01-02 03:26:24',0),(45,'JK1002',8,3,'2014-01-02 03:26:24','2014-01-02 03:26:24',0),(46,'Baseball Jersey',8,4,'2014-01-02 03:26:24','2014-01-02 03:26:24',0),(47,'Long',8,5,'2014-01-02 03:26:24','2014-01-02 03:26:24',0),(48,'100% cotton',8,6,'2014-01-02 03:26:24','2014-01-02 03:26:24',0),(49,'Loose',8,7,'2014-01-02 03:26:24','2014-01-02 03:26:24',0),(50,'Men\'s',8,8,'2014-01-02 03:26:24','2014-01-02 03:26:24',0),(51,'Jerseys',9,1,'2014-01-02 03:26:24','2014-01-02 03:26:24',0),(52,'Resiliance',9,2,'2014-01-02 03:26:24','2014-01-02 03:26:24',0),(53,'TL174',9,3,'2014-01-02 03:26:24','2014-01-02 03:26:24',0),(54,'Jr. Spaghetti T',9,4,'2014-01-02 03:26:24','2014-01-02 03:26:24',0),(55,'None',9,5,'2014-01-02 03:26:24','2014-01-02 03:26:24',0),(56,'90% Cotton, 10% Nylon',9,6,'2014-01-02 03:26:24','2014-01-02 03:26:24',0),(57,'Form',9,7,'2014-01-02 03:26:24','2014-01-02 03:26:24',0),(58,'Women\'s',9,8,'2014-01-02 03:26:24','2014-01-02 03:26:24',0),(59,'Jerseys',10,1,'2014-01-02 03:26:24','2014-01-02 03:26:24',0),(60,'Conditioned',10,2,'2014-01-02 03:26:24','2014-01-02 03:26:24',0),(61,'TL9002',10,3,'2014-01-02 03:26:24','2014-01-02 03:26:24',0),(62,'Ringer T',10,4,'2014-01-02 03:26:24','2014-01-02 03:26:24',0),(63,'Short',10,5,'2014-01-02 03:26:24','2014-01-02 03:26:24',0),(64,'100% Vellum',10,6,'2014-01-02 03:26:24','2014-01-02 03:26:24',0),(65,'Loose',10,7,'2014-01-02 03:26:24','2014-01-02 03:26:24',0),(66,'Men\'s',10,8,'2014-01-02 03:26:24','2014-01-02 03:26:24',0);
/*!40000 ALTER TABLE `spree_product_properties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_products`
--

DROP TABLE IF EXISTS `spree_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `available_on` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `permalink` varchar(255) DEFAULT NULL,
  `meta_description` text,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `tax_category_id` int(11) DEFAULT NULL,
  `shipping_category_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permalink_idx_unique` (`permalink`),
  KEY `index_spree_products_on_available_on` (`available_on`),
  KEY `index_spree_products_on_deleted_at` (`deleted_at`),
  KEY `index_spree_products_on_name` (`name`),
  KEY `index_spree_products_on_permalink` (`permalink`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_products`
--

LOCK TABLES `spree_products` WRITE;
/*!40000 ALTER TABLE `spree_products` DISABLE KEYS */;
INSERT INTO `spree_products` VALUES (1,'Ruby on Rails Tote','Dolorem quas voluptatum pariatur quo veniam et aut adipisci. Perspiciatis et exercitationem laudantium quod sunt. Repudiandae repellat non facere dolor ab. Et laboriosam exercitationem repellat quo impedit. Iste et omnis qui.','2014-01-02 03:26:21',NULL,'ruby-on-rails-tote',NULL,NULL,1,1,'2014-01-02 03:26:22','2014-01-02 03:27:01'),(2,'Ruby on Rails Bag','Dolorem quas voluptatum pariatur quo veniam et aut adipisci. Perspiciatis et exercitationem laudantium quod sunt. Repudiandae repellat non facere dolor ab. Et laboriosam exercitationem repellat quo impedit. Iste et omnis qui.','2014-01-02 03:26:21',NULL,'ruby-on-rails-bag',NULL,NULL,1,1,'2014-01-02 03:26:22','2014-01-02 03:27:03'),(3,'Ruby on Rails Baseball Jersey','Dolorem quas voluptatum pariatur quo veniam et aut adipisci. Perspiciatis et exercitationem laudantium quod sunt. Repudiandae repellat non facere dolor ab. Et laboriosam exercitationem repellat quo impedit. Iste et omnis qui.','2014-01-02 03:26:21',NULL,'ruby-on-rails-baseball-jersey',NULL,NULL,1,1,'2014-01-02 03:26:22','2014-01-02 03:27:06'),(4,'Ruby on Rails Jr. Spaghetti','Dolorem quas voluptatum pariatur quo veniam et aut adipisci. Perspiciatis et exercitationem laudantium quod sunt. Repudiandae repellat non facere dolor ab. Et laboriosam exercitationem repellat quo impedit. Iste et omnis qui.','2014-01-02 03:26:21',NULL,'ruby-on-rails-jr-spaghetti',NULL,NULL,1,1,'2014-01-02 03:26:22','2014-01-02 03:27:08'),(5,'Ruby on Rails Ringer T-Shirt','Dolorem quas voluptatum pariatur quo veniam et aut adipisci. Perspiciatis et exercitationem laudantium quod sunt. Repudiandae repellat non facere dolor ab. Et laboriosam exercitationem repellat quo impedit. Iste et omnis qui.','2014-01-02 03:26:21',NULL,'ruby-on-rails-ringer-t-shirt',NULL,NULL,1,1,'2014-01-02 03:26:22','2014-01-02 03:27:14'),(6,'Ruby Baseball Jersey','Dolorem quas voluptatum pariatur quo veniam et aut adipisci. Perspiciatis et exercitationem laudantium quod sunt. Repudiandae repellat non facere dolor ab. Et laboriosam exercitationem repellat quo impedit. Iste et omnis qui.','2014-01-02 03:26:21',NULL,'ruby-baseball-jersey',NULL,NULL,1,1,'2014-01-02 03:26:22','2014-01-02 03:27:21'),(7,'Apache Baseball Jersey','Dolorem quas voluptatum pariatur quo veniam et aut adipisci. Perspiciatis et exercitationem laudantium quod sunt. Repudiandae repellat non facere dolor ab. Et laboriosam exercitationem repellat quo impedit. Iste et omnis qui.','2014-01-02 03:26:21',NULL,'apache-baseball-jersey',NULL,NULL,1,1,'2014-01-02 03:26:22','2014-01-02 03:27:19'),(8,'Spree Baseball Jersey','Dolorem quas voluptatum pariatur quo veniam et aut adipisci. Perspiciatis et exercitationem laudantium quod sunt. Repudiandae repellat non facere dolor ab. Et laboriosam exercitationem repellat quo impedit. Iste et omnis qui.','2014-01-02 03:26:21',NULL,'spree-baseball-jersey',NULL,NULL,1,1,'2014-01-02 03:26:22','2014-01-02 03:27:33'),(9,'Spree Jr. Spaghetti','Dolorem quas voluptatum pariatur quo veniam et aut adipisci. Perspiciatis et exercitationem laudantium quod sunt. Repudiandae repellat non facere dolor ab. Et laboriosam exercitationem repellat quo impedit. Iste et omnis qui.','2014-01-02 03:26:21',NULL,'spree-jr-spaghetti',NULL,NULL,1,1,'2014-01-02 03:26:22','2014-01-02 03:27:30'),(10,'Spree Ringer T-Shirt','Dolorem quas voluptatum pariatur quo veniam et aut adipisci. Perspiciatis et exercitationem laudantium quod sunt. Repudiandae repellat non facere dolor ab. Et laboriosam exercitationem repellat quo impedit. Iste et omnis qui.','2014-01-02 03:26:21',NULL,'spree-ringer-t-shirt',NULL,NULL,1,1,'2014-01-02 03:26:22','2014-01-02 03:27:29'),(11,'Spree Tote','Dolorem quas voluptatum pariatur quo veniam et aut adipisci. Perspiciatis et exercitationem laudantium quod sunt. Repudiandae repellat non facere dolor ab. Et laboriosam exercitationem repellat quo impedit. Iste et omnis qui.','2014-01-02 03:26:21',NULL,'spree-tote',NULL,NULL,1,1,'2014-01-02 03:26:22','2014-01-02 03:27:25'),(12,'Spree Bag','Dolorem quas voluptatum pariatur quo veniam et aut adipisci. Perspiciatis et exercitationem laudantium quod sunt. Repudiandae repellat non facere dolor ab. Et laboriosam exercitationem repellat quo impedit. Iste et omnis qui.','2014-01-02 03:26:21',NULL,'spree-bag',NULL,NULL,1,1,'2014-01-02 03:26:23','2014-01-02 03:27:22'),(13,'Ruby on Rails Mug','Dolorem quas voluptatum pariatur quo veniam et aut adipisci. Perspiciatis et exercitationem laudantium quod sunt. Repudiandae repellat non facere dolor ab. Et laboriosam exercitationem repellat quo impedit. Iste et omnis qui.','2014-01-02 03:26:21',NULL,'ruby-on-rails-mug',NULL,NULL,NULL,1,'2014-01-02 03:26:23','2014-01-02 03:27:11'),(14,'Ruby on Rails Stein','Dolorem quas voluptatum pariatur quo veniam et aut adipisci. Perspiciatis et exercitationem laudantium quod sunt. Repudiandae repellat non facere dolor ab. Et laboriosam exercitationem repellat quo impedit. Iste et omnis qui.','2014-01-02 03:26:21',NULL,'ruby-on-rails-stein',NULL,NULL,NULL,1,'2014-01-02 03:26:23','2014-01-02 03:27:17'),(15,'Spree Stein','Dolorem quas voluptatum pariatur quo veniam et aut adipisci. Perspiciatis et exercitationem laudantium quod sunt. Repudiandae repellat non facere dolor ab. Et laboriosam exercitationem repellat quo impedit. Iste et omnis qui.','2014-01-02 03:26:21',NULL,'spree-stein',NULL,NULL,NULL,1,'2014-01-02 03:26:23','2014-01-02 03:27:37'),(16,'Spree Mug','Dolorem quas voluptatum pariatur quo veniam et aut adipisci. Perspiciatis et exercitationem laudantium quod sunt. Repudiandae repellat non facere dolor ab. Et laboriosam exercitationem repellat quo impedit. Iste et omnis qui.','2014-01-02 03:26:21',NULL,'spree-mug',NULL,NULL,NULL,1,'2014-01-02 03:26:23','2014-01-02 03:27:40');
/*!40000 ALTER TABLE `spree_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_products_promotion_rules`
--

DROP TABLE IF EXISTS `spree_products_promotion_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_products_promotion_rules` (
  `product_id` int(11) DEFAULT NULL,
  `promotion_rule_id` int(11) DEFAULT NULL,
  KEY `index_products_promotion_rules_on_product_id` (`product_id`),
  KEY `index_products_promotion_rules_on_promotion_rule_id` (`promotion_rule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_products_promotion_rules`
--

LOCK TABLES `spree_products_promotion_rules` WRITE;
/*!40000 ALTER TABLE `spree_products_promotion_rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_products_promotion_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_products_taxons`
--

DROP TABLE IF EXISTS `spree_products_taxons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_products_taxons` (
  `product_id` int(11) DEFAULT NULL,
  `taxon_id` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `index_spree_products_taxons_on_product_id` (`product_id`),
  KEY `index_spree_products_taxons_on_taxon_id` (`taxon_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_products_taxons`
--

LOCK TABLES `spree_products_taxons` WRITE;
/*!40000 ALTER TABLE `spree_products_taxons` DISABLE KEYS */;
INSERT INTO `spree_products_taxons` VALUES (1,3,1),(2,3,2),(11,3,3),(12,3,4),(13,4,5),(14,4,6),(15,4,7),(16,4,8),(4,6,9),(9,6,10),(3,7,11),(5,7,12),(7,7,13),(6,7,14),(8,7,15),(10,7,16);
/*!40000 ALTER TABLE `spree_products_taxons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_promotion_action_line_items`
--

DROP TABLE IF EXISTS `spree_promotion_action_line_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_promotion_action_line_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `promotion_action_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_promotion_action_line_items`
--

LOCK TABLES `spree_promotion_action_line_items` WRITE;
/*!40000 ALTER TABLE `spree_promotion_action_line_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_promotion_action_line_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_promotion_actions`
--

DROP TABLE IF EXISTS `spree_promotion_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_promotion_actions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activator_id` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_promotion_actions`
--

LOCK TABLES `spree_promotion_actions` WRITE;
/*!40000 ALTER TABLE `spree_promotion_actions` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_promotion_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_promotion_rules`
--

DROP TABLE IF EXISTS `spree_promotion_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_promotion_rules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activator_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_group_id` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_promotion_rules_on_product_group_id` (`product_group_id`),
  KEY `index_promotion_rules_on_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_promotion_rules`
--

LOCK TABLES `spree_promotion_rules` WRITE;
/*!40000 ALTER TABLE `spree_promotion_rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_promotion_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_promotion_rules_users`
--

DROP TABLE IF EXISTS `spree_promotion_rules_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_promotion_rules_users` (
  `user_id` int(11) DEFAULT NULL,
  `promotion_rule_id` int(11) DEFAULT NULL,
  KEY `index_promotion_rules_users_on_promotion_rule_id` (`promotion_rule_id`),
  KEY `index_promotion_rules_users_on_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_promotion_rules_users`
--

LOCK TABLES `spree_promotion_rules_users` WRITE;
/*!40000 ALTER TABLE `spree_promotion_rules_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_promotion_rules_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_properties`
--

DROP TABLE IF EXISTS `spree_properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_properties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `presentation` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_properties`
--

LOCK TABLES `spree_properties` WRITE;
/*!40000 ALTER TABLE `spree_properties` DISABLE KEYS */;
INSERT INTO `spree_properties` VALUES (1,'Manufacturer','Manufacturer','2014-01-02 03:26:24','2014-01-02 03:26:24'),(2,'Brand','Brand','2014-01-02 03:26:24','2014-01-02 03:26:24'),(3,'Model','Model','2014-01-02 03:26:24','2014-01-02 03:26:24'),(4,'Shirt Type','Shirt Type','2014-01-02 03:26:24','2014-01-02 03:26:24'),(5,'Sleeve Type','Sleeve Type','2014-01-02 03:26:24','2014-01-02 03:26:24'),(6,'Made from','Made from','2014-01-02 03:26:24','2014-01-02 03:26:24'),(7,'Fit','Fit','2014-01-02 03:26:24','2014-01-02 03:26:24'),(8,'Gender','Gender','2014-01-02 03:26:24','2014-01-02 03:26:24'),(9,'Type','Type','2014-01-02 03:26:24','2014-01-02 03:26:24'),(10,'Size','Size','2014-01-02 03:26:24','2014-01-02 03:26:24'),(11,'Material','Material','2014-01-02 03:26:24','2014-01-02 03:26:24');
/*!40000 ALTER TABLE `spree_properties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_properties_prototypes`
--

DROP TABLE IF EXISTS `spree_properties_prototypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_properties_prototypes` (
  `prototype_id` int(11) DEFAULT NULL,
  `property_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_properties_prototypes`
--

LOCK TABLES `spree_properties_prototypes` WRITE;
/*!40000 ALTER TABLE `spree_properties_prototypes` DISABLE KEYS */;
INSERT INTO `spree_properties_prototypes` VALUES (1,1),(1,2),(1,3),(1,4),(1,5),(1,11),(1,7),(1,8),(2,9),(2,10),(2,11),(3,10),(3,9);
/*!40000 ALTER TABLE `spree_properties_prototypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_prototypes`
--

DROP TABLE IF EXISTS `spree_prototypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_prototypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_prototypes`
--

LOCK TABLES `spree_prototypes` WRITE;
/*!40000 ALTER TABLE `spree_prototypes` DISABLE KEYS */;
INSERT INTO `spree_prototypes` VALUES (1,'Shirt','2014-01-02 03:26:24','2014-01-02 03:26:24'),(2,'Bag','2014-01-02 03:26:24','2014-01-02 03:26:24'),(3,'Mugs','2014-01-02 03:26:24','2014-01-02 03:26:24');
/*!40000 ALTER TABLE `spree_prototypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_return_authorizations`
--

DROP TABLE IF EXISTS `spree_return_authorizations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_return_authorizations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `order_id` int(11) DEFAULT NULL,
  `reason` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `stock_location_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_return_authorizations`
--

LOCK TABLES `spree_return_authorizations` WRITE;
/*!40000 ALTER TABLE `spree_return_authorizations` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_return_authorizations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_roles`
--

DROP TABLE IF EXISTS `spree_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_roles`
--

LOCK TABLES `spree_roles` WRITE;
/*!40000 ALTER TABLE `spree_roles` DISABLE KEYS */;
INSERT INTO `spree_roles` VALUES (1,'admin'),(2,'user');
/*!40000 ALTER TABLE `spree_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_roles_users`
--

DROP TABLE IF EXISTS `spree_roles_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_roles_users` (
  `role_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  KEY `index_spree_roles_users_on_role_id` (`role_id`),
  KEY `index_spree_roles_users_on_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_roles_users`
--

LOCK TABLES `spree_roles_users` WRITE;
/*!40000 ALTER TABLE `spree_roles_users` DISABLE KEYS */;
INSERT INTO `spree_roles_users` VALUES (1,1);
/*!40000 ALTER TABLE `spree_roles_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_shipments`
--

DROP TABLE IF EXISTS `spree_shipments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_shipments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tracking` varchar(255) DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `cost` decimal(8,2) DEFAULT NULL,
  `shipped_at` datetime DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `address_id` int(11) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `stock_location_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_shipments_on_number` (`number`),
  KEY `index_spree_shipments_on_order_id` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_shipments`
--

LOCK TABLES `spree_shipments` WRITE;
/*!40000 ALTER TABLE `spree_shipments` DISABLE KEYS */;
INSERT INTO `spree_shipments` VALUES (1,NULL,'217635427',NULL,NULL,1,NULL,'pending','2014-01-02 03:27:41','2014-01-02 03:27:41',1),(2,NULL,'580687623',NULL,NULL,2,NULL,'pending','2014-01-02 03:27:41','2014-01-02 03:27:41',1);
/*!40000 ALTER TABLE `spree_shipments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_shipping_categories`
--

DROP TABLE IF EXISTS `spree_shipping_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_shipping_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_shipping_categories`
--

LOCK TABLES `spree_shipping_categories` WRITE;
/*!40000 ALTER TABLE `spree_shipping_categories` DISABLE KEYS */;
INSERT INTO `spree_shipping_categories` VALUES (1,'Default','2014-01-02 03:25:49','2014-01-02 03:25:49'),(2,'Default','2014-01-02 03:26:21','2014-01-02 03:26:21');
/*!40000 ALTER TABLE `spree_shipping_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_shipping_method_categories`
--

DROP TABLE IF EXISTS `spree_shipping_method_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_shipping_method_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shipping_method_id` int(11) NOT NULL,
  `shipping_category_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_shipping_method_categories_on_shipping_category_id` (`shipping_category_id`),
  KEY `index_spree_shipping_method_categories_on_shipping_method_id` (`shipping_method_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_shipping_method_categories`
--

LOCK TABLES `spree_shipping_method_categories` WRITE;
/*!40000 ALTER TABLE `spree_shipping_method_categories` DISABLE KEYS */;
INSERT INTO `spree_shipping_method_categories` VALUES (1,1,1,'2014-01-02 03:26:21','2014-01-02 03:26:21'),(2,2,1,'2014-01-02 03:26:21','2014-01-02 03:26:21'),(3,3,1,'2014-01-02 03:26:21','2014-01-02 03:26:21'),(4,4,1,'2014-01-02 03:26:21','2014-01-02 03:26:21'),(5,1,1,'2014-01-02 03:26:21','2014-01-02 03:26:21'),(6,4,1,'2014-01-02 03:26:21','2014-01-02 03:26:21'),(7,3,1,'2014-01-02 03:26:21','2014-01-02 03:26:21'),(8,2,1,'2014-01-02 03:26:21','2014-01-02 03:26:21');
/*!40000 ALTER TABLE `spree_shipping_method_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_shipping_methods`
--

DROP TABLE IF EXISTS `spree_shipping_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_shipping_methods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `display_on` varchar(255) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `tracking_url` varchar(255) DEFAULT NULL,
  `admin_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_shipping_methods`
--

LOCK TABLES `spree_shipping_methods` WRITE;
/*!40000 ALTER TABLE `spree_shipping_methods` DISABLE KEYS */;
INSERT INTO `spree_shipping_methods` VALUES (1,'UPS Ground (USD)',NULL,NULL,'2014-01-02 03:26:21','2014-01-02 03:26:21',NULL,NULL),(2,'UPS Two Day (USD)',NULL,NULL,'2014-01-02 03:26:21','2014-01-02 03:26:21',NULL,NULL),(3,'UPS One Day (USD)',NULL,NULL,'2014-01-02 03:26:21','2014-01-02 03:26:21',NULL,NULL),(4,'UPS Ground (EUR)',NULL,NULL,'2014-01-02 03:26:21','2014-01-02 03:26:21',NULL,NULL);
/*!40000 ALTER TABLE `spree_shipping_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_shipping_methods_zones`
--

DROP TABLE IF EXISTS `spree_shipping_methods_zones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_shipping_methods_zones` (
  `shipping_method_id` int(11) DEFAULT NULL,
  `zone_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_shipping_methods_zones`
--

LOCK TABLES `spree_shipping_methods_zones` WRITE;
/*!40000 ALTER TABLE `spree_shipping_methods_zones` DISABLE KEYS */;
INSERT INTO `spree_shipping_methods_zones` VALUES (1,2),(2,2),(3,2),(4,1);
/*!40000 ALTER TABLE `spree_shipping_methods_zones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_shipping_rates`
--

DROP TABLE IF EXISTS `spree_shipping_rates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_shipping_rates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shipment_id` int(11) DEFAULT NULL,
  `shipping_method_id` int(11) DEFAULT NULL,
  `selected` tinyint(1) DEFAULT '0',
  `cost` decimal(8,2) DEFAULT '0.00',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `spree_shipping_rates_join_index` (`shipment_id`,`shipping_method_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_shipping_rates`
--

LOCK TABLES `spree_shipping_rates` WRITE;
/*!40000 ALTER TABLE `spree_shipping_rates` DISABLE KEYS */;
INSERT INTO `spree_shipping_rates` VALUES (1,1,1,1,5.00,'2014-01-02 03:27:41','2014-01-02 03:27:41'),(2,1,2,0,10.00,'2014-01-02 03:27:41','2014-01-02 03:27:41'),(3,1,3,0,15.00,'2014-01-02 03:27:41','2014-01-02 03:27:41'),(4,2,1,1,5.00,'2014-01-02 03:27:41','2014-01-02 03:27:41'),(5,2,2,0,10.00,'2014-01-02 03:27:41','2014-01-02 03:27:41'),(6,2,3,0,15.00,'2014-01-02 03:27:41','2014-01-02 03:27:41');
/*!40000 ALTER TABLE `spree_shipping_rates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_skrill_transactions`
--

DROP TABLE IF EXISTS `spree_skrill_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_skrill_transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `transaction_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `payment_type` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_skrill_transactions`
--

LOCK TABLES `spree_skrill_transactions` WRITE;
/*!40000 ALTER TABLE `spree_skrill_transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_skrill_transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_state_changes`
--

DROP TABLE IF EXISTS `spree_state_changes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_state_changes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `previous_state` varchar(255) DEFAULT NULL,
  `stateful_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `stateful_type` varchar(255) DEFAULT NULL,
  `next_state` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_state_changes`
--

LOCK TABLES `spree_state_changes` WRITE;
/*!40000 ALTER TABLE `spree_state_changes` DISABLE KEYS */;
INSERT INTO `spree_state_changes` VALUES (1,'payment',NULL,1,NULL,'Spree::Order','balance_due','2014-01-02 03:27:41','2014-01-02 03:27:41'),(2,'shipment',NULL,1,NULL,'Spree::Order','pending','2014-01-02 03:27:41','2014-01-02 03:27:41'),(3,'payment',NULL,2,NULL,'Spree::Order','balance_due','2014-01-02 03:27:41','2014-01-02 03:27:41'),(4,'shipment',NULL,2,NULL,'Spree::Order','pending','2014-01-02 03:27:41','2014-01-02 03:27:41'),(5,'payment','balance_due',1,NULL,'Spree::Order','balance_due','2014-01-02 03:27:41','2014-01-02 03:27:41'),(6,'shipment','pending',1,NULL,'Spree::Order','pending','2014-01-02 03:27:41','2014-01-02 03:27:41'),(7,'payment','balance_due',2,NULL,'Spree::Order','balance_due','2014-01-02 03:27:41','2014-01-02 03:27:41'),(8,'shipment','pending',2,NULL,'Spree::Order','pending','2014-01-02 03:27:41','2014-01-02 03:27:41'),(9,'payment','balance_due',1,NULL,'Spree::Order','balance_due','2014-01-02 03:27:41','2014-01-02 03:27:41'),(10,'shipment','pending',1,NULL,'Spree::Order','pending','2014-01-02 03:27:41','2014-01-02 03:27:41'),(11,'payment','balance_due',1,NULL,'Spree::Order','balance_due','2014-01-02 03:27:41','2014-01-02 03:27:41'),(12,'shipment','pending',1,NULL,'Spree::Order','pending','2014-01-02 03:27:41','2014-01-02 03:27:41'),(13,'payment','balance_due',2,NULL,'Spree::Order','balance_due','2014-01-02 03:27:41','2014-01-02 03:27:41'),(14,'shipment','pending',2,NULL,'Spree::Order','pending','2014-01-02 03:27:41','2014-01-02 03:27:41'),(15,'payment','balance_due',2,NULL,'Spree::Order','balance_due','2014-01-02 03:27:41','2014-01-02 03:27:41'),(16,'shipment','pending',2,NULL,'Spree::Order','pending','2014-01-02 03:27:41','2014-01-02 03:27:41');
/*!40000 ALTER TABLE `spree_state_changes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_states`
--

DROP TABLE IF EXISTS `spree_states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_states` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `abbr` varchar(255) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_states`
--

LOCK TABLES `spree_states` WRITE;
/*!40000 ALTER TABLE `spree_states` DISABLE KEYS */;
INSERT INTO `spree_states` VALUES (1,'Michigan','MI',49,'2014-01-02 03:26:05'),(2,'South Dakota','SD',49,'2014-01-02 03:26:05'),(3,'Washington','WA',49,'2014-01-02 03:26:05'),(4,'Wisconsin','WI',49,'2014-01-02 03:26:05'),(5,'Arizona','AZ',49,'2014-01-02 03:26:05'),(6,'Illinois','IL',49,'2014-01-02 03:26:05'),(7,'New Hampshire','NH',49,'2014-01-02 03:26:05'),(8,'North Carolina','NC',49,'2014-01-02 03:26:05'),(9,'Kansas','KS',49,'2014-01-02 03:26:05'),(10,'Missouri','MO',49,'2014-01-02 03:26:05'),(11,'Arkansas','AR',49,'2014-01-02 03:26:05'),(12,'Nevada','NV',49,'2014-01-02 03:26:05'),(13,'District of Columbia','DC',49,'2014-01-02 03:26:05'),(14,'Idaho','ID',49,'2014-01-02 03:26:05'),(15,'Nebraska','NE',49,'2014-01-02 03:26:05'),(16,'Pennsylvania','PA',49,'2014-01-02 03:26:05'),(17,'Hawaii','HI',49,'2014-01-02 03:26:05'),(18,'Utah','UT',49,'2014-01-02 03:26:05'),(19,'Vermont','VT',49,'2014-01-02 03:26:05'),(20,'Delaware','DE',49,'2014-01-02 03:26:05'),(21,'Rhode Island','RI',49,'2014-01-02 03:26:05'),(22,'Oklahoma','OK',49,'2014-01-02 03:26:05'),(23,'Louisiana','LA',49,'2014-01-02 03:26:05'),(24,'Montana','MT',49,'2014-01-02 03:26:05'),(25,'Tennessee','TN',49,'2014-01-02 03:26:05'),(26,'Maryland','MD',49,'2014-01-02 03:26:05'),(27,'Florida','FL',49,'2014-01-02 03:26:05'),(28,'Virginia','VA',49,'2014-01-02 03:26:05'),(29,'Minnesota','MN',49,'2014-01-02 03:26:05'),(30,'New Jersey','NJ',49,'2014-01-02 03:26:05'),(31,'Ohio','OH',49,'2014-01-02 03:26:05'),(32,'California','CA',49,'2014-01-02 03:26:05'),(33,'North Dakota','ND',49,'2014-01-02 03:26:05'),(34,'Maine','ME',49,'2014-01-02 03:26:05'),(35,'Indiana','IN',49,'2014-01-02 03:26:06'),(36,'Texas','TX',49,'2014-01-02 03:26:06'),(37,'Oregon','OR',49,'2014-01-02 03:26:06'),(38,'Wyoming','WY',49,'2014-01-02 03:26:06'),(39,'Alabama','AL',49,'2014-01-02 03:26:06'),(40,'Iowa','IA',49,'2014-01-02 03:26:06'),(41,'Mississippi','MS',49,'2014-01-02 03:26:06'),(42,'Kentucky','KY',49,'2014-01-02 03:26:06'),(43,'New Mexico','NM',49,'2014-01-02 03:26:06'),(44,'Georgia','GA',49,'2014-01-02 03:26:06'),(45,'Colorado','CO',49,'2014-01-02 03:26:06'),(46,'Massachusetts','MA',49,'2014-01-02 03:26:06'),(47,'Connecticut','CT',49,'2014-01-02 03:26:06'),(48,'New York','NY',49,'2014-01-02 03:26:06'),(49,'South Carolina','SC',49,'2014-01-02 03:26:06'),(50,'Alaska','AK',49,'2014-01-02 03:26:06'),(51,'West Virginia','WV',49,'2014-01-02 03:26:06'),(52,'U.S. Armed Forces - Americas','AA',49,'2014-01-02 03:26:06'),(53,'U.S. Armed Forces - Europe','AE',49,'2014-01-02 03:26:06'),(54,'U.S. Armed Forces - Pacific','AP',49,'2014-01-02 03:26:06');
/*!40000 ALTER TABLE `spree_states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_stock_items`
--

DROP TABLE IF EXISTS `spree_stock_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_stock_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stock_location_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `count_on_hand` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `backorderable` tinyint(1) DEFAULT '0',
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_stock_items_on_stock_location_id` (`stock_location_id`),
  KEY `stock_item_by_loc_and_var_id` (`stock_location_id`,`variant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_stock_items`
--

LOCK TABLES `spree_stock_items` WRITE;
/*!40000 ALTER TABLE `spree_stock_items` DISABLE KEYS */;
INSERT INTO `spree_stock_items` VALUES (1,1,1,10,'2014-01-02 03:26:22','2014-01-02 03:26:25',1,NULL),(2,1,2,10,'2014-01-02 03:26:22','2014-01-02 03:26:25',1,NULL),(3,1,3,10,'2014-01-02 03:26:22','2014-01-02 03:26:25',1,NULL),(4,1,4,10,'2014-01-02 03:26:22','2014-01-02 03:26:25',1,NULL),(5,1,5,10,'2014-01-02 03:26:22','2014-01-02 03:26:25',1,NULL),(6,1,6,10,'2014-01-02 03:26:22','2014-01-02 03:26:25',1,NULL),(7,1,7,10,'2014-01-02 03:26:22','2014-01-02 03:26:25',1,NULL),(8,1,8,10,'2014-01-02 03:26:22','2014-01-02 03:26:25',1,NULL),(9,1,9,10,'2014-01-02 03:26:22','2014-01-02 03:26:25',1,NULL),(10,1,10,10,'2014-01-02 03:26:22','2014-01-02 03:26:25',1,NULL),(11,1,11,10,'2014-01-02 03:26:22','2014-01-02 03:26:25',1,NULL),(12,1,12,10,'2014-01-02 03:26:23','2014-01-02 03:26:25',1,NULL),(13,1,13,10,'2014-01-02 03:26:23','2014-01-02 03:26:25',1,NULL),(14,1,14,10,'2014-01-02 03:26:23','2014-01-02 03:26:25',1,NULL),(15,1,15,10,'2014-01-02 03:26:23','2014-01-02 03:26:25',1,NULL),(16,1,16,10,'2014-01-02 03:26:23','2014-01-02 03:26:25',1,NULL),(17,1,17,10,'2014-01-02 03:26:24','2014-01-02 03:26:25',1,NULL),(18,1,18,10,'2014-01-02 03:26:24','2014-01-02 03:26:25',1,NULL),(19,1,19,10,'2014-01-02 03:26:24','2014-01-02 03:26:25',1,NULL),(20,1,20,10,'2014-01-02 03:26:24','2014-01-02 03:26:25',1,NULL),(21,1,21,10,'2014-01-02 03:26:24','2014-01-02 03:26:25',1,NULL),(22,1,22,10,'2014-01-02 03:26:25','2014-01-02 03:26:25',1,NULL),(23,1,23,10,'2014-01-02 03:26:25','2014-01-02 03:26:25',1,NULL),(24,1,24,10,'2014-01-02 03:26:25','2014-01-02 03:26:25',1,NULL),(25,1,25,10,'2014-01-02 03:26:25','2014-01-02 03:26:25',1,NULL),(26,1,26,10,'2014-01-02 03:26:25','2014-01-02 03:26:25',1,NULL);
/*!40000 ALTER TABLE `spree_stock_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_stock_locations`
--

DROP TABLE IF EXISTS `spree_stock_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_stock_locations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `address1` varchar(255) DEFAULT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `state_name` varchar(255) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `zipcode` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `backorderable_default` tinyint(1) DEFAULT '0',
  `propagate_all_variants` tinyint(1) DEFAULT '1',
  `admin_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_stock_locations`
--

LOCK TABLES `spree_stock_locations` WRITE;
/*!40000 ALTER TABLE `spree_stock_locations` DISABLE KEYS */;
INSERT INTO `spree_stock_locations` VALUES (1,'default','2014-01-02 03:25:48','2014-01-02 03:26:25',NULL,NULL,NULL,NULL,NULL,49,NULL,NULL,1,1,1,NULL);
/*!40000 ALTER TABLE `spree_stock_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_stock_movements`
--

DROP TABLE IF EXISTS `spree_stock_movements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_stock_movements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stock_item_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT '0',
  `action` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `originator_id` int(11) DEFAULT NULL,
  `originator_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_stock_movements_on_stock_item_id` (`stock_item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_stock_movements`
--

LOCK TABLES `spree_stock_movements` WRITE;
/*!40000 ALTER TABLE `spree_stock_movements` DISABLE KEYS */;
INSERT INTO `spree_stock_movements` VALUES (1,1,10,NULL,'2014-01-02 03:26:25','2014-01-02 03:26:25',NULL,NULL),(2,2,10,NULL,'2014-01-02 03:26:25','2014-01-02 03:26:25',NULL,NULL),(3,3,10,NULL,'2014-01-02 03:26:25','2014-01-02 03:26:25',NULL,NULL),(4,4,10,NULL,'2014-01-02 03:26:25','2014-01-02 03:26:25',NULL,NULL),(5,5,10,NULL,'2014-01-02 03:26:25','2014-01-02 03:26:25',NULL,NULL),(6,6,10,NULL,'2014-01-02 03:26:25','2014-01-02 03:26:25',NULL,NULL),(7,7,10,NULL,'2014-01-02 03:26:25','2014-01-02 03:26:25',NULL,NULL),(8,8,10,NULL,'2014-01-02 03:26:25','2014-01-02 03:26:25',NULL,NULL),(9,9,10,NULL,'2014-01-02 03:26:25','2014-01-02 03:26:25',NULL,NULL),(10,10,10,NULL,'2014-01-02 03:26:25','2014-01-02 03:26:25',NULL,NULL),(11,11,10,NULL,'2014-01-02 03:26:25','2014-01-02 03:26:25',NULL,NULL),(12,12,10,NULL,'2014-01-02 03:26:25','2014-01-02 03:26:25',NULL,NULL),(13,13,10,NULL,'2014-01-02 03:26:25','2014-01-02 03:26:25',NULL,NULL),(14,14,10,NULL,'2014-01-02 03:26:25','2014-01-02 03:26:25',NULL,NULL),(15,15,10,NULL,'2014-01-02 03:26:25','2014-01-02 03:26:25',NULL,NULL),(16,16,10,NULL,'2014-01-02 03:26:25','2014-01-02 03:26:25',NULL,NULL),(17,17,10,NULL,'2014-01-02 03:26:25','2014-01-02 03:26:25',NULL,NULL),(18,18,10,NULL,'2014-01-02 03:26:25','2014-01-02 03:26:25',NULL,NULL),(19,19,10,NULL,'2014-01-02 03:26:25','2014-01-02 03:26:25',NULL,NULL),(20,20,10,NULL,'2014-01-02 03:26:25','2014-01-02 03:26:25',NULL,NULL),(21,21,10,NULL,'2014-01-02 03:26:25','2014-01-02 03:26:25',NULL,NULL),(22,22,10,NULL,'2014-01-02 03:26:25','2014-01-02 03:26:25',NULL,NULL),(23,23,10,NULL,'2014-01-02 03:26:25','2014-01-02 03:26:25',NULL,NULL),(24,24,10,NULL,'2014-01-02 03:26:25','2014-01-02 03:26:25',NULL,NULL),(25,25,10,NULL,'2014-01-02 03:26:25','2014-01-02 03:26:25',NULL,NULL),(26,26,10,NULL,'2014-01-02 03:26:25','2014-01-02 03:26:25',NULL,NULL);
/*!40000 ALTER TABLE `spree_stock_movements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_stock_transfers`
--

DROP TABLE IF EXISTS `spree_stock_transfers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_stock_transfers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `reference` varchar(255) DEFAULT NULL,
  `source_location_id` int(11) DEFAULT NULL,
  `destination_location_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_stock_transfers_on_destination_location_id` (`destination_location_id`),
  KEY `index_spree_stock_transfers_on_number` (`number`),
  KEY `index_spree_stock_transfers_on_source_location_id` (`source_location_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_stock_transfers`
--

LOCK TABLES `spree_stock_transfers` WRITE;
/*!40000 ALTER TABLE `spree_stock_transfers` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_stock_transfers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_tax_categories`
--

DROP TABLE IF EXISTS `spree_tax_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_tax_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT '0',
  `deleted_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_tax_categories`
--

LOCK TABLES `spree_tax_categories` WRITE;
/*!40000 ALTER TABLE `spree_tax_categories` DISABLE KEYS */;
INSERT INTO `spree_tax_categories` VALUES (1,'Clothing',NULL,0,NULL,'2014-01-02 03:26:21','2014-01-02 03:26:21'),(2,'Food',NULL,0,NULL,'2014-01-02 03:26:21','2014-01-02 03:26:21');
/*!40000 ALTER TABLE `spree_tax_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_tax_rates`
--

DROP TABLE IF EXISTS `spree_tax_rates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_tax_rates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` decimal(8,5) DEFAULT NULL,
  `zone_id` int(11) DEFAULT NULL,
  `tax_category_id` int(11) DEFAULT NULL,
  `included_in_price` tinyint(1) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `show_rate_in_label` tinyint(1) DEFAULT '1',
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_tax_rates`
--

LOCK TABLES `spree_tax_rates` WRITE;
/*!40000 ALTER TABLE `spree_tax_rates` DISABLE KEYS */;
INSERT INTO `spree_tax_rates` VALUES (1,0.05000,2,1,0,'2014-01-02 03:26:21','2014-01-02 03:26:21','North America',1,NULL);
/*!40000 ALTER TABLE `spree_tax_rates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_taxonomies`
--

DROP TABLE IF EXISTS `spree_taxonomies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_taxonomies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `position` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_taxonomies`
--

LOCK TABLES `spree_taxonomies` WRITE;
/*!40000 ALTER TABLE `spree_taxonomies` DISABLE KEYS */;
INSERT INTO `spree_taxonomies` VALUES (1,'Categories','2014-01-02 03:26:23','2014-01-02 03:26:23',0),(2,'Brand','2014-01-02 03:26:23','2014-01-02 03:26:23',0);
/*!40000 ALTER TABLE `spree_taxonomies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_taxons`
--

DROP TABLE IF EXISTS `spree_taxons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_taxons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `permalink` varchar(255) DEFAULT NULL,
  `taxonomy_id` int(11) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  `icon_file_name` varchar(255) DEFAULT NULL,
  `icon_content_type` varchar(255) DEFAULT NULL,
  `icon_file_size` int(11) DEFAULT NULL,
  `icon_updated_at` datetime DEFAULT NULL,
  `description` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `depth` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_taxons_on_parent_id` (`parent_id`),
  KEY `index_taxons_on_permalink` (`permalink`),
  KEY `index_taxons_on_taxonomy_id` (`taxonomy_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_taxons`
--

LOCK TABLES `spree_taxons` WRITE;
/*!40000 ALTER TABLE `spree_taxons` DISABLE KEYS */;
INSERT INTO `spree_taxons` VALUES (1,NULL,0,'Categories','categories',1,1,12,NULL,NULL,NULL,NULL,NULL,'2014-01-02 03:26:23','2014-01-02 03:26:23',NULL,NULL,NULL,0),(2,NULL,0,'Brand','brand',2,13,22,NULL,NULL,NULL,NULL,NULL,'2014-01-02 03:26:23','2014-01-02 03:26:23',NULL,NULL,NULL,0),(3,1,1,'Bags','categories/bags',1,2,3,NULL,NULL,NULL,NULL,NULL,'2014-01-02 03:26:23','2014-01-02 03:26:23',NULL,NULL,NULL,1),(4,1,2,'Mugs','categories/mugs',1,4,5,NULL,NULL,NULL,NULL,NULL,'2014-01-02 03:26:23','2014-01-02 03:26:23',NULL,NULL,NULL,1),(5,1,0,'Clothing','categories/clothing',1,6,11,NULL,NULL,NULL,NULL,NULL,'2014-01-02 03:26:23','2014-01-02 03:26:23',NULL,NULL,NULL,1),(6,5,0,'Shirts','categories/clothing/shirts',1,7,8,NULL,NULL,NULL,NULL,NULL,'2014-01-02 03:26:23','2014-01-02 03:26:23',NULL,NULL,NULL,2),(7,5,0,'T-Shirts','categories/clothing/t-shirts',1,9,10,NULL,NULL,NULL,NULL,NULL,'2014-01-02 03:26:23','2014-01-02 03:26:23',NULL,NULL,NULL,2),(8,2,0,'Ruby','brand/ruby',2,14,15,NULL,NULL,NULL,NULL,NULL,'2014-01-02 03:26:23','2014-01-02 03:26:23',NULL,NULL,NULL,1),(9,2,0,'Apache','brand/apache',2,16,17,NULL,NULL,NULL,NULL,NULL,'2014-01-02 03:26:23','2014-01-02 03:26:23',NULL,NULL,NULL,1),(10,2,0,'Spree','brand/spree',2,18,19,NULL,NULL,NULL,NULL,NULL,'2014-01-02 03:26:23','2014-01-02 03:26:23',NULL,NULL,NULL,1),(11,2,0,'Rails','brand/rails',2,20,21,NULL,NULL,NULL,NULL,NULL,'2014-01-02 03:26:23','2014-01-02 03:26:23',NULL,NULL,NULL,1);
/*!40000 ALTER TABLE `spree_taxons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_tokenized_permissions`
--

DROP TABLE IF EXISTS `spree_tokenized_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_tokenized_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permissable_id` int(11) DEFAULT NULL,
  `permissable_type` varchar(255) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_tokenized_name_and_type` (`permissable_id`,`permissable_type`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_tokenized_permissions`
--

LOCK TABLES `spree_tokenized_permissions` WRITE;
/*!40000 ALTER TABLE `spree_tokenized_permissions` DISABLE KEYS */;
INSERT INTO `spree_tokenized_permissions` VALUES (1,1,'Spree::Order','c5e6f79501fe38c2','2014-01-02 03:27:40','2014-01-02 03:27:40'),(2,2,'Spree::Order','108b9bd565fa018d','2014-01-02 03:27:40','2014-01-02 03:27:40');
/*!40000 ALTER TABLE `spree_tokenized_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_trackers`
--

DROP TABLE IF EXISTS `spree_trackers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_trackers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `environment` varchar(255) DEFAULT NULL,
  `analytics_id` varchar(255) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_trackers`
--

LOCK TABLES `spree_trackers` WRITE;
/*!40000 ALTER TABLE `spree_trackers` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_trackers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_users`
--

DROP TABLE IF EXISTS `spree_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `encrypted_password` varchar(128) DEFAULT NULL,
  `password_salt` varchar(128) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `persistence_token` varchar(255) DEFAULT NULL,
  `reset_password_token` varchar(255) DEFAULT NULL,
  `perishable_token` varchar(255) DEFAULT NULL,
  `sign_in_count` int(11) NOT NULL DEFAULT '0',
  `failed_attempts` int(11) NOT NULL DEFAULT '0',
  `last_request_at` datetime DEFAULT NULL,
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) DEFAULT NULL,
  `last_sign_in_ip` varchar(255) DEFAULT NULL,
  `login` varchar(255) DEFAULT NULL,
  `ship_address_id` int(11) DEFAULT NULL,
  `bill_address_id` int(11) DEFAULT NULL,
  `authentication_token` varchar(255) DEFAULT NULL,
  `unlock_token` varchar(255) DEFAULT NULL,
  `locked_at` datetime DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `spree_api_key` varchar(48) DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_idx_unique` (`email`),
  KEY `index_spree_users_on_spree_api_key` (`spree_api_key`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_users`
--

LOCK TABLES `spree_users` WRITE;
/*!40000 ALTER TABLE `spree_users` DISABLE KEYS */;
INSERT INTO `spree_users` VALUES (1,'38db8359a6bed53c2ca432ff4da7c3ebf7b192d7abaf335ee79f60cd0e2a6eb7f53807b5c9ea9c5b056569f5b7013d8820f711c681b8791e0bc1716a41f8cfa9','ymGJzxTzFvKtzhkyNZMG','spree@example.com',NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,'spree@example.com',NULL,NULL,NULL,NULL,NULL,NULL,'2014-01-02 03:26:06','2014-01-02 03:26:06',NULL,NULL);
/*!40000 ALTER TABLE `spree_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_variants`
--

DROP TABLE IF EXISTS `spree_variants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_variants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sku` varchar(255) NOT NULL DEFAULT '',
  `weight` decimal(8,2) DEFAULT NULL,
  `height` decimal(8,2) DEFAULT NULL,
  `width` decimal(8,2) DEFAULT NULL,
  `depth` decimal(8,2) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `is_master` tinyint(1) DEFAULT '0',
  `product_id` int(11) DEFAULT NULL,
  `cost_price` decimal(8,2) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `cost_currency` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_variants_on_product_id` (`product_id`),
  KEY `index_spree_variants_on_sku` (`sku`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_variants`
--

LOCK TABLES `spree_variants` WRITE;
/*!40000 ALTER TABLE `spree_variants` DISABLE KEYS */;
INSERT INTO `spree_variants` VALUES (1,'ROR-00011',NULL,NULL,NULL,NULL,NULL,1,1,17.00,1,'USD'),(2,'ROR-00012',NULL,NULL,NULL,NULL,NULL,1,2,21.00,1,'USD'),(3,'ROR-001',NULL,NULL,NULL,NULL,NULL,1,3,17.00,1,'USD'),(4,'ROR-00013',NULL,NULL,NULL,NULL,NULL,1,4,17.00,1,'USD'),(5,'ROR-00015',NULL,NULL,NULL,NULL,NULL,1,5,17.00,1,'USD'),(6,'RUB-00001',NULL,NULL,NULL,NULL,NULL,1,6,17.00,1,'USD'),(7,'APC-00001',NULL,NULL,NULL,NULL,NULL,1,7,17.00,1,'USD'),(8,'SPR-00001',NULL,NULL,NULL,NULL,NULL,1,8,17.00,1,'USD'),(9,'SPR-00013',NULL,NULL,NULL,NULL,NULL,1,9,17.00,1,'USD'),(10,'SPR-00015',NULL,NULL,NULL,NULL,NULL,1,10,17.00,1,'USD'),(11,'SPR-00011',NULL,NULL,NULL,NULL,NULL,1,11,13.00,1,'USD'),(12,'SPR-00012',NULL,NULL,NULL,NULL,NULL,1,12,21.00,1,'USD'),(13,'ROR-00014',NULL,NULL,NULL,NULL,NULL,1,13,11.00,1,'USD'),(14,'ROR-00016',NULL,NULL,NULL,NULL,NULL,1,14,15.00,1,'USD'),(15,'SPR-00016',NULL,NULL,NULL,NULL,NULL,1,15,15.00,1,'USD'),(16,'SPR-00014',NULL,NULL,NULL,NULL,NULL,1,16,11.00,1,'USD'),(17,'ROR-00001',NULL,NULL,NULL,NULL,NULL,0,3,17.00,1,'USD'),(18,'ROR-00002',NULL,NULL,NULL,NULL,NULL,0,3,17.00,2,'USD'),(19,'ROR-00003',NULL,NULL,NULL,NULL,NULL,0,3,17.00,3,'USD'),(20,'ROR-00004',NULL,NULL,NULL,NULL,NULL,0,3,17.00,4,'USD'),(21,'ROR-00005',NULL,NULL,NULL,NULL,NULL,0,3,17.00,5,'USD'),(22,'ROR-00006',NULL,NULL,NULL,NULL,NULL,0,3,17.00,6,'USD'),(23,'ROR-00007',NULL,NULL,NULL,NULL,NULL,0,3,17.00,7,'USD'),(24,'ROR-00008',NULL,NULL,NULL,NULL,NULL,0,3,17.00,8,'USD'),(25,'ROR-00009',NULL,NULL,NULL,NULL,NULL,0,3,17.00,9,'USD'),(26,'ROR-00012',NULL,NULL,NULL,NULL,NULL,0,3,17.00,10,'USD');
/*!40000 ALTER TABLE `spree_variants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_zone_members`
--

DROP TABLE IF EXISTS `spree_zone_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_zone_members` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `zoneable_id` int(11) DEFAULT NULL,
  `zoneable_type` varchar(255) DEFAULT NULL,
  `zone_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_zone_members`
--

LOCK TABLES `spree_zone_members` WRITE;
/*!40000 ALTER TABLE `spree_zone_members` DISABLE KEYS */;
INSERT INTO `spree_zone_members` VALUES (1,72,'Spree::Country',1,'2014-01-02 03:26:06','2014-01-02 03:26:06'),(2,10,'Spree::Country',1,'2014-01-02 03:26:06','2014-01-02 03:26:06'),(3,76,'Spree::Country',1,'2014-01-02 03:26:06','2014-01-02 03:26:06'),(4,94,'Spree::Country',1,'2014-01-02 03:26:06','2014-01-02 03:26:06'),(5,155,'Spree::Country',1,'2014-01-02 03:26:06','2014-01-02 03:26:06'),(6,13,'Spree::Country',1,'2014-01-02 03:26:06','2014-01-02 03:26:06'),(7,164,'Spree::Country',1,'2014-01-02 03:26:06','2014-01-02 03:26:06'),(8,217,'Spree::Country',1,'2014-01-02 03:26:06','2014-01-02 03:26:06'),(9,167,'Spree::Country',1,'2014-01-02 03:26:06','2014-01-02 03:26:06'),(10,20,'Spree::Country',1,'2014-01-02 03:26:06','2014-01-02 03:26:06'),(11,111,'Spree::Country',1,'2014-01-02 03:26:06','2014-01-02 03:26:06'),(12,175,'Spree::Country',1,'2014-01-02 03:26:06','2014-01-02 03:26:06'),(13,24,'Spree::Country',1,'2014-01-02 03:26:06','2014-01-02 03:26:06'),(14,29,'Spree::Country',1,'2014-01-02 03:26:06','2014-01-02 03:26:06'),(15,98,'Spree::Country',1,'2014-01-02 03:26:06','2014-01-02 03:26:06'),(16,180,'Spree::Country',1,'2014-01-02 03:26:06','2014-01-02 03:26:06'),(17,182,'Spree::Country',1,'2014-01-02 03:26:06','2014-01-02 03:26:06'),(18,44,'Spree::Country',1,'2014-01-02 03:26:06','2014-01-02 03:26:06'),(19,206,'Spree::Country',1,'2014-01-02 03:26:06','2014-01-02 03:26:06'),(20,46,'Spree::Country',1,'2014-01-02 03:26:06','2014-01-02 03:26:06'),(21,211,'Spree::Country',1,'2014-01-02 03:26:06','2014-01-02 03:26:06'),(22,135,'Spree::Country',1,'2014-01-02 03:26:06','2014-01-02 03:26:06'),(23,56,'Spree::Country',1,'2014-01-02 03:26:06','2014-01-02 03:26:06'),(24,207,'Spree::Country',1,'2014-01-02 03:26:06','2014-01-02 03:26:06'),(25,210,'Spree::Country',1,'2014-01-02 03:26:06','2014-01-02 03:26:06'),(26,49,'Spree::Country',2,'2014-01-02 03:26:06','2014-01-02 03:26:06'),(27,204,'Spree::Country',2,'2014-01-02 03:26:06','2014-01-02 03:26:06');
/*!40000 ALTER TABLE `spree_zone_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_zones`
--

DROP TABLE IF EXISTS `spree_zones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_zones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `default_tax` tinyint(1) DEFAULT '0',
  `zone_members_count` int(11) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_zones`
--

LOCK TABLES `spree_zones` WRITE;
/*!40000 ALTER TABLE `spree_zones` DISABLE KEYS */;
INSERT INTO `spree_zones` VALUES (1,'EU_VAT','Countries that make up the EU VAT zone.',0,25,'2014-01-02 03:26:06','2014-01-02 03:26:06'),(2,'North America','USA + Canada',0,2,'2014-01-02 03:26:06','2014-01-02 03:26:06');
/*!40000 ALTER TABLE `spree_zones` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-01-01 23:19:31
