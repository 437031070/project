-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: bi
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `brand_age_clients`
--

DROP TABLE IF EXISTS `brand_age_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `brand_age_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cateID` varchar(40) DEFAULT NULL,
  `Data_module` varchar(40) DEFAULT NULL,
  `data_type` varchar(40) DEFAULT NULL,
  `date` varchar(40) DEFAULT NULL,
  `brand_id` varchar(40) DEFAULT NULL,
  `Customer_index` varchar(40) DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  `text` varchar(40) DEFAULT NULL,
  `payments` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brand_age_clients`
--

LOCK TABLES `brand_age_clients` WRITE;
/*!40000 ALTER TABLE `brand_age_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `brand_age_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brand_age_clients_proportion`
--

DROP TABLE IF EXISTS `brand_age_clients_proportion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `brand_age_clients_proportion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cateID` varchar(40) DEFAULT NULL,
  `Data_module` varchar(40) DEFAULT NULL,
  `data_type` varchar(40) DEFAULT NULL,
  `date` varchar(40) DEFAULT NULL,
  `brand_id` varchar(40) DEFAULT NULL,
  `Customer_index` varchar(40) DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  `text` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brand_age_clients_proportion`
--

LOCK TABLES `brand_age_clients_proportion` WRITE;
/*!40000 ALTER TABLE `brand_age_clients_proportion` DISABLE KEYS */;
/*!40000 ALTER TABLE `brand_age_clients_proportion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brand_age_payment_conversion_rate`
--

DROP TABLE IF EXISTS `brand_age_payment_conversion_rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `brand_age_payment_conversion_rate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cateID` varchar(40) DEFAULT NULL,
  `Data_module` varchar(40) DEFAULT NULL,
  `data_type` varchar(40) DEFAULT NULL,
  `date` varchar(40) DEFAULT NULL,
  `brand_id` varchar(40) DEFAULT NULL,
  `Customer_index` varchar(40) DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  `text` varchar(40) DEFAULT NULL,
  `Conversion_Rate` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brand_age_payment_conversion_rate`
--

LOCK TABLES `brand_age_payment_conversion_rate` WRITE;
/*!40000 ALTER TABLE `brand_age_payment_conversion_rate` DISABLE KEYS */;
/*!40000 ALTER TABLE `brand_age_payment_conversion_rate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brand_age_trading_index`
--

DROP TABLE IF EXISTS `brand_age_trading_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `brand_age_trading_index` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cateID` varchar(40) DEFAULT NULL,
  `Data_module` varchar(40) DEFAULT NULL,
  `data_type` varchar(40) DEFAULT NULL,
  `date` varchar(40) DEFAULT NULL,
  `brand_id` varchar(40) DEFAULT NULL,
  `Customer_index` varchar(40) DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  `text` varchar(40) DEFAULT NULL,
  `transaction` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brand_age_trading_index`
--

LOCK TABLES `brand_age_trading_index` WRITE;
/*!40000 ALTER TABLE `brand_age_trading_index` DISABLE KEYS */;
/*!40000 ALTER TABLE `brand_age_trading_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brand_gender_clients`
--

DROP TABLE IF EXISTS `brand_gender_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `brand_gender_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cateID` varchar(40) DEFAULT NULL,
  `Data_module` varchar(40) DEFAULT NULL,
  `data_type` varchar(40) DEFAULT NULL,
  `date` varchar(40) DEFAULT NULL,
  `brand_id` varchar(40) DEFAULT NULL,
  `Customer_index` varchar(40) DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  `text` varchar(40) DEFAULT NULL,
  `payments` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brand_gender_clients`
--

LOCK TABLES `brand_gender_clients` WRITE;
/*!40000 ALTER TABLE `brand_gender_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `brand_gender_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brand_gender_clients_proportion`
--

DROP TABLE IF EXISTS `brand_gender_clients_proportion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `brand_gender_clients_proportion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cateID` varchar(40) DEFAULT NULL,
  `Data_module` varchar(40) DEFAULT NULL,
  `data_type` varchar(40) DEFAULT NULL,
  `date` varchar(40) DEFAULT NULL,
  `brand_id` varchar(40) DEFAULT NULL,
  `Customer_index` varchar(40) DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  `text` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brand_gender_clients_proportion`
--

LOCK TABLES `brand_gender_clients_proportion` WRITE;
/*!40000 ALTER TABLE `brand_gender_clients_proportion` DISABLE KEYS */;
/*!40000 ALTER TABLE `brand_gender_clients_proportion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brand_gender_clients_proportion_one`
--

DROP TABLE IF EXISTS `brand_gender_clients_proportion_one`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `brand_gender_clients_proportion_one` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cateID` varchar(40) DEFAULT NULL,
  `Data_module_one` int(11) DEFAULT NULL,
  `data_type_one` int(11) DEFAULT NULL,
  `date_one` int(11) DEFAULT NULL,
  `brand_id_one` int(11) DEFAULT NULL,
  `Customer_index1_one` int(11) DEFAULT NULL,
  `name_one` int(11) DEFAULT NULL,
  `text_one` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brand_gender_clients_proportion_one`
--

LOCK TABLES `brand_gender_clients_proportion_one` WRITE;
/*!40000 ALTER TABLE `brand_gender_clients_proportion_one` DISABLE KEYS */;
/*!40000 ALTER TABLE `brand_gender_clients_proportion_one` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brand_gender_clients_two`
--

DROP TABLE IF EXISTS `brand_gender_clients_two`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `brand_gender_clients_two` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cateID` varchar(40) DEFAULT NULL,
  `Data_module` varchar(40) DEFAULT NULL,
  `data_type` varchar(40) DEFAULT NULL,
  `date` varchar(40) DEFAULT NULL,
  `brand_id` varchar(40) DEFAULT NULL,
  `Customer_index` varchar(40) DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  `text` varchar(40) DEFAULT NULL,
  `Conversion_Rate` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brand_gender_clients_two`
--

LOCK TABLES `brand_gender_clients_two` WRITE;
/*!40000 ALTER TABLE `brand_gender_clients_two` DISABLE KEYS */;
/*!40000 ALTER TABLE `brand_gender_clients_two` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brand_hotsale`
--

DROP TABLE IF EXISTS `brand_hotsale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `brand_hotsale` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cateID` varchar(40) DEFAULT NULL,
  `Data_module` varchar(40) DEFAULT NULL,
  `data_type` varchar(40) DEFAULT NULL,
  `date` varchar(40) DEFAULT NULL,
  `brandName` varchar(40) DEFAULT NULL,
  `brandId` varchar(40) DEFAULT NULL,
  `cateRankId` varchar(40) DEFAULT NULL,
  `payRateIndex` varchar(40) DEFAULT NULL,
  `tradeIndex` varchar(40) DEFAULT NULL,
  `Conversion_rate` varchar(40) DEFAULT NULL,
  `Payment_amount` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brand_hotsale`
--

LOCK TABLES `brand_hotsale` WRITE;
/*!40000 ALTER TABLE `brand_hotsale` DISABLE KEYS */;
/*!40000 ALTER TABLE `brand_hotsale` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brand_hotsearch`
--

DROP TABLE IF EXISTS `brand_hotsearch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `brand_hotsearch` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cateID` varchar(40) DEFAULT NULL,
  `Data_module` varchar(40) DEFAULT NULL,
  `data_type` varchar(40) DEFAULT NULL,
  `date` varchar(40) DEFAULT NULL,
  `brandName` varchar(40) DEFAULT NULL,
  `brandId` varchar(40) DEFAULT NULL,
  `cateRankId` varchar(40) DEFAULT NULL,
  `uvIndex` varchar(40) DEFAULT NULL,
  `seIpvUvHits` varchar(40) DEFAULT NULL,
  `tradeIndex` varchar(40) DEFAULT NULL,
  `Visitor` varchar(40) DEFAULT NULL,
  `Search` varchar(40) DEFAULT NULL,
  `Payment_amount` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brand_hotsearch`
--

LOCK TABLES `brand_hotsearch` WRITE;
/*!40000 ALTER TABLE `brand_hotsearch` DISABLE KEYS */;
/*!40000 ALTER TABLE `brand_hotsearch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brand_word`
--

DROP TABLE IF EXISTS `brand_word`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `brand_word` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cateID` varchar(40) DEFAULT NULL,
  `Data_module` varchar(40) DEFAULT NULL,
  `data_type` varchar(40) DEFAULT NULL,
  `date` varchar(40) DEFAULT NULL,
  `searchWord` varchar(40) DEFAULT NULL,
  `hotSearchRank` varchar(40) DEFAULT NULL,
  `relSeWordCnt` varchar(40) DEFAULT NULL,
  `avgWordSeIpvUvHits` varchar(40) DEFAULT NULL,
  `avgWordClickHits` varchar(40) DEFAULT NULL,
  `p4pRefPrice` varchar(40) DEFAULT NULL,
  `search` varchar(40) DEFAULT NULL,
  `click` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brand_word`
--

LOCK TABLES `brand_word` WRITE;
/*!40000 ALTER TABLE `brand_word` DISABLE KEYS */;
/*!40000 ALTER TABLE `brand_word` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_of_competition1`
--

DROP TABLE IF EXISTS `category_of_competition1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `category_of_competition1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cateID` varchar(40) DEFAULT NULL,
  `Data_module` varchar(40) DEFAULT NULL,
  `date` varchar(40) DEFAULT NULL,
  `shop_ID` varchar(40) DEFAULT NULL,
  `cateLevel1Name` varchar(40) DEFAULT NULL,
  `cate_Id` varchar(40) DEFAULT NULL,
  `cateName` varchar(40) DEFAULT NULL,
  `cateLevel1Id` varchar(40) DEFAULT NULL,
  `payAmtRatio` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_of_competition1`
--

LOCK TABLES `category_of_competition1` WRITE;
/*!40000 ALTER TABLE `category_of_competition1` DISABLE KEYS */;
/*!40000 ALTER TABLE `category_of_competition1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commodity_composition`
--

DROP TABLE IF EXISTS `commodity_composition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `commodity_composition` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cateID` varchar(40) DEFAULT NULL,
  `Data_module` varchar(40) DEFAULT NULL,
  `date` varchar(40) DEFAULT NULL,
  `shop_ID` varchar(40) DEFAULT NULL,
  `item_title` varchar(40) DEFAULT NULL,
  `item_detailUrl` varchar(40) DEFAULT NULL,
  `discountPrice` varchar(40) DEFAULT NULL,
  `tradeIndex` varchar(40) DEFAULT NULL,
  `tradeIndex_cycleCrc` varchar(40) DEFAULT NULL,
  `Payment_amount` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commodity_composition`
--

LOCK TABLES `commodity_composition` WRITE;
/*!40000 ALTER TABLE `commodity_composition` DISABLE KEYS */;
/*!40000 ALTER TABLE `commodity_composition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compete_brand_flowshop_top`
--

DROP TABLE IF EXISTS `compete_brand_flowshop_top`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `compete_brand_flowshop_top` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cateID` varchar(40) DEFAULT NULL,
  `Data_module` varchar(40) DEFAULT NULL,
  `date` varchar(40) DEFAULT NULL,
  `brand_id` varchar(40) DEFAULT NULL,
  `shop_title` varchar(40) DEFAULT NULL,
  `shopUrl` varchar(40) DEFAULT NULL,
  `userId` varchar(40) DEFAULT NULL,
  `seIpvUvHits` varchar(40) DEFAULT NULL,
  `uvIndex` varchar(40) DEFAULT NULL,
  `tradeIndex` varchar(40) DEFAULT NULL,
  `Search_number` varchar(40) DEFAULT NULL,
  `Visitor` varchar(40) DEFAULT NULL,
  `Sale` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compete_brand_flowshop_top`
--

LOCK TABLES `compete_brand_flowshop_top` WRITE;
/*!40000 ALTER TABLE `compete_brand_flowshop_top` DISABLE KEYS */;
/*!40000 ALTER TABLE `compete_brand_flowshop_top` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compete_brand_tradeshop_top`
--

DROP TABLE IF EXISTS `compete_brand_tradeshop_top`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `compete_brand_tradeshop_top` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cateID` varchar(40) DEFAULT NULL,
  `Data_module` varchar(40) DEFAULT NULL,
  `date` varchar(40) DEFAULT NULL,
  `brand_id` varchar(40) DEFAULT NULL,
  `shop_title` varchar(40) DEFAULT NULL,
  `shopUrl` varchar(40) DEFAULT NULL,
  `userId` varchar(40) DEFAULT NULL,
  `tradeIndex` varchar(40) DEFAULT NULL,
  `payRateIndex` varchar(40) DEFAULT NULL,
  `tradeGrowthRange` varchar(40) DEFAULT NULL,
  `Conversion_rate` varchar(40) DEFAULT NULL,
  `Payment_amount` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compete_brand_tradeshop_top`
--

LOCK TABLES `compete_brand_tradeshop_top` WRITE;
/*!40000 ALTER TABLE `compete_brand_tradeshop_top` DISABLE KEYS */;
/*!40000 ALTER TABLE `compete_brand_tradeshop_top` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `competitive_brand_category_composition`
--

DROP TABLE IF EXISTS `competitive_brand_category_composition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `competitive_brand_category_composition` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cateID` varchar(40) DEFAULT NULL,
  `Data_module` varchar(40) DEFAULT NULL,
  `date` varchar(40) DEFAULT NULL,
  `brand_id` varchar(40) DEFAULT NULL,
  `brandIds` varchar(40) DEFAULT NULL,
  `payAmt_ratio` varchar(40) DEFAULT NULL,
  `cateName` varchar(40) DEFAULT NULL,
  `uv_ratio` varchar(40) DEFAULT NULL,
  `payItemCnt` varchar(40) DEFAULT NULL,
  `paySlrCnt` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `competitive_brand_category_composition`
--

LOCK TABLES `competitive_brand_category_composition` WRITE;
/*!40000 ALTER TABLE `competitive_brand_category_composition` DISABLE KEYS */;
/*!40000 ALTER TABLE `competitive_brand_category_composition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `competitive_brand_flow_commodities`
--

DROP TABLE IF EXISTS `competitive_brand_flow_commodities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `competitive_brand_flow_commodities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cateID` varchar(40) DEFAULT NULL,
  `Data_module` varchar(40) DEFAULT NULL,
  `date` varchar(40) DEFAULT NULL,
  `brand_id` varchar(40) DEFAULT NULL,
  `item_title` varchar(40) DEFAULT NULL,
  `shop_title` varchar(40) DEFAULT NULL,
  `userId` varchar(40) DEFAULT NULL,
  `item_detailUrl` varchar(40) DEFAULT NULL,
  `itemId` varchar(40) DEFAULT NULL,
  `uvIndex` varchar(40) DEFAULT NULL,
  `seIpvUvHits` varchar(40) DEFAULT NULL,
  `tradeIndex` varchar(40) DEFAULT NULL,
  `Search_number` varchar(40) DEFAULT NULL,
  `Visitor` varchar(40) DEFAULT NULL,
  `Sale` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `competitive_brand_flow_commodities`
--

LOCK TABLES `competitive_brand_flow_commodities` WRITE;
/*!40000 ALTER TABLE `competitive_brand_flow_commodities` DISABLE KEYS */;
/*!40000 ALTER TABLE `competitive_brand_flow_commodities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `competitive_brand_tradeshop_commodities`
--

DROP TABLE IF EXISTS `competitive_brand_tradeshop_commodities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `competitive_brand_tradeshop_commodities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cateID` varchar(40) DEFAULT NULL,
  `Data_module` varchar(40) DEFAULT NULL,
  `date` varchar(40) DEFAULT NULL,
  `brand_id` varchar(40) DEFAULT NULL,
  `item_title` varchar(40) DEFAULT NULL,
  `shop_title` varchar(40) DEFAULT NULL,
  `userId` varchar(40) DEFAULT NULL,
  `item_detailUrl` varchar(40) DEFAULT NULL,
  `itemId` varchar(40) DEFAULT NULL,
  `tradeIndex` varchar(40) DEFAULT NULL,
  `payRateIndex` varchar(40) DEFAULT NULL,
  `tradeGrowthRange` varchar(40) DEFAULT NULL,
  `Conversion_rate` varchar(40) DEFAULT NULL,
  `Payment_amount` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `competitive_brand_tradeshop_commodities`
--

LOCK TABLES `competitive_brand_tradeshop_commodities` WRITE;
/*!40000 ALTER TABLE `competitive_brand_tradeshop_commodities` DISABLE KEYS */;
/*!40000 ALTER TABLE `competitive_brand_tradeshop_commodities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_word`
--

DROP TABLE IF EXISTS `core_word`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `core_word` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cateID` varchar(40) DEFAULT NULL,
  `Data_module` varchar(40) DEFAULT NULL,
  `data_type` varchar(40) DEFAULT NULL,
  `date` varchar(40) DEFAULT NULL,
  `searchWord` varchar(40) DEFAULT NULL,
  `hotSearchRank` varchar(40) DEFAULT NULL,
  `relSeWordCnt` varchar(40) DEFAULT NULL,
  `avgWordSeIpvUvHits` varchar(40) DEFAULT NULL,
  `avgWordClickHits` varchar(40) DEFAULT NULL,
  `p4pRefPrice` varchar(40) DEFAULT NULL,
  `search` varchar(40) DEFAULT NULL,
  `click` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_word`
--

LOCK TABLES `core_word` WRITE;
/*!40000 ALTER TABLE `core_word` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_word` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flow_commodity`
--

DROP TABLE IF EXISTS `flow_commodity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `flow_commodity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cateID` varchar(40) DEFAULT NULL,
  `Data_module` varchar(40) DEFAULT NULL,
  `date` varchar(40) DEFAULT NULL,
  `shop_ID` varchar(40) DEFAULT NULL,
  `item_title` varchar(40) DEFAULT NULL,
  `item_detailUrl` varchar(40) DEFAULT NULL,
  `discountPrice` varchar(40) DEFAULT NULL,
  `uv` varchar(40) DEFAULT NULL,
  `uv_cycleCrc` varchar(40) DEFAULT NULL,
  `Visitor` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flow_commodity`
--

LOCK TABLES `flow_commodity` WRITE;
/*!40000 ALTER TABLE `flow_commodity` DISABLE KEYS */;
/*!40000 ALTER TABLE `flow_commodity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `geographical_distribution`
--

DROP TABLE IF EXISTS `geographical_distribution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `geographical_distribution` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cateID` varchar(40) DEFAULT NULL,
  `Data_module` varchar(40) DEFAULT NULL,
  `date` varchar(40) DEFAULT NULL,
  `areaName` varchar(40) DEFAULT NULL,
  `slrCnt` varchar(40) DEFAULT NULL,
  `parentCateSlrRate` varchar(40) DEFAULT NULL,
  `tradeSlrCnt` varchar(40) DEFAULT NULL,
  `parentCateTradeSlrCntRate` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `geographical_distribution`
--

LOCK TABLES `geographical_distribution` WRITE;
/*!40000 ALTER TABLE `geographical_distribution` DISABLE KEYS */;
/*!40000 ALTER TABLE `geographical_distribution` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hot_attributes`
--

DROP TABLE IF EXISTS `hot_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `hot_attributes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cateID` varchar(40) DEFAULT NULL,
  `Data_module` varchar(40) DEFAULT NULL,
  `data_type` varchar(40) DEFAULT NULL,
  `date` varchar(40) DEFAULT NULL,
  `attribute_name` varchar(40) DEFAULT NULL,
  `payments_piece` varchar(40) DEFAULT NULL,
  `tradeIndex` varchar(40) DEFAULT NULL,
  `Sale` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hot_attributes`
--

LOCK TABLES `hot_attributes` WRITE;
/*!40000 ALTER TABLE `hot_attributes` DISABLE KEYS */;
INSERT INTO `hot_attributes` VALUES (1,'50009841','热销属性','产地','2018-12-14~2019-01-12','中国大陆','1,272,302','1,971,199','32498670'),(2,'50009841','热销属性','产地','2018-12-14~2019-01-12','美国','107,900','5,210','454665'),(3,'50009841','热销属性','产地','2018-12-14~2019-01-12','泰国','64,234','15,708','184928'),(4,'50009841','热销属性','产地','2018-12-14~2019-01-12','意大利','25,213','1,982','35691'),(5,'50009841','热销属性','产地','2018-12-14~2019-01-12','港澳台地区','6,769','225','3657'),(6,'50009841','热销属性','产地','2018-12-14~2019-01-12','韩国','6,395','270','3320'),(7,'50009841','热销属性','产地','2018-12-14~2019-01-12','秘鲁','6,216','46','3164'),(8,'50009841','热销属性','产地','2018-12-14~2019-01-12','西班牙','5,769','25','2795'),(9,'50009841','热销属性','产地','2018-12-14~2019-01-12','德国','4,747','45','2011'),(10,'50009841','热销属性','产地','2018-12-14~2019-01-12','俄罗斯','4,649','123','1942'),(11,'50009841','热销属性','品牌','2018-12-14~2019-01-12','天勤粒粒净','347,847','95,690','3683297'),(12,'50009841','热销属性','品牌','2018-12-14~2019-01-12','NortheastPeasantMadame/东北农嫂','297,650','80,726','2782661'),(13,'50009841','热销属性','品牌','2018-12-14~2019-01-12','CornGod/玉米神','260,085','67,615','2182278'),(14,'50009841','热销属性','品牌','2018-12-14~2019-01-12','柒然','201,481','41,632','1378608'),(15,'50009841','热销属性','品牌','2018-12-14~2019-01-12','露茵','200,086','39,047','1361523'),(16,'50009841','热销属性','品牌','2018-12-14~2019-01-12','爆口福','190,030','220,898','1241248'),(17,'50009841','热销属性','品牌','2018-12-14~2019-01-12','Hotest/热烈','176,456','110,993','1086998'),(18,'50009841','热销属性','品牌','2018-12-14~2019-01-12','禾久','165,314','27,047','967423'),(19,'50009841','热销属性','品牌','2018-12-14~2019-01-12','淘乡甜','142,634','29,505','743944'),(20,'50009841','热销属性','品牌','2018-12-14~2019-01-12','爆米球','135,887','4,409','682689'),(21,'50025683','热销属性','产地','2018-12-15~2019-01-13','中国大陆','851,646','751,603','17526022'),(22,'50025683','热销属性','产地','2018-12-15~2019-01-13','韩国','43,354','2,326','94083'),(23,'50025683','热销属性','产地','2018-12-15~2019-01-13','港澳台地区','41,669','6,817','87849'),(24,'50025683','热销属性','产地','2018-12-15~2019-01-13','意大利','16,573','362','16946'),(25,'50025683','热销属性','产地','2018-12-15~2019-01-13','泰国','14,917','494','14137'),(26,'50025683','热销属性','产地','2018-12-15~2019-01-13','新加坡','11,075','320','8480'),(27,'50025683','热销属性','产地','2018-12-15~2019-01-13','日本','7,142','274','4006'),(28,'50025683','热销属性','产地','2018-12-15~2019-01-13','越南','5,713','111','2749'),(29,'50025683','热销属性','产地','2018-12-15~2019-01-13','马来西亚','4,844','107','2081'),(30,'50025683','热销属性','产地','2018-12-15~2019-01-13','美国','900','4','129'),(31,'50025683','热销属性','产地','2018-12-15~2019-01-13','俄罗斯','679','2','83'),(32,'50025683','热销属性','产地','2018-12-15~2019-01-13','挪威','534','2','57'),(33,'50025683','热销属性','品牌','2018-12-15~2019-01-13','WanchaiFerry/湾仔码头','340,633','109,693','3547156'),(34,'50025683','热销属性','品牌','2018-12-15~2019-01-13','易果生鲜','333,263','172,015','3410363'),(35,'50025683','热销属性','品牌','2018-12-15~2019-01-13','思念','165,991','51,070','974506'),(36,'50025683','热销属性','品牌','2018-12-15~2019-01-13','船歌鱼水饺','164,005','4,093','953795'),(37,'50025683','热销属性','品牌','2018-12-15~2019-01-13','三全','129,221','29,832','624550'),(38,'50025683','热销属性','品牌','2018-12-15~2019-01-13','龙凤','121,912','46,881','563541'),(39,'50025683','热销属性','品牌','2018-12-15~2019-01-13','顾大嫂','110,456','15,528','473729'),(40,'50025683','热销属性','品牌','2018-12-15~2019-01-13','正大','102,922','15,030','418565'),(41,'50025683','热销属性','品牌','2018-12-15~2019-01-13','同利','100,926','6,612','404472'),(42,'50025683','热销属性','品牌','2018-12-15~2019-01-13','必品阁','85,660','11,024','303973');
/*!40000 ALTER TABLE `hot_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `industry_composition`
--

DROP TABLE IF EXISTS `industry_composition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `industry_composition` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cateID` varchar(40) DEFAULT NULL,
  `Industry_composition` varchar(40) DEFAULT NULL,
  `date` varchar(40) DEFAULT NULL,
  `cateName` varchar(40) DEFAULT NULL,
  `tradeIndex` varchar(40) DEFAULT NULL,
  `tradeGrowthRange` varchar(40) DEFAULT NULL,
  `payAmtParentCateRate` varchar(40) DEFAULT NULL,
  `payCntParentCateRate` varchar(40) DEFAULT NULL,
  `Payment_amount` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=296 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `industry_composition`
--

LOCK TABLES `industry_composition` WRITE;
/*!40000 ALTER TABLE `industry_composition` DISABLE KEYS */;
INSERT INTO `industry_composition` VALUES (1,'50009837','行业构成','2018-12-01','大米','3410809.384160592','-0.11','0.4388','0.2587','11672648'),(2,'50009837','行业构成','2018-12-01','面粉/食用粉','1942132.9654393313','-0.033','0.1564','0.2292','52680822'),(3,'50009837','行业构成','2018-12-01','玉米','1313744.142367496','0.1464','0.0766','0.0884','33981886'),(4,'50009837','行业构成','2018-12-01','其它粮食','1309598.4538308554','-0.0731','0.0762','0.1115','33834047'),(5,'50009837','行业构成','2018-12-01','杂粮组合','1294919.0046649978','0.0456','0.0746','0.0572','33309588'),(6,'50009837','行业构成','2018-12-01','小米','1065640.7508019079','0.0149','0.0524','0.0632','25029111'),(7,'50009837','行业构成','2018-12-01','红豆','755479.3856443183','0.0736','0.028','0.0395','14364240'),(8,'50009837','行业构成','2018-12-01','泰国香米','630924.8588682867','-0.2737','0.0202','0.0082','10566085'),(9,'50009837','行业构成','2018-12-01','糯米','508952.98752897966','0.0433','0.0137','0.02','7260639'),(10,'50009837','行业构成','2018-12-01','黑米','502876.77113110526','-0.074','0.0134','0.0275','7108389'),(11,'50009837','行业构成','2018-12-01','薏米','473277.37762890634','-0.2361','0.012','0.0242','6384995'),(12,'50009837','行业构成','2018-12-01','黄豆','441452.2790656972','-0.0932','0.0106','0.0185','5642187'),(13,'50009837','行业构成','2018-12-01','糙米','436505.75137692614','0.0291','0.0104','0.0207','5530082'),(14,'50009837','行业构成','2018-12-01','其它','373976.73630096845','-0.0','0.0079','0.015','4194669'),(15,'50009837','行业构成','2018-12-01','黑豆','313587.2911250816','-0.0609','0.0057','0.0117','3056665'),(16,'50009837','行业构成','2018-12-01','绿豆','219680.59764091155','-0.0684','0.003','0.0064','1610336'),(17,'50009837','行业构成','2018-12-01','大米','3410809.384160592','-0.11','0.4388','0.2587','11672648'),(18,'50009837','行业构成','2018-12-01','面粉/食用粉','1942132.9654393313','-0.033','0.1564','0.2292','52680822'),(19,'50009837','行业构成','2018-12-01','玉米','1313744.142367496','0.1464','0.0766','0.0884','33981886'),(20,'50009837','行业构成','2018-12-01','其它粮食','1309598.4538308554','-0.0731','0.0762','0.1115','33834047'),(21,'50009837','行业构成','2018-12-01','杂粮组合','1294919.0046649978','0.0456','0.0746','0.0572','33309588'),(22,'50009837','行业构成','2018-12-01','小米','1065640.7508019079','0.0149','0.0524','0.0632','25029111'),(23,'50009837','行业构成','2018-12-01','红豆','755479.3856443183','0.0736','0.028','0.0395','14364240'),(24,'50009837','行业构成','2018-12-01','泰国香米','630924.8588682867','-0.2737','0.0202','0.0082','10566085'),(25,'50009837','行业构成','2018-12-01','糯米','508952.98752897966','0.0433','0.0137','0.02','7260639'),(26,'50009837','行业构成','2018-12-01','黑米','502876.77113110526','-0.074','0.0134','0.0275','7108389'),(27,'50009837','行业构成','2018-12-01','薏米','473277.37762890634','-0.2361','0.012','0.0242','6384995'),(28,'50009837','行业构成','2018-12-01','黄豆','441452.2790656972','-0.0932','0.0106','0.0185','5642187'),(29,'50009837','行业构成','2018-12-01','糙米','436505.75137692614','0.0291','0.0104','0.0207','5530082'),(30,'50009837','行业构成','2018-12-01','其它','373976.73630096845','-0.0','0.0079','0.015','4194669'),(31,'50009837','行业构成','2018-12-01','黑豆','313587.2911250816','-0.0609','0.0057','0.0117','3056665'),(32,'50009837','行业构成','2018-12-01','绿豆','219680.59764091155','-0.0684','0.003','0.0064','1610336'),(33,'50025689','行业构成','2018-12-01','方便面/粉丝/米线','4698779.951472691','-0.1093','0.4517','0.474','-225901124'),(34,'50025689','行业构成','2018-12-01','即食火锅','2087217.235055307','-0.2194','0.102','0.0865','55196342'),(35,'50025689','行业构成','2018-12-01','面条/挂面（待煮面条）','1764899.7521437898','-0.2067','0.0751','0.0815','48467792'),(36,'50025689','行业构成','2018-12-01','煎饼','1418654.1443110772','-0.0667','0.0504','0.0515','37667861'),(37,'50025689','行业构成','2018-12-01','包装即食肠类','1395802.520745763','-0.0706','0.0489','0.0596','36875366'),(38,'50025689','行业构成','2018-12-01','面食','1360020.3790079867','0.1627','0.0466','0.0522','35621988'),(39,'50025689','行业构成','2018-12-01','年糕','1238906.815172371','0.3391','0.0394','0.0447','31296114'),(40,'50025689','行业构成','2018-12-01','方便米饭','1133857.3147610829','-0.002','0.0335','0.0167','27493504'),(41,'50025689','行业构成','2018-12-01','水饺/馄饨','978890.603256156','0.0447','0.0256','0.0223','21931070'),(42,'50025689','行业构成','2018-12-01','肉制品','931753.0075935931','-0.1174','0.0234','0.0144','20275573'),(43,'50025689','行业构成','2018-12-01','速食汤','862627.3303357863','-0.0704','0.0204','0.0177','17897408'),(44,'50025689','行业构成','2018-12-01','其它','776897.9481562623','0.0251','0.0168','0.016','15053149'),(45,'50025689','行业构成','2018-12-01','汤圆','765744.064312188','0.249','0.0164','0.0126','14693236'),(46,'50025689','行业构成','2018-12-01','意大利面','716254.3208113632','-0.0448','0.0145','0.0149','13128046'),(47,'50025689','行业构成','2018-12-01','速食粥','654513.0864557265','-0.2037','0.0123','0.0105','11255615'),(48,'50025689','行业构成','2018-12-01','冷面','627034.8408109308','0.0234','0.0114','0.0167','10453832'),(49,'50025689','行业构成','2018-12-01','粽子','479905.01687746204','-0.0131','0.007','0.0059','6544308'),(50,'50025689','行业构成','2018-12-01','速食菜','299273.2276692519','1.6203','0.003','0.001','2810048'),(51,'50025689','行业构成','2018-12-01','海鲜丸类','193053.989489521','0.2706','0.0014','0.0012','1276871'),(52,'50025689','行业构成','2018-11-01','方便面/粉丝/米线','5004075.127782081','0.3293','0.4628','0.4838','-322718456'),(53,'50025689','行业构成','2018-11-01','即食火锅','2389726.460089131','0.4698','0.1192','0.1046','57007166'),(54,'50025689','行业构成','2018-11-01','面条/挂面（待煮面条）','2003293.6286836555','0.4895','0.0863','0.0815','53854274'),(55,'50025689','行业构成','2018-11-01','煎饼','1473353.1513185978','0.3282','0.0493','0.0489','39535403'),(56,'50025689','行业构成','2018-11-01','包装即食肠类','1452970.2622499801','0.1898','0.048','0.0604','38844675'),(57,'50025689','行业构成','2018-11-01','面食','1252025.6353428091','0.1875','0.0366','0.0418','31769152'),(58,'50025689','行业构成','2018-11-01','方便米饭','1135134.1712779005','0.0628','0.0306','0.0141','27539754'),(59,'50025689','行业构成','2018-11-01','年糕','1055282.3791097729','0.4753','0.0268','0.0327','24656554'),(60,'50025689','行业构成','2018-11-01','肉制品','998015.58380263','0.6403','0.0242','0.0162','22609097'),(61,'50025689','行业构成','2018-11-01','水饺/馄饨','955607.9872909236','0.5389','0.0224','0.0222','21110367'),(62,'50025689','行业构成','2018-11-01','速食汤','897996.1532386256','0.2417','0.02','0.019','19106014'),(63,'50025689','行业构成','2018-11-01','其它','766343.6674933566','0.2634','0.015','0.0145','14712502'),(64,'50025689','行业构成','2018-11-01','速食粥','742144.5438392868','0.0898','0.0141','0.0118','13940180'),(65,'50025689','行业构成','2018-11-01','意大利面','734576.0056805233','0.2801','0.0139','0.0157','13701230'),(66,'50025689','行业构成','2018-11-01','汤圆','677370.6490027648','0.1635','0.012','0.0088','11937743'),(67,'50025689','行业构成','2018-11-01','冷面','619068.2237429942','0.1215','0.0102','0.0161','10225274'),(68,'50025689','行业构成','2018-11-01','粽子','483408.4144552194','0.3507','0.0065','0.0064','6629136'),(69,'50025689','行业构成','2018-11-01','速食菜','174904.94895611727','0.2446','0.001','0.0006','1069959'),(70,'50025689','行业构成','2018-11-01','海鲜丸类','168860.1266534627','0.2966','0.001','0.0008','1004785'),(71,'50025689','行业构成','2018-10-01','方便面/粉丝/米线','4286449.851145478','0.0417','0.4646','0.4872','-122020949'),(72,'50025689','行业构成','2018-10-01','即食火锅','1936004.3747644585','0.1161','0.1082','0.0944','52554708'),(73,'50025689','行业构成','2018-10-01','面条/挂面（待煮面条）','1610733.4461319693','0.0489','0.0773','0.0836','43993986'),(74,'50025689','行业构成','2018-10-01','包装即食肠类','1320868.635829528','0.0268','0.0539','0.0671','34235598'),(75,'50025689','行业构成','2018-10-01','煎饼','1260934.1821470896','0.093','0.0495','0.0504','32089938'),(76,'50025689','行业构成','2018-10-01','面食','1139272.1525096686','0.0894','0.0411','0.0446','27689636'),(77,'50025689','行业构成','2018-10-01','方便米饭','1097753.5626839455','-0.109','0.0384','0.0164','26187317'),(78,'50025689','行业构成','2018-10-01','年糕','852046.2911856638','0.2832','0.0243','0.0273','17539517'),(79,'50025689','行业构成','2018-10-01','速食汤','797086.632311559','0.0833','0.0215','0.0198','15710938'),(80,'50025689','行业构成','2018-10-01','肉制品','759987.0773602352','-0.1307','0.0197','0.013','14508452'),(81,'50025689','行业构成','2018-10-01','水饺/馄饨','753681.7031554563','0.048','0.0194','0.0175','14306841'),(82,'50025689','行业构成','2018-10-01','速食粥','707786.9507029494','-0.1862','0.0173','0.0128','12865740'),(83,'50025689','行业构成','2018-10-01','其它','673648.0208159476','0.0861','0.0158','0.0141','11825754'),(84,'50025689','行业构成','2018-10-01','意大利面','641013.0279726505','-0.1099','0.0145','0.0155','10859158'),(85,'50025689','行业构成','2018-10-01','汤圆','623059.1172737102','-0.0298','0.0138','0.011','10339561'),(86,'50025689','行业构成','2018-10-01','冷面','581088.075123163','-0.0851','0.0121','0.0174','9160615'),(87,'50025689','行业构成','2018-10-01','粽子','409256.1102031534','-0.5094','0.0064','0.0066','4929281'),(88,'50025689','行业构成','2018-10-01','速食菜','154744.83547145553','0.1374','0.0011','0.0005','859922'),(89,'50025689','行业构成','2018-10-01','海鲜丸类','146006.2954668699','0.2423','0.001','0.0008','775463'),(90,'50025689','行业构成','2018-09-01','方便面/粉丝/米线','4192317.4011195465','0.0052','0.4599','0.4881','-102301992'),(91,'50025689','行业构成','2018-09-01','即食火锅','1823090.3637210254','0.224','0.1','0.0898','49973486'),(92,'50025689','行业构成','2018-09-01','面条/挂面（待煮面条）','1569146.4405623253','-0.0317','0.076','0.0774','42684496'),(93,'50025689','行业构成','2018-09-01','包装即食肠类','1301838.0081376373','0.0945','0.0541','0.0649','33556988'),(94,'50025689','行业构成','2018-09-01','煎饼','1200856.1961772763','0.251','0.0467','0.0492','29920676'),(95,'50025689','行业构成','2018-09-01','方便米饭','1169617.7280584364','0.0406','0.0445','0.0199','28789150'),(96,'50025689','行业构成','2018-09-01','面食','1086933.837806673','0.1114','0.0389','0.0443','25796605'),(97,'50025689','行业构成','2018-09-01','肉制品','820990.0113477224','0.0694','0.0234','0.0151','16499721'),(98,'50025689','行业构成','2018-09-01','速食粥','792930.632827296','0.1374','0.022','0.0175','15574883'),(99,'50025689','行业构成','2018-09-01','速食汤','762697.946028031','0.0453','0.0205','0.0191','14595350'),(100,'50025689','行业构成','2018-09-01','年糕','742669.8227851351','0.113','0.0195','0.0213','13956802'),(101,'50025689','行业构成','2018-09-01','水饺/馄饨','734459.2064369586','0.0716','0.0191','0.0167','13697546'),(102,'50025689','行业构成','2018-09-01','意大利面','683548.0291879203','-0.0859','0.0168','0.019','12124398'),(103,'50025689','行业构成','2018-09-01','其它','643641.243499','-0.0394','0.015','0.0137','10935953'),(104,'50025689','行业构成','2018-09-01','汤圆','633547.8342429975','-0.2042','0.0146','0.0101','10642012'),(105,'50025689','行业构成','2018-09-01','冷面','610348.9810524093','-0.346','0.0137','0.0191','9977135'),(106,'50025689','行业构成','2018-09-01','粽子','606912.3823514531','0.9157','0.0135','0.0138','9879955'),(107,'50025689','行业构成','2018-09-01','速食菜','143979.17745874953','-0.0135','0.001','0.0005','756444'),(108,'50025689','行业构成','2018-09-01','海鲜丸类','129282.20453627958','0.0008','0.0008','0.0005','625071'),(109,'50025689','行业构成','2018-08-01','方便面/粉丝/米线','4180572.1371443444','0.074','0.4763','0.4994','-99940287'),(110,'50025689','行业构成','2018-08-01','即食火锅','1632084.5535680433','0.0877','0.085','0.0768','44650883'),(111,'50025689','行业构成','2018-08-01','面条/挂面（待煮面条）','1597061.5314591','0.0545','0.0817','0.0832','43567741'),(112,'50025689','行业构成','2018-08-01','包装即食肠类','1238908.0063484663','0.0809','0.0514','0.0619','31296186'),(113,'50025689','行业构成','2018-08-01','方便米饭','1144333.9688996684','0.13','0.0445','0.0196','27872978'),(114,'50025689','行业构成','2018-08-01','煎饼','1061837.7757180068','0.0381','0.0389','0.04','24892259'),(115,'50025689','行业构成','2018-08-01','面食','1025641.7371459168','0.1093','0.0365','0.041','23593915'),(116,'50025689','行业构成','2018-08-01','肉制品','791189.9149909738','0.1153','0.0228','0.0152','15517987'),(117,'50025689','行业构成','2018-08-01','冷面','771497.796681928','-0.2674','0.0217','0.0285','14878573'),(118,'50025689','行业构成','2018-08-01','速食汤','744294.2523950946','0.1695','0.0204','0.0191','14008292'),(119,'50025689','行业构成','2018-08-01','速食粥','738599.0395858774','0.0656','0.0201','0.0174','13828094'),(120,'50025689','行业构成','2018-08-01','汤圆','718634.5658015248','-0.0931','0.0191','0.0137','13202069'),(121,'50025689','行业构成','2018-08-01','意大利面','718263.3531696522','-0.061','0.0191','0.0217','13190522'),(122,'50025689','行业构成','2018-08-01','水饺/馄饨','706984.6194082627','0.1485','0.0186','0.0173','12840984'),(123,'50025689','行业构成','2018-08-01','年糕','700109.1376650993','0.0733','0.0182','0.02','12629397'),(124,'50025689','行业构成','2018-08-01','其它','658077.6107418054','-0.0702','0.0163','0.0151','11361086'),(125,'50025689','行业构成','2018-08-01','粽子','423592.3280680266','-0.2189','0.0073','0.0088','5241818'),(126,'50025689','行业构成','2018-08-01','速食菜','145080.8139558128','0.0147','0.0011','0.0008','766747'),(127,'50025689','行业构成','2018-08-01','海鲜丸类','129223.57332882105','0.0275','0.0009','0.0005','624567'),(128,'50025689','行业构成','2018-07-01','方便面/粉丝/米线','4021332.5396131203','0.0852','0.4687','0.4901','-70017819'),(129,'50025689','行业构成','2018-07-01','即食火锅','1558588.0534917274','-0.0259','0.0826','0.0756','42346086'),(130,'50025689','行业构成','2018-07-01','面条/挂面（待煮面条）','1551252.57330902','0.0493','0.0819','0.0846','42109596'),(131,'50025689','行业构成','2018-07-01','包装即食肠类','1187109.4614619028','-0.0337','0.0503','0.0604','29422885'),(132,'50025689','行业构成','2018-07-01','方便米饭','1070026.079275893','0.0852','0.0416','0.0179','25187033'),(133,'50025689','行业构成','2018-07-01','煎饼','1040233.9225046178','0.0021','0.0396','0.0391','24116348'),(134,'50025689','行业构成','2018-07-01','面食','968795.0511692151','0.0201','0.0348','0.0362','21574559'),(135,'50025689','行业构成','2018-07-01','冷面','915693.1471890982','0.0166','0.0314','0.0402','19717329'),(136,'50025689','行业构成','2018-07-01','汤圆','758403.9022192998','0.122','0.0223','0.0167','14457731'),(137,'50025689','行业构成','2018-07-01','肉制品','745021.4131045629','0.0055','0.0216','0.0153','14031346'),(138,'50025689','行业构成','2018-07-01','意大利面','743614.6980524601','0.0946','0.0215','0.0247','13986738'),(139,'50025689','行业构成','2018-07-01','速食粥','713153.996370442','-0.0074','0.0199','0.0169','13031795'),(140,'50025689','行业构成','2018-07-01','其它','685042.5138087379','0.0083','0.0185','0.0175','12169679'),(141,'50025689','行业构成','2018-07-01','速食汤','682717.7070496873','0.0784','0.0184','0.0169','12099236'),(142,'50025689','行业构成','2018-07-01','年糕','673329.144670692','0.1554','0.018','0.0191','11816172'),(143,'50025689','行业构成','2018-07-01','水饺/馄饨','655000.895768316','-0.1816','0.0171','0.0159','11270008'),(144,'50025689','行业构成','2018-07-01','粽子','485682.520609704','-0.9848','0.0099','0.0116','6684435'),(145,'50025689','行业构成','2018-07-01','速食菜','143900.4414894909','0.3879','0.0011','0.0007','755707'),(146,'50025689','行业构成','2018-07-01','海鲜丸类','127271.35139229943','0.0811','0.0009','0.0005','607992'),(147,'50025689','行业构成','2018-06-01','粽子','4812464.093463873','1.7188','0.4085','0.1917','-259875626'),(148,'50025689','行业构成','2018-06-01','方便面/粉丝/米线','3846184.3933592453','0.1244','0.2706','0.3882','-41443163'),(149,'50025689','行业构成','2018-06-01','即食火锅','1581190.843092624','0.3015','0.0531','0.0653','43067659'),(150,'50025689','行业构成','2018-06-01','面条/挂面（待煮面条）','1510876.4908918596','0.0224','0.0489','0.071','40789102'),(151,'50025689','行业构成','2018-06-01','包装即食肠类','1209641.88098937','0.0571','0.0326','0.053','30238599'),(152,'50025689','行业构成','2018-06-01','煎饼','1039063.32253815','-0.1404','0.0247','0.0346','24074407'),(153,'50025689','行业构成','2018-06-01','方便米饭','1022986.2183859131','-0.023','0.024','0.0135','23499017'),(154,'50025689','行业构成','2018-06-01','面食','958228.5903113392','-0.0787','0.0213','0.0339','21202477'),(155,'50025689','行业构成','2018-06-01','冷面','907455.6166726709','0.0114','0.0193','0.0306','19432244'),(156,'50025689','行业构成','2018-06-01','肉制品','742782.6837463288','0.2252','0.0134','0.0125','13960381'),(157,'50025689','行业构成','2018-06-01','水饺/馄饨','731578.7874734418','0.3307','0.0131','0.0175','13606922'),(158,'50025689','行业构成','2018-06-01','速食粥','716067.2592618263','0.0213','0.0126','0.0142','13122235'),(159,'50025689','行业构成','2018-06-01','汤圆','711757.4484292603','0.07','0.0124','0.0133','12988537'),(160,'50025689','行业构成','2018-06-01','意大利面','707442.3511221905','0.0489','0.0123','0.0179','12855120'),(161,'50025689','行业构成','2018-06-01','其它','681942.8990673496','-0.0707','0.0115','0.0144','12075784'),(162,'50025689','行业构成','2018-06-01','速食汤','654864.6448082249','-0.064','0.0107','0.014','11265988'),(163,'50025689','行业构成','2018-06-01','年糕','621726.2497665861','-0.0035','0.0097','0.0135','10301339'),(164,'50025689','行业构成','2018-06-01','海鲜丸类','121820.89864193524','0.0521','0.0005','0.0004','562792'),(165,'50025689','行业构成','2018-06-01','速食菜','119726.91588833583','0.1751','0.0005','0.0004','545854'),(166,'50025689','行业构成','2018-05-01','方便面/粉丝/米线','3608247.0673169163','0.0254','0.3452','0.3781','-9416644'),(167,'50025689','行业构成','2018-05-01','粽子','2791202.092097313','5.4412','0.2156','0.1939','50166319'),(168,'50025689','行业构成','2018-05-01','面条/挂面（待煮面条）','1492618.985933429','0.0728','0.0686','0.0729','40182087'),(169,'50025689','行业构成','2018-05-01','即食火锅','1368518.1712695104','-0.1329','0.0586','0.0551','35920936'),(170,'50025689','行业构成','2018-05-01','包装即食肠类','1173288.447415941','0.0314','0.0443','0.0537','28922169'),(171,'50025689','行业构成','2018-05-01','煎饼','1129142.3442482331','-0.135','0.0413','0.0413','27322761'),(172,'50025689','行业构成','2018-05-01','方便米饭','1036135.7757897717','0.0326','0.0353','0.0153','23969486'),(173,'50025689','行业构成','2018-05-01','面食','1002388.6115251614','0.0044','0.0332','0.0374','22764581'),(174,'50025689','行业构成','2018-05-01','冷面','901802.7532511668','0.2467','0.0274','0.0331','19237134'),(175,'50025689','行业构成','2018-05-01','其它','710073.8593217321','0.0163','0.0178','0.0164','12936417'),(176,'50025689','行业构成','2018-05-01','速食粥','707783.6472300804','0.0579','0.0177','0.0155','12865647'),(177,'50025689','行业构成','2018-05-01','意大利面','689049.2183088597','0.051','0.0168','0.019','12291397'),(178,'50025689','行业构成','2018-05-01','汤圆','685701.1373287765','0.2119','0.0167','0.0129','12189670'),(179,'50025689','行业构成','2018-05-01','速食汤','679201.7719316994','-0.0163','0.0164','0.0151','11992963'),(180,'50025689','行业构成','2018-05-01','肉制品','664061.3631895115','-0.0103','0.0157','0.0111','11538920'),(181,'50025689','行业构成','2018-05-01','水饺/馄饨','624894.3162638942','0.0007','0.0141','0.0138','10392258'),(182,'50025689','行业构成','2018-05-01','年糕','622943.1661525249','-0.0928','0.014','0.0146','10336233'),(183,'50025689','行业构成','2018-05-01','海鲜丸类','118393.58291883145','-0.0483','0.0007','0.0004','535195'),(184,'50025689','行业构成','2018-05-01','速食菜','109346.15149831348','0.1124','0.0006','0.0003','465406'),(185,'50025689','行业构成','2018-04-01','方便面/粉丝/米线','3559193.8460028563','-0.1124','0.4162','0.4327','-3730480'),(186,'50025689','行业构成','2018-04-01','即食火锅','1479789.758008802','0.0664','0.0835','0.0766','39752131'),(187,'50025689','行业构成','2018-04-01','面条/挂面（待煮面条）','1436191.246993443','-0.076','0.0791','0.0845','38271355'),(188,'50025689','行业构成','2018-04-01','煎饼','1222748.5844416602','-0.1336','0.059','0.058','30712569'),(189,'50025689','行业构成','2018-04-01','包装即食肠类','1153520.3503500377','0.0059','0.053','0.0638','28205846'),(190,'50025689','行业构成','2018-04-01','方便米饭','1017996.5242848248','-0.0116','0.0423','0.0188','23320796'),(191,'50025689','行业构成','2018-04-01','粽子','1006262.9205557746','1.588','0.0414','0.0442','22902456'),(192,'50025689','行业构成','2018-04-01','面食','999991.969272241','-0.1172','0.0409','0.0442','22679335'),(193,'50025689','行业构成','2018-04-01','冷面','798700.8887368583','0.1716','0.0272','0.0352','15763863'),(194,'50025689','行业构成','2018-04-01','其它','703767.9262503565','-0.1012','0.0216','0.0195','12741837'),(195,'50025689','行业构成','2018-04-01','速食粥','686144.8378307499','-0.0602','0.0206','0.0181','12203114'),(196,'50025689','行业构成','2018-04-01','速食汤','685388.7972479161','-0.142','0.0206','0.0183','12180173'),(197,'50025689','行业构成','2018-04-01','意大利面','670386.867779863','0.0095','0.0198','0.0217','11727894'),(198,'50025689','行业构成','2018-04-01','肉制品','667855.1643344064','0.0102','0.0197','0.0148','11652151'),(199,'50025689','行业构成','2018-04-01','年糕','657366.8527083077','-0.1231','0.0191','0.0194','11340019'),(200,'50025689','行业构成','2018-04-01','水饺/馄饨','624652.2642843844','-0.1193','0.0174','0.0164','10385303'),(201,'50025689','行业构成','2018-04-01','汤圆','616694.1597195882','0.1499','0.017','0.0127','10157505'),(202,'50025689','行业构成','2018-04-01','海鲜丸类','121729.61362800129','-0.1186','0.0009','0.0006','562051'),(203,'50025689','行业构成','2018-04-01','速食菜','102987.1709829657','0.0646','0.0007','0.0004','419027'),(204,'50025689','行业构成','2018-03-01','方便面/粉丝/米线','3797896.530614886','0.9956','0.447','0.4632','-34328437'),(205,'50025689','行业构成','2018-03-01','面条/挂面（待煮面条）','1499763.6878977853','0.8982','0.0816','0.0872','40420332'),(206,'50025689','行业构成','2018-03-01','即食火锅','1428532.275484177','1.1627','0.0747','0.0648','38008310'),(207,'50025689','行业构成','2018-03-01','煎饼','1322897.1007259418','1.1172','0.0649','0.0655','34307783'),(208,'50025689','行业构成','2018-03-01','包装即食肠类','1149772.1112920784','0.919','0.0503','0.0588','28070040'),(209,'50025689','行业构成','2018-03-01','面食','1070935.086196572','0.1934','0.0442','0.048','25219773'),(210,'50025689','行业构成','2018-03-01','方便米饭','1024562.9395544122','0.5223','0.0408','0.0187','23555342'),(211,'50025689','行业构成','2018-03-01','其它','746436.2908496277','0.8387','0.0229','0.0218','14076250'),(212,'50025689','行业构成','2018-03-01','速食汤','745808.8629721518','0.7685','0.0229','0.0215','14056316'),(213,'50025689','行业构成','2018-03-01','冷面','731947.9472218661','2.0517','0.0221','0.0282','13618519'),(214,'50025689','行业构成','2018-03-01','速食粥','710060.0965829212','0.8334','0.0209','0.0185','12936015'),(215,'50025689','行业构成','2018-03-01','年糕','706788.6805293299','0.0504','0.0208','0.0232','12834937'),(216,'50025689','行业构成','2018-03-01','水饺/馄饨','670018.762440146','0.0177','0.0188','0.0177','11716871'),(217,'50025689','行业构成','2018-03-01','意大利面','666915.0343864406','1.021','0.0187','0.0212','11624063'),(218,'50025689','行业构成','2018-03-01','肉制品','664133.9803692588','-0.2184','0.0186','0.0148','11541065'),(219,'50025689','行业构成','2018-03-01','粽子','595826.6052321168','0.9846','0.0152','0.0153','9568743'),(220,'50025689','行业构成','2018-03-01','汤圆','570913.6991963094','-0.1057','0.0141','0.0107','8882661'),(221,'50025689','行业构成','2018-03-01','海鲜丸类','130668.13253440912','0.2013','0.001','0.0007','636968'),(222,'50025689','行业构成','2018-03-01','速食菜','99421.0981504643','-0.5597','0.0006','0.0003','393991'),(223,'50025689','行业构成','2018-02-01','方便面/粉丝/米线','2605775.0575129287','-0.5157','0.3977','0.4224','54815832'),(224,'50025689','行业构成','2018-02-01','面条/挂面（待煮面条）','1054976.519193544','-0.4773','0.0763','0.0909','24645557'),(225,'50025689','行业构成','2018-02-01','面食','971718.8254167422','-0.4186','0.0657','0.0741','21677684'),(226,'50025689','行业构成','2018-02-01','即食火锅','935143.9161504088','-0.6413','0.0613','0.0511','20393811'),(227,'50025689','行业构成','2018-02-01','煎饼','875976.8177029238','-0.5725','0.0544','0.0549','18351399'),(228,'50025689','行业构成','2018-02-01','方便米饭','813011.5508094379','-0.4485','0.0475','0.0252','16235270'),(229,'50025689','行业构成','2018-02-01','包装即食肠类','803313.8389892717','-0.5752','0.0465','0.054','15915402'),(230,'50025689','行业构成','2018-02-01','肉制品','760815.5193280142','-0.518','0.0421','0.0229','14534986'),(231,'50025689','行业构成','2018-02-01','年糕','687873.9146080213','-0.5491','0.0351','0.0359','12255633'),(232,'50025689','行业构成','2018-02-01','水饺/馄饨','663549.2737172514','-0.3982','0.0329','0.0331','11523668'),(233,'50025689','行业构成','2018-02-01','汤圆','607265.4089048989','-0.1376','0.028','0.0284','9889923'),(234,'50025689','行业构成','2018-02-01','速食汤','544417.2096018768','-0.4654','0.023','0.021','8173906'),(235,'50025689','行业构成','2018-02-01','其它','533273.377160735','-0.4587','0.0221','0.0198','7882480'),(236,'50025689','行业构成','2018-02-01','速食粥','508024.3317350911','-0.5566','0.0203','0.0172','7237304'),(237,'50025689','行业构成','2018-02-01','意大利面','452020.3584808557','-0.5194','0.0164','0.0181','5884728'),(238,'50025689','行业构成','2018-02-01','粽子','407757.8146209373','-0.4806','0.0136','0.0112','4897063'),(239,'50025689','行业构成','2018-02-01','冷面','394975.441218724','-0.4985','0.0129','0.018','4625928'),(240,'50025689','行业构成','2018-02-01','速食菜','157567.49722667152','-0.2642','0.0025','0.0005','888064'),(241,'50025689','行业构成','2018-02-01','海鲜丸类','117884.73071155767','-0.5496','0.0015','0.0013','531151'),(242,'50025689','行业构成','2018-01-01','方便面/粉丝/米线','3868920.8896813574','0.1069','0.4008','0.4278','-44905177'),(243,'50025689','行业构成','2018-01-01','即食火锅','1641770.3514870538','-0.0368','0.0834','0.0776','44945254'),(244,'50025689','行业构成','2018-01-01','面条/挂面（待煮面条）','1506220.3002796136','0.098','0.0713','0.0768','40634867'),(245,'50025689','行业构成','2018-01-01','煎饼','1397245.3111778316','0.2026','0.0621','0.0649','36925602'),(246,'50025689','行业构成','2018-01-01','面食','1309034.2693645754','0.5204','0.0552','0.0626','33813925'),(247,'50025689','行业构成','2018-01-01','包装即食肠类','1286227.7941924836','0.1477','0.0534','0.0582','32998326'),(248,'50025689','行业构成','2018-01-01','肉制品','1136792.1899418242','1.1533','0.0427','0.0214','27599805'),(249,'50025689','行业构成','2018-01-01','方便米饭','1127943.9674383923','0.3452','0.0421','0.0233','27279348'),(250,'50025689','行业构成','2018-01-01','年糕','1066615.4046815622','0.3772','0.038','0.0409','25064209'),(251,'50025689','行业构成','2018-01-01','水饺/馄饨','877908.3224396803','0.3079','0.0267','0.0272','18417328'),(252,'50025689','行业构成','2018-01-01','速食粥','795894.6413590495','0.7006','0.0223','0.0157','15671882'),(253,'50025689','行业构成','2018-01-01','速食汤','769227.3211165795','0.0122','0.021','0.0192','14805363'),(254,'50025689','行业构成','2018-01-01','其它','748358.3486731867','0.1718','0.02','0.0184','14137313'),(255,'50025689','行业构成','2018-01-01','意大利面','677736.3381169601','0.2444','0.0167','0.0185','11948774'),(256,'50025689','行业构成','2018-01-01','汤圆','658965.9717108521','0.3934','0.0159','0.0157','11387417'),(257,'50025689','行业构成','2018-01-01','粽子','585942.3403927654','0.3565','0.0128','0.0111','9294318'),(258,'50025689','行业构成','2018-01-01','冷面','578697.8119389722','0.2779','0.0125','0.0189','9095017'),(259,'50025689','行业构成','2018-01-01','速食菜','187066.83601888153','2.4735','0.0016','0.0004','1206768'),(260,'50025689','行业构成','2018-01-01','海鲜丸类','184309.282245826','0.2889','0.0016','0.0014','1175095'),(261,'123248003','行业构成','2018-12-01','豆腐干','2619437.431784356','-0.1145','0.6235','0.5837','54565203'),(262,'123248003','行业构成','2018-12-01','素肉','1320198.8281172542','-0.0358','0.1783','0.1924','34211754'),(263,'123248003','行业构成','2018-12-01','面筋制品','996118.0818770326','-0.0741','0.1068','0.154','22541699'),(264,'123248003','行业构成','2018-12-01','蔬菜干','631588.575486998','-0.1329','0.0467','0.0427','10585288'),(265,'123248003','行业构成','2018-12-01','臭豆腐','556769.3548155003','-0.0696','0.0372','0.018','8501574'),(266,'123248003','行业构成','2018-12-01','素鸡','191729.23768232632','0.088','0.0055','0.0038','1261212'),(267,'123248003','行业构成','2018-12-01','千张','115083.96712436934','0.1434','0.0022','0.0055','509146'),(268,'123248003','行业构成','2018-12-01','豆腐干','2619437.431784356','-0.1145','0.6235','0.5837','54565203'),(269,'123248003','行业构成','2018-12-01','素肉','1320198.8281172542','-0.0358','0.1783','0.1924','34211754'),(270,'123248003','行业构成','2018-12-01','面筋制品','996118.0818770326','-0.0741','0.1068','0.154','22541699'),(271,'123248003','行业构成','2018-12-01','蔬菜干','631588.575486998','-0.1329','0.0467','0.0427','10585288'),(272,'123248003','行业构成','2018-12-01','臭豆腐','556769.3548155003','-0.0696','0.0372','0.018','8501574'),(273,'123248003','行业构成','2018-12-01','素鸡','191729.23768232632','0.088','0.0055','0.0038','1261212'),(274,'123248003','行业构成','2018-12-01','千张','115083.96712436934','0.1434','0.0022','0.0055','509146'),(275,'123248003','行业构成','2018-12-01','豆腐干','2619437.431784356','-0.1145','0.6235','0.5837','54565203'),(276,'123248003','行业构成','2018-12-01','素肉','1320198.8281172542','-0.0358','0.1783','0.1924','34211754'),(277,'123248003','行业构成','2018-12-01','面筋制品','996118.0818770326','-0.0741','0.1068','0.154','22541699'),(278,'123248003','行业构成','2018-12-01','蔬菜干','631588.575486998','-0.1329','0.0467','0.0427','10585288'),(279,'123248003','行业构成','2018-12-01','臭豆腐','556769.3548155003','-0.0696','0.0372','0.018','8501574'),(280,'123248003','行业构成','2018-12-01','素鸡','191729.23768232632','0.088','0.0055','0.0038','1261212'),(281,'123248003','行业构成','2018-12-01','千张','115083.96712436934','0.1434','0.0022','0.0055','509146'),(282,'123248003','行业构成','2018-12-01','豆腐干','2619437.431784356','-0.1145','0.6235','0.5837','54565203'),(283,'123248003','行业构成','2018-12-01','素肉','1320198.8281172542','-0.0358','0.1783','0.1924','34211754'),(284,'123248003','行业构成','2018-12-01','面筋制品','996118.0818770326','-0.0741','0.1068','0.154','22541699'),(285,'123248003','行业构成','2018-12-01','蔬菜干','631588.575486998','-0.1329','0.0467','0.0427','10585288'),(286,'123248003','行业构成','2018-12-01','臭豆腐','556769.3548155003','-0.0696','0.0372','0.018','8501574'),(287,'123248003','行业构成','2018-12-01','素鸡','191729.23768232632','0.088','0.0055','0.0038','1261212'),(288,'123248003','行业构成','2018-12-01','千张','115083.96712436934','0.1434','0.0022','0.0055','509146'),(289,'123248003','行业构成','2018-11-01','豆腐干','2619437.431784356','-0.1145','0.6235','0.5837','54565203'),(290,'123248003','行业构成','2018-11-01','素肉','1320198.8281172542','-0.0358','0.1783','0.1924','34211754'),(291,'123248003','行业构成','2018-11-01','面筋制品','996118.0818770326','-0.0741','0.1068','0.154','22541699'),(292,'123248003','行业构成','2018-11-01','蔬菜干','631588.575486998','-0.1329','0.0467','0.0427','10585288'),(293,'123248003','行业构成','2018-11-01','臭豆腐','556769.3548155003','-0.0696','0.0372','0.018','8501574'),(294,'123248003','行业构成','2018-11-01','素鸡','191729.23768232632','0.088','0.0055','0.0038','1261212'),(295,'123248003','行业构成','2018-11-01','千张','115083.96712436934','0.1434','0.0022','0.0055','509146');
/*!40000 ALTER TABLE `industry_composition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_hotpurpose`
--

DROP TABLE IF EXISTS `item_hotpurpose`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `item_hotpurpose` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cateID` varchar(40) DEFAULT NULL,
  `Data_module` varchar(40) DEFAULT NULL,
  `data_type` varchar(40) DEFAULT NULL,
  `date` varchar(40) DEFAULT NULL,
  `item_title` varchar(40) DEFAULT NULL,
  `itemId` varchar(40) DEFAULT NULL,
  `detailUrl` varchar(40) DEFAULT NULL,
  `cateRankId` varchar(40) DEFAULT NULL,
  `shop_title` varchar(40) DEFAULT NULL,
  `userId` varchar(40) DEFAULT NULL,
  `shopUrl` varchar(40) DEFAULT NULL,
  `cltHits` varchar(40) DEFAULT NULL,
  `cartHits` varchar(40) DEFAULT NULL,
  `tradeIndex` varchar(40) DEFAULT NULL,
  `Collection` varchar(40) DEFAULT NULL,
  `Shopping_Cart` varchar(40) DEFAULT NULL,
  `Payment_amount` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_hotpurpose`
--

LOCK TABLES `item_hotpurpose` WRITE;
/*!40000 ALTER TABLE `item_hotpurpose` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_hotpurpose` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_hotsale`
--

DROP TABLE IF EXISTS `item_hotsale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `item_hotsale` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cateID` varchar(40) DEFAULT NULL,
  `Data_module` varchar(40) DEFAULT NULL,
  `data_type` varchar(40) DEFAULT NULL,
  `date` varchar(40) DEFAULT NULL,
  `item_title` varchar(40) DEFAULT NULL,
  `itemId` varchar(40) DEFAULT NULL,
  `detailUrl` varchar(40) DEFAULT NULL,
  `cateRankId` varchar(40) DEFAULT NULL,
  `shop_title` varchar(40) DEFAULT NULL,
  `userId` varchar(40) DEFAULT NULL,
  `shopUrl` varchar(40) DEFAULT NULL,
  `payRateIndex` varchar(40) DEFAULT NULL,
  `tradeIndex` varchar(40) DEFAULT NULL,
  `Conversion_rate` varchar(40) DEFAULT NULL,
  `Payment_amount` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_hotsale`
--

LOCK TABLES `item_hotsale` WRITE;
/*!40000 ALTER TABLE `item_hotsale` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_hotsale` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_hotsearch`
--

DROP TABLE IF EXISTS `item_hotsearch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `item_hotsearch` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cateID` varchar(40) DEFAULT NULL,
  `Data_module` varchar(40) DEFAULT NULL,
  `data_type` varchar(40) DEFAULT NULL,
  `date` varchar(40) DEFAULT NULL,
  `item_title` varchar(40) DEFAULT NULL,
  `itemId` varchar(40) DEFAULT NULL,
  `detailUrl` varchar(40) DEFAULT NULL,
  `cateRankId` varchar(40) DEFAULT NULL,
  `shop_title` varchar(40) DEFAULT NULL,
  `userId` varchar(40) DEFAULT NULL,
  `shopUrl` varchar(40) DEFAULT NULL,
  `uvIndex` varchar(40) DEFAULT NULL,
  `seIpvUvHits` varchar(40) DEFAULT NULL,
  `tradeIndex` varchar(40) DEFAULT NULL,
  `Search` varchar(40) DEFAULT NULL,
  `Payment_amount` varchar(40) DEFAULT NULL,
  `Visitor` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_hotsearch`
--

LOCK TABLES `item_hotsearch` WRITE;
/*!40000 ALTER TABLE `item_hotsearch` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_hotsearch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keyword_competition`
--

DROP TABLE IF EXISTS `keyword_competition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `keyword_competition` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cateID` varchar(40) DEFAULT NULL,
  `Data_module` varchar(40) DEFAULT NULL,
  `item_ID` varchar(40) DEFAULT NULL,
  `keyword` varchar(40) DEFAULT NULL,
  `type_` varchar(40) DEFAULT NULL,
  `real` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keyword_competition`
--

LOCK TABLES `keyword_competition` WRITE;
/*!40000 ALTER TABLE `keyword_competition` DISABLE KEYS */;
/*!40000 ALTER TABLE `keyword_competition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modifiers_word`
--

DROP TABLE IF EXISTS `modifiers_word`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `modifiers_word` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cateID` varchar(40) DEFAULT NULL,
  `Data_module` varchar(40) DEFAULT NULL,
  `data_type` varchar(40) DEFAULT NULL,
  `date` varchar(40) DEFAULT NULL,
  `searchWord` varchar(40) DEFAULT NULL,
  `hotSearchRank` varchar(40) DEFAULT NULL,
  `relSeWordCnt` varchar(40) DEFAULT NULL,
  `avgWordSeIpvUvHits` varchar(40) DEFAULT NULL,
  `avgWordClickHits` varchar(40) DEFAULT NULL,
  `p4pRefPrice` varchar(40) DEFAULT NULL,
  `search` varchar(40) DEFAULT NULL,
  `click` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modifiers_word`
--

LOCK TABLES `modifiers_word` WRITE;
/*!40000 ALTER TABLE `modifiers_word` DISABLE KEYS */;
/*!40000 ALTER TABLE `modifiers_word` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `price_band`
--

DROP TABLE IF EXISTS `price_band`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `price_band` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cateID` varchar(40) DEFAULT NULL,
  `Data_module` varchar(40) DEFAULT NULL,
  `date` varchar(40) DEFAULT NULL,
  `shop_ID` varchar(40) DEFAULT NULL,
  `priceSegName` varchar(40) DEFAULT NULL,
  `payAmtRatio` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `price_band`
--

LOCK TABLES `price_band` WRITE;
/*!40000 ALTER TABLE `price_band` DISABLE KEYS */;
/*!40000 ALTER TABLE `price_band` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `search_analysis30`
--

DROP TABLE IF EXISTS `search_analysis30`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `search_analysis30` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Data_module` varchar(40) DEFAULT NULL,
  `date` varchar(40) DEFAULT NULL,
  `word` varchar(40) DEFAULT NULL,
  `keyword` varchar(40) DEFAULT NULL,
  `seIpvUvHits` varchar(40) DEFAULT NULL,
  `spvRatio` varchar(40) DEFAULT NULL,
  `sePvIndex` varchar(40) DEFAULT NULL,
  `clickRate` varchar(40) DEFAULT NULL,
  `clickHits` varchar(40) DEFAULT NULL,
  `clickHot` varchar(40) DEFAULT NULL,
  `tradeIndex` varchar(40) DEFAULT NULL,
  `payConvRate` varchar(40) DEFAULT NULL,
  `onlineGoodsCnt` varchar(40) DEFAULT NULL,
  `tmClickRatio` varchar(40) DEFAULT NULL,
  `p4pAmt` varchar(40) DEFAULT NULL,
  `Search_frequency` varchar(40) DEFAULT NULL,
  `click_Number` varchar(40) DEFAULT NULL,
  `click_Popularity` varchar(40) DEFAULT NULL,
  `Payment_amount` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `search_analysis30`
--

LOCK TABLES `search_analysis30` WRITE;
/*!40000 ALTER TABLE `search_analysis30` DISABLE KEYS */;
/*!40000 ALTER TABLE `search_analysis30` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `search_terms`
--

DROP TABLE IF EXISTS `search_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `search_terms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cateID` varchar(40) DEFAULT NULL,
  `Data_module` varchar(40) DEFAULT NULL,
  `data_type` varchar(40) DEFAULT NULL,
  `date` varchar(40) DEFAULT NULL,
  `searchWord` varchar(40) DEFAULT NULL,
  `hotSearchRank` varchar(40) DEFAULT NULL,
  `seIpvUvHits` varchar(40) DEFAULT NULL,
  `clickHits` varchar(40) DEFAULT NULL,
  `clickRate` varchar(40) DEFAULT NULL,
  `payRate` varchar(40) DEFAULT NULL,
  `p4pRefPrice` varchar(40) DEFAULT NULL,
  `tmClickRate` varchar(40) DEFAULT NULL,
  `search` varchar(40) DEFAULT NULL,
  `click` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `search_terms`
--

LOCK TABLES `search_terms` WRITE;
/*!40000 ALTER TABLE `search_terms` DISABLE KEYS */;
/*!40000 ALTER TABLE `search_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_hotsale`
--

DROP TABLE IF EXISTS `shop_hotsale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `shop_hotsale` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cateID` varchar(40) DEFAULT NULL,
  `Data_module` varchar(40) DEFAULT NULL,
  `data_type` varchar(40) DEFAULT NULL,
  `date` varchar(40) DEFAULT NULL,
  `shop_title` varchar(40) DEFAULT NULL,
  `cateRankId` varchar(40) DEFAULT NULL,
  `userId` varchar(40) DEFAULT NULL,
  `shopUrl` varchar(40) DEFAULT NULL,
  `b2CShop` varchar(40) DEFAULT NULL,
  `tradeIndex` varchar(40) DEFAULT NULL,
  `payRateIndex` varchar(40) DEFAULT NULL,
  `Conversion_rate` varchar(40) DEFAULT NULL,
  `Payment_amount` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_hotsale`
--

LOCK TABLES `shop_hotsale` WRITE;
/*!40000 ALTER TABLE `shop_hotsale` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_hotsale` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_hotsearch`
--

DROP TABLE IF EXISTS `shop_hotsearch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `shop_hotsearch` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cateID` varchar(40) DEFAULT NULL,
  `Data_module` varchar(40) DEFAULT NULL,
  `data_type` varchar(40) DEFAULT NULL,
  `date` varchar(40) DEFAULT NULL,
  `shop_title` varchar(40) DEFAULT NULL,
  `cateRankId` varchar(40) DEFAULT NULL,
  `userId` varchar(40) DEFAULT NULL,
  `shopUrl` varchar(40) DEFAULT NULL,
  `b2CShop` varchar(40) DEFAULT NULL,
  `uvIndex` varchar(40) DEFAULT NULL,
  `seIpvUvHits` varchar(40) DEFAULT NULL,
  `tradeIndex` varchar(40) DEFAULT NULL,
  `Search` varchar(40) DEFAULT NULL,
  `Payment_amount` varchar(40) DEFAULT NULL,
  `Visitor` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_hotsearch`
--

LOCK TABLES `shop_hotsearch` WRITE;
/*!40000 ALTER TABLE `shop_hotsearch` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_hotsearch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `source_of_entry_product`
--

DROP TABLE IF EXISTS `source_of_entry_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `source_of_entry_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cateID` varchar(40) DEFAULT NULL,
  `Data_module` varchar(40) DEFAULT NULL,
  `date` varchar(40) DEFAULT NULL,
  `itemID` varchar(40) DEFAULT NULL,
  `pageName` varchar(40) DEFAULT NULL,
  `rivalItem1PayByrCntIndex` varchar(40) DEFAULT NULL,
  `uv` varchar(40) DEFAULT NULL,
  `rivalItem1PayRateIndex` varchar(40) DEFAULT NULL,
  `rivalItem1TradeIndex` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `source_of_entry_product`
--

LOCK TABLES `source_of_entry_product` WRITE;
/*!40000 ALTER TABLE `source_of_entry_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `source_of_entry_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subindustry_distribution`
--

DROP TABLE IF EXISTS `subindustry_distribution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `subindustry_distribution` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cateID` varchar(40) DEFAULT NULL,
  `Data_module` varchar(40) DEFAULT NULL,
  `date` varchar(40) DEFAULT NULL,
  `cateName` varchar(40) DEFAULT NULL,
  `slrCnt` varchar(40) DEFAULT NULL,
  `parentCateSlrRate` varchar(40) DEFAULT NULL,
  `tradeSlrCnt` varchar(40) DEFAULT NULL,
  `parentCateTradeSlrCntRate` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=229 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subindustry_distribution`
--

LOCK TABLES `subindustry_distribution` WRITE;
/*!40000 ALTER TABLE `subindustry_distribution` DISABLE KEYS */;
INSERT INTO `subindustry_distribution` VALUES (1,'50025689','子行业分布','2018-12-01','方便面/粉丝/米线','28362','0.5392','13142','0.4881'),(2,'50025689','子行业分布','2018-12-01','面条/挂面（待煮面条）','12965','0.2465','6891','0.2559'),(3,'50025689','子行业分布','2018-12-01','面食','5567','0.1058','3140','0.1166'),(4,'50025689','子行业分布','2018-12-01','其它','5337','0.1015','2446','0.0908'),(5,'50025689','子行业分布','2018-12-01','即食火锅','5212','0.0991','2394','0.0889'),(6,'50025689','子行业分布','2018-12-01','年糕','4775','0.0908','2872','0.1067'),(7,'50025689','子行业分布','2018-12-01','速食汤','4552','0.0865','2258','0.0839'),(8,'50025689','子行业分布','2018-12-01','包装即食肠类','4087','0.0777','2107','0.0782'),(9,'50025689','子行业分布','2018-12-01','意大利面','4085','0.0777','1836','0.0682'),(10,'50025689','子行业分布','2018-12-01','肉制品','3912','0.0744','1757','0.0652'),(11,'50025689','子行业分布','2018-12-01','粽子','3830','0.0728','805','0.0299'),(12,'50025689','子行业分布','2018-12-01','煎饼','3784','0.0719','2111','0.0784'),(13,'50025689','子行业分布','2018-12-01','方便米饭','2992','0.0569','1473','0.0547'),(14,'50025689','子行业分布','2018-12-01','速食粥','2928','0.0557','1277','0.0474'),(15,'50025689','子行业分布','2018-12-01','冷面','2478','0.0471','1206','0.0448'),(16,'50025689','子行业分布','2018-12-01','水饺/馄饨','2368','0.045','1101','0.0409'),(17,'50025689','子行业分布','2018-12-01','汤圆','2054','0.039','1177','0.0437'),(18,'50025689','子行业分布','2018-12-01','海鲜丸类','579','0.011','288','0.0107'),(19,'50025689','子行业分布','2018-12-01','速食菜','452','0.0086','220','0.0082'),(20,'50025689','子行业分布','2018-11-01','方便面/粉丝/米线','27467','0.5344','13022','0.4935'),(21,'50025689','子行业分布','2018-11-01','面条/挂面（待煮面条）','12799','0.249','6816','0.2583'),(22,'50025689','子行业分布','2018-11-01','面食','5382','0.1047','2998','0.1136'),(23,'50025689','子行业分布','2018-11-01','其它','5321','0.1035','2406','0.0912'),(24,'50025689','子行业分布','2018-11-01','即食火锅','4854','0.0944','2246','0.0851'),(25,'50025689','子行业分布','2018-11-01','速食汤','4478','0.0871','2238','0.0848'),(26,'50025689','子行业分布','2018-11-01','年糕','4455','0.0867','2579','0.0977'),(27,'50025689','子行业分布','2018-11-01','意大利面','4067','0.0791','1804','0.0684'),(28,'50025689','子行业分布','2018-11-01','粽子','4030','0.0784','834','0.0316'),(29,'50025689','子行业分布','2018-11-01','包装即食肠类','4015','0.0781','2076','0.0787'),(30,'50025689','子行业分布','2018-11-01','肉制品','3831','0.0745','1748','0.0662'),(31,'50025689','子行业分布','2018-11-01','煎饼','3629','0.0706','2029','0.0769'),(32,'50025689','子行业分布','2018-11-01','方便米饭','2866','0.0558','1382','0.0524'),(33,'50025689','子行业分布','2018-11-01','速食粥','2850','0.0554','1294','0.049'),(34,'50025689','子行业分布','2018-11-01','冷面','2475','0.0482','1188','0.045'),(35,'50025689','子行业分布','2018-11-01','水饺/馄饨','2204','0.0429','1047','0.0397'),(36,'50025689','子行业分布','2018-11-01','汤圆','1913','0.0372','1054','0.0399'),(37,'50025689','子行业分布','2018-11-01','海鲜丸类','550','0.0107','260','0.0099'),(38,'50025689','子行业分布','2018-11-01','速食菜','374','0.0073','199','0.0075'),(39,'50025689','子行业分布','2018-10-01','方便面/粉丝/米线','26364','0.5261','12705','0.4902'),(40,'50025689','子行业分布','2018-10-01','面条/挂面（待煮面条）','12480','0.249','6684','0.2579'),(41,'50025689','子行业分布','2018-10-01','其它','5267','0.1051','2405','0.0928'),(42,'50025689','子行业分布','2018-10-01','面食','5207','0.1039','2919','0.1126'),(43,'50025689','子行业分布','2018-10-01','即食火锅','4429','0.0884','2059','0.0794'),(44,'50025689','子行业分布','2018-10-01','速食汤','4333','0.0865','2250','0.0868'),(45,'50025689','子行业分布','2018-10-01','粽子','4251','0.0848','907','0.035'),(46,'50025689','子行业分布','2018-10-01','年糕','4168','0.0832','2348','0.0906'),(47,'50025689','子行业分布','2018-10-01','意大利面','4039','0.0806','1827','0.0705'),(48,'50025689','子行业分布','2018-10-01','包装即食肠类','3942','0.0787','2057','0.0794'),(49,'50025689','子行业分布','2018-10-01','肉制品','3741','0.0746','1738','0.0671'),(50,'50025689','子行业分布','2018-10-01','煎饼','3494','0.0697','1990','0.0768'),(51,'50025689','子行业分布','2018-10-01','方便米饭','2812','0.0561','1337','0.0516'),(52,'50025689','子行业分布','2018-10-01','速食粥','2736','0.0546','1283','0.0495'),(53,'50025689','子行业分布','2018-10-01','冷面','2484','0.0496','1224','0.0472'),(54,'50025689','子行业分布','2018-10-01','水饺/馄饨','2100','0.0419','982','0.0379'),(55,'50025689','子行业分布','2018-10-01','汤圆','1822','0.0364','995','0.0384'),(56,'50025689','子行业分布','2018-10-01','海鲜丸类','521','0.0104','250','0.0096'),(57,'50025689','子行业分布','2018-10-01','速食菜','329','0.0066','163','0.0063'),(58,'50025689','子行业分布','2018-09-01','方便面/粉丝/米线','25216','0.515','12492','0.4874'),(59,'50025689','子行业分布','2018-09-01','面条/挂面（待煮面条）','12263','0.2505','6606','0.2577'),(60,'50025689','子行业分布','2018-09-01','其它','5258','0.1074','2447','0.0955'),(61,'50025689','子行业分布','2018-09-01','面食','4975','0.1016','2785','0.1087'),(62,'50025689','子行业分布','2018-09-01','粽子','4638','0.0947','1018','0.0397'),(63,'50025689','子行业分布','2018-09-01','速食汤','4237','0.0865','2170','0.0847'),(64,'50025689','子行业分布','2018-09-01','即食火锅','4158','0.0849','1972','0.0769'),(65,'50025689','子行业分布','2018-09-01','意大利面','4025','0.0822','1814','0.0708'),(66,'50025689','子行业分布','2018-09-01','年糕','3976','0.0812','2084','0.0813'),(67,'50025689','子行业分布','2018-09-01','包装即食肠类','3906','0.0798','2058','0.0803'),(68,'50025689','子行业分布','2018-09-01','肉制品','3696','0.0755','1714','0.0669'),(69,'50025689','子行业分布','2018-09-01','煎饼','3373','0.0689','1941','0.0757'),(70,'50025689','子行业分布','2018-09-01','方便米饭','2790','0.057','1326','0.0517'),(71,'50025689','子行业分布','2018-09-01','速食粥','2647','0.0541','1275','0.0497'),(72,'50025689','子行业分布','2018-09-01','冷面','2470','0.0504','1316','0.0513'),(73,'50025689','子行业分布','2018-09-01','水饺/馄饨','2004','0.0409','977','0.0381'),(74,'50025689','子行业分布','2018-09-01','汤圆','1797','0.0367','975','0.038'),(75,'50025689','子行业分布','2018-09-01','海鲜丸类','498','0.0102','232','0.0091'),(76,'50025689','子行业分布','2018-09-01','速食菜','306','0.0062','160','0.0062'),(77,'50025689','子行业分布','2018-08-01','方便面/粉丝/米线','24443','0.5058','12482','0.4892'),(78,'50025689','子行业分布','2018-08-01','面条/挂面（待煮面条）','12069','0.2498','6604','0.2588'),(79,'50025689','子行业分布','2018-08-01','粽子','5387','0.1115','1094','0.0429'),(80,'50025689','子行业分布','2018-08-01','其它','5275','0.1092','2429','0.0952'),(81,'50025689','子行业分布','2018-08-01','面食','4873','0.1008','2698','0.1057'),(82,'50025689','子行业分布','2018-08-01','速食汤','4182','0.0865','2179','0.0854'),(83,'50025689','子行业分布','2018-08-01','即食火锅','4024','0.0833','1842','0.0722'),(84,'50025689','子行业分布','2018-08-01','意大利面','4010','0.083','1841','0.0722'),(85,'50025689','子行业分布','2018-08-01','年糕','3925','0.0812','2004','0.0785'),(86,'50025689','子行业分布','2018-08-01','包装即食肠类','3887','0.0804','2056','0.0806'),(87,'50025689','子行业分布','2018-08-01','肉制品','3703','0.0766','1677','0.0657'),(88,'50025689','子行业分布','2018-08-01','煎饼','3305','0.0684','1884','0.0738'),(89,'50025689','子行业分布','2018-08-01','方便米饭','2722','0.0563','1354','0.0531'),(90,'50025689','子行业分布','2018-08-01','速食粥','2632','0.0545','1278','0.0501'),(91,'50025689','子行业分布','2018-08-01','冷面','2466','0.051','1450','0.0568'),(92,'50025689','子行业分布','2018-08-01','水饺/馄饨','2026','0.0419','933','0.0366'),(93,'50025689','子行业分布','2018-08-01','汤圆','1794','0.0371','1027','0.0403'),(94,'50025689','子行业分布','2018-08-01','海鲜丸类','497','0.0103','223','0.0087'),(95,'50025689','子行业分布','2018-08-01','速食菜','253','0.0052','145','0.0057'),(96,'50025689','子行业分布','2018-07-01','方便面/粉丝/米线','24235','0.5003','12282','0.4809'),(97,'50025689','子行业分布','2018-07-01','面条/挂面（待煮面条）','12049','0.2487','6572','0.2573'),(98,'50025689','子行业分布','2018-07-01','粽子','5627','0.1162','1388','0.0543'),(99,'50025689','子行业分布','2018-07-01','其它','5377','0.111','2443','0.0957'),(100,'50025689','子行业分布','2018-07-01','面食','4856','0.1002','2650','0.1038'),(101,'50025689','子行业分布','2018-07-01','速食汤','4180','0.0863','2163','0.0847'),(102,'50025689','子行业分布','2018-07-01','即食火锅','4105','0.0847','1918','0.0751'),(103,'50025689','子行业分布','2018-07-01','意大利面','4049','0.0836','1889','0.074'),(104,'50025689','子行业分布','2018-07-01','年糕','4019','0.083','1965','0.0769'),(105,'50025689','子行业分布','2018-07-01','包装即食肠类','3950','0.0815','2056','0.0805'),(106,'50025689','子行业分布','2018-07-01','肉制品','3724','0.0769','1621','0.0635'),(107,'50025689','子行业分布','2018-07-01','煎饼','3303','0.0682','1824','0.0714'),(108,'50025689','子行业分布','2018-07-01','方便米饭','2727','0.0563','1312','0.0514'),(109,'50025689','子行业分布','2018-07-01','速食粥','2641','0.0545','1287','0.0504'),(110,'50025689','子行业分布','2018-07-01','冷面','2459','0.0508','1532','0.06'),(111,'50025689','子行业分布','2018-07-01','水饺/馄饨','2049','0.0423','925','0.0362'),(112,'50025689','子行业分布','2018-07-01','汤圆','1789','0.0369','1015','0.0397'),(113,'50025689','子行业分布','2018-07-01','海鲜丸类','504','0.0104','228','0.0089'),(114,'50025689','子行业分布','2018-07-01','速食菜','229','0.0047','132','0.0052'),(115,'50025689','子行业分布','2018-06-01','方便面/粉丝/米线','25332','0.5042','11718','0.4469'),(116,'50025689','子行业分布','2018-06-01','面条/挂面（待煮面条）','12343','0.2457','6341','0.2418'),(117,'50025689','子行业分布','2018-06-01','粽子','5928','0.118','3553','0.1355'),(118,'50025689','子行业分布','2018-06-01','其它','5700','0.1135','2428','0.0926'),(119,'50025689','子行业分布','2018-06-01','面食','4981','0.0991','2669','0.1018'),(120,'50025689','子行业分布','2018-06-01','即食火锅','4353','0.0866','1820','0.0694'),(121,'50025689','子行业分布','2018-06-01','速食汤','4310','0.0858','2076','0.0792'),(122,'50025689','子行业分布','2018-06-01','年糕','4287','0.0853','1963','0.0749'),(123,'50025689','子行业分布','2018-06-01','意大利面','4171','0.083','1882','0.0718'),(124,'50025689','子行业分布','2018-06-01','包装即食肠类','4103','0.0817','2026','0.0773'),(125,'50025689','子行业分布','2018-06-01','肉制品','3960','0.0788','1599','0.061'),(126,'50025689','子行业分布','2018-06-01','煎饼','3361','0.0669','1806','0.0689'),(127,'50025689','子行业分布','2018-06-01','方便米饭','2885','0.0574','1287','0.0491'),(128,'50025689','子行业分布','2018-06-01','速食粥','2763','0.055','1244','0.0474'),(129,'50025689','子行业分布','2018-06-01','冷面','2453','0.0488','1429','0.0545'),(130,'50025689','子行业分布','2018-06-01','水饺/馄饨','2190','0.0436','915','0.0349'),(131,'50025689','子行业分布','2018-06-01','汤圆','1856','0.0369','992','0.0378'),(132,'50025689','子行业分布','2018-06-01','海鲜丸类','530','0.0106','224','0.0085'),(133,'50025689','子行业分布','2018-06-01','速食菜','207','0.0041','114','0.0043'),(134,'50025689','子行业分布','2018-05-01','方便面/粉丝/米线','24950','0.5041','11405','0.449'),(135,'50025689','子行业分布','2018-05-01','面条/挂面（待煮面条）','12216','0.2468','6223','0.245'),(136,'50025689','子行业分布','2018-05-01','其它','5657','0.1143','2450','0.0964'),(137,'50025689','子行业分布','2018-05-01','粽子','5422','0.1096','2819','0.111'),(138,'50025689','子行业分布','2018-05-01','面食','4970','0.1004','2642','0.104'),(139,'50025689','子行业分布','2018-05-01','年糕','4376','0.0884','2057','0.081'),(140,'50025689','子行业分布','2018-05-01','即食火锅','4264','0.0862','1763','0.0694'),(141,'50025689','子行业分布','2018-05-01','速食汤','4245','0.0858','2087','0.0822'),(142,'50025689','子行业分布','2018-05-01','意大利面','4131','0.0835','1866','0.0735'),(143,'50025689','子行业分布','2018-05-01','包装即食肠类','4037','0.0816','2005','0.0789'),(144,'50025689','子行业分布','2018-05-01','肉制品','3944','0.0797','1628','0.0641'),(145,'50025689','子行业分布','2018-05-01','煎饼','3328','0.0672','1811','0.0713'),(146,'50025689','子行业分布','2018-05-01','方便米饭','2877','0.0581','1319','0.0519'),(147,'50025689','子行业分布','2018-05-01','速食粥','2697','0.0545','1239','0.0488'),(148,'50025689','子行业分布','2018-05-01','冷面','2330','0.0471','1377','0.0542'),(149,'50025689','子行业分布','2018-05-01','水饺/馄饨','2124','0.0429','924','0.0364'),(150,'50025689','子行业分布','2018-05-01','汤圆','1817','0.0367','937','0.0369'),(151,'50025689','子行业分布','2018-05-01','海鲜丸类','535','0.0108','228','0.009'),(152,'50025689','子行业分布','2018-05-01','速食菜','173','0.0035','97','0.0038'),(153,'50025689','子行业分布','2018-04-01','方便面/粉丝/米线','24346','0.5132','10883','0.4615'),(154,'50025689','子行业分布','2018-04-01','面条/挂面（待煮面条）','11884','0.2505','5926','0.2513'),(155,'50025689','子行业分布','2018-04-01','其它','5576','0.1175','2379','0.1009'),(156,'50025689','子行业分布','2018-04-01','面食','4853','0.1023','2558','0.1085'),(157,'50025689','子行业分布','2018-04-01','年糕','4418','0.0931','2058','0.0873'),(158,'50025689','子行业分布','2018-04-01','速食汤','4093','0.0863','2004','0.085'),(159,'50025689','子行业分布','2018-04-01','意大利面','4078','0.086','1772','0.0751'),(160,'50025689','子行业分布','2018-04-01','即食火锅','4061','0.0856','1645','0.0698'),(161,'50025689','子行业分布','2018-04-01','包装即食肠类','3992','0.0841','1960','0.0831'),(162,'50025689','子行业分布','2018-04-01','肉制品','3897','0.0821','1558','0.0661'),(163,'50025689','子行业分布','2018-04-01','粽子','3501','0.0738','1443','0.0612'),(164,'50025689','子行业分布','2018-04-01','煎饼','3268','0.0689','1759','0.0746'),(165,'50025689','子行业分布','2018-04-01','方便米饭','2808','0.0592','1277','0.0542'),(166,'50025689','子行业分布','2018-04-01','速食粥','2604','0.0549','1169','0.0496'),(167,'50025689','子行业分布','2018-04-01','冷面','2182','0.046','1217','0.0516'),(168,'50025689','子行业分布','2018-04-01','水饺/馄饨','1958','0.0413','887','0.0376'),(169,'50025689','子行业分布','2018-04-01','汤圆','1718','0.0362','869','0.0369'),(170,'50025689','子行业分布','2018-04-01','海鲜丸类','535','0.0113','221','0.0094'),(171,'50025689','子行业分布','2018-04-01','速食菜','124','0.0026','73','0.0031'),(172,'50025689','子行业分布','2018-03-01','方便面/粉丝/米线','24908','0.524','10467','0.4661'),(173,'50025689','子行业分布','2018-03-01','面条/挂面（待煮面条）','11854','0.2494','5812','0.2588'),(174,'50025689','子行业分布','2018-03-01','其它','5678','0.1195','2331','0.1038'),(175,'50025689','子行业分布','2018-03-01','面食','4767','0.1003','2497','0.1112'),(176,'50025689','子行业分布','2018-03-01','年糕','4455','0.0937','2092','0.0932'),(177,'50025689','子行业分布','2018-03-01','意大利面','4086','0.086','1728','0.077'),(178,'50025689','子行业分布','2018-03-01','速食汤','4079','0.0858','1985','0.0884'),(179,'50025689','子行业分布','2018-03-01','包装即食肠类','3985','0.0838','1868','0.0832'),(180,'50025689','子行业分布','2018-03-01','肉制品','3945','0.083','1526','0.068'),(181,'50025689','子行业分布','2018-03-01','即食火锅','3867','0.0814','1511','0.0673'),(182,'50025689','子行业分布','2018-03-01','煎饼','3199','0.0673','1703','0.0758'),(183,'50025689','子行业分布','2018-03-01','方便米饭','2842','0.0598','1279','0.057'),(184,'50025689','子行业分布','2018-03-01','粽子','2744','0.0577','841','0.0375'),(185,'50025689','子行业分布','2018-03-01','速食粥','2558','0.0538','1112','0.0495'),(186,'50025689','子行业分布','2018-03-01','冷面','2096','0.0441','1092','0.0486'),(187,'50025689','子行业分布','2018-03-01','水饺/馄饨','1952','0.0411','862','0.0384'),(188,'50025689','子行业分布','2018-03-01','汤圆','1628','0.0343','829','0.0369'),(189,'50025689','子行业分布','2018-03-01','海鲜丸类','537','0.0113','221','0.0098'),(190,'50025689','子行业分布','2018-03-01','速食菜','80','0.0017','60','0.0027'),(191,'50025689','子行业分布','2018-02-01','方便面/粉丝/米线','24521','0.5256','9058','0.4561'),(192,'50025689','子行业分布','2018-02-01','面条/挂面（待煮面条）','11622','0.2491','4957','0.2496'),(193,'50025689','子行业分布','2018-02-01','其它','5682','0.1218','2022','0.1018'),(194,'50025689','子行业分布','2018-02-01','面食','4625','0.0991','2243','0.1129'),(195,'50025689','子行业分布','2018-02-01','年糕','4448','0.0953','1986','0.1'),(196,'50025689','子行业分布','2018-02-01','意大利面','4014','0.086','1474','0.0742'),(197,'50025689','子行业分布','2018-02-01','速食汤','4007','0.0859','1710','0.0861'),(198,'50025689','子行业分布','2018-02-01','肉制品','3975','0.0852','1348','0.0679'),(199,'50025689','子行业分布','2018-02-01','包装即食肠类','3963','0.085','1598','0.0805'),(200,'50025689','子行业分布','2018-02-01','即食火锅','3555','0.0762','1229','0.0619'),(201,'50025689','子行业分布','2018-02-01','煎饼','3059','0.0656','1486','0.0748'),(202,'50025689','子行业分布','2018-02-01','方便米饭','2781','0.0596','1125','0.0566'),(203,'50025689','子行业分布','2018-02-01','粽子','2644','0.0567','658','0.0331'),(204,'50025689','子行业分布','2018-02-01','速食粥','2517','0.054','910','0.0458'),(205,'50025689','子行业分布','2018-02-01','冷面','2051','0.044','877','0.0442'),(206,'50025689','子行业分布','2018-02-01','水饺/馄饨','1875','0.0402','766','0.0386'),(207,'50025689','子行业分布','2018-02-01','汤圆','1561','0.0335','770','0.0388'),(208,'50025689','子行业分布','2018-02-01','海鲜丸类','520','0.0111','225','0.0113'),(209,'50025689','子行业分布','2018-02-01','速食菜','43','0.0009','45','0.0023'),(210,'50025689','子行业分布','2018-01-01','方便面/粉丝/米线','25896','0.5341','9926','0.4604'),(211,'50025689','子行业分布','2018-01-01','面条/挂面（待煮面条）','12023','0.248','5531','0.2565'),(212,'50025689','子行业分布','2018-01-01','其它','5873','0.1211','2263','0.105'),(213,'50025689','子行业分布','2018-01-01','面食','4729','0.0975','2429','0.1127'),(214,'50025689','子行业分布','2018-01-01','年糕','4536','0.0936','2190','0.1016'),(215,'50025689','子行业分布','2018-01-01','速食汤','4116','0.0849','1907','0.0885'),(216,'50025689','子行业分布','2018-01-01','意大利面','4114','0.0849','1712','0.0794'),(217,'50025689','子行业分布','2018-01-01','包装即食肠类','4094','0.0844','1858','0.0862'),(218,'50025689','子行业分布','2018-01-01','肉制品','4079','0.0841','1555','0.0721'),(219,'50025689','子行业分布','2018-01-01','即食火锅','3611','0.0745','1381','0.0641'),(220,'50025689','子行业分布','2018-01-01','煎饼','3113','0.0642','1567','0.0727'),(221,'50025689','子行业分布','2018-01-01','方便米饭','2844','0.0587','1238','0.0574'),(222,'50025689','子行业分布','2018-01-01','粽子','2774','0.0572','718','0.0333'),(223,'50025689','子行业分布','2018-01-01','速食粥','2599','0.0536','1044','0.0484'),(224,'50025689','子行业分布','2018-01-01','冷面','2107','0.0435','958','0.0444'),(225,'50025689','子行业分布','2018-01-01','水饺/馄饨','1944','0.0401','826','0.0383'),(226,'50025689','子行业分布','2018-01-01','汤圆','1469','0.0303','787','0.0365'),(227,'50025689','子行业分布','2018-01-01','海鲜丸类','530','0.0109','241','0.0112'),(228,'50025689','子行业分布','2018-01-01','速食菜','27','0.0006','44','0.002');
/*!40000 ALTER TABLE `subindustry_distribution` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trend_of_competition_product`
--

DROP TABLE IF EXISTS `trend_of_competition_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `trend_of_competition_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cateID` varchar(40) DEFAULT NULL,
  `Data_module` varchar(40) DEFAULT NULL,
  `date` varchar(40) DEFAULT NULL,
  `shop_ID` varchar(40) DEFAULT NULL,
  `priceSegName` varchar(40) DEFAULT NULL,
  `rivalShop1TradeIndex` varchar(40) DEFAULT NULL,
  `rivalShop1UvIndex` varchar(40) DEFAULT NULL,
  `rivalShop1PayByrCntIndex` varchar(40) DEFAULT NULL,
  `rivalShop1PayRateIndex` varchar(40) DEFAULT NULL,
  `Payment_amount` varchar(40) DEFAULT NULL,
  `Visitor` varchar(40) DEFAULT NULL,
  `payments_Number` varchar(40) DEFAULT NULL,
  `Paymen_Conversion_Rate` varchar(40) DEFAULT NULL,
  `Customer_unit_price` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trend_of_competition_product`
--

LOCK TABLES `trend_of_competition_product` WRITE;
/*!40000 ALTER TABLE `trend_of_competition_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `trend_of_competition_product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-14 17:19:39
