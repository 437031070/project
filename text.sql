-- MySQL dump 10.13  Distrib 5.7.24, for Linux (x86_64)
--
-- Host: localhost    Database: bi
-- ------------------------------------------------------
-- Server version	5.7.24-0ubuntu0.16.04.1

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
-- Table structure for table `brand_Age_Clients`
--

DROP TABLE IF EXISTS `brand_Age_Clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `brand_Age_Clients` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brand_Age_Clients`
--

LOCK TABLES `brand_Age_Clients` WRITE;
/*!40000 ALTER TABLE `brand_Age_Clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `brand_Age_Clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brand_Age_Clients_Proportion`
--

DROP TABLE IF EXISTS `brand_Age_Clients_Proportion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `brand_Age_Clients_Proportion` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brand_Age_Clients_Proportion`
--

LOCK TABLES `brand_Age_Clients_Proportion` WRITE;
/*!40000 ALTER TABLE `brand_Age_Clients_Proportion` DISABLE KEYS */;
/*!40000 ALTER TABLE `brand_Age_Clients_Proportion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brand_Age_Payment_Conversion_Rate`
--

DROP TABLE IF EXISTS `brand_Age_Payment_Conversion_Rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `brand_Age_Payment_Conversion_Rate` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brand_Age_Payment_Conversion_Rate`
--

LOCK TABLES `brand_Age_Payment_Conversion_Rate` WRITE;
/*!40000 ALTER TABLE `brand_Age_Payment_Conversion_Rate` DISABLE KEYS */;
/*!40000 ALTER TABLE `brand_Age_Payment_Conversion_Rate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brand_Age_Trading_index`
--

DROP TABLE IF EXISTS `brand_Age_Trading_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `brand_Age_Trading_index` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brand_Age_Trading_index`
--

LOCK TABLES `brand_Age_Trading_index` WRITE;
/*!40000 ALTER TABLE `brand_Age_Trading_index` DISABLE KEYS */;
/*!40000 ALTER TABLE `brand_Age_Trading_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brand_Gender_Clients`
--

DROP TABLE IF EXISTS `brand_Gender_Clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `brand_Gender_Clients` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brand_Gender_Clients`
--

LOCK TABLES `brand_Gender_Clients` WRITE;
/*!40000 ALTER TABLE `brand_Gender_Clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `brand_Gender_Clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brand_Gender_Clients_Proportion`
--

DROP TABLE IF EXISTS `brand_Gender_Clients_Proportion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `brand_Gender_Clients_Proportion` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brand_Gender_Clients_Proportion`
--

LOCK TABLES `brand_Gender_Clients_Proportion` WRITE;
/*!40000 ALTER TABLE `brand_Gender_Clients_Proportion` DISABLE KEYS */;
/*!40000 ALTER TABLE `brand_Gender_Clients_Proportion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brand_Gender_Clients_Proportion_one`
--

DROP TABLE IF EXISTS `brand_Gender_Clients_Proportion_one`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `brand_Gender_Clients_Proportion_one` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brand_Gender_Clients_Proportion_one`
--

LOCK TABLES `brand_Gender_Clients_Proportion_one` WRITE;
/*!40000 ALTER TABLE `brand_Gender_Clients_Proportion_one` DISABLE KEYS */;
/*!40000 ALTER TABLE `brand_Gender_Clients_Proportion_one` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brand_Gender_Clients_two`
--

DROP TABLE IF EXISTS `brand_Gender_Clients_two`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `brand_Gender_Clients_two` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brand_Gender_Clients_two`
--

LOCK TABLES `brand_Gender_Clients_two` WRITE;
/*!40000 ALTER TABLE `brand_Gender_Clients_two` DISABLE KEYS */;
/*!40000 ALTER TABLE `brand_Gender_Clients_two` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brand_Word`
--

DROP TABLE IF EXISTS `brand_Word`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `brand_Word` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brand_Word`
--

LOCK TABLES `brand_Word` WRITE;
/*!40000 ALTER TABLE `brand_Word` DISABLE KEYS */;
/*!40000 ALTER TABLE `brand_Word` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brand_hotsale`
--

DROP TABLE IF EXISTS `brand_hotsale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brand_hotsearch`
--

LOCK TABLES `brand_hotsearch` WRITE;
/*!40000 ALTER TABLE `brand_hotsearch` DISABLE KEYS */;
/*!40000 ALTER TABLE `brand_hotsearch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_of_competition1`
--

DROP TABLE IF EXISTS `category_of_competition1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commodity_composition`
--

LOCK TABLES `commodity_composition` WRITE;
/*!40000 ALTER TABLE `commodity_composition` DISABLE KEYS */;
/*!40000 ALTER TABLE `commodity_composition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compete_Brand_Tradeshop_top`
--

DROP TABLE IF EXISTS `compete_Brand_Tradeshop_top`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `compete_Brand_Tradeshop_top` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compete_Brand_Tradeshop_top`
--

LOCK TABLES `compete_Brand_Tradeshop_top` WRITE;
/*!40000 ALTER TABLE `compete_Brand_Tradeshop_top` DISABLE KEYS */;
/*!40000 ALTER TABLE `compete_Brand_Tradeshop_top` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compete_Brand_flowshop_top`
--

DROP TABLE IF EXISTS `compete_Brand_flowshop_top`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `compete_Brand_flowshop_top` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compete_Brand_flowshop_top`
--

LOCK TABLES `compete_Brand_flowshop_top` WRITE;
/*!40000 ALTER TABLE `compete_Brand_flowshop_top` DISABLE KEYS */;
/*!40000 ALTER TABLE `compete_Brand_flowshop_top` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `competitive_Brand_Category_Composition`
--

DROP TABLE IF EXISTS `competitive_Brand_Category_Composition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `competitive_Brand_Category_Composition` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `competitive_Brand_Category_Composition`
--

LOCK TABLES `competitive_Brand_Category_Composition` WRITE;
/*!40000 ALTER TABLE `competitive_Brand_Category_Composition` DISABLE KEYS */;
/*!40000 ALTER TABLE `competitive_Brand_Category_Composition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `competitive_Brand_Flow_Commodities`
--

DROP TABLE IF EXISTS `competitive_Brand_Flow_Commodities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `competitive_Brand_Flow_Commodities` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `competitive_Brand_Flow_Commodities`
--

LOCK TABLES `competitive_Brand_Flow_Commodities` WRITE;
/*!40000 ALTER TABLE `competitive_Brand_Flow_Commodities` DISABLE KEYS */;
/*!40000 ALTER TABLE `competitive_Brand_Flow_Commodities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `competitive_Brand_Tradeshop_Commodities`
--

DROP TABLE IF EXISTS `competitive_Brand_Tradeshop_Commodities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `competitive_Brand_Tradeshop_Commodities` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `competitive_Brand_Tradeshop_Commodities`
--

LOCK TABLES `competitive_Brand_Tradeshop_Commodities` WRITE;
/*!40000 ALTER TABLE `competitive_Brand_Tradeshop_Commodities` DISABLE KEYS */;
/*!40000 ALTER TABLE `competitive_Brand_Tradeshop_Commodities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_word`
--

DROP TABLE IF EXISTS `core_word`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_word`
--

LOCK TABLES `core_word` WRITE;
/*!40000 ALTER TABLE `core_word` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_word` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flow_Commodity`
--

DROP TABLE IF EXISTS `flow_Commodity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flow_Commodity` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flow_Commodity`
--

LOCK TABLES `flow_Commodity` WRITE;
/*!40000 ALTER TABLE `flow_Commodity` DISABLE KEYS */;
/*!40000 ALTER TABLE `flow_Commodity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `geographical_distribution`
--

DROP TABLE IF EXISTS `geographical_distribution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hot_attributes`
--

LOCK TABLES `hot_attributes` WRITE;
/*!40000 ALTER TABLE `hot_attributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `hot_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `industry_composition`
--

DROP TABLE IF EXISTS `industry_composition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `industry_composition`
--

LOCK TABLES `industry_composition` WRITE;
/*!40000 ALTER TABLE `industry_composition` DISABLE KEYS */;
/*!40000 ALTER TABLE `industry_composition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_hotpurpose`
--

DROP TABLE IF EXISTS `item_hotpurpose`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keyword_competition` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cateID` varchar(40) DEFAULT NULL,
  `Data_module` varchar(40) DEFAULT NULL,
  `item_ID` varchar(40) DEFAULT NULL,
  `keyword` varchar(40) DEFAULT NULL,
  `type_` varchar(40) DEFAULT NULL,
  `real` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keyword_competition`
--

LOCK TABLES `keyword_competition` WRITE;
/*!40000 ALTER TABLE `keyword_competition` DISABLE KEYS */;
/*!40000 ALTER TABLE `keyword_competition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modifiers_Word`
--

DROP TABLE IF EXISTS `modifiers_Word`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modifiers_Word` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modifiers_Word`
--

LOCK TABLES `modifiers_Word` WRITE;
/*!40000 ALTER TABLE `modifiers_Word` DISABLE KEYS */;
/*!40000 ALTER TABLE `modifiers_Word` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `price_band`
--

DROP TABLE IF EXISTS `price_band`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `price_band` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cateID` varchar(40) DEFAULT NULL,
  `Data_module` varchar(40) DEFAULT NULL,
  `date` varchar(40) DEFAULT NULL,
  `shop_ID` varchar(40) DEFAULT NULL,
  `priceSegName` varchar(40) DEFAULT NULL,
  `payAmtRatio` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subindustry_distribution`
--

LOCK TABLES `subindustry_distribution` WRITE;
/*!40000 ALTER TABLE `subindustry_distribution` DISABLE KEYS */;
/*!40000 ALTER TABLE `subindustry_distribution` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trend_of_competition_product`
--

DROP TABLE IF EXISTS `trend_of_competition_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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

-- Dump completed on 2019-01-14 15:12:23
