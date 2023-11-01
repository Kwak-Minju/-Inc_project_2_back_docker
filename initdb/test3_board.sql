-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: test3
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `board`
--
DROP TABLE IF EXISTS `board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Board` (
  `boardId` int unsigned NOT NULL AUTO_INCREMENT,
  `userId` int unsigned NOT NULL,
  `title` varchar(30) NOT NULL,
  `content` varchar(1000) NOT NULL,
  `location` varchar(20) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'active',
  `createAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`boardId`),
  KEY `fk_Board_userId` (`userId`),
  CONSTRAINT `fk_Board_userId` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board`
--

LOCK TABLES `board` WRITE;
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
INSERT INTO `board` VALUES (1,1,'test title','Hi i am content','seoul','status','2023-10-26 09:18:35','2023-10-26 09:18:35'),(2,2,'test title2','Hi i am content2','seoul2','status2','2023-10-26 09:19:24','2023-10-26 09:19:24'),(3,20,'안녕하세요. 장난감을 팔고 싶은데요.','장난감을 팔고 싶어요. 혹시 필요하신 분은 가져가세여~','용인시 ','active','2023-10-27 05:37:11','2023-10-27 05:37:11'),(4,20,'게시물2','게시물2게시물2게시물2게시물2게시물2게시물2게시물2게시물2게시물2게시물2게시물2게시물2게시물2게시물2게시물2게시물2게시물2','서울','inactive','2023-10-27 05:39:05','2023-10-27 05:39:05'),(5,20,'edit ??????ㅇㅇㅇㅇ','edit!!!!!!!!!!!!!ㅇㅇㅇㅇ','게시물3게시물3','active','2023-10-27 05:39:16','2023-10-27 05:39:16'),(6,20,'게시물4','게시물4게시물4게시물4게시물4게시물4게시물4게시물4게시물4게시물4게시물4게시물4게시물4게시물4게시물4게시물4','게시물4','inactive','2023-10-27 05:39:24','2023-10-27 05:39:24'),(7,20,'게시물4','게시물4게시물4게시물4게시물4게시물4게시물4게시물4게시물4게시물4게시물4게시물4게시물4게시물4게시물4','게시물4','inactive','2023-10-27 05:39:50','2023-10-27 05:39:50'),(8,20,'t삭제할거야','t삭제할거야t삭제할거야t삭제할거야t삭제할거야t삭제할거야t삭제할거야t삭제할거야t삭제할거야t삭제할거야t삭제할거야t삭제할거야','t삭제할거야','inactive','2023-10-27 11:41:05','2023-10-27 11:41:05'),(9,20,'반가워','반가워반가워반가워반가워반가워반가워반가워반가워','반가워','inactive','2023-10-27 11:41:17','2023-10-27 11:41:17');
/*!40000 ALTER TABLE `board` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-29 17:35:47
