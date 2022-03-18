-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: nugunadb
-- ------------------------------------------------------
-- Server version	8.0.27

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `prdNo` varchar(10) NOT NULL,
  `prdName` varchar(30) DEFAULT NULL,
  `prdDescript` varchar(500) DEFAULT NULL,
  `prdCompany` varchar(30) DEFAULT NULL,
  `prdPrice` int DEFAULT NULL,
  PRIMARY KEY (`prdNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES ('1001','star','세계인들의 생활 속에 스며들어 전 세계의 커피 문화를 선도하고 있는 스타벅스가 일상을 풍요롭게 하는 제3의 공간으로서 국내에서도 지역사회 속에서 고객 과 함께하며 새로운 커피문화를 정착시키고 있습니다.','스타벅스',1855000),('1002','bhc','더 맛있고! 더 깨끗한! 더 친절한!','BHC',1190000),('1003','mega','더 크고, 더 맛있다! 빅사이즈에 우수한 품질의 커피&음료를 합리적인 가격으로 제공하는 MEGA MGC COFFEE 입니다. 더 큰 사이즈로 부담없이 여유롭게 다양하고 착한 음료를 제공합니다.','MEGA',585000),('1004','kimbab','창업은 누구나 할 수 있지만 성공하기는 결코 쉽지 않습니다. 창업과 실패에는 반드시 그 원인이 있습니다. 김밥천국을 성공시킨 노하우를 통해 당신도 성공할 수 있습니다. 도전하십시오. 그리고 선택하십시오. 선택이 다르면 결과도 다릅니다.','KIMBAB',623000);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-20 13:02:56
